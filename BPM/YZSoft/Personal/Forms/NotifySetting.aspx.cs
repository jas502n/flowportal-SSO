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
using BPM;
using BPM.Client;
using BPM.Client.Notify;

public partial class YZSoft_Personal_Forms_NotifySetting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this._btnSubmit.OnClientClick = "if(!YZSoft.XForm.Validator.SubmitValidate('Save','')) return false;";
        this._litCaption.Text = Resources.YZStrings.Aspx_ChgNotify_Caption;
        this._litAccount.Text = Resources.YZStrings.Aspx_ChgNotify_Account;
        this._litNotify.Text = Resources.YZStrings.Aspx_ChgNotify_Notify;
        this._btnSubmit.Text = Resources.YZStrings.Aspx_ChgNotify_Submit;
    }

    protected override void OnPreRender(EventArgs e)
    {
        using (BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();
            User user = BPM.Client.User.TryGetUser(cn, YZAuthHelper.LoginUserAccount);

            this._labUser.Text = HttpUtility.HtmlEncode(YZStringHelper.GetUserFriendlyName(user.Account, user.DisplayName));

            NotifyProviderInfoCollection provInfos = NotifyManager.GetProviders(cn);
            UserCommonInfo cInfo = UserCommonInfo.FromAccount(cn, YZAuthHelper.LoginUserAccount);

            this._chksProvider.Items.Clear();
            foreach (NotifyProviderInfo provInfo in provInfos)
            {
                ListItem lstItem = new ListItem(provInfo.Name, provInfo.Name);
                lstItem.Selected = !cInfo.RejectedNotifys.Contains(provInfo.Name);
                this._chksProvider.Items.Add(lstItem);
            }
        }

        base.OnPreRender(e);
    }

    protected void _btnSubmit_Click(object sender, EventArgs e)
    {
        BPMObjectNameCollection rejectedNotifys = new BPMObjectNameCollection();
        foreach (ListItem lstItem in this._chksProvider.Items)
        {
            if (!lstItem.Selected)
                rejectedNotifys.Add(lstItem.Value);
        }

        using(BPMConnection cn = new BPMConnection())
        {
            try
            {
                cn.WebOpen();

                BPM.Client.User.SaveNotifySetting(cn, YZAuthHelper.LoginUserAccount, rejectedNotifys);

                this._labErr.Visible = false;
                this._labInfo.Visible = true;
                this._labInfo.Text = Resources.YZStrings.Aspx_ChgNotify_Success;
            }
            catch (Exception exp)
            {
                this._labInfo.Visible = true;
                this._labInfo.Text = Resources.YZStrings.Aspx_ChgNotify_Fail;
                this._labErr.Visible = true;
                this._labErr.Text = exp.Message;
            }
        }
    }
}
