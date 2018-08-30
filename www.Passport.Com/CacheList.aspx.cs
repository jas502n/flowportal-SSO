using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using Joson.SSOSite.OAuth;
 

namespace Joson.SSO.Passport   
{
    public partial class CacheList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //CacheManager.TokenInsert("123", true, DateTime.Now);

                DataTable dt = TokenCache.GetCacheTable();
                if (dt != null)
                {
                    this.gv.DataSource = dt;
                    this.gv.DataBind();
                }
            }
        }
    }
}
