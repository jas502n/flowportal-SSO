<%@ WebHandler Language="C#" Class="YZSoft.Reports.StoreDataService.ReportDefine" %>

using System;
using System.Web;
using BPM;
using BPM.Client;
using BPM.Client.Data.Common;
using BPM.Data.Common;

namespace YZSoft.Reports.StoreDataService
{
    public class ReportDefine : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
            
            try
            {
                Report report;
                string reportName = context.Request.Params["reportName"];
                
                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();
                    report = Report.Load(cn, reportName);
                    report.UpdateSchema(cn); //数据库可能已修改，有必要更新Schema.
                }
     
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", true);
                rv.Attributes.Add("name", report.Name);
                rv.Attributes.Add("MonthOffset", report.FinanceMonth.MonthOffset);
                rv.Attributes.Add("MonthDay", report.FinanceMonth.MonthDay);                

                //设置views
                JsonItemCollection views = new JsonItemCollection();
                rv.Attributes.Add("views", views);

                foreach (ReportView viewDefine in report.Views)
                {
                    JsonItem view = new JsonItem();
                    views.Add(view);

                    view.Attributes.Add("ViewName", viewDefine.ViewName);
                    view.Attributes.Add("ViewType", viewDefine.ViewType.ToString());
                }

                //设置resultFields
                JsonItemCollection resultFields = new JsonItemCollection();
                rv.Attributes.Add("resultFields", resultFields);

                foreach (ReportColumnInfo schemaColumn in report.ReportColumnInfos)
                {
                    JsonItem field = new JsonItem();
                    resultFields.Add(field);

                    field.Attributes.Add("ColumnName", schemaColumn.ColumnName);
                    field.Attributes.Add("DataType", schemaColumn.DataType.Name);
                    field.Attributes.Add("DisplayName", schemaColumn.DisplayName);
                    field.Attributes.Add("LinkTo", schemaColumn.LinkTo);
                    field.Attributes.Add("LinkType", schemaColumn.LinkType.ToString());
                    
                    JsonItemCollection paramMaps = new JsonItemCollection();
                    field.Attributes.Add("paramMaps", paramMaps);

                    foreach (MapItem mapDefine in schemaColumn.ParameterMaps)
                    {
                        JsonItem paramMap = new JsonItem();
                        paramMaps.Add(paramMap);

                        paramMap.Attributes.Add("Name", mapDefine.Name);
                        paramMap.Attributes.Add("FillWith", mapDefine.MapTo);
                    }
                }

                //设置queryParams
                JsonItemCollection queryParams = new JsonItemCollection();
                rv.Attributes.Add("queryParams", queryParams);
                foreach (QueryParameter queryParamDefine in report.QueryParameters)
                {
                    JsonItem queryParam = new JsonItem();
                    queryParams.Add(queryParam);

                    string displayName = String.IsNullOrEmpty(queryParamDefine.DisplayName) ? queryParamDefine.FriendlyName : queryParamDefine.DisplayName;
                    queryParam.Attributes.Add("Name", queryParamDefine.Name);
                    queryParam.Attributes.Add("DisplayName", displayName);
                    queryParam.Attributes.Add("Description", queryParamDefine.Description);
                    queryParam.Attributes.Add("BindType", queryParamDefine.ParameterUIBindType.ToString());
                }

                //设置是否包含快速搜索及高级搜索
                bool containsAdvancedSearch = false;
                bool containsQuickSearch = false;
                bool containsPeriodSearch = false;
                foreach (QueryParameter parameter in report.QueryParameters)
                {
                    if ((parameter.ParameterUIBindType & ParameterUIBindType.AdvancedSearch) == ParameterUIBindType.AdvancedSearch)
                        containsAdvancedSearch = true;
                    if ((parameter.ParameterUIBindType & ParameterUIBindType.QuickSearch) == ParameterUIBindType.QuickSearch)
                        containsQuickSearch = true;
                    if ((parameter.ParameterUIBindType & ParameterUIBindType.StartDate) == ParameterUIBindType.StartDate)
                        containsPeriodSearch = true;
                    if ((parameter.ParameterUIBindType & ParameterUIBindType.EndDate) == ParameterUIBindType.EndDate)
                        containsPeriodSearch = true;
                }

                rv.Attributes.Add("containsQuickSearch", containsQuickSearch);
                rv.Attributes.Add("containsAdvancedSearch", containsAdvancedSearch);
                rv.Attributes.Add("containsPeriodSearch", containsPeriodSearch);

                context.Response.Write(rv.ToString());
            }
            catch (Exception exp)
            {
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", exp.Message);

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
