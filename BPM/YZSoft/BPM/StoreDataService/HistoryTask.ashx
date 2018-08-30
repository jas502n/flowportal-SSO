<%@ WebHandler Language="C#" Class="YZSoft.BPM.StoreDataService.HistoryTask" %>

using System;
using System.Web;
using System.Text;
using BPM;
using BPM.Client;

namespace YZSoft.BPM.StoreDataService
{
    public class HistoryTask : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            GridPageInfo gridPageInfo = new GridPageInfo(context);
            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);
            HistoryTaskType taskType;
            string strTaskType = context.Request.Params["HistoryTaskType"];
            int year = context.Request.Params["byYear"] == "0" ? -1:Convert.ToInt32(context.Request.Params["Year"]);
            
            if (YZStringHelper.EquName(strTaskType, HistoryTaskType.MyRequest.ToString()))
                taskType = HistoryTaskType.MyRequest;
            else if (YZStringHelper.EquName(strTaskType, HistoryTaskType.DelegationRequest.ToString()))
                taskType = HistoryTaskType.DelegationRequest;
            else if (YZStringHelper.EquName(strTaskType, HistoryTaskType.MyProcessed.ToString()))
                taskType = HistoryTaskType.MyProcessed;
            else
                taskType = HistoryTaskType.AllAccessable;
            
            //获得数据
            JsonItem rootItem = new JsonItem();
            string taskTableFilter = queryProvider.FilterStringHistoryTaskTaskTableFilter;
            string stepTableFilter = queryProvider.FilterStringHistoryTaskStepTableFilter;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                int rowcount;
                BPMTaskCollection tasks = cn.GetHistoryTasks(year, taskType, taskTableFilter, stepTableFilter, queryProvider.SortStringHistoryTaskMyPosted, gridPageInfo.Start, gridPageInfo.Limit, out rowcount);

                rootItem.Attributes.Add(JsonItem.TotalRows, rowcount);
                JsonItemCollection children = new JsonItemCollection();
                rootItem.Attributes.Add("children", children);
                
                foreach (BPMTask task in tasks)
                {
                    JsonItem item = new JsonItem();
                    children.Add(item);

                    item.Attributes.Add("TaskID", task.TaskID);
                    item.Attributes.Add("SerialNum", task.SerialNum);
                    item.Attributes.Add("ProcessName", task.ProcessName);
                    item.Attributes.Add("ProcessVersion", task.ProcessVersion.ToString(2));
                    item.Attributes.Add("OwnerAccount", task.OwnerAccount);
                    item.Attributes.Add("OwnerDisplayName", task.OwnerFullName);
                    item.Attributes.Add("AgentAccount", task.AgentAccount);
                    item.Attributes.Add("AgentDisplayName", task.AgentFullName);
                    item.Attributes.Add("CreateAt", YZStringHelper.DateToStringL(task.CreateAt));
                    item.Attributes.Add("State", JsonItem.GetTaskStateJsonItem(cn, task.TaskState, task.TaskID));
                    item.Attributes.Add("Description", String.IsNullOrEmpty(task.Description) ? Resources.YZStrings.All_None : task.Description);

                    JsonItem perm = new JsonItem();
                    item.Attributes.Add("Perm", perm);

                    BPMList<NodePermision> perms = new BPMList<NodePermision>();
                    perms.Add(NodePermision.Public);
                    perms.Add(NodePermision.RecedeRestart);
                    perms.Add(NodePermision.Jump);
                    perms.Add(NodePermision.Transfer);
                    perms.Add(NodePermision.AssignOwner);
                    perms.Add(NodePermision.Reject);
                    perms.Add(NodePermision.Abort);
                    perms.Add(NodePermision.Delete);
                    perms.Add(NodePermision.Continue);
                    perms.Add(NodePermision.InviteIndicate);
                    perms.Add(NodePermision.Inform);
                    
                    if (taskType == HistoryTaskType.MyRequest || taskType == HistoryTaskType.DelegationRequest)
                        perms.Add(NodePermision.PickBackRestart);
                    if (taskType == HistoryTaskType.MyProcessed)
                        perms.Add(NodePermision.PickBack);
                    
                    bool[] allows = BPMTask.TaskOptPermCheckExt(cn, task.TaskID, -1, perms.ToArray());

                    perm.Attributes.Add("Public", allows[0]);
                    perm.Attributes.Add("ReturnToInitiator", allows[1]);
                    perm.Attributes.Add("Jump", allows[2]);
                    perm.Attributes.Add("Transfer", allows[3]);
                    perm.Attributes.Add("AssignOwner", allows[4]);
                    perm.Attributes.Add("Reject", allows[5]);
                    perm.Attributes.Add("About", allows[6]);
                    perm.Attributes.Add("Delete", allows[7]);
                    perm.Attributes.Add("Continue", allows[8]);
                    perm.Attributes.Add("InviteIndicate", allows[9]);
                    perm.Attributes.Add("Inform", allows[10]);

                    if (taskType == HistoryTaskType.MyRequest || taskType == HistoryTaskType.DelegationRequest)
                        perm.Attributes.Add("PickBackRestart", allows[11]);
                    if (taskType == HistoryTaskType.MyProcessed)
                        perm.Attributes.Add("PickBack", allows[11]);
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
