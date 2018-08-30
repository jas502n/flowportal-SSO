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

public partial class FormSupport_Snapshot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(String.IsNullOrEmpty(this.Request["pid"]))
            this.Server.Transfer(this.ResolveClientUrl("../Forms/Read.aspx"), true);
        else
            this.Server.Transfer(this.ResolveClientUrl("../Forms/Process.aspx"), true);

        this.Response.End();
    }
}
