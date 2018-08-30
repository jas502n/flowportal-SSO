<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
    
    void XTextBox4_TextChanged(object sender, EventArgs e) {
    
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
INPUT {
	HEIGHT: 20px
}
.TextBox {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: silver 1px solid
}
.TextBoxPink {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: pink 1px solid
}
INPUT.UL {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #33ff33 1px solid
}
TABLE.SignHistory {
	BORDER-RIGHT: #dcdcdc 1px solid; BORDER-TOP: #dcdcdc 1px solid; BORDER-LEFT: #dcdcdc 1px solid; BORDER-BOTTOM: #dcdcdc 1px solid; BORDER-COLLAPSE: collapse
}
TABLE.SignHistory TD.Col1 {
	PADDING-RIGHT: 3px; WIDTH: 30%; COLOR: gray; BACKGROUND-COLOR: #ffffff; TEXT-ALIGN: right
}
TABLE.SignHistory TD.Col2 {
	PADDING-RIGHT: 20px; PADDING-LEFT: 3px; FONT-WEIGHT: bold; WIDTH: 25%; BACKGROUND-COLOR: #f0f0f0; TEXT-ALIGN: right
}
TABLE.SignHistory TD.Col3 {
	PADDING-RIGHT: 3px; WIDTH: 15%; COLOR: gray; BACKGROUND-COLOR: #ffffff; TEXT-ALIGN: right
}
TABLE.SignHistory TD.Col4 {
	PADDING-RIGHT: 20px; PADDING-LEFT: 3px; FONT-WEIGHT: bold; WIDTH: 25%; BACKGROUND-COLOR: #f0f0f0; TEXT-ALIGN: right
}
TABLE.SignHistory INPUT.Acc {
	BORDER-RIGHT: #dcdcdc 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #dcdcdc 1px solid; PADDING-LEFT: 3px; BORDER-LEFT: #dcdcdc 1px solid; WIDTH: 100%; BORDER-BOTTOM: #dcdcdc 1px solid
}
TABLE.SignHistory INPUT.Date {
	BORDER-RIGHT: #dcdcdc 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #dcdcdc 1px solid; PADDING-LEFT: 3px; BORDER-LEFT: #dcdcdc 1px solid; WIDTH: 100%; BORDER-BOTTOM: #dcdcdc 1px solid
}
.a {
	WIDTH: 80px; hight: 20px
}
.b {
	hight: 20px
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
TEXTAREA {
	BORDER-RIGHT: #ffffff 0px solid; BORDER-TOP: #ffffff 0px solid; OVERFLOW-Y: visible; BACKGROUND: #ffffff; OVERFLOW: hidden; BORDER-LEFT: #ffffff 0px solid; BORDER-BOTTOM: #ffb3a7 0px solid
}
</style>
</head>
<body>
    <form runat="server">
        <p align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td height="53" width="222">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td width="401" align="middle">
                            <p align="center">
                                <aspxform:XLabel id="XLabel1" runat="server" Font-Bold="True" Font-Size="Medium" text="深圳创维数字技术股份有限公司" Font-Names="Tahoma"></aspxform:XLabel>
                            </p>
                        </td>
                        <td bgcolor="white" width="224">
                        </td>
                    </tr>
                    <tr>
                        <td height="50" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="无线新物料申请" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td height="25" width="86" align="right">
                            <aspxform:XLabel id="XLabel3" runat="server" text="申请日期："></aspxform:XLabel>
                        </td>
                        <td width="114">
                            <aspxform:XTextBox id="XTextBox2" runat="server" DisableCssClass="TextBox" CssClass="TextBox" ReadOnly="True" BorderColor="Gainsboro" Min="0" Max="0" width="100px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.AppDate"></aspxform:XTextBox>
                        </td>
                        <td width="65">
                            <p align="right">
                                <aspxform:XLabel id="XLabel2" runat="server" text="申请人："></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="116">
                            <aspxform:XTextBox id="XTextBox1" runat="server" DisableCssClass="TextBox" CssClass="TextBox" ReadOnly="True" Min="0" Max="0" width="90px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.Name" NormalCssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox14" runat="server" BorderColor="Gainsboro" Min="0" Max="0" width="20px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.HRID" BorderStyle="Dotted" HiddenExpress="1" BorderWidth="1px"></aspxform:XTextBox>
                        </td>
                        <td width="65" align="right">
                            流水号：</td>
                        <td width="163">
                            <aspxform:XLabel id="XLabel11" runat="server" XDataBind="W_ASP_Applicant_All.SN"></aspxform:XLabel>
                        </td>
                        <td width="64" align="right">
                        </td>
                        <td width="161">
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <!-- Insert content here -->
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel94" runat="server" Font-Bold="True" Font-Size="X-Small" text="申请基本信息" ForeColor="Navy" ValueToDisplayText Value></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XTextBox10" ErrorMessage='请选择"项目经理”！' Display="None">项目经理</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XTextBox5" ErrorMessage="请填写“物料性能描述”！" Display="None">物料性能描述</aspxform:XRequiredFieldValidator>
                            &nbsp;&nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XTextBox34" ErrorMessage="请填写“使用项目”！" Display="None">使用项目</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XTextBox33" ErrorMessage="请填写“项目阶段”！" Display="None">项目阶段</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XTextBox32" ErrorMessage="请填写“应用功能模块”！" Display="None">应用功能模块</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XTextBox18" ErrorMessage="请填写“新增理由”！" Display="None">新增理由</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XTextBox20" ErrorMessage="请填写“备注”！" Display="None">备注</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 0px solid" height="25" width="66">
                            项目经理：</td>
                        <td style="BORDER-LEFT: #d1dedf 0px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 0px solid" width="166">
                            <aspxform:XTextBox id="XTextBox10" runat="server" DisableCssClass="TextBox" CssClass="TextBox" ReadOnly="True" Min="0" Max="0" width="90px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.PM_Name" NormalCssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" HiddenExpress='Global.StepName!="开始"' Width="21px" DataMap="Account->W_ASP_Applicant_All.PM_HRID;DisplayName->W_ASP_Applicant_All.PM_Name"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox19" runat="server" BorderColor="Gainsboro" Min="0" Max="0" width="20px" HiddenInput="True" XDataBind="W_ASP_Applicant_All.PM_HRID" BorderStyle="Dotted" BorderWidth="1px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox12" runat="server" BorderColor="Gainsboro" Min="0" Max="0" width="20px" HiddenInput="True" XDataBind="W_ASP_Applicant_All.BuyerUserLevel" BorderStyle="Dotted" BorderWidth="1px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 0px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 0px solid" width="48">
                            <aspxform:XLabel id="XLabel75" runat="server" text="SQE："></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 0px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 0px solid" width="129">
                            <aspxform:XTextBox id="XTextBox21" runat="server" DisableCssClass="TextBox" CssClass="TextBox" ReadOnly="True" BorderColor="Gainsboro" Min="0" Max="0" width="90px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.SQE_Name" NormalCssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox15" runat="server" BorderColor="Gainsboro" Min="0" Max="0" width="20px" HiddenInput="True" XDataBind="W_ASP_Applicant_All.SQE_HRID" BorderStyle="Dotted" BorderWidth="1px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 0px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 0px solid" width="64">
                            采购商务：</td>
                        <td style="BORDER-LEFT: #d1dedf 0px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="363">
                            <aspxform:XTextBox id="XTextBox9" runat="server" DisableCssClass="TextBox" CssClass="TextBox" ReadOnly="True" Min="0" Max="0" width="90px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.Buy_Name" NormalCssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox13" runat="server" BorderColor="Gainsboro" Min="0" Max="0" width="20px" HiddenInput="True" XDataBind="W_ASP_Applicant_All.Buy_HRID" BorderStyle="Dotted" BorderWidth="1px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel12" runat="server" Font-Bold="True" text="物料信息"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28" width="90">
                            <p align="left">
                                <aspxform:XLabel id="XLabel6" runat="server" text="物料类型：" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 0px solid" width="56" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel21" runat="server" text="大类：" ValueToDisplayText Value></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 0px solid" width="179">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="W_ASP_Applicant_All.BigClassName" Width="166px" DisplayColumn="BigClassName" XDataSource="TableName:W_ASP_Category_BigClassName" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 0px solid" width="44" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel22" runat="server" text="小类：" ValueToDisplayText Value></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" width="468">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="W_ASP_Applicant_All.SmallClassName" Width="166px" DataMap="SQE_HRID->W_ASP_Applicant_All.SQE_HRID;SQE_HRName->W_ASP_Applicant_All.SQE_Name;Buy_HRID->W_ASP_Applicant_All.Buy_HRID;Buy_HRName->W_ASP_Applicant_All.Buy_Name;SmallClassStatus->W_ASP_Applicant_All.SmallClassStatus" DisplayColumn="SmallClassName" XDataSource="TableName:W_ASP_Category;Filter:BigClassName->W_ASP_Applicant_All.BigClassName" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox25" runat="server" BorderColor="#DCDCDC" HiddenInput="True" XDataBind="W_ASP_Applicant_All.SmallClassStatus" BorderWidth="1" Width="30px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="90">
                            <div align="left">物料功能描述：
                            </div>
                        </td>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 0px solid" height="30" width="118">
                            <p align="left">
                                &nbsp; 物料性能描述：&nbsp;
                            </p>
                        </td>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="633">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox5" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="500px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.BaseFunction" NormalCssClass="TextBoxPink" ValueToDisplayText Value TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 0px solid" height="27">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"></span>
                            <p align="right">
                                <aspxform:XLabel id="XLabel36" runat="server" text="原理图及规格要求：" ValueToDisplayText Value Width="99%"></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="W_ASP_Applicant_All.BaseFunctionAttachment" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot" RepeatDirection="Horizontal"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28" width="90">
                            <div align="left">
                                <aspxform:XLabel id="XLabel65" runat="server" text="使用项目：" ValueToDisplayText Value></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="136">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox34" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="130px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.UseItem" NormalCssClass="TextBoxPink" ValueToDisplayText Value TextMode="MultiLine" Height="24px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79">
                            <p align="right">
                                <aspxform:XLabel id="XLabel14" runat="server" text="项目阶段：" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="148">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox33" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="130px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.ProjectPhase" NormalCssClass="TextBoxPink" ValueToDisplayText Value TextMode="MultiLine" Height="24px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="97">
                            <p align="right">
                                <aspxform:XLabel id="XLabel8" runat="server" text="应用功能模块：" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox32" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="130px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.FunModule" NormalCssClass="TextBoxPink" ValueToDisplayText Value TextMode="MultiLine" Height="24px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28" width="90">
                            <p align="left">
                                分析理由：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 0px solid" width="71">
                            <p align="right">
                                <aspxform:XLabel id="XLabel46" runat="server" text="新增理由：" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 0px solid" width="274">
                            <aspxform:XTextBox id="XTextBox18" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="252px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.NewReason" NormalCssClass="TextBoxPink" ValueToDisplayText Value TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 0px solid" width="53" align="middle">
                            <p align="right">
                                <aspxform:XLabel id="XLabel45" runat="server" text="备注：" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="349">
                            <aspxform:XTextBox id="XTextBox20" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" HiddenInput="False" XDataBind="W_ASP_Applicant_All.NewNote" NormalCssClass="TextBoxPink" Width="250px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel4" runat="server" Font-Bold="True" text="厂家信息"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ControlToValidate="XRadioButtonList2" ErrorMessage="请选择制造厂家!" Display="None">制造厂家</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="XTextBox27" ErrorMessage="请选择合格厂家!" Display="None" DisableExpress='W_ASP_Applicant_All.FactoryType !="合格厂家"'>合格厂家</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ControlToValidate="XTextBox6" ErrorMessage="请选择新厂家名称!" Display="None" DisableExpress='W_ASP_Applicant_All.FactoryType !="新厂家"'>新厂家名称</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ControlToValidate="XDateTimePicker9" ErrorMessage="请选择期望资审完成时间!" Display="None" DisableExpress='W_ASP_Applicant_All.FactoryType !="新厂家"'>期望资审完成时间</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="90">
                            <div align="left">
                                <aspxform:XLabel id="XLabel55" runat="server" text="制造厂家：" ValueToDisplayText Value></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid" width="406" colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="W_ASP_Applicant_All.FactoryType" Width="135px" RepeatDirection="Horizontal">
                                <asp:ListItem Value="合格厂家">合格厂家</asp:ListItem>
                                <asp:ListItem Value="新厂家">新厂家</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" width="347" align="right">
                            <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" HiddenExpress='W_ASP_Applicant_All.FactoryType !="合格厂家" || Global.StepName!="开始"' DataMap="Suppliers->W_ASP_Applicant_All_QualifedFactory.QualifiedFactory" XDataSource="TableName:W_ASP_Applicant_Suppliers" PopupWndX="100" PopupWndWidth="800" NavigateUrl="~\FormSupport\DataBrowser.aspx" PopupWndY="100" PopupWndHeight="500" DisplayColumns="BigClass:大类;SmallClass:小类;SonClass:子类;Suppliers:合格供应商" Text="选择合格厂家" UseSubmitBehavior="False" MultiSelect="True"></aspxform:XDataBrowserButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='W_ASP_Applicant_All.FactoryType !="合格厂家"' dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="90">
                            <div align="left">
                                <aspxform:XLabel id="XLabel67" runat="server" text="合格厂家：" ValueToDisplayText Value></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox27" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="250px" HiddenInput="False" XDataBind="W_ASP_Applicant_All_QualifedFactory.QualifiedFactory" NormalCssClass="TextBoxPink" Height="22px"></aspxform:XTextBox>
                            &nbsp;
                            <aspxform:XTextBox id="XTextBox3" runat="server" BorderColor="Gainsboro" Min="0" Max="0" width="82px" HiddenInput="True" XDataBind="W_ASP_Applicant_All_QualifedFactory.SN" BorderStyle="Dotted" BorderWidth="1px" ValueToDisplayText Value></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='W_ASP_Applicant_All.FactoryType !="新厂家"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="90">
                            <div align="left">
                                <aspxform:XLabel id="XLabel7" runat="server" text="新厂家名称：" ValueToDisplayText Value></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="262">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox6" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="250px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.ProductFactoryName" DisableExpress='W_ASP_Applicant_All.FactoryType !="新厂家"'></aspxform:XTextBox>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="114" align="middle">
                            <div align="right">
                                <aspxform:XLabel id="XLabel10" runat="server" text="期望资审完成时间：" ValueToDisplayText Value></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="371">
                            <aspxform:XDateTimePicker id="XDateTimePicker9" runat="server" BorderColor="#DCDCDC" XDataBind="W_ASP_Applicant_All.HopeZiSHenDate" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel13" runat="server" Font-Bold="True" text="时限要求"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" ControlToValidate="XTextBox16" ErrorMessage="请填写理由！" Display="None" DisableExpress='W_ASP_Applicant_All.EmergencyLevel!="紧急"'>紧急理由</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ControlToValidate="XTextBox4" ErrorMessage="请填写样品数量!" Display="None" DisableExpress='W_ASP_Applicant_All.NeedSample !="需要样品"'>样品数量</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" ControlToValidate="XDateTimePicker2" ErrorMessage="请填写期望到样日期!" Display="None" DisableExpress='W_ASP_Applicant_All.NeedSample !="需要样品"'>期望到样日期</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" ControlToValidate="XDateTimePicker1" ErrorMessage="请填写期望编码时间!" Display="None">期望编码时间</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="90">
                            <p align="left">
                                <aspxform:XLabel id="XLabel70" runat="server" text="紧急程度：" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 0px solid" width="162">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="W_ASP_Applicant_All.EmergencyLevel" Width="150px" RepeatDirection="Horizontal">
                                <asp:ListItem Value="紧急">紧急</asp:ListItem>
                                <asp:ListItem Selected="True" Value="一般">一般</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" runat="server" text="紧急理由：">
                            <aspxform:XTextBox id="XTextBox16" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" width="420px" XDataBind="W_ASP_Applicant_All.EmergencyNote" HiddenExpress='W_ASP_Applicant_All.EmergencyLevel!="紧急"' TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="90">
                            <p align="left">
                                <aspxform:XLabel id="XLabel15" runat="server" text="样品需求：" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="272">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="W_ASP_Applicant_All.NeedSample" Width="165px" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">需要样品</asp:ListItem>
                                <asp:ListItem>不需要样品</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="middle">
                            <aspxform:XLabel id="XLabel16" runat="server" text="样品数量" HiddenExpress='W_ASP_Applicant_All.NeedSample !="需要样品"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox4" runat="server" CssClass="TextBoxPink" Min="0" Max="0" width="80px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.NeedSample_Num" NormalCssClass="TextBox" HiddenExpress='W_ASP_Applicant_All.NeedSample !="需要样品"' Height="22px" OnTextChanged="XTextBox4_TextChanged"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="90">
                            <p align="left">
                                <aspxform:XLabel id="XLabel73" runat="server" text="期望到样日期：" HiddenExpress='W_ASP_Applicant_All.NeedSample !="需要样品"' ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" width="272">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" BorderColor="#DCDCDC" XDataBind="W_ASP_Applicant_All.NeedSample_Date" HiddenExpress='W_ASP_Applicant_All.NeedSample !="需要样品"' BorderWidth="1"></aspxform:XDateTimePicker>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="middle">
                            <aspxform:XLabel id="XLabel72" runat="server" text="期望编码时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" BorderColor="#DCDCDC" XDataBind="W_ASP_Applicant_All.HopeCodingDate" BorderWidth="1px"></aspxform:XDateTimePicker>
                            </span></span></td>
                    </tr>
                </tbody>
            </table>
            <div align="center">
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='W_ASP_Applicant_All.FactoryType!="新厂家" || Global.StepName=="开始"'>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                                <aspxform:XLabel id="XLabel33" runat="server" Font-Bold="True" text="供应商资源"></aspxform:XLabel>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" ControlToValidate="XRadioButtonList8" ErrorMessage="请选择新厂家是否需要引进!" Display="None" ValidationGroup="供应商资审">新厂家是否需要引进</aspxform:XRequiredFieldValidator>
                                &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" ControlToValidate="XTextBox31" ErrorMessage="请填写不引进理由!" Display="None" DisableExpress='W_ASP_Applicant_All.NewFactoryAdd !="否"' ValidationGroup="供应商资审">不引进理由</aspxform:XRequiredFieldValidator>
                                &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" ControlToValidate="XDateTimePicker8" ErrorMessage="请填写承诺资审完成日期!" Display="None" DisableExpress='W_ASP_Applicant_All.NewFactoryAdd !="是"' ValidationGroup="供应商资审">承诺资审完成日期</aspxform:XRequiredFieldValidator>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div align="center">
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='W_ASP_Applicant_All.FactoryType!="新厂家"|| Global.StepName=="开始"'>
                    <tbody>
                        <tr>
                            <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                                <aspxform:XLabel id="XLabel76" runat="server" text="新厂家是否需要引进:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                                <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="W_ASP_Applicant_All.NewFactoryAdd" Width="95px" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="是">是</asp:ListItem>
                                    <asp:ListItem Value="否">否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='W_ASP_Applicant_All.NewFactoryAdd !="否"'>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                                <aspxform:XLabel id="XLabel5" runat="server" text="不引进理由：" ValueToDisplayText Value></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                                <aspxform:XTextBox id="XTextBox31" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="551px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.FactoryNoReason" ValueToDisplayText Value TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div align="center">
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='W_ASP_Applicant_All.NewFactoryAdd  !="是"'>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                                <aspxform:XLabel id="XLabel77" runat="server" text="承诺资审完成日期：" ValueToDisplayText Value></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                                <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" BorderColor="#DCDCDC" XDataBind="W_ASP_Applicant_All.ZiSHenDate" BorderWidth="1" Width="250px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                                &nbsp;</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div align="center">
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='W_ASP_Applicant_All.FactoryType!="新厂家"||Global.StepName=="开始"'>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                                <aspxform:XLabel id="XLabel41" runat="server" Font-Bold="True" text="新厂家资审信息"></aspxform:XLabel>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" ControlToValidate="XRadioButtonList3" ErrorMessage="请选择新供方是否合格!" Display="None" ValidationGroup="供应商资审1">新供方是否合格</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" ControlToValidate="XTextBox29" ErrorMessage="请填写供应商代码!" Display="None" DisableExpress='W_ASP_Applicant_All.NewFactoryHeGe !="合格"' ValidationGroup="供应商资审1">供应商代码</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" ControlToValidate="XMSNAttachments4" ErrorMessage="请上传资审报告!" Display="None" DisableExpress='W_ASP_Applicant_All.NewFactoryHeGe !="合格"' ValidationGroup="供应商资审1">资审报告</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" ControlToValidate="XTextBox30" ErrorMessage="请填写不合格理由!" Display="None" DisableExpress='W_ASP_Applicant_All.NewFactoryHeGe !="不合格"' ValidationGroup="供应商资审1">不合格理由</aspxform:XRequiredFieldValidator>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div align="center">
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='W_ASP_Applicant_All.FactoryType!="新厂家"||Global.StepName=="开始"'>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                                <aspxform:XLabel id="XLabel26" runat="server" text="新供方是否合格：" ValueToDisplayText Value></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                                <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="W_ASP_Applicant_All.NewFactoryHeGe" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="合格">合格</asp:ListItem>
                                    <asp:ListItem Value="不合格">不合格</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div align="center">
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='W_ASP_Applicant_All.NewFactoryHeGe !="合格"'>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                                <aspxform:XLabel id="XLabel27" runat="server" text="供应商代码：" ValueToDisplayText Value></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="141">
                                <aspxform:XTextBox id="XTextBox29" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="130px" HiddenInput="False" XDataBind="W_ASP_Applicant_All.FactoryCode"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="63">
                                <aspxform:XLabel id="XLabel28" runat="server" text="资审报告：" ValueToDisplayText Value></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="517">
                                <aspxform:XMSNAttachments id="XMSNAttachments4" runat="server" XDataBind="W_ASP_Applicant_All.ZiShenReport" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot" RepeatDirection="Horizontal"></aspxform:XMSNAttachments>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div align="center">
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='W_ASP_Applicant_All.NewFactoryHeGe !="不合格"'>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                                <aspxform:XLabel id="XLabel29" runat="server" text="不合格理由：" ValueToDisplayText Value></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                                <aspxform:XTextBox id="XTextBox30" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" width="100%" XDataBind="W_ASP_Applicant_All.NoHeGeReason"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                </tbody>
            </table>
        </div>
        <!--确认基本信息-->
        <div align="center" hiddenexpress='Global.StepName =="开始" ||Global.StepName =="供应商资审" || Global.StepName =="供应商资审1"'>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="691">
                            <aspxform:XLabel id="XLabel32" runat="server" Font-Bold="True" Font-Size="X-Small" text="确认基本信息" ForeColor="Navy" ValueToDisplayText Value PrintOut="False"></aspxform:XLabel>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" ControlToValidate="XTextBox24" ErrorMessage="请选择厂家/品牌!" Display="None" ValidationGroup="打样人员接收">确认厂家/品牌</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" ControlToValidate="XTextBox23" ErrorMessage="请填写物料型号!" Display="None" ValidationGroup="打样人员接收">确认物料型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator24" runat="server" ControlToValidate="XDateTimePicker4" ErrorMessage='请选择"承诺到样时间"!' Display="None" ValidationGroup="打样人员接收">承诺到样时间</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator25" runat="server" ControlToValidate="XDateTimePicker6" ErrorMessage='请选择"承诺编码时间"!' Display="None" ValidationGroup="打样人员接收">承诺编码时间</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" ControlToValidate="XTextBox22" ErrorMessage='请填写"收到样品数量"!' Display="None" ValidationGroup="到样人员">收到样品数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator35" runat="server" ControlToValidate="XMSNAttachments1" ErrorMessage='请上传"规格书附件"!' Display="None" ValidationGroup="到样人员">规格书附件</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator34" runat="server" ControlToValidate="XRadioButtonList1" ErrorMessage="请选择是否为保税物料!" Display="None" ValidationGroup="采购商务">保税物料</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator33" runat="server" ControlToValidate="XTextBox7" ErrorMessage="请填写物料应用结论!" Display="None" ValidationGroup="硬件测试">物料应用结论</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="152" align="right">
                            <div>
                                <aspxform:XAddBlockButton id="XAddBlockButton3" runat="server" HiddenExpress='Global.StepName!="打样人员（接收）"' Text="新增厂家品牌" PrintOut="False" TableName="W_ASP_Applicant_All_Body"></aspxform:XAddBlockButton>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center" hiddenexpress='Global.StepName =="开始" ||Global.StepName =="供应商资审" || Global.StepName =="供应商资审1"'>
            <table style="BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" dynamicarea="0,15">
                <tbody>
                    <!--确认厂家/品牌、承诺到样时间-->
                    <tr hiddenexpress='W_ASP_Applicant_All.NeedSample=="不需要样品"'>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30" width="34">
                            <div align="center">
                                <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Bold="True" Font-Size="Large" XDataBind="var" BorderWidth="0px" ForeColor="Gainsboro" Width="25px" Height="30px" Font-Overline="False" Font-Italic="False" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="97">
                            <p align="left">
                                &nbsp;<aspxform:XLabel id="XLabel35" runat="server" text="确认厂家/品牌：" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="232">
                            <aspxform:XTextBox id="XTextBox24" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="190px" HiddenInput="False" XDataBind="W_ASP_Applicant_All_Body.ConfirmationFactory" NormalCssClass="TextBoxPink" Height="22px"></aspxform:XTextBox>
                            <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" HiddenExpress='Global.StepName!="SQE"' Width="19px" DataMap="Suppliers->W_ASP_Applicant_All_Body.ConfirmationFactory" XDataSource="TableName:W_ASP_Applicant_Suppliers" PopupWndX="100" PopupWndWidth="800" NavigateUrl="~\FormSupport\DataBrowser.aspx" PopupWndY="100" PopupWndHeight="500" DisplayColumns="BigClass:;SmallClass:;SonClass:;Suppliers:合格供应商" Text="..." UseSubmitBehavior="False"></aspxform:XDataBrowserButton>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="94" align="middle">
                            <p align="left">
                                &nbsp;<aspxform:XLabel id="XLabel34" runat="server" text="确认物料型号：" ValueToDisplayText Value Width="88px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="377">
                            <aspxform:XTextBox id="XTextBox23" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="201px" HiddenInput="False" XDataBind="W_ASP_Applicant_All_Body.ConfirmationMaterialModel" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress='W_ASP_Applicant_All.NeedSample=="不需要样品"'>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            &nbsp;<aspxform:XLabel id="XLabel19" runat="server" Font-Bold="False" text="承诺到样时间：" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker4" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" ReadOnly="True" BorderColor="Gainsboro" XDataBind="W_ASP_Applicant_All_Body.ReceiveTime" Width="230px" onchange="javascript:XFormOnChange(this);" Type="TimeMinutes" XSubType="timeminutes" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel40" runat="server" Font-Bold="False" text="承诺编码时间：" ValueToDisplayText Value Width="90px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker6" runat="server" ReadOnly="True" BorderColor="Gainsboro" XDataBind="W_ASP_Applicant_All_Body.CodeTime" Width="230px" onchange="javascript:XFormOnChange(this);" Type="TimeMinutes" XSubType="timeminutes" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <!--收到样品数量、规格书附件-->
                    <tr hiddenexpress='W_ASP_Applicant_All.NeedSample=="不需要样品"||Global.StepName =="打样人员（接收）"'>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            &nbsp;收到样品数量：</td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XTextBox id="XTextBox22" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="118px" HiddenInput="False" XDataBind="W_ASP_Applicant_All_Body.ReceiveCount" NormalCssClass="TextBoxPink" ValueToDisplayText Value></aspxform:XTextBox>
                            &nbsp;</td>
                    </tr>
                    <tr hiddenexpress='W_ASP_Applicant_All.NeedSample=="不需要样品"||Global.StepName =="打样人员（接收）"'>
                        <td style="BORDER-BOTTOM: #d1dedf 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <p align="left">
                                &nbsp;规格书附件：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="W_ASP_Applicant_All_Body.SizeAtt" StorePathExpress="1011" StorePathBasicFolder="SystemAttachmentsRoot" RepeatDirection="Horizontal"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <!--保税物料-->
                    <tr hiddenexpress='Global.StepName =="打样人员（接收）"'>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="4">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="W_ASP_Applicant_All_Body.IsBondStores" Width="186px" RepeatDirection="Horizontal">
                                <asp:ListItem>保税物料</asp:ListItem>
                                <asp:ListItem>非保税物料</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <!--物料应用结论、测试报告-->
                    <tr hiddenexpress='Global.StepName =="打样人员（接收）"||Global.StepName =="到样人员（到样提交）"||Global.StepName =="采购商务"||Global.StepName =="商务审核"'>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            &nbsp;物料应用结论：</td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox7" runat="server" CssClass="TextBoxPink" Min="0" Max="0" HiddenInput="False" XDataBind="W_ASP_Applicant_All_Body.UseConclusion" ValueToDisplayText Value Width="210px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            &nbsp;测试报告：</td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XAttachments id="XAttachments1" runat="server" XDataBind="W_ASP_Applicant_All_Body.UseAtt" RepeatDirection="Horizontal"></aspxform:XAttachments>
                        </td>
                    </tr>
                    <!--SQE样品测试认定-->
                    <tr hiddenexpress='Global.StepName =="打样人员（接收）"||Global.StepName =="到样人员（到样提交）"||Global.StepName =="采购商务"||Global.StepName =="商务审核"'>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="34">
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="4">
                            <strong>SQE样品测试认定<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator36" runat="server" ControlToValidate="XTextBox8" ErrorMessage="请填写物料测试结论!" Display="None" ValidationGroup="SQE认定">料测试结论</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator38" runat="server" ControlToValidate="XTextBox11" ErrorMessage="请填写参考长描述!" Display="None" ValidationGroup="SQE认定">参考长描述</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator39" runat="server" ControlToValidate="XDropDownList3" ErrorMessage="请选择环保要求!" Display="None" ValidationGroup="SQE认定">环保要求</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator40" runat="server" ControlToValidate="XDropDownList4" ErrorMessage="请选择质量状态!" Display="None" ValidationGroup="SQE认定">质量状态</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator41" runat="server" ControlToValidate="XAttachments3" ErrorMessage="请上传“新物料报关信息”附件!" Display="None" ValidationGroup="SQE认定">新物料报关信息</aspxform:XRequiredFieldValidator>
                            </strong></td>
                    </tr>
                    <tr hiddenexpress='Global.StepName =="打样人员（接收）"||Global.StepName =="到样人员（到样提交）"||Global.StepName =="采购商务"||Global.StepName =="商务审核"'>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            物料测试结论：</td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox8" runat="server" CssClass="TextBoxPink" Min="0" Max="0" HiddenInput="False" XDataBind="W_ASP_Applicant_All_Body.TestConclusion" ValueToDisplayText Value Width="210px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            测试报告：</td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XAttachments id="XAttachments2" runat="server" XDataBind="W_ASP_Applicant_All_Body.TestAtt" RepeatDirection="Horizontal"></aspxform:XAttachments>
                        </td>
                    </tr>
                    <tr hiddenexpress='Global.StepName =="打样人员（接收）"||Global.StepName =="到样人员（到样提交）"||Global.StepName =="采购商务"||Global.StepName =="商务审核"'>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            参考长描述：</td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XTextBox id="XTextBox11" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="700px" HiddenInput="False" XDataBind="W_ASP_Applicant_All_Body.REF_Describe" NormalCssClass="TextBoxPink" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress='Global.StepName =="打样人员（接收）"||Global.StepName =="到样人员（到样提交）"||Global.StepName =="采购商务"||Global.StepName =="商务审核"'>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            环保要求：</td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="W_ASP_Applicant_All_Body.YQ_Environmental">
                                <asp:ListItem Value="">请选择</asp:ListItem>
                                <asp:ListItem>ROHS</asp:ListItem>
                                <asp:ListItem>非ROHS</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            质量状态：</td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="W_ASP_Applicant_All_Body.YQ_Quality">
                                <asp:ListItem Value="">请选择</asp:ListItem>
                                <asp:ListItem>优选</asp:ListItem>
                                <asp:ListItem>试用</asp:ListItem>
                                <asp:ListItem>设计限选</asp:ListItem>
                                <asp:ListItem>采购限选</asp:ListItem>
                                <asp:ListItem>测试</asp:ListItem>
                                <asp:ListItem>禁选</asp:ListItem>
                                <asp:ListItem>未激活</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr hiddenexpress='Global.StepName =="打样人员（接收）"||Global.StepName =="到样人员（到样提交）"||Global.StepName =="采购商务"||Global.StepName =="商务审核"'>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                        </td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            新物料报关信息</td>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XAttachments id="XAttachments3" runat="server" XDataBind="W_ASP_Applicant_All_Body.CC_MaterialAtt" RepeatDirection="Horizontal"></aspxform:XAttachments>
                        </td>
                    </tr>
                    <!--EDE信息-->
                    <tr hiddenexpress='Global.StepName =="打样人员（接收）"||Global.StepName =="到样人员（到样提交）"||Global.StepName =="采购商务"||Global.StepName =="商务审核"||Global.StepName =="硬件测试"||Global.StepName =="硬件审批"||Global.StepName =="SQE认定"||Global.StepName =="部品审批"'>
                        <td style="BORDER-BOTTOM: #d1dedf 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="20">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="4">
                            &nbsp;<strong>EDE信息<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator26" runat="server" ControlToValidate="XTextBox26" ErrorMessage="请填写[物料编号]" Display="None" ValidationGroup="EDE专员">物料编号</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator27" runat="server" ControlToValidate="XTextBox40" ErrorMessage="请填写[EDE编码]" Display="None" ValidationGroup="EDE专员">EDE编码</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator28" runat="server" ControlToValidate="XMSNAttachments7" ErrorMessage="请上传[EDE附件]" Display="None" ValidationGroup="EDE专员">EDE附件</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator29" runat="server" ControlToValidate="XTextBox58" ErrorMessage="请填写【新物料描述】" Display="None" ValidationGroup="EDE专员">新物料描述</aspxform:XRequiredFieldValidator>
                            </strong></td>
                    </tr>
                    <tr hiddenexpress='Global.StepName =="打样人员（接收）"||Global.StepName =="到样人员（到样提交）"||Global.StepName =="采购商务"||Global.StepName =="商务审核"||Global.StepName =="硬件测试"||Global.StepName =="硬件审批"||Global.StepName =="SQE认定"||Global.StepName =="部品审批"'>
                        <td style="BORDER-BOTTOM: #d1dedf 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            &nbsp;<aspxform:XLabel id="XLabel53" runat="server" text="物料编号：" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox26" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="166px" HiddenInput="False" XDataBind="W_ASP_Applicant_All_Body.MaterialCode"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel56" runat="server" text="EDE编码：" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox40" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="188px" HiddenInput="False" XDataBind="W_ASP_Applicant_All_Body.EDECode" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress='Global.StepName =="打样人员（接收）"||Global.StepName =="到样人员（到样提交）"||Global.StepName =="采购商务"||Global.StepName =="商务审核"||Global.StepName =="硬件测试"||Global.StepName =="硬件审批"||Global.StepName =="SQE认定"||Global.StepName =="部品审批"'>
                        <td style="BORDER-BOTTOM: #d1dedf 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            &nbsp;<aspxform:XLabel id="XLabel97" runat="server" text="新物料描述：" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XTextBox id="XTextBox58" runat="server" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Min="0" Max="0" width="700px" HiddenInput="False" XDataBind="W_ASP_Applicant_All_Body.NewMaterialDescribe" NormalCssClass="TextBoxPink" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress='Global.StepName =="打样人员（接收）"||Global.StepName =="到样人员（到样提交）"||Global.StepName =="采购商务"||Global.StepName =="商务审核"||Global.StepName =="硬件测试"||Global.StepName =="硬件审批"||Global.StepName =="SQE认定"||Global.StepName =="部品审批"'>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            &nbsp;<aspxform:XLabel id="XLabel52" runat="server" text="EDE附件：" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XMSNAttachments id="XMSNAttachments7" runat="server" XDataBind="W_ASP_Applicant_All_Body.EDEAtt" StorePathExpress="1012" StorePathBasicFolder="SystemAttachmentsRoot" RepeatDirection="Horizontal"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName !="EDE专员（报关数据维护）" &amp;&amp; Global.StepName !=""'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: transparent 1px solid; BORDER-LEFT: transparent 1px solid; BORDER-TOP: transparent 1px solid; BORDER-RIGHT: transparent 1px solid" height="28" width="126">
                            <div align="left">&nbsp;报关数据是否已维护：
                            </div>
                        </td>
                        <td width="716">
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="W_ASP_Applicant_All.IsDataMaintenance" Width="100px" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator42" runat="server" ControlToValidate="XRadioButtonList4" ErrorMessage="请确认报关数据是否已维护！" Display="None" ValidationGroup="报告维护1">报关数据维护</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName !="采购专员（报关数据维护）" &amp;&amp; Global.StepName !=""'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: transparent 1px solid; BORDER-LEFT: transparent 1px solid; BORDER-TOP: transparent 1px solid; BORDER-RIGHT: transparent 1px solid" height="28" width="127">
                            <div align="left">&nbsp;报关数据是否已录入：
                            </div>
                        </td>
                        <td width="715">
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="W_ASP_Applicant_All.IsDataMaintenance2" Width="100px" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator43" runat="server" ControlToValidate="XRadioButtonList5" ErrorMessage="请确认报关数据是否已录入！" Display="None" ValidationGroup="报告维护2">报关数据录入</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" colspan="2">
                            <aspxform:XLabel id="XLabel63" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="58" colspan="2">
                            <p>
                                <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="Gainsboro" width="100%" BorderWidth="1px" TextMode="MultiLine" Height="48px" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace2" runat="server" CssClass="AA" BorderColor="Gainsboro" BorderWidth="1px" Width="100%" Height="103px"></aspxform:XSignTrace>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td height="35" width="800" align="middle">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" Width="557px" Height="33px" ConsignAreaHeaderBackColor="245, 245, 220" ConsignAreaBorderColor="Gainsboro"></aspxform:XProcessButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850">
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
