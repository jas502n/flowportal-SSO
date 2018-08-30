<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <title>BPM Form</title> <style>BODY {
	FONT-SIZE: 12px; FONT-FAMILY: verdana
}
TABLE {
	FONT-SIZE: 12px; FONT-FAMILY: verdana; BORDER-COLLAPSE: collapse
}
P {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 12px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; FONT-FAMILY: verdana
}
TD {
	PADDING-RIGHT: 0px; PADDING-LEFT: 2px; PADDING-BOTTOM: 0px
}
TD.NoPadding {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px
}
INPUT {
	HEIGHT: 20px
}
INPUT.UL {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #33ff33 1px solid
}
</style>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <form style="PADDING-RIGHT: 2px; PADDING-LEFT: 55px; PADDING-TOP: 2px" runat="server">
            <!-- Insert content here -->
            <div align="center">
                <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                    <tbody>
                        <tr>
                            <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="20%" height="38">
                                <div align="center">
                                    <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                                </div>
                            </td>
                            <td width="60%">
                                <div align="center">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel18" runat="server" Font-Size="Medium" text="付款申请单" Font-Names="Tahoma" Font-Bold="True"></aspxform:XLabel>
                                    </div>
                                </div>
                            </td>
                            <td width="20%">
                                <aspxform:XLabel id="XLabel19" runat="server" Font-Size="Small" Font-Names="Arial Black" XDataBind="Fin_Applicant.SN"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" colspan="3" height="33">
                                <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;<aspxform:XLabel id="XLabel60" runat="server" text="附件共"></aspxform:XLabel>
                                    <aspxform:XLabel id="XLabel61" runat="server" Width="30px"></aspxform:XLabel>
                                    <aspxform:XLabel id="XLabel62" runat="server" text="页"></aspxform:XLabel>
                                </div>
                            </td>
                        </tr>
                        <tr>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                    <tbody>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="110" bgcolor="transparent" height="23">
                                <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" size="2">
                                <aspxform:XLabel id="_Location" runat="server" text="申请日期" ForeColor="Gray"></aspxform:XLabel>
                                </font></span></span></span></td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="265" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox2" runat="server" BackColor="#F0F0F0" XDataBind="Fin_Applicant.AppDate" BorderStyle="None" ReadOnly="True" width="240px" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="90" bgcolor="transparent">
                                <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                <aspxform:XLabel id="XLabel2" runat="server" text="申请单号" ForeColor="Gray"></aspxform:XLabel>
                                </span></td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="260" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox1" runat="server" BackColor="#F0F0F0" XDataBind="Fin_Applicant.SN" BorderStyle="None" ReadOnly="True" width="240px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2" height="24">
                                <span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" color="black" size="2">
                                <aspxform:XLabel id="PerInfo" runat="server" text="负责人"></aspxform:XLabel>
                                </font></span></span></td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2">
                                <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><font color="black">
                                <aspxform:XLabel id="XLabel3" runat="server" text="代理人"></aspxform:XLabel>
                                </font></span></td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="26">
                                <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                <aspxform:XLabel id="XLabel4" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                                </span></td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox3" runat="server" BackColor="#F0F0F0" XDataBind="Fin_Applicant.Applicant" BorderStyle="None" ReadOnly="True" width="240px" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                                <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt">
                                <aspxform:XLabel id="XLabel5" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                                </span></td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox16" runat="server" BackColor="#F0F0F0" XDataBind="Fin_Applicant.Sub_Name" BorderStyle="None" ReadOnly="True" width="240px" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                                <aspxform:XLabel id="XLabel6" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                                <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox10" runat="server" BackColor="#F0F0F0" XDataBind="Fin_Applicant.Dept" BorderStyle="None" ReadOnly="True" width="240px" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                                <aspxform:XLabel id="XLabel7" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                                <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox11" runat="server" BackColor="#F0F0F0" XDataBind="Fin_Applicant.Sub_Dept" BorderStyle="None" ReadOnly="True" width="240px" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" align="middle" bgcolor="white" colspan="2" height="28">
                                <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="Fin_Applicant.HRID" width="14px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="Fin_Applicant.Sub_HRID" width="14px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="Fin_Payee.Bank_Name" width="17px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                <aspxform:XDateTimePicker id="XDateTimePicker2" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="v1" Width="24px" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" XSubType="date" XType="datetime" HiddenExpress="1" onchange="javascript:XFormOnChange(this);" Express="Fin_Applicant.AppDate"></aspxform:XDateTimePicker>
                                <aspxform:XDateTimePicker id="XDateTimePicker3" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="var" Width="16px" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" XSubType="date" XType="datetime" HiddenExpress="1" onchange="javascript:XFormOnChange(this);" Express="javascript('date2str',v2)"></aspxform:XDateTimePicker>
                                <aspxform:XDateTimePicker id="XDateTimePicker4" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="v2" Width="24px" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" XSubType="date" XType="datetime" HiddenExpress="1" onchange="javascript:XFormOnChange(this);" Express="Fin_Applicant.AppDate"></aspxform:XDateTimePicker>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <aspxform:XLabel id="XLabel77" runat="server" text="是否为质量费用" ForeColor="Red"></aspxform:XLabel>
                            </td>
                            <td>
                                <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="Fin_Applicant.QualityYN" RepeatDirection="Horizontal">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem>否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                            <td>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ValidationGroup="Star" ControlToValidate="XRadioButtonList4" ErrorMessage="请选择是否为质量费用报销！" Display="None">质量费用</aspxform:XRequiredFieldValidator>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                    <tbody>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="6" height="24">
                                <aspxform:XLabel id="XLabel12" runat="server" text="付款明细"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="74" bgcolor="transparent" height="24">
                                <span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" size="2">
                                <aspxform:XLabel id="XLabel1" runat="server" text="类型" ForeColor="Gray"></aspxform:XLabel>
                                </font></span></span></td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
                                <span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" size="2">
                                <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="Fin_Payee.Invoice" Width="100%" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True">有发票付款</asp:ListItem>
                                    <asp:ListItem>无发票付款</asp:ListItem>
                                    <asp:ListItem>之前有发票付后续款</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                </font></span></span><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" size="2"></font></span></span></span></td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="24">
                                <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" size="2">
                                <aspxform:XLabel id="XLabel9" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                                </font></span></span></span></td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="266" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="Fin_Payee.Payee" width="240px" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="104">
                                <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt">
                                <aspxform:XLabel id="XLabel75" runat="server" text="账号所属省"></aspxform:XLabel>
                                </span></span></span></span></td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="122" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="Fin_Payee.App_Bank_Province" Width="96px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False">广东省</aspxform:XTextBox>
                            </td>
                            <td width="39">
                                <aspxform:XLabel id="XLabel76" runat="server" text="所属市"></aspxform:XLabel>
                            </td>
                            <td width="117" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="Fin_Payee.App_Bank_City" width="98px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Height="22px">深圳市</aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                                <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt">
                                <aspxform:XLabel id="XLabel15" runat="server" text="开户行" ForeColor="Gray"></aspxform:XLabel>
                                </span></span></span></span></span></span></span></td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" valign="bottom" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="Fin_Payee.BankName" width="240px" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                                <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt">
                                <aspxform:XLabel id="XLabel14" runat="server" text="账号" ForeColor="Gray"></aspxform:XLabel>
                                </span></span></span></span></span></span></span></td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="3">
                                <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="Fin_Payee.Account" width="240px" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                                <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                <aspxform:XLabel id="XLabel16" runat="server" text="付款金额" ForeColor="Gray"></aspxform:XLabel>
                                </span></span></td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="Fin_Payee.Amount" BorderStyle="None" width="240px" BorderWidth="1" BorderColor="#DCDCDC" Format="type:currency;.2"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                                <aspxform:XLabel id="XLabel13" runat="server" text="发票金额" ForeColor="Gray" HiddenExpress="Fin_Payee.Invoice!='有发票付款'"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="3">
                                <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="Fin_Payee.Invoice_Amount" ReadOnly="True" width="240px" BorderWidth="1px" BorderColor="#DCDCDC" HiddenExpress="Fin_Payee.Invoice!='有发票付款'" Express="if(Fin_Payee.Invoice!='有发票付款',0,SUM(Fin_PInvoice_Info.Amount))" Format="type:currency;.2" DisableExpress="Fin_Payee.Invoice!='有发票付款'"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="NoPadding" colspan="6">
                                <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" dynamicarea="2,1" hiddenexpress="Fin_Payee.Invoice!='有发票付款'">
                                    <tbody>
                                        <tr>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="5" height="22">
                                                <aspxform:XLabel id="XLabel63" runat="server" text="发票明细"></aspxform:XLabel>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2">
                                                <div align="right">
                                                    <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" HiddenExpress="Global.StepName!='开始'" TableName="Fin_PInvoice_Info" OnClientClick="XFormShell.XFormAgent.AppendBlock(this,'Fin_ClaimingExpenses_Info');return false;" PrintOut="False" Text="增加发票明细"></aspxform:XAddBlockButton>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="39" height="23">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel64" runat="server" text="序号"></aspxform:XLabel>
                                                </div>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="166">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel67" runat="server" text="费用类别"></aspxform:XLabel>
                                                </div>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="137">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel65" runat="server" text="发票类型"></aspxform:XLabel>
                                                </div>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="157">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel70" runat="server" text="商品名称"></aspxform:XLabel>
                                                </div>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="87">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel66" runat="server" text="总金额"></aspxform:XLabel>
                                                </div>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="75">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel68" runat="server" Text="不含税价"></aspxform:XLabel>
                                                </div>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="55">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel69" runat="server" text="税金"></aspxform:XLabel>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="25">
                                                <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="37px" BorderWidth="1px" BorderColor="Gainsboro" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid">
                                                <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="Fin_PInvoice_Info.Type" Width="155px" onchange="javascript:XFormOnChange(this);" ValueColumn="No" DisplayColumn="Name" XDataSource="TableName:Fin_R_KM" DataMap="Name->Fin_PInvoice_Info.T_Name">
                                                    <asp:ListItem>未绑定</asp:ListItem>
                                                </aspxform:XDropDownList>
                                                <aspxform:XTextBox id="XTextBox38" runat="server" XDataBind="Fin_PInvoice_Info.T_Name" width="7px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid">
                                                <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="Fin_PInvoice_Info.IType" Width="132px" onchange="javascript:XFormOnChange(this);" XDataSource="XDataSource">
                                                    <asp:ListItem Value="0">非增值税专用发票</asp:ListItem>
                                                    <asp:ListItem Value="1">增值税专用发票</asp:ListItem>
                                                </aspxform:XDropDownList>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid">
                                                <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="Fin_PInvoice_Info.Goods" width="153px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid">
                                                <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="Fin_PInvoice_Info.Amount" width="85px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Format="type:currency;.2"></aspxform:XTextBox>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid">
                                                <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="Fin_PInvoice_Info.Amount_nt" width="73px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="Fin_PInvoice_Info.IType==0" Express="if(Fin_PInvoice_Info.IType==0,0,'')" Format="type:currency;.2"></aspxform:XTextBox>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid">
                                                <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="Fin_PInvoice_Info.Tax" ReadOnly="True" width="53px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="Fin_PInvoice_Info.IType==0" Express="if(Fin_PInvoice_Info.IType==0,0,Fin_PInvoice_Info.Amount-Fin_PInvoice_Info.Amount_nt)" Format="type:currency;.2"></aspxform:XTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="BORDER-TOP: medium none" bgcolor="#d1dedf" colspan="7" height="14">
                                                &nbsp;&nbsp;&nbsp; 
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="24">
                                <aspxform:XLabel id="XLabel44" runat="server" text="币种" ForeColor="Gray"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="Fin_Payee.Unit" ValueColumn="Unit_EN" DisplayColumn="Unit" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->Fin_Payee.Rate">
                                    <asp:ListItem>未绑定</asp:ListItem>
                                </aspxform:XDropDownList>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                                <aspxform:XLabel id="XLabel43" runat="server" text="预计取回发票日期" ForeColor="Gray" HiddenExpress="Fin_Payee.Invoice!='无发票付款'"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="3">
                                <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="Fin_Payee.Date" Width="240px" BorderStyle="Groove" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="Fin_Payee.Invoice!='无发票付款'" DisableExpress="Fin_Payee.Invoice!='无发票付款'"></aspxform:XDateTimePicker>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                                <aspxform:XLabel id="XLabel10" runat="server" text="附件" ForeColor="Gray"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
                                <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="Fin_Payee.Attachment"></aspxform:XMSNAttachments>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="26">
                                <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                <aspxform:XLabel id="XLabel11" runat="server" text="付款原因" ForeColor="Gray"></aspxform:XLabel>
                                </span></td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
                                <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="6" height="95">
                                <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="Fin_Payee.Reason" width="100%" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Height="89px" TextMode="MultiLine" Rows="4"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="24">
                                <aspxform:XLabel id="XLabel48" runat="server" text="挂账金额" ForeColor="Gray"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="Fin_Payee.Amount_GZ" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="if(Fin_Payee.Invoice=='无发票付款',Fin_Payee.Amount,(if(Fin_Payee.Invoice=='有发票付款',Fin_Payee.Amount+if(Fin_Payee.Total=='',0,Fin_Payee.Total)+if(Fin_Payee.Amount_C==''||Fin_Payee.Amount_C<0,0,Fin_Payee.Amount_C)+if(Fin_Payee.Amount_P==''||Fin_Payee.Amount_P<0,0,Fin_Payee.Amount_P)-Fin_Payee.Invoice_Amount,Fin_Payee.Amount+if(Fin_Payee.Amount_C==''||Fin_Payee.Amount_C>0,0,Fin_Payee.Amount_C)+if(Fin_Payee.Amount_P==''||Fin_Payee.Amount_P>0,0,Fin_Payee.Amount_P))))" Format="type:currency;.2" DisableExpress="Global.StepName!='财务审核'"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="4">
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                    <tbody>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="112" height="23">
                                <aspxform:XLabel id="XLabel17" runat="server" text="所属公司" Width="48px" ForeColor="Gray"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="3">
                                <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="Fin_Applicant.Company" ValueColumn="Code" DisplayColumn="Name" XDataSource="TableName:Fin_R_Company">
                                    <asp:ListItem>未绑定</asp:ListItem>
                                </aspxform:XDropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="24">
                                <aspxform:XLabel id="XLabel20" runat="server" text="挂账" ForeColor="Gray"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="254" bgcolor="#f0f0f0">
                                <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="Fin_Payee.GZ" Width="100%" RepeatDirection="Horizontal">
                                    <asp:ListItem>挂个人</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="挂收款单位">挂收款单位</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                            <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="180" bgcolor="#f0f0f0">
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="180" bgcolor="#f0f0f0">
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress="Global.StepName!='准备打款'">
                    <tbody>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="115" height="22">
                                <aspxform:XLabel id="XLabel47" runat="server" text="付款银行" ForeColor="Gray"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="642" bgcolor="#f0f0f0">
                                <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="Fin_Payee.Bank_Acc" ValueColumn="No" DisplayColumn="Name" XDataSource="TableName:Fin_R_Cash" DataMap="Name->Fin_Payee.Bank_Name">
                                    <asp:ListItem>未绑定</asp:ListItem>
                                </aspxform:XDropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="24">
                                <aspxform:XLabel id="XLabel46" runat="server" text="实际付款金额" ForeColor="Gray"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="Fin_Payee.Amount_Act" BorderStyle="Groove" width="122px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Express="Fin_Payee.Amount" Format="type:currency;.2"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="24">
                                <aspxform:XLabel id="XLabel45" runat="server" text="汇率" ForeColor="Gray" Visible="False"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="Fin_Payee.Rate" BorderStyle="Groove" width="122px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Visible="False"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table cellspacing="0" cellpadding="0" width="738" border="0">
                    <tbody>
                        <tr>
                            <td width="736" bgcolor="#d1dedf" height="31">
                                <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="Fin_Payee.Amount_C" BorderStyle="Dotted" width="47px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="sum(if(Fin_CE_Pay_C_Info.State==1,if(Fin_CE_Pay_C_Info.Amount=='',0,Fin_CE_Pay_C_Info.Amount),0))" Height="15px"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox36" runat="server" XDataBind="Fin_Payee.Amount_P" BorderStyle="Dotted" width="47px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="sum(if(Fin_CE_Pay_Info.State==1,if(Fin_CE_Pay_Info.Amount=='',0,Fin_CE_Pay_Info.Amount),0))" Height="16px"></aspxform:XTextBox>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox4" ErrorMessage="收款单位不能为空" Display="None">收款单位</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox6" ErrorMessage="账号不能为空" Display="None">账号</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ValidationGroup="Star" ControlToValidate="XDateTimePicker1" ErrorMessage="请填写预计取回发票的日期！" Display="None" DisableExpress="Fin_Payee.Invoice!='无发票付款'">预计取回发票日期</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox9" ErrorMessage="请填写发票金额！" Display="None" DisableExpress="Fin_Payee.Invoice!='有发票付款'">发票金额</aspxform:XRequiredFieldValidator>
                                <aspxform:XCompareValidator id="XCompareValidator1" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox8" ErrorMessage="付款金额不能大于发票金额和冲抵总额的差！" Display="None" DisableExpress="Fin_Payee.Invoice=='无发票付款'" Operator="LessThanEqual" ValueToCompareExpress="Fin_Payee.Invoice_Amount-if(Fin_Payee.Amount_C=='',0,Fin_Payee.Amount_C)-if(Fin_Payee.Amount_P=='',0,Fin_Payee.Amount_P)-if(Fin_Payee.Total=='',0,Fin_Payee.Total)" Type="Double">付款金额</aspxform:XCompareValidator>
                                <aspxform:XCompareValidator id="XCompareValidator4" runat="server" ValidationGroup="Star" ControlToValidate="XDateTimePicker1" ErrorMessage="预计取回发票日期不能小于当前日期！" Display="None" Operator="GreaterThan" Type="Date" ControlToCompare="XDateTimePicker2">预计取回发票日期</aspxform:XCompareValidator>
                                <aspxform:XCompareValidator id="XCompareValidator5" runat="server" ValidationGroup="Star" ControlToValidate="XDateTimePicker1" ErrorMessage="预计取回发票日期不能超过两个月！" Display="None" Operator="LessThan" Type="Date" ControlToCompare="XDateTimePicker3">预计取回发票日期</aspxform:XCompareValidator>
                                <aspxform:XCompareValidator id="XCompareValidator6" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox44" ErrorMessage="冲抵金额超出了借款！" Display="None" Operator="LessThanEqual" ValueToCompareExpress="(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount)" Type="Double">每单冲抵额验证</aspxform:XCompareValidator>
                                <aspxform:XCompareValidator id="XCompareValidator7" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox32" ErrorMessage="付后续款时，必须有冲抵！" Display="None" DisableExpress="Fin_Payee.Invoice!='之前有发票付后续款'" Operator="LessThanEqual" Type="Double" ValueToCompare="0">挂账金额</aspxform:XCompareValidator>
                                <aspxform:XCompareValidator id="XCompareValidator8" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox8" ErrorMessage="付款金额必须大于0" Display="None" Operator="GreaterThan" Type="Double" ValueToCompare="0.01" CultureInvariantValues="True">付款金额必须大于0</aspxform:XCompareValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox8" ErrorMessage="请填写付款金额！" Display="None">请填写付款金额</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox7" ErrorMessage="请填写开户行" Display="None">请填写开户行</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox5" ErrorMessage="必须填写付款原因" Display="None">必须填写付款原因</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ValidationGroup="Return" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写退回意见！" Display="None">退回重填验证</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ValidationGroup="Reject" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写拒绝理由！" Display="None">拒绝验证</aspxform:XRequiredFieldValidator>
                                <aspxform:XCompareValidator id="XCompareValidator2" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox33" ErrorMessage="无发票付款时，不能有冲抵！" Display="None" DisableExpress="Fin_Payee.Invoice!='无发票付款'" Operator="LessThan" Type="Double" ValueToCompare="0.01">冲抵勾选验证</aspxform:XCompareValidator>
                                <aspxform:XCompareValidator id="XCompareValidator3" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox35" ErrorMessage="无发票付款时，不能有冲抵！" Display="None" DisableExpress="Fin_Payee.Invoice!='无发票付款'" Operator="LessThan" ValueToCompare="0.01">冲抵勾选验证</aspxform:XCompareValidator>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table id="table1" style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" dynamicarea="2,1" datamap="SN->Fin_ClaimingExpenses_LoanInfo.LoanSN;Amount->Fin_ClaimingExpenses_LoanInfo.LoanAmount;Remain->Fin_ClaimingExpenses_LoanInfo.Remain;Reason->Fin_ClaimingExpenses_LoanInfo.Reason;Date->Fin_ClaimingExpenses_LoanInfo.Date;RunningAmount->Fin_ClaimingExpenses_LoanInfo.RunningAmount">
                    <tbody>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" colspan="8" height="24">
                                <font face="Arial" color="black">
                                <aspxform:XLabel id="XLabel59" runat="server" text="个人借款明细 "></aspxform:XLabel>
                                </font></td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="27" bgcolor="transparent" height="25">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel30" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="101" bgcolor="transparent">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel37" runat="server" text="借款单号" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="71" bgcolor="transparent">
                                <div align="center">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel39" runat="server" text="剩余借款" ForeColor="Gray"></aspxform:XLabel>
                                    </div>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="79" bgcolor="transparent">
                                <div align="center">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel21" runat="server" text="在途审批金额" ForeColor="Gray"></aspxform:XLabel>
                                    </div>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="101" bgcolor="transparent">
                                <div align="center">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel38" runat="server" text="剩余需冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                                    </div>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="155">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel49" runat="server" text="事由" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="101" bgcolor="transparent">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel22" runat="server" text="预计还款报销日期" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="78" bgcolor="transparent">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel50" runat="server" text="本次冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="26">
                                <aspxform:XGridLineNo id="XGridLineNo5" runat="server" Font-Bold="True" Width="15px" BorderWidth="1" BorderColor="#DCDCDC">1</aspxform:XGridLineNo>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox40" runat="server" BackColor="White" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanSN" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox42" runat="server" BackColor="White" XDataBind="Fin_ClaimingExpenses_LoanInfo.Remain" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" Format="type:currency;.2"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox14" runat="server" BackColor="White" XDataBind="Fin_ClaimingExpenses_LoanInfo.RunningAmount" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" Format="type:currency;.2"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox46" runat="server" BackColor="White" XDataBind="varloan" BorderStyle="None" width="83px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Express="(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount)" Format="type:currency;.2"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox41" runat="server" BackColor="White" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanAmount" BorderStyle="None" ReadOnly="True" width="13px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" Format="type:currency;.2"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox43" runat="server" BackColor="White" XDataBind="Fin_ClaimingExpenses_LoanInfo.Reason" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XDateTimePicker id="XDateTimePicker5" onclick="MShowDateSelector(this,event,'CN','http://192.168.0.245:8085/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Date" Width="96px" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" XSubType="date" XType="datetime" DisableExpress="1"></aspxform:XDateTimePicker>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.OffsetAmount" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" HiddenExpress="Fin_Payee.Invoice!='有发票付款'" Format="type:currency;.2" DisableExpress="(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount) ==0.00 "></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                                <div align="right">
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid">
                                <aspxform:XTextBox id="XTextBox15" runat="server" BackColor="White" XDataBind="Fin_Payee.LoanAmount" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="sum(Fin_ClaimingExpenses_LoanInfo.Remain)"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox18" runat="server" BackColor="White" XDataBind="Fin_Payee.Amount_Running" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" Express="sum(Fin_ClaimingExpenses_LoanInfo.RunningAmount)"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            </td>
                            <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid">
                                <aspxform:XTextBox id="XTextBox39" runat="server" XDataBind="qq" width="100%" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1" Express="Fin_Payee.LoanAmount - Fin_Payee.Amount_Running"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid">
                                <div align="right">
                                    <aspxform:XLabel id="XLabel51" runat="server" text="合计" Font-Bold="False" ForeColor="Gray" HiddenExpress="Fin_Payee.Invoice!='有发票付款'"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="antiquewhite">
                                <aspxform:XTextBox id="XTextBox45" runat="server" BackColor="AntiqueWhite" XDataBind="Fin_Payee.Total" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" HiddenExpress="Fin_Payee.Invoice!='有发票付款'" Express="sum(Fin_ClaimingExpenses_LoanInfo.OffsetAmount)"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress="qq == 0">
                    <tbody>
                        <tr>
                            <td style="BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="145" height="24">
                                <aspxform:XLabel id="XLabel71" runat="server" text="请选择是否冲抵个人借款" Width="137px" ForeColor="Red"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="587">
                                <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="Fin_Applicant.PersonalLoan" RepeatDirection="Horizontal">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem>否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ValidationGroup="Star" ControlToValidate="XRadioButtonList3" ErrorMessage="您个人借款明细中有待冲抵的款项，请选择是否冲抵！" Display="None" DisableExpress="qq == 0">请选择是否冲抵个人借款</aspxform:XRequiredFieldValidator>
                                <aspxform:XCompareValidator id="XCompareValidator9" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox45" ErrorMessage="您选择了冲抵个人借款,请填写冲抵金额" Display="None" Height="11px" DisableExpress='Fin_Applicant.PersonalLoan !="是"' Operator="GreaterThanEqual" ValueToCompareExpress="bb" Type="Double" ValueToCompare="0.01">本次冲抵金额</aspxform:XCompareValidator>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" dynamicarea="2,1" datamap="SN->Fin_CE_Pay_Info.PaySN;Payee->Fin_CE_Pay_Info.Payee;Amount_GZ->Fin_CE_Pay_Info.Amount;Date->Fin_CE_Pay_Info.Date;Reason->Fin_CE_Pay_Info.Reason" xdatasource="TableName:V_Fin_Pay_Info;Filter:HRID->Fin_Applicant.HRID,Type->Fin_Payee.Invoice">
                    <tbody>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" colspan="7" height="25">
                                <font face="Arial" color="black">
                                <aspxform:XLabel id="XLabel23" runat="server" text="付公司挂个人往来明细"></aspxform:XLabel>
                                </font></td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="39" bgcolor="transparent" height="25">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel29" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="100" bgcolor="transparent">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel31" runat="server" text="付费单号" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="183" bgcolor="transparent">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel32" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="99" bgcolor="transparent">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel33" runat="server" text="预计取回发票日期" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="158" bgcolor="transparent">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel34" runat="server" text="付款事由" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="65" bgcolor="transparent">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel35" runat="server" text="金额" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="72" bgcolor="transparent">
                                <div align="center">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel40" runat="server" text="本次冲抵" ForeColor="Gray"></aspxform:XLabel>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="24">
                                <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Width="100%" BorderWidth="1" BorderColor="#DCDCDC">1</aspxform:XGridLineNo>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox27" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_Info.PaySN" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox28" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_Info.Payee" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XDateTimePicker id="XDateTimePicker6" onclick="MShowDateSelector(this,event,'CN','http://192.168.0.245:8085/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_Pay_Info.Date" Width="96px" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" XSubType="date" XType="datetime" onchange="javascript:XFormOnChange(this);" DisableExpress="1"></aspxform:XDateTimePicker>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox30" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_Info.Reason" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox31" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_Info.Amount" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Format="type:currency;.2"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <div align="center">
                                    <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="Fin_CE_Pay_Info.State" Text=" "></aspxform:XCheckBox>
                                    <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="var2" BorderStyle="Dotted" width="16px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="Fin_CE_Pay_Info.State"></aspxform:XTextBox>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" dynamicarea="2,1" datamap="SN->Fin_CE_Pay_C_Info.PaySN;Payee->Fin_CE_Pay_C_Info.Payee;Amount_GZ->Fin_CE_Pay_C_Info.Amount;Date->Fin_CE_Pay_C_Info.Date;Reason->Fin_CE_Pay_C_Info.Reason" xdatasource="TableName:V_Fin_Pay_C_Info;Filter:HRID->Fin_Applicant.HRID,Type->Fin_Payee.Invoice">
                    <tbody>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" colspan="7" height="25">
                                <aspxform:XLabel id="XLabel24" runat="server" text="付公司挂单位往来明细"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="39" height="26">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel25" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="99">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel26" runat="server" text="付费单号" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="184">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel27" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="98">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel28" runat="server" text="预计取回发票日期" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="154">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel36" runat="server" text="付款事由" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="67">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel41" runat="server" text="金额" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="75">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel42" runat="server" text="本次冲抵" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="24">
                                <aspxform:XGridLineNo id="XGridLineNo3" runat="server" Width="100%" BorderWidth="1" BorderColor="#DCDCDC">1</aspxform:XGridLineNo>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox21" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_C_Info.PaySN" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox22" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_C_Info.Payee" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XDateTimePicker id="XDateTimePicker7" onclick="MShowDateSelector(this,event,'CN','http://192.168.0.245:8085/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_Pay_C_Info.Date" Width="96px" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" XSubType="date" XType="datetime" onchange="javascript:XFormOnChange(this);" DisableExpress="1"></aspxform:XDateTimePicker>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox24" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_C_Info.Reason" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <aspxform:XTextBox id="XTextBox25" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_C_Info.Amount" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Format="type:currency;.2"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                                <div align="center">
                                    <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="Fin_CE_Pay_C_Info.State" Text=" "></aspxform:XCheckBox>
                                    <aspxform:XTextBox id="XTextBox34" runat="server" XDataBind="var1" BorderStyle="Dotted" width="16px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="Fin_CE_Pay_C_Info.State"></aspxform:XTextBox>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress='Global.StepName !=""&amp;&amp;Global.StepName !="开始"'>
                    <tbody>
                        <tr>
                            <td align="right" width="91" height="25">
                                <aspxform:XLabel id="XLabel73" runat="server" text="注意:" Font-Bold="True" ForeColor="Red"></aspxform:XLabel>
                            </td>
                            <td width="643">
                                <aspxform:XLabel id="XLabel74" runat="server" Font-Size="Larger" text="①销售代理费单据②1万元以上的业务招待费单据③金额在2万元以上的其它单据需要总裁书面签批" Width="588px"></aspxform:XLabel>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                    <tbody>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2" height="23">
                                <aspxform:XLabel id="XLabel8" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="2" height="55">
                                <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" PrintOut="False" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="2" height="32">
                                <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="100%" BorderWidth="1" BorderColor="#dcdcdc" CssClass="AA"></aspxform:XSignTrace>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: white 1px solid" valign="bottom" align="right" width="213" height="26">
                                <aspxform:XPrintButton id="XPrintButton1" runat="server" Width="80px" HiddenExpress="Global.StepName =='开始'" Height="20px" PageFooterFormat="提交人:________部门负责人:________初审人:________电子流检查:________总裁审批:________" PageHeaderFormat="\t"></aspxform:XPrintButton>
                            </td>
                            <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" valign="bottom" align="left" width="547">
                                <table cellspacing="0" cellpadding="0" hiddenexpress="Global.StepName =='财务记账'">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->Fin_Applicant.Dept" ProcessBtnCssClass="a" SystemBtnCssClass="a" DorpDownListCssClass="b"></aspxform:XProcessButtonList>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress='Global.StepName !="财务审核"'>
                    <tbody>
                        <tr>
                            <td align="right" width="655" height="25">
                                <aspxform:XLabel id="XLabel72" runat="server" text="是否邮件通知提交人" ForeColor="Red"></aspxform:XLabel>
                            </td>
                            <td width="79">
                                <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="Fin_Applicant.MessageYN" RepeatDirection="Horizontal">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem Selected="True">否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table cellspacing="0" cellpadding="0" width="738" border="0">
                    <tbody>
                        <tr>
                            <td width="242" height="17">
                            </td>
                            <td width="466">
                            </td>
                            <td width="50">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" height="162">
                                <p>
                                    <aspxform:XLabel id="XLabel52" runat="server" Font-Size="Medium" ForeColor="Red" PrintOut="False" Text="付款注意事项:"></aspxform:XLabel>
                                </p>
                                <p>
                                </p>
                                <p>
                                </p>
                                <p>
                                    <aspxform:XLabel id="XLabel53" runat="server" text="1. 提交后请在系统的“历史申请”中将此单打印作为报销单封面附于原始单据前转交至财务部审核。" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    <aspxform:XLabel id="XLabel54" runat="server" text="2. “代理人”为此次付款申请的经办人；“负责人”为最终责任人；" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    <aspxform:XLabel id="XLabel55" runat="server" text="3. “付款原因”栏要详细填写付款原因；“付款金额”必须是大于0的数值；" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    <aspxform:XLabel id="XLabel56" runat="server" text="4. 若“个人借款明细”中的“剩余借款”大于0，请选择“预计还款/报销日期”最早的项目来进行冲抵；" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    &nbsp;&nbsp;&nbsp; 
                                    <aspxform:XLabel id="XLabel57" runat="server" text="在“本次冲抵金额”中填写冲抵金额，此金额应小于或等于本次报销的金额；" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    &nbsp;&nbsp;&nbsp; 
                                    <aspxform:XLabel id="XLabel58" runat="server" PrintOut="False" Text="如不冲抵则无法报销；"></aspxform:XLabel>
                                </p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
    </form>
</body>
</html>
