using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using Net.Common;
using Joson.SSOSite.OAuth;

namespace www.JosonJiang.Com
{
    public partial class SSOLogin : Joson.SSOSite.OAuth.BaseClass //: System.Web.UI.Page
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