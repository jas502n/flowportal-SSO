<%@ Page Language="C#" autoeventwireup="true" codefile="Leave.aspx.cs" Inherits="YZSoft_Personal_Forms_Leave" %>
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
            <table class="form-body form-body-noborder" style="width:500px;">
                <tr>
                    <td class="form-label form-col1">
                        <asp:Literal ID="_litAccount" runat="server"></asp:Literal>
                    </td>
                    <td class="form-label form-label-value" colspan="2">
                        <asp:Label id="_labUser" runat="server" text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="form-label" rowspan="3">
                        <asp:Literal ID="_litPeriod" runat="server"></asp:Literal>
                    </td>
                    <td colspan="2">
                        <aspxform:XCheckBox id="_chkPeriod" cssClass="form-chkbox"  XDataBind="varChk" runat="server"></aspxform:XCheckBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:65px;padding-left:30px"><asp:Literal ID="_litStartTime" runat="server"></asp:Literal></td>
                    <td style=" white-space:nowrap">
                        <aspxform:XDatetimePicker id="_dateFrom" cssClass="form-datetimepicker" DisableExpress="varChk!=1" runat="server" Type="TimeHour"></aspxform:XDatetimePicker>
                    </td>
                </tr>
                <tr>
                    <td style="width:65px;padding-left:30px;"><asp:Literal ID="_litEndTime" runat="server"></asp:Literal></td>
                    <td style=" white-space:nowrap">
                        <aspxform:XDatetimePicker id="_dateTo" cssClass="form-datetimepicker" DisableExpress="varChk!=1" runat="server" Type="TimeHour"></aspxform:XDatetimePicker>
                    </td>
                </tr>
                <tr>
                    <td class="form-label">
                    </td>
                    <td colspan="2">
                        <aspxform:XRequiredFieldValidator id="_validatorStartTime" runat="server" ControlToValidate="_dateFrom" DisableExpress="varChk!=1" Display="none" ErrorMessage="RequiredFieldValidator"></aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="_validatorEndTime" runat="server" ControlToValidate="_dateTo" DisableExpress="varChk!=1" Display="none" ErrorMessage="RequiredFieldValidator"></aspxform:XRequiredFieldValidator>
                        <aspxform:XCompareValidator id="_validatorTimeCmp" runat="server" DisableExpress="varChk!=1" Display="None" ErrorMessage="CompareValidator" ControlToCompare="_dateFrom" ControlToValidate="_dateTo" Operator="GreaterThan"></aspxform:XCompareValidator>
                        <asp:Label id="_labErr" runat="server" visible="False" CssClass='form-label-submit-err'></asp:Label>
                    </td>
                </tr>
            </table>
            <div class="form-footer"><asp:Button id="_btnSubmit" cssClass="form-button" onclick="_btnSubmit_Click" runat="server"></asp:Button></div>
        </div>
    </form>
</body>
</html>
