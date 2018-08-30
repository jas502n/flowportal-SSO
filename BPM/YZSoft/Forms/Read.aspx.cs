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
using BPM;
using BPM.Client;
using BPM.Client.Security;

public partial class Forms_Read : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!YZAuthHelper.IsAuthenticated)
        {
            FormsAuthentication.RedirectToLoginPage();
            return;
        }

        int tid = Int32.Parse(this.Request["tid"]);
        string formFile;

        using(BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();
            formFile = BPMProcess.GetDefaultReadForm(cn, tid);
        }

        if (String.IsNullOrEmpty(formFile))
        {
            throw new Exception(Resources.YZStrings.Aspx_Read_MissForm);
        }
        else
        {
            YZUrlBuilder urlBuilder = YZUtility.GetFormRedirectUrl(this.Page, formFile);
            this.Response.Redirect(urlBuilder.ToString(), true);
        }
    }
}
