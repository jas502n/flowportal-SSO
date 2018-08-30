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
            string fileId = context.Request.Params["fileid"];

            if (String.IsNullOrEmpty(fileId))
                throw new Exception("未指定文件ID");

            string filePath = Attachment.FileIDToPath(fileId, YZAttachmentHelper.AttachmentRootPath);
            if (!File.Exists(filePath))
                throw new Exception(String.Format(Resources.YZStrings.Aspx_Upload_FileIDNotFount, fileId));

            using (FileStream stream = new FileStream(filePath,FileMode.Open,FileAccess.Read,FileShare.Read))
            {
                using (System.Drawing.Image image = System.Drawing.Image.FromStream(stream))
                {
                    JsonItem rv = new JsonItem();
                    rv.Attributes.Add("success", true);
                    rv.Attributes.Add("fileId", fileId);
                    
                    JsonItem size = new JsonItem();
                    rv.Attributes.Add("size", size);
                    size.Attributes.Add("width", image.Width);
                    size.Attributes.Add("height", image.Height);

                    context.Response.Write(rv.ToString());
                }
            }
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
