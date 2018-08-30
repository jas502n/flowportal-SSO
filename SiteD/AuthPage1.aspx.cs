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

namespace SSO.SiteD
{
    /// <summary>
    /// 继承AuthBase类表示该页面授权访问并使用SSO
    /// </summary>
    public partial class AuthPage1 : Joson.SSOSite.OAuth.BaseClass
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
