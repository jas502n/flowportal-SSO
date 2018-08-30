using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace www.OAuth.Com
{
    using System.Data;
    using System.Data.SqlClient;
    using DigitalHR.DBUtility;


    using Joson.SSOSite.OAuth;
    using Net.LDAPHelper;
    using Net.Common;
    using System.Web.Security;

    public partial class Index : System.Web.UI.Page
    {

        public String strCookieDomain = String.Empty;
        public String OAuthLDAP = String.Empty;
        public String OAuthDefaultURL = String.Empty;
        public bool OAuthByLDAP = false;
        public bool isValidUser = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    BindArticleGG();
                    BindArticleGS();
                    BindArticleGH();
                    BindArticleSunny();
                    BindHomePicture();
                }
                catch
                { }
            }

            strCookieDomain = System.Configuration.ConfigurationManager.AppSettings["OAuthURL"];
            OAuthByLDAP = System.Configuration.ConfigurationManager.AppSettings["OAuthByLDAP"] == "true";
            OAuthDefaultURL = System.Configuration.ConfigurationManager.AppSettings["OAuthDefaultURL"];

        }
        /// <summary>
        /// 通知公告
        /// </summary>
        private void BindArticleGG()
        {
            string sqlString = "sp_Article";
            SqlParameter[] prams ={
                                  new SqlParameter("@_strTransType",SqlDbType.VarChar,100)
                              };
            prams[0].Value = "HOME_GONGGAO";

            using (SqlDataReader reader = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionMP, System.Data.CommandType.StoredProcedure, sqlString, prams))
            {
                DataTable mytable = new DataTable();
                mytable.Load(reader);
                this.RepeaterGG.DataSource = mytable;
                this.RepeaterGG.DataBind();
            }
        }

        /// <summary>
        /// 公司动态
        /// </summary>
        private void BindArticleGS()
        {
            string sqlString = "sp_Article";
            SqlParameter[] prams ={
                                  new SqlParameter("@_strTransType",SqlDbType.VarChar,100)
                              };
            prams[0].Value = "HOME_DONGTAI";

            using (SqlDataReader reader = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionMP, System.Data.CommandType.StoredProcedure, sqlString, prams))
            {
                DataTable mytable = new DataTable();
                mytable.Load(reader);
                this.RepeaterGS.DataSource = mytable;
                this.RepeaterGS.DataBind();
            }
        }

        /// <summary>
        /// 员工天地--工会活动
        /// </summary>
        private void BindArticleGH()
        {
            string sqlString = "sp_Article";
            SqlParameter[] prams ={
                                  new SqlParameter("@_strTransType",SqlDbType.VarChar,100)
                              };
            prams[0].Value = "HOME_GONGHUI";

            using (SqlDataReader reader = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionMP, System.Data.CommandType.StoredProcedure, sqlString, prams))
            {
                DataTable mytable = new DataTable();
                mytable.Load(reader);
                RepeaterGH.DataSource = mytable;
                RepeaterGH.DataBind();
            }
        }

        /// <summary>
        /// 员工天地--Sunny小站
        /// </summary>
        private void BindArticleSunny()
        {
            string sqlString = "sp_Article";
            SqlParameter[] prams ={
                                  new SqlParameter("@_strTransType",SqlDbType.VarChar,100)
                              };
            prams[0].Value = "HOME_SUNNY";

            using (SqlDataReader reader = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionMP, System.Data.CommandType.StoredProcedure, sqlString, prams))
            {
                DataTable mytable = new DataTable();
                mytable.Load(reader);
                this.RepeaterSun.DataSource = mytable;
                this.RepeaterSun.DataBind();
            }
        }

        /// <summary>
        /// 主页图片
        /// </summary>
        private void BindHomePicture()
        {
            string sqlString = "sp_HomePicture";
            SqlParameter[] prams ={
                                  new SqlParameter("@_strTransType",SqlDbType.VarChar,100)
                              };
            prams[0].Value = "PIC_SELECT";

            using (SqlDataReader reader = SqlServerHelper.ExecuteReader(SqlServerHelper.ConnectionMP, System.Data.CommandType.StoredProcedure, sqlString, prams))
            {
                DataTable mytable = new DataTable();
                mytable.Load(reader);
                this.RepeaterPic.DataSource = mytable;
                this.RepeaterPic.DataBind();
            }
        }




        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            //摸拟用户登录验证(帐号、密码于web.config中)
            //真实环境此处应通过数据库进行验证

            string strAccount = this.UserName.Text;
            string strPassport = this.UserPwd.Text;
            string strWebSiteName = String.Empty;

            if (OAuthByLDAP)
            {
                OAuthLDAP = System.Configuration.ConfigurationManager.AppSettings["OAuthLDAP"];
                isValidUser = ADHelper.TryAuthenticate(OAuthLDAP, strAccount, strPassport);

                //IdentityImpersonation Login = new IdentityImpersonation(strAccount, strPassport, LDAP);
                //Login.BeginImpersonate();

            }
            else
            {

                isValidUser = this.UserName.Text == System.Configuration.ConfigurationManager.AppSettings["Acount"]
                              && this.UserPwd.Text == System.Configuration.ConfigurationManager.AppSettings["PassWord"];

            }

            if (isValidUser)
            {
                //产生令牌
                string tokenValue = this.getGuidString();
                HttpCookie tokenCookie = new HttpCookie("Token");
                tokenCookie.Values.Add("Value", tokenValue);
                //获取验证站点域名 "www.passport.com";
                tokenCookie.Domain = strCookieDomain;
                Response.AppendCookie(tokenCookie);

                //HttpCookie AccountCookie = new HttpCookie("AccountID");
                //AccountCookie.Values.Add("Value", strAccount);
                //Response.AppendCookie(AccountCookie);

                //HttpCookie PassportCookie = new HttpCookie("Passport");
                //PassportCookie.Values.Add("Value", strPassport);
                //Response.AppendCookie(PassportCookie);


                OAuthToken OAuth = new OAuthToken
                {
                    ID = 0
                    ,
                    UserAgent = Request.UserAgent
                    ,
                    isLocked = false
                    ,
                    AccountID = strAccount
                    ,
                    AccountName = strAccount
                    ,
                    PassWords = strPassport
                    ,
                    TokenVal = tokenValue
                    ,
                    WebSiteName = strWebSiteName
                    ,
                    RedirectURL = ""
                    ,
                    ReturnURL = ""
                    ,
                    LogInDtime = DateTime.Now.ToString()
                    ,
                    LogOutDtime = DateTime.Now.AddMinutes(1).ToString()
                    ,
                    LogInIP = GetRequest.GetClientIP() // "172.0.0.1" + Request.UserAgent




                };

                //产生主站凭证
                object info = true;

                TokenCache.Insert(tokenValue, OAuth.Serializer(), DateTime.Now.AddMinutes(double.Parse(System.Configuration.ConfigurationManager.AppSettings["Timeout"])));

                TopLoginWindows.Visible = false;
                TopLoginAccount.Visible = true;
                LiUserAccount.Text = strAccount;

                //跳转回分站
                if (Request.QueryString["BackURL"] != null)
                    Response.Redirect(Server.UrlDecode(Request.QueryString["BackURL"]));
                else
                {
                    if (OAuthDefaultURL.NotIsNullOrEmpty())
                        Response.Redirect(OAuthDefaultURL);
                }
            }
            else
            {
                JScript.Alert(this, "抱歉，帐号或密码有误！请正确输入域账号或密码");
            }
        }

        /// <summary>
        /// 产生绝对唯一字符串，用于令牌
        /// </summary>
        /// <returns></returns>
        private string getGuidString()
        {
            return Guid.NewGuid().ToString().ToUpper();
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
            catch
            {
                return false;
            }
            return true;
        }

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logout.aspx");
        }
    }
}