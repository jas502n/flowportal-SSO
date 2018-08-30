using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using BPM.Client;
using BPM;

public partial class YZSoft_Login_SSO : System.Web.UI.Page
{

    public string userid, password;

    protected void Page_Load(object sender, EventArgs e)
    {
        userid = Request["uid"];
        password = Request["PWD"];

        JsonItem rv = new JsonItem();

        string realAccount = null;

        try
        {
            if (BPMConnection.Authenticate(YZAuthHelper.BPMServerName, YZAuthHelper.BPMServerPort, userid, password, out realAccount))
            {
                YZAuthHelper.SetAuthCookie(realAccount);
                YZAuthHelper.ClearLogoutFlag();

                rv.Attributes["success"] = true;
                rv.Attributes["text"] = "登陆成功";

            }
        }
        catch (Exception ex)
        {
            rv.Attributes["success"] = true;
            rv.Attributes["text"] = ex.Message;
        }

    }
}