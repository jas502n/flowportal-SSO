
using System;
using System.Collections.Generic;
using System.Configuration;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Joson.SSO.Passport
{
    using Net.Common;
    using System.Data;
    public partial class SSOWebSite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String OAuthSite = ConfigurationManager.AppSettings["OAuthSite"];
                DataSet Ds = DataSetXML.XmlDocumentToDataSet(ConfigurationManager.AppSettings["OAuthSite"]);

                this.RptListSSOWebSite.BindDataSource(Ds.Tables["JosonPost"]);
            }


        }
    }
}