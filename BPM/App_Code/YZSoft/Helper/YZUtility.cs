using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;

/// <summary>
/// YZUtility 的摘要说明


/// </summary>
public class YZUtility
{
    public static string EncodeJsString(string s)
    {
        if (String.IsNullOrEmpty(s))
            return s;

        StringBuilder sb = new StringBuilder();
        foreach (char c in s)
        {
            switch (c)
            {
                case '\"':
                    sb.Append("\\\"");
                    break;
                case '\'':
                    sb.Append("\\\'");
                    break;
                case '\\':
                    sb.Append("\\\\");
                    break;
                case '\b':
                    sb.Append("\\b");
                    break;
                case '\f':
                    sb.Append("\\f");
                    break;
                case '\n':
                    sb.Append("\\n");
                    break;
                case '\r':
                    sb.Append("\\r");
                    break;
                case '\t':
                    sb.Append("\\t");
                    break;
                default:
                    int i = (int)c;
                    if (i < 32 || i > 127)
                    {
                        sb.AppendFormat("\\u{0:X04}", i);
                    }
                    else
                    {
                        sb.Append(c);
                    }
                    break;
            }
        }

        return sb.ToString();
    }

    public static string EncodeXMLInnerText(string s)
    {
        return HttpUtility.HtmlEncode(s);
    }

    public static string EncodeMapItemValue(string s)
    {
        if (String.IsNullOrEmpty(s))
            return s;

        StringBuilder sb = new StringBuilder();
        foreach (char c in s)
        {
            switch (c)
            {
                case ';':
                    sb.Append("&_semi");
                    break;
                case '\n':
                    sb.Append("&_rt");
                    break;
                default:
                    sb.Append(c);
                    break;
            }
        }

        return sb.ToString();
    }

    public static string HtmlEncodeBR(string s)
    {
        if (String.IsNullOrEmpty(s))
            return s;

        s = s.Replace("\n","<br/>");
        return s;
    }

    public static string UrlEncode(NameValueCollection queryParams)
    {
        if (queryParams == null)
            return null;

        List<string> pms = new List<string>();
        foreach (String key in queryParams.Keys)
            pms.Add(key + "=" + HttpUtility.UrlEncode(queryParams[key],Encoding.UTF8));

        return String.Join("&",pms.ToArray());
    }

    public static YZUrlBuilder GetFormRedirectUrl(Page page, string formFile)
    {
        try
        {
            if (!VirtualPathUtility.IsAbsolute(formFile))
                formFile = VirtualPathUtility.Combine("~/YZSoft/Forms/XForm/", formFile);
        }
        catch
        {
        }

        YZUrlBuilder builder = YZUrlBuilder.FromPath(page.ResolveClientUrl(formFile));
        foreach (string key in page.Request.QueryString.Keys)
            builder.QueryString[key] = page.Request.QueryString[key];

        return builder;
    }
}
