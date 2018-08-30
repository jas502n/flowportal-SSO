using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BPM;
using BPM.Client;

using Joson.SSOSite.OAuth;

namespace SiteE
{
    public partial class HandlerSSO :System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SSO();
        }

        private void SSO()
        {

            //try
            //{
                string UID = System.Web.HttpContext.Current.Request.Params["UID"];
                string Pwd = System.Web.HttpContext.Current.Request.Params["Pwd"];
                string DesUrl = System.Web.HttpContext.Current.Request.Params["ReturnURL"];

                if (!string.IsNullOrEmpty(UID))
                {
                    string realAccount = null;
                    if (BPMConnection.Authenticate(YZAuthHelper.BPMServerName, YZAuthHelper.BPMServerPort, UID, Pwd, out realAccount))
                    {
                        YZAuthHelper.SetAuthCookie(realAccount);
                        YZAuthHelper.ClearLogoutFlag();

                        if (!String.IsNullOrEmpty(DesUrl))
                        {
                            Response.Redirect(DesUrl);
                        }
                        else
                        {
                            Response.Redirect("http://localhost/bpm");
                        }
                    }
                    else
                    {
                        Response.Write("BPM验证失败");
                    }
                }
                else
                {
                    Response.Write("单点登录系统里uid为空");
                }
            //}
            //catch (Exception)
            //{

            //}

        }

    }
}