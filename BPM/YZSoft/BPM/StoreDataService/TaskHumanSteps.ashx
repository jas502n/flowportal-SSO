<%@ WebHandler Language="C#" Class="YZSoft.BPM.TaskHumenSteps" %>

using System;
using System.Web;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class TaskHumenSteps : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
            int taskid = Int32.Parse(context.Request.Params["TaskID"]);

            //获得数据
            NodeCollection humanNodes = null;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                humanNodes = BPMTask.GetAllHumanNodesInProcessDefine(cn, taskid);
            }

            //将数据转化为Json集合
            JsonItem rootItem = new JsonItem();
            rootItem.Attributes.Add(JsonItem.TotalRows, humanNodes.Count);

            JsonItemCollection children = new JsonItemCollection();
            rootItem.Attributes.Add("children", children);

            foreach (ProcessNode node in humanNodes)
            {
                JsonItem item = new JsonItem();
                children.Add(item);

                item.Attributes.Add("NodeName", node.Name);
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
