using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Globalization;
using BPM;
using BPM.Client;
using BPM.Client.Security;

public partial class BPM_Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Charset = "UTF-8";
        Response.AddHeader("P3P", "CP=CAO PSA OUR"); //无此行当在ie的iframe中打开应用(default.aspx.cs)时设置cookie后，ajax request时cookie没了
        this.Response.Cache.SetCacheability(HttpCacheability.NoCache);

        if (!YZAuthHelper.IsAuthenticated)
        {
            FormsAuthentication.RedirectToLoginPage();
            return;
        }

        //设置页标题
        this.Page.Title = System.Web.Configuration.WebConfigurationManager.AppSettings["CompanyInfoDefaultPageTitle"];
        if (String.IsNullOrEmpty(this.Page.Title))
            this.Page.Title = Resources.YZStrings.Aspx_DefaultPage_Title;

        //设置HTML标准
        if (String.Compare(this.Request.Browser.Browser, "IE", true) == 0 && this.Request.Browser.MajorVersion == 6)
        {
        }
        else
        {
            this._litTop.Text = "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">";
        }

        //没有site参数,或site参数不正确
        int factoryId = 0;
        Int32.TryParse(this.Request.QueryString["site"], out factoryId);

        //获得帐号信息
        User user = new User();
        int taskCount;
        int userLevel = 10;
        bool permSys = false;
        bool leave = false;
        using (BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();

            //获得当前用户
            user.Open(cn, YZAuthHelper.LoginUserAccount);
            taskCount = cn.GetMyTaskCount(null);
            UserCommonInfo userCommonInfo = UserCommonInfo.FromAccount(cn, YZAuthHelper.LoginUserAccount);

            MemberCollection positions = OrgSvr.GetUserPositions(cn, YZAuthHelper.LoginUserAccount);
            foreach (Member member in positions)
            {
                if (member.Level > userLevel)
                    userLevel = (int)member.Level;
            }

            //检查对系统管理模块的权限
            permSys = UserResourceSecurityManager.CheckPermision(cn, YZWellKnowRSID.SYS, "Execute");
            leave = userCommonInfo.OutOfOfficeState == OutOfOfficeState.InOffice ? false:true;
        }

        JsonItem rv = new JsonItem();
        rv.Attributes["LCID"] = YZLangHelper.CurrentCulture.LCID;
        rv.Attributes["CompanyName"] = System.Web.Configuration.WebConfigurationManager.AppSettings["CompanyInfoCompanyName"];
        rv.Attributes["Account"] = YZAuthHelper.LoginUserAccount;
        rv.Attributes["DisplayName"] = user.DisplayName;
        rv.Attributes["TaskCount"] = taskCount;
        rv.Attributes["UserLevel"] = userLevel;
        rv.Attributes["PermSys"] = permSys;
        rv.Attributes["Leave"] = leave;
        rv.Attributes["Link1"] = System.Web.Configuration.WebConfigurationManager.AppSettings["CompanyInfoLink1"];
        rv.Attributes["DBType"] = QueryManager.DBProviderName != "SQL Server" ? QueryManager.DBProviderName : "";
        rv.Attributes["UnreadMessageCount"] = 0;

        //获得rootUrl
        string url = this.Request.Url.GetLeftPart(UriPartial.Authority);
        string virtualPath = HttpRuntime.AppDomainAppVirtualPath;
        if (virtualPath == "/")
            virtualPath = String.Empty;

        url = url +  virtualPath + "/";

        //在页面中包含JS
        string jscode = String.Format("var rootUrl='{0}';\nvar userInfo = {1}",url,rv.ToString());
        HtmlGenericControl js = new HtmlGenericControl("script");
        js.Attributes["type"] = "text/javascript";
        js.InnerHtml = jscode;
        this.Page.Header.Controls.AddAt(1,js);

        //设置Cookie
        HttpCookie cookie;
        cookie = new HttpCookie("UserDisplayName", HttpUtility.UrlEncode(Convert.ToString(rv.Attributes["DisplayName"]), System.Text.Encoding.UTF8));
        this.Response.SetCookie(cookie);
        cookie = new HttpCookie("UserLevel", userLevel.ToString());
        this.Response.SetCookie(cookie);

        string startApp = this.Request.QueryString["StartApp"];
        if (String.IsNullOrEmpty(startApp))
            startApp = System.Web.Configuration.WebConfigurationManager.AppSettings["StartApp"];
        if (String.IsNullOrEmpty(startApp))
            startApp = "YZApp";

        this._litStartApp.Text = String.Format("<script src=\"{0}/MainWindow.js\" type=\"text/javascript\"></script>", startApp);
        this._litStartAppCss.Text = String.Format("<link href=\"{0}/Styles/main.css\" rel=\"stylesheet\" type=\"text/css\" />", startApp);
    }
}
