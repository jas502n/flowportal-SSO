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
using BPM.Client;

public partial class Forms_FormApplication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!AspxHelper.IsAuthenticated)
            FormsAuthentication.RedirectToLoginPage();

        string appName = this.Request.QueryString["app"];
        FormApplication formApplication = null;
        BPMConnection cn = new BPMConnection();
        try
        {
            cn.WebOpen(this.Page);
            formApplication = FormApplication.Load(cn,appName);
        }
        finally
        {
            cn.Close();
        }

        string formFile = formApplication.Form;

        if (formFile.IndexOf('?') != -1)
            this.Server.Transfer(this.ResolveClientUrl("../Forms/") + formFile + "&md=App&" + this.Request.QueryString.ToString(), false);
        else
            this.Server.Transfer(this.ResolveClientUrl("../Forms/") + formFile + "?md=App&" + this.Request.QueryString.ToString(), false);

        this.Response.End();
    }
}
