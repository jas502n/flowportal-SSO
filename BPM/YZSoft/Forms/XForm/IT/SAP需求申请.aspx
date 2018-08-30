<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
     protected void Page_Load(object sender, EventArgs e)
        {
           XTextBox3.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox16.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
        }

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
    <style type="text/css" href="~/Style/Skyworth.css" rel="stylesheet"></style>
</head>
<body style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
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
                            <aspxform:XLabel id="XLabel18" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="264" align="right">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XLabel id="XLabel19" runat="server" Value ValueToDisplayText XDataBind="IT_SAP_Applicant.SN"></aspxform:XLabel>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="50" colspan="3" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel14" runat="server" Font-Names="微软雅黑" Font-Size="Medium" Font-Bold="True" Value ValueToDisplayText Text="SAP服务申请单"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="87" align="right">
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Names="微软雅黑" text="申请日期:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" bgcolor="#f0f0f0" width="310" colspan="2">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="IT_SAP_Applicant.AppDate" BackColor="#F0F0F0" BorderStyle="None" BorderColor="Gainsboro" BorderWidth="1px" width="231px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></font></span></span></font></span></span></font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="78" align="right">
                            <aspxform:XLabel id="XLabel15" runat="server" Font-Names="微软雅黑" text="单号:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="315">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="IT_SAP_Applicant.SN" BackColor="#F0F0F0" BorderStyle="None" BorderColor="Gainsboro" BorderWidth="1px" width="170px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
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
                            </font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2" align="middle">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><font color="black">
                            <aspxform:XLabel id="XLabel2" runat="server" text="代理人"></aspxform:XLabel>
                            </font></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel3" runat="server" Font-Names="微软雅黑" text="姓名:" Value ValueToDisplayText ForeColor="Gray"></aspxform:XLabel>
                            </span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="307">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="IT_SAP_Applicant.Name" BackColor="#F0F0F0" BorderStyle="None" BorderColor="#DCDCDC" BorderWidth="1" width="175px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="IT_SAP_Applicant.HRID" BorderColor="#DCDCDC" BorderWidth="1" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="78" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                            <aspxform:XLabel id="XLabel4" runat="server" Font-Names="微软雅黑" text="姓名:" Value ValueToDisplayText ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="315">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="IT_SAP_Applicant.Sub_Name" BackColor="#F0F0F0" BorderStyle="None" BorderColor="Gainsboro" BorderWidth="1px" width="175px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="IT_SAP_Applicant.Sub_HRID" BorderColor="#DCDCDC" BorderWidth="1" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" align="right">
                            <aspxform:XLabel id="XLabel5" runat="server" Font-Names="微软雅黑" text="部门:" Value ValueToDisplayText ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="IT_SAP_Applicant.Dept" BackColor="#F0F0F0" BorderStyle="None" BorderColor="#DCDCDC" BorderWidth="1" width="175px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" align="right">
                            <aspxform:XLabel id="XLabel6" runat="server" Font-Names="微软雅黑" text="部门:" Value ValueToDisplayText ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="IT_SAP_Applicant.Sub_Dept" BackColor="#F0F0F0" BorderStyle="None" BorderColor="Gainsboro" BorderWidth="1px" width="175px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="87" align="right">
                            <aspxform:XLabel id="XLabel17" runat="server" Font-Names="微软雅黑" Value ValueToDisplayText Text="电话:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" width="310" colspan="2">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="IT_SAP_Applicant.Tel" BorderColor="Gainsboro" width="91px" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></font></span></span></font></span></span></font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="78" align="right">
                            <aspxform:XLabel id="XLabel16" runat="server" Font-Names="微软雅黑" text="电话:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="315">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="IT_SAP_Applicant.Sub_Tel" BorderColor="Gainsboro" width="91px" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel23" runat="server" Font-Names="微软雅黑" text="申请主题" Font-Bold="True" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel21" runat="server" Font-Names="微软雅黑" text="服务类别:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="IT_SAP_Applicant.ServerType" XDataSource PromptText="请选择">
                                <asp:ListItem>问题排查与处理</asp:ListItem>
                                <asp:ListItem>功能或开发需求</asp:ListItem>
                                <asp:ListItem>权限申请与变更</asp:ListItem>
                                <asp:ListItem>账号分配申请</asp:ListItem>
                                <asp:ListItem>培训申请</asp:ListItem>
                                <asp:ListItem>知识技能咨询</asp:ListItem>
                                <asp:ListItem>反馈与投诉</asp:ListItem>
                                <asp:ListItem>文档变更</asp:ListItem>
                                <asp:ListItem>用户注册与变更</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ValidationGroup="开始" Display="None" ErrorMessage="请选择服务类别" ControlToValidate="XDropDownList1">服务类别</aspxform:XRequiredFieldValidator>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='IT_SAP_Applicant.ServerType !="账号分配申请"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel13" runat="server" Font-Names="微软雅黑" text="账号类型:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" Font-Names="微软雅黑" XDataBind="IT_SAP_Applicant.AccountType" RepeatDirection="Horizontal">
                                <asp:ListItem>申请新账号</asp:ListItem>
                                <asp:ListItem>使用现有账号</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ValidationGroup="开始" Display="None" ErrorMessage="您服务类别选择了账号分配申请，请选择账号类型" ControlToValidate="XRadioButtonList2" DisableExpress='IT_SAP_Applicant.ServerType !="账号分配申请"'>账号类别</aspxform:XRequiredFieldValidator>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel20" runat="server" Font-Names="微软雅黑" text="SAP账号:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="IT_SAP_Applicant.SAPAccount" BorderColor="Gainsboro" width="400px" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ValidationGroup="开始" Display="None" ErrorMessage="您选择了使用现有账号，请填写SAP账号" ControlToValidate="XTextBox2" DisableExpress='IT_SAP_Applicant.AccountType !="使用现有账号"'>SAP账号</aspxform:XRequiredFieldValidator>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel22" runat="server" Font-Names="微软雅黑" text="所属模块:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="307">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="IT_SAP_Applicant.Model" XDataSource PromptText="请选择">
                                <asp:ListItem>MM-采购与库存管理</asp:ListItem>
                                <asp:ListItem>PP-生产计划与执行</asp:ListItem>
                                <asp:ListItem>SD-销售与发运</asp:ListItem>
                                <asp:ListItem>FI-财务管理</asp:ListItem>
                                <asp:ListItem>CO-成本控制</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ValidationGroup="开始" Display="None" ErrorMessage="请选择所属模块" ControlToValidate="XDropDownList2">所属模块</aspxform:XRequiredFieldValidator>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="85" align="right">
                            <aspxform:XLabel id="XLabel29" runat="server" Font-Names="微软雅黑" text="优先级:" Value ValueToDisplayText Height="13px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="308">
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" Font-Names="微软雅黑" XDataBind="IT_SAP_Applicant.PriorityLevel" RepeatDirection="Horizontal">
                                <asp:ListItem>高</asp:ListItem>
                                <asp:ListItem Selected="True">中</asp:ListItem>
                                <asp:ListItem>低</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" ValidationGroup="开始" Display="None" ErrorMessage="请选择优先级" ControlToValidate="XRadioButtonList3" Width="75px">优先级</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='IT_SAP_Applicant.ServerType !="培训申请"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel31" runat="server" Font-Names="微软雅黑" text="培训对象:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="IT_SAP_Applicant.TrainingUsers" BorderColor="Gainsboro" width="400px" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ValidationGroup="开始" Display="None" ErrorMessage="您选择了培训申请，请填写培训对象" ControlToValidate="XTextBox18" DisableExpress='IT_SAP_Applicant.ServerType !="培训申请"'>培训对象</aspxform:XRequiredFieldValidator>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='IT_SAP_Applicant.ServerType !="权限申请与变更"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel25" runat="server" Font-Names="微软雅黑" text="变更类型:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="307">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="IT_SAP_Applicant.ChangeType" RepeatDirection="Horizontal">
                                <asp:ListItem>新增</asp:ListItem>
                                <asp:ListItem>修改</asp:ListItem>
                                <asp:ListItem>删除</asp:ListItem>
                                <asp:ListItem>优化</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ValidationGroup="开始" Display="None" ErrorMessage='您服务类别选择了"权限申请与变更",请选择变更类型' ControlToValidate="XRadioButtonList1" DisableExpress='IT_SAP_Applicant.ServerType !="权限申请与变更"'>变更类型</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ValidationGroup="开始" Display="None" ErrorMessage="请详细填写详细描述" ControlToValidate="XTextBox17">详细描述</aspxform:XRequiredFieldValidator>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="85" align="right">
                            <aspxform:XLabel id="XLabel30" runat="server" Font-Names="微软雅黑" text="期望完成日期:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="307">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="IT_SAP_Applicant.TargetDate" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='IT_SAP_Applicant.ServerType !="权限申请与变更"&amp;&amp;IT_SAP_Applicant.ServerType !="问题排查与处理"&amp;&amp;IT_SAP_Applicant.ServerType !="账号分配申请"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="87" align="right">
                            <aspxform:XLabel id="XLabel26" runat="server" Font-Names="微软雅黑" Value ValueToDisplayText Text="事务代码:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" width="310" colspan="2">
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="IT_SAP_Applicant.TransactionCode" BorderColor="Gainsboro" width="250px" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ValidationGroup="开始" Display="None" ErrorMessage='您服务类别选择了"权限申请与变更"或"问题排查与处理"或"账号分配申请"，请选择填写事务代码' ControlToValidate="XTextBox4" DisableExpress='IT_SAP_Applicant.ServerType !="权限申请与变更"&amp;&amp;IT_SAP_Applicant.ServerType !="问题排查与处理"&amp;&amp;IT_SAP_Applicant.ServerType !="账号分配申请"'>事务代码</aspxform:XRequiredFieldValidator>
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Verdana"></font></span></span></font></span></span></font></span></span></font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="85" align="right">
                            <aspxform:XLabel id="XLabel27" runat="server" Font-Names="微软雅黑" text="程序名:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="308">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="IT_SAP_Applicant.ProgramName" BorderColor="Gainsboro" width="250px" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ValidationGroup="开始" Display="None" ErrorMessage='您服务类别选择了"权限申请与变更"或"问题排查与处理"或"账号分配申请"，请选择填写 程序名' ControlToValidate="XTextBox6" DisableExpress='IT_SAP_Applicant.ServerType !="权限申请与变更"&amp;&amp;IT_SAP_Applicant.ServerType !="问题排查与处理"&amp;&amp;IT_SAP_Applicant.ServerType !="账号分配申请"'>程序名</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel28" runat="server" Font-Names="微软雅黑" text="详细描述:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="IT_SAP_Applicant.Description" BorderColor="#DCDCDC" BorderWidth="1" width="100%" DisableBehavior="ReadOnly" Height="55px" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel12" runat="server" text="请清晰填写服务申请的理由和目的，对于问题和故障请详细说明，如能截图更有利于顾问处理" Value ValueToDisplayText ForeColor="Red"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='IT_SAP_Applicant.ServerType !="问题排查与处理"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel32" runat="server" Font-Names="微软雅黑" text="图片:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font face="Verdana">
                            <aspxform:XImageAttachment id="XImageAttachment1" runat="server" XDataBind="IT_SAP_Applicant.APP_Image" BorderStyle="Solid" BorderColor="Gainsboro" BorderWidth="3px" Height="128px" Width="112px"></aspxform:XImageAttachment>
                            </font></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="26" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel39" runat="server" Font-Names="微软雅黑" text="附件:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"> 
                            <p>
                                <font face="Arial">
                                <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="IT_SAP_Applicant.Attachment"></aspxform:XMSNAttachments>
                                </font><font face="Arial"></font>
                            </p>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" width="945" colspan="3">
                            <aspxform:XLabel id="XLabel65" runat="server" text="业务审核:" Font-Bold="True" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="302">
                            <div align="right">
                                <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Text="选择业务审批人" Width="115px" DataMap="Account->OFR_SC_RelatePerson.HRID;DisplayName->OFR_SC_RelatePerson.Name;MemberFullName->OFR_SC_RelatePerson.FullName;Department->OFR_SC_RelatePerson.Dept" MultiSelect="True" NavigateUrl="~\FormSupport\SelUser.aspx" PopupWndWidth="800" PopupWndX="100" PopupWndY="100" PopupWndHeight="500" UseSubmitBehavior="False"></aspxform:XSelectUserButton>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="80">
                            <div align="center">
                                <aspxform:XLabel id="XLabel76" runat="server" Font-Names="微软雅黑" text="序号" Value ValueToDisplayText></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="858">
                            <div align="center">
                                <aspxform:XLabel id="XLabel79" runat="server" Font-Names="微软雅黑" text="业务审批人(业务负责人或系统关键用户)" Value ValueToDisplayText></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <div align="center">
                                <aspxform:XLabel id="XLabel81" runat="server" Font-Names="微软雅黑" text="部门" Value ValueToDisplayText></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo9" runat="server" BackColor="#F0F0F0" BorderColor="Gainsboro" BorderWidth="1px" Width="24px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox134" runat="server" Value ValueToDisplayText XDataBind="OFR_SC_RelatePerson.Name" BackColor="#F0F0F0" BorderStyle="None" BorderColor="Gainsboro" BorderWidth="1px" width="305px" Max="0" Min="0" HiddenInput="False" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox79" runat="server" XDataBind="OFR_SC_RelatePerson.HRID" BorderStyle="Dotted" BorderColor="Gainsboro" BorderWidth="1px" width="30px" Max="0" Min="0" HiddenInput="False" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox135" runat="server" XDataBind="OFR_SC_RelatePerson.Dept" BackColor="#F0F0F0" BorderStyle="None" BorderColor="Gainsboro" BorderWidth="1px" width="243px" Max="0" Min="0" HiddenInput="False" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox136" runat="server" XDataBind="OFR_SC_RelatePerson.FullName" BackColor="#F0F0F0" BorderStyle="None" BorderColor="#DCDCDC" BorderWidth="1" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" height="25" hiddenexpress='Global.StepName =="开始"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel24" runat="server" text="顾问处理意见" Font-Bold="True" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="开始"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel10" runat="server" Font-Names="微软雅黑" text="处理方案:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="IT_SAP_Applicant.HandleScheme" XDataSource PromptText="请选择">
                                <asp:ListItem>前台处理</asp:ListItem>
                                <asp:ListItem>二次开发</asp:ListItem>
                                <asp:ListItem>系统变更</asp:ListItem>
                                <asp:ListItem>系统项目</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ValidationGroup="SAP顾问(意见)" Display="None" ErrorMessage="请选择处理方案" ControlToValidate="XDropDownList3">处理方案</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ValidationGroup="SAP顾问(意见)" Display="None" ErrorMessage="请恰当填写标题" ControlToValidate="XTextBox16">标题</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ValidationGroup="SAP顾问(意见)" Display="None" ErrorMessage="请恰当填写处理意见" ControlToValidate="XTextBox20">处理意见</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox19" runat="server" Value ValueToDisplayText BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" Height="10px" Width="15px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="开始"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel7" runat="server" Font-Names="微软雅黑" text="标题:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox16" runat="server" XDataBind="IT_SAP_Applicant.Title" BorderColor="Gainsboro" width="526px" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" DisableCssClass="TextBox" CssClass="TextBox" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel11" runat="server" text="*请尽量规范填写以备知识积累" Value ValueToDisplayText ForeColor="Red"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="开始"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel35" runat="server" Font-Names="微软雅黑" text="处理意见:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="IT_SAP_Applicant.HandleOpinion" BorderColor="#DCDCDC" BorderWidth="1" width="100%" DisableBehavior="ReadOnly" Height="55px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="开始"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel33" runat="server" Font-Names="微软雅黑" text="变更/传输:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font face="Verdana">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox15" runat="server" XDataBind="IT_SAP_Applicant.ChangeAndTransfer" BorderColor="Gainsboro" width="526px" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" DisableCssClass="TextBox" CssClass="TextBox" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                            </font></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="开始"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel36" runat="server" Font-Names="微软雅黑" text="图片:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font face="Verdana">
                            <aspxform:XImageAttachment id="XImageAttachment2" runat="server" XDataBind="IT_SAP_Applicant.Guwen_Image" BorderStyle="Solid" BorderColor="Gainsboro" BorderWidth="3px" Height="128px" Width="112px"></aspxform:XImageAttachment>
                            </font></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="开始"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="65" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel37" runat="server" Font-Names="微软雅黑" text="附件:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"> 
                            <p>
                                <font face="Arial">
                                <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="IT_SAP_Applicant.Guwen_Attachment"></aspxform:XMSNAttachments>
                                </font><font face="Arial"></font>
                            </p>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName !="申请人"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" width="800" colspan="2">
                            <aspxform:XLabel id="XLabel8" runat="server" Font-Names="微软雅黑" text="用户反馈" Font-Bold="True" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName !="申请人"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel9" runat="server" Font-Names="微软雅黑" text="意见或建议:" Value ValueToDisplayText></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="706">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox3" runat="server" XDataBind="IT_SAP_Applicant.UserOpinion" BorderColor="Gainsboro" width="526px" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" DisableCssClass="TextBox" CssClass="TextBox" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                </tbody>
            </table>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" width="800" colspan="2">
                                <aspxform:XLabel id="XLabel34" runat="server" Font-Names="微软雅黑" text="备注信息" Font-Bold="True" Value ValueToDisplayText></aspxform:XLabel>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29" width="87" colspan="2" align="right">
                                <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span>
                                <aspxform:XCommentsTextBox style="OVERFLOW: hidden" id="XCommentsTextBox1" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Height="45px" Width="796px" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="112" colspan="2">
                                <aspxform:XSignTrace id="XSignTrace2" runat="server" BorderColor="#dcdcdc" BorderWidth="1" CssClass="AA" Width="100%"></aspxform:XSignTrace>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="30" valign="bottom" width="218" align="right">
                                <aspxform:XPrintButton id="XPrintButton1" runat="server"></aspxform:XPrintButton>
                            </td>
                            <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="578" align="middle">
                                <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->IT_SAP_Applicant.Dept" ConsignAreaHeaderBackColor="245, 245, 220" ConsignAreaBorderColor="Gainsboro"></aspxform:XProcessButtonList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
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
            </table>
        </div>
    </form>
</body>
</html>
