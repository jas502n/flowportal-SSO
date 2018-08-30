<%@ WebHandler Language="C#" Class="BPMApp.RPTModuleTree" %>

using System;
using System.Web;
using System.Text;
using BPM;
using BPM.Client;

namespace BPMApp
{
    public class RPTModuleTree : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            JsonItemCollection rootItems = new JsonItemCollection();
            JsonItem item;

            /*
            JsonItemCollection children;
            JsonItemCollection tabs;

            item = new JsonItem();
            rootItems.Add(item);
            item.Attributes["text"] = "年度报表";
            tabs = new JsonItemCollection();
            item.Attributes.Add("tabs", tabs);     

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "YearSalesReport";
            item.Attributes["text"] = "年度营业报表";
            item.Attributes["moduleUrl"] = "YZApp/RPT/YearSalesPanel.js";
            */
            YZSecurityManager.ApplayPermision(rootItems);

            item = new JsonItem();
            item.Attributes["text"] = Resources.YZStrings.BPMModules_RPT_YZReportRoot;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                Expand(cn, item, rootItems, null);
            }

            if (item.Attributes.ContainsKey("tabs"))
            {
                rootItems.Add(item);
            }

            context.Response.Write(rootItems.ToString());
        }

        protected void Expand(BPMConnection cn, JsonItem parentItem, JsonItemCollection items, string path)
        {
            BPMObjectNameCollection folderNames = cn.GetFolders(StoreZoneType.Reports, path, BPMPermision.Execute);

            foreach (String folderName in folderNames)
            {
                string folderPath = String.IsNullOrEmpty(path) ? folderName : path + @"\" + folderName;

                JsonItem item = new JsonItem();
                item.Attributes["text"] = folderName;
                item.Attributes["path"] = folderPath;
                items.Add(item);

                JsonItemCollection children = new JsonItemCollection();
                item.Attributes.Add("children", children);
                Expand(cn, item, children, folderPath);
            }

            ReportCollection reports = cn.GetReportList(path, BPMPermision.Execute);
            if (reports.Count != 0)
            {
                JsonItemCollection tabs = new JsonItemCollection();
                parentItem.Attributes.Add("tabs", tabs);

                foreach (Report report in reports)
                {
                    string reportPath = String.IsNullOrEmpty(path) ? report.Name : path + @"\" + report.Name;

                    JsonItem item = new JsonItem();
                    item.Attributes["text"] = report.Name;
                    item.Attributes["id"] = "Reports_" + reportPath;
                    item.Attributes["moduleUrl"] = "YZSoft/Reports/Modules/YZReportPanel.js";
                    JsonItem itemConfig = new JsonItem();
                    itemConfig.Attributes["reportName"] = reportPath;
                    item.Attributes["config"] = itemConfig;
                    tabs.Add(item);
                }
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
