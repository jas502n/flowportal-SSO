<%@ WebHandler Language="C#" Class="YZSoft.BPM.StoreDataService.ListGroup" %>

using System;
using System.Web;
using BPM;
using BPM.Client;
using BPM.Client.Security;

namespace YZSoft.BPM.StoreDataService
{
    public class ListGroup : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            //将数据转化为Json集合
            JsonItem rv = new JsonItem();

            JsonItemCollection children = new JsonItemCollection();
            rv.Attributes.Add("children", children);

            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                SecurityGroupCollection groups = GroupManager.GetSecurityGroups(cn);

                foreach (SecurityGroup group in groups)
                {
                    JsonItem item = new JsonItem();
                    children.Add(item);
                    item.Attributes.Add("GroupName", group.GroupName);
                    item.Attributes.Add("SID", group.SID);
                }
            }

            //输出数据
            context.Response.Write(rv.ToString());
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
