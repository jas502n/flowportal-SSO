<%@ WebHandler Language="C#" Class="YZSoft.BPM.StoreDataService.ProcessNameList" %>

using System;
using System.Web;
using System.Text;
using BPM;
using BPM.Client;

namespace YZSoft.BPM.StoreDataService
{
    public class ProcessNameList : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
            
            //获得数据
            BPMObjectNameCollection processNames = new BPMObjectNameCollection();
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                processNames = ProcessNameManager.GetProcessNames(cn);
            }

            //将数据转化为Json集合
            JsonItemCollection items = new JsonItemCollection();

            if (!String.IsNullOrEmpty(context.Request.Params["AppendAll"]))
            {
                JsonItem item = new JsonItem();
                item.Attributes.Add("name", Resources.YZStrings.All_SearchAll);
                item.Attributes.Add("value", "all");
                items.Add(item);
            }

            foreach (string processName in processNames)
            {
                JsonItem item = new JsonItem();
                item.Attributes.Add("name", processName);
                item.Attributes.Add("value", processName);
                items.Add(item);
            }

            //输出数据
            context.Response.Write(items.ToString());
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
