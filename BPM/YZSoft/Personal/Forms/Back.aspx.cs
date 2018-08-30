using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BPM;
using BPM.Client;
using System.Windows.Forms;

public partial class YZSoft_Personal_Forms_Back : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this._litCaption.Text = Resources.YZStrings.Aspx_GetBack_Title;
        this._btnSubmit.Text = Resources.YZStrings.BPM_GetBack;
    }

    protected override void OnPreRender(EventArgs e)
    {
        using (BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();

            UserCommonInfo userCommonInfo = UserCommonInfo.FromAccount(cn, YZAuthHelper.LoginUserAccount);

            if (userCommonInfo.OutOfOfficeState == OutOfOfficeState.InOffice)
            {
                this._litJS.Text = String.Format("SetLinkText('leave','{0}');", Resources.YZStrings.BPM_Default_OutofOffice);

                this._litCaption.Text = Resources.YZStrings.Aspx_CancelLeave_SuccessTitle;
                this._litMsg.Text = Resources.YZStrings.Aspx_CancelLeave_SuccessMessage;
                this._btnSubmit.Text = Resources.YZStrings.Aspx_CancelLeave_SuccessSubmit;
                this._btnSubmit.OnClientClick = "window.location.href='Leave.aspx';return false;";

            }
            else
            {
                this._litJS.Text = String.Format("SetLinkText('cancelleave','{0}');", Resources.YZStrings.BPM_GetBack);

                string period = String.Empty;
                if (userCommonInfo.OutOfOfficeState == OutOfOfficeState.Period)
                    period = userCommonInfo.OutOfOfficeFrom.ToString("yyyy-MM-dd HH:mm") + " -> " + userCommonInfo.OutOfOfficeTo.ToString("yyyy-MM-dd HH:mm") + "<br/>";

                this._litMsg.Text = String.Format(period + Resources.YZStrings.Aspx_GetBack_Msg, Resources.YZStrings.BPM_GetBack);
            }
        }

        base.OnPreRender(e);
    }

    protected void _btnSubmit_Click(object sender, EventArgs e)
    {
        using (BPMConnection cn = new BPMConnection())
        {
            try
            {
                cn.WebOpen();
                BPM.Client.User.GetBack(cn, YZAuthHelper.LoginUserAccount);
            }
            catch (Exception exp)
            {
                this._labInfo.Visible = true;
                this._labInfo.Text = Resources.YZStrings.Aspx_GetBack_Fail;
                this._labErr.Visible = true;
                this._labErr.Text = exp.Message;
            }
        }
    }
}
