<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
     protected void Page_Load(object sender, EventArgs e)
        {
           XTextBox5.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox20.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
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
</style>
</head>
<body>
    <form runat="server">
        <div align="center">
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="203">
                                <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                                &nbsp;</td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="377" align="middle">
                                <aspxform:XLabel id="XLabel1" runat="server" Font-Bold="True" Font-Size="Medium" text="深圳创维数字技术股份有限公司" Font-Names="Tahoma"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="210">
                                <aspxform:XLabel id="XLabel11" runat="server" XDataBind="ASP_Applicant_All.SN"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="58" colspan="3" align="middle">
                                <asp:Label id="Label1" runat="server" text="新物料申请" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                        </tr>
                    </tbody>
                </table>
            </p>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="205" align="right">
                                <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="ASP_Applicant_All.SN" HiddenExpress="1" BorderColor="Gainsboro" BorderWidth="1px" Min="0" Max="0" width="35px" HiddenInput="False"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="ASP_Applicant_All.Dept" HiddenExpress="1" BorderColor="Gainsboro" BorderWidth="1px" Min="0" Max="0" width="52px" HiddenInput="False" ReadOnly="True"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="ASP_Applicant_All.HRID" HiddenExpress="1" BorderColor="Gainsboro" BorderWidth="1px" Min="0" Max="0" width="25px" HiddenInput="False" ReadOnly="True"></aspxform:XTextBox>
                                <aspxform:XLabel id="XLabel2" runat="server" text="申请人:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="119">
                                <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="ASP_Applicant_All.Name" Min="0" Max="0" width="117px" HiddenInput="False" ReadOnly="True" NormalCssClass="TextBox" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                                <aspxform:XLabel id="XLabel75" runat="server" text="SQE:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="169">
                                <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="ASP_Applicant_All.SQE_Name" BorderColor="Gainsboro" Min="0" Max="0" width="84px" HiddenInput="False" ReadOnly="True" NormalCssClass="TextBox" DisableCssClass="TextBox" CssClass="TextBox" Height="22px"></aspxform:XTextBox>
                                <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" DataMap="Account->ASP_Applicant_All.SQE_HRID;DisplayName->ASP_Applicant_All.SQE_Name"></aspxform:XSelectUserButton>
                                <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="ASP_Applicant_All.SQE_HRID" HiddenExpress="1" BorderColor="Gainsboro" BorderWidth="1px" Min="0" Max="0" width="39px" HiddenInput="False" BorderStyle="Dotted"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="right">
                                <aspxform:XLabel id="XLabel3" runat="server" text="申请日期:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="221">
                                <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="ASP_Applicant_All.AppDate" BorderColor="Gainsboro" Min="0" Max="0" width="166px" HiddenInput="False" ReadOnly="True" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </p>
            <!-- Insert content here -->
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel94" runat="server" Font-Bold="True" Font-Size="Small" text="申请基本信息" ForeColor="Blue"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XTextBox21" ErrorMessage="请选择SQE" Display="None">SQE</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XDropDownList3" ErrorMessage="请选择是否申请封装!" Display="None">申请封装</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XTextBox5" ErrorMessage="请填写物料基本功能、性能!" Display="None">物料基本功能、性能</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XTextBox7" ErrorMessage="请填写首次使用机型/机芯!" Display="None">首次使用机型/机芯</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XTextBox8" ErrorMessage="请填写应用功能模块!" Display="None">应用功能模块</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XRadioButtonList4" ErrorMessage="请选择申请阶段!" Display="None">申请阶段</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XTextBox18" ErrorMessage="请填写所属小类最接近物料!" Display="None">所属小类最接近物料</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel12" runat="server" Font-Bold="True" text="物料信息"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
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
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="ASP_Applicant_All.BigClassName" Width="166px" DisplayColumn="BigClassName" XDataSource="TableName:ASP_Category_BigClassName" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="middle">
                            <aspxform:XLabel id="XLabel22" runat="server" text="小类"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="200">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="ASP_Applicant_All.SmallClassName" Width="166px" DisplayColumn="SmallClassName" XDataSource="TableName:ASP_Category;Filter:BigClassName->ASP_Applicant_All.BigClassName" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="77">
                            <aspxform:XLabel id="XLabel5" runat="server" text="是否申请封装"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="133">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="ASP_Applicant_All.AppEncapsulation" PromptText="请选择">
                                <asp:ListItem>申请</asp:ListItem>
                                <asp:ListItem>不申请</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="118">
                            <aspxform:XLabel id="XLabel9" runat="server" text="物料基本功能、性能" Width="116px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox5" runat="server" XDataBind="ASP_Applicant_All.BaseFunction" Min="0" Max="0" width="660px" HiddenInput="False" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="126">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"></span>
                            <aspxform:XLabel id="XLabel36" runat="server" text="附件(原理图及规格要求)" Width="134px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="596">
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="ASP_Applicant_All.BaseFunctionAttachment" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="118">
                            <aspxform:XLabel id="XLabel18" runat="server" text="首次使用机型/机芯:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="272">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="ASP_Applicant_All.FirstUseModel" Min="0" Max="0" width="175px" HiddenInput="False" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="86" align="middle">
                            <aspxform:XLabel id="XLabel19" runat="server" text="应用功能模块"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="361">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="ASP_Applicant_All.AppFunctionModule" Min="0" Max="0" width="175px" HiddenInput="False" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="118">
                            <aspxform:XLabel id="XLabel65" runat="server" text="申请阶段:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="725">
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="ASP_Applicant_All.AppStage" Width="312px" RepeatDirection="Horizontal">
                                <asp:ListItem>平台开发</asp:ListItem>
                                <asp:ListItem>产品开发</asp:ListItem>
                                <asp:ListItem>订单维护</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
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
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="ASP_Applicant_All.NearCode" Min="0" Max="0" width="152px" HiddenInput="False" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Height="22px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="87" align="middle">
                            <aspxform:XLabel id="XLabel46" runat="server" text="分析理由"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="360">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox20" runat="server" XDataBind="ASP_Applicant_All.AnalyseReason" Min="0" Max="0" HiddenInput="False" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Height="26px" Width="311px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel4" runat="server" Font-Bold="True" text="厂家信息"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ControlToValidate="XRadioButtonList5" ErrorMessage="请选择制造厂家!" Display="None">制造厂家</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="XTextBox27" ErrorMessage="请选择合格厂家!" Display="None" DisableExpress='ASP_Applicant_All.FactoryType !="合格厂家" || ASP_Applicant_All.ProductFactory !="指定厂家"'>合格厂家</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ControlToValidate="XTextBox6" ErrorMessage="请选择新厂家名称!" Display="None" DisableExpress='ASP_Applicant_All.FactoryType !="新厂家"||ASP_Applicant_All.ProductFactory =="不指定厂家"'>新厂家名称</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ControlToValidate="XDateTimePicker9" ErrorMessage="请选择期望资审完成时间!" Display="None" DisableExpress='ASP_Applicant_All.FactoryType !="新厂家"||ASP_Applicant_All.ProductFactory =="不指定厂家"'>期望资审完成时间</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="118">
                            <aspxform:XLabel id="XLabel55" runat="server" text="制造厂家:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" width="168">
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="ASP_Applicant_All.ProductFactory" RepeatDirection="Horizontal">
                                <asp:ListItem Value="不指定厂家">不指定厂家</asp:ListItem>
                                <asp:ListItem Value="指定厂家">指定厂家</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" width="368">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="ASP_Applicant_All.FactoryType" HiddenExpress="ASP_Applicant_All.ProductFactory !='指定厂家'" Width="146px" RepeatDirection="Horizontal">
                                <asp:ListItem Value="合格厂家">合格厂家</asp:ListItem>
                                <asp:ListItem Value="新厂家">新厂家</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="186" align="right">
                            <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" HiddenExpress='ASP_Applicant_All.FactoryType !="合格厂家"' Width="98px" DataMap="Suppliers->ASP_Applicant_All_QualifedFactory.QualifiedFactory" XDataSource="TableName:ASP_Applicant_Suppliers" PopupWndX="100" PopupWndWidth="800" NavigateUrl="~\FormSupport\DataBrowser.aspx" PopupWndY="100" PopupWndHeight="500" DisplayColumns="BigClass:大类;SmallClass:小类;SonClass:子类;Suppliers:合格供应商" Text="选择合格厂家" UseSubmitBehavior="False" MultiSelect="True"></aspxform:XDataBrowserButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_All.FactoryType !="合格厂家"' dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel67" runat="server" text="合格厂家:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="ASP_Applicant_All_QualifedFactory.QualifiedFactory" Min="0" Max="0" width="352px" HiddenInput="False" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Height="22px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="ASP_Applicant_All_QualifedFactory.SN" HiddenExpress="1" BorderColor="Gainsboro" BorderWidth="1px" Min="0" Max="0" width="35px" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_All.FactoryType !="新厂家"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="117">
                            <aspxform:XLabel id="XLabel7" runat="server" text="新厂家名称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="273">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="ASP_Applicant_All.ProductFactoryName" Min="0" Max="0" width="127px" HiddenInput="False" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" DisableExpress='ASP_Applicant_All.FactoryType !="新厂家"'></aspxform:XTextBox>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="103" align="middle">
                            <aspxform:XLabel id="XLabel10" runat="server" text="期望资审完成时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="344">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XDateTimePicker id="XDateTimePicker9" runat="server" XDataBind="ASP_Applicant_All.HopeZiSHenDate" BorderColor="#DCDCDC" BorderWidth="1" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                            </span></span></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel13" runat="server" Font-Bold="True" text="时限要求"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ControlToValidate="XTextBox4" ErrorMessage="请填写样品数量!" Display="None" DisableExpress='ASP_Applicant_All.NeedSample !="需要样品"'>样品数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" ControlToValidate="XDateTimePicker2" ErrorMessage="请填写期望到样日期!" Display="None" DisableExpress='ASP_Applicant_All.NeedSample !="需要样品"'>期望到样日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" ControlToValidate="XDateTimePicker1" ErrorMessage="请填写期望编码时间!" Display="None">期望编码时间</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel70" runat="server" text="紧急程度:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="ASP_Applicant_All.EmergencyLevel" Width="146px" RepeatDirection="Horizontal">
                                <asp:ListItem Value="紧急">紧急</asp:ListItem>
                                <asp:ListItem Selected="True" Value="一般">一般</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="117">
                            <aspxform:XLabel id="XLabel15" runat="server" text="样品需求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="272">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="ASP_Applicant_All.NeedSample" Width="188px" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">需要样品</asp:ListItem>
                                <asp:ListItem>不需要样品</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="middle">
                            <aspxform:XLabel id="XLabel16" runat="server" text="样品数量" HiddenExpress='ASP_Applicant_All.NeedSample !="需要样品"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="367">
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="ASP_Applicant_All.NeedSample_Num" HiddenExpress='ASP_Applicant_All.NeedSample !="需要样品"' BorderColor="Gainsboro" Min="0" Max="0" width="80px" HiddenInput="False" NormalCssClass="TextBox" CssClass="TextBox" Height="22px"></aspxform:XTextBox>
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="117">
                            <aspxform:XLabel id="XLabel73" runat="server" text="期望到样日期:" HiddenExpress='ASP_Applicant_All.NeedSample !="需要样品"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="272">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="ASP_Applicant_All.NeedSample_Date" HiddenExpress='ASP_Applicant_All.NeedSample !="需要样品"' BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XDateTimePicker>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="middle">
                            <aspxform:XLabel id="XLabel72" runat="server" text="期望编码时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="367">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="ASP_Applicant_All.HopeCodingDate" BorderColor="#DCDCDC" BorderWidth="1px"></aspxform:XDateTimePicker>
                            </span></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="开始" || ASP_Applicant_All.ProductFactoryName==""'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel33" runat="server" Font-Bold="True" text="供应商资源"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" ControlToValidate="XRadioButtonList8" ErrorMessage="请选择新厂家是否需要引进!" Display="None" ValidationGroup="供应商开发">新厂家是否需要引进</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" ControlToValidate="XDateTimePicker8" ErrorMessage="请填写承诺资审完成日期!" Display="None" DisableExpress='ASP_Applicant_All.NewFactoryAdd !="是"' ValidationGroup="供应商开发">承诺资审完成日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" ControlToValidate="XTextBox39" ErrorMessage="请填写不引进理由!" Display="None" DisableExpress='ASP_Applicant_All.NewFactoryAdd !="否"' ValidationGroup="供应商开发">不引进理由</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="开始" || ASP_Applicant_All.ProductFactoryName==""'>
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel76" runat="server" text="新厂家是否需要引进:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="ASP_Applicant_All.NewFactoryAdd" RepeatDirection="Horizontal">
                                <asp:ListItem Value="是">是</asp:ListItem>
                                <asp:ListItem Value="否">否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_All.NewFactoryAdd  !="是"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel77" runat="server" text="承诺资审完成日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" XDataBind="ASP_Applicant_All.ZiSHenDate" BorderColor="#DCDCDC" BorderWidth="1" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                            <aspxform:XLabel id="XLabel54" runat="server" text="审批完成时限" HiddenExpress="1"></aspxform:XLabel>
                            <aspxform:XDateTimePicker id="XDateTimePicker5" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" Font-Bold="True" XDataBind="ASP_Applicant_All.OverTime" HiddenExpress="1" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" Width="230px" onchange="javascript:XFormOnChange(this);" Type="TimeMinutes" XSubType="timeminutes" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_All.NewFactoryAdd !="否"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel78" runat="server" text="不引进理由:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XTextBox id="XTextBox39" runat="server" XDataBind="ASP_Applicant_All.FactoryNoReason" width="100%" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="开始" ||  Global.StepName =="供应商开发" || ASP_Applicant_All.ProductFactoryName ==""'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel41" runat="server" Font-Bold="True" text="新厂家资审信息"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" ControlToValidate="XDropDownList7" ErrorMessage="请选择新供方是否合格!" Display="None" ValidationGroup="供应商资审">新供方是否合格</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" ControlToValidate="XTextBox11" ErrorMessage="请填写供应商代码!" Display="None" DisableExpress='ASP_Applicant_All.NewFactoryHeGe !="合格"' ValidationGroup="供应商资审">供应商代码</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" ControlToValidate="XMSNAttachments4" ErrorMessage="请上传资审报告!" Display="None" DisableExpress='ASP_Applicant_All.NewFactoryHeGe !="合格"' ValidationGroup="供应商资审">资审报告</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" ControlToValidate="XTextBox12" ErrorMessage="请填写不合格理由!" Display="None" DisableExpress='ASP_Applicant_All.NewFactoryHeGe !="不合格"' ValidationGroup="供应商资审">不合格理由</aspxform:XRequiredFieldValidator>
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="ASP_Applicant_All.SmallClassShortName" HiddenExpress="1" Width="166px" DisplayColumn="SmallClassShortName" XDataSource="TableName:ASP_Category;Filter:BigClassName->ASP_Applicant_All.BigClassName,SmallClassName->ASP_Applicant_All.SmallClassName" onchange="javascript:XFormOnChange(this);" ValueColumn="SmallClassShortName">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XLabel id="XLabel90" runat="server" text="物料小类简称:" HiddenExpress="1"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="开始" ||  Global.StepName =="供应商开发" || ASP_Applicant_All.ProductFactoryName ==""'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="117">
                            <aspxform:XLabel id="XLabel26" runat="server" text="新供方是否合格:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XDropDownList id="XDropDownList7" runat="server" XDataBind="ASP_Applicant_All.NewFactoryHeGe" PromptText="请选择">
                                <asp:ListItem>合格</asp:ListItem>
                                <asp:ListItem>不合格</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_All.NewFactoryHeGe !="合格"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="117">
                            <aspxform:XLabel id="XLabel27" runat="server" text="供应商代码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="230">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="ASP_Applicant_All.FactoryCode" Min="0" Max="0" width="137px" HiddenInput="False" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="53">
                            <aspxform:XLabel id="XLabel28" runat="server" text="资审报告"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="437">
                            <aspxform:XMSNAttachments id="XMSNAttachments4" runat="server" XDataBind="ASP_Applicant_All.ZiShenReport" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_All.NewFactoryHeGe !="不合格"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="117">
                            <aspxform:XLabel id="XLabel29" runat="server" text="不合格理由:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="ASP_Applicant_All.NoHeGeReason" width="100%" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="开始" ||  Global.StepName =="供应商开发"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="691">
                            <aspxform:XLabel id="XLabel32" runat="server" Font-Bold="True" Font-Size="Small" text="确认基本信息" ForeColor="Blue" PrintOut="False"></aspxform:XLabel>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" ControlToValidate="XTextBox24" ErrorMessage="请选择确认厂家/品牌！" Display="None" ValidationGroup="SQE">确认厂家/品牌</aspxform:XRequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" ControlToValidate="XTextBox23" ErrorMessage="请填写确认物料型号！" Display="None" ValidationGroup="SQE">确认物料型号</aspxform:XRequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="152" align="right">
                            <div>
                                <aspxform:XAddBlockButton id="XAddBlockButton3" runat="server" Text="新增厂家品牌" PrintOut="False" TableName="ASP_Applicant_All_Body"></aspxform:XAddBlockButton>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="开始" ||  Global.StepName =="供应商开发"' dynamicarea="0,2">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="35" width="17">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Bold="True" Font-Size="Large" XDataBind="var" BorderWidth="1px" Height="31px" Width="10px" ForeColor="White" XType="gridlineno" Font-Overline="False" Font-Italic="False" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="97">
                            <aspxform:XLabel id="XLabel35" runat="server" text="确认厂家/品牌"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="216">
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="ASP_Applicant_All_Body.ConfirmationFactory" Min="0" Max="0" width="185px" HiddenInput="False" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Height="22px"></aspxform:XTextBox>
                            <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="19px" DataMap="Suppliers->ASP_Applicant_All_Body.ConfirmationFactory" XDataSource="TableName:ASP_Applicant_Suppliers" PopupWndX="100" PopupWndWidth="800" NavigateUrl="~\FormSupport\DataBrowser.aspx" PopupWndY="100" PopupWndHeight="500" DisplayColumns="BigClass:大类;SmallClass:小类;SonClass:子类;Suppliers:合格供应商" Text="..." UseSubmitBehavior="False"></aspxform:XDataBrowserButton>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="140" align="middle">
                            <aspxform:XLabel id="XLabel34" runat="server" text="确认物料型号" Width="88px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="148">
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="ASP_Applicant_All_Body.ConfirmationMaterialModel" Min="0" Max="0" width="146px" HiddenInput="False" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="139">
                            <aspxform:XCheckBoxList id="XCheckBoxList4" runat="server" XDataBind="ASP_Applicant_All_Body.FactoryConformity" Width="132px" RepeatDirection="Horizontal">
                                <asp:ListItem Value="合格">触发认证</asp:ListItem>
                                <asp:ListItem Value="不合格">不触发</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="70">
                            <aspxform:XHistoryFormLink id="XHistoryFormLink1" runat="server" XDataBind="ASP_Applicant_All_Body.Detail" Width="25px" PopupWndWidth="850" PopupWndHeight="745" Text="查看详情" PopupWndXOffset="20" PopupWndYOffset="20"></aspxform:XHistoryFormLink>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel8" runat="server" Font-Bold="True" text="承诺到样时间:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XDateTimePicker id="XDateTimePicker4" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="ASP_Applicant_All_Body.ReceiveTime" BorderColor="Gainsboro" ReadOnly="True" CssClass="TextBox" Width="230px" onchange="javascript:XFormOnChange(this);" Type="TimeMinutes" XSubType="timeminutes" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XLabel id="XLabel40" runat="server" Font-Bold="True" text="承诺编码时间:" Width="90px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="left">
                            <aspxform:XDateTimePicker id="XDateTimePicker6" runat="server" XDataBind="ASP_Applicant_All_Body.CodeTime" BorderColor="Gainsboro" ReadOnly="True" CssClass="TextBox" Width="230px" onchange="javascript:XFormOnChange(this);" Type="TimeMinutes" XSubType="timeminutes" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" colspan="2">
                            <aspxform:XLabel id="XLabel31" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="ASP_Applicant_All.MaterialType" HiddenExpress="1" Width="158px" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">新物料</asp:ListItem>
                                <asp:ListItem>扩点物料</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="ASP_Applicant_All.ManageInfo" HiddenExpress="1" BorderColor="Gainsboro" BorderWidth="1px" Min="0" Max="0" width="105px" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator39" runat="server" ControlToValidate="XDateTimePicker4" ErrorMessage="请选择承诺到样时间！" Display="None" ValidationGroup="SQE">承诺到样时间</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator40" runat="server" ControlToValidate="XDateTimePicker6" ErrorMessage="请选择承诺编码时间！" Display="None" ValidationGroup="SQE">承诺编码时间</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator24" runat="server" ControlToValidate="XTextBox13" ErrorMessage="请选择厂家是否触发认证!" Display="None" ValidationGroup="研发经理">合格</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox13" runat="server" HiddenExpress="1" BorderColor="Gainsboro" BorderWidth="1px" Min="0" Max="0" width="49px" HiddenInput="False" Express="ASP_Applicant_All_Body.FactoryConformity"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <p>
                                <aspxform:XCommentsTextBox id="XCommentsTextBox2" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" TextMode="MultiLine" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" BorderColor="Gainsboro" BorderWidth="1px" CssClass="AA" Height="103px" Width="100%"></aspxform:XSignTrace>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td height="35" width="800" align="middle">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" ControlToValidate="XCommentsTextBox2" ErrorMessage="退回请填写审批信息" Display="None" ValidationGroup="Return">退回</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" ControlToValidate="XCommentsTextBox2" ErrorMessage="拒绝请填写审批信息" Display="None" ValidationGroup="Reject">拒绝</aspxform:XRequiredFieldValidator>
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" Height="33px" Width="557px" ConsignAreaHeaderBackColor="245, 245, 220" ConsignAreaBorderColor="Gainsboro"></aspxform:XProcessButtonList>
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
