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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" rowspan="3" width="150">
                            <asp:Image id="Image2" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" rowspan="3" width="600" align="middle">
                            <aspxform:XLabel id="XLabel18" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" bgcolor="white" height="19" width="68" align="right">
                            <p>
                                <aspxform:XLabel id="XLabel47" runat="server" text="版本:" Value ValueToDisplayText></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" width="98">
                            <aspxform:XLabel id="XLabel49" runat="server" text="V1.01" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" height="18" align="right">
                            <p>
                                <aspxform:XLabel id="XLabel46" runat="server" text="发布日期:" Value ValueToDisplayText></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
                            <aspxform:XLabel id="XLabel48" runat="server" text="2014/1/18" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="22" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel19" runat="server" Value ValueToDisplayText XDataBind="BM_Applicant.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="49" width="20%" colspan="4">
                            <div align="center">
                            </div>
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel13" runat="server" Font-Names="Tahoma" text="非销售产品出库单" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="22" colspan="2" align="middle">
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="PerInfo" runat="server" text="申请人"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="BM_Applicant.SN" BorderColor="#DCDCDC" BorderWidth="1" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                            </font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2" align="middle">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><font color="black">
                            <aspxform:XLabel id="XLabel2" runat="server" text="代理人"></aspxform:XLabel>
                            </font></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel3" runat="server" text="姓名:" ForeColor="Gray"></aspxform:XLabel>
                            </span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="307">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="BM_Applicant.Name" BorderColor="#DCDCDC" BorderWidth="1" width="175px" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="BM_Applicant.HRID" BorderColor="#DCDCDC" BorderWidth="1" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="78" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                            <aspxform:XLabel id="XLabel4" runat="server" text="姓名:" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="315">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="BM_Applicant.Sub_Name" BorderColor="Gainsboro" BorderWidth="1px" width="175px" Max="0" Min="0" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="BM_Applicant.Sub_HRID" BorderColor="#DCDCDC" BorderWidth="1" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" align="right">
                            <aspxform:XLabel id="XLabel5" runat="server" text="部门:" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="BM_Applicant.Dept" BorderColor="#DCDCDC" BorderWidth="1" width="175px" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" align="right">
                            <aspxform:XLabel id="XLabel6" runat="server" text="部门:" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="BM_Applicant.Sub_Dept" BorderColor="Gainsboro" BorderWidth="1px" width="175px" Max="0" Min="0" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None" HiddenInput="False"></aspxform:XTextBox>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" bgcolor="#f0f0f0" width="138">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="BM_Applicant.AppDate" BorderColor="#DCDCDC" BorderWidth="1" width="100%" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: medium none" bgcolor="#f0f0f0" width="167">
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="BM_Applicant.Type" HiddenExpress="1" RepeatDirection="Horizontal">
                                <asp:ListItem>个人借机</asp:ListItem>
                                <asp:ListItem Selected="True">非销售领用</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            </font></span></span></font></span></span></font></span></span></font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="78" align="right">
                            <aspxform:XLabel id="XLabel20" runat="server" text="成本中心:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="315">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="BM_Applicant.SAP_Code" BorderColor="Gainsboro" BorderWidth="1px" width="143px" Max="0" Min="0" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" HiddenExpress="1" ValueColumn="CostCenter" DisplayColumn="CostCenter" XDataSource="TableName:Fin_R_CostCenter;Filter:HRID->BM_Applicant.HRID" DataMap="CostCenter->BM_Applicant.SAP_Code">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="系统目前没有您的成本中心，请联系财务设定！" ControlToValidate="XTextBox18" ValidationGroup="提交">成本中心</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="22" width="746" colspan="4">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="XLabel7" runat="server" text="用途"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="请填写用途！" ControlToValidate="XTextBox11" ValidationGroup="提交">用途</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请填写机器型号！" ControlToValidate="XTextBox2" ValidationGroup="提交">机器型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请填写借机数量！" ControlToValidate="XTextBox4" ValidationGroup="提交">数量</aspxform:XRequiredFieldValidator>
                            </font></span></span></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="72" colspan="4">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="BM_Applicant.Reason" BorderColor="Gainsboro" BorderWidth="1px" width="100%" Max="0" Min="0" HiddenInput="False" Height="57px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="22" width="740" colspan="4">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="XLabel8" runat="server" text="领用明细"></aspxform:XLabel>
                            </font></span></span></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" colspan="4">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%" dynamicarea="1,1">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="31">
                                            <aspxform:XLabel id="XLabel9" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="120" align="middle">
                                            <aspxform:XLabel id="XLabel10" runat="server" text="订单号" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="143" align="middle">
                                            <aspxform:XLabel id="XLabel11" runat="server" text="机器型号" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="146" align="middle">
                                            <aspxform:XLabel id="XLabel12" runat="server" text="整机编号" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="84" align="middle">
                                            <aspxform:XLabel id="XLabel14" runat="server" text="数量" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="255" align="middle">
                                            <aspxform:XLabel id="XLabel16" runat="server" text="备注" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" align="middle">
                                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Bold="True" BorderColor="Gainsboro" BorderWidth="1px" BorderStyle="None" Width="20px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="BM_Applicant_Body.OrderFormNo" width="100%" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="BM_Applicant_Body.MachineType" width="100%" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="BM_Applicant_Body.MachineCode" width="100%" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="BM_Applicant_Body.JieJiNum" width="82px" Max="0" Min="0" HiddenInput="False" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="BM_Applicant_Body.Remark" width="240px" Max="0" Min="0" HiddenInput="False" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="BM_Applicant_Body.Price" BorderColor="Gainsboro" BorderWidth="1px" width="9px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="15">
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></td>
                                        <td>
                                        </td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="BM_Applicant.JieJiNum" BorderColor="Gainsboro" BorderWidth="1px" width="55px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False" Express="sum(BM_Applicant_Body.JieJiNum)"></aspxform:XTextBox>
                                        </td>
                                        <td align="middle">
                                            <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" HiddenExpress='Global.StepName !="开始"' Text="添加行" TableName="BM_Applicant_Body"></aspxform:XAddBlockButton>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" colspan="2">
                                <aspxform:XLabel id="XLabel31" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请填写拒绝理由！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Reject">拒绝验证</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="请填写退回意见！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Return">退回重填验证</aspxform:XRequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                                <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" TextMode="MultiLine" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="112" colspan="2">
                                <aspxform:XSignTrace id="XSignTrace2" runat="server" BorderColor="#dcdcdc" BorderWidth="1" Width="100%" CssClass="AA"></aspxform:XSignTrace>
                            </td>
                        </tr>
                        <tr>
                            <td height="24" width="68" align="middle">
                                <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress="Global.StepName =='单据填写'" Height="20px" Width="80px" PageHeaderFormat="\t"></aspxform:XPrintButton>
                            </td>
                            <td width="728" align="middle">
                                <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->BM_Applicant.Dept" PositionDisplayType="FullName" ConsignAreaHeaderBackColor="245, 245, 220" ConsignAreaBorderColor="Gainsboro"></aspxform:XProcessButtonList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table border="0" cellspacing="0" cellpadding="0" width="800" printout="False">
                    <tbody>
                        <tr>
                            <td height="128" width="800" colspan="3">
                                <p>
                                    <aspxform:XLabel id="XLabel21" runat="server" Font-Size="Medium" ForeColor="Red" Width="200px" Text="注意事项:" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    <aspxform:XLabel id="XLabel43" runat="server" text="1、“代理人”为借机事项的经办人，“申请人”为最终责任人；" Width="764px" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    <aspxform:XLabel id="XLabel22" runat="server" text="2、 领用机器将按成本入申请人所属成本中心部门或个人责任考核费用。" Width="689px" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                </p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </p>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td>
                            <script type="text/javascript" src="../jquery-1.9.1.min.js"></script>
                            <script type="text/javascript">
                                document.write('<script type="text/javascript" charset="gb2312"   src="' + rootUrl + 'MyApp/Demo/TaskComment/taskcomment.js"><\/script>');
                            </script>
                        </td>
                    </tr>
                </tbody>
                <div>
                </div>
            </table>            
        </div>
    </form>
</body>
</html>
