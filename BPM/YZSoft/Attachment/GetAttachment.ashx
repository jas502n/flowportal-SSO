<%@ WebHandler Language="C#" Class="GetAttachment" %>

using System;
using System.Web;
using System.Net;
using System.Text;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using BPM;

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
                attachments = YZAttachmentHelper.GetAttachmentsInfo(cn,ids);
            }

            foreach (Attachment attachment in attachments)
            {
                JsonItem file = new JsonItem();
                files.Add(file);

                file.Attributes["attachment"] = attachment.FileID;
                file.Attributes["name"] = attachment.Name;
                file.Attributes["type"] = attachment.Ext;
                file.Attributes["size"] = attachment.Size;
            }

            context.Response.Write(rv.ToString());
        }
        catch (Exception exp)
        {
            JsonItem rv = new JsonItem();
            rv.Attributes.Add("success", false);
            rv.Attributes.Add("errorMessage", exp.Message);

            context.Response.Write(rv.ToString());
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}
