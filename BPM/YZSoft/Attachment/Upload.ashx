<%@ WebHandler Language="C#" Class="upload" %>

using System;
using System.Web;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using BPM;

public class upload : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        try
        {
            context.Response.ContentType = "text/json";

            string account = context.Request.Params["Account"];
            string token = context.Request.Params["Token"];

            if (!String.IsNullOrEmpty(account) && !String.IsNullOrEmpty(token))
            {
                if (YZSecurityHelper.CheckToken(account,token))
                    YZAuthHelper.SetAuthCookie(account);
            }

            if (!YZAuthHelper.IsAuthenticated)
            {
                JsonItem rv = new JsonItem();
                rv.Attributes["result"] = false;
                rv.Attributes["message"] = Resources.YZStrings.Aspx_Upload_NoAuth;
                context.Response.Write(rv.ToString());
                return;
            }

            HttpFileCollection files = context.Request.Files;
            if (files.Count > 0 && files[0].ContentLength > 0)
            {
                HttpPostedFile file = files[0];
                string fileName = System.IO.Path.GetFileName(file.FileName);
                long fileSize = file.ContentLength;
                string fileExt = System.IO.Path.GetExtension(fileName).ToLower();

                string fileId;
                string savePath;
                do
                {
                    fileId = YZAttachmentHelper.GetNewFileID();
                    savePath = Attachment.FileIDToPath(fileId, YZAttachmentHelper.AttachmentRootPath);
                } while (File.Exists(savePath));

                Directory.CreateDirectory(savePath.Substring(0, savePath.LastIndexOf(@"\")));
                file.SaveAs(savePath);

                Attachment attachment = new Attachment();
                attachment.FileID = fileId;
                attachment.Name = fileName;
                attachment.Ext = fileExt;
                attachment.Size = fileSize;
                attachment.LastUpdate = DateTime.Now;
                attachment.OwnerAccount = YZAuthHelper.LoginUserAccount;

                using (IDbConnection cn = QueryManager.CurrentProvider.OpenConnection())
                {
                    QueryManager.CurrentProvider.InsertAttachmentInfo(cn,attachment);
                }
                
                JsonItem rv = new JsonItem();
                rv.Attributes["result"] = true;     
                rv.Attributes["message"] = fileId;
                context.Response.Write(rv.ToString());
            }
            else
            {
                JsonItem rv = new JsonItem();
                rv.Attributes["result"] = false;
                rv.Attributes["message"] = Resources.YZStrings.Aspx_Invalid_File;
                context.Response.Write(rv.ToString());
            }
        }
        catch (Exception exp)
        {
            JsonItem rv = new JsonItem();
            rv.Attributes["result"] = false;
            rv.Attributes["message"] = exp.Message/* + exp.StackTrace*/;
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
