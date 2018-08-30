using System;
using System.Collections.Generic;

using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Joson.Permission.Web.Controllers
{
    using System.Data;
    using Net.Common;
    using Joson.SSOSite.OAuthX;



    //注意继承关系 ->  Joson.SSOSite.OAuth.BaseController
    public class SSOLoginController : Joson.SSOSite.OAuthX.BaseController
    {
        /// <summary>
        /// Action执行前判断
        /// </summary>
        /// <param name="filterContext"></param>
        //protected override void OnActionExecuting(ActionExecutingContext filterContext)
        //{

        //    base.OnActionExecuting(filterContext);
        //}

        public ActionResult Index()
        {

            String ClientIP = GetRequest.GetClientIP();

            DataTable Dt = ((DataTable)Session["Token"]);
            IList<OAuthToken> Token = new List<OAuthToken>();
            if (Dt != null)
            {

                //IList<OAuthToken> Token = Dt.ToList<OAuthToken>();
                Token = Dt.ToList<OAuthToken>();
                //ViewData["Token"] = Token[0];
                //if (Token[0].LogInIP == ClientIP)
                return SSOAuthLogin(Token[0]);

            }


            return View();



        }


        private ViewResult SSOAuthLogin(OAuthToken TokenInfo)
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

                try
                {
                    Object CurrentUser = null;


                    ViewData["TokenInfo"] = TokenInfo;

                    // 调用原有验证方法
                    // CurrentUser = _LoginBLL.Where(p => p.UserName == UID && p.Password == Pwd && p.IsDelete == false).FirstOrDefault();

                    CurrentUser = new object();


                    if (ModelState.IsValid && CurrentUser != null)
                    {

                        //Session 加入原有安全机制

                        //Session[Consts.USER_Current] = user;
                        //Session[Consts.USER_ID] = user.ID;
                        //Session.Timeout = 15;
                        //System.Web.Security.FormsAuthentication.SetAuthCookie(user.UserName, false);
                        //CookieHelper.SetCookie(Consts.USER_ID, user.ID.ToString().ToEncrypt(Consts.ENCRYPT_DECRYPT_KEY), DateTime.Now.AddDays(1));


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
                        //正常验证会到这来 
                        //SSO 验证不会进入这来 直接到 SSO统一认证中心去了
                        //基本可以无视
                        ViewData["Flag"] = "Fail";
                        ViewData["Message"] = "账号或者密码输入错误";


                        return View();
                    }

                }
                catch (Exception ex)
                {
                    //基本可以无视
                    ViewData["Flag"] = "Fail";
                    ViewData["Message"] = ex.Message;


                    Response.Write("登录系统验证失败");

                    return View();
                }
            }
            else
            {
                Response.Write("单点登录系统验证失败");
                return View();
            }

            return View();
        }

    }
}
