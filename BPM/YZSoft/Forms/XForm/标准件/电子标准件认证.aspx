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
	FONT-FAMILY: verdana; FONT-SIZE: 12px
}
TABLE {
	BORDER-COLLAPSE: collapse; FONT-FAMILY: verdana; FONT-SIZE: 12px
}
P {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT-FAMILY: verdana; FONT-SIZE: 12px; PADDING-TOP: 0px
}
TD {
	PADDING-BOTTOM: 0px; PADDING-LEFT: 2px; PADDING-RIGHT: 0px
}
TD.NoPadding {
	PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
INPUT {
	HEIGHT: 20px
}
.TextBox {
	BORDER-BOTTOM: silver 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none
}
.TextBoxPink {
	BORDER-BOTTOM: pink 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none
}
INPUT.UL {
	BORDER-BOTTOM: #33ff33 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none
}
TABLE.SignHistory {
	BORDER-BOTTOM: #dcdcdc 1px solid; BORDER-LEFT: #dcdcdc 1px solid; BORDER-COLLAPSE: collapse; BORDER-TOP: #dcdcdc 1px solid; BORDER-RIGHT: #dcdcdc 1px solid
}
TABLE.SignHistory TD.Col1 {
	TEXT-ALIGN: right; BACKGROUND-COLOR: #ffffff; WIDTH: 30%; PADDING-RIGHT: 3px; COLOR: gray
}
TABLE.SignHistory TD.Col2 {
	TEXT-ALIGN: right; BACKGROUND-COLOR: #f0f0f0; PADDING-LEFT: 3px; WIDTH: 25%; PADDING-RIGHT: 20px; FONT-WEIGHT: bold
}
TABLE.SignHistory TD.Col3 {
	TEXT-ALIGN: right; BACKGROUND-COLOR: #ffffff; WIDTH: 15%; PADDING-RIGHT: 3px; COLOR: gray
}
TABLE.SignHistory TD.Col4 {
	TEXT-ALIGN: right; BACKGROUND-COLOR: #f0f0f0; PADDING-LEFT: 3px; WIDTH: 25%; PADDING-RIGHT: 20px; FONT-WEIGHT: bold
}
TABLE.SignHistory INPUT.Acc {
	BORDER-BOTTOM: #dcdcdc 1px solid; BORDER-LEFT: #dcdcdc 1px solid; PADDING-LEFT: 3px; WIDTH: 100%; PADDING-RIGHT: 3px; BORDER-TOP: #dcdcdc 1px solid; BORDER-RIGHT: #dcdcdc 1px solid
}
TABLE.SignHistory INPUT.Date {
	BORDER-BOTTOM: #dcdcdc 1px solid; BORDER-LEFT: #dcdcdc 1px solid; PADDING-LEFT: 3px; WIDTH: 100%; PADDING-RIGHT: 3px; BORDER-TOP: #dcdcdc 1px solid; BORDER-RIGHT: #dcdcdc 1px solid
}
.a {
	WIDTH: 80px; hight: 20px
}
.b {
	hight: 20px
}
TABLE.AA {
	BACKGROUND-COLOR: #d1dedf; BORDER-COLLAPSE: separate
}
TABLE.AA TD {
	BORDER-LEFT: white 0px solid; BORDER-TOP: white 0px solid
}
TABLE.AA TR.HeaderRow {
	BACKGROUND-COLOR: #ffffff
}
TABLE.AA TR.HeaderRow TD {
	TEXT-ALIGN: center; HEIGHT: 29px
}
TABLE.AA TR.HeaderRow TD.NoColumn {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.StepNameColumn {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.SignColumn {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.ActionColumn {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.DateColumn {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.NoColumn {
	PADDING-LEFT: 8px; PADDING-RIGHT: 8px
}
TABLE.AA TR.HeaderRow TD.CommentsColumn {
	WIDTH: 99%
}
TABLE.AA TR.DataRow {
	BACKGROUND-COLOR: #f0f0f0
}
TABLE.AA TR.DataRow TD {
	TEXT-ALIGN: center; HEIGHT: 41px
}
TABLE.AA TR.DataRow TD.NoCell {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.StepNameCell {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.SignCell {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.ActionCell {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.DateCell {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.NoCell {
	PADDING-LEFT: 0px; PADDING-RIGHT: 0px
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="203">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="377" align="middle">
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="210">
                            <aspxform:XLabel id="XLabel11" runat="server" XDataBind="ASP_Applicant_Fen.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="58" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="新物料认证" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
            <!-- Insert content here -->
        </p>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="205" align="right">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="ASP_Applicant_Fen.HRID" BorderColor="Gainsboro" HiddenInput="False" width="62px" Max="0" Min="0" ReadOnly="True" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel3" runat="server" text="申请人:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="119">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="ASP_Applicant_Fen.Name" BorderColor="Gainsboro" HiddenInput="False" width="73px" Max="0" Min="0" ReadOnly="True" CssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="middle">
                            <aspxform:XLabel id="XLabel50" runat="server" text="SQE:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="135">
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="ASP_Applicant_Fen.SQE_Name" BorderColor="Gainsboro" HiddenInput="False" width="98px" Max="0" Min="0" ReadOnly="True" BorderWidth="1px" Height="22px" BorderStyle="None"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="ASP_Applicant_Fen.SQE_HRID" BorderColor="Gainsboro" HiddenInput="False" width="22px" Max="0" Min="0" BorderWidth="1px" HiddenExpress="1" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67" align="middle">
                            <aspxform:XLabel id="XLabel49" runat="server" text="申请日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="244">
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="ASP_Applicant_Fen.AppDate" BorderColor="Gainsboro" HiddenInput="False" width="166px" Max="0" Min="0" ReadOnly="True" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="ASP_Applicant_Fen.SN_All" BorderColor="Gainsboro" HiddenInput="False" width="34px" Max="0" Min="0" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="ASP_Applicant_Fen.SN" BorderColor="Gainsboro" HiddenInput="False" width="9px" Max="0" Min="0" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="ASP_Applicant_Fen.Dept" BorderColor="Gainsboro" HiddenInput="False" width="8px" Max="0" Min="0" ReadOnly="True" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel94" runat="server" text="申请基本信息" Font-Size="Small" Font-Bold="True" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel42" runat="server" text="物料信息" Font-Bold="True"></aspxform:XLabel>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="44">
                            <aspxform:XLabel id="XLabel21" runat="server" text="大类"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="168">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="ASP_Applicant_Fen.BigClassName" onchange="javascript:XFormOnChange(this);" XDataSource="TableName:ASP_Category_BigClassName" DisplayColumn="BigClassName" Width="166px">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56">
                            <aspxform:XLabel id="XLabel22" runat="server" text="小类"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="171">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="ASP_Applicant_Fen.SmallClassName" onchange="javascript:XFormOnChange(this);" XDataSource="TableName:ASP_Category" DisplayColumn="SmallClassName" Width="166px" DataMap="SQE_HRID->ASP_Applicant_Fen.SQE_HRID;SQE_HRName->ASP_Applicant_Fen.SQE_Name">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="115">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="155">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27">
                            <aspxform:XLabel id="XLabel5" runat="server" text="是否申请封装"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="ASP_Applicant_Fen.AppEncapsulation" PromptText="请选择">
                                <asp:ListItem>申请</asp:ListItem>
                                <asp:ListItem>不申请</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" XDataBind="ASP_Applicant_Fen.SQLB" HiddenExpress='ASP_Applicant_Fen.AppEncapsulation != "申请"' RepeatDirection="Horizontal">
                                <asp:ListItem>新申请</asp:ListItem>
                                <asp:ListItem>已有临时封装编码</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel51" runat="server" text="输入临时封装编码：" HiddenExpress='ASP_Applicant_Fen.SQLB !="已有临时封装编码"' Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="ASP_Applicant_Fen.FZBM" HiddenInput="False" width="134px" Max="0" Min="0" HiddenExpress='ASP_Applicant_Fen.SQLB !="已有临时封装编码"' CssClass="TextBoxPink" Height="23px" Value ValueToDisplayText></aspxform:XTextBox>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox5" runat="server" XDataBind="ASP_Applicant_Fen.BaseFunction" HiddenInput="False" width="660px" Max="0" Min="0" DisableBehavior="ReadOnly" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="24px" TextMode="MultiLine" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="136">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"></span>
                            <aspxform:XLabel id="XLabel36" runat="server" text="附件(原理图及规格要求)"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="586">
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="ASP_Applicant_Fen.BaseFunctionAttachment" StorePathBasicFolder="SystemAttachmentsRoot" StorePathExpress="0"></aspxform:XMSNAttachments>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="254">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="ASP_Applicant_Fen.FirstUseModel" HiddenInput="False" width="175px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="76">
                            <aspxform:XLabel id="XLabel19" runat="server" text="应用功能模块"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="389">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="ASP_Applicant_Fen.AppFunctionModule" HiddenInput="False" width="175px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="118">
                            <aspxform:XLabel id="XLabel65" runat="server" text="申请阶段"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="725">
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="ASP_Applicant_Fen.AppStage" Width="312px" RepeatDirection="Horizontal">
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
                            &nbsp;<aspxform:XLabel id="XLabel57" runat="server" text="新增理由"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="110">
                            <aspxform:XLabel id="XLabel45" runat="server" text="所属小类最接近物料"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="140">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="ASP_Applicant_Fen.NearCode" HiddenInput="False" width="138px" Max="0" Min="0" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="52">
                            <aspxform:XLabel id="XLabel46" runat="server" text="分析理由"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="414">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox20" runat="server" XDataBind="ASP_Applicant_Fen.AnalyseReason" HiddenInput="False" Max="0" Min="0" DisableBehavior="ReadOnly" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="26px" Width="325px" TextMode="MultiLine" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel43" runat="server" text="厂家信息" Font-Bold="True"></aspxform:XLabel>
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
                            <aspxform:XLabel id="XLabel55" runat="server" text="制造厂家:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" width="162">
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="ASP_Applicant_Fen.ProductFactory" RepeatDirection="Horizontal">
                                <asp:ListItem Value="不指定厂家">不指定厂家</asp:ListItem>
                                <asp:ListItem Value="指定厂家">指定厂家</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="560">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="ASP_Applicant_Fen.FactoryType" HiddenExpress='ASP_Applicant_Fen.ProductFactory !="指定厂家"' Width="146px" RepeatDirection="Horizontal">
                                <asp:ListItem Value="合格厂家">合格厂家</asp:ListItem>
                                <asp:ListItem Value="新厂家">新厂家</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_Fen.FactoryType !="合格厂家"' dynamicarea="0,1" datamap="QualifiedFactory->ASP_Applicant_All_QualifedFactory.QualifiedFactory">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="118">
                            <aspxform:XLabel id="XLabel2" runat="server" text="合格厂家:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="725">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="ASP_Applicant_All_QualifedFactory.QualifiedFactory" HiddenInput="False" width="424px" Max="0" Min="0" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="22px" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_Fen.FactoryType !="新厂家"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="118">
                            <aspxform:XLabel id="XLabel33" runat="server" text="新厂家名称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="249">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="ASP_Applicant_Fen.ProductFactoryName" HiddenInput="False" width="236px" Max="0" Min="0" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="100">
                            <aspxform:XLabel id="XLabel48" runat="server" text="期望资审完成时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="370">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XDateTimePicker id="XDateTimePicker9" runat="server" XDataBind="ASP_Applicant_Fen.HopeZiSHenDate" BorderColor="Gainsboro" BorderWidth="1px" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel44" runat="server" text="时限要求" Font-Bold="True"></aspxform:XLabel>
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
                            <aspxform:XLabel id="XLabel70" runat="server" text="紧急程度:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" width="727">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="148">
                                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="ASP_Applicant_Fen.EmergencyLevel" Width="146px" RepeatDirection="Horizontal">
                                                <asp:ListItem Selected="True" Value="一般">一般</asp:ListItem>
                                                <asp:ListItem Value="紧急">紧急</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                        </td>
                                        <td width="69">
                                            <aspxform:XLabel id="XLabel28" runat="server" text="紧急说明:" HiddenExpress='ASP_Applicant_Fen.EmergencyLevel !="紧急"' Value ValueToDisplayText></aspxform:XLabel>
                                        </td>
                                        <td width="504">
                                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="ASP_Applicant_Fen.EmergencyRemark" HiddenInput="False" width="485px" Max="0" Min="0" HiddenExpress='ASP_Applicant_Fen.EmergencyLevel !="紧急"' CssClass="TextBoxPink" Value ValueToDisplayText></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" Display="None" ErrorMessage="请填写：紧急说明" ControlToValidate="XTextBox27" DisableExpress='ASP_Applicant_Fen.EmergencyLevel !="紧急"'>请填写：紧急说明</aspxform:XRequiredFieldValidator>
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
                            <aspxform:XLabel id="XLabel71" runat="server" text="样品需求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="250">
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="ASP_Applicant_Fen.NeedSample" Width="188px" RepeatDirection="Horizontal">
                                <asp:ListItem>需要样品</asp:ListItem>
                                <asp:ListItem>不需要样品</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="74" align="middle">
                            <aspxform:XLabel id="XLabel72" runat="server" text="样品数量" HiddenExpress='ASP_Applicant_Fen.NeedSample !="需要样品"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="396">
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="ASP_Applicant_Fen.NeedSample_Num" BorderColor="Gainsboro" HiddenInput="False" width="80px" Max="0" Min="0" HiddenExpress='ASP_Applicant_Fen.NeedSample !="需要样品"' CssClass="TextBox" NormalCssClass="TextBox" Height="22px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel73" runat="server" text="期望到样日期" HiddenExpress='ASP_Applicant_Fen.NeedSample !="需要样品"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="250">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="ASP_Applicant_Fen.NeedSample_Date" BorderColor="Gainsboro" ReadOnly="True" BorderWidth="1px" HiddenExpress='ASP_Applicant_Fen.NeedSample !="需要样品"' onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="74">
                            <aspxform:XLabel id="XLabel74" runat="server" text="期望编码时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="396">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="ASP_Applicant_Fen.HopeCodingDate" BorderColor="#DCDCDC" BorderWidth="1px"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_Fen.ProductFactoryName ==""'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel47" runat="server" text="供应商资源" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_Fen.ProductFactoryName ==""'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel76" runat="server" text="新厂家是否需要引进:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="ASP_Applicant_Fen.NewFactoryAdd" RepeatDirection="Horizontal">
                                <asp:ListItem Value="是">是</asp:ListItem>
                                <asp:ListItem Value="否">否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_Fen.NewFactoryAdd  !="是"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel77" runat="server" text="承诺资审完成日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" XDataBind="ASP_Applicant_Fen.ZiSHenDate" BorderColor="Gainsboro" BorderWidth="1px" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                            <aspxform:XLabel id="XLabel90" runat="server" text="物料小类简称:" HiddenExpress="1"></aspxform:XLabel>
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="ASP_Applicant_Fen.SmallClassShortName" HiddenExpress="1" onchange="javascript:XFormOnChange(this);" XDataSource="TableName:ASP_Category" DisplayColumn="SmallClassShortName" Width="166px" ValueColumn="SmallClassShortName">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_Fen.NewFactoryAdd  !="否"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel78" runat="server" text="不引进理由:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="726">
                            <aspxform:XTextBox id="XTextBox39" runat="server" XDataBind="ASP_Applicant_Fen.FactoryNoReason" width="100%" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
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
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="734" colspan="2">
                            <aspxform:XLabel id="XLabel32" runat="server" text="认证基本信息" Font-Size="Small" Font-Bold="True" ForeColor="Blue" PrintOut="False"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请填写样品数量,若无样品,请填0" ControlToValidate="XTextBox3" ValidationGroup="SQE">收到样品数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请填写厂家规格书!" ControlToValidate="XMSNAttachments1" ValidationGroup="SQE">厂家规格书</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" Display="None" ErrorMessage="请输入确认物料型号" ControlToValidate="XTextBox23">请输入确认物料型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRangeValidator id="XRangeValidator1" runat="server" Type="Double" Display="None" ErrorMessage="请正确输入物料型号" ControlToValidate="XTextBox23" DisableExpress="ASP_Applicant_Fen.ConfirmationMaterialModel !='/' &amp;&amp; ASP_Applicant_Fen.ConfirmationMaterialModel !='\'">请正确输入物料型号</aspxform:XRangeValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel30" runat="server" text="样品信息" Font-Bold="True"></aspxform:XLabel>
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
                            <aspxform:XLabel id="XLabel35" runat="server" text="确认厂家/品牌" Width="90px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="250">
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="ASP_Applicant_Fen.ConfirmationFactory" HiddenInput="False" width="197px" Max="0" Min="0" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="22px" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="82">
                            <aspxform:XLabel id="XLabel34" runat="server" text="确认物料型号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="388">
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="ASP_Applicant_Fen.ConfirmationMaterialModel" HiddenInput="False" width="182px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel8" runat="server" text="承诺到样时间" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="250">
                            <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" XDataBind="ASP_Applicant_Fen.ReceiveTime" BorderColor="#DCDCDC" BorderWidth="1px" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel40" runat="server" text="承诺编码时间" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="389">
                            <aspxform:XDateTimePicker id="XDateTimePicker6" runat="server" XDataBind="ASP_Applicant_Fen.CodeTime" BorderColor="Gainsboro" BorderWidth="1px" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="117">
                            <aspxform:XLabel id="XLabel12" runat="server" text="收到样品数量:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="177">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="ASP_Applicant_Fen.ReceiveSample_Num" BorderColor="Gainsboro" HiddenInput="False" width="163px" Max="0" Min="0" CssClass="TextBox" NormalCssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="70">
                            <aspxform:XLabel id="XLabel4" runat="server" text="厂家规格书" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="473">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="ASP_Applicant_Fen.ReceiveSampleAtt"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="SQE"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel37" runat="server" text="应用信息" Font-Bold="True"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="请填写物料应用结论!" ControlToValidate="XTextBox4" ValidationGroup="硬件设计师">物料应用结论</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="SQE"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="116">
                            <aspxform:XLabel id="XLabel13" runat="server" text="物料应用结论"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="727">
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.ResultReport" HiddenInput="False" width="553px" Max="0" Min="0" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments3" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.ResultReportAtt"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="116">
                            <aspxform:XLabel id="XLabel14" runat="server" text="是否申请EDE" HiddenExpress='Global.StepName =="SQE"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="77">
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="ASP_Applicant_Fen.AppEDE" HiddenExpress='Global.StepName =="SQE"'>
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="140" align="middle">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="175">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="101" align="middle">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="222">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="SQE"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel38" runat="server" text="认定信息" Font-Bold="True"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="请填写物料测评报告结论!" ControlToValidate="XTextBox34" ValidationGroup="SQE申请EDE">物料测评报告结论</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请上传物料设计参数数据附件!" ControlToValidate="XMSNAttachments5" DisableExpress='ASP_Applicant_Fen_Code.AppCode =="不申请EDE"' ValidationGroup="SQE申请EDE">物料设计参数数据</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="请选择供方是否已签订质量协议!" ControlToValidate="XRadioButtonList1" DisableExpress='ASP_Applicant_Fen_Code.AppCode =="不申请EDE"' ValidationGroup="SQE申请EDE">供方是否已签订质量协议</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="SQE"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="139">
                            <aspxform:XLabel id="XLabel15" runat="server" text="物料测评报告结论:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="704">
                            <aspxform:XTextBox id="XTextBox34" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.TestReport" HiddenInput="False" width="526px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments8" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.TestReportAtt"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="SQE"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="139">
                            <aspxform:XLabel id="XLabel16" runat="server" text="新物料信息(报关/差异表):" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="704">
                            <aspxform:XTextBox id="XTextBox60" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.DesignP" width="526px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments5" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.DesignParameter"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="SQE"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="140">
                            <aspxform:XLabel id="XLabel17" runat="server" text="供方是否已签订质量协议"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="76">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="ASP_Applicant_Fen.QualityXieyi" RepeatDirection="Horizontal">
                                <asp:ListItem Value="是">是</asp:ListItem>
                                <asp:ListItem Value="否">否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td width="59">
                            <aspxform:XLabel id="XLabel27" runat="server" text="质量状态:"></aspxform:XLabel>
                        </td>
                        <td width="83">
                            <aspxform:XDropDownList id="XDropDownList8" runat="server" XDataBind="ASP_Applicant_Fen.QualityStage">
                                <asp:ListItem Selected="True">试用</asp:ListItem>
                                <asp:ListItem>设计限选</asp:ListItem>
                                <asp:ListItem>采购限选</asp:ListItem>
                                <asp:ListItem>优选</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td width="479">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="ASP_Applicant_Fen.QualityStageReason" width="100%" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="SQE"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel39" runat="server" text="申请EDE" Font-Bold="True"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="请选择编码类别!" ControlToValidate="XRadioButtonList2" ValidationGroup="SQE申请EDE">编码类别</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="请选择物料工艺层!" ControlToValidate="XDropDownList6" DisableExpress='ASP_Applicant_Fen_Code.AppCode =="不申请EDE"' ValidationGroup="SQE申请EDE">物料工艺层</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="请填写物料参考长描述!" ControlToValidate="XTextBox22" DisableExpress='ASP_Applicant_Fen_Code.AppCode =="不申请EDE"' ValidationGroup="SQE申请EDE">物料参考长描述</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" Display="None" ErrorMessage="请上传EDE附件!" ControlToValidate="XMSNAttachments7" ValidationGroup="EDE专员">EDE附件</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" Display="None" ErrorMessage="请填写物料编号!" ControlToValidate="XTextBox10" ValidationGroup="EDE专员">物料编号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" Display="None" ErrorMessage="请填写EDE编码!" ControlToValidate="XTextBox40" ValidationGroup="EDE专员">EDE编码</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" Display="None" ErrorMessage="请填写确认物料长描述!" ControlToValidate="XTextBox58" ValidationGroup="EDE专员">确认物料长描述</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="SQE"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="511" colspan="3" align="middle">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="ASP_Applicant_Fen_Code.AppCode" RepeatDirection="Horizontal">
                                <asp:ListItem>申请专用编码</asp:ListItem>
                                <asp:ListItem>申请通用编码</asp:ListItem>
                                <asp:ListItem>在原有编码下新增EDE</asp:ListItem>
                                <asp:ListItem>不申请EDE</asp:ListItem>
                                <asp:ListItem>申请客供料</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="68" align="middle">
                            <aspxform:XLabel id="XLabel102" runat="server" text="物料工艺层"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="264">
                            <aspxform:XDropDownList id="XDropDownList6" runat="server" XDataBind="ASP_Applicant_Fen.MaterialProcessLayer" onchange="javascript:XFormOnChange(this);" XDataSource="XDataSource" Width="254px" PromptText="请选择">
                                <asp:ListItem Value="S1">S1代表的是整机层用的物料</asp:ListItem>
                                <asp:ListItem Value="S2">S2代表的是机芯(手插件)层用的物料</asp:ListItem>
                                <asp:ListItem Value="S3">S3代表的是机插层用的物料</asp:ListItem>
                                <asp:ListItem Value="S4">S4代表所有贴片层用的物料(所有IC归纳到贴片层)</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="SQE"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="113">
                            <aspxform:XLabel id="XLabel20" runat="server" text="物料参考长描述:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="730">
                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="ASP_Applicant_Fen.MaterialLongDescribe" width="100%" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="SQE"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="113">
                            <aspxform:XLabel id="XLabel23" runat="server" text="EDE附件:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="730">
                            <aspxform:XMSNAttachments id="XMSNAttachments7" runat="server" XDataBind="ASP_Applicant_Fen_Code.EDEAtt"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="SQE"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="114" align="left">
                            <aspxform:XLabel id="XLabel24" runat="server" text="物料编号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="310">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="ASP_Applicant_Fen_Code.MaterialCode" HiddenInput="False" width="166px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="middle">
                            <aspxform:XLabel id="XLabel25" runat="server" text="EDE编码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="356" colspan="2">
                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="ASP_Applicant_Fen_Code.EDECode" HiddenInput="False" width="188px" Max="0" Min="0" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName =="SQE"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="113">
                            <aspxform:XLabel id="XLabel97" runat="server" text="确认物料长描述:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="730">
                            <aspxform:XTextBox id="XTextBox58" runat="server" XDataBind="ASP_Applicant_Fen.ConfirmationMaterialLongDescribe" HiddenInput="False" width="700px" Max="0" Min="0" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_Fen.ProductFactoryName ==""'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel41" runat="server" text="新厂家资审信息" Font-Bold="True"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" Display="None" ErrorMessage="请选择新供方是否合格!" ControlToValidate="XDropDownList7" ValidationGroup="供应商资审">新供方是否合格</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" Display="None" ErrorMessage="请填写供应商代码!" ControlToValidate="XTextBox6" DisableExpress='ASP_Applicant_Fen.NewFactoryHeGe !="合格"' ValidationGroup="供应商资审">供应商代码</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" Display="None" ErrorMessage="请上传资审报告!" ControlToValidate="XMSNAttachments6" DisableExpress='ASP_Applicant_Fen.NewFactoryHeGe !="合格"' ValidationGroup="供应商资审">资审报告</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" Display="None" ErrorMessage="请填写不合格理由!" ControlToValidate="XTextBox12" DisableExpress='ASP_Applicant_Fen.NewFactoryHeGe  !="不合格"' ValidationGroup="供应商资审">不合格理由</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_Fen.ProductFactoryName ==""'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="113">
                            <aspxform:XLabel id="XLabel26" runat="server" text="新供方是否合格:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="730">
                            <aspxform:XDropDownList id="XDropDownList7" runat="server" XDataBind="ASP_Applicant_Fen.NewFactoryHeGe" PromptText="请选择">
                                <asp:ListItem>合格</asp:ListItem>
                                <asp:ListItem>不合格</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_Fen.NewFactoryHeGe !="合格"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="113">
                            <aspxform:XLabel id="XLabel7" runat="server" text="供应商代码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="234">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="ASP_Applicant_Fen.FactoryCode" HiddenInput="False" width="137px" Max="0" Min="0" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="53">
                            <aspxform:XLabel id="XLabel10" runat="server" text="资审报告"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="437">
                            <aspxform:XMSNAttachments id="XMSNAttachments6" runat="server" XDataBind="ASP_Applicant_Fen.ZiShenReport" StorePathBasicFolder="SystemAttachmentsRoot" StorePathExpress="0"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_Fen.NewFactoryHeGe !="不合格"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="113">
                            <aspxform:XLabel id="XLabel29" runat="server" text="不合格理由:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="730">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="ASP_Applicant_Fen.NoHeGeReason" width="100%" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName !="EDE专员(上传EDE)" &amp;&amp; Global.StepName !="EDE专员(无线上传EDE)"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28" width="846" align="middle">
                            <aspxform:XCheckBoxList id="XCheckBoxList9" runat="server" XDataBind="ASP_Applicant_Fen.AllInfo" RepeatDirection="Horizontal">
                                <asp:ListItem Value="参数表校核">参数表校核</asp:ListItem>
                                <asp:ListItem>PPL录入</asp:ListItem>
                                <asp:ListItem>PCB库更新</asp:ListItem>
                                <asp:ListItem>SAP录入</asp:ListItem>
                                <asp:ListItem>EDE上传</asp:ListItem>
                            </aspxform:XCheckBoxList>
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="Info" BorderColor="Gainsboro" HiddenInput="False" width="47px" Max="0" Min="0" BorderWidth="1px" HiddenExpress="1" Express="ASP_Applicant_Fen.AllInfo"></aspxform:XTextBox>
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
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" colspan="2">
                            <aspxform:XLabel id="XLabel31" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                            <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="ASP_Applicant_Fen.MaterialType" HiddenExpress="1" Width="158px" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">新物料</asp:ListItem>
                                <asp:ListItem>扩点物料</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator32" runat="server" Font-Bold="True" Display="None" ErrorMessage="请勾选资料归档信息！" ControlToValidate="XTextBox9" ValidationGroup="EDE专员(上传EDE)">资料归档信息</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <p>
                                <aspxform:XCommentsTextBox id="XCommentsTextBox2" runat="server" BorderColor="#DCDCDC" width="100%" BorderWidth="1" TextMode="MultiLine" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
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
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td height="35" width="800" align="middle">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" Display="None" ErrorMessage="退回请填写审批信息" ControlToValidate="XCommentsTextBox2" ValidationGroup="Return">退回</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" Display="None" ErrorMessage="拒绝请填写审批信息" ControlToValidate="XCommentsTextBox2" ValidationGroup="Reject">拒绝</aspxform:XRequiredFieldValidator>
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
