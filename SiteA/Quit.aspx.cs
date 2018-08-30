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

namespace SSO.SiteA
{
    /// <summary>
    /// 退出
    /// </summary>
    public partial class Quit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //清空主站凭证
            if (Request.QueryString["Token"] == null)
            {
                Response.Redirect("http://www.passport.com/gettoken.aspx?BackURL=" + Server.UrlEncode(Request.Url.AbsoluteUri + "?Token=$Token$"));
            }
            else
            {
                if (Request.QueryString["Token"] != "$Token$")
                {
                    string token = Request.QueryString["Token"];
                    //创建WebService对象
                    SiteA.RefPassport.TokenService myRef = new SSO.SiteA.RefPassport.TokenService();
                    myRef.ClearToken(token);
                }
            }

            //清空本地凭证
            Session.Abandon();

            Response.Write(String.Format("已退出！Token:{0}", Request.QueryString["Token"]));
        }
    }
}
