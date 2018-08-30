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
TD.header {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BACKGROUND: url(~/image/logo.gif) no-repeat
}
INPUT {
	HEIGHT: 20px
}
INPUT.UL {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #33ff33 1px solid
}
.B {
	WIDTH: 80px; hight: 20px:
}
.D {
	hight: 18px
}
TABLE.AA {
	BORDER-COLLAPSE: separate; BACKGROUND-COLOR: #d1dedf
}
TABLE.AA TD {
	BORDER-TOP: white 0px solid; BORDER-LEFT: white 0px solid
}
TABLE.AA TR.HeaderRow {
	BACKGROUND-COLOR: #ffffff
}
TABLE.AA TR.HeaderRow TD {
	HEIGHT: 29px; TEXT-ALIGN: center
}
TABLE.AA TR.HeaderRow TD.NoColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.StepNameColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.SignColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.ActionColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.DateColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.NoColumn {
	PADDING-RIGHT: 8px; PADDING-LEFT: 8px
}
TABLE.AA TR.HeaderRow TD.CommentsColumn {
	WIDTH: 99%
}
TABLE.AA TR.DataRow {
	BACKGROUND-COLOR: #f0f0f0
}
TABLE.AA TR.DataRow TD {
	HEIGHT: 41px; TEXT-ALIGN: center
}
TABLE.AA TR.DataRow TD.NoCell {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.StepNameCell {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.SignCell {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.ActionCell {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.DateCell {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.NoCell {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px
}
TABLE.AA TR.DataRow TD.CommentsCell {
	TEXT-ALIGN: left
}
TABLE.AA TR.Running TD.NoCell {
	BACKGROUND-COLOR: #e0efe6
}
TABLE.AA TR.Running TD.SignCell {
	COLOR: #999999
}
.TextBoxPink {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: pink 1px solid
}
.TextBox {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid
}
</style>
    <style type="text/css" rel="stylesheet" href="~/Style/Skyworth.css"></style>
</head>
<body>
    <form runat="server" style="padding-right: 2px; padding-bottom: inherit; padding-left: 55px; padding-top: 2px">
        <!-- Insert content here -->
        <div align="center">
            <table style="BORDER-LEFT: medium none; BORDER-TOP: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
                <tbody>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="256">
                            <asp:Image id="Image2" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="474" align="center">
                            <aspxform:XLabel id="XLabel18" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="264" align="right">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XLabel id="XLabel19" runat="server" XDataBind="BM_Applicant.SN"></aspxform:XLabel>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="50" colspan="3" align="center">
                            <div align="center">
                                <aspxform:XLabel id="XLabel14" runat="server" Font-Names="Tahoma" Font-Size="Medium" Font-Bold="True" Text="业务用品申请单"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="87" align="right">
                            <aspxform:XLabel id="XLabel1" runat="server" text="申请日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" bgcolor="#f0f0f0" width="310" colspan="2">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="BS_Applicant.AppDate" BackColor="#F0F0F0" BorderStyle="None" BorderColor="Gainsboro" BorderWidth="1px" width="231px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></font></span></span></font></span></span></font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="78" align="right">
                            <aspxform:XLabel id="XLabel15" runat="server" text="单号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="315">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="BS_Applicant.SN" BackColor="#F0F0F0" BorderStyle="None" BorderColor="Gainsboro" BorderWidth="1px" width="225px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="22" colspan="2" align="center">
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="PerInfo" runat="server" text="申请人"></aspxform:XLabel>
                            </font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2" align="center">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><font color="black">
                            <aspxform:XLabel id="XLabel2" runat="server" text="代理人"></aspxform:XLabel>
                            </font></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="45" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel3" runat="server" text="姓名:" ForeColor="Gray"></aspxform:XLabel>
                            </span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="307">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="BS_Applicant.Name" BackColor="#F0F0F0" BorderStyle="None" BorderColor="#DCDCDC" BorderWidth="1" width="175px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="BS_Applicant.HRID" BorderColor="Gainsboro" BorderWidth="1px" width="42px" Max="0" Min="0" HiddenInput="False" Height="23px" HiddenExpress="1" ValueToDisplayText Value></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="78" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                            <aspxform:XLabel id="XLabel4" runat="server" text="姓名:" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="315">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="BS_Applicant.Sub_Name" BackColor="#F0F0F0" BorderStyle="None" BorderColor="Gainsboro" BorderWidth="1px" width="175px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="BS_Applicant.Sub_HRID" BorderColor="#DCDCDC" BorderWidth="1" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" align="right">
                            <aspxform:XLabel id="XLabel5" runat="server" text="部门:" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="BS_Applicant.Dept" BackColor="#F0F0F0" BorderStyle="None" BorderColor="#DCDCDC" BorderWidth="1" width="175px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" align="right">
                            <aspxform:XLabel id="XLabel6" runat="server" text="部门:" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="BS_Applicant.Sub_Dept" BackColor="#F0F0F0" BorderStyle="None" BorderColor="Gainsboro" BorderWidth="1px" width="175px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel23" runat="server" text="基础信息" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel56" runat="server" text="招待客户:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="BS_Applicant.Customer" BorderColor="Gainsboro" width="526px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请填写招待客户栏位!" ControlToValidate="XTextBox17" ValidationGroup="开始">招待客户</aspxform:XRequiredFieldValidator>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel7" runat="server" text="用途:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox6" runat="server" XDataBind="BS_Applicant.Reason" BorderColor="Gainsboro" width="526px" Max="0" Min="0" HiddenInput="False" Height="24px" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请填写用途!" ControlToValidate="XTextBox6" ValidationGroup="开始">用途</aspxform:XRequiredFieldValidator>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="87" align="right">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="请选择付款方!" ControlToValidate="XRadioButtonList2" ValidationGroup="开始">付款方</aspxform:XRequiredFieldValidator>
                            <aspxform:XLabel id="XLabel17" runat="server" text="付款方:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" width="138" colspan="2">
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="BS_Applicant.Drawee" Width="159px" RepeatDirection="Horizontal">
                                <asp:ListItem>公司付款</asp:ListItem>
                                <asp:ListItem>私人付款</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            </font></span></span></font></span></span></font></span></span></font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="78" align="right">
                            <aspxform:XLabel id="XLabel20" runat="server" text="付款方式:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="315">
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="aa" HiddenExpress='BS_Applicant.Drawee !="公司付款"' RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">公司统一结帐</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="BS_Applicant.Termsofpayment" HiddenExpress='BS_Applicant.Drawee !="私人付款"' RepeatDirection="Horizontal">
                                <asp:ListItem>个人转账 </asp:ListItem>
                                <asp:ListItem>现金</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="请选择付款方式!" ControlToValidate="XRadioButtonList5" ValidationGroup="开始" DisableExpress='BS_Applicant.Drawee !="私人付款"'>付款方式</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel24" runat="server" text="订单信息" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel25" runat="server" text="选购礼品类型:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid" width="224">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XCheckBoxList id="XCheckBoxList1" runat="server" XDataBind="BS_Applicant.GiftTypes" RepeatDirection="Horizontal">
                                <asp:ListItem>创维酷开手机</asp:ListItem>
                                <asp:ListItem>酒</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XCheckBoxList>
                            <aspxform:XTextBox id="XTextBox18" runat="server" BorderColor="Gainsboro" BorderWidth="1px" width="23px" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" Express="BS_Applicant.GiftTypes"></aspxform:XTextBox>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="480">
                            <aspxform:XHyperLink id="XHyperLink1" runat="server" HiddenExpress='if(BS_Applicant.GiftTypes=="创维酷开手机" || BS_Applicant.GiftTypes=="" ,1,0)' NavigateUrl="http://cclmy.com/tao/jiuxian/index.html" Target="_blank">酒仙网</aspxform:XHyperLink>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="请选择选购礼品类型!" ControlToValidate="XTextBox18" ValidationGroup="开始">选购礼品类型</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="请选择手机型号!" ControlToValidate="XTextBox20" ValidationGroup="开始" DisableExpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="酒,其他" ,1,0)'>手机型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="请填写购买手机数量!" ControlToValidate="XTextBox2" ValidationGroup="开始" DisableExpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="酒,其他" ,1,0)'>手机数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" Display="None" ErrorMessage="请填写购买手机价格!" ControlToValidate="XTextBox3" ValidationGroup="确认需求" DisableExpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="酒,其他" ,1,0)'>手机价格</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="酒,其他" ,1,0)'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="740" colspan="4">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="XLabel8" runat="server" text="创维酷开手机" Font-Bold="True"></aspxform:XLabel>
                            </font></span></span></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" colspan="4">
                            <table border="0" cellspacing="0" cellpadding="0" width="797" dynamicarea="1,1">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="29">
                                            <aspxform:XLabel id="XLabel9" runat="server" text="序号" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="105" align="center">
                                            <aspxform:XLabel id="XLabel10" runat="server" text="手机型号" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="193" align="center">
                                            <aspxform:XLabel id="XLabel11" runat="server" text="数量" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="196" align="center">
                                            <aspxform:XLabel id="XLabel12" runat="server" text="价格" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="258" align="center">
                                            <aspxform:XLabel id="XLabel16" runat="server" text="备注" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="29" align="center">
                                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Bold="True" BorderStyle="None" BorderColor="Gainsboro" BorderWidth="1px" Width="20px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="BS_ApplicantBody_MPhone.Model" width="100%" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="BS_ApplicantBody_MPhone.Num" width="100%" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox3" runat="server" Font-Bold="True" XDataBind="BS_ApplicantBody_MPhone.Price" width="182px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" DisableExpress='Global.StepName =="开始" ||  Global.StepName =="申请人确认"'></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="BS_ApplicantBody_MPhone.PriceAll" BorderColor="Gainsboro" BorderWidth="1px" width="24px" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" Express="BS_ApplicantBody_MPhone.Num*BS_ApplicantBody_MPhone.Price"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="BS_ApplicantBody_MPhone.Remark" width="240px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="23">
                                        </td>
                                        <td>
                                        </td>
                                        <td align="right">
                                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                                            <aspxform:XLabel id="XLabel38" runat="server" text="总价合计:"></aspxform:XLabel>
                                            </font></span></span></td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox25" runat="server" Font-Bold="True" XDataBind="BS_Applicant.PriceAll_MPhone" BorderColor="#DCDCDC" width="100%" DisableCssClass="TextBox" CssClass="TextBox" Express="sum(BS_ApplicantBody_MPhone.PriceAll)" ReadOnly="True"></aspxform:XTextBox>
                                        </td>
                                        <td align="center">
                                            <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="添加行" HiddenExpress='Global.StepName !="开始"' TableName="BS_ApplicantBody_MPhone"></aspxform:XAddBlockButton>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="酒,其他" ,1,0)'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel21" runat="server" text="快递地址:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="BS_Applicant.DeliveryAddress_MPhone" BorderColor="Gainsboro" width="526px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" Display="None" ErrorMessage="请填写手机的快递地址!" ControlToValidate="XTextBox23" ValidationGroup="开始" DisableExpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="酒,其他" ,1,0)'>快递地址</aspxform:XRequiredFieldValidator>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="酒,其他" ,1,0)'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel22" runat="server" text="是否采购:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="BS_Applicant.Purchase_MPhone" RepeatDirection="Horizontal" DisableExpress='Global.StepName =="开始" ||  Global.StepName =="申请人确认"'>
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" Display="None" ErrorMessage="请填写手机的是否采购!" ControlToValidate="XRadioButtonList4" ValidationGroup="确认订购单" DisableExpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="酒,其他" ,1,0)'>是否采购</aspxform:XRequiredFieldValidator>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(Global.StepName=="开始",1,if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="酒,其他" ,1,0))'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel41" runat="server" text="预计到货时间:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="BS_Applicant.GetTime_MPhone" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XDateTimePicker>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="酒,其他" ,1,0)'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel39" runat="server" text="备注:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="BS_Applicant.Remark_MPhone" BorderColor="Gainsboro" width="526px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(BS_Applicant.GiftTypes=="创维酷开手机" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="创维酷开手机,其他" ,1,0)'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="801" colspan="4">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="XLabel26" runat="server" text="购酒信息" Font-Bold="True"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" Display="None" ErrorMessage="请填写酒的购酒类别!" ControlToValidate="XDropDownList2" ValidationGroup="开始" DisableExpress='if(BS_Applicant.GiftTypes=="创维酷开手机" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="创维酷开手机,其他" ,1,0)'>购酒类别</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" Display="None" ErrorMessage="请填写酒的名称!" ControlToValidate="XTextBox19" ValidationGroup="开始" DisableExpress='if(BS_Applicant.GiftTypes=="创维酷开手机" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="创维酷开手机,其他" ,1,0)'>酒名</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" Display="None" ErrorMessage="请填写酒的数量!" ControlToValidate="XTextBox21" ValidationGroup="开始" DisableExpress='if(BS_Applicant.GiftTypes=="创维酷开手机" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="创维酷开手机,其他" ,1,0)'>数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" Display="None" ErrorMessage="请填写酒的价格!" ControlToValidate="XTextBox4" ValidationGroup="确认需求" DisableExpress='if(BS_Applicant.GiftTypes=="创维酷开手机" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="创维酷开手机,其他" ,1,0)'>价格</aspxform:XRequiredFieldValidator>
                            </font></span></span></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" height="112" colspan="4">
                            <table border="0" cellspacing="0" cellpadding="0" width="797" dynamicarea="1,1">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="30" width="37">
                                            <aspxform:XLabel id="XLabel27" runat="server" text="序号" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="101" align="center">
                                            <aspxform:XLabel id="XLabel28" runat="server" text="购酒类别" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="234" align="center">
                                            <aspxform:XLabel id="XLabel29" runat="server" text="酒名" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="99" align="center">
                                            <aspxform:XLabel id="XLabel32" runat="server" text="数量" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="114" align="center">
                                            <aspxform:XLabel id="XLabel13" runat="server" text="价格"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="193" align="center">
                                            <aspxform:XLabel id="XLabel33" runat="server" text="备注" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="30" align="center">
                                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Font-Bold="True" BorderStyle="None" BorderColor="Gainsboro" BorderWidth="1px" Width="20px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="BS_ApplicantBody_Liquor.Type" Height="22px" Width="67px" XDataSource="XDataSource" onchange="javascript:XFormOnChange(this);" PromptText="请选择">
                                                <asp:ListItem>葡萄酒</asp:ListItem>
                                                <asp:ListItem>白酒</asp:ListItem>
                                                <asp:ListItem>黄酒</asp:ListItem>
                                                <asp:ListItem>洋酒</asp:ListItem>
                                                <asp:ListItem>保健酒</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="BS_ApplicantBody_Liquor.LiquorName" width="100%" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="BS_ApplicantBody_Liquor.Num" width="78px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox4" runat="server" Font-Bold="True" XDataBind="BS_ApplicantBody_Liquor.Price" width="71px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" DisableExpress='Global.StepName =="开始" ||  Global.StepName =="申请人确认"'></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="BS_ApplicantBody_Liquor.PriceAll" BorderColor="Gainsboro" BorderWidth="1px" width="5px" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" Express="BS_ApplicantBody_Liquor.Num*BS_ApplicantBody_Liquor.Price"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="BS_ApplicantBody_Liquor.Remark" width="142px" Max="0" Min="0" HiddenInput="False" Height="22px" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="23">
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></td>
                                        <td align="right">
                                            <aspxform:XLabel id="XLabel40" runat="server" text="总价合计:"></aspxform:XLabel>
                                        </td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox28" runat="server" Font-Bold="True" XDataBind="BS_Applicant.PriceAll_Liquor" BorderColor="#DCDCDC" width="100%" DisableCssClass="TextBox" CssClass="TextBox" Express="sum(BS_ApplicantBody_Liquor.PriceAll)" ReadOnly="True"></aspxform:XTextBox>
                                        </td>
                                        <td align="center">
                                            <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Text="添加行" HiddenExpress='Global.StepName !="开始"' TableName="BS_ApplicantBody_Liquor"></aspxform:XAddBlockButton>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(BS_Applicant.GiftTypes=="创维酷开手机" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="创维酷开手机,其他" ,1,0)'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel35" runat="server" text="快递地址:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="BS_Applicant.DeliveryAddress_Liquor" BorderColor="Gainsboro" width="526px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" Display="None" ErrorMessage="请填写酒的快递地址!" ControlToValidate="XTextBox11" ValidationGroup="开始" DisableExpress='if(BS_Applicant.GiftTypes=="创维酷开手机" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="创维酷开手机,其他" ,1,0)'>快递地址</aspxform:XRequiredFieldValidator>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(BS_Applicant.GiftTypes=="创维酷开手机" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="创维酷开手机,其他" ,1,0)'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel37" runat="server" text="是否采购:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="BS_Applicant.Purchase_Liquor" RepeatDirection="Horizontal" DisableExpress='Global.StepName =="开始" ||  Global.StepName =="申请人确认"'>
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" Display="None" ErrorMessage="请填写酒的是否采购!" ControlToValidate="XRadioButtonList1" ValidationGroup="确认订购单" DisableExpress='if(BS_Applicant.GiftTypes=="创维酷开手机" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="创维酷开手机,其他" ,1,0)'>是否采购</aspxform:XRequiredFieldValidator>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(BS_Applicant.GiftTypes=="创维酷开手机" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="创维酷开手机,其他" ,1,0)'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel36" runat="server" text="发酒地址:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="BS_Applicant.Shipment_Liquor" BorderColor="Gainsboro" width="526px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" Display="None" ErrorMessage="请填写发酒地址!" ControlToValidate="XTextBox16" ValidationGroup="确认订购单" DisableExpress='if(BS_Applicant.GiftTypes=="创维酷开手机" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="创维酷开手机,其他" ,1,0)'>发酒地址</aspxform:XRequiredFieldValidator>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(Global.StepName =="开始",1,if(BS_Applicant.GiftTypes=="创维酷开手机" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="创维酷开手机,其他" ,1,0))'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel42" runat="server" text="预计到货时间:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="BS_Applicant.GetTime_Liquor" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XDateTimePicker>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(BS_Applicant.GiftTypes=="创维酷开手机" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="其他"|| BS_Applicant.GiftTypes=="创维酷开手机,其他" ,1,0)'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel34" runat="server" text="备注:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="BS_Applicant.Remark_Liquor" BorderColor="Gainsboro" width="526px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="创维酷开手机"|| BS_Applicant.GiftTypes=="创维酷开手机,酒",1,0)'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="740" colspan="4">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="XLabel30" runat="server" text="其他用品" Font-Bold="True"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator25" runat="server" Display="None" ErrorMessage="请填写其他用品类别!" ControlToValidate="XDropDownList3" ValidationGroup="开始" DisableExpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes=="" || BS_Applicant.GiftTypes=="创维酷开手机"|| BS_Applicant.GiftTypes=="酒,创维酷开手机" ,1,0)'>用品类别</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" Display="None" ErrorMessage="请选择其他用品名称!" ControlToValidate="XTextBox29" ValidationGroup="开始" DisableExpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes=="" || BS_Applicant.GiftTypes=="创维酷开手机"|| BS_Applicant.GiftTypes=="酒,创维酷开手机" ,1,0)'>用品名称</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" Display="None" ErrorMessage="请填写其他用品数量!" ControlToValidate="XTextBox30" ValidationGroup="开始" DisableExpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes=="" || BS_Applicant.GiftTypes=="创维酷开手机"|| BS_Applicant.GiftTypes=="酒,创维酷开手机" ,1,0)'>用品数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator24" runat="server" Display="None" ErrorMessage="请填写其他用品价格!" ControlToValidate="XTextBox31" ValidationGroup="确认需求" DisableExpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes=="" || BS_Applicant.GiftTypes=="创维酷开手机"|| BS_Applicant.GiftTypes=="酒,创维酷开手机" ,1,0)'>用品价格</aspxform:XRequiredFieldValidator>
                            </font></span></span></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" colspan="4">
                            <table border="0" cellspacing="0" cellpadding="0" width="797" dynamicarea="1,1">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="29">
                                            <aspxform:XLabel id="XLabel31" runat="server" text="序号" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="101" align="center">
                                            <aspxform:XLabel id="XLabel53" runat="server" text="用品类别" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="105" align="center">
                                            <aspxform:XLabel id="XLabel43" runat="server" text="名称" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="193" align="center">
                                            <aspxform:XLabel id="XLabel44" runat="server" text="数量" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="196" align="center">
                                            <aspxform:XLabel id="XLabel45" runat="server" text="价格" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="258" align="center">
                                            <aspxform:XLabel id="XLabel46" runat="server" text="备注" Font-Bold="False"></aspxform:XLabel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="29" align="center">
                                            <aspxform:XGridLineNo id="XGridLineNo3" runat="server" Font-Bold="True" BorderStyle="None" BorderColor="Gainsboro" BorderWidth="1px" Width="20px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="BS_ApplicantBody_Others.Type" Height="22px" Width="67px" XDataSource="XDataSource" onchange="javascript:XFormOnChange(this);" PromptText="请选择">
                                                <asp:ListItem>烟</asp:ListItem>
                                                <asp:ListItem>其他</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="BS_ApplicantBody_Others.Name" width="100%" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="BS_ApplicantBody_Others.Num" width="100%" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox31" runat="server" Font-Bold="True" XDataBind="BS_ApplicantBody_Others.Price" width="182px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" DisableExpress='Global.StepName =="开始" ||  Global.StepName =="申请人确认"'></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="BS_ApplicantBody_Others.PriceAll" BorderColor="Gainsboro" BorderWidth="1px" width="24px" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" Express="BS_ApplicantBody_Others.Num*BS_ApplicantBody_Others.Price"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="BS_ApplicantBody_Others.Remark" width="240px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="23">
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                        <td align="right">
                                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                                            <aspxform:XLabel id="XLabel47" runat="server" text="总价合计:"></aspxform:XLabel>
                                            </font></span></span></td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox34" runat="server" Font-Bold="True" XDataBind="BS_Applicant.PriceAll_Others" BorderColor="#DCDCDC" width="100%" DisableCssClass="TextBox" CssClass="TextBox" Express="sum(BS_ApplicantBody_Others.PriceAll)" ReadOnly="True"></aspxform:XTextBox>
                                        </td>
                                        <td align="center">
                                            <aspxform:XAddBlockButton id="XAddBlockButton3" runat="server" Text="添加行" HiddenExpress='Global.StepName !="开始"' TableName="BS_ApplicantBody_Others"></aspxform:XAddBlockButton>
                                        </td>

                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="创维酷开手机"|| BS_Applicant.GiftTypes=="创维酷开手机,酒" ,1,0)'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel48" runat="server" text="快递地址:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="BS_Applicant.DeliveryAddress_Others" BorderColor="Gainsboro" width="526px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="请填写其他用品的快递地址!" ControlToValidate="XTextBox35" ValidationGroup="开始" DisableExpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="创维酷开手机"|| BS_Applicant.GiftTypes=="创维酷开手机,酒" ,1,0)'>快递地址</aspxform:XRequiredFieldValidator>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="创维酷开手机"|| BS_Applicant.GiftTypes=="创维酷开手机,酒" ,1,0)'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel49" runat="server" text="是否采购:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="BS_Applicant.Purchase_Others" RepeatDirection="Horizontal" DisableExpress='Global.StepName =="开始" ||  Global.StepName =="申请人确认"'>
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请填写其他用品是否采购!" ControlToValidate="XRadioButtonList6" ValidationGroup="确认订购单" DisableExpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="创维酷开手机"|| BS_Applicant.GiftTypes=="创维酷开手机,酒" ,1,0)'>是否采购</aspxform:XRequiredFieldValidator>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(Global.StepName=="开始",1,if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="创维酷开手机"|| BS_Applicant.GiftTypes=="创维酷开手机,酒" ,1,0))'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel50" runat="server" text="预计到货时间:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="BS_Applicant.GetTime_Others" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XDateTimePicker>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(BS_Applicant.GiftTypes=="酒" || BS_Applicant.GiftTypes==""|| BS_Applicant.GiftTypes=="创维酷开手机"|| BS_Applicant.GiftTypes=="创维酷开手机,酒" ,1,0)'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel51" runat="server" text="备注:"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox id="XTextBox36" runat="server" XDataBind="BS_Applicant.Remark_Others" BorderColor="Gainsboro" width="526px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                </tbody>
            </table>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" colspan="2">
                                <aspxform:XLabel id="XLabel61" runat="server" text="审批信息" Font-Bold="True" PrintOut="False"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                                <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" TextMode="MultiLine" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32" colspan="2">
                                <aspxform:XSignTrace id="XSignTrace2" runat="server" BorderColor="#dcdcdc" BorderWidth="1" CssClass="AA" Width="100%"></aspxform:XSignTrace>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="26" valign="bottom" width="201" align="right">
                                <aspxform:XPrintButton id="XPrintButton1" runat="server" Text="打 印" Height="20px" Width="63px" PageHeaderFormat="\t" UseSubmitBehavior="False" OnClientClick="XFormPrint('ori=v;zm=87;ml=48;mt=48;mr=48;mb=48;ph=\t;pf=',true);return false;"></aspxform:XPrintButton>
                            </td>
                            <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="533" align="center">
                                <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->BS_Applicant.Dept" ConsignAreaHeaderBackColor="245, 245, 220" ConsignAreaBorderColor="Gainsboro"></aspxform:XProcessButtonList>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" Display="None" ErrorMessage="请填写拒绝理由！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Reject">拒绝验证</aspxform:XRequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" Display="None" ErrorMessage="请填写退回意见！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Return">退回重填验证</aspxform:XRequiredFieldValidator>
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                    </tbody>
                </table>
            </p>
        </div>
    </form>
</body>
</html>
