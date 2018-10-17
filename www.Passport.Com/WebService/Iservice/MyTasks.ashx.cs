using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Net.MobileHelper;
using BPM.Client;

namespace iAnywhere.YZSoft.services
{
    /// <summary>
    /// MyTasks 的摘要说明
    /// </summary>
    public class MyTasks : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.OAuth();

            //YZAuthHelper.AshxAuthCheck();

            GridPageInfo gridPageInfo = new GridPageInfo(context);
            IDBProvider dbProvider = YZDBProviderManager.CurrentProvider;

            //获得数据
            BPMTaskListCollection tasks = new BPMTaskListCollection();
            int rowcount;
            JsonItem rootItem = new JsonItem();
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                tasks = cn.GetMyTaskList(dbProvider.FilterStringMyTask, null, gridPageInfo.Start, gridPageInfo.Limit, out rowcount);

                //将数据转化为Json集合
                rootItem.Attributes.Add(JsonItem.TotalRows, rowcount);
                rootItem.Attributes.Add("total", rowcount);

                JsonItemCollection children = new JsonItemCollection();
                rootItem.Attributes.Add("children", children);
               

                foreach (BPMTaskListItem task in tasks)
                {
                    JsonItem item = new JsonItem();
                    children.Add(item);


                    //string OwnerDisplayName = (YZStringHelper.GetUserShortName(task.OwnerAccount, task.OwnerDisplayName) + task.ProcessName).Length>4
                    //    ? YZStringHelper.GetUserShortName(task.OwnerAccount, task.OwnerDisplayName).CutStrHTML(2)
                    //    : YZStringHelper.GetUserShortName(task.OwnerAccount, task.OwnerDisplayName);

                    item.Attributes.Add("tid", task.TaskID);
                    item.Attributes.Add("pid", task.StepID);
                    item.Attributes.Add("sn", task.SerialNum);
                    item.Attributes.Add("pn", task.ProcessName);
                    item.Attributes.Add("stepName",string.Empty);
                    //item.Attributes.Add("stepName", BPMProcStep.GetStepDisplayName(task.StepName).CutStrHTML(4));

                    //item.Attributes.Add("user", OwnerDisplayName);
                    item.Attributes.Add("user", YZStringHelper.GetUserShortName(task.OwnerAccount, task.OwnerDisplayName));
                    
                    //item.Attributes.Add("date", String.Empty);
                    item.Attributes.Add("date", YZStringHelper.DateToStringL(task.CreateAt));

                    task.Description = task.ShowDescByProcessName(true);

                    item.Attributes.Add("desc", String.IsNullOrEmpty(task.Description) ? "无内容摘要" : task.Description);

                    DateTime time = new DateTime();
                    time.ToUniversalTime();
                }
            }

            //System.Threading.Thread.Sleep(2000);
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