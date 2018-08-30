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

namespace SSO.SiteE
{

    using Net.Common;

    /// <summary>
    /// 退出
    /// </summary>
    public partial class Quit : Joson.SSOSite.OAuth.BaseLogOut   //System.Web.UI.Page  //
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region 清空主站凭证
            ////清空主站凭证
            //if (Request.QueryString["Token"] == null)
            //{
            //    Response.Redirect("http://www.passport.com/gettoken.aspx?BackURL=" + Server.UrlEncode(Request.Url.AbsoluteUri + "?Token=$Token$"));
            //}
            //else
            //{
            //    if (Request.QueryString["Token"] != "$Token$")
            //    {
            //        string token = Request.QueryString["Token"];
            //        //创建WebService对象


            //        String strURL = " http://www.passport.com/TokenService.asmx";
            //        String ServiceName = "ClearToken";

            //        string[] args = new string[1];
            //        args[0] = token;

            //        object o = Net.Common.ResponseWebServices.InvokeWebService(strURL, ServiceName, args);


            //        //SiteA.RefPassport.TokenService myRef = new SSO.SiteA.RefPassport.TokenService();
            //        //myRef.ClearToken(token);

            //    }
            //}

            ////清空本地凭证
            //Session.Abandon(); 
            #endregion

            //base.OnInit(e);
           // base.OnLoadComplete(e);

            base.ClearToken();

            //this.ClearToken();

          
        }



        public void ClearToken()
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

                    String strURL = "http://www.passport.com/TokenService.asmx";
                    String ServiceName = "ClearToken";

                    string[] args = new string[1];
                    args[0] = token;

                    object o = Net.Common.ResponseWebServices.InvokeWebService(strURL, ServiceName, args);
                }
            }

            //清空本地凭证
            Session.Abandon();

            Response.Write("已退出！");
        }

    }
}
