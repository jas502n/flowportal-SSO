<%@ WebHandler Language="C#" Class="YZSoft.BPM.SystemUsers" %>

using System;
using System.Web;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class SystemUsers : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            GridPageInfo gridPageInfo = new GridPageInfo(context);
            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);

            //获得数据
            ActiveUserCollection activeUsers = new ActiveUserCollection();
            int rowcount;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                activeUsers = LoginManager.GetSystemUsers(cn, 30, queryProvider.FilterStringSystemUsers, queryProvider.SortStringSystemUsers, gridPageInfo.Start, gridPageInfo.Limit, out rowcount);
            }

            //将数据转化为Json集合
            JsonItem rootItem = new JsonItem();
            rootItem.Attributes.Add(JsonItem.TotalRows, rowcount);

            JsonItemCollection children = new JsonItemCollection();
            rootItem.Attributes.Add("children", children);

            foreach (ActiveUser actUser in activeUsers)
            {
                JsonItem item = new JsonItem();
                children.Add(item);

                item.Attributes.Add("Account", actUser.Account);
                item.Attributes.Add("DisplayName", actUser.DisplayName);
                item.Attributes.Add("OfficePhone", actUser.OfficePhone);
                item.Attributes.Add("EMail", actUser.EMail);
                item.Attributes.Add("LastActiveDate", YZStringHelper.DateToStringL(actUser.LastActiveDate));
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
