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
            item.Attributes["dataURL"] = "yaokaiBPM/BPMModuleTree.ashx";
            item.Attributes["activeNode"] = "Worklist";

            item = new JsonItem();
            rootItems.Add(item);
            item.Attributes["id"] = "RPT";
            item.Attributes["title"] = Resources.YZStrings.BPMModules_RPT;
            item.Attributes["dataURL"] = "yaokaiBPM/RPTModuleTree.ashx";
            item.Attributes["activeNode"] = "";

            item = new JsonItem();
            rootItems.Add(item);
            item.Attributes["id"] = "IM";
            item.Attributes["title"] = "信息维护";
            item.Attributes["dataURL"] = "yaokaiBPM/IMModuleTree.ashx";
            item.Attributes["modulePerm"] = new YZModulePermision(YZWellKnowRSID.IM, YZModuleDeniedBehavior.Hide);
            item.Attributes["activeNode"] = "FinInfo";

            item = new JsonItem();
            rootItems.Add(item);
            item.Attributes["id"] = "SYS";
            item.Attributes["title"] = Resources.YZStrings.BPMModules_SYS;
            item.Attributes["modulePerm"] = new YZModulePermision(YZWellKnowRSID.SYS, YZModuleDeniedBehavior.Hide);
            item.Attributes["dataURL"] = "yaokaiBPM/SYSModuleTree.ashx";
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
