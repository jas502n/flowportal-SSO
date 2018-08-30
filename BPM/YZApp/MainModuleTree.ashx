<%@ WebHandler Language="C#" Class="BPMApp.MainModuleTree" %>

using System;
using System.Web;
using System.Text;

namespace BPMApp
{
    public class MainModuleTree : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            JsonItemCollection rootItems = new JsonItemCollection();
            JsonItem item;

            item = new JsonItem();
            rootItems.Add(item);
            item.Attributes["id"] = "BPM";
            item.Attributes["title"] = Resources.YZStrings.BPMModules_BPM;
            item.Attributes["dataURL"] = "YZApp/BPMModuleTree.ashx";
            item.Attributes["activeNode"] = "Worklist";

            //item = new JsonItem();
            //rootItems.Add(item);
            //item.Attributes["id"] = "KM";
            //item.Attributes["title"] = "知识管理";
            //item.Attributes["dataURL"] = "YZApp/KMModuleTree.ashx";
            //item.Attributes["activeNode"] = "PublicFolder";
            
            item = new JsonItem();
            rootItems.Add(item);
            item.Attributes["id"] = "PM";
            item.Attributes["title"] = "生产管理";
            item.Attributes["dataURL"] = "YZApp/PMModuleTree.ashx";
            item.Attributes["modulePerm"] = new YZModulePermision("8cd49c07-0710-4903-9edf-a70e88d713ed", YZModuleDeniedBehavior.Hide);
            item.Attributes["activeNode"] = "DeviceFolder";

            item = new JsonItem();
            rootItems.Add(item);
            item.Attributes["id"] = "RPT";
            item.Attributes["title"] = Resources.YZStrings.BPMModules_RPT;
            item.Attributes["dataURL"] = "YZApp/RPTModuleTree.ashx";
            item.Attributes["activeNode"] = "";

            item = new JsonItem();
            rootItems.Add(item);
            item.Attributes["id"] = "SYS";
            item.Attributes["title"] = Resources.YZStrings.BPMModules_SYS;
            item.Attributes["modulePerm"] = new YZModulePermision(YZWellKnowRSID.SYS, YZModuleDeniedBehavior.Hide);
            item.Attributes["dataURL"] = "YZApp/SYSModuleTree.ashx";
            item.Attributes["activeNode"] = "SysBPMUsers";

            YZSecurityManager.ApplayPermision(rootItems);

            context.Response.Write(rootItems.ToString());
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
