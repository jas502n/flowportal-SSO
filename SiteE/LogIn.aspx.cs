using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BPM.Client;
using BPM;

using System.Data;
using Net.Common;
using Joson.SSOSite.OAuth;


namespace SiteE
{
    public partial class LogIn : Joson.SSOSite.OAuth.BaseClass  //: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Redirect
            //string Redirect = "http://www.e.com/HandlerSSO.aspx?UID=111&Pwd=2222";
            //Response.Redirect(Redirect);
            //DataConvert<OAuthToken>.ToList(Dt);
            //OAuthToken Token = (OAuthToken)Session["Token"]; 
            #endregion

            // 通过合法验证后，获取验证中心返回数据（此时已经处理）

            String ClientIP = GetRequest.GetClientIP();

            DataTable Dt = ((DataTable)Session["Token"]);

            IList<OAuthToken> Token = Dt.ToList<OAuthToken>();

            if (Token[0].LogInIP == ClientIP)
            {
                SSOLogin(Token[0]);
            }


            SSOLogin(Token[0]);
        }



        private void SSOLogin(OAuthToken TokenInfo)
        {
            #region string
            //string UID = System.Web.HttpContext.Current.Request.Params["UID"];
            //string Pwd = System.Web.HttpContext.Current.Request.Params["Pwd"];
            //string DesUrl = System.Web.HttpContext.Current.Request.Params["ReturnURL"];
            //string Redirect = "http://www.e.com/HandlerSSO.aspx?UID={0}&Pwd={1}&ReturnURL={2}"; 
            #endregion

            string UID = TokenInfo.AccountID;
            string Pwd = TokenInfo.PassWords;
            string DesUrl = TokenInfo.ReturnURL;

            string Redirect = String.IsNullOrEmpty(TokenInfo.RedirectURL)
            ? ConfigHelper.GetConfig("TokenCorrectRedirectURL")
            : TokenInfo.RedirectURL;

            if (!string.IsNullOrEmpty(UID))
            {
                string realAccount = null;


                Boolean SAuthenticate = true;

                // 添加原有驗證
                //Boolean SAuthenticate= BPMConnection.Authenticate(YZAuthHelper.BPMServerName, YZAuthHelper.BPMServerPort, UID, Pwd, out realAccount);

                if (SAuthenticate)
                {
                    //設置驗證後
                    //YZAuthHelper.SetAuthCookie(realAccount);
                    //YZAuthHelper.ClearLogoutFlag();

                    if (!String.IsNullOrEmpty(DesUrl))
                    {
                        Response.Redirect(DesUrl);
                    }
                    else
                    {
                        Response.Redirect(Redirect.WithFormat(UID, Pwd, DesUrl));
                    }
                }
                else
                {
                    Response.Write("BPM验证失败");
                }
            }
            else
            {
                Response.Write("单点登录系统里UID为空");
            }
        }


        //private void Login()
        //{
        //    //http://www.passport.com


        //    if (!YZAuthHelper.IsAuthenticated)
        //    {
        //        string SourceUrl = string.Empty;
        //        string ssourl = "http://172.28.1.165/ssoserver/public/sso.jsp?service=http://172.28.1.165/ssoserver/bssso.do?appName=bpm2&url=" + SourceUrl;

        //        Response.Redirect(ssourl, true);

        //    }
        //    else
        //    {
        //        Response.Redirect("http://locahost/bpm", true);
        //    }

        //}



    }
}