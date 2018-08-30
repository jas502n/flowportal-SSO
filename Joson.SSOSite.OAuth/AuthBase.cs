using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;

using System.Collections;
using System.Text.RegularExpressions;

namespace Joson.SSOSite.OAuth
{
    #region 知识点

    /*
     
        1. OnPreInit 
        2. OnInit 
        3. OnInitComplete 
        4. OnPreLoad 
        5. Page_Load 
        6. OnLoad 
        7. Button_Click 
        8. OnLoadComplete 
        9. OnPreRender 

     
     */

    /**********************************************************************************************************************************

    加载对应Load事件和OnLoad方法，对于这个事件，相信大多数朋友都会比较熟悉，用VS.Net生成的页面中的Page_Load方法就是响应Load事件的方法，
    对于每一次请求，Load事件都会触发，Page_Load方法也就会执行，相信这也是大多数人了解ASP.Net的第一步。   
   
    Page_Load方法响应了Load事件，这个事件是在System.Web.WebControl.Control类中定义的（这个类是Page和所有服务器控件的祖宗），并且在OnLoad方法中被触发。  
   
     
   
    很多人可能碰到过这样的事情，写了一个PageBase类，然后在Page_Load中来验证用户信息，结果发现不管验证是否成功，子类页面的Page_Load总是会先执行
    ，这个时候很可能留下一些安全性的隐患，用户可能在没有得到验证的情况下就执行了子类中的Page_Load方法。  
   
    出现这个问题的原因很简单，因为Page_Load方法是在OnInit中被添加到Load事件中的，而子类的OnInit方法中是先添加了Load事件，然后再调用base.OnInit，
    这样就造成了子类的Page_Load被先添加，那么先执行了。  
   
    要解决这个问题也很简单，有两种方法：  
   
   1） 在PageBase中重载OnLoad方法，然后在OnLoad中验证用户，然后调用base.OnLoad，因为Load事件是在OnLoad中触发，这样我们就可以保证在触发Load事件之前验证用户。  
   
   2） 在子类的OnInit方法中先调用base.OnInit，这样来保证父类先执行Page_Load  

     
   * * */

    #endregion

    using Net.Common;
    //using System.Xml;

    //<add key="OAuthURL" value="http://www.passport.com/"/>
    //<add key="GetToken" value="http://www.passport.com/gettoken.aspx"/>
    //<add key="AccountLogin" value="http://www.passport.com/userlogin.aspx"/>
    //<add key="TokenService" value="http://www.passport.com/TokenService.asmx"/>

    //<add key="OAuthCorrectMsg" value="恭喜，分站凭证存在，您被授权访问该页面！"/>
    //<add key="TokenCorrectMsg" value="恭喜，令牌存在，您被授权访问该页面！" />

    /// <summary>
    /// 授权页面基类
    /// </summary>
    public class BaseClass : System.Web.UI.Page
    {
        protected String OAuthURL = String.Empty;
        protected String GetToken = String.Empty;

        protected String AccountLogin = String.Empty;
        protected String TokenService = String.Empty;
        public String OAuthCorrectMsg = String.Empty;
        public String TokenCorrectMsg = String.Empty;

