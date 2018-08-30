<%@ WebHandler Language="C#" Class="YZSoft.Personal.SaveRule" %>

using System;
using System.Web;
using BPM;
using BPM.Client;

namespace YZSoft.Personal
{
    public class SaveRule : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            TaskRule taskRule = TaskRuleCollection.GetNewTaskRuleItem(context.Request.Params["RuleType"]);
            taskRule.Account = YZAuthHelper.LoginUserAccount;
            taskRule.Enabled = String.IsNullOrEmpty(context.Request.Params["Enable"]) ? false : true;
            if (!String.IsNullOrEmpty(context.Request.Params["RuleID"]))
                taskRule.RuleID = Int32.Parse(context.Request.Params["RuleID"]);

            ITaskRuleProcess itaskRuleProcess = taskRule as ITaskRuleProcess;
            ITaskRuleDelegators itaskRuleDelegators = taskRule as ITaskRuleDelegators;

            string processDefineType = context.Request.Params["ProcessDefineType"];
            if (processDefineType == "Include")
                itaskRuleProcess.ProcessDefine.ProcessDefineType = TaskRuleProcessDefineType.Include;
            else if (processDefineType == "Exclude")
                itaskRuleProcess.ProcessDefine.ProcessDefineType = TaskRuleProcessDefineType.Exclude;
            else
                itaskRuleProcess.ProcessDefine.ProcessDefineType = TaskRuleProcessDefineType.All;

            if (itaskRuleProcess.ProcessDefine.ProcessDefineType != TaskRuleProcessDefineType.All)
            {
                int count = Int32.Parse(context.Request.Params["ProcessCount"]);

                for (int i = 0; i < count; i++)
                {
                    TaskRuleProcessItem processItem = new TaskRuleProcessItem();
                    processItem.ProcessName = context.Request.Params["ProcessName" + i.ToString()];
                    processItem.Condition = context.Request.Params["Conidition" + i.ToString()];

                    itaskRuleProcess.ProcessDefine.ProcessItems.Add(processItem);
                }
            }

            int delegatorCount = Int32.Parse(context.Request.Params["DelegatorCount"]);
            for (int i = 0; i < delegatorCount; i++)
            {
                string recipientType = context.Request.Params["ParticipantType" + i.ToString()];
                string SParam1 = context.Request.Params["SParam1" + i.ToString()];
                string SParam2 = context.Request.Params["SParam2" + i.ToString()];
                string SParam3 = context.Request.Params["SParam3" + i.ToString()];
                string SParam4 = context.Request.Params["SParam4" + i.ToString()];
                string SParam5 = context.Request.Params["SParam5" + i.ToString()];
                string LParam1 = context.Request.Params["LParam1" + i.ToString()];
                string LParam2 = context.Request.Params["LParam2" + i.ToString()];
                string LParam3 = context.Request.Params["LParam3" + i.ToString()];
                string Express = context.Request.Params["Express" + i.ToString()];

                Participant participant = new Participant();
                participant.ParticipantType = (ParticipantType)Enum.Parse(typeof(ParticipantType), recipientType);
                participant.SParam1 = SParam1;
                participant.SParam2 = SParam2;
                participant.SParam3 = SParam3;
                participant.SParam4 = SParam4;
                participant.SParam5 = SParam5;
                participant.LParam1 = String.IsNullOrEmpty(LParam1) ? 0 : Int32.Parse(LParam1);
                participant.LParam2 = String.IsNullOrEmpty(LParam2) ? 0 : Int32.Parse(LParam2);
                participant.LParam3 = String.IsNullOrEmpty(LParam3) ? 0 : Int32.Parse(LParam3);
                participant.Express = Express;

                itaskRuleDelegators.Delegators.Add(participant);
            }

            using (BPMConnection cn = new BPMConnection())
            {
                try
                {
                    cn.WebOpen();
                    int ruleId = taskRule.Save(cn);

                    JsonItem rv = new JsonItem();
                    rv.Attributes.Add("success", true);
                    rv.Attributes.Add("RuleID", ruleId);

                    context.Response.Write(rv.ToString());
                }
                catch (Exception exp)
                {
                    JsonItem rv = new JsonItem();
                    rv.Attributes.Add("success", false);
                    rv.Attributes.Add("errorMessage", exp.Message);

                    JsonItem errors = new JsonItem();
                    rv.Attributes.Add("errors", errors);

                    context.Response.Write(rv.ToString());
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
