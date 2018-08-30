<%@ Page Language="C#" autoeventwireup="true" codefile="ChangePassword.aspx.cs" Inherits="YZSoft_Personal_Forms_ChangePassword" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <meta content="IE=EmulateIE8" http-equiv="X-UA-Compatible" />
    <title></title> 
    <link rel="stylesheet" type="text/css" href="../../Forms/Style/YZFormClassic.css" />
</head>
<body class="single-setting-form">
    <form id="form1" runat="server">
        <div class="form-container">
            <div class="form-header"><asp:Literal ID="_litCaption" runat="server"></asp:Literal><asp:Label id="_labInfo" runat="server" visible="False"></asp:Label></div>
            <table class="form-body form-body-noborder">
                <tr>
                    <td class="form-label form-col1">
                        <asp:Literal ID="_litAccount" runat="server"></asp:Literal>
                    </td>
                    <td class="form-label form-label-value">
                        <asp:Label id="_labUser" runat="server" text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                        <asp:Literal ID="_litOrgPwd" runat="server"></asp:Literal>
                    </td>
                    <td>
                        <aspxform:XTextBox id="txtOldPwd" cssClass="form-input" runat="server" TextMode="Password"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                        <asp:Literal ID="_litNewPwd" runat="server"></asp:Literal>
                    </td>
                    <td>
                        <aspxform:XTextBox id="txtNewPwd" cssClass="form-input" runat="server" TextMode="Password"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                        <asp:Literal ID="_litNewPwdCfm" runat="server"></asp:Literal>
                    </td>
                    <td>
                        <aspxform:XTextBox id="txtCfmPwd" cssClass="form-input" runat="server" TextMode="Password"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                    </td>
                    <td>
                        <aspxform:XCompareValidator id="_valiPwd" runat="server" ControlToCompare="txtNewPwd" Display="None" ControlToValidate="txtCfmPwd"></aspxform:XCompareValidator>
                        <asp:Label id="_labErr" runat="server" visible="False" CssClass='form-label-submit-err'></asp:Label>
                    </td>
                </tr>
            </table>
            <div class="form-footer"><asp:Button id="_btnSubmit" cssClass="form-button" onclick="_btnSubmit_Click" runat="server"></asp:Button></div>
        </div>
    </form>
</body>
</html>