        protected override void OnLoad(EventArgs e)
        {
            OAuthURL = Net.Common.ConfigHelper.GetConfig("OAuthURL");
            GetToken = Net.Common.ConfigHelper.GetConfig("GetToken");

            AccountLogin = Net.Common.ConfigHelper.GetConfig("AccountLogin");
            TokenService = Net.Common.ConfigHelper.GetConfig("TokenService");

            OAuthCorrectMsg = Net.Common.ConfigHelper.GetConfig("OAuthCorrectMsg");
            TokenCorrectMsg = Net.Common.ConfigHelper.GetConfig("TokenCorrectMsg");



            if (Session["Token"] != null)
            {
                //分站凭证存在

                //Response.Write("恭喜，分站凭证存在，您被授权访问该页面！");
                Response.Write(OAuthCorrectMsg);

            }
            else
            {
                //分站凭证不存在

                //令牌验证结果
                if (Request.QueryString["Token"] != null)
                {
                    #region 令牌检查

                    if (Request.QueryString["Token"] != "$Token$")
                    {
                        //持有令牌
                        string tokenValue = Request.QueryString["Token"];
                        string strRedirect = Request.QueryString["Redirect"];
                        //调用WebService获取主站凭证

                        object result = null;

                        if (tokenValue.NotIsNullOrEmpty())
                        {
                            #region 令牌存在从数据库 获取数据

                            #region Joson Test
                            //string strURL = "http://www.webxml.com.cn/WebServices/ChinaZipSearchWebService.asmx";
                            //string ServiceName = "getAddressByZipCode";
                            //string[] args = new string[2];

                            //args[0] = "723112";
                            //args[1] = "";

                            //Net.Common.ResponseWebServices.InvokeWebService(strURL, ServiceName, args);

                            #endregion

                            //string JosonURL ="http://www.passport.com/TokenService.asmx";

                            string JosonURL = TokenService;
                            string JosonServiceName = "TokenGetCredences";
                            string[] JosonArgs = new string[1];
                            JosonArgs[0] = tokenValue;


                            JosonServiceName = "TokenGetCredencDt";
                            //JosonServiceName = "TokenGetCredence";  


                            try
                            {
                                result = Net.Common.ResponseWebServices.InvokeWebService(JosonURL, JosonServiceName, JosonArgs);



                                //Hashtable HashTab = new Hashtable();
                                //HashTab.Add("tokenValue", tokenValue);

                                #region Joson  Test

                                //JosonURL = "http://www.webxml.com.cn/WebServices/ChinaZipSearchWebService.asmx";
                                //JosonServiceName = "getAddressByZipCode";

                                //HashTab.Add("theZipCode", "723000");
                                //HashTab.Add("userID", "");

                                #endregion

                                //XmlDocument XMLResult =ResponseWebServices.QueryGetWebService(JosonURL, JosonServiceName, HashTab);
                                //DataSet Ds = DataSetXML.XmlDocumentToDataSet(XMLResult);
                            }
                            catch (Exception ex) { }

                            #endregion

                        }

                        #region 令牌验证

                        if (result != null)
                        {

                            //令牌正确
                            Session["Token"] = result;
                            Response.Write(TokenCorrectMsg);
                            // Response.Write("恭喜，令牌存在，您被授权访问该页面！");

                            if (strRedirect != null)
                                Response.Redirect(strRedirect);

                        }
                        else
                        {
                            //令牌错误 重新登录验证
                            Response.Redirect(this.replaceToken());
                        }

                        #endregion

                    }
                    else
                    {
                        //未持有令牌 重新登录验证
                        Response.Redirect(this.replaceToken());
                    }

                    #endregion

                }
                else
                {
                    //未进行令牌验证，去主站验证

                    Response.Redirect(this.getTokenURL());
                }
            }

            base.OnLoad(e);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="e"></param>
        protected override void OnInit(EventArgs e)
        {
            // 接受子页面属性设置 
            base.OnInit(e);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="e"></param>
        protected override void OnLoadComplete(EventArgs e)
        {

            base.OnLoadComplete(e);
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

            var BackURL = "{0}?BackURL={1}".WithFormat(GetToken, Server.UrlEncode(url));
            return BackURL;

            //http://www.passport.com/gettoken.aspx?BackURL=http://www.ehr.com/index.aspx?Token=$Token$
            //return JStringFormat.WithFormat("{0}?BackURL={1}", GetToken, Server.UrlEncode(url));
            //return "http://www.passport.com/gettoken.aspx?BackURL=" + Server.UrlEncode(url);
        }

        /// <summary>
        /// 去掉URL中的令牌
        /// 重新登录验证
        /// </summary>
        /// <returns></returns>
        private string replaceToken()
        {
            string url = Request.Url.AbsoluteUri;
            url = Regex.Replace(url, @"(\?|&)Token=.*", "", RegexOptions.IgnoreCase);

            var BackURL = JStringFormat.WithFormat("{0}?BackURL={1}", AccountLogin, Server.UrlEncode(url));

            return BackURL;

            //return "http://www.passport.com/userlogin.aspx?BackURL=" + Server.UrlEncode(url);
        }




        #region ObtainContainer


        #endregion

    }



    #region BaseLogOut

    /// <summary>
    /// BaseLogOut
    /// </summary>
    public class BaseLogOut : System.Web.UI.Page
    {
        protected String GetToken = String.Empty;
        protected String TokenService = String.Empty;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="e"></param>
        protected override void OnLoad(EventArgs e)
        {

            GetToken = Net.Common.ConfigHelper.GetConfig("GetToken");
            TokenService = Net.Common.ConfigHelper.GetConfig("TokenService");

            base.OnLoad(e);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="e"></param>
        protected override void OnInit(EventArgs e)
        {

            base.OnInit(e);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="e"></param>
        protected override void OnLoadComplete(EventArgs e)
        {

            base.OnLoadComplete(e);

            ClearToken();

        }


        /// <summary>
        /// ClearToken
        /// </summary>
        /// <param name="RedirectURL"></param>
        public virtual Boolean ClearToken()
        {
            Boolean ClearToken = false;

            Session["Token"] = null;


            //清空主站凭证
            if (Request.QueryString["Token"] == null)
            {
                //String RedirectURL = "http://www.passport.com/gettoken.aspx?BackURL=" + Server.UrlEncode(Request.Url.AbsoluteUri + "?Token=$Token$");
                String RedirectURL = "{0}?BackURL=" + Server.UrlEncode(Request.Url.AbsoluteUri + "?Token=$Token$");
                //Response.Write(RedirectURL + "<BR>");
                //Response.Write(GetToken.FormatWith(RedirectURL));

                //Response.Redirect(JStringFormat.FormatWith(GetToken, RedirectURL));
                Response.Redirect(GetToken.FormatWith(RedirectURL));
            }
            else
            {
                if (Request.QueryString["Token"] != "$Token$")
                {
                    string token = Request.QueryString["Token"];
                    //创建WebService对象

                    //String strURL = "http://www.passport.com/TokenService.asmx";
                    String strURL = TokenService;
                    String ServiceName = "ClearToken";

                    string[] args = new string[1];
                    args[0] = token;

                    object o = Net.Common.ResponseWebServices.InvokeWebService(strURL, ServiceName, args);

                    ClearToken = true;

                }
            }

            //清空本地凭证
            Session.Abandon();
            ClearCookies();

            return ClearToken;


        }



        /// <summary>
        /// ClearCookies
        /// </summary>
        public virtual void ClearCookies()
        {

            HttpCookie myCookie = HttpContext.Current.Request.Cookies[System.Web.Security.FormsAuthentication.FormsCookieName];
            if (myCookie != null)
            {
                DateTime now = DateTime.Now;
                myCookie.Expires = now.AddYears(-2);
                HttpContext.Current.Response.Cookies.Add(myCookie);
            }

        }



    }

    #endregion



}
