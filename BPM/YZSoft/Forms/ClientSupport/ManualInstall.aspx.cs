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

public partial class ClientSupport_ManualInstall : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Page.Title = Resources.YZStrings.Aspx_MINST_Caption;
        this._labWarnTitle.Text = Resources.YZStrings.Aspx_MINST_WarnTitle;
        this._labWarn1.Text = Resources.YZStrings.Aspx_MINST_Warn1;
        this._labWarn2.Text = Resources.YZStrings.Aspx_MINST_Warn2;
        this._labWarn3.Text = Resources.YZStrings.Aspx_MINST_Warn3;
        this._labWarn4.Text = Resources.YZStrings.Aspx_MINST_Warn4;
        this._labWarn5.Text = Resources.YZStrings.Aspx_MINST_Warn5;
        this._labStepTitle.Text = Resources.YZStrings.Aspx_MINST_StepTitle;
        this._labStep1.Text = Resources.YZStrings.Aspx_MINST_Step1;
        this._labStep2.Text = Resources.YZStrings.Aspx_MINST_Step2;
        this._labStep3.Text = Resources.YZStrings.Aspx_MINST_Step3;
        this._labStep1Desc.Text = Resources.YZStrings.Aspx_MINST_Step1Desc;
        this._labStep2Desc.Text = Resources.YZStrings.Aspx_MINST_Step2Desc;
        this._labStep3Desc.Text = Resources.YZStrings.Aspx_MINST_Step3Desc;
        this._labHelpTitle.Text = Resources.YZStrings.Aspx_MINST_HelpTitle;
        this._labHelp1.Text = Resources.YZStrings.Aspx_MINST_Help1;
    }
}
