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

public partial class YZSoft_Frame_Assist_DialogAssist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.frm.Attributes["src"] = this.Page.ResolveClientUrl(this.Request.QueryString["url"]);
        //this.Response.Write(this.frm.Attributes["src"]);
        //this.Response.Write("<br/>aaaa");
    }
}
