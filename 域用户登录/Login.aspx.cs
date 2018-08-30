using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.DirectoryServices;
using DigitalHR.Common;
using DigitalHR.BLL;
using DigitalHR.Model;
using System.Data.SqlClient;
using DigitalHR.DBUtility;

namespace DigitalHR.Web
{
    public partial class Login : System.Web.UI.Page
    {
        EmployeeManage empbll = new EmployeeManage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //if (HttpContext.Current.User.Identity.IsAuthenticated)
                //{
                //    HttpContext.Current.User.
                //    Response.Redirect("App/Index.aspx");
                //}
            }
        }

        protected void ibtnLogin_Click(object sender, ImageClickEventArgs e)
        {
            string Account = this.txtAccount.Text.Trim();
            string Password = this.txtPassword.Text.Trim();

            if (Account == "")
            {
                JSHelper.Alert("请填写账号！", this.Page);
            }

            if (Password == "")
            {
                JSHelper.Alert("请填写密码！", this.Page);
            }

            #region MyRegion
            //if (this.txtVerifyCode.Text.Trim() == "")
            //{
            //    JSHelper.Alert("请填写验证码！", this.Page);
            //}

            //判断验证码是否过期
            //if (Session["verifyCode"] == null)
            //{
            //    JSHelper.Alert("验证码已过期,请刷新后重试!", this.Page);
            //    return;
            //}

            //if (String.Compare(txtVerifyCode.Text, Session["verifyCode"].ToString(), true) == 0)
            //{
            //Session.Remove("verifyCode");

            //SYS_UserManage myuser = new SYS_UserManage();

            //验证用户是否停用
            //if (myuser.VerifyUserIsDelete(Account))
            //{
            //    JSHelper.Alert("对不起，该用户已被停用!", this.Page);
            //    return;
            //}

            //验证用户名，密码
            //if (myuser.VerifyLogin(Account, Password))
            //{
            //    CreateTicket(this.txtAccount.Text.Trim(), 60, "");

            //    if (Request.QueryString["ReturnUrl"] == null)
            //    {
            //        Response.Redirect("App/Index.aspx");
            //    }
            //    else
            //    {
            //        Response.Redirect(Request.QueryString["ReturnUrl"]);
            //    }
            //}
            //else
            //{
            //    txtVerifyCode.Text = string.Empty;
            //    JSHelper.Alert("用户名或密码不正确！", this.Page);
            //}
            //}
            //else
            //{
            //    txtVerifyCode.Text = string.Empty;
            //    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "", "<script>alert('验证码有误！');</script>", false);
            //} 

            #endregion

            //判断人事信息中是否存在该员工，如果不存在或者已离职，拒绝登陆
            int Status = 0;
            string Note = "";

            empbll.Emp_Login(Account, out Status, out Note);

            if (Status != 1)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "", "<script>alert('" + Note + "');</script>", false);
                return;
            }

            //域账号验证
            DirectoryEntry entry = new DirectoryEntry(ConfigurationManager.AppSettings["Domain"].ToString(), Account, Password);
            try
            {
                //绑定到本机 AdsObject 以强制身份验证。
                DirectorySearcher search = new DirectorySearcher(entry);
                search.Filter = "(SAMAccountName=" + Account + ")";
                search.PropertiesToLoad.Add("cn");
                SearchResult sr = search.FindOne();
                if (sr != null)
                {
                    CreateTicket(this.txtAccount.Text.Trim(), 600, "");

                    if (Request.QueryString["ReturnUrl"] == null)
                    {
                        Response.Redirect("App/Index.aspx");
                    }
                    else
                    {
                        Response.Redirect(Request.QueryString["ReturnUrl"]);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "", "<script>alert('用户名或密码错误！');</script>", false);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "", @"<script>alert('" + ex.Message.Trim() + "');</script>", false);
            }
        }

        private bool CreateTicket(string userid, int timeOut, string username)
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
    }
}
