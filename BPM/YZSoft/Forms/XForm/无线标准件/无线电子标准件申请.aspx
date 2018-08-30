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
</style>
</head>
<body>
    <form runat="server">
        <p align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td height="53" width="203">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td width="377" align="middle">
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td bgcolor="white" width="210">
                            <aspxform:XLabel id="XLabel11" runat="server" XDataBind="W_ASP_Applicant_All.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td height="50" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="无线新物料申请" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label></td>
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
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="W_ASP_Applicant_All.AppDate" HiddenInput="False" width="100px" Max="0" Min="0" BorderColor="Gainsboro" ReadOnly="True" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td width="65">
                            <p align="right">
                                <aspxform:XLabel id="XLabel2" runat="server" text="申请人："></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="116">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="W_ASP_Applicant_All.Name" HiddenInput="False" width="90px" Max="0" Min="0" ReadOnly="True" CssClass="TextBox" DisableCssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="W_ASP_Applicant_All.HRID" HiddenInput="False" width="20px" Max="0" Min="0" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td width="59" align="right">
                            <aspxform:XLabel id="XLabel75" runat="server" text="SQE："></aspxform:XLabel>
                        </td>
                        <td width="127">
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="W_ASP_Applicant_All.SQE_Name" HiddenInput="False" width="90px" Max="0" Min="0" BorderColor="Gainsboro" ReadOnly="True" CssClass="TextBox" DisableCssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="W_ASP_Applicant_All.SQE_HRID" HiddenInput="False" width="20px" Max="0" Min="0" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td width="63" align="right">
                            采购商务：</td>
                        <td width="204">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="W_ASP_Applicant_All.Buy_Name" HiddenInput="False" width="90px" Max="0" Min="0" ReadOnly="True" CssClass="TextBox" DisableCssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="W_ASP_Applicant_All.Buy_HRID" HiddenInput="False" width="20px" Max="0" Min="0" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1" BorderStyle="Dotted"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel94" runat="server" text="申请基本信息" Font-Size="Small" Font-Bold="True" ForeColor="Blue"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请选择是否申请封装!" ControlToValidate="XDropDownList3">申请封装</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="请填写物料基本功能、性能!" ControlToValidate="XTextBox5">物料基本功能、性能</aspxform:XRequiredFieldValidator>
                            &nbsp;
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator32" runat="server" Display="None" ErrorMessage="请上传规格书！" ControlToValidate="XMSNAttachments2">规格书</aspxform:XRequiredFieldValidator>
                            &nbsp;
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="请填写首次使用机型/机芯!" ControlToValidate="XTextBox7">首次使用机型/机芯</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请填写应用功能模块!" ControlToValidate="XTextBox8">应用功能模块</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="请选择申请阶段!" ControlToValidate="XRadioButtonList4">申请阶段</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="请填写所属小类最接近物料!" ControlToValidate="XTextBox18">所属小类最接近物料</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" Display="None" ErrorMessage="请填写【分析理由】!" ControlToValidate="XTextBox20">分析理由</aspxform:XRequiredFieldValidator>
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
                            <aspxform:XLabel id="XLabel12" runat="server" text="物料信息" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="118">
                            <aspxform:XLabel id="XLabel6" runat="server" text="物料类型:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="middle">
                            <aspxform:XLabel id="XLabel21" runat="server" text="大类"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="188">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="W_ASP_Applicant_All.BigClassName" Width="166px" onchange="javascript:XFormOnChange(this);" XDataSource="TableName:W_ASP_Category_BigClassName" DisplayColumn="BigClassName">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="middle">
                            <aspxform:XLabel id="XLabel22" runat="server" text="小类"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="200">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="W_ASP_Applicant_All.SmallClassName" Width="166px" onchange="javascript:XFormOnChange(this);" XDataSource="TableName:W_ASP_Category;Filter:BigClassName->W_ASP_Applicant_All.BigClassName" DisplayColumn="SmallClassName">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="77">
                            <aspxform:XLabel id="XLabel5" runat="server" text="是否申请封装"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="133">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="W_ASP_Applicant_All.AppEncapsulation" PromptText="请选择">
                                <asp:ListItem>申请</asp:ListItem>
                                <asp:ListItem>不申请</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="118">
                            <aspxform:XLabel id="XLabel9" runat="server" text="物料基本功能、性能" Width="116px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox5" runat="server" XDataBind="W_ASP_Applicant_All.BaseFunction" HiddenInput="False" width="660px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="62">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"></span>
                            <p align="center">
                                <aspxform:XLabel id="XLabel36" runat="server" text="规格书"></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="660">
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="W_ASP_Applicant_All.BaseFunctionAttachment" StorePathBasicFolder="SystemAttachmentsRoot" StorePathExpress="0"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="118">
                            <aspxform:XLabel id="XLabel18" runat="server" text="首次使用机型/机芯:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="272">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="W_ASP_Applicant_All.FirstUseModel" HiddenInput="False" width="175px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="86" align="middle">
                            <aspxform:XLabel id="XLabel19" runat="server" text="应用功能模块"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="361">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="W_ASP_Applicant_All.AppFunctionModule" HiddenInput="False" width="175px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="118">
                            <aspxform:XLabel id="XLabel65" runat="server" text="申请阶段:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="725">
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="W_ASP_Applicant_All.AppStage" Width="240px" RepeatDirection="Horizontal">
                                <asp:ListItem>平台开发</asp:ListItem>
                                <asp:ListItem>产品开发</asp:ListItem>
                                <asp:ListItem>订单维护</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="118">
                            <aspxform:XLabel id="XLabel57" runat="server" text="新增理由:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="114">
                            <aspxform:XLabel id="XLabel45" runat="server" text="所属小类最接近物料"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="155">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="W_ASP_Applicant_All.NearCode" HiddenInput="False" width="152px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="22px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="87" align="middle">
                            <aspxform:XLabel id="XLabel46" runat="server" text="分析理由"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="360">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox20" runat="server" XDataBind="W_ASP_Applicant_All.AnalyseReason" HiddenInput="False" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="311px" Height="26px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel4" runat="server" text="厂家信息" Font-Bold="True"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="请选择制造厂家!" ControlToValidate="XRadioButtonList5">制造厂家</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="请选择合格厂家!" ControlToValidate="XTextBox27" DisableExpress='W_ASP_Applicant_All.FactoryType !="合格厂家" || W_ASP_Applicant_All.ProductFactory !="指定厂家"'>合格厂家</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" Display="None" ErrorMessage="请选择新厂家名称!" ControlToValidate="XTextBox6" DisableExpress='W_ASP_Applicant_All.FactoryType !="新厂家"||W_ASP_Applicant_All.ProductFactory =="不指定厂家"'>新厂家名称</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" Display="None" ErrorMessage="请选择期望资审完成时间!" ControlToValidate="XDateTimePicker9" DisableExpress='W_ASP_Applicant_All.FactoryType !="新厂家"||W_ASP_Applicant_All.ProductFactory =="不指定厂家"'>期望资审完成时间</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel55" runat="server" text="制造厂家:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" width="207">
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="W_ASP_Applicant_All.ProductFactory" RepeatDirection="Horizontal">
                                <asp:ListItem Value="不指定厂家">不指定厂家</asp:ListItem>
                                <asp:ListItem Value="指定厂家">指定厂家</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" width="329">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="W_ASP_Applicant_All.FactoryType" HiddenExpress="W_ASP_Applicant_All.ProductFactory !='指定厂家'" Width="146px" RepeatDirection="Horizontal">
                                <asp:ListItem Value="合格厂家">合格厂家</asp:ListItem>
                                <asp:ListItem Value="新厂家">新厂家</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="186" align="right">
                            <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" HiddenExpress='W_ASP_Applicant_All.FactoryType !="合格厂家" &amp;&amp; Global.StepName!="开始"' Width="98px" XDataSource="TableName:W_ASP_Applicant_Suppliers" DataMap="Suppliers->W_ASP_Applicant_All_QualifedFactory.QualifiedFactory" MultiSelect="True" UseSubmitBehavior="False" Text="选择合格厂家" DisplayColumns="BigClass:大类;SmallClass:小类;SonClass:子类;Suppliers:合格供应商" PopupWndHeight="500" PopupWndY="100" NavigateUrl="~\FormSupport\DataBrowser.aspx" PopupWndWidth="800" PopupWndX="100"></aspxform:XDataBrowserButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" dynamicarea="0,1" hiddenexpress='W_ASP_Applicant_All.FactoryType !="合格厂家"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel67" runat="server" text="合格厂家:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="W_ASP_Applicant_All_QualifedFactory.QualifiedFactory" HiddenInput="False" width="352px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="22px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="W_ASP_Applicant_All_QualifedFactory.SN" HiddenInput="False" width="35px" Max="0" Min="0" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='W_ASP_Applicant_All.FactoryType !="新厂家"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="117">
                            <aspxform:XLabel id="XLabel7" runat="server" text="新厂家名称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="273">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="W_ASP_Applicant_All.ProductFactoryName" HiddenInput="False" width="127px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" DisableExpress='W_ASP_Applicant_All.FactoryType !="新厂家"'></aspxform:XTextBox>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="103" align="middle">
                            <aspxform:XLabel id="XLabel10" runat="server" text="期望资审完成时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="344">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XDateTimePicker id="XDateTimePicker9" runat="server" XDataBind="W_ASP_Applicant_All.HopeZiSHenDate" BorderColor="#DCDCDC" BorderWidth="1" Type="TimeMinutes"></aspxform:XDateTimePicker>
                            </span></span></span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel13" runat="server" text="时限要求" Font-Bold="True"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" Display="None" ErrorMessage="请填写样品数量!" ControlToValidate="XTextBox4" DisableExpress='W_ASP_Applicant_All.NeedSample !="需要样品"'>样品数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" Display="None" ErrorMessage="请填写期望到样日期!" ControlToValidate="XDateTimePicker2" DisableExpress='W_ASP_Applicant_All.NeedSample !="需要样品"'>期望到样日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" Display="None" ErrorMessage="请填写期望编码时间!" ControlToValidate="XDateTimePicker1">期望编码时间</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel70" runat="server" text="紧急程度:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="161">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="W_ASP_Applicant_All.EmergencyLevel" Width="148px" RepeatDirection="Horizontal">
                                <asp:ListItem Value="紧急">紧急</asp:ListItem>
                                <asp:ListItem Selected="True" Value="一般">一般</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td width="563">
                            <aspxform:XLabel id="XLabel14" runat="server" text="紧急理由：" HiddenExpress='W_ASP_Applicant_All.EmergencyLevel!="紧急"'></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="W_ASP_Applicant_All.EmergencyNote" width="420px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" HiddenExpress='W_ASP_Applicant_All.EmergencyLevel!="紧急"'></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" Display="None" ErrorMessage="请填写理由！" ControlToValidate="XTextBox16" DisableExpress='W_ASP_Applicant_All.EmergencyLevel!="紧急"'>紧急理由</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="117">
                            <aspxform:XLabel id="XLabel15" runat="server" text="样品需求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="272">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="W_ASP_Applicant_All.NeedSample" Width="160px" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">需要样品</asp:ListItem>
                                <asp:ListItem>不需要样品</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="middle">
                            <aspxform:XLabel id="XLabel16" runat="server" text="样品数量" HiddenExpress='W_ASP_Applicant_All.NeedSample !="需要样品"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="367">
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="W_ASP_Applicant_All.NeedSample_Num" HiddenInput="False" width="80px" Max="0" Min="0" CssClass="TextBoxPink" NormalCssClass="TextBox" HiddenExpress='W_ASP_Applicant_All.NeedSample !="需要样品"' Height="22px"></aspxform:XTextBox>
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"></span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="117">
                            <aspxform:XLabel id="XLabel73" runat="server" text="期望到样日期:" HiddenExpress='W_ASP_Applicant_All.NeedSample !="需要样品"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="272">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="W_ASP_Applicant_All.NeedSample_Date" BorderColor="#DCDCDC" BorderWidth="1" HiddenExpress='W_ASP_Applicant_All.NeedSample !="需要样品"'></aspxform:XDateTimePicker>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="middle">
                            <aspxform:XLabel id="XLabel72" runat="server" text="期望编码时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="367">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="W_ASP_Applicant_All.HopeCodingDate" BorderColor="#DCDCDC" BorderWidth="1px"></aspxform:XDateTimePicker>
                            </span></span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="开始" || Global.StepName =="硬件经理审核" || W_ASP_Applicant_All.ProductFactoryName==""'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel33" runat="server" text="供应商资源" Font-Bold="True"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" Display="None" ErrorMessage="请选择新厂家是否需要引进!" ControlToValidate="XRadioButtonList8" ValidationGroup="供应商资审">新厂家是否需要引进</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" Display="None" ErrorMessage="请填写承诺资审完成日期!" ControlToValidate="XDateTimePicker8" DisableExpress='W_ASP_Applicant_All.NewFactoryAdd !="是"' ValidationGroup="供应商资审">承诺资审完成日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" Display="None" ErrorMessage="请填写不引进理由!" ControlToValidate="XTextBox39" DisableExpress='W_ASP_Applicant_All.NewFactoryAdd !="否"' ValidationGroup="供应商资审">不引进理由</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="开始" ||Global.StepName =="硬件经理审核" || W_ASP_Applicant_All.ProductFactoryName==""'>
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel76" runat="server" text="新厂家是否需要引进:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="W_ASP_Applicant_All.NewFactoryAdd" RepeatDirection="Horizontal">
                                <asp:ListItem Value="是">是</asp:ListItem>
                                <asp:ListItem Value="否">否</asp:ListItem>
                            </aspxform:XRadioButtonList>
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
                            <aspxform:XLabel id="XLabel77" runat="server" text="承诺资审完成日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" XDataBind="W_ASP_Applicant_All.ZiSHenDate" BorderColor="#DCDCDC" BorderWidth="1" Type="TimeMinutes"></aspxform:XDateTimePicker>
                            &nbsp;
                            <aspxform:XLabel id="XLabel54" runat="server" text="审批完成时限" HiddenExpress="1"></aspxform:XLabel>
                            <aspxform:XDateTimePicker id="XDateTimePicker5" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" Font-Bold="True" XDataBind="W_ASP_Applicant_All.OverTime" BorderColor="Gainsboro" ReadOnly="True" BorderWidth="1px" HiddenExpress="1" Width="164px" onchange="javascript:XFormOnChange(this);" Type="TimeMinutes" XSubType="timeminutes" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='W_ASP_Applicant_All.NewFactoryAdd !="否"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel78" runat="server" text="不引进理由:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XTextBox id="XTextBox39" runat="server" XDataBind="W_ASP_Applicant_All.FactoryNoReason" width="100%" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="开始" ||Global.StepName =="硬件经理审核"|| Global.StepName =="供应商资审"|| W_ASP_Applicant_All.ProductFactoryName ==""'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel41" runat="server" text="新厂家资审信息" Font-Bold="True"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" Display="None" ErrorMessage="请选择新供方是否合格!" ControlToValidate="XDropDownList7" ValidationGroup="供应商资审1">新供方是否合格</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" Display="None" ErrorMessage="请填写供应商代码!" ControlToValidate="XTextBox11" DisableExpress='W_ASP_Applicant_All.NewFactoryHeGe !="合格"' ValidationGroup="供应商资审1">供应商代码</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" Display="None" ErrorMessage="请上传资审报告!" ControlToValidate="XMSNAttachments4" DisableExpress='W_ASP_Applicant_All.NewFactoryHeGe !="合格"' ValidationGroup="供应商资审1">资审报告</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" Display="None" ErrorMessage="请填写不合格理由!" ControlToValidate="XTextBox12" DisableExpress='W_ASP_Applicant_All.NewFactoryHeGe !="不合格"' ValidationGroup="供应商资审1">不合格理由</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="开始" ||Global.StepName =="硬件经理审核"|| Global.StepName =="供应商资审"|| W_ASP_Applicant_All.ProductFactoryName ==""'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="117">
                            <aspxform:XLabel id="XLabel26" runat="server" text="新供方是否合格:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XDropDownList id="XDropDownList7" runat="server" XDataBind="W_ASP_Applicant_All.NewFactoryHeGe" PromptText="请选择">
                                <asp:ListItem>合格</asp:ListItem>
                                <asp:ListItem>不合格</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='W_ASP_Applicant_All.NewFactoryHeGe !="合格"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="117">
                            <aspxform:XLabel id="XLabel27" runat="server" text="供应商代码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="230">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="W_ASP_Applicant_All.FactoryCode" HiddenInput="False" width="137px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="53">
                            <aspxform:XLabel id="XLabel28" runat="server" text="资审报告"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="437">
                            <aspxform:XMSNAttachments id="XMSNAttachments4" runat="server" XDataBind="W_ASP_Applicant_All.ZiShenReport" StorePathBasicFolder="SystemAttachmentsRoot" StorePathExpress="0"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='W_ASP_Applicant_All.NewFactoryHeGe !="不合格"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="117">
                            <aspxform:XLabel id="XLabel29" runat="server" text="不合格理由:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="W_ASP_Applicant_All.NoHeGeReason" width="100%" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
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
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="开始" || Global.StepName =="硬件经理审核" || Global.StepName =="供应商资审" || Global.StepName =="供应商资审1"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="691">
                            <aspxform:XLabel id="XLabel32" runat="server" text="确认基本信息" Font-Size="Small" Font-Bold="True" ForeColor="Blue" PrintOut="False"></aspxform:XLabel>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" Display="None" ErrorMessage="请选择确认厂家/品牌！" ControlToValidate="XTextBox24" ValidationGroup="SQE">确认厂家/品牌</aspxform:XRequiredFieldValidator>
                            &nbsp;&nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" Display="None" ErrorMessage="请填写确认物料型号！" ControlToValidate="XTextBox23" ValidationGroup="SQE">确认物料型号</aspxform:XRequiredFieldValidator>
                            &nbsp;
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请上传规格书附件!" ControlToValidate="XMSNAttachments1" ValidationGroup="SQE">规格书附件</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator24" runat="server" Display="None" ErrorMessage="请选择[供方是否已签订质量]" ControlToValidate="XRadioButtonList9" ValidationGroup="SQE">供方是否已签订质量</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="152" align="right">
                            <div>
                                <aspxform:XAddBlockButton id="XAddBlockButton3" runat="server" HiddenExpress='Global.StepName!="SQE"' Text="新增厂家品牌" PrintOut="False" TableName="W_ASP_Applicant_All_Body"></aspxform:XAddBlockButton>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" dynamicarea="0,10" hiddenexpress='Global.StepName =="开始" || Global.StepName =="硬件经理审核" || Global.StepName =="供应商资审"  || Global.StepName =="供应商资审1"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="34" width="36">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Size="Large" Font-Bold="True" XDataBind="var" BorderWidth="1px" ForeColor="White" Width="99%" Height="31px" XType="gridlineno" Enabled="False" Font-Italic="False" Font-Overline="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="97">
                            <p align="left">
                                &nbsp;<aspxform:XLabel id="XLabel35" runat="server" text="确认厂家/品牌:"></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="222">
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="W_ASP_Applicant_All_Body.ConfirmationFactory" HiddenInput="False" width="190px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="22px"></aspxform:XTextBox>
                            <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" HiddenExpress='Global.StepName!="SQE"' Width="19px" XDataSource="TableName:W_ASP_Applicant_Suppliers" DataMap="Suppliers->W_ASP_Applicant_All_Body.ConfirmationFactory" UseSubmitBehavior="False" Text="..." DisplayColumns="BigClass:;SmallClass:;SonClass:;Suppliers:合格供应商" PopupWndHeight="500" PopupWndY="100" NavigateUrl="~\FormSupport\DataBrowser.aspx" PopupWndWidth="800" PopupWndX="100"></aspxform:XDataBrowserButton>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="112" align="middle">
                            <p align="left">
                                &nbsp;<aspxform:XLabel id="XLabel34" runat="server" text="确认物料型号:" Width="88px"></aspxform:XLabel>
                                &nbsp;
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="289">
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="W_ASP_Applicant_All_Body.ConfirmationMaterialModel" HiddenInput="False" width="201px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75">
                            <aspxform:XHistoryFormLink id="XHistoryFormLink1" runat="server" XDataBind="W_ASP_Applicant_All_Body.Detail" Width="25px" Text="查看详情" PopupWndHeight="745" PopupWndWidth="850" PopupWndYOffset="20" PopupWndXOffset="20"></aspxform:XHistoryFormLink>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30">
                            <p align="left">
                                &nbsp;规格书附件：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="4">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="W_ASP_Applicant_All_Body.SizeAtt" StorePathBasicFolder="SystemAttachmentsRoot" StorePathExpress="1011"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30">
                            <p align="left">
                                &nbsp;<aspxform:XLabel id="XLabel51" runat="server" text="物料参考长描述:"></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="4">
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="W_ASP_Applicant_All_Body.MaterialReferNote" width="100%" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30" colspan="2">
                            &nbsp;<aspxform:XLabel id="XLabel48" runat="server" text="供方是否已签订质量协议:"></aspxform:XLabel>
                            <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="W_ASP_Applicant_All_Body.QualityXieyi" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem Value="是">是</asp:ListItem>
                                <asp:ListItem Value="否">否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <p align="left">
                                &nbsp;<aspxform:XLabel id="XLabel49" runat="server" text="质量状态:"></aspxform:XLabel>
                                &nbsp;
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XDropDownList id="XDropDownList8" runat="server" XDataBind="W_ASP_Applicant_All_Body.QualityStage">
                                <asp:ListItem Selected="True">试用</asp:ListItem>
                                <asp:ListItem>优选</asp:ListItem>
                                <asp:ListItem>设计限选</asp:ListItem>
                                <asp:ListItem>采购限选</asp:ListItem>
                                <asp:ListItem>禁选</asp:ListItem>
                                <asp:ListItem>测试</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30" colspan="2">
                            &nbsp;<aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="W_ASP_Applicant_All_Body.SamplesTest" Width="219px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>需要样品测试</asp:ListItem>
                                <asp:ListItem>不需要样品测试</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="W_XR1" runat="server" Display="None" ErrorMessage="请选择是否需要样品测试？" ControlToValidate="XRadioButtonList1" ValidationGroup="SQE">样品测试</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <p align="left">
                                &nbsp;总计需要样品数量:&nbsp;
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="W_ASP_Applicant_All_Body.SamplesTestCount" HiddenInput="False" width="68px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator25" runat="server" Display="None" ErrorMessage="请填写[总计需要样品数量]" ControlToValidate="XTextBox10" DisableExpress='W_ASP_Applicant_All_Body.SamplesTest!="需要样品测试"' ValidationGroup="SQE">总计需要样品数量</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="29">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <p align="left">
                                &nbsp;<aspxform:XLabel id="XLabel8" runat="server" text="物料工艺层"></aspxform:XLabel>
                                :
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="4">
                            <aspxform:XDropDownList id="XDropDownList10" runat="server" XDataBind="W_ASP_Applicant_All_Body.MaterialProcessLayer" onchange="javascript:XFormOnChange(this);" XDataSource="XDataSource" PromptText="请选择">
                                <asp:ListItem Value="S1">S1代表的是整机层用的物料</asp:ListItem>
                                <asp:ListItem Value="S4">S4代表所有贴片层用的物料(所有IC归纳到贴片层)</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr hiddenexpress='Global.StepName =="SQE" || Global.StepName =="采购商务" || Global.StepName =="批准人1"'>
                        <td style="BORDER-BOTTOM: #d1dedf 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" colspan="5">
                            &nbsp;<strong>EDE信息<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator26" runat="server" Display="None" ErrorMessage="请填写[物料编号]" ControlToValidate="XTextBox26" ValidationGroup="EDE专员">物料编号</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator27" runat="server" Display="None" ErrorMessage="请填写[EDE编码]" ControlToValidate="XTextBox40" ValidationGroup="EDE专员">EDE编码</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator28" runat="server" Display="None" ErrorMessage="请上传[EDE附件]" ControlToValidate="XMSNAttachments7" ValidationGroup="EDE专员">EDE附件</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator29" runat="server" Display="None" ErrorMessage="请填写【确认物料长描述】" ControlToValidate="XTextBox58" ValidationGroup="EDE专员">确认物料长描述</aspxform:XRequiredFieldValidator>
                            </strong></td>
                    </tr>
                    <tr hiddenexpress='Global.StepName =="SQE" || Global.StepName =="采购商务" || Global.StepName =="批准人1"'>
                        <td style="BORDER-BOTTOM: #d1dedf 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="29">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            &nbsp;<aspxform:XLabel id="XLabel53" runat="server" text="物料编号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="W_ASP_Applicant_All_Body.MaterialCode" HiddenInput="False" width="166px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel56" runat="server" text="EDE编码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="W_ASP_Applicant_All_Body.EDECode" HiddenInput="False" width="188px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress='Global.StepName =="SQE" || Global.StepName =="采购商务" || Global.StepName =="批准人1"'>
                        <td style="BORDER-BOTTOM: #d1dedf 0px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30">
                            &nbsp;<aspxform:XLabel id="XLabel97" runat="server" text="确认物料长描述:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="4">
                            <aspxform:XTextBox id="XTextBox58" runat="server" XDataBind="W_ASP_Applicant_All_Body.ConfirmationMaterialLongDescribe" HiddenInput="False" width="700px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress='Global.StepName =="SQE" || Global.StepName =="采购商务" || Global.StepName =="批准人1"'>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="32">
                            &nbsp;<aspxform:XLabel id="XLabel52" runat="server" text="EDE附件:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="4">
                            <aspxform:XMSNAttachments id="XMSNAttachments7" runat="server" XDataBind="W_ASP_Applicant_All_Body.EDEAtt" StorePathBasicFolder="SystemAttachmentsRoot" StorePathExpress="1012"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName !="EDE专员1" &amp;&amp; Global.StepName !=""'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: transparent 1px solid; BORDER-LEFT: transparent 1px solid; BORDER-TOP: transparent 1px solid; BORDER-RIGHT: transparent 1px solid" height="30" width="800">
                            <div align="left">&nbsp;<aspxform:XCheckBoxList id="XCheckBoxList9" runat="server" XDataBind="W_ASP_Applicant_All.AllInfo" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>PPL录入</asp:ListItem>
                                    <asp:ListItem>SAP录入</asp:ListItem>
                                    <asp:ListItem>EDE上传</asp:ListItem>
                                </aspxform:XCheckBoxList>
                            </div>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <p>
                                <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" width="100%" BorderColor="#DCDCDC" BorderWidth="1" TextMode="MultiLine" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace2" runat="server" BorderColor="Gainsboro" CssClass="AA" BorderWidth="1px" Width="100%" Height="103px"></aspxform:XSignTrace>
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
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" Width="557px" Height="33px" ConsignAreaBorderColor="Gainsboro" ConsignAreaHeaderBackColor="245, 245, 220"></aspxform:XProcessButtonList>
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
