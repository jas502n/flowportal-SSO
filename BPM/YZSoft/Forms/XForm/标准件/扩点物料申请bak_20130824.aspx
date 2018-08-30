<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
    protected void Page_Load(object sender, EventArgs e)
        {
    
           XTextBox7.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox38.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox168.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
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
.TextBox {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: silver 1px solid
}
.TextBoxPink {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: pink 1px solid
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
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="203">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="377" align="middle">
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Bold="True" Font-Size="Medium" text="深圳创维数字技术股份有限公司" Font-Names="Tahoma"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="210">
                            <aspxform:XLabel id="XLabel11" runat="server" XDataBind="ASP_Applicant_Fen.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-TOP: medium none" height="58" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="物料快速(扩点)认证申请单" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </p>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="205" align="right">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="ASP_Applicant_Fen.HRID" ReadOnly="True" Min="0" Max="0" width="62px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel16" runat="server" text="申请人:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="119">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="ASP_Applicant_Fen.Name" ReadOnly="True" Min="0" Max="0" width="73px" HiddenInput="False" BorderColor="Gainsboro" CssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="47" align="right">
                            <aspxform:XLabel id="XLabel19" runat="server" text="SQE:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="159">
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="ASP_Applicant_Fen.SQE_Name" ReadOnly="True" Min="0" Max="0" width="110px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" Height="22px" BorderStyle="None"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" DataMap="Account->ASP_Applicant_Fen.SQE_HRID;DisplayName->ASP_Applicant_Fen.SQE_Name"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="ASP_Applicant_Fen.SQE_HRID" Min="0" Max="0" width="22px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="57" align="right">
                            <aspxform:XLabel id="XLabel18" runat="server" text="申请日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="244">
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="ASP_Applicant_Fen.AppDate" ReadOnly="True" Min="0" Max="0" width="166px" HiddenInput="False" BorderColor="Gainsboro" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="ASP_Applicant_Fen.Dept" ReadOnly="True" Min="0" Max="0" width="8px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="ASP_Applicant_Fen.SN" Min="0" Max="0" width="9px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="848" colspan="2">
                            <aspxform:XLabel id="XLabel94" runat="server" Font-Bold="True" Font-Size="Small" text="申请基本信息" ForeColor="Blue"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XTextBox15" ErrorMessage="请选择SQE!" Display="None">SQE</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XDropDownList6" ErrorMessage="请选择是否申请封装！" Display="None">是否申请封装</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XTextBox10" ErrorMessage="请选择厂家品牌" Display="None">厂家品牌</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XTextBox3" ErrorMessage="请填写厂家型号" Display="None">厂家型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XTextBox1" ErrorMessage="请填写现使用机型/机芯" Display="None">现使用机型/机芯</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XTextBox2" ErrorMessage="请填写应用功能模块" Display="None">应用功能模块</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XTextBox168" ErrorMessage="请填写申请理由" Display="None">申请理由</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel25" runat="server" Font-Bold="True" text="物料信息"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="56">
                            <aspxform:XLabel id="XLabel2" runat="server" text="物料类型:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="92" align="middle">
                            <aspxform:XLabel id="XLabel3" runat="server" text="大类"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="169">
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="ASP_Applicant_Fen.BigClassName" Width="166px" DisplayColumn="BigClassName" XDataSource="TableName:ASP_Category_BigClassName" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="middle">
                            <aspxform:XLabel id="XLabel20" runat="server" text="小类"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="206">
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="ASP_Applicant_Fen.SmallClassName" Width="166px" DisplayColumn="SmallClassName" XDataSource="TableName:ASP_Category;Filter:BigClassName->ASP_Applicant_Fen.BigClassName" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="115" align="middle">
                            <aspxform:XLabel id="XLabel23" runat="server" text="是否申请封装"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="110">
                            <aspxform:XDropDownList id="XDropDownList6" runat="server" XDataBind="ASP_Applicant_Fen.AppEncapsulation" PromptText="请选择">
                                <asp:ListItem>申请</asp:ListItem>
                                <asp:ListItem Selected="True">不申请</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2" align="right">
                            <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" HiddenExpress="1" Width="98px" DataMap="Suppliers->ASP_Applicant_All_QualifedFactory.QualifiedFactory" XDataSource="TableName:ASP_Applicant_Suppliers" Text="选择厂家品牌" UseSubmitBehavior="False" DisplayColumns="BigClass:大类;SmallClass:小类;SonClass:子类;Suppliers:合格供应商" PopupWndHeight="500" PopupWndY="100" NavigateUrl="~\FormSupport\DataBrowser.aspx" PopupWndWidth="800" PopupWndX="100"></aspxform:XDataBrowserButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="67">
                            <aspxform:XLabel id="XLabel67" runat="server" text="厂家品牌:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="261">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="ASP_Applicant_All_QualifedFactory.QualifiedFactory" Min="0" Max="0" width="174px" HiddenInput="False" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="22px" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="72">
                            <aspxform:XLabel id="XLabel4" runat="server" text="厂家型号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="162">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="ASP_Applicant_All_QualifedFactory.FactoryModel" Min="0" Max="0" width="120px" HiddenInput="False" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="93">
                            <aspxform:XLabel id="XLabel12" runat="server" text="物料规格书"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="176">
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="ASP_Applicant_All_QualifedFactory.MaterialGuiGeAtt"></aspxform:XMSNAttachments>
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
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="118">
                            <aspxform:XLabel id="XLabel24" runat="server" text="现使用机型/机芯:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="176">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="ASP_Applicant_Fen.FirstUseModel" Min="0" Max="0" width="153px" HiddenInput="False" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="74">
                            <aspxform:XLabel id="XLabel26" runat="server" text="应用功能模块"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="469">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="ASP_Applicant_Fen.AppFunctionModule" Min="0" Max="0" width="175px" HiddenInput="False" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="25" width="65">
                            <aspxform:XLabel id="XLabel28" runat="server" text="申请理由:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="777">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox168" runat="server" XDataBind="ASP_Applicant_Fen.AddReason" Min="0" Max="0" width="740px" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="20px" DisableCssClass="TextBoxPink" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel10" runat="server" Font-Bold="True" text="物料测试信息"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ControlToValidate="XTextBox34" ErrorMessage="请填写物料测评报告结论" Display="None">物料测评报告结论</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="104">
                            <aspxform:XLabel id="XLabel58" runat="server" text="物料测评报告结论:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="739">
                            <aspxform:XTextBox id="XTextBox34" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.TestReport" Min="0" Max="0" width="700px" HiddenInput="False" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments8" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.TestReportAtt"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="ASP_Applicant_Fen.Name == ASP_Applicant_Fen.SQE_Name">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="104">
                            <aspxform:XLabel id="XLabel74" runat="server" text="期望编码时间:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="739">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="ASP_Applicant_Fen.HopeCodingDate" BorderColor="#DCDCDC" BorderWidth="1px" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="XDateTimePicker1" ErrorMessage="请填写期望编码时间" Display="None" DisableExpress="ASP_Applicant_Fen.Name == ASP_Applicant_Fen.SQE_Name">期望编码时间</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="848" colspan="2">
                            <aspxform:XLabel id="XLabel15" runat="server" Font-Bold="True" text="物料认证信息"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ControlToValidate="XMSNAttachments5" ErrorMessage="请上传物料设计参数数据附件！" Display="None" DisableExpress='if(Global.StepName =="开始", ASP_Applicant_Fen.Name != ASP_Applicant_Fen.SQE_Name,ASP_Applicant_Fen.Name == ASP_Applicant_Fen.SQE_Name)'>物料设计参数数据</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ControlToValidate="XRadioButtonList6" ErrorMessage="请选择供方是否已签订质量协议！" Display="None" DisableExpress='if(Global.StepName =="开始", ASP_Applicant_Fen.Name != ASP_Applicant_Fen.SQE_Name,ASP_Applicant_Fen.Name == ASP_Applicant_Fen.SQE_Name)'>供方是否已签订质量协议</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ControlToValidate="XRadioButtonList5" ErrorMessage="请选择申请编码类别！" Display="None" DisableExpress='if(Global.StepName =="开始", ASP_Applicant_Fen.Name != ASP_Applicant_Fen.SQE_Name,ASP_Applicant_Fen.Name == ASP_Applicant_Fen.SQE_Name)'>申请编码</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" ControlToValidate="XDropDownList1" ErrorMessage="请选择物料工艺层！" Display="None" DisableExpress='if(Global.StepName =="开始", ASP_Applicant_Fen.Name != ASP_Applicant_Fen.SQE_Name,ASP_Applicant_Fen.Name == ASP_Applicant_Fen.SQE_Name)'>物料工艺层</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="139">
                            <aspxform:XLabel id="XLabel17" runat="server" text="新物料报关信息:" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="704">
                            <aspxform:XTextBox id="XTextBox60" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.DesignP" width="665px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments5" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.DesignParameter"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="139">
                            <aspxform:XLabel id="XLabel30" runat="server" text="供方是否已签订质量协议"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="77">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="ASP_Applicant_Fen.QualityXieyi" RepeatDirection="Horizontal">
                                <asp:ListItem Value="是">是</asp:ListItem>
                                <asp:ListItem Value="否">否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td width="59">
                            <aspxform:XLabel id="XLabel32" runat="server" text="质量状态:"></aspxform:XLabel>
                        </td>
                        <td width="83">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="ASP_Applicant_Fen.QualityStage">
                                <asp:ListItem>试用</asp:ListItem>
                                <asp:ListItem>设计限选</asp:ListItem>
                                <asp:ListItem>采购限选</asp:ListItem>
                                <asp:ListItem>优选</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td width="478">
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="ASP_Applicant_Fen.QualityStageReason" width="100%" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: 1px solid; BORDER-TOP: 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="672" colspan="3" align="middle">
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="ASP_Applicant_Fen.AppCode" Width="668px" RepeatDirection="Horizontal">
                                <asp:ListItem>扩点通用编号,在原编号下新增EDE</asp:ListItem>
                                <asp:ListItem>厂家扩点,申请专用编号</asp:ListItem>
                                <asp:ListItem>新增专用编码</asp:ListItem>
                                <asp:ListItem>新增通用编码</asp:ListItem>
                                <asp:ListItem>申请客供料</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="69" align="middle">
                            <aspxform:XLabel id="XLabel102" runat="server" text="物料工艺层"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: 1px solid; BORDER-RIGHT: 1px solid" width="101">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="ASP_Applicant_Fen.MaterialProcessLayer" Width="94px" XDataSource="XDataSource" onchange="javascript:XFormOnChange(this);" PromptText="请选择">
                                <asp:ListItem Value="S1">S1代表的是整机层用的物料</asp:ListItem>
                                <asp:ListItem Value="S2">S2代表的是机芯(手插件)层用的物料</asp:ListItem>
                                <asp:ListItem Value="S3">S3代表的是机插层用的物料</asp:ListItem>
                                <asp:ListItem Value="S4">S4代表所有贴片层用的物料(所有IC归纳到贴片层)</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="21" width="687">
                            <aspxform:XLabel id="XLabel40" runat="server" Font-Bold="True" Font-Size="Small" text="EDE信息" ForeColor="Blue"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" ControlToValidate="XTextBox8" ErrorMessage="请填写厂家型号！" Display="None" DisableExpress='if(Global.StepName =="开始", ASP_Applicant_Fen.Name != ASP_Applicant_Fen.SQE_Name,ASP_Applicant_Fen.Name == ASP_Applicant_Fen.SQE_Name)'>厂家型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" ControlToValidate="XMSNAttachments9" ErrorMessage="请上传物料规格书！" Display="None" DisableExpress='if(Global.StepName =="开始", ASP_Applicant_Fen.Name != ASP_Applicant_Fen.SQE_Name,ASP_Applicant_Fen.Name == ASP_Applicant_Fen.SQE_Name)'>物料规格书</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" ControlToValidate="XTextBox37" ErrorMessage="请填写原物料编码！" Display="None" DisableExpress='if(ASP_Applicant_Fen.AppCode == "申请新增专用编码" ||  ASP_Applicant_Fen.AppCode == "申请新增通用编码" ||ASP_Applicant_Fen.AppCode == "" ,1, if(Global.StepName =="开始", ASP_Applicant_Fen.Name != ASP_Applicant_Fen.SQE_Name,ASP_Applicant_Fen.Name == ASP_Applicant_Fen.SQE_Name))'>原物料编码</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" ControlToValidate="XTextBox38" ErrorMessage="请填写物料描述！" Display="None" DisableExpress='if(Global.StepName =="开始", ASP_Applicant_Fen.Name != ASP_Applicant_Fen.SQE_Name,ASP_Applicant_Fen.Name == ASP_Applicant_Fen.SQE_Name)'>物料描述</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" Font-Bold="False" ControlToValidate="XTextBox6" ErrorMessage="请填写EDE编码！" Display="None" ValidationGroup="EDE专员">EDE编码</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" Font-Bold="False" ControlToValidate="XTextBox5" ErrorMessage="请填写新物料编码！" Display="None" ValidationGroup="EDE专员">新物料编码</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" Font-Bold="False" ControlToValidate="XMSNAttachments1" ErrorMessage="请上传EDE附件！" Display="None" ValidationGroup="EDE专员">EDE附件</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" Font-Bold="False" ControlToValidate="XTextBox7" ErrorMessage="请填写新物料描述！" Display="None" ValidationGroup="EDE专员">新物料描述</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="156" align="right">
                            <div>
                                <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="增加扩点物料" PrintOut="False" TableName="ASP_Applicant_Fen_KuoDianMaterial"></aspxform:XAddBlockButton>
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
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" dynamicarea="0,4">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: darkred 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" rowspan="4" width="37">
                            <aspxform:XLabel id="XLabel13" runat="server" Font-Bold="True" Font-Size="12pt" text="物料" Height="19px" Width="35px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: darkred 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="4" width="24">
                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Font-Bold="True" Font-Size="Large" XDataBind="var" BorderColor="White" BorderWidth="1px" Height="37px" Width="15px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="116" align="right">
                            <aspxform:XLabel id="XLabel7" runat="server" text="厂家型号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="183">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="ASP_Applicant_Fen_KuoDianMaterial.MaterialModel" Min="0" Max="0" width="240px" HiddenInput="False" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="108" align="right">
                            <aspxform:XLabel id="XLabel49" runat="server" text="原物料编码:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="346">
                            <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="ASP_Applicant_Fen_KuoDianMaterial.OldMaterialCode" Min="0" Max="0" width="166px" HiddenInput="False" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" align="right">
                            <aspxform:XLabel id="XLabel50" runat="server" text="参考长描述:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox38" runat="server" XDataBind="ASP_Applicant_Fen_KuoDianMaterial.OldMaterialCodeRemark" Min="0" Max="0" width="240px" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="23px" DisableCssClass="TextBoxPink" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XLabel id="XLabel9" runat="server" Text="物料规格书:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XMSNAttachments id="XMSNAttachments9" runat="server" XDataBind="ASP_Applicant_Fen_KuoDianMaterial.KuoDianAtt"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23" align="right">
                            <aspxform:XLabel id="XLabel21" runat="server" text="EDE编码:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="ASP_Applicant_Fen_KuoDianMaterial.EDECode" Min="0" Max="0" width="240px" HiddenInput="False" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XLabel id="XLabel5" runat="server" text="新物料编码:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="ASP_Applicant_Fen_KuoDianMaterial.NewMaterialCode" Min="0" Max="0" width="166px" HiddenInput="False" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" align="right">
                            <aspxform:XLabel id="XLabel8" runat="server" text="新物料描述:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox7" runat="server" XDataBind="ASP_Applicant_Fen_KuoDianMaterial.NewMaterialCodeRemark" Min="0" Max="0" width="240px" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="21px" DisableCssClass="TextBoxPink" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XLabel id="XLabel14" runat="server" text="EDE附件:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="ASP_Applicant_Fen_KuoDianMaterial.EDEAtt"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel37" runat="server" Font-Bold="True" Font-Size="Small" text="资料归档及审核信息" ForeColor="Blue" PrintOut="False"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator32" runat="server" Font-Bold="True" ControlToValidate="XTextBox25" ErrorMessage="请勾选资料归档信息！" Display="None" ValidationGroup="EDE专员上传">资料归档信息</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="104">
                            <aspxform:XLabel id="XLabel6" runat="server" text="是否需要商务确认:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="76">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="ASP_Applicant_Fen.SWReview" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="660">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="ASP_Applicant_Fen.SWReview_Reason" Min="0" Max="0" HiddenInput="False" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="294px" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
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
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName !="EDE专员上传"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="846" align="middle">
                            <aspxform:XCheckBoxList id="XCheckBoxList9" runat="server" XDataBind="ASP_Applicant_Fen.AllInfo" RepeatDirection="Horizontal">
                                <asp:ListItem Value="参数表校核">参数表校核</asp:ListItem>
                                <asp:ListItem>PPL录入</asp:ListItem>
                                <asp:ListItem>PCB库更新</asp:ListItem>
                                <asp:ListItem>SAP录入</asp:ListItem>
                                <asp:ListItem>EDE上传</asp:ListItem>
                            </aspxform:XCheckBoxList>
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="Info" Min="0" Max="0" width="47px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1" Express="ASP_Applicant_Fen.AllInfo"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="19" colspan="2">
                            <aspxform:XLabel id="XLabel31" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="ASP_Applicant_Fen.MaterialType" HiddenExpress="1" Width="158px" RepeatDirection="Horizontal">
                                <asp:ListItem>新物料</asp:ListItem>
                                <asp:ListItem Selected="True">扩点物料</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" width="100%" BorderColor="#DCDCDC" BorderWidth="1" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" BorderColor="Gainsboro" BorderWidth="1px" CssClass="AA" Height="103px" Width="100%"></aspxform:XSignTrace>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td width="219" align="middle">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress='Global.StepName !="EDE专员1"&amp;&amp;Global.StepName !="EDE专员2"'></aspxform:XPrintButton>
                        </td>
                        <td width="627" align="middle">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="拒绝请填写审批信息" Display="None" ValidationGroup="Reject">拒绝</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="退回请填写审批信息" Display="None" ValidationGroup="Return">退回</aspxform:XRequiredFieldValidator>
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
        <div align="center">
        </div>
    </form>
</body>
</html>
