<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>

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
    <style type="text/css" href="~/Style/Skyworth.css" rel="stylesheet"></style>
    <script language="javascript" type="text/javascript">
    function CorporationDiff(fullname)
    {
        var Corporation,company;
        Corporation=fullname.toString().split("/");
        company=Corporation[2].toString();
        return company;
    }
    </script>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="474" align="middle">
                            <aspxform:XTextBox id="tbxCorporation" runat="server" ValueToDisplayText Value TextAlign="Center" Width="258px" Express="javascript('CorporationDiff',Company)" BorderColor="GhostWhite" BorderWidth="0px" Max="0" Min="0" HiddenInput="False" XDataBind="PP_Applicant.AppCompany" Font-Names="Tahoma" Font-Size="Medium"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="264" align="right">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XLabel id="XLabel19" runat="server" XDataBind="PP_Applicant.SN"></aspxform:XLabel>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="50" colspan="3" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel14" runat="server" Font-Names="Tahoma" Font-Size="Medium" Text="笔记本电脑采购申请单" Font-Bold="True"></aspxform:XLabel>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" bgcolor="#f0f0f0" width="298" colspan="2">
                            <aspxform:XTextBox id="XTextBox5" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="PP_Applicant.AppDate" BackColor="#F0F0F0" BorderStyle="None" width="128px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox17" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="PP_Applicant.Type" width="83px" HiddenExpress="1">笔记本申请</aspxform:XTextBox>
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></font></span></span></font></span></span></font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="90" align="right">
                            <aspxform:XLabel id="XLabel15" runat="server" text="申请单号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="315">
                            <aspxform:XTextBox id="XTextBox14" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="PP_Applicant.SN" BackColor="#F0F0F0" BorderStyle="None" width="147px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23" colspan="2" align="middle">
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="PerInfo" runat="server" text="申请人"></aspxform:XLabel>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="295">
                            <aspxform:XTextBox id="XTextBox7" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="PP_Applicant.Name" BackColor="#F0F0F0" BorderStyle="None" width="175px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox12" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="PP_Applicant.HRID" width="57px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="89" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                            <aspxform:XLabel id="XLabel4" runat="server" text="姓名:" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="316">
                            <aspxform:XTextBox id="XTextBox9" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="PP_Applicant.Sub_Name" BackColor="#F0F0F0" BorderStyle="None" width="175px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox13" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="PP_Applicant.Sub_HRID" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" align="right">
                            <aspxform:XLabel id="XLabel5" runat="server" text="部门:" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox8" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="PP_Applicant.Dept" BackColor="#F0F0F0" BorderStyle="None" width="175px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" align="right">
                            <aspxform:XLabel id="XLabel6" runat="server" text="部门:" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox10" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="PP_Applicant.Sub_Dept" BackColor="#F0F0F0" BorderStyle="None" width="175px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="87" align="right">
                            <aspxform:XLabel id="XLabel7" runat="server" text="职务:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" width="298" colspan="2">
                            <aspxform:XTextBox id="XTextBox1" runat="server" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" XDataBind="PP_Applicant.Post" width="176px" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XTextBox1" ErrorMessage="请填写职务!" Display="None">职务</aspxform:XRequiredFieldValidator>
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></font></span></span></font></span></span></font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="90" align="right">
                            <aspxform:XLabel id="XLabel8" runat="server" text="预算金额(元):"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="315">
                            <aspxform:XTextBox id="XTextBox2" runat="server" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" XDataBind="PP_Applicant.BudgetAmount" width="104px" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XTextBox2" ErrorMessage="请填写预算金额!" Display="None">预算金额</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="87" align="right">
                            <aspxform:XLabel id="XLabel20" runat="server" text="不含税金额:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" width="298" colspan="2">
                            <aspxform:XTextBox id="XTextBox18" runat="server" Express="PP_Applicant.BudgetAmount/1.17" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" XDataBind="a" width="176px" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" ReadOnly="True" Format="type:number;.2"></aspxform:XTextBox>
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></font></span></span></font></span></span></font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="90" align="right">
                            <aspxform:XLabel id="XLabel21" runat="server" text="税额:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="315">
                            <aspxform:XTextBox id="XTextBox19" runat="server" Express="PP_Applicant.BudgetAmount-a" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" XDataBind="b" width="147px" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" ReadOnly="True" Format="type:number;.2"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox15" runat="server" Express="if(a>6000,3600+b,a*0.6+b)" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" XDataBind="e" width="82px" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" ReadOnly="True" Format="type:number;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="87" align="right">
                            <aspxform:XLabel id="XLabel12" runat="server" text="预计个人承担:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" width="298" colspan="2">
                            <aspxform:XTextBox id="XTextBox6" runat="server" Express="PP_Applicant.BudgetAmount-c" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" XDataBind="d" width="48px" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" ReadOnly="True" Format="type:number;.2"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel24" runat="server" text="增值税专用发票,个人承担额会减少" ForeColor="Red"></aspxform:XLabel>
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></font></span></span></font></span></span></font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="90" align="right">
                            <aspxform:XLabel id="XLabel13" runat="server" text="预计公司承担:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="315">
                            <aspxform:XTextBox id="XTextBox16" runat="server" Express="if( PP_Applicant.BudgetAmount>6000,3600, PP_Applicant.BudgetAmount*0.6)" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" XDataBind="c" width="82px" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" ReadOnly="True" Format="type:number;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="22" width="746" colspan="4">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="XLabel23" runat="server" Font-Bold="True" text="原设备情况及申请原因"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XTextBox11" ErrorMessage="请填申请原因!" Display="None">申请原因</aspxform:XRequiredFieldValidator>
                            <aspxform:XLabel id="XLabel16" runat="server" text="请详细填写原设备情况及申请原因！" ForeColor="Red"></aspxform:XLabel>
                            </font></span></span></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="72" colspan="4">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox11" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="PP_Applicant.Reason" width="100%" Height="57px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" height="94">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="21" width="746" colspan="4">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="XLabel9" runat="server" Font-Bold="True" text="品牌及型号"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XTextBox3" ErrorMessage="请填写品牌及型号!" Display="None">品牌及型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XLabel id="XLabel17" runat="server" text="请详细填写品牌及型号！" ForeColor="Red"></aspxform:XLabel>
                            </font></span></span></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="4">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox3" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="PP_Applicant.BrandModel" width="795px" Height="59px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" height="94" hiddenexpress='Global.StepName =="开始" || Global.StepName =="部门审批"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="22" width="746" colspan="4">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="XLabel10" runat="server" Font-Bold="True" text="原使用设备处理意见"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XTextBox4" ErrorMessage="请填写原使用设备处理意见" Display="None" ValidationGroup="资产管理员">原使用设备处理</aspxform:XRequiredFieldValidator>
                            <aspxform:XLabel id="XLabel25" runat="server" text="该处由资产管理员填写！" ForeColor="Red"></aspxform:XLabel>
                            </font></span></span></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="4">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox4" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="PP_Applicant.OriginalEquipment" width="795px" Height="59px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23" colspan="2">
                            <aspxform:XLabel id="XLabel31" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写审批信息！" Display="None" ValidationGroup="部门审批同意">审批验证</aspxform:XRequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XCommentsTextBox style="OVERFLOW: hidden" id="XCommentsTextBox1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" TextMode="MultiLine" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="100%" BorderColor="#dcdcdc" BorderWidth="1" CssClass="AA"></aspxform:XSignTrace>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="60" align="right">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" Text="打 印" OnClientClick="XFormPrint('ori=v;zm=87;ml=48;mt=48;mr=48;mb=48;ph=\t;pf=提交人:________部门负责人:________初审人:________电子流检查:________总裁审批:________',true);return false;" UseSubmitBehavior="False" PageHeaderFormat="\t"></aspxform:XPrintButton>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="700" align="left">
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写拒绝理由！" Display="None" ValidationGroup="Reject">拒绝验证</aspxform:XRequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;<aspxform:XProcessButtonList id="XProcessButtonList2" runat="server" DataMap="MemberFullName->Company;Department->PP_Applicant.Dept" ConsignAreaHeaderBackColor="245, 245, 220" ConsignAreaBorderColor="Gainsboro" PositionDisplayType="FullName"></aspxform:XProcessButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写退回意见！" Display="None" ValidationGroup="Return">退回重填验证</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="800" printout="False">
                <tbody>
                    <tr>
                        <td height="139" width="738" colspan="3">
                            <p>
                                <aspxform:XLabel id="XLabel11" runat="server" Font-Size="Medium" Text="注意事项:" ForeColor="Red" PrintOut="False"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox126" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Company" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel43" runat="server" text="1.在审批结束后单据会流到申请人,申请人在此时打印单据" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel22" runat="server" text="2.打印单据后,同笔记本电脑配置费用分摊协议一起交至资产管理员处" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel44" runat="server" text="3. 笔记本个人承担比例为40%,超额公司最高支付3600元" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel45" runat="server" text="4. 请开具17%增值税专用发票，具体开票资料，在流程启动处查看" ForeColor="Red" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
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
            <p>
            </p>
        </div>
    </form>
</body>
</html>
