<%@ WebHandler Language="C#" Class="YZSoft.Personal.TaskRuleList" %>

using System;
using System.Web;
using System.Text;
using BPM;
using BPM.Client;

namespace YZSoft.Personal
{
    public class TaskRuleList : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            GridPageInfo gridPageInfo = new GridPageInfo(context);
            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);

            //获得数据
            JsonItem rootItem = new JsonItem();
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                TaskRuleCollection taskRules = User.GetTaskRules(cn, YZAuthHelper.LoginUserAccount);

                //将数据转化为Json集合
                rootItem.Attributes.Add(JsonItem.TotalRows, taskRules.Count);

                if (!String.IsNullOrEmpty(context.Request.Params["forceSel"]))
                    rootItem.Attributes.Add("forceSel", Int32.Parse(context.Request.Params["forceSel"]));

                JsonItemCollection children = new JsonItemCollection();
                rootItem.Attributes.Add("children", children);

                foreach (TaskRule rule in taskRules)
                {
                    JsonItem item = new JsonItem();
                    children.Add(item);

                    item.Attributes.Add("RuleID", rule.RuleID);
                    item.Attributes.Add("RuleType", rule.RuleTypeName);
                    item.Attributes.Add("Title", rule.ToStringTitle());
                    item.Attributes.Add("Enable", rule.Enabled);

                    ITaskRuleProcess itaskRuleProcess = rule as ITaskRuleProcess;
                    if (itaskRuleProcess != null)
                    {
                        JsonItem processDefine = new JsonItem();
                        item.Attributes.Add("ProcessDefine", processDefine);

                        JsonItemCollection childrenProcessDefine = new JsonItemCollection();
                        processDefine.Attributes.Add("children", childrenProcessDefine);

                        processDefine.Attributes.Add("ProcessDefineType", itaskRuleProcess.ProcessDefine.ProcessDefineType.ToString());
                        foreach (TaskRuleProcessItem processItem in itaskRuleProcess.ProcessDefine.ProcessItems)
                        {
                            JsonItem jsonProcessItem = new JsonItem();
                            childrenProcessDefine.Add(jsonProcessItem);

                            jsonProcessItem.Attributes.Add("ProcessName", processItem.ProcessName);
                            jsonProcessItem.Attributes.Add("Condition", processItem.Condition);
                        }
                    }

                    ITaskRuleDelegators itaskRuleDelegators = rule as ITaskRuleDelegators;
                    if (itaskRuleDelegators != null)
                    {
                        JsonItem delegatorDefine = new JsonItem();
                        item.Attributes.Add("DelegatorDefine", delegatorDefine);

                        JsonItemCollection jsonDelegators = new JsonItemCollection();
                        delegatorDefine.Attributes.Add("children", jsonDelegators);

                        BPMObjectNameCollection delegatorDisplayStrings = new BPMObjectNameCollection();
                        foreach (Participant participant in itaskRuleDelegators.Delegators)
                        {
                            JsonItem jsonDelegatorItem = new JsonItem();
                            jsonDelegators.Add(jsonDelegatorItem);

                            string delegatorDisplayName = participant.GetDisplayString(cn);
                            delegatorDisplayStrings.Add(delegatorDisplayName);
                            
                            jsonDelegatorItem.Attributes.Add("DisplayString", delegatorDisplayName);
                            jsonDelegatorItem.Attributes.Add("ParticipantType", participant.ParticipantType.ToString());
                            jsonDelegatorItem.Attributes.Add("SParam1", participant.SParam1);
                            jsonDelegatorItem.Attributes.Add("SParam2", participant.SParam2);
                            jsonDelegatorItem.Attributes.Add("SParam3", participant.SParam3);
                            jsonDelegatorItem.Attributes.Add("SParam4", participant.SParam4);
                            jsonDelegatorItem.Attributes.Add("SParam5", participant.SParam5);
                            jsonDelegatorItem.Attributes.Add("LParam1", participant.LParam1);
                            jsonDelegatorItem.Attributes.Add("LParam2", participant.LParam2);
                            jsonDelegatorItem.Attributes.Add("LParam3", participant.LParam3);
                            jsonDelegatorItem.Attributes.Add("Express", participant.Express);
                        }

                        item.Attributes.Add("DelegatorDisplayString", delegatorDisplayStrings.ToStringList(';'));
                    }
                }
            }
            
            //输出数据
            context.Response.Write(rootItem.ToString());
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
