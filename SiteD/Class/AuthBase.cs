using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;

namespace Joson.SSOSite.OAuth
{
    /// <summary>
    /// 授权页面基类
    /// </summary>
    public class BaseClass : System.Web.UI.Page
    {
        protected override void OnLoad(EventArgs e)
        {
            if (Session["Token"] != null)
            {
                //分站凭证存在
                Response.Write("恭喜，分站凭证存在，您被授权访问该页面！");
            }
            else
            {
                //令牌验证结果
                if (Request.QueryString["Token"] != null)
                {
                    if (Request.QueryString["Token"] != "$Token$")
                    {
                        //持有令牌
                        string tokenValue = Request.QueryString["Token"];
                        //调用WebService获取主站凭证


                        #region Joson Test
                        //string strURL = "http://www.webxml.com.cn/WebServices/ChinaZipSearchWebService.asmx";
                        //string ServiceName = "getAddressByZipCode";
                        //string[] args = new string[2];

                        //args[0] = "723112";
                        //args[1] = "";

                        //Net.Common.ResponseWebServices.InvokeWebService(strURL, ServiceName, args);
                        
                        #endregion
                       
                        string JosonURL = " http://www.passport.com/TokenService.asmx";
                        string JosonServiceName = "TokenGetCredence";
                        string[] JosonArgs = new string[1];
                        JosonArgs[0] = tokenValue;

                        object o = Net.Common.ResponseWebServices.InvokeWebService(JosonURL, JosonServiceName, JosonArgs);
                        if (o != null)
                        {
                            //令牌正确
                            Session["Token"] = o;
                            Response.Write("恭喜，令牌存在，您被授权访问该页面！");
                        }
                        else
                        {
                            //令牌错误
                            Response.Redirect(this.replaceToken());
                        }
                    }
                    else
                    {
                        //未持有令牌
                        Response.Redirect(this.replaceToken());
                    }
                }
                //未进行令牌验证，去主站验证
                else
                {
                    Response.Redirect(this.getTokenURL());
                }
            }

            base.OnLoad(e);
        }

        /// <summary>
        /// 获取带令牌请求的URL
        /// </summary>
        /// <returns></returns>
        private string getTokenURL()
        {
            string url = Request.Url.AbsoluteUri;
            Regex reg = new Regex(@"^.*\?.+=.+$");
            if (reg.IsMatch(url))
                url += "&Token=$Token$";
            else
                url += "?Token=$Token$";

            return "http://www.passport.com/gettoken.aspx?BackURL=" + Server.UrlEncode(url);
        }

        /// <summary>
        /// 去掉URL中的令牌
        /// </summary>
        /// <returns></returns>
        private string replaceToken()
        {
            string url = Request.Url.AbsoluteUri;
            url = Regex.Replace(url, @"(\?|&)Token=.*", "", RegexOptions.IgnoreCase);
            return "http://www.passport.com/userlogin.aspx?BackURL=" + Server.UrlEncode(url);
        }

    }
}
