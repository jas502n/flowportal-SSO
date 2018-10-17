using BPM;
using Net.MobileHelper;
using Net.MobileHelper.YZSoft.Resources;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;

namespace Joson.SSO.Passport
{
    /// <summary>
    /// UploadFilesHandler 的摘要说明
    /// </summary>
    public class UploadFilesHandler : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            try
            {

                context.Response.AppendHeader("Access-Control-Allow-Origin", "*");      // 响应类型 
                context.Response.AppendHeader("Access-Control-Allow-Methods", "POST");  // 响应头设置 
                context.Response.AppendHeader("Access-Control-Allow-Headers", "x-requested-with,content-type");

                context.Response.Charset = "gb2312"; //设置字符集类型  
                context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
                context.Response.ContentType = "application/json;charset=gb2312";

                //context.Response.ContentType = "text/json";

                string account = context.Request.Params["UserAccount"];
                string token = context.Request.Params["Token"];
                string thumbnail = context.Request.Params["thumbnail"];


                YZAuthHelper.OAuth();
                //YZAuthHelper.AshxAuthCheck();


                //if (!YZAuthHelper.IsAuthenticated)
                //{
                //    JsonItem rv = new JsonItem();
                //    rv.Attributes["success"] = false;
                //    rv.Attributes["errorMessage"] = JosonStrings.Aspx_Upload_NoAuth;
                //    context.Response.Write(rv.ToString());
                //    return;
                //}


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

                    if (!String.IsNullOrEmpty(thumbnail) && !YZStringHelper.EquName(thumbnail, "n"))
                    {
                        this.MakeThumbnail(savePath, "S");
                        this.MakeThumbnail(savePath, "M");
                    }

                    Attachment attachment = new Attachment();
                    attachment.FileID = fileId;
                    attachment.Name = fileName;
                    attachment.Ext = fileExt;
                    attachment.Size = fileSize;
                    attachment.LastUpdate = DateTime.Now;
                    attachment.OwnerAccount = YZAuthHelper.LoginUserAccount;

                    using (IDbConnection cn = YZDBProviderManager.CurrentProvider.OpenConnection())
                    {
                        YZDBProviderManager.CurrentProvider.InsertAttachmentInfo(cn, attachment);

                    }

                    JsonItem rv = new JsonItem();

                    rv.Attributes["success"] = true;
                    rv.Attributes["fileid"] = fileId;
                    rv.Attributes["Name"] = fileName;
                    rv.Attributes["Ext"] = fileExt;

                    rv.Attributes["Size"] = fileSize;
                    rv.Attributes["OwnerAccount"] = attachment.OwnerAccount;
                    rv.Attributes["LastUpdate"] = YZStringHelper.DateToStringL(attachment.LastUpdate);
 

                    context.Response.Write(rv.ToString());
                }
                else
                {
                    JsonItem rv = new JsonItem();
                    rv.Attributes["success"] = false;
                    rv.Attributes["errorMessage"] = JosonStrings.Aspx_Invalid_File;

                    context.Response.Write(rv.ToString());
                }

            }
            catch (Exception exp)
            {
                JsonItem rv = new JsonItem();
                rv.Attributes["success"] = false;
                rv.Attributes["errorMessage"] = exp.Message/* + exp.StackTrace*/;
                context.Response.Write(rv.ToString());
            }
        }

        public string GetThumbnailPath(string filePath, string mode)
        {
            return filePath + "-" + mode;
        }

        public string MakeThumbnail(string filePath, string mode)
        {
            string thumbnailPath = this.GetThumbnailPath(filePath, mode);

            System.Drawing.Image originalImage = System.Drawing.Image.FromFile(filePath);

            int maxWidth = 200;
            int maxHeight = 200;

            int ow = originalImage.Width;
            int oh = originalImage.Height;

            switch (mode)
            {
                case "S":
                    maxWidth = 200;
                    maxHeight = 200;
                    break;
                case "M":
                    maxWidth = 400;
                    maxHeight = 400;
                    break;
                default:
                    maxWidth = 200;
                    maxHeight = 200;
                    break;
            }

            decimal rate = Math.Min((decimal)maxWidth / (decimal)ow, (decimal)maxHeight / (decimal)oh);
            int w = (int)(ow * rate);
            int h = (int)(oh * rate);

            //新建一个bmp图片
            System.Drawing.Image bitmap = new System.Drawing.Bitmap(w, h);

            //新建一个画板
            Graphics g = System.Drawing.Graphics.FromImage(bitmap);

            //设置高质量插值法
            g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.Default;

            //设置高质量,低速度呈现平滑程度
            g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighSpeed;

            //清空画布并以透明背景色填充
            g.Clear(Color.Transparent);

            //在指定位置并且按指定大小绘制原图片的指定部分
            g.DrawImage(originalImage, new Rectangle(0, 0, w, h), new Rectangle(0, 0, ow, oh), GraphicsUnit.Pixel);

            try
            {
                //以jpg格式保存缩略图
                bitmap.Save(thumbnailPath, System.Drawing.Imaging.ImageFormat.Jpeg);
            }
            catch (System.Exception e)
            {
                throw e;
            }
            finally
            {
                originalImage.Dispose();
                bitmap.Dispose();
                g.Dispose();
            }

            return thumbnailPath;
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