<%@ WebHandler Language="C#" Class="YZSoft.BPM.MyTask" %>

using System;
using System.Web;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class MyTask : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            GridPageInfo gridPageInfo = new GridPageInfo(context);
            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);

            //获得数据
            BPMTaskListCollection tasks = new BPMTaskListCollection();
            int rowcount;
            JsonItem rootItem = new JsonItem();
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                tasks = cn.GetMyTaskList(queryProvider.FilterStringMyTask, queryProvider.SortStringMyTask, gridPageInfo.Start, gridPageInfo.Limit, out rowcount);

                //将数据转化为Json集合
                rootItem.Attributes.Add(JsonItem.TotalRows, rowcount);

                JsonItemCollection children = new JsonItemCollection();
                rootItem.Attributes.Add("children", children);

                foreach (BPMTaskListItem task in tasks)
                {
                    JsonItem item = new JsonItem();
                    children.Add(item);

                    string stepDisplayName = BPMProcStep.GetStepDisplayName(task.StepName);

                    item.Attributes.Add("StepID", task.StepID);
                    item.Attributes.Add("TaskID", task.TaskID);
                    item.Attributes.Add("SerialNum", task.SerialNum);
                    item.Attributes.Add("ProcessName", task.ProcessName);
                    item.Attributes.Add("ProcessVersion", task.ProcessVersion.ToString(2));
                    item.Attributes.Add("OwnerAccount", task.OwnerAccount);
                    item.Attributes.Add("OwnerDisplayName", task.OwnerFullName);
                    item.Attributes.Add("AgentAccount", task.AgentAccount);
                    item.Attributes.Add("AgentDisplayName", task.AgentFullName);
                    item.Attributes.Add("CreateAt", YZStringHelper.DateToStringL(task.CreateAt));
                    item.Attributes.Add("NodeName", stepDisplayName);
                    item.Attributes.Add("ReceiveAt", YZStringHelper.DateToStringL(task.ReceiveAt));
                    item.Attributes.Add("Share", task.Share);
                    item.Attributes.Add("State", JsonItem.GetTaskStateJsonItem(cn, task.TaskState, task.TaskID));
                    item.Attributes.Add("TimeoutFirstNotifyDate", YZStringHelper.DateToStringL(task.TimeoutFirstNotifyDate));
                    item.Attributes.Add("TimeoutDeadline", YZStringHelper.DateToStringL(task.TimeoutDeadline));
                    item.Attributes.Add("TimeoutNotifyCount", task.TimeoutNotifyCount);
                    item.Attributes.Add("Description", String.IsNullOrEmpty(task.Description) ? Resources.YZStrings.All_None : task.Description);

                    JsonItem perm = new JsonItem();
                    item.Attributes.Add("Perm", perm);

                    BPMList<NodePermision> perms = new BPMList<NodePermision>();
                    perms.Add(NodePermision.BatchApprove);
                    perms.Add(NodePermision.Reject);
                    perms.Add(NodePermision.RecedeRestart);
                    perms.Add(NodePermision.Transfer);
                    perms.Add(NodePermision.Public);
                    perms.Add(NodePermision.Jump);
                    perms.Add(NodePermision.Abort);
                    perms.Add(NodePermision.Delete);
                    perms.Add(NodePermision.InviteIndicate);
                    perms.Add(NodePermision.Inform);

                    bool[] allows = BPMTask.TaskOptPermCheckExt(cn, task.TaskID, task.StepID, perms.ToArray());

                    if (NameCompare.EquName(task.StepName, "sysIndicate") ||
                        NameCompare.EquName(task.StepName, "sysInform"))
                    {
                        allows[0] = false;
                        allows[1] = false;
                        allows[2] = false;
                        allows[3] = false;
                        allows[5] = false;
                        allows[6] = false;
                        allows[7] = false;
                    }

                    if (NameCompare.EquName(task.StepName, "sysInform"))
                        allows[8] = false;
                    
                    perm.Attributes.Add("BatchApprove", allows[0]);
                    perm.Attributes.Add("Reject", allows[1]);
                    perm.Attributes.Add("ReturnToInitiator", allows[2]);
                    perm.Attributes.Add("Transfer", allows[3]);
                    perm.Attributes.Add("Public", allows[4]);
                    perm.Attributes.Add("Jump", allows[5]);
                    perm.Attributes.Add("About", allows[6]);
                    perm.Attributes.Add("Delete", allows[7]);
                    perm.Attributes.Add("InviteIndicate", allows[8]);
                    perm.Attributes.Add("Inform", allows[9]);
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
