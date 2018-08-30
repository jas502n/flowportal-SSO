using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BPM;
using BPM.Client;
using System.Windows.Forms;

public partial class YZSoft_Personal_Forms_Leave : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this._btnSubmit.OnClientClick = "if(!YZSoft.XForm.Validator.SubmitValidate('Save','')) return false;";

        this._litCaption.Text = Resources.YZStrings.Aspx_Leave_Caption;
        this._litAccount.Text = Resources.YZStrings.Aspx_Leave_Account;
        this._litPeriod.Text = Resources.YZStrings.Aspx_Leave_labPeriod;
        this._chkPeriod.Text = Resources.YZStrings.Aspx_Leave_chkPeriod;
        this._btnSubmit.Text = Resources.YZStrings.Aspx_Leave_Submit;
        this._litStartTime.Text = Resources.YZStrings.Aspx_Leave_StartTime;
        this._litEndTime.Text = Resources.YZStrings.Aspx_Leave_EndTime;
        this._validatorStartTime.ErrorMessage = Resources.YZStrings.Aspx_Leave_Prompt_StartTime;
        this._validatorEndTime.ErrorMessage = Resources.YZStrings.Aspx_Leave_Prompt_EndTime;
        this._validatorTimeCmp.ErrorMessage = Resources.YZStrings.Aspx_Leave_Propmt_Cmp;
    }

    protected override void OnPreRender(EventArgs e)
    {
        using (BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();

            UserCommonInfo userCommonInfo = UserCommonInfo.FromAccount(cn, YZAuthHelper.LoginUserAccount);
            if (userCommonInfo.OutOfOfficeState != OutOfOfficeState.InOffice)
                this.Response.Redirect("Back.aspx");

            User user = BPM.Client.User.TryGetUser(cn, YZAuthHelper.LoginUserAccount);
            this._labUser.Text = HttpUtility.HtmlEncode(YZStringHelper.GetUserFriendlyName(user.Account, user.DisplayName));
        }

        base.OnPreRender(e);
    }

    protected void _btnSubmit_Click(object sender, EventArgs e)
    {
        using (BPMConnection cn = new BPMConnection())
        {
            try
            {
                OutOfOfficeState outOfOfficeState;
                if (this._chkPeriod.Checked)
                    outOfOfficeState = OutOfOfficeState.Period;
                else
                    outOfOfficeState = OutOfOfficeState.Out;

                DateTime dateFrom = DateTime.MinValue;
                DateTime dateTo = DateTime.MinValue;

                if (!String.IsNullOrEmpty(this._dateFrom.Text))
                    dateFrom = DateTime.Parse(this._dateFrom.Text);

                if (!String.IsNullOrEmpty(this._dateTo.Text))
                    dateTo = DateTime.Parse(this._dateTo.Text);

                cn.WebOpen(this);
                BPM.Client.User.SetOutOfOffice(cn, YZAuthHelper.LoginUserAccount, outOfOfficeState, dateFrom, dateTo);
            }
            catch (Exception exp)
            {
                this._labInfo.Visible = true;
                this._labInfo.Text = Resources.YZStrings.Aspx_ChgPwd_Fail;
                this._labErr.Visible = true;
                this._labErr.Text = exp.Message;
            }
        }     
    }
}
