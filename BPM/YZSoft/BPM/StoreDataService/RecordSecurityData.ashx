<%@ WebHandler Language="C#" Class="YZSoft.BPM.RecordSecurityData" %>

using System;
using System.Web;
using System.Text;
using BPM;
using BPM.Client;
using BPM.Client.Security;

namespace YZSoft.BPM
{
    public class RecordSecurityData : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            string rsid = context.Request.Params["RSID"];
            string tableName = context.Request.Params["TableName"];
            string key = context.Request.Params["Key"];
            
            //获得数据
            JsonItem rootItem = new JsonItem();
            using (BPMConnection cn = new BPMConnection())
            {
                RDACL acl = null;
                UserResourcePermisionCollection resPerms = null;

                cn.WebOpen();
                acl = RecordSecurityManager.LoadACL(cn, tableName, key);
                resPerms = UserResourceSecurityManager.GetResourcePermisions(cn, rsid);


                //将数据转化为Json集合
                rootItem.Attributes.Add(JsonItem.TotalRows, acl.ACEs.Count);

                JsonItemCollection children = new JsonItemCollection();
                rootItem.Attributes.Add("acl", children);

                foreach (RDACE ace in acl.ACEs)
                {
                    //取得item，如相同SID已存在，则返回存在的item
                    JsonItem item = null;
                    foreach (JsonItem tmpItem in children)
                    {
                        string sid = tmpItem.Attributes["SID"] as string;
                        if (sid == ace.SID)
                        {
                            item = tmpItem;
                            break;
                        }
                    }

                    if (item == null)
                    {
                        item = new JsonItem();
                        children.Add(item);
                        item.Attributes.Add("SIDType", ace.SIDType.ToString());
                        item.Attributes.Add("SID", ace.SID);
                        item.Attributes.Add("DisplayName", this.GetACEDisplayName(cn, ace));
                        
                        if (ace.SID == WellKnownSID.Administrators)
                            item.Attributes.Add("DenyModify", true);
                    }

                    //创建或取得perm
                    JsonItemCollection perms = null;
                    if (item.Attributes.ContainsKey("Permision"))
                    {
                        perms = item.Attributes["Permision"] as JsonItemCollection;
                    }
                    else
                    {
                        perms = new JsonItemCollection();
                        item.Attributes.Add("Permision", perms);
                    }

                    JsonItem perm = new JsonItem();
                    perms.Add(perm);
                    perm.Attributes.Add("Name", ace.Permision);
                    perm.Attributes.Add("LeadershipToken", ace.LeadershipToken);

                }

                children = new JsonItemCollection();
                rootItem.Attributes.Add("ResPerms", children);
                foreach (UserResourcePermision resPerm in resPerms)
                {
                    if (resPerm.PermType != UserResourcePermisionType.Record)
                        continue;

                    JsonItem item = new JsonItem();
                    children.Add(item);

                    item.Attributes.Add("Name", resPerm.PermName);
                    item.Attributes.Add("DisplayName", resPerm.PermDisplayName);
                    item.Attributes.Add("LeadershipToken", resPerm.LeadershipTokenEnabled);
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

        private string GetACEDisplayName(BPMConnection cn, RDACE ace)
        {
            string displayName = null;

            displayName = SecurityManager.TryGetObjectNameFromSID(cn, ace.SIDType, ace.SID);

            //SID已不存在
            if (String.IsNullOrEmpty(displayName))
                displayName = ace.SID;

            return displayName;
        }
    }
}
