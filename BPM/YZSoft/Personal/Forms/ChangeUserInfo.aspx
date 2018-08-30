<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangeUserInfo.aspx.cs" Inherits="YZSoft_Personal_Forms_ChangeUserInfo" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns:xform= "xmlns:xform">
<head id="Head1" runat="server">
    <meta content="IE=EmulateIE8" http-equiv="X-UA-Compatible" />
    <title></title> 
    <link rel="stylesheet" type="text/css" href="../../Forms/Style/YZFormClassic.css" />
</head>
<body class="col4-setting-form">
    <form id="form1" runat="server">
        <div class="form-container">
            <div class="form-header"><asp:Literal ID="_litCaption" runat="server"></asp:Literal><asp:Label id="_labInfo" runat="server" visible="False"></asp:Label></div>
            <table class="form-body form-body-noborder">
                <tr>
                    <td class="form-label">
                        <asp:Literal ID="_litAccount" runat="server"></asp:Literal>
                    </td>
                    <td class="form-label form-label-value">
                        <asp:Label id="_labUser" runat="server" text=""></asp:Label>
                    </td>
                    <td class="muti_row" rowspan="6" colspan="2">
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                        <asp:Literal ID="_litDisplayName" runat="server"></asp:Literal>
                    </td>
                    <td>
                        <aspxform:XTextBox id="_txtFullName" runat="server" cssclass="form-input"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                        <asp:Literal ID="_litDesc" runat="server"></asp:Literal></td>
                    <td>
                        <aspxform:XTextBox id="_txtDesc" runat="server" cssclass="form-input"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                        <asp:Literal ID="_litSex" runat="server"></asp:Literal></td>
                    <td>
                        <asp:RadioButtonList id="_rdoSex" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                        <asp:ListItem Value="Male"></asp:ListItem>
                        <asp:ListItem Value="Female"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                        <asp:Literal ID="_litBirthday" runat="server"></asp:Literal>
                    </td>
                    <td>
                        <aspxform:xdatetimepicker id="_txtBirthday" runat="server" cssclass="form-input"></aspxform:xdatetimepicker>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                        <asp:Literal ID="_litHRID" runat="server"></asp:Literal>
                    </td>
                    <td>
                        <aspxform:XTextBox id="_txtHRID" runat="server" cssclass="form-input"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="form-label form-col1">
                        <asp:Literal ID="_litDateHired" runat="server"></asp:Literal>
                    </td>
                    <td class="form-col2">
                        <aspxform:xdatetimepicker id="_txtDateHired" runat="server" cssclass="form-input"></aspxform:xdatetimepicker>
                    </td>
                    <td class="form-label form-col3">
                        <asp:Literal ID="_litOffice" runat="server"></asp:Literal>
                    </td>
                    <td class="form-col4">
                        <aspxform:XTextBox id="_txtOffice" runat="server" cssclass="form-input"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                        <asp:Literal ID="_litCostCenter" runat="server"></asp:Literal>
                    </td>
                    <td>
                        <aspxform:XTextBox id="_txtCostCenter" runat="server" cssclass="form-input"></aspxform:XTextBox>
                    </td>
                    <td class="form-label">
                        <asp:Literal ID="_litPhone" runat="server"></asp:Literal>
                    </td>
                    <td>
                        <aspxform:XTextBox id="_txtPhone" runat="server" cssclass="form-input"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                        <asp:Literal ID="_litHomePhone" runat="server"></asp:Literal>
                    </td>
                    <td>
                        <aspxform:XTextBox id="_txtHomePhone" runat="server" cssclass="form-input"></aspxform:XTextBox>
                    </td>
                    <td class="form-label">
                        <asp:Literal ID="_litMobile" runat="server"></asp:Literal>
                    </td>
                    <td>
                        <aspxform:XTextBox id="_txtMobile" runat="server" cssclass="form-input"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                        <asp:Literal ID="_litEMail" runat="server"></asp:Literal>
                    </td>
                    <td>
                        <aspxform:XTextBox id="_txtEMail" runat="server" cssclass="form-input"></aspxform:XTextBox>
                    </td>
                    <td class="form-label">
                        <asp:Literal ID="_litWebsite" runat="server"></asp:Literal>
                    </td>
                    <td>
                        <aspxform:XTextBox id="_txtWebSite" runat="server" cssclass="form-input"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                    </td>
                    <td>
                        <asp:Label id="_labErr" runat="server" visible="False" cssclass='form-label-submit-err'></asp:Label>
                    </td>
                </tr>
            </table>
            <div class="form-footer"><asp:Button id="_btnSubmit" cssClass="form-button" onclick="_btnSubmit_Click" runat="server"></asp:Button></div>
        </div>
    </form>
</body>
</html>
