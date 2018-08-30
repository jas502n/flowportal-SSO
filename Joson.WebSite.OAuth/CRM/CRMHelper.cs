using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Security;

namespace Joson.WebSite.OAuth
{
    public class CRMHelper
    {


        public static void CheckUser(string userName, string pwd, string logType)
        {
            B_user buser = new B_user();

            if (logType == "0")
            {
                string password = FormsAuthentication.HashPasswordForStoringInConfigFile(pwd, "MD5");

                if (userName.Trim() == "")
                {
                    lbErrorMessage.Text = "请填写用户名!";
                }
                else if (pwd.Trim() == "")
                {
                    lbErrorMessage.Text = "请填写密码!";
                }
                else if (!_userlogin.CheckUserLogin(userName, password, out buser))
                {
                    lbErrorMessage.Text = "用户名或密码有误，请重新输入!";
                }
                else
                {
                    //HttpContext.Current.Session["UserName"] = userName;
                    FormsAuthentication.SetAuthCookie(userName, false);
                    SetCookie("online", DateTime.Now.ToString());
                    //HttpContext.Current.Session["CName"] = buser.b_userName;
                    //HttpContext.Current.Session["UserBranch"] = buser.b_branch;
                    Hashtable hOnline = (Hashtable)Application["Online"];
                    if (hOnline != null)
                    {
                        IDictionaryEnumerator idE = hOnline.GetEnumerator();
                        string strKey = "";
                        while (idE.MoveNext())
                        {
                            if ((idE.Value != null) && idE.Value.ToString().Equals(userName))
                            {
                                strKey = idE.Key.ToString();
                                hOnline[strKey] = "mustbeout";
                                break;
                            }
                        }
                    }
                    else
                    {
                        hOnline = new Hashtable();
                    }
                    hOnline[Session.SessionID] = userName;
                    Application.Lock();
                    Application["Online"] = hOnline;
                    Application.UnLock();
                    ILog log = log4net.LogManager.GetLogger(MethodBase.GetCurrentMethod().DeclaringType);
                    log.Info("提示：用户名: " + userName + ",成功登陆!");
                    if (buser.b_branch.Trim() == "物流公司")
                    {
                        ScriptManager.RegisterClientScriptBlock(UpdatePanel1, GetType(), "loginwl", "OpenPopupWnd('Bussiness/salesbill/ShipMentBill.aspx');", true);
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(UpdatePanel1, GetType(), "login", "OpenPopupWnd('Main.aspx');", true);
                    }
                }
            }
            else if (logType == "1")
            {
                if (!_userlogin.CheckUserDomainLogin(userName, out buser))
                {
                    lbErrorMessage.Text = "CRM系统不存在此用户名，请重新输入!";
                }
                else
                {
                    //HttpContext.Current.Session["UserName"] = userName;
                    FormsAuthentication.SetAuthCookie(userName, false);
                    SetCookie("online", DateTime.Now.ToString());
                    //HttpContext.Current.Session["CName"] = buser.b_cName;
                    //HttpContext.Current.Session["UserBranch"] = buser.b_branch;
                    Hashtable hOnline = (Hashtable)Application["Online"];
                    if (hOnline != null)
                    {
                        IDictionaryEnumerator idE = hOnline.GetEnumerator();
                        string strKey = "";
                        while (idE.MoveNext())
                        {
                            if ((idE.Value != null) && idE.Value.ToString().Equals(userName))
                            {
                                strKey = idE.Key.ToString();
                                hOnline[strKey] = "mustbeout";
                                break;
                            }
                        }
                    }
                    else
                    {
                        hOnline = new Hashtable();
                    }
                    hOnline[Session.SessionID] = userName;
                    Application.Lock();
                    Application["Online"] = hOnline;
                    Application.UnLock();
                    ILog log = log4net.LogManager.GetLogger(MethodBase.GetCurrentMethod().DeclaringType);
                    log.Info("提示：用户名: " + userName + ",成功登陆!");
                    ScriptManager.RegisterClientScriptBlock(UpdatePanel1, GetType(), "login", "OpenPopupWnd('Main.aspx');", true);
                }
            }
        }

    }


}
