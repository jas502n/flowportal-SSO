<%@ WebHandler Language="C#" Class="YZSoft.Reports.StoreDataService.ViewDefine" %>

using System;
using System.Web;
using System.Web.UI.WebControls;
using BPM;
using BPM.Client;
using BPM.Client.Data.Common;
using BPM.Data.Common;

namespace YZSoft.Reports.StoreDataService
{
    public class ViewDefine : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
            JsonItemCollection deletedItems = new JsonItemCollection();
            
            try
            {
                string reportName = context.Request.Params["reportName"];
                string viewName = context.Request.Params["viewName"];

                ReportView reportView = null;
                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();
                    reportView = Report.GetView(cn, reportName, viewName);
                }
                
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", true);

                if (reportView is ReportGridView) //gridView
                {
                    ReportGridView gridView = reportView as ReportGridView;
                    rv.Attributes.Add("viewType", "grid");
                    rv.Attributes.Add("limit", gridView.PageItems);

                    //设置columnInfos
                    JsonItemCollection columnInfos = new JsonItemCollection();
                    rv.Attributes.Add("columnInfos", columnInfos);

                    foreach (GridColumnInfo columnDefine in gridView.ColumnInfos)
                    {
                        JsonItem columnInfo = new JsonItem();
                        columnInfos.Add(columnInfo);

                        columnInfo.Attributes.Add("Align", columnDefine.Align);
                        columnInfo.Attributes.Add("ColumnName", columnDefine.ColumnName);
                        columnInfo.Attributes.Add("Visible", columnDefine.Visible);

                        Unit unit = Unit.Empty;
                        try
                        {
                            unit = Unit.Parse(columnDefine.Width);
                        }
                        catch (Exception)
                        {
                            unit = new Unit(100, UnitType.Pixel);
                        }
                        columnInfo.Attributes.Add("Width", (int)unit.Value);
                        columnInfo.Attributes.Add("Unit", unit.Type == UnitType.Percentage ? "%" : "px");
                    }
                }
                
                if (reportView is ReportColumnView) //chartView
                {
                    ReportColumnView chartView = reportView as ReportColumnView;
                    rv.Attributes.Add("viewType", "chart");
                    rv.Attributes.Add("chartType", chartView.ChartType);
                    rv.Attributes.Add("limit", chartView.PageItems);

                    //设置columnInfos
                    JsonItemCollection columnInfos = new JsonItemCollection();
                    rv.Attributes.Add("columnInfos", columnInfos);

                    JsonItem columnInfo = new JsonItem();
                    columnInfos.Add(columnInfo);
                    columnInfo.Attributes.Add("Align", "left");
                    columnInfo.Attributes.Add("ColumnName", chartView.XAxisColumnName);
                    columnInfo.Attributes.Add("Visible", true);

                    foreach (ReportSeries reportSeries in chartView.Series)
                    {
                        columnInfo = new JsonItem();
                        columnInfos.Add(columnInfo);
                        columnInfo.Attributes.Add("Align", "left");
                        columnInfo.Attributes.Add("ColumnName", reportSeries.DataColumnName);
                        columnInfo.Attributes.Add("Visible", true);
                    }
                }

                context.Response.Write(rv.ToString());
            }
            catch (Exception exp)
            {
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", exp.Message);
                rv.Attributes.Add("deletedItems", deletedItems);

                context.Response.Write(rv.ToString());
            }
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
