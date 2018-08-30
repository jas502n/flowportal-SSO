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
        if (!YZAuthHelper.IsAuthenticated)
            FormsAuthentication.RedirectToLoginPage();

        string appName = this.Request.QueryString["app"];
        FormApplication formApplication = null;
        using (BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();
            formApplication = FormApplication.Load(cn,appName);
        }

        string formFile = formApplication.Form;
        YZUrlBuilder urlBuilder = YZUtility.GetFormRedirectUrl(this.Page, formFile);
        urlBuilder.QueryString["md"] = "App";
        this.Response.Redirect(urlBuilder.ToString(), true);
    }
}
