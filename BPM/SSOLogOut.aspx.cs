﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SSOLogOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Token"] = null;
        this.ClearCookies();

        YZAuthHelper.SignOut();
        YZAuthHelper.SetLogoutFlag("logout", String.Empty);

        string ssoUrl = System.Configuration.ConfigurationManager.AppSettings["ssoUrl"];
        string LogOutRedirect = System.Configuration.ConfigurationManager.AppSettings["LogOutRedirect"];

        if (String.IsNullOrEmpty(ssoUrl))
            //ssoUrl = "~/YZSoft/Login/";
            ssoUrl = LogOutRedirect;

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

}