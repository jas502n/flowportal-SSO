using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using Net.Common;
using Joson.SSOSite.OAuth;

namespace SSO.SiteE
{
    /// <summary>
    /// 继承AuthBase类表示该页面授权访问并使用SSO
    /// </summary>
    public partial class AuthPage1 : Joson.SSOSite.OAuth.BaseClass
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            object o = Session["Token"];

            //OAuthToken OA = (OAuthToken)o;


            Response.Write(Session["Token"]);

            if (o != null)
            {

                //令牌正确
                //Joson.SSOSite.OAuth.OAuthToken SessionToken = (Joson.SSOSite.OAuth.OAuthToken)Session["Token"];

                HttpCookie siteCookies = new HttpCookie("AccountName", " OA.AccountName +SessionToken.AccountName");
                //siteCookies.Domain = "www.e.com";
                siteCookies.Expires.AddDays(10);
                siteCookies.Name = "Joson";
                siteCookies.Values.Add("Value", "Joson.SessionToken.AccountName");

                Response.AppendCookie(siteCookies);

            }


        }
    }
}
