using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;

/// <summary>
/// YZSecurityHelper 的摘要说明

/// </summary>
public class YZSecurityHelper
{
    private static string _securitykey = null;

    public static string SecurityKey
    {
        get
        {
            if (YZSecurityHelper._securitykey == null)
            {
                YZSecurityHelper._securitykey = System.Web.Configuration.WebConfigurationManager.AppSettings["SecurityKey"];
                if (String.IsNullOrEmpty(YZSecurityHelper._securitykey))
                    YZSecurityHelper._securitykey = "2wersd99f81fl09ad";
            }

            return YZSecurityHelper._securitykey;
        }
        set
        {
            YZSecurityHelper._securitykey = value;
        }
    }

    public static string GenHash(List<string> values, string key)
    {
        return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(String.Join(",", values.ToArray()) + key, "SHA1").ToLower();
    }

    public static bool CheckHash(List<string> values, string hash, string key)
    {
        if (String.IsNullOrEmpty(hash))
            return false;

        string hash1 = GenHash(values, key);
        return hash == hash1 ? true:false;
    }

    public static string GenTaskAccessToken(int taskid)
    {
        List<string> values = new List<string>();
        values.Add(taskid.ToString());

        return GenHash(values, YZSecurityHelper.SecurityKey);
    }

    public static bool CheckToken(string value, string token)
    {
        List<string> values = new List<string>();
        values.Add(value);

        return CheckHash(values, token, YZSecurityHelper.SecurityKey);
    }

    public static bool CheckTaskAccessToken(int taskid, string hash)
    {
        List<string> values = new List<string>();
        values.Add(taskid.ToString());

        return CheckHash(values, hash, YZSecurityHelper.SecurityKey);
    }

    public static string GenFormAccessHash()
    {
        Page page = HttpContext.Current.Handler as Page;

        List<string> values = new List<string>();
        values.Add(String.Format("tid={0}", page.Request.QueryString["tid"]));
        values.Add(String.Format("pid={0}", page.Request.QueryString["pid"]));
        values.Add(String.Format("var={0}", page.Request.QueryString["var"]));
        values.Add(String.Format("share={0}", page.Request.QueryString["share"]));
        values.Add(String.Format("pn={0}", page.Request.QueryString["pn"]));
        values.Add(String.Format("app={0}", page.Request.QueryString["app"]));
        values.Add(String.Format("state={0}", page.Request.QueryString["state"]));
        values.Add(String.Format("key={0}", page.Request.QueryString["key"]));
        values.Add(String.Format("account={0}", YZAuthHelper.LoginUserAccount));

        return YZSecurityHelper.GenHash(values, YZSecurityHelper.SecurityKey);
    }
}
