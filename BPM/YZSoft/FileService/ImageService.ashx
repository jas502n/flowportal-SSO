<%@ WebHandler Language="C#" Class="YZSoft.FileService.ImageService" %>

using System;
using System.Web;
using System.IO;


namespace YZSoft.FileService
{
    public class ImageService : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            string id = context.Request.QueryString["id"];

            string blackImageFile;
            byte[] data = ChartManager.CurrentStore.Load(id, out blackImageFile);

            context.Response.Charset = "";
            if (data == null || data.Length == 0) //没图片数据
            {
                if (String.IsNullOrEmpty(blackImageFile))
                    blackImageFile = "~/YZSoft/ExtJS/images/default/s.gif"; //使用缺省空图片

                context.Response.WriteFile(context.Server.MapPath(blackImageFile));
            }
            else
            {
                context.Response.BinaryWrite(data);
            }

            ChartManager.CurrentStore.Delete(id);
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
