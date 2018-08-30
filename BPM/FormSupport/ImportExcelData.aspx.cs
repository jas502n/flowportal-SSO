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

public partial class FormSupport_ImportExcelData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ClientScriptManager cs = this.Page.ClientScript;

        if (!cs.IsClientScriptIncludeRegistered("Common"))
            cs.RegisterClientScriptInclude("Common", this.ResolveClientUrl("~/Scripts/Common.js"));

        if (!cs.IsClientScriptIncludeRegistered("Mian"))
            cs.RegisterClientScriptInclude("Mian", this.Page.ResolveClientUrl("~/Scripts/Main.js"));

        if (!cs.IsClientScriptIncludeRegistered("FormScript"))
            cs.RegisterClientScriptInclude("FormScript", this.Page.ResolveClientUrl("~/Scripts/Form.js"));

        if (!cs.IsClientScriptIncludeRegistered("ExcelScript"))
            cs.RegisterClientScriptInclude("ExcelScript", this.Page.ResolveClientUrl("~/Scripts/Excel.js"));

        this._bs.UseSubmitBehavior = false;
        this._bs.Text = Resources.BPMResource.Com_OK;
        this._bc.Text = Resources.BPMResource.Com_Close;
        this._lstSheet.Items.Add("Excel Sheet");

        this._edtFile.Attributes.Add("onchange", "UpdateSheetName(this,_lstSheet,_table);");
        this._lstSheet.Attributes.Add("onchange", "OnSheetChange(_edtFile,this,_table);");

        this._bs.OnClientClick = String.Format("F_CloseDialogNBat(mlist,{0},'{1}','');return false;",
            this.Request.QueryString["idx"],
            Resources.BPMResource.DATALIST_AtleastSelOne);
    }
}
