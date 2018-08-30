<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NotifySetting.aspx.cs" Inherits="YZSoft_Personal_Forms_NotifySetting" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns:xform= "xmlns:xform">
<head id="Head1" runat="server">
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
                        <asp:Literal ID="_litNotify" runat="server"></asp:Literal></td>
                    <td>
                        <aspxform:XCheckBoxList id="_chksProvider" runat="server" RepeatLayout="Flow"></aspxform:XCheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                    </td>
                    <td>
                        <asp:Label id="_labErr" runat="server" visible="False" CssClass='form-label-submit-err'></asp:Label>
                    </td>
                </tr>
            </table>
            <div class="form-footer"><asp:Button id="_btnSubmit" cssClass="form-button" onclick="_btnSubmit_Click" runat="server"></asp:Button></div>
        </div>
    </form>
</body>
</html>
