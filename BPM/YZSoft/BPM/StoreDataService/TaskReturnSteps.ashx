<%@ WebHandler Language="C#" Class="YZSoft.BPM.TaskReturnSteps" %>

using System;
using System.Web;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class TaskReturnSteps : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
            int stepid = Int32.Parse(context.Request.Params["StepID"]);

            //获得数据
            BPMStepCollection steps = null;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                steps = BPMProcStep.GetRecedableToSteps(cn, stepid);
            }

            //将数据转化为Json集合
            JsonItem rootItem = new JsonItem();
            rootItem.Attributes.Add(JsonItem.TotalRows, steps.Count);

            JsonItemCollection children = new JsonItemCollection();
            rootItem.Attributes.Add("children", children);

            foreach (BPMProcStep step in steps)
            {
                JsonItem item = new JsonItem();
                children.Add(item);

                item.Attributes.Add("StepID", step.StepID);
                item.Attributes.Add("NodeNameOrg", step.NodeName);
                item.Attributes.Add("NodeName", step.StepDisplayName);
                item.Attributes.Add("OwnerAccount", step.OwnerAccount);
                item.Attributes.Add("OwnerDisplayName", step.OwnerFullName);
                item.Attributes.Add("AgentAccount", step.AgentAccount);
                item.Attributes.Add("AgentDisplayName", step.AgentFullName);
                item.Attributes.Add("FinishAt", YZStringHelper.DateToStringL(step.FinishAt));
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
