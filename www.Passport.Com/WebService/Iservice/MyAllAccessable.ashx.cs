using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Net.MobileHelper;
using BPM.Client;
using BPM;

namespace iAnywhere.YZSoft.services
{
    /// <summary>
    /// MyAllAccessable 的摘要说明
    /// </summary>
    public class MyAllAccessable : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
          
 
             YZAuthHelper.OAuth();

            //YZAuthHelper.AshxAuthCheck();

            GridPageInfo gridPageInfo = new GridPageInfo(context);
            IDBProvider dbProvider = YZDBProviderManager.CurrentProvider;

            int year;
            if (context.Request.Params["byYear"] == "0")
            {
                year = -1;
            }
            else
            {
                string strYear = context.Request.Params["Year"];
                year = String.IsNullOrEmpty(strYear) ? DateTime.Today.Year : Convert.ToInt32(strYear);
            }



            //获得数据
            BPMTaskCollection tasks = new BPMTaskCollection();
            int rowcount;
            JsonItem rootItem = new JsonItem();
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                //tasks = cn.GetHistoryTasks(HistoryTaskType.AllAccessable, null, null, null, gridPageInfo.Start, gridPageInfo.Limit, out rowcount);
                tasks = cn.GetHistoryTasks(year, HistoryTaskType.AllAccessable, dbProvider.FilterStringHistoryTaskTaskTableFilter, dbProvider.FilterStringHistoryTaskStepTableFilter, null, gridPageInfo.Start, gridPageInfo.Limit, out rowcount);

                //将数据转化为Json集合
                rootItem.Attributes.Add(JsonItem.TotalRows, rowcount);

                JsonItemCollection children = new JsonItemCollection();
                rootItem.Attributes.Add("children", children);
                rootItem.Attributes.Add("total", rowcount);

                foreach (BPMTask task in tasks)
                {
                    JsonItem item = new JsonItem();
                    children.Add(item);

                    item.Attributes.Add("tid", task.TaskID);
                    item.Attributes.Add("pid", task.ParentStepID);
                    item.Attributes.Add("sn", task.SerialNum);
                    item.Attributes.Add("pn", task.ProcessName);
                    item.Attributes.Add("user", YZStringHelper.GetUserFriendlyName(task.OwnerAccount, task.OwnerDisplayName));
                    item.Attributes.Add("state", task.TaskState.ToString());
                    item.Attributes.Add("stateText", YZStringHelper.GetTaskStateDisplayString(cn, task.TaskState, task.TaskID));
                    item.Attributes.Add("date", YZStringHelper.DateToStringL(task.CreateAt));

                    task.Description = task.ShowDescByProcessName(true);
                    item.Attributes.Add("desc", String.IsNullOrEmpty(task.Description) ? "无内容摘要" : task.Description);

                    //item.Attributes.Add("desc", String.IsNullOrEmpty(task.Description) ? "无内容摘要" : task.Description);

                }
            }

            //System.Threading.Thread.Sleep(500);
            context.Response.AppendHeader("Access-Control-Allow-Origin", "*");      // 响应类型 
            context.Response.AppendHeader("Access-Control-Allow-Methods", "POST");  // 响应头设置 
            context.Response.AppendHeader("Access-Control-Allow-Headers", "x-requested-with,content-type");

            context.Response.Charset = "gb2312"; //设置字符集类型  
            context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
            context.Response.ContentType = "application/json;charset=gb2312";
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