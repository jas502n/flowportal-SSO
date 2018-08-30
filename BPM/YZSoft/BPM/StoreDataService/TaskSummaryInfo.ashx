<%@ WebHandler Language="C#" Class="YZSoft.Reports.FlowChartDefine" %>

using System;
using System.Web;
using System.Drawing;
using BPM;
using BPM.Client;
using BPM.Client.TaskTrace;

namespace YZSoft.Reports
{
    public class FlowChartDefine : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
            
            try
            {
                int taskid = Int32.Parse(context.Request.Params["TaskID"]);

                BPMTask task = new BPMTask();

                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();
                    task.Open(cn, taskid);
                }

                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", true);

                rv.Attributes.Add("ProcessVersion", task.ProcessVersion.ToString(2));
                rv.Attributes.Add("SerialNum", task.SerialNum);
                rv.Attributes.Add("OwnerAccount", task.OwnerAccount);
                rv.Attributes.Add("OwnerDisplayName", task.OwnerFullName);
                rv.Attributes.Add("AgentAccount", task.AgentAccount);
                rv.Attributes.Add("AgentDisplayName", task.AgentFullName);
                rv.Attributes.Add("TaskState", task.TaskState.ToString());

                context.Response.Write(rv.ToString());
            }
            catch (Exception exp)
            {
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", exp.Message);

                context.Response.Write(rv.ToString());
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
