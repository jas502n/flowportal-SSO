<%@ WebHandler Language="C#" Class="YZSoft.BPM.StoreDataService.OrgTree" %>

using System;
using System.Web;
using System.Text;
using BPM;
using BPM.Client;
using BPM.Client.Security;

namespace YZSoft.BPM.StoreDataService
{
    public class OrgTree : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
            string path = context.Request.Params["node"];
            if (YZStringHelper.EquName(path,"root"))
                path = null;

            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                JsonItemCollection items = new JsonItemCollection();
                if (String.IsNullOrEmpty(path))
                {
                    SecurityToken token = cn.Token;
                    JsonItem dirParentItem = null;
                    Expand(cn, items, path, token, ref dirParentItem);
                    if (dirParentItem != null)
                    {
                        dirParentItem.Attributes["dirou"] = true;
                        
                        //没必要列出所在部门的子部门
                        //dirParentItem.Attributes["expanded"] = false;
                        //dirParentItem.ChildItems.Clear();
                    }
                }
                else
                {
                    OUCollection ous = OU.GetChildren(cn, path);

                    foreach (OU ou in ous)
                    {
                        JsonItem item = new JsonItem();
                        item.Attributes["leaf"] = false;
                        item.Attributes["text"] = ou.Name;
                        item.Attributes["iconCls"] = "folder";
                        item.Attributes["id"] = ou.FullName;
                        item.Attributes["enpandable"] = true;
                        items.Add(item);

                        item.Attributes.Add("data", this.GetNodeData(ou));
                    }
                }

                context.Response.Write(items.ToString());
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        protected void Expand(BPMConnection cn, JsonItemCollection items, string path, SecurityToken token, ref JsonItem dirParentItem)
        {
            OUCollection ous;
            if(String.IsNullOrEmpty(path))
                ous = cn.GetRootOUs();
            else
                ous = OU.GetChildren(cn, path);

            bool parentOuExpanded = false;
            foreach (OU ou in ous)
            {
                JsonItem item = new JsonItem();
                item.Attributes["leaf"] = false;
                item.Attributes["text"] = ou.Name;
                item.Attributes["iconCls"] = "folder";
                item.Attributes["id"] = ou.FullName;
                item.Attributes["enpandable"] = true;
                items.Add(item);

                item.Attributes.Add("data", this.GetNodeData(ou));

                if (!parentOuExpanded && token.ContainsSID(ou.SID))
                {
                    dirParentItem = item;
                    parentOuExpanded = true;

                    item.Attributes["expanded"] = true;
                    
                    JsonItemCollection children = new JsonItemCollection();
                    item.Attributes.Add("children", children);
                    Expand(cn, children, ou.FullName, token, ref dirParentItem);
                }
            }
        }

        private JsonItem GetNodeData(OU ou)
        {
            JsonItem node = new JsonItem();

            node.Attributes["OUName"] = ou.Name;
            node.Attributes["OUCode"] = ou.Code;
            node.Attributes["OUFullName"] = ou.FullName;
            node.Attributes["OULevel"] = ou.OULevel;
            node.Attributes["SID"] = ou.SID;

            JsonItem extAttrs = new JsonItem();
            node.Attributes.Add("ExtAttrs", extAttrs);

            foreach (string attrName in ou.ExtAttrNames)
                extAttrs.Attributes.Add(attrName, ou[attrName]);

            return node;
        }
    }
}
