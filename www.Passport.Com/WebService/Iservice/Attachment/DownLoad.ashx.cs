using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text.RegularExpressions;
using Microsoft.Win32;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using BPM;
using Net.MobileHelper;

namespace iAnywhere.YZSoft.attachment
{
    /// <summary>
    /// Default 的摘要说明
    /// </summary>
    public class DownLoad : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            //if (context.Request.Headers["If-None-Match"] != null || context.Request.Headers["If-Modified-Since"] != null)
            //{
            //    context.Response.Status = "304 Not Modified";
            //    context.Response.Cache.AppendCacheExtension("max-age=" + 365 * 24 * 60 * 60);
            //    context.Response.Cache.SetExpires(DateTime.Now.AddYears(1));
            //    context.Response.AppendHeader("ETag", "Never_Modify");
            //    context.Response.Cache.SetETag("Never_Modify");
            //    context.Response.Cache.SetLastModified(DateTime.Now.AddMinutes(-1));
            //    context.Response.End();
            //    return;
            //}

            string fileId = context.Request.Params["fileid"];

            try
            {
                Attachment attachment;
                using (IDbConnection cn = QueryManager.CurrentProvider.OpenConnection())
                {
                    attachment = YZAttachmentHelper.GetAttachmentInfo(cn, fileId);
                }

                string fileName = attachment.Name;
                string fileExt = attachment.Ext;
                long fileSize = attachment.Size;
                string filePath = Attachment.FileIDToPath(fileId, YZAttachmentHelper.AttachmentRootPath);

                if (!File.Exists(filePath))
                    throw new Exception(String.Format(Net.MobileHelper.YZSoft.Resources.JosonStrings.Aspx_Upload_FileIDNotFount, fileId));

                bool contentDisposition = true;
                string range = context.Request.Headers["HTTP_RANGE"];
                string content_type = "application/octet-stream";
                RegistryKey file_key = Registry.ClassesRoot.OpenSubKey(fileExt);
                if (file_key != null)
                    content_type = file_key.GetValue("Content Type", content_type).ToString();

                context.Response.AppendHeader("Content-Type", content_type);
                if (contentDisposition)
                    context.Response.AppendHeader("Content-Disposition", "attachment;filename=" + context.Server.UrlPathEncode(fileName));

                context.Response.AppendHeader("Accept-Ranges", "bytes");

                if (range == null)
                {
                    //全新下载
                    context.Response.AppendHeader("Content-Length", fileSize.ToString());
                    context.Response.CacheControl = HttpCacheability.Public.ToString();
                    context.Response.Cache.AppendCacheExtension("max-age=" + 365 * 24 * 60 * 60);
                    context.Response.Cache.SetExpires(DateTime.Now.AddYears(1));
                    context.Response.AppendHeader("ETag", "Never_Modify");
                    context.Response.Cache.SetETag("Never_Modify");
                    context.Response.Cache.SetLastModified(DateTime.Now.AddMinutes(-1));

                    context.Response.TransmitFile(filePath);
                }
                else
                {
                    //断点续传以及多线程下载支持
                    string[] file_range = range.Substring(6).Split(new char[1] { '-' });
                    context.Response.Status = "206 Partial Content";
                    context.Response.AppendHeader("Content-Range", "bytes " + file_range[0] + "-" + file_range[1] + "/" + fileSize.ToString());
                    context.Response.AppendHeader("Content-Length", (Int32.Parse(file_range[1]) - Int32.Parse(file_range[0]) + 1).ToString());
                    context.Response.TransmitFile(filePath, long.Parse(file_range[0]), (long)(Int32.Parse(file_range[1]) - Int32.Parse(file_range[0]) + 1));
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
}