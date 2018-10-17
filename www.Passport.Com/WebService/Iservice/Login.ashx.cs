using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.Configuration;
using System.Security.Cryptography;
using System.Text;

using Net.MobileHelper;
using BPM.Client;
//using iAnywhere.App_GlobalResources;
using Net.MobileHelper.YZSoft.Resources;

namespace iAnywhere.YZSoft.services
{
    /// <summary>
    /// Login 的摘要说明
    /// </summary>
    public class Login : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            JsonItem rv = new JsonItem();
            string userid = context.Request.Params["uid"];
            string password = context.Request.Params["pwd"];
            string isWeixIn = context.Request.Params["isWeixIn"];

            LoginUser loginUers = new LoginUser();

            String NetWork = String.IsNullOrEmpty(context.Request.Params["NetWork"]) ? "" : context.Request.Params["NetWork"],
                   Phone = String.IsNullOrEmpty(context.Request.Params["DevicePlatform"]) ? "" : context.Request.Params["DevicePlatform"],
                   DeviceName = String.IsNullOrEmpty(context.Request.Params["DeviceName"]) ? "" : context.Request.Params["DeviceName"],
                   UUID = String.IsNullOrEmpty(context.Request.Params["UUID"]) ? "" : context.Request.Params["UUID"],
                   Versions = String.IsNullOrEmpty(context.Request.Params["Version"]) ? "Web客户端" : context.Request.Params["Version"],
                   strErrorMsg = String.Empty;


            try
            {
                if (String.IsNullOrEmpty(userid) /*|| String.IsNullOrEmpty(password)*/)
                {
                    if (String.IsNullOrWhiteSpace(isWeixIn))
                        throw new Exception(JosonStrings.Aspx_Login_EnterAccountTip);
                    else
                        throw new Exception("请关注微信服务号【创维数字移动办公】后，绑定你的域账号！");
                }

                string realAccount = null;
                if (!String.IsNullOrEmpty(isWeixIn))
                {
                    var isDegug = Convert.ToString(context.Request.Params["isDebug"]).ToLower().Equals("true");

                    if (context.Request.UserAgent.ToLower().Contains("micromessenger"))
                    {
                        realAccount = userid;
                        Versions = "微信客户端";
                    }
                    else
                    {
                        if (!isDegug)
                        {
                            rv.Attributes["success"] = false;
                            rv.Attributes["errorMessage"] = "试图非法登录！本次已经记录该操作！客户端仅提供微信绑定域用户使用" + DeviceName + Phone + NetWork;
                            context.Response.Write(rv.ToString());

                        }
                        else
                        {
                            realAccount = userid;
                            Versions = "微信客户端";
                        }
                    }

                }
                else
                {
                    if (!BPMConnection.Authenticate(YZAuthHelper.BPMServerName, YZAuthHelper.BPMServerPort, userid, password, out realAccount))
                        throw new Exception(JosonStrings.Aspx_Login_Fail);

                }

                if (realAccount != null)
                {
                    YZAuthHelper.SetAuthCookie(realAccount);
                    YZAuthHelper.ClearLogoutFlag();


                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();
                        User user = User.FromAccount(cn, realAccount);

                        loginUers = cn.getLoginUser(userid, password, "LogIn", "logInOK", NetWork, Phone, UUID, DeviceName, Versions);

                        JsonItem juser = new JsonItem();
                        rv.Attributes["user"] = juser;

                        juser.Attributes["Account"] = user.Account;
                        string andriodPushService = WebConfigurationManager.AppSettings["AndroidPushService"];
                        juser.Attributes["AndroidPushService"] = String.IsNullOrEmpty(andriodPushService) ? "JPush" : andriodPushService;
                        juser.Attributes["HRID"] = user.HRID;
                        juser.Attributes["DisplayName"] = user.DisplayName;
                        juser.Attributes["ShortName"] = YZStringHelper.GetUserShortName(user.Account, user.DisplayName);
                        juser.Attributes["LongName"] = YZStringHelper.GetUserFriendlyName(user.Account, user.DisplayName);
                        DateTime today = DateTime.Today;
                        juser.Attributes["LoginDate"] = String.Format("{0}年{1}月{2}日", today.Year, today.Month, today.Day);


                        juser.Attributes["NetWork"] = NetWork;
                        juser.Attributes["Phone"] = Phone;
                        juser.Attributes["UUID"] = UUID;
                        juser.Attributes["DeviceName"] = DeviceName;

                    }

                    new SqlServerProvider(context).InsertLogInInfo(loginUers);
                    //System.Threading.Thread.Sleep(500);

                    rv.Attributes["success"] = true;
                    context.Response.Write(rv.ToString());
                }

            }
            catch (Exception exp)
            {
                YZEventLog log = new YZEventLog();
                log.WriteEntry(exp);

                loginUers.ErrorMsg = exp.Message;

                rv.Attributes["success"] = false;
                rv.Attributes["errorMessage"] = exp.Message;
                context.Response.Write(rv.ToString());
            }

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        public string StringToMD5Hash(string inputString)
        {
            if (String.IsNullOrEmpty(inputString))
                return String.Empty;

            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] encryptedBytes = md5.ComputeHash(Encoding.UTF8.GetBytes(inputString));
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < encryptedBytes.Length; i++)
            {
                sb.AppendFormat("{0:x2}", encryptedBytes[i]);
            }
            return sb.ToString().Trim();
        }
    }
}