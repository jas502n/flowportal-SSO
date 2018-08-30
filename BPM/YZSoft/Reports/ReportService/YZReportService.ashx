<%@ WebHandler Language="C#" Class="YZSoft.Reports.YZReportService" %>

using System;
using System.Web;
using System.Text;
using System.Web.UI.DataVisualization.Charting;
using System.IO;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Collections.Generic;
using BPM;
using BPM.Client;
using BPM.Client.Data.Common;

namespace YZSoft.Reports
{
    public class YZReportService : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            GridPageInfo gridPageInfo = new GridPageInfo(context);
            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);
            string reportName = context.Request.Params["reportName"];
            string viewName = context.Request.Params["viewName"];
            string periodType = context.Request.Params["PeriodType"];
            DateTime date1 = YZDBHelper.MinDateValue;
            DateTime date2 = YZDBHelper.MaxDateValue;
            
            //获得数据
            Report report;
            ReportView view;
            DataTable dataTable;
            int rowcount;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                
                //获得报表定义
                report = Report.Load(cn, reportName);
                if (String.IsNullOrEmpty(viewName))
                    view = report.DefaultView;
                else
                    view = report.Views.TryGetItem(viewName);
                                
                BPMDBParameterCollection selectParameters = report.QueryParameters.CreateNullDBParameters();
                
                //应用时间查询条件
                if (!String.IsNullOrEmpty(periodType))
                {
                    string periodDate1 = context.Request.Params["Date1"];
                    string periodDate2 = context.Request.Params["Date2"];
                    if (periodType != "all")
                    {
                        DateTime.TryParse(periodDate1, out date1);
                        DateTime.TryParse(periodDate2, out date2);
                    }

                    foreach (QueryParameter queryParameter in report.QueryParameters)
                    {
                        if (queryParameter.ParameterUIBindType == BPM.Data.Common.ParameterUIBindType.StartDate)
                            selectParameters[queryParameter.Name].Value = YZStringHelper.DateToStringL(date1);

                        if (queryParameter.ParameterUIBindType == BPM.Data.Common.ParameterUIBindType.EndDate)
                            selectParameters[queryParameter.Name].Value = YZStringHelper.DateToStringL(date2);
                    }
                }
                
                //应用其他查询条件
                string searchType = context.Request.Params["SearchType"];
                if (searchType == "QuickSearch")
                {
                    string paramName = context.Request.Params["ParamName"];
                    string keyword = context.Request.Params["Keyword"];
                    
                    if (!String.IsNullOrEmpty(keyword))
                    {
                        foreach (BPMDBParameter selectParam in selectParameters)
                        {
                            if (selectParam.Name == paramName)
                            {
                                selectParam.Value = keyword;
                                break;
                            }
                        }
                    }
                }
                
                if (searchType == "AdvancedSearch")
                {
                    foreach (BPMDBParameter selectParam in selectParameters)
                    {
                        string keyword = context.Request.Params[selectParam.Name];
                        if (String.IsNullOrEmpty(keyword))
                            continue;

                        selectParam.Value = keyword;
                    }
                }
                
                cn.RequestParams["sortstring"] = queryProvider.GetSortString(report.DefaultSort);
                cn.UpdateRequestParams();
                   
                //获得数据
                FlowDataTable ftable = new FlowDataTable();
                ftable.Load(cn, BPMCommandType.Report, reportName, selectParameters, report.ClientCursor, gridPageInfo.Start, gridPageInfo.Limit, out rowcount);
                dataTable = ftable.ToDataTable();
            }

            //将数据转化为Json集合
            JsonItem rootItem = new JsonItem();
            rootItem.Attributes.Add(JsonItem.TotalRows, rowcount);

            if (date2 != YZDBHelper.MaxDateValue)
            {
                rootItem.Attributes.Add("PeriodEnable", true);
                rootItem.Attributes.Add("Date1", YZStringHelper.DateToStringL(date1));
                rootItem.Attributes.Add("Date2", YZStringHelper.DateToStringL(date2.AddSeconds(-1)));
            }
            else
            {
                rootItem.Attributes.Add("PeriodEnable", false);
            }

            JsonItemCollection children = new JsonItemCollection();
            rootItem.Attributes.Add("children", children);

            //不管是什么view都要给数据
            foreach (DataRow row in dataTable.Rows)
            {
                JsonItem item = new JsonItem();
                children.Add(item);

                foreach (DataColumn column in dataTable.Columns)
                {
                    object value = row[column.ColumnName];
                    if (value is DateTime)
                        value = YZStringHelper.DateToStringL((DateTime)value);

                    item.Attributes.Add(column.ColumnName, value);
                    
                    if (NameCompare.EquName(column.ColumnName,"TaskID") && (value is int))
                        item.Attributes.Add("Token", YZSecurityHelper.GenTaskAccessToken((int)value));
                    
                    //为任务链接生成Token
                    ReportColumnInfo colInfo = report.ReportColumnInfos.TryGetItem(column.ColumnName);
                    if (colInfo != null && colInfo.LinkType == ReportLinkType.Task)
                    {
                        MapItem paramMap = colInfo.ParameterMaps.TryGetItem("@TaskID");
                        if (paramMap != null)
                        {
                            int linktoTaskID;
                            if (Int32.TryParse(Convert.ToString(row[paramMap.MapTo]), out linktoTaskID))
                                item.Attributes.Add(column.ColumnName + "Token", YZSecurityHelper.GenTaskAccessToken((int)linktoTaskID));
                        }                     
                    }
                }
            }
            
            ReportColumnView chartView = view as ReportColumnView;
            if (chartView != null)
            {
                Chart chart = new Chart();
                YZChartHelper.ApplayChartStyle(chart);

                //设置报表大小
                chart.Width = new Unit(chartView.ReportWidth, UnitType.Pixel);
                chart.Height = new Unit(chartView.ReportHeight, UnitType.Pixel);

                //添加主副标题
                chart.Titles[0].Text = chartView.ReportTitle;
                chart.Titles[0].Alignment = ContentAlignment.TopCenter;

                //设置注释
                if (chartView.Series.Count >= 2)
                {
                    chart.Legends.Add(new Legend("Default"));
                    chart.Legends[0].Docking = Docking.Bottom;
                    chart.Legends[0].BackColor = Color.Transparent;
                    chart.Legends[0].Alignment = StringAlignment.Center;
                    chart.Legends[0].BorderColor = Color.Black;
                }

                //添加系列
                foreach (ReportSeries reportSeries in chartView.Series)
                {
                    Series series = new Series(reportSeries.Name);
                    chart.Series.Add(series);

                    series.ShadowColor = Color.Transparent;
                    series.BorderColor = Color.FromArgb(180, 26, 59, 105);
                    series.Color = Color.FromArgb(180, reportSeries.Color);
                    series.XValueMember = chartView.XAxisColumnName;
                    series.YValueMembers = reportSeries.DataColumnName;
                    series.Tag = reportSeries;
                }

                //应用客户设置
                string chartType = context.Request.Params["ChartType"];
                string enable3D = context.Request.Params["Enable3D"];
                string rotation = context.Request.Params["Rotation"];

                if (!String.IsNullOrEmpty(chartType))
                {
                    SeriesChartType chartType1 = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), chartType);
                    foreach (Series chartSeries in chart.Series)
                        chartSeries.ChartType = chartType1;
                }

                if (enable3D == "true")
                {
                    foreach (ChartArea chartArea in chart.ChartAreas)
                    {
                        chartArea.Area3DStyle.Enable3D = true;

                        if (!String.IsNullOrEmpty(rotation))
                        {
                            int rotate = 30;
                            if (Int32.TryParse(rotation, out rotate))
                                chartArea.Area3DStyle.Rotation = rotate;
                        }
                    }
                }

                //执行绑定
                chart.DataSource = dataTable;
                chart.DataBind();

                //应用数据显示
                foreach (Series series in chart.Series)
                {
                    foreach (DataPoint point in series.Points)
                        point.Label = point.YValues[0].ToString() + (series.Tag as ReportSeries).Unit;
                }

                //生成报表图片
                string imageId = Guid.NewGuid().ToString();
                using (MemoryStream stream = new MemoryStream())
                {
                    chart.SaveImage(stream);
                    ChartManager.CurrentStore.Save(imageId, stream.ToArray(),null);
                }

                string html = String.Format("<img src='{0}?id={1}' style='width:{2}px;height:{3}px;border-width:0px;text-align:center;'/>",
                    "YZSoft/FileService/ImageService.ashx",
                    imageId,
                    chart.Width.Value,
                    chart.Height.Value);

                rootItem.Attributes.Add("chartHtml", html);
            }
            
            //输出数据
            context.Response.Write(rootItem.ToString());
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
