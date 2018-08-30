using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Text;
using BPM.Client;

public partial class YZSoft_Login_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (String.Compare(System.Web.Configuration.WebConfigurationManager.AppSettings["ShowMaintenancePage"], "true", true) == 0)
            Response.Redirect("~/YZSoft/Maintenance/Default.aspx");

        bool webLogin = String.Compare(WebConfigurationManager.AppSettings["WebLoginEnable"], "false", true) == 0 ? false : true;
        bool ntLogin = String.Compare(WebConfigurationManager.AppSettings["NTLoginEnable"], "false", true) == 0 ? false : true;
        string action = this.Request.Params["action"];

        if (action == "login")
        {
            string type = this.Request.Params["type"];
            JsonItem rv = new JsonItem();

            if (type == "NT") //NT登录
            {
                try
                {
                    if (this.NTLogin())
                    {
                        rv.Attributes["success"] = true;
                        rv.Attributes["text"] = Resources.YZStrings.Aspx_Login_Success;
                    }
                }
                catch (Exception exp)
                {
                    rv.Attributes["success"] = false;
                    rv.Attributes["text"] = exp.Message;
                }

                if (rv.Attributes.ContainsKey("success"))
                {
                    Response.Clear();
                    this.Response.Write(rv.ToString());
                    Response.End();
                }
                else
                {
                    this.Response.Clear();
                    this.Response.Status = "401 Unauthorized";
                    this.Response.AppendHeader("WWW-Authenticate", "NTLM");//Basic, Digest, NTLM, and Negotiate
                    this.Response.End();
                }
            }
            else //BPM 登录
            {
                string userid = this.Request.Params["uid"];
                string password = this.Request.Params["pwd"];
                string positionid = this.Request.Params["posid"];

                if (String.IsNullOrEmpty(userid) /*|| String.IsNullOrEmpty(password)*/)
                {
                    rv.Attributes["success"] = false;
                    rv.Attributes["text"] = Resources.YZStrings.Aspx_Login_EnterAccountTip;
                }
                else if (String.IsNullOrEmpty(positionid))
                {
                    rv.Attributes["success"] = false;
                    rv.Attributes["text"] = Resources.YZStrings.Aspx_Login_SelPosTip;
                }
                else
                {
                    try
                    {
                        string realAccount = null;
                        if (BPMConnection.Authenticate(YZAuthHelper.BPMServerName, YZAuthHelper.BPMServerPort, userid, password, out realAccount))
                        {
                            YZAuthHelper.SetAuthCookie(realAccount);
                            YZAuthHelper.ClearLogoutFlag();

                            rv.Attributes["success"] = true;
                            rv.Attributes["text"] = Resources.YZStrings.Aspx_Login_Success;
                        }
                        else
                        {
                            rv.Attributes["success"] = false;
                            rv.Attributes["text"] = Resources.YZStrings.Aspx_Login_Fail;
                        }
                    }
                    catch (Exception exp)
                    {
                        YZEventLog log = new YZEventLog();
                        log.WriteEntry(exp);

                        rv.Attributes["success"] = false;
                        rv.Attributes["text"] = exp.Message;
                    }
                }

                Response.Clear();
                Response.Write(rv.ToString());
                Response.End();
            }
        }
        else if (action == "logout")
        {
            YZAuthHelper.SignOut();
            YZAuthHelper.SetLogoutFlag("logout", String.Empty);

            string ssoUrl = System.Configuration.ConfigurationManager.AppSettings["ssoUrl"];
            if (String.IsNullOrEmpty(ssoUrl))
                ssoUrl = "~/YZSoft/Login/";

            this.Response.Redirect(ssoUrl, true);
        }
        else if (action == "changeuser")
        {
            YZAuthHelper.SignOut();
            YZAuthHelper.SetLogoutFlag("changeuser", YZAuthHelper.LoginUserAccount);

            this.Response.Redirect("~/YZSoft/Login/", true);
        }
        else
        {
            string ssoUrl = WebConfigurationManager.AppSettings["ssoUrl"];
            if (!String.IsNullOrEmpty(ssoUrl))
                Response.Redirect(ssoUrl, true);

            if (ntLogin && !webLogin) //仅NT登录
            {
                if (YZAuthHelper.BPMLogoutType != "logout" &&
                    YZAuthHelper.BPMLogoutType != "changeuser") //非登出情况下
                {
                    if (this.NTLogin()) //NT登录成功
                    {
                        if (!String.IsNullOrEmpty(Request.QueryString["ReturnURL"]))
                            Response.Redirect(Request.QueryString["ReturnURL"]);
                        else
                            Response.Redirect("~/");

                        return;
                    }

                    if (String.IsNullOrEmpty(this.Request.ServerVariables["LOGON_USER"]))
                    {
                        this.Response.Clear();
                        this.Response.Status = "401 Unauthorized";
                        this.Response.AppendHeader("WWW-Authenticate", "NTLM");//Basic, Digest, NTLM, and Negotiate
                        this.Response.End();
                        return;
                    }
                }
            }

            //页标题
            this.Page.Title = System.Web.Configuration.WebConfigurationManager.AppSettings["CompanyInfoLoginPageTitle"];
            if (String.IsNullOrEmpty(this.Page.Title))
                this.Page.Title = Resources.YZStrings.Aspx_Login_Title;

            //根据启动程序应用Css
            string startApp = System.Web.Configuration.WebConfigurationManager.AppSettings["StartApp"];
            if (String.IsNullOrEmpty(startApp))
                startApp = "YZApp";

            this._litLoginCss.Text = String.Format("<link href=\"../../{0}/Styles/login.css\" rel=\"stylesheet\" type=\"text/css\" />", startApp);

            //显示文字
            this._litBoxCaption.Text = Resources.YZStrings.Aspx_Login_BoxCaption;
            this._litAccount.Text = Resources.YZStrings.Aspx_Login_Account;
            this._lnkRegNewAccount.Text = Resources.YZStrings.Aspx_Login_RegNewAccount;
            this._litPwd.Text = Resources.YZStrings.Aspx_Login_Pwd;
            this._lnkForgotPwd.Text = Resources.YZStrings.Aspx_Login_ForgotPwd;
            this._btnLogin.Value = Resources.YZStrings.Aspx_Login_BtnLogin;
            this._btnNTLogin.Value = Resources.YZStrings.Aspx_Login_BtnNTLogin;

            //关闭用户注册，忘记密码链接
            //this._lnkRegNewAccount.Enabled = false;
            //this._lnkForgotPwd.Enabled = false;
            this._lnkRegNewAccount.Visible = false;
            this._lnkForgotPwd.Visible = false;

            this._litStep2Caption.Text = Resources.YZStrings.Aspx_Login_Step2_BoxCaption;
            this._litStep2Msg.Text = String.Format(Resources.YZStrings.Aspx_Login_Step2_Msg, "<span class=\"point\">●</span>");

            this._litStep1Caption.Text = Resources.YZStrings.Aspx_Login_Step1_BoxCaption;
            this._litStep1Msg.Text = Resources.YZStrings.Aspx_Login_Step1_Msg;
            this._litStep1InsCurStep0.Text = Resources.YZStrings.Aspx_Login_Step1_Install_CurStep;
            this._litStep1InsCurStep1.Text = Resources.YZStrings.Aspx_Login_Step1_Install_CurStep;
            this._litStep1InsCurStep2.Text = Resources.YZStrings.Aspx_Login_Step1_Install_CurStep;
            this._litStep1InsCurStep3.Text = Resources.YZStrings.Aspx_Login_Step1_Install_CurStep;
            this._litStep1InsCurStep4.Text = Resources.YZStrings.Aspx_Login_Step1_Install_CurStep;
            this._litStep1NotInstalled.Text = Resources.YZStrings.Aspx_Login_Step1_Install_NotInstalled;
            this._litStep1InstallNow.Text = Resources.YZStrings.Aspx_Login_Step1_Install_InstallNow;
            this._litStep1Installing.Text = Resources.YZStrings.Aspx_Login_Step1_Install_Installing;
            this._litStep1Installing1.Text = Resources.YZStrings.Aspx_Login_Step1_Install_Installing;
            this._litStep1PlsWaiting.Text = Resources.YZStrings.Aspx_Login_Step1_Install_PlsWaiting;
            this._litStep1InstallFinished.Text = Resources.YZStrings.Aspx_Login_Step1_Install_InstallFinished;
            this._litStep1CheckAgain.Text = Resources.YZStrings.Aspx_Login_Step1_Install_CheckAgain;
            this._litStep1InstallFailed.Text = Resources.YZStrings.Aspx_Login_Step1_Install_InstallFailed;
            this._litStep1Retry.Text = Resources.YZStrings.Aspx_Login_Step1_Install_Retry;
            this._litStep1InstallSucceed.Text = Resources.YZStrings.Aspx_Login_Step1_Install_InstallSucceed;
            this._litStep1LoginContinue.Text = Resources.YZStrings.Aspx_Login_Step1_Login_Continue;
            this._litStep1Ignore.Text = Resources.YZStrings.Aspx_Login_Step1_Ignore;

            this._litStep0Caption.Text = Resources.YZStrings.Aspx_Login_Step0_BoxCaption;
            this._litStep0Msg.Text = Resources.YZStrings.Aspx_Login_Step0_Msg;
            this._litStep0Skip.Text = Resources.YZStrings.Aspx_Login_Step0_Skip;
            this._litStep0Skip1.Text = Resources.YZStrings.Aspx_Login_Step0_Skip;
            this._litStep0DownloadBrowser.Text = Resources.YZStrings.Aspx_Login_Step0_DownloadBrowser;

            this._downloadXP.Text = Resources.YZStrings.Aspx_Login_Step0_Download;
            this._downloadVista.Text = Resources.YZStrings.Aspx_Login_Step0_Download;
            this._download2003.Text = Resources.YZStrings.Aspx_Login_Step0_Download;
            this._downloadMore.Text = Resources.YZStrings.Aspx_Login_Step0_Download_More;

            //JS文字
            JsonItem jsonStrings = new JsonItem();
            jsonStrings.Attributes.Add("Account", YZAuthHelper.LoginUserAccount);
            jsonStrings.Attributes.Add("SelPos", Resources.YZStrings.Aspx_Login_SelPos);
            jsonStrings.Attributes.Add("SelPosTip", Resources.YZStrings.Aspx_Login_SelPosTip);
            jsonStrings.Attributes.Add("EnterAccountTip", Resources.YZStrings.Aspx_Login_EnterAccountTip);
            jsonStrings.Attributes.Add("EnterPwdTip", Resources.YZStrings.Aspx_Login_EnterPwdTip);
            jsonStrings.Attributes.Add("BrowserNameOpera", Resources.YZStrings.Aspx_BrowserNameOpera);
            jsonStrings.Attributes.Add("BrowserNameSafari", Resources.YZStrings.Aspx_BrowserNameSafari);
            jsonStrings.Attributes.Add("BrowserNameGoogle", Resources.YZStrings.Aspx_BrowserNameGoogle);
            jsonStrings.Attributes.Add("BrowserNameFirefox", Resources.YZStrings.Aspx_BrowserNameFirefox);
            jsonStrings.Attributes.Add("BrowserNameOther", Resources.YZStrings.Aspx_BrowserNameOther);
            jsonStrings.Attributes.Add("BrowserWarning", Resources.YZStrings.Aspx_Login_BrowserWarning);
            jsonStrings.Attributes.Add("Unknow", Resources.YZStrings.Aspx_Login_Unknow);
            jsonStrings.Attributes.Add("HttpErr", Resources.YZStrings.Aspx_Login_HttpErr);

            HtmlGenericControl jsstrs = new HtmlGenericControl("script");
            jsstrs.Attributes["type"] = "text/javascript";
            jsstrs.InnerHtml = String.Format("var Strings = {0}", jsonStrings.ToString());
            this.Page.Header.Controls.AddAt(1, jsstrs);

            //地图信息
            JsonItemCollection factorys;
            using (IDbConnection cn = QueryManager.CurrentProvider.OpenConnection())
            {
                factorys = QueryManager.CurrentProvider.GetFactorys(cn);
            }

            string returnUrl = String.Empty;
            if (!String.IsNullOrEmpty(Request.QueryString["ReturnURL"]))
                returnUrl = this.ResolveClientUrl(Request.QueryString["ReturnURL"]);
            else
                returnUrl = this.ResolveClientUrl("~/");

            HtmlGenericControl js = new HtmlGenericControl("script");
            js.Attributes["type"] = "text/javascript";
            js.InnerHtml = "var _FactoryData=" + factorys.ToString() + ";\n" +
                "var returnUrl=\"" + YZUtility.EncodeJsString(returnUrl) + "\";";

            this.Page.Header.Controls.AddAt(1, js);

            if (!webLogin)
            {
                this._txtUserId.Enabled = false;
                this._txtPassword.Enabled = false;
                this._txtUserId.CssClass = "input input-disabled";
                this._txtPassword.CssClass = "input input-disabled";
                this._lnkRegNewAccount.Enabled = false;
                this._lnkForgotPwd.Enabled = false;
                this._btnLogin.Disabled = true;
            }
            if (!ntLogin)
            {
                this._btnNTLogin.Disabled = true;
            }
        }
    }

    private bool NTLogin()
    {
        string account = this.Request.ServerVariables["LOGON_USER"];

        if (!String.IsNullOrEmpty(account))
        {
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpenAnonymous();
                string regularAccount = null;
                if (BPM.Client.User.IsAccountExist(cn, account, ref regularAccount) &&
                    String.Compare(YZAuthHelper.BPMLogoutLastAccount, regularAccount, true) != 0)
                {
                    YZAuthHelper.SetAuthCookie(regularAccount);
                    YZAuthHelper.ClearLogoutFlag();

                    return true;
                }
                else
                {
                    YZAuthHelper.ClearLogoutFlag();
                }
            }
        }

        return false;
    }
}
