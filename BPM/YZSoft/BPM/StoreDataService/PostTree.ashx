<%@ WebHandler Language="C#" Class="YZSoft.BPM.StoreDataService.PostTree" %>

using System;
using System.Web;
using System.Text;
using BPM;
using BPM.Client;

namespace YZSoft.BPM.StoreDataService
{
    public class PostTree : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                JsonItemCollection items = new JsonItemCollection();
                Expand(cn, items, null);

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

        protected void Expand(BPMConnection cn, JsonItemCollection items, string path)
        {
            BPMObjectNameCollection folderNames = cn.GetFolders(StoreZoneType.Process, path, BPMPermision.Execute);

            foreach (String folderName in folderNames)
            {
                string folderPath = path + @"\" + folderName;

                JsonItem item = new JsonItem();
                item.Attributes["leaf"] = false;
                item.Attributes["text"] = folderName;
                item.Attributes["iconCls"] = "folder";
                item.Attributes["expanded"] = true;
                item.Attributes["path"] = folderPath;
                items.Add(item);

                JsonItemCollection children = new JsonItemCollection();
                item.Attributes.Add("children", children);
                Expand(cn, children, folderPath);
            }
        }
    }
}
