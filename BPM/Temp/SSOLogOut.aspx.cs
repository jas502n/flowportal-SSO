using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Net.Common;

using BPM.Client;
using System.Web.Security;

public partial class SSOLogOut : System.Web.UI.Page
{
    String OAuthURL = String.Empty;
    String GetToken = String.Empty;
    String TokenService = String.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        OAuthURL = Net.Common.ConfigHelper.GetConfig("OAuthURL");
        GetToken = Net.Common.ConfigHelper.GetConfig("GetToken");
        TokenService = Net.Common.ConfigHelper.GetConfig("TokenService");


        YZAuthHelper.SignOut();
        YZAuthHelper.SetLogoutFlag("logout", String.Empty);

        this.ClearCookies();
        this.ClearSSOToken();

        string AccountLogin = System.Configuration.ConfigurationManager.AppSettings["AccountLogin"];
        string ssoUrl = System.Configuration.ConfigurationManager.AppSettings["ssoUrl"];

        if (String.IsNullOrEmpty(ssoUrl))
            //ssoUrl = "~/YZSoft/Login/";
            ssoUrl = AccountLogin;

        this.Response.Redirect(ssoUrl, true);

    }


    public void ClearCookies()
    {

        HttpCookie myCookie = HttpContext.Current.Request.Cookies[FormsAuthentication.FormsCookieName];
        if (myCookie != null)
        {
            DateTime now = DateTime.Now;
            myCookie.Expires = now.AddYears(-2);
            HttpContext.Current.Response.Cookies.Add(myCookie);
        }

        //Response.Redirect("Login.aspx");

    }


    public void ClearSSOToken()
    {

        Session["Token"] = null;
        // this.ClearToken();

    }





    public void ClearToken()
    {


        //Session.Clear();
        //Session.Abandon();
        //Response.Cookies.Clear();


        //Response.Write("Clear");

        //Response.Redirect("Login.aspx");

        //Response.End();



        //清空主站凭证
        if (Request.QueryString["Token"] == null)
        {
            //Response.Redirect("http://www.passport.com/gettoken.aspx?BackURL=" + Server.UrlEncode(Request.Url.AbsoluteUri + "?Token=$Token$"));
            Response.Redirect(GetToken + "?BackURL=" + Server.UrlEncode(Request.Url.AbsoluteUri + "?Token=$Token$"));
        }
        else
        {

            if (Request.QueryString["Token"] != "$Token$")
            {
                string token = Request.QueryString["Token"];

                //创建WebService对象

                // String strURL = "http://www.passport.com/TokenService.asmx";

                String strURL = TokenService;
                String ServiceName = "ClearToken";

                string[] args = new string[1];
                args[0] = token;

                object o = Net.Common.ResponseWebServices.InvokeWebService(strURL, ServiceName, args);

            }


            //清空本地凭证
            Session.Abandon();

            Response.Redirect("index.aspx");
            Response.Write("已退出！");


        }


    }


}