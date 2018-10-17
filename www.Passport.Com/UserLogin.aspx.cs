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
//using SSO.Passport.Class;

using Joson.SSOSite.OAuth;

using Net.LDAPHelper;
using Net.Common;

namespace Joson.SSO.Passport
{
    /// <summary>
    /// 用户登录
    /// 接收Get参数：BackURL
    /// </summary>
    public partial class UserLogin : System.Web.UI.Page
    {
        public String strCookieDomain = String.Empty;
        public String OAuthLDAP = String.Empty;
        public String OAuthDefaultURL = String.Empty;
        public bool OAuthDefault = false;
        public bool OAuthByLDAP = false;
        public bool isValidUser = false;


        protected void Page_Load(object sender, EventArgs e)
        {
            //非常重要的配置 如果要配置请保证其正确性！建议不要配置 默认读取域名
            strCookieDomain = System.Configuration.ConfigurationManager.AppSettings["OAuthURL"];

            //是否使用域验证
            OAuthByLDAP = System.Configuration.ConfigurationManager.AppSettings["OAuthByLDAP"] == "true";

            //验证通过后跳转页面 SSO 登录中心导向页面
            OAuthDefaultURL = System.Configuration.ConfigurationManager.AppSettings["OAuthSucessfulURL"];

            OAuthDefault = String.IsNullOrWhiteSpace(System.Configuration.ConfigurationManager.AppSettings["OAuthDefault"]);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //摸拟用户登录验证(帐号、密码于web.config中)
            //真实环境此处应通过数据库进行验证

            string strAccount = this.txtAccount.Text;
            string strPassport = this.txtPassport.Text;
            string strWebSiteName = String.Empty;


            JosonOAuth.OUser Entity = null;

            if (OAuthByLDAP)
            {
                if (OAuthDefault)
                {
                    OAuthLDAP = System.Configuration.ConfigurationManager.AppSettings["OAuthLDAP"];
                    isValidUser = ADHelper.TryAuthenticate(OAuthLDAP, strAccount, strPassport);

                }
                else
                {

                    JosonOAuth.WebServiceSoapClient O = new JosonOAuth.WebServiceSoapClient();

                    isValidUser = O.OAuth(out Entity, strAccount, strPassport);

                }

                //IdentityImpersonation Login = new IdentityImpersonation(strAccount, strPassport, OAuthLDAP);
                //Login.BeginImpersonate();

            }
            else
            {

                isValidUser = this.txtAccount.Text == System.Configuration.ConfigurationManager.AppSettings["Acount"]
                              && this.txtPassport.Text == System.Configuration.ConfigurationManager.AppSettings["PassWord"];

            }

            //JScript.Alert(this, OAuthDefaultURL);
            //JScript.Alert(this, isValidUser.ToStrings());

            //JScript.Alert(this, Request.QueryString["BackURL"]);
            //JScript.Alert(this, OAuthDefaultURL);

            if (isValidUser)
            {
                //产生令牌
                string tokenValue = Guid.NewGuid().ToString().ToUpper(); //产生绝对唯一字符串，用于令牌
                HttpCookie tokenCookie = new HttpCookie("Token");
                tokenCookie.Values.Add("Value", tokenValue);
                //获取验证站点域名 "www.passport.com";
                tokenCookie.Domain = strCookieDomain ?? Net.Common.GetRequest.GetCurrentDomain();
                Response.AppendCookie(tokenCookie);

                //HttpCookie AccountCookie = new HttpCookie("AccountID");
                //AccountCookie.Values.Add("Value", strAccount);
                //Response.AppendCookie(AccountCookie);

                //HttpCookie PassportCookie = new HttpCookie("Passport");
                //PassportCookie.Values.Add("Value", strPassport);
                //Response.AppendCookie(PassportCookie);

                LabMsg.Text = String.Empty;

                OAuthToken OAuth = new OAuthToken
                {
                    ID = 0,
                    UserAgent = Request.UserAgent,
                    isLocked = false,
                    AccountID = strAccount,
                    AccountName = strAccount,

                    //sn = Entity?.SN,
                    //givenName = Entity?.GivenName,
                    //displayName = Entity?.DisplayName,
                    //initials = Entity?.initials,
                    //title = Entity?.Title,
                    //company = Entity?.Company,
                    //mail = Entity?.Mail,
                    //otherMailBox = Entity?.OtherMailBox,
                    //homePhone = Entity?.HomePhone,
                    //mobile = Entity?.Mobile,
                    //otherMobile = Entity?.OtherMobile,
                    //whenCreated = Entity.WhenCreated,
                    //whenChanged = Entity.WhenChanged,
                    //department = Entity?.Department,
                    //manager = Entity?.Manager,
                    //streetAddress=Entity?.streetAddress,
                    //physicalDeliveryOfficeName= Entity?.physicalDeliveryOfficeName,


                    sn = Entity.SN,
                    givenName = Entity.GivenName,
                    displayName = Entity.DisplayName,
                    initials = Entity.initials,
                    title = Entity.Title,
                    company = Entity.Company,
                    mail = Entity.Mail,
                    otherMailBox = Entity.OtherMailBox,
                    homePhone = Entity.HomePhone,
                    mobile = Entity.Mobile,
                    otherMobile = Entity.OtherMobile,
                    whenCreated = Entity.WhenCreated,
                    whenChanged = Entity.WhenChanged,
                    department = Entity.Department,
                    manager = Entity.Manager,
                    streetAddress=Entity.streetAddress,
                    physicalDeliveryOfficeName= Entity.physicalDeliveryOfficeName,


                    PassWords = strPassport,
                    TokenVal = tokenValue,
                    WebSiteName = strWebSiteName,
                    RedirectURL = "",
                    ReturnURL = "",
                    LogInDtime = DateTime.Now.ToStrings(),
                    LogOutDtime = DateTime.Now.AddMinutes(1).ToStrings(),
                    LogInIP = GetRequest.GetClientIP() // "172.0.0.1" + Request.UserAgent

                };

                //产生主站凭证
                object info = true;

                TokenCache.Insert(tokenValue, OAuth.Serializer(), DateTime.Now.AddMinutes(double.Parse(System.Configuration.ConfigurationManager.AppSettings["Timeout"])));


                //跳转回分站
                if (Request.QueryString["BackURL"] != null)
                {
                    String RedirectURL = Server.UrlDecode(Request.QueryString["BackURL"]);
                    Response.Redirect(RedirectURL);
                }
                else
                {
                    if (OAuthDefaultURL.NotIsNullOrEmpty())
                        Response.Redirect(OAuthDefaultURL);
                }


            }
            else
            {
                LabMsg.Text = "抱歉，帐号或密码有误！";
            }
        }

 


        bool CreateTicket(string userid, int timeOut, string username)
        {
            try
            {
                //创建一个验证票据
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(userid, true, timeOut);
                //加密票据
                string cookieStr = FormsAuthentication.Encrypt(ticket);
                //创建cookie
                HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, cookieStr);
                //cookie存放路径
                cookie.Path = FormsAuthentication.FormsCookiePath;
                Response.Cookies.Add(cookie);
            }
            catch(Exception ex)
            {
                return false;
            }
            return true;
        }




    }
}
