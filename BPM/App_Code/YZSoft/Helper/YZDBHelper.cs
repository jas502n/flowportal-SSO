using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// YZDBHelper 的摘要说明


/// </summary>
public class YZDBHelper
{
    public static DateTime MinDateValue
    {
        get
        {
            return new DateTime(1753, 1, 1, 12, 0, 0);
        }
    }

    public static DateTime MaxDateValue
    {
        get
        {
            return DateTime.MaxValue;
        }
    }
}
