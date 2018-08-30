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
                NodeItemCollection nodes = new NodeItemCollection();
                LinkItemCollection links = new LinkItemCollection();
                BPMTask task = null;
                BPMStepCollection steps = null;
                
                string processName = context.Request.Params["processName"];
                Version processVersion;
                
                int taskid = -1;
                if (!String.IsNullOrEmpty(context.Request.Params["TaskID"]))
                    taskid = Int32.Parse(context.Request.Params["TaskID"]);
                
                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();

                    if (taskid != -1)
                    {
                        task = new BPMTask();
                        task.Open(cn, taskid);
                        if (String.IsNullOrEmpty(processName))
                            processName = task.ProcessName;

                        processVersion = task.ProcessVersion;
                        
                        BPMProcess.GetTaskTraceInfo(cn, processName, processVersion, out nodes, out links);
                        steps = BPMTask.GetAllSteps(cn, taskid, processName);
                    }
                    else
                    {
                        processVersion = cn.GetGlobalObjectLastVersion(StoreZoneType.Process, processName);
                        BPMProcess.GetTaskTraceInfo(cn, processName,processVersion, out nodes, out links);
                    }
                }

                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", true);

                rv.Attributes.Add("ProcessVersion", processVersion.ToString(2));

                //设置nodes
                JsonItemCollection jnodes = new JsonItemCollection();
                rv.Attributes.Add("nodes", jnodes);
                
                foreach (NodeItem node in nodes)
                {
                    JsonItem jnode = new JsonItem();
                    jnodes.Add(jnode);

                    jnode.Attributes.Add("TypeName", node.TypeName);

                    JsonItem centerPoint = new JsonItem();
                    jnode.Attributes.Add("centerPoint", centerPoint);
                    centerPoint.Attributes.Add("X", node.CenterPoint.X);
                    centerPoint.Attributes.Add("Y", node.CenterPoint.Y);

                    jnode.Attributes.Add("Name", node.Name);
                    jnode.Attributes.Add("DisplayName", node.DisplayName);

                    JsonItem font = new JsonItem();
                    jnode.Attributes.Add("Font", font);
                    font.Attributes.Add("Name", node.Font.Name);
                    font.Attributes.Add("SizeInPoints", node.Font.SizeInPoints);

                    jnode.Attributes.Add("ForeColor", ColorTranslator.ToHtml(node.ForeColor));
                }

                //设置links
                JsonItemCollection jlinks = new JsonItemCollection();
                rv.Attributes.Add("links", jlinks);

                foreach (LinkItem link in links)
                {
                    JsonItem jlink = new JsonItem();
                    jlinks.Add(jlink);

                    jlink.Attributes.Add("DockPointIndex", link.DockPointIndex);
                    jlink.Attributes.Add("DisplayString", link.DisplayString);
                    jlink.Attributes.Add("TextColor", ColorTranslator.ToHtml(link.TextColor));

                    JsonItem font = new JsonItem();
                    jlink.Attributes.Add("Font", font);
                    font.Attributes.Add("Name", link.Font.Name);
                    font.Attributes.Add("SizeInPoints", link.Font.SizeInPoints);

                    jlink.Attributes.Add("LineColor", ColorTranslator.ToHtml(link.LineColor));
                    jlink.Attributes.Add("LineWeight", link.LineWidth);

                    JsonItem jfromPoint = new JsonItem();
                    jlink.Attributes.Add("fromPoint", jfromPoint);
                    jfromPoint.Attributes.Add("X", link.FromPoint.X);
                    jfromPoint.Attributes.Add("Y", link.FromPoint.Y);

                    JsonItemCollection joffsets = new JsonItemCollection();
                    jlink.Attributes.Add("offsets", joffsets);
                    foreach (Point offset in link.OffsetSet)
                    {
                        JsonItem joffset = new JsonItem();
                        joffsets.Add(joffset);
                        joffset.Attributes.Add("X", offset.X);
                        joffset.Attributes.Add("Y", offset.Y);                        
                    }
                }
                
                //设置steps
                if (steps != null)
                {
                    JsonItemCollection jsteps = new JsonItemCollection();
                    rv.Attributes.Add("steps", jsteps);

                    foreach (BPMProcStep step in steps)
                    {
                        JsonItem item = new JsonItem();
                        jsteps.Add(item);
                        
                        item.Attributes.Add("StepID", step.StepID);
                        item.Attributes.Add("Finished", step.Finished);
                        item.Attributes.Add("IsHumanStep", step.IsHumanStep);
                        item.Attributes.Add("AutoProcess", step.AutoProcess);
                        item.Attributes.Add("NodeNameOrg", step.RegularNodeName);
                        item.Attributes.Add("NodeName", step.StepDisplayName);
                        item.Attributes.Add("SelAction", step.SelActionDisplayString);
                        item.Attributes.Add("OwnerAccount", step.OwnerAccount);
                        item.Attributes.Add("OwnerDisplayName", step.OwnerFullName);
                        item.Attributes.Add("AgentAccount", step.AgentAccount);
                        item.Attributes.Add("AgentDisplayName", step.AgentFullName);
                        item.Attributes.Add("RecipientAccount", step.RecipientAccount);
                        item.Attributes.Add("RecipientDisplayName", step.RecipientFullName);
                        item.Attributes.Add("HandlerAccount", step.HandlerAccount);
                        item.Attributes.Add("HandlerDisplayName", step.HandlerFullName);
                        item.Attributes.Add("ReceiveAt", YZStringHelper.DateToStringL(step.ReceiveAt));
                        item.Attributes.Add("FinishAt", YZStringHelper.DateToStringL(step.FinishAt));
                        item.Attributes.Add("Comments", step.Comments);
                        item.Attributes.Add("Memo", step.Memo);
                        item.Attributes.Add("Share", step.Share);
                    }
                }

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
