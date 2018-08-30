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

public partial class FormSupport_Sign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Page.ClientScript.RegisterClientScriptInclude("MyScript", this.ResolveClientUrl("../Scripts/Main.js"));
        this.Page.ClientScript.RegisterClientScriptInclude("FormScript", this.ResolveClientUrl("../Scripts/Form.js"));
        this.Page.ClientScript.RegisterClientScriptInclude("XForm", this.ResolveClientUrl("../Scripts/XForm.js"));

        this.Page.Title = Resources.BPMResource.SignDlg_Caption;
        this._labCaption.Text = Request.QueryString["Account"];
        this._labPwd.Text = Resources.BPMResource.Com_Password;
        this._btnOK.Text = Resources.BPMResource.Com_OK;

        this.Page.Form.Attributes["OnSubmit"] = String.Format("javascript:XFormSignAndPost('{0}',{1},'{2}','{3}');return false;",
            this.Request.QueryString["Account"],
            "_edtPwd.value",
            this.Request.QueryString["acttype"],
            this.Request.QueryString["actname"]);

        this._edtPwd.Focus();
    }
}
