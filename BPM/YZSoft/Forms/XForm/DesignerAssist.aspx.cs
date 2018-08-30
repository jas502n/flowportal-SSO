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

public partial class Forms_DesignerAssist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Clear();
        string url = this.Page.Request.Url.GetLeftPart(UriPartial.Authority);
        string virtualPath = HttpRuntime.AppDomainAppVirtualPath;
        if (virtualPath == "/")
            virtualPath = String.Empty;

        Response.Write("<!--" + url + virtualPath + "-->");
    }
}
