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

namespace Joson.SSO.Passport
{
    /// <summary>
    /// 令牌验证
    /// 以URL参数方式返回
    /// </summary>
    public partial class GetToken : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            string RedirectULR = String.Empty;

            //string AccountID = String.Empty;
            //string strPassport = String.Empty;

            //if (HttpContext.Current.Request.Cookies.Count > 1)
            //{
            //    RedirectULR = "http://www.e.com/SSOLogin.aspx?UID={0}&Pwd={1}";

            //    AccountID = "Josons";// HttpContext.Current.Request.Cookies["AccountID"].ToString();
            //    strPassport = "Josons";// HttpContext.Current.Request.Cookies["Passport"].ToString();

            //    RedirectULR = String.Format(RedirectULR, AccountID, strPassport);
            //}


            if (Request.QueryString["BackURL"] != null)
            {
                string backURL = Server.UrlDecode(Request.QueryString["BackURL"]);

                //获取Cookie
                HttpCookie tokenCookie = Request.Cookies["Token"];
                if (tokenCookie != null)
                {
                    backURL = backURL.Replace("$Token$", tokenCookie.Values["Value"].ToString());

                    if (!String.IsNullOrEmpty(RedirectULR))
                        backURL += String.Format("&Redirect={0}", RedirectULR);

                }

                Response.Redirect(backURL);
            }
        }

    }
}
