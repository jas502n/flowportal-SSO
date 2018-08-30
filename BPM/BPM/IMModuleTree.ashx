<%@ WebHandler Language="C#" Class="BPMApp.IMModuleTree" %>

using System;
using System.Web;
using System.Text;

namespace BPMApp
{
    public class IMModuleTree : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            JsonItemCollection rootItems = new JsonItemCollection();
            JsonItem item;
            JsonItemCollection children;
            JsonItemCollection tabs;

            item = new JsonItem();
            rootItems.Add(item);
            item.Attributes["text"] = "基本资料维护";
            item.Attributes["expanded"] = true;
            //item.Attributes["modulePerm"] = new YZModulePermision(YZWellKnowRSID.IM_BaseInfo, YZModuleDeniedBehavior.Hide);
            children = new JsonItemCollection();
            item.Attributes.Add("children", children);

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "FinInfo";
            item.Attributes["text"] = "财务基本资料";
            item.Attributes["activeTab"] = "Rate";
            item.Attributes["modulePerm"] = new YZModulePermision(YZWellKnowRSID.IM_FinInfo, YZModuleDeniedBehavior.Hide);
            tabs = new JsonItemCollection();
            item.Attributes.Add("tabs", tabs);


            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "Rate";
            item.Attributes["text"] = "汇率";
            //item.Attributes["modulePerm"] = new YZModulePermision(YZWellKnowRSID.IM_CostCenter, YZModuleDeniedBehavior.Hide);
            item.Attributes["moduleUrl"] = "YZModules/IM/Modules/RatePanel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "CostCenter";
            item.Attributes["text"] = "成本中心";
            //item.Attributes["modulePerm"] = new YZModulePermision(YZWellKnowRSID.IM_CostCenter, YZModuleDeniedBehavior.Hide);
            item.Attributes["moduleUrl"] = "YZModules/IM/Modules/CostCenterPanel.js";



            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "AccountPB";
            item.Attributes["text"] = "银行账号";
            //item.Attributes["modulePerm"] = new YZModulePermision(YZWellKnowRSID.IM_AccountPB, YZModuleDeniedBehavior.Hide);
            item.Attributes["moduleUrl"] = "YZModules/IM/Modules/AccountPBPanel.js";



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
