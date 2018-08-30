using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


using BPM;
using BPM.Client;


using Net.Common;
using Joson.SSOSite.OAuth;
using Joson.WebSite.OAuth;


public partial class SSOLogin : Joson.SSOSite.OAuth.BaseClass 
{


    protected void Page_Load(object sender, EventArgs e)
    {
        #region Redirect
        //string Redirect = "http://www.e.com/SSOLogin.aspx?UID=111&Pwd=2222";
        //Response.Redirect(Redirect);
        //DataConvert<OAuthToken>.ToList(Dt);
        //OAuthToken Token = (OAuthToken)Session["Token"]; 
        #endregion

        // 通过合法验证后，获取验证中心返回数据（此时已经处理）

        DataTable Dt = ((DataTable)Session["Token"]);

        IList<OAuthToken> Token = Dt.ToList<OAuthToken>();
        SSOAuthLogin(Token[0]);

    }



    private void SSOAuthLogin(OAuthToken TokenInfo)
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
            ?  ConfigHelper.GetConfig("TokenCorrectRedirectURL") 
            : TokenInfo.RedirectURL;

        if (!string.IsNullOrEmpty(UID))
        {
            string realAccount = null;
            if (BPMConnection.Authenticate(YZAuthHelper.BPMServerName, YZAuthHelper.BPMServerPort, UID, Pwd, out realAccount))
            {
                YZAuthHelper.SetAuthCookie(realAccount);
                YZAuthHelper.ClearLogoutFlag();

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
}