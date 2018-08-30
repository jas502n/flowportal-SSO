using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BPM;
using BPM.Client;
using System.Windows.Forms;

public partial class YZSoft_Personal_Forms_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this._btnSubmit.OnClientClick = "if(!YZSoft.XForm.Validator.SubmitValidate('Save','')) return false;";

        this._litCaption.Text = Resources.YZStrings.Aspx_ChgPwd_Caption;
        this._litAccount.Text = Resources.YZStrings.Aspx_ChgPwd_Account;
        this._litOrgPwd.Text = Resources.YZStrings.Aspx_ChgPwd_OrgPwd;
        this._litNewPwd.Text = Resources.YZStrings.Aspx_ChgPwd_NewPwd;
        this._litNewPwdCfm.Text = Resources.YZStrings.Aspx_ChgPwd_NewPwdCfm;
        this._btnSubmit.Text = Resources.YZStrings.Aspx_ChgPwd_Submit;
        this._valiPwd.ErrorMessage = Resources.YZStrings.Aspx_ChgPwd_PwdDiff;
    }

    protected override void OnPreRender(EventArgs e)
    {
        using (BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();
            User user = BPM.Client.User.TryGetUser(cn, YZAuthHelper.LoginUserAccount);

            this._labUser.Text = HttpUtility.HtmlEncode(YZStringHelper.GetUserFriendlyName(user.Account, user.DisplayName));
        }

        base.OnPreRender(e);
    }

    protected void _btnSubmit_Click(object sender, EventArgs e)
    {
        string orgPwd = this.txtOldPwd.Text.Trim();
        string newPwd = this.txtNewPwd.Text.Trim();

        using (BPMConnection cn = new BPMConnection())
        {
            try
            {
                cn.WebOpen();
                BPM.Client.User.ChangePassword(cn, YZAuthHelper.LoginUserAccount, orgPwd, newPwd);

                this._labErr.Visible = false;
                this._labInfo.Visible = true;
                this._labInfo.Text = Resources.YZStrings.Aspx_ChgPwd_Success;
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
