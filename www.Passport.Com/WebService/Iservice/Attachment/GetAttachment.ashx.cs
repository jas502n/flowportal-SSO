using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Net.MobileHelper;
using BPM;
using System.Data;
using Net.MobileHelper.YZSoft.Resources;
using Newtonsoft.Json.Linq;

namespace iAnywhere.YZSoft.attachment
{
    /// <summary>
    /// GetAttachment 的摘要说明
    /// </summary>
    public class GetAttachment : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            try
            {
                string idstr = context.Request.Params["fileids"];

                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", true);
                JsonItemCollection files = new JsonItemCollection();
                rv.Attributes["files"] = files;

                if (String.IsNullOrEmpty(idstr))
                {
                    context.Response.Write(rv.ToString());
                    return;
                }

                string[] ids = idstr.Split(',', ';');
                AttachmentCollection attachments;
                using (IDbConnection cn = QueryManager.CurrentProvider.OpenConnection())
                {
                    attachments = YZAttachmentHelper.GetAttachmentsInfo(cn, ids);
                }
 

                foreach (Attachment attachment in attachments)
                {
                    JsonItem file = new JsonItem();
                    files.Add(file);

                    file.Attributes["attachment"] = attachment.FileID;
                    file.Attributes["name"] = attachment.Name;
                    file.Attributes["type"] = attachment.Ext;
                    file.Attributes["size"] = attachment.Size;

                    string requestUrl = HttpContext.Current.Request.Url.ToString();
                    string RedirectURLBase = requestUrl.Substring(0, requestUrl.IndexOf("Attachment", StringComparison.OrdinalIgnoreCase))
                                                + "Attachment/download.ashx?FileID=" + attachment.FileID;

                    file.Attributes["DownloadUrl"] = RedirectURLBase;

                }

                context.Response.AppendHeader("Access-Control-Allow-Origin", "*");      // 响应类型 
                context.Response.AppendHeader("Access-Control-Allow-Methods", "POST");  // 响应头设置 
                context.Response.AppendHeader("Access-Control-Allow-Headers", "x-requested-with,content-type");

                context.Response.Charset = "gb2312"; //设置字符集类型  
                context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
                context.Response.ContentType = "application/json;charset=gb2312";

                // if (attachments.Count > 0)
                context.Response.Write(rv.ToString());

            }
            catch (Exception ex)
            {
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", JosonMobile.Msg_ALL_FileNoExist + ex.Message);

                context.Response.Write(rv.ToString());
            }


        }



        private JObject GetAttachments(string FileID)
        {
            JObject rv = new JObject();

            if (!String.IsNullOrEmpty(FileID))
            {

                string[] ids = FileID.Split(',', ';');
                AttachmentCollection attachments;
                using (IDbConnection cn = QueryManager.CurrentProvider.OpenConnection())
                {
                    attachments = YZAttachmentHelper.GetAttachmentsInfo(cn, ids);
                }

                JArray ja = new JArray();
                rv["files"] = ja;
                foreach (Attachment item in attachments)
                {
                    JObject jo = new JObject();
                    ja.Add(jo);


                    jo["name"] = item.Name;
                    string requestUrl = HttpContext.Current.Request.Url.ToString();
                    string RedirectURLBase = requestUrl.Substring(0, requestUrl.IndexOf("YZSoft", StringComparison.OrdinalIgnoreCase)) + "YZSoft.Services.REST/Attachment/download.ashx?" + item.FileID;

                    jo["DownloadUrl"] = RedirectURLBase;
                }
            }
            return rv;
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