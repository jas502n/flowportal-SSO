<%@ WebHandler Language="C#" Class="BPMApp.SYSModuleTree" %>

using System;
using System.Web;
using System.Text;

namespace BPMApp
{
    public class SYSModuleTree : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            JsonItemCollection rootItems = new JsonItemCollection();
            JsonItem item;
            JsonItemCollection children;
            JsonItemCollection tabs;

            item = new JsonItem();
            rootItems.Add(item);
            item.Attributes["id"] = "SysBPM";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM;
            item.Attributes["modulePerm"] = new YZModulePermision("E0DCB7ED-1289-40e2-A945-6F8E1578BA2A", YZModuleDeniedBehavior.Hide);
            item.Attributes["expanded"] = true;
            children = new JsonItemCollection();
            item.Attributes.Add("children", children);

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "SysBPMTaskList";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_BPM;
            item.Attributes["modulePerm"] = new YZModulePermision("A6F94246-9BCA-409c-9938-5A4FC963FF02", YZModuleDeniedBehavior.Hide);
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/HistoryTaskAllAccessablePanel.js";

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "SysBPMUsers";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Users;
            item.Attributes["modulePerm"] = new YZModulePermision("5E6FD5EC-D784-4888-BE30-F8F2600EC01F", YZModuleDeniedBehavior.Hide);
            tabs = new JsonItemCollection();
            item.Attributes.Add("tabs", tabs);

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "SysBPMOnlineUsers";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Users_Online;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/OnlineUsersPanel.js";
            
            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "SysBPMSystemUsers";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Users_30Days;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/SystemUsersPanel.js";

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "SysBPMLog";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Log;
            item.Attributes["modulePerm"] = new YZModulePermision("C79E4457-9A8C-4b2f-AD1F-4A349B768A25", YZModuleDeniedBehavior.Hide);
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/AppLogPanel.js";

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "SysBPMUsage";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Usage;
            item.Attributes["modulePerm"] = new YZModulePermision("BB1E3F5B-CA27-455a-89D4-C62BF80F3230", YZModuleDeniedBehavior.Hide);
            tabs = new JsonItemCollection();
            item.Attributes.Add("tabs", tabs);

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "SysBPMSystemUsage";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Usage_Sys;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/SystemUsagePanel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "SysBPMProcessUsage";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Usage_Process;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/ProcessUsagePanel.js";

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "SysBPMHandlingTime";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Performance;
            item.Attributes["modulePerm"] = new YZModulePermision("725DC58D-277E-4c78-BA7A-3B96ED58E0B5", YZModuleDeniedBehavior.Hide);
            tabs = new JsonItemCollection();
            item.Attributes.Add("tabs", tabs);

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "SysBPMHandlingTimeStep";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Performance_Step;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/HandlingTimeStepPanel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "SysBPMHandlingTimeUser";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Performance_User;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/HandlingTimeUserPanel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "SysBPMHandlingTimeDetail";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Performance_Detail;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/HandlingTimeDetailPanel.js";

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "SysBPMTimeout";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Timeout;
            item.Attributes["modulePerm"] = new YZModulePermision("C2FB0BC1-934E-486f-91DC-980761222588", YZModuleDeniedBehavior.Hide);
            tabs = new JsonItemCollection();
            item.Attributes.Add("tabs", tabs);

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "SysBPMTimeoutStep";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Timeout_Step;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/TimeoutStepPanel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "SysBPMTimeoutUser";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Timeout_User;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/TimeoutUserPanel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "SysBPMTimeoutDetail";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_SYS_BPM_Timeout_Detail;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/TimeoutDetailPanel.js";

            //应用权限
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
