<%@ WebHandler Language="C#" Class="YZSoft.BPM.ShareTask" %>

using System;
using System.Web;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class ShareTask : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            GridPageInfo gridPageInfo = new GridPageInfo(context);
            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);

            //获得数据
            BPMTaskListCollection tasks = new BPMTaskListCollection();
            int rowcount;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                tasks = cn.GetShareTaskList(queryProvider.FilterStringMyTask, queryProvider.SortStringMyTask, gridPageInfo.Start, gridPageInfo.Limit, out rowcount);
            }

            //将数据转化为Json集合
            JsonItem rootItem = new JsonItem();
            rootItem.Attributes.Add(JsonItem.TotalRows, rowcount);

            JsonItemCollection children = new JsonItemCollection();
            rootItem.Attributes.Add("children", children);

            foreach (BPMTaskListItem task in tasks)
            {
                JsonItem item = new JsonItem();
                children.Add(item);

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
                item.Attributes.Add("NodeName", task.StepName);
                item.Attributes.Add("ReceiveAt", YZStringHelper.DateToStringL(task.ReceiveAt));
                item.Attributes.Add("Share", task.Share);
                item.Attributes.Add("State", task.TaskState.ToString());
                item.Attributes.Add("TimeoutFirstNotifyDate", YZStringHelper.DateToStringL(task.TimeoutFirstNotifyDate));
                item.Attributes.Add("TimeoutDeadline", YZStringHelper.DateToStringL(task.TimeoutDeadline));
                item.Attributes.Add("TimeoutNotifyCount", task.TimeoutNotifyCount);
                item.Attributes.Add("Description", String.IsNullOrEmpty(task.Description) ? Resources.YZStrings.All_None : task.Description);
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
