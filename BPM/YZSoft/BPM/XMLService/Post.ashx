<%@ WebHandler Language="C#" Class="BPM.XMLService.Post" %>

using System;
using System.Web;
using System.Xml;
using System.Text;
using System.IO;
using BPM;
using BPM.Client;

namespace BPM.XMLService
{
    public class Post : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            StringBuilder sb = new StringBuilder();
            try
            {
                //if (String.Compare(YZAuthHelper.LoginUserAccount, "usera06", true) == 0)
                //{
                //using (FileStream fs = new FileStream(@"d:\aaa.xml", FileMode.Create, FileAccess.Write))
                //{
                //    byte[] bytes = new byte[context.Request.InputStream.Length];
                //    context.Request.InputStream.Read(bytes, 0, (int)context.Request.InputStream.Length);
                //    fs.Write(bytes, 0, bytes.Length);
                //}
                //context.Request.InputStream.Seek(0, SeekOrigin.Begin);
                //}

                //qqw888
                //XmlDocument doc = new XmlDocument();
                //doc.Load(context.Request.InputStream);
                //doc.Save("e:\\aaa.xml");//需要打开网站的写权限，和C盘EveryOne的写权限

                PostResult postResult = null;
                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();
                    postResult = BPMProcess.Post(cn, context.Request.InputStream);
                }

                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", true);
                rv.Attributes.Add("PostResult", postResult.PostResultType.ToString());
                rv.Attributes.Add("SN", postResult.SN);
                rv.Attributes.Add("Key", postResult.Key);
                rv.Attributes.Add("CustomMessage", postResult.CustomMessage);

                JsonItemCollection accounts = new JsonItemCollection();
                rv.Attributes.Add("Accounts", accounts);

                foreach (StepRecipient recp in postResult.Recipients)
                {
                    JsonItem jsonRecp = new JsonItem();
                    accounts.Add(jsonRecp);
                    jsonRecp.Attributes.Add("Account", YZStringHelper.GetRecpientDisplayName(recp));
                }

                JsonItemCollection indicators = new JsonItemCollection();
                rv.Attributes.Add("Indicators", indicators);

                foreach (User indicateUser in postResult.InviteIndicateUsers)
                {
                    JsonItem jsonIndicator = new JsonItem();
                    indicators.Add(jsonIndicator);

                    jsonIndicator.Attributes.Add("Account", YZStringHelper.GetUserFriendlyName(indicateUser.Account, indicateUser.DisplayName));
                }

                JsonItemCollection informs = new JsonItemCollection();
                rv.Attributes.Add("Informs", informs);

                foreach (User informUser in postResult.InformUsers)
                {
                    JsonItem jsonInform = new JsonItem();
                    informs.Add(jsonInform);

                    jsonInform.Attributes.Add("Account", YZStringHelper.GetUserFriendlyName(informUser.Account, informUser.DisplayName));
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
}
