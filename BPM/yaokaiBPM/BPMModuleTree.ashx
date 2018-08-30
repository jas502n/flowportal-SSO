<%@ WebHandler Language="C#" Class="BPMApp.BPMModuleTree" %>

using System;
using System.Web;
using System.Text;

namespace BPMApp
{
    public class BPMModuleTree : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            JsonItemCollection rootItems = new JsonItemCollection();
            JsonItem item;
            JsonItemCollection children;
            JsonItemCollection tabs;
            JsonItem config;

            item = new JsonItem();
            rootItems.Add(item);
            item.Attributes["text"] = Resources.YZStrings.BPMModules_BPM_Task;
            item.Attributes["expanded"] = true;
            children = new JsonItemCollection();
            item.Attributes.Add("children", children);

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "PostRequest";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_BPM_Task_Post;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/PostPanel.js";

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "Worklist";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_BPM_Task_Cur;
            item.Attributes["activeTab"] = "MyTask";
            tabs = new JsonItemCollection();
            item.Attributes.Add("tabs", tabs);

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "MyTask";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_BPM_Task_Cur_Worklist;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/MyTaskPanel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "ShareTask";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_BPM_Task_Cur_Share;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/ShareTaskPanel.js";

            /*yaokai add*/
            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "MyTaskComment";
            item.Attributes["text"] = "流程讨论";//Resources.YZStrings.BPMModules_BPM_Task_Cur_Share;
            //item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/ShareTaskPanel.js";
            item.Attributes["moduleUrl"] = "MyApp/Demo/MyTaskComment_dev/MyTaskCommentPanel.js";

            
            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "HistoryTask";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_BPM_Task_His;
            item.Attributes["moduleUrl"] = "";
            tabs = new JsonItemCollection();
            item.Attributes.Add("tabs", tabs);

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "HistoryTaskMyPosted";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_BPM_Task_His_MyPosted;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/HistoryTaskMyPostedPanel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "HistoryTaskMyProcessed";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_BPM_Task_His_MyProcessed;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/HistoryTaskMyProcessedPanel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "HistoryTaskAllAccessable";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_BPM_Task_His_All;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/HistoryTaskAllAccessablePanel.js";

            /*
            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "SpecProcessHistoryTaskMyPosted";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_BPM_Task_His_MyPosted;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/HistoryTaskMyPostedPanel.js";
            config = new JsonItem();
            item.Attributes["config"] = config;
            config.Attributes["SpecProcessName"] = "PR005";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "SpecHistoryTaskMyProcessed";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_BPM_Task_His_MyProcessed;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/HistoryTaskMyProcessedPanel.js";
            config = new JsonItem();
            item.Attributes["config"] = config;
            config.Attributes["SpecProcessName"] = "PR005";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "SpecProcessHistoryTaskAllAccessable";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_BPM_Task_His_All;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/HistoryTaskAllAccessablePanel.js";
            config = new JsonItem();
            item.Attributes["config"] = config;
            config.Attributes["SpecProcessName"] = "PR005";
            */
            
            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "Drafts";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_BPM_Task_Drafts;
            item.Attributes["moduleUrl"] = "YZSoft/BPM/Modules/DraftsPanel.js";
            
            item = new JsonItem();
            rootItems.Add(item);
            item.Attributes["id"] = "Personal";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_Personal;
            tabs = new JsonItemCollection();
            item.Attributes.Add("tabs", tabs);

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "TaskRule";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_Personal_TaskRule;
            item.Attributes["moduleUrl"] = "YZSoft/Personal/Modules/TaskRulePanel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "NotifyRecp";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_Personal_Notify;
            item.Attributes["moduleUrl"] = "YZSoft/Personal/Modules/NotifySettingPanel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "ChgPwd";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_Personal_Password;
            item.Attributes["moduleUrl"] = "YZSoft/Personal/Modules/ChangePwdPanel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "UserInfo";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_Personal_UserInfo;
            item.Attributes["moduleUrl"] = "YZSoft/Personal/Modules/ChangeUserInfoPanel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "Leave";
            item.Attributes["text"] = Resources.YZStrings.BPMModules_Personal_Leave;
            item.Attributes["moduleUrl"] = "YZSoft/Personal/Modules/Leave.js";

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
