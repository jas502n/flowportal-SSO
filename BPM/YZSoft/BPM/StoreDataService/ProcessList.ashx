<%@ WebHandler Language="C#" Class="YZSoft.BPM.ProcessList" %>

using System;
using System.Web;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class ProcessList : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            string path = context.Request.Params["path"];
            BPMProcessCollection processes = new BPMProcessCollection();

            //获得数据
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                processes = cn.GetProcessList(path, BPMPermision.Execute, true);
            }

            //将数据转化为Json集合
            JsonItem rootItem = new JsonItem();
            rootItem.Attributes.Add(JsonItem.TotalRows, processes.Count);

            JsonItemCollection children = new JsonItemCollection();
            rootItem.Attributes.Add("children", children);

            foreach (BPMProcess process in processes)
            {
                JsonItem item = new JsonItem();
                children.Add(item);

                item.Attributes.Add("Name", process.Name);
                item.Attributes.Add("ProcessVersion", process.Version.ToString(2));
                item.Attributes.Add("Description", process.Property.Description);
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
