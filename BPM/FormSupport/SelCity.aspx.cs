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
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Text;

public partial class VoithFormSupport_SelMaterial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Page.ClientScript.RegisterClientScriptInclude("MyScript", this.ResolveClientUrl("../Scripts/Main.js"));
        this.Page.ClientScript.RegisterClientScriptInclude("FormScript", this.ResolveClientUrl("../Scripts/Form.js"));

        //if (String.IsNullOrEmpty(Request.QueryString["bat"]))
        //{
        //    this._bs.OnClientClick = String.Format("alert(mlist);F_CloseDialogA(mlist,{0},'{1}','{2}');return false;",
        //        this.Request.QueryString["idx"],
        //        "至少选择一个城市",
        //        "只能选择一个城市");
        //}
        //else
        //{
        //    this._bs.OnClientClick = String.Format("F_CloseDialogLM(mlist,{0},'{1}','{2}');return false;",
        //        this.Request.QueryString["idx"],
        //        this.Request.QueryString["table"],
        //        Resources.BPMResource.SelMember_Msg_AtleastSelOne);
        //}

        this._list.TreeView = this._tree.TreeView;

        string cnString = WebConfigurationManager.ConnectionStrings["BPMDB"].ConnectionString;
        SqlConnection cn = new SqlConnection(cnString);
        try
        {
            cn.Open();

            this._tree.GenerateTree(cn);
            this._list.GenerateList(cn);
        }
        finally
        {
            cn.Close();
        }
    }
}
