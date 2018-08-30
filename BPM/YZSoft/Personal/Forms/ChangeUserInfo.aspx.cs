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
using System.Collections.Generic;
using BPM;
using BPM.Client;

public partial class YZSoft_Personal_Forms_ChangeUserInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this._btnSubmit.OnClientClick = "if(!YZSoft.XForm.Validator.SubmitValidate('Save','')) return false;";

        this._litCaption.Text = Resources.YZStrings.Aspx_AccInfo_Caption;
        this._litAccount.Text = Resources.YZStrings.Aspx_AccInfo_Account;
        this._litDisplayName.Text = Resources.YZStrings.Aspx_AccInfo_DisplayName;
        this._litDesc.Text = Resources.YZStrings.Aspx_AccInfo_Desc;
        this._litSex.Text = Resources.YZStrings.Aspx_AccInfo_Sec;

        this._rdoSex.Items[0].Text = Resources.YZStrings.All_Male;
        this._rdoSex.Items[1].Text = Resources.YZStrings.All_Female;

        this._litBirthday.Text = Resources.YZStrings.Aspx_AccInfo_Birthday;
        this._litHRID.Text = Resources.YZStrings.Aspx_AccInfo_HRID;
        this._litDateHired.Text = Resources.YZStrings.Aspx_AccInfo_DateHired;
        this._litOffice.Text = Resources.YZStrings.Aspx_AccInfo_Office;
        this._litCostCenter.Text = Resources.YZStrings.Aspx_AccInfo_CostCenter;
        this._litPhone.Text = Resources.YZStrings.Aspx_AccInfo_Phone;
        this._litHomePhone.Text = Resources.YZStrings.Aspx_AccInfo_HomePhone;
        this._litMobile.Text = Resources.YZStrings.Aspx_AccInfo_Mobile;
        this._litEMail.Text = Resources.YZStrings.Aspx_AccInfo_EMail;
        this._litWebsite.Text = Resources.YZStrings.Aspx_AccInfo_Website;
        this._btnSubmit.Text = Resources.YZStrings.Aspx_AccInfo_Submit;
    }

    protected override void OnPreRender(EventArgs e)
    {
        using(BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();

            BPM.Client.User user = BPM.Client.User.FromAccount(cn, YZAuthHelper.LoginUserAccount);
            UserInfoSelfMantSetting setting = new UserInfoSelfMantSetting();
            setting.Load(cn);

            this._labUser.Text = HttpUtility.HtmlEncode(YZStringHelper.GetUserFriendlyName(user.Account, user.DisplayName));

            this._txtFullName.Text = user.DisplayName;
            this._txtDesc.Text = user.Description;

            if (user.Sex != Sex.Unknown)
                this._rdoSex.SelectedValue = user.Sex.ToString();

            this._txtBirthday.Text = YZStringHelper.DateToString(user.Birthday);
            this._txtHRID.Text = user.HRID;
            this._txtDateHired.Text = YZStringHelper.DateToString(user.DateHired);
            this._txtOffice.Text = user.Office;
            this._txtCostCenter.Text = user.CostCenter;
            this._txtPhone.Text = user.OfficePhone;
            this._txtHomePhone.Text = user.HomePhone;
            this._txtMobile.Text = user.Mobile;
            this._txtEMail.Text = user.EMail;
            this._txtWebSite.Text = user.WWWHomePage;

            List<WebControl> diasbleControls = new List<WebControl>();

            if (!setting.CanWrite(UserProperty.DisplayName))
                diasbleControls.Add(this._txtFullName);

            if (!setting.CanWrite(UserProperty.Description))
                diasbleControls.Add(this._txtDesc);

            if (!setting.CanWrite(UserProperty.Sex))
                diasbleControls.Add(this._rdoSex);

            if (!setting.CanWrite(UserProperty.Birthday))
                diasbleControls.Add(this._txtBirthday);

            if (!setting.CanWrite(UserProperty.HRID))
                diasbleControls.Add(this._txtHRID);

            if (!setting.CanWrite(UserProperty.DateHierd))
                diasbleControls.Add(this._txtDateHired);

            if (!setting.CanWrite(UserProperty.Office))
                diasbleControls.Add(this._txtOffice);

            if (!setting.CanWrite(UserProperty.CostCenter))
                diasbleControls.Add(this._txtCostCenter);

            if (!setting.CanWrite(UserProperty.OfficePhone))
                diasbleControls.Add(this._txtPhone);

            if (!setting.CanWrite(UserProperty.HomePhone))
                diasbleControls.Add(this._txtHomePhone);

            if (!setting.CanWrite(UserProperty.Mobile))
                diasbleControls.Add(this._txtMobile);

            if (!setting.CanWrite(UserProperty.EMail))
                diasbleControls.Add(this._txtEMail);

            if (!setting.CanWrite(UserProperty.WWWHomePage))
                diasbleControls.Add(this._txtWebSite);

            foreach (WebControl control in diasbleControls)
            {
                control.Attributes["disabled"] = "disabled";
                control.CssClass = "form-input form-input-disabled";
            }
        }

        base.OnPreRender(e);
    }

    protected void _btnSubmit_Click(object sender, EventArgs e)
    {
        DateTime date;

        BPM.Client.User user = new User();
        user.Account = YZAuthHelper.LoginUserAccount;
        user.DisplayName = this._txtFullName.Text;
        user.Description = this._txtDesc.Text;

        if (String.IsNullOrEmpty(this._rdoSex.SelectedValue))
            user.Sex = Sex.Unknown;
        else
            user.Sex = (Sex)Enum.Parse(typeof(Sex), this._rdoSex.SelectedValue);

        //取不到值this._txtBirthday.Text
        if (DateTime.TryParse(this._txtBirthday.Text, out date))
            user.Birthday = date;
        else
            user.Birthday = DateTime.MinValue;

        user.HRID = this._txtHRID.Text;

        if (DateTime.TryParse(this._txtDateHired.Text, out date))
            user.DateHired = date;
        else
            user.DateHired = DateTime.MinValue;

        user.Office = this._txtOffice.Text;
        user.CostCenter = this._txtCostCenter.Text;
        user.OfficePhone = this._txtPhone.Text;
        user.HomePhone = this._txtHomePhone.Text;
        user.Mobile = this._txtMobile.Text;
        user.EMail = this._txtEMail.Text;
        user.WWWHomePage = this._txtWebSite.Text;

        using (BPMConnection cn = new BPMConnection())
        {
            try
            {
                cn.WebOpen();
                BPM.Client.User.Update(cn, YZAuthHelper.LoginUserAccount, user);

                this._labErr.Visible = false;
                this._labInfo.Visible = true;
                this._labInfo.Text = Resources.YZStrings.Aspx_AccInfo_Success;
            }
            catch (Exception exp)
            {
                this._labInfo.Visible = true;
                this._labInfo.Text = Resources.YZStrings.Aspx_AccInfo_Fail;
                this._labErr.Visible = true;
                this._labErr.Text = exp.Message;
            }
        }
    }
}
