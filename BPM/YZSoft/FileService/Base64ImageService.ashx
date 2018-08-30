<%@ WebHandler Language="C#" Class="YZSoft.FileService.Base64ImageService" %>

using System;
using System.Web;
using System.IO;

namespace YZSoft.FileService
{
    public class Base64ImageService : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            try
            {
                string base64 = context.Request.Form["data"];
                byte[] bytes = Convert.FromBase64String(base64);

                string imageId = Guid.NewGuid().ToString();
                ChartManager.CurrentStore.Save(imageId, bytes, null);

                using (MemoryStream stream = new MemoryStream(bytes))
                {
                    using (System.Drawing.Image image = System.Drawing.Image.FromStream(stream))
                    {
                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);
                        rv.Attributes.Add("imageid", imageId);
                        rv.Attributes.Add("width", image.Width);
                        rv.Attributes.Add("height", image.Height);

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
}
