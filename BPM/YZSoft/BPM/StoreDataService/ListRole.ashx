<%@ WebHandler Language="C#" Class="YZSoft.BPM.StoreDataService.ListRole" %>

using System;
using System.Web;
using BPM;
using BPM.Client;

namespace YZSoft.BPM.StoreDataService
{
    public class ListRole : IHttpHandler
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

                RoleCollection roles = new RoleCollection();
                string path = context.Request.Params["path"];

                //获得数据
                if (!String.IsNullOrEmpty(path))
                    roles = OU.GetRoles(cn, path);

                foreach (Role role in roles)
                {
                    JsonItem item = new JsonItem();
                    children.Add(item);
                    item.Attributes.Add("Name", role.Name);
                    item.Attributes.Add("SID", role.SID);
                    item.Attributes.Add("RoleFullName", role.FullName);
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
