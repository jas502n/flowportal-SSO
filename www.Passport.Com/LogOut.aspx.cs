using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Net.Common;

namespace Joson.SSO.Passport
{
    public partial class LogOut : System.Web.UI.Page  //Joson.SSOSite.OAuth.BaseClass 
    {
        String OAuthURL = String.Empty;
        String GetToken = String.Empty;
        String TokenService = String.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            OAuthURL = Net.Common.ConfigHelper.GetConfig("OAuthURL");
            GetToken = Net.Common.ConfigHelper.GetConfig("GetToken");
            TokenService = Net.Common.ConfigHelper.GetConfig("TokenService");

            this.ClearToken();
        }


        public void ClearToken()
        {

            //清除本地Cookie
            HttpCookie AccountCookie = new HttpCookie("AccountID");
            AccountCookie.Values.Add("Value", "");
            Response.AppendCookie(AccountCookie);

            #region 通知分站做退出操作



            String OAuthSite = ConfigurationManager.AppSettings["OAuthSite"];

            DataSet Ds = DataSetXML.XmlDocumentToDataSet(ConfigurationManager.AppSettings["OAuthSite"]);

            if (Ds.Tables["Joson"].Rows.Count > 0)
            {
                foreach (DataRow Dr in Ds.Tables["Joson"].Rows)
                {
                    try
                    {
                        String HttpGet = Dr["httpGet"].ToStrings();
                        //GetRequest.GetPageResouceCode(HttpGet);
                        HttpRequestHander.HttpGet(HttpGet);

                        Response.Redirect(HttpGet);


                    }
                    catch (Exception ex)
                    {
                        continue;

                    }

                }
            }


            #endregion

            //清空主站凭证
            if (Request.QueryString["Token"] == null)
            {
                //Response.Redirect("http://www.passport.com/gettoken.aspx?BackURL=" + Server.UrlEncode(Request.Url.AbsoluteUri + "?Token=$Token$"));
                Response.Redirect(GetToken + "?BackURL=" + Server.UrlEncode(Request.Url.AbsoluteUri + "?Token=$Token$"));
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

                }

                //清空本地凭证
                Session.Abandon();

                Response.Redirect("index.aspx");
                Response.Write("已退出！");

            }
        }
    }
}