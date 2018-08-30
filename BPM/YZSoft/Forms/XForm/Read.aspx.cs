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
        if (!AspxHelper.IsAuthenticated)
            FormsAuthentication.RedirectToLoginPage();

        int tid = Int32.Parse(this.Request["tid"]);

        string formFile;

        using(BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen(this.Page);

            string token = Request.QueryString["token"];
            if (String.IsNullOrEmpty(token))
            {
                if (!SecurityManager.CheckTaskAccessPermision(cn, tid, BPMPermision.TaskRead, cn.UID))
                    throw new BPMException(BPMExceptionType.PermDeniedReadForm);
            }
            else
            {
                if (!AspxHelper.CheckTaskAccessToken(tid,token) &&
                    !SecurityManager.CheckTaskAccessPermision(cn, tid, BPMPermision.TaskRead, cn.UID))
                    throw new BPMException(BPMExceptionType.PermDeniedReadForm);
            }

            formFile = BPMProcess.GetDefaultReadForm(cn, tid);
        }

        if (String.IsNullOrEmpty(formFile))
        {
            throw new Exception(Resources.BPMResource.Read_MissForm);
        }
        else
        {
            if (formFile.IndexOf('?') != -1)
                this.Server.Transfer(this.ResolveClientUrl("../XForm/") + formFile + "&" + this.Request.QueryString.ToString(), false);
            else
                this.Server.Transfer(this.ResolveClientUrl("../XForm/") + formFile + "?" + this.Request.QueryString.ToString(), false);

            this.Response.End();
        }
    }
}
