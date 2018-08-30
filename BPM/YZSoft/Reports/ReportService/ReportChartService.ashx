<%@ WebHandler Language="C#" Class="YZSoft.Reports.ReportChartService" %>

using System;
using System.Web;
using System.Text;
using System.Web.UI.DataVisualization.Charting;
using System.IO;
using System.Globalization;
using System.Web.UI;
using BPM;
using BPM.Client;
using BPM.Client.Data.Common;

namespace YZSoft.Reports
{
    public class ReportChartService : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            Chart chart = new Chart();

            using (StringWriter stringWriter = new StringWriter(CultureInfo.InvariantCulture))
            {
                //using (HtmlTextWriter htmlTextWriter = context.Request.Browser.CreateHtmlTextWriter(stringWriter)) //Html32TextWriter(tw);
                using (HtmlTextWriter htmlTextWriter = new Html32TextWriter(stringWriter)) //Html32TextWriter(tw);
                {
                    chart.RenderControl(htmlTextWriter);
                    context.Response.Write(stringWriter.GetStringBuilder().ToString());
                }
            }

            GridPageInfo gridPageInfo = new GridPageInfo(context);
            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);
            string reportName = context.Request.Params["reportName"];
            string periodType = context.Request.Params["PeriodType"];
            DateTime date1 = YZDBHelper.MinDateValue;
            DateTime date2 = YZDBHelper.MaxDateValue;

            //获得数据
            FlowDataTable dataTable = new FlowDataTable();
            int rowcount;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                //获得报表定义
                Report report = Report.Load(cn, reportName);
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

                //获得数据
                dataTable.Load(cn, BPMCommandType.Report, reportName, selectParameters, report.ClientCursor, gridPageInfo.Start, gridPageInfo.Limit, out rowcount);
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
            
            //JsonItemCollection children = new JsonItemCollection();
            //rootItem.Attributes.Add("children", children);

            //foreach (FlowDataRow row in dataTable.Rows)
            //{
            //    JsonItem item = new JsonItem();
            //    children.Add(item);

            //    foreach (FlowDataColumn column in dataTable.Columns)
            //        item.Attributes.Add(column.ColumnName, row[column.ColumnName]);
            //}

            //输出数据
            //context.Response.Write(rootItem.ToString());
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
