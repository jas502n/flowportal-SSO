<%@ WebHandler Language="C#" Class="YZSoft.BPM.TaskProcessingSteps" %>

using System;
using System.Web;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class TaskProcessingSteps : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
            int taskid = Int32.Parse(context.Request.Params["TaskID"]);

            //将数据转化为Json集合
            JsonItem rootItem = new JsonItem();

            //获得数据
            BPMStepCollection steps = null;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                steps = BPMTask.GetInProcessSteps(cn, taskid);

                rootItem.Attributes.Add(JsonItem.TotalRows, steps.Count);

                JsonItemCollection children = new JsonItemCollection();
                rootItem.Attributes.Add("children", children);

                foreach (BPMProcStep step in steps)
                {
                    JsonItem item = new JsonItem();
                    children.Add(item);

                    string stepMemo = null;
                    if ((step.IsIndicateStep || step.IsInformStep) && String.IsNullOrEmpty(step.Memo))
                    {
                        BPMStepCollection prevSteps = step.LoadPrevSteps(cn);
                        if (prevSteps.Count != 0)
                        {
                            BPMProcStep prevStep = prevSteps[0];
                            stepMemo = "<span class='yz-stepraiser'>"+String.Format(Resources.YZStrings.Aspx_StepRaiser, YZStringHelper.GetUserShortName(prevStep.HandlerAccount, prevStep.HandlerFullName)) + "</span>";
                        }
                    }
                    
                    item.Attributes.Add("StepID", step.StepID);
                    item.Attributes.Add("NodeNameOrg", step.NodeName);
                    item.Attributes.Add("NodeName", HttpUtility.HtmlEncode(step.StepDisplayName) + stepMemo);
                    item.Attributes.Add("OwnerAccount", step.OwnerAccount);
                    item.Attributes.Add("OwnerDisplayName", step.OwnerFullName);
                    item.Attributes.Add("AgentAccount", step.AgentAccount);
                    item.Attributes.Add("AgentDisplayName", step.AgentFullName);
                    item.Attributes.Add("ReceiveAt", YZStringHelper.DateToStringL(step.ReceiveAt));
                    item.Attributes.Add("Share", step.Share);
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
