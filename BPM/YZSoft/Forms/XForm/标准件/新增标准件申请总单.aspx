<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
    protected void Page_Load(object sender, EventArgs e)
        {
           XTextBox11.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox19.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox5.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox20.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox142.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox60.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
    
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
                <!-- Insert content here -->
            </p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="188" align="middle">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <aspxform:XLabel id="XLabel2" runat="server" text="申请人:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="239">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="ASP_Applicant_All.Name" DisableCssClass="TextBox" ReadOnly="True" Min="0" Max="0" width="166px" HiddenInput="False" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="ASP_Applicant_All.HRID" ReadOnly="True" Min="0" Max="0" width="62px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="63" align="middle">
                            <aspxform:XLabel id="XLabel3" runat="server" text="申请日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="331" colspan="3">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="ASP_Applicant_All.AppDate" DisableCssClass="TextBox" ReadOnly="True" Min="0" Max="0" width="166px" HiddenInput="False" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="ASP_Applicant_All.Dept" ReadOnly="True" Min="0" Max="0" width="58px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="ASP_Applicant_All.SN" Min="0" Max="0" width="63px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='Layout工程师'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel94" runat="server" Font-Bold="True" Font-Size="Small" text="申请基本信息" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="94">
                            <aspxform:XLabel id="XLabel6" runat="server" text="物料申请类型:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="83">
                            <aspxform:XLabel id="XLabel21" runat="server" text="物料大类名称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="172">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="ASP_Applicant_All.BigClassName" Width="166px" DisplayColumn="BigClassName" XDataSource="TableName:ASP_Category_BigClassName" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="83">
                            <aspxform:XLabel id="XLabel22" runat="server" text="物料小类名称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="198">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="ASP_Applicant_All.SmallClassName" Width="166px" DisplayColumn="SmallClassName" XDataSource="TableName:ASP_Category;Filter:BigClassName->ASP_Applicant_All.BigClassName" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_All.BigClassName !="电阻"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="70" width="94">
                            <aspxform:XLabel id="XLabel96" runat="server" text="需要的参数"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="749">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox142" runat="server" XDataBind="ASP_Applicant_All.RequireParm" DisableCssClass="TextBox" Min="0" Max="0" HiddenInput="False" CssClass="TextBox" NormalCssClass="TextBox" Width="741px" Height="67px" TextMode="MultiLine" ValidationGroup="销售人员">a)精度：               b)阻值：                c)功率：                d)封装：

理由分析:</aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_All.BigClassName !="电阻"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="94">
                            <aspxform:XLabel id="XLabel98" runat="server" text="器件的具体用途" Width="87px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="59" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox60" runat="server" XDataBind="ASP_Applicant_All.RequireUse" DisableCssClass="TextBox" Min="0" Max="0" HiddenInput="False" CssClass="TextBox" NormalCssClass="TextBox" Width="706px" Height="57px" TextMode="MultiLine" ValidationGroup="销售人员">i.电路单元（或者CBB号）：
ii.用途（例如限流、分压）：
iii.使用环境（或者面对的应力）</aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="30" width="65">
                            <aspxform:XLabel id="XLabel99" runat="server" text="附：原理图"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="681">
                            <aspxform:XMSNAttachments id="XMSNAttachments3" runat="server" XDataBind="ASP_Applicant_All.PrincipleDiagram" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" DisableExpress='ASP_Applicant_All.BigClassName !="电阻"' ControlToValidate="XMSNAttachments3" ErrorMessage="请上传原理图！" Display="None">原理图</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XRadioButtonList9" ErrorMessage="是否申请封装必填！" Display="None">申请封装</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" DisableExpress="ASP_Applicant_All.AppEncapsulation !='申请'" ControlToValidate="XTextBox44" ErrorMessage="申请库类型必填！" Display="None">申请库类型</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XTextBox11" ErrorMessage="物料型号必填！" Display="None">物料型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="XRadioButtonList5" ErrorMessage="生产厂家必选！" Display="None">生产厂家</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" DisableExpress='ASP_Applicant_All.ProductFactory !="指定厂家"' ControlToValidate="XTextBox27" ErrorMessage="厂家名称必填！" Display="None">厂家名称</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ControlToValidate="XTextBox5" ErrorMessage="物料基本功能、性能必填！" Display="None"> 物料基本功能</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ControlToValidate="XTextBox45" ErrorMessage="请勾选涉及法规及市场准入要求" Display="None">实际法规</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" DisableExpress="ASP_Applicant_All.MarketRequires !='其它'" ControlToValidate="XTextBox6" ErrorMessage="请填写涉及的法规" Display="None">涉及法规orther</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" valign="top" width="162">
                            <aspxform:XLabel id="XLabel5" runat="server" text="是否申请封装:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="ASP_Applicant_All.AppEncapsulation" RepeatDirection="Horizontal">
                                <asp:ListItem>申请</asp:ListItem>
                                <asp:ListItem>不申请</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="168">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="ASP_Applicant_All.MaterialType" Width="158px" RepeatDirection="Horizontal">
                                <asp:ListItem>新物料</asp:ListItem>
                                <asp:ListItem>扩点物料</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="338">
                            <aspxform:XLabel id="XLabel4" runat="server" text="原物料编号:" HiddenExpress='ASP_Applicant_All.MaterialType !="扩点物料"'></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="ASP_Applicant_All.OldMaterialCode" Min="0" Max="0" width="166px" HiddenInput="False" CssClass="TextBoxPink" HiddenExpress='ASP_Applicant_All.MaterialType !="扩点物料"'></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="ASP_Applicant_All.AppEncapsulation !='申请'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" valign="top" width="162">
                            <aspxform:XLabel id="XLabel69" runat="server" text="申请库类型:"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="va1" Min="0" Max="0" width="52px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1" Express="ASP_Applicant_All.StoreroomType"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="214">
                            <aspxform:XCheckBoxList id="XCheckBoxList10" runat="server" XDataBind="ASP_Applicant_All.StoreroomType" RepeatDirection="Horizontal">
                                <asp:ListItem>mentor_lib</asp:ListItem>
                                <asp:ListItem>mentor_lib_PPL</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid" width="99">
                            <aspxform:XLabel id="XLabel90" runat="server" text="物料小类简称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="363">
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="ASP_Applicant_All.SmallClassShortName" Width="166px" DisplayColumn="SmallClassShortName" XDataSource="TableName:ASP_Category;Filter:BigClassName->ASP_Applicant_All.BigClassName,SmallClassName->ASP_Applicant_All.SmallClassName" onchange="javascript:XFormOnChange(this);" ValueColumn="SmallClassShortName">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="162" align="left">
                            <aspxform:XLabel id="XLabel7" runat="server" text="物料型号(或图号加版本):"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="199">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox11" runat="server" XDataBind="ASP_Applicant_All.MaterialModel" DisableCssClass="TextBoxPink" Min="0" Max="0" width="439px" HiddenInput="False" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="21px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                            <aspxform:XLabel id="XLabel16" runat="server" text="生产厂家:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="ASP_Applicant_All.ProductFactory" RepeatDirection="Horizontal">
                                <asp:ListItem Value="不指定厂家">不指定厂家</asp:ListItem>
                                <asp:ListItem Value="指定厂家">指定厂家</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_All.ProductFactory !="指定厂家"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="162">
                            <aspxform:XLabel id="XLabel42" runat="server" text="厂家名称"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="207">
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="ASP_Applicant_All.ProductFactoryName" DisableCssClass="TextBoxPink" Min="0" Max="0" width="195px" HiddenInput="False" CssClass="TextBoxPink" Height="22px"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel53" runat="server" text="*" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="73" align="middle">
                            <aspxform:XLabel id="XLabel43" runat="server" text="联系人:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="194">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="ASP_Applicant_All.ProductFactoryRelation" DisableCssClass="TextBoxPink" Min="0" Max="0" width="174px" HiddenInput="False" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="65">
                            <aspxform:XLabel id="XLabel44" runat="server" text="联系方式:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="123">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="ASP_Applicant_All.ProductFactoryTel" DisableCssClass="TextBoxPink" Min="0" Max="0" width="103px" HiddenInput="False" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="162">
                            <aspxform:XLabel id="XLabel9" runat="server" text="物料基本功能、性能" Width="116px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox5" runat="server" XDataBind="ASP_Applicant_All.BaseFunction" DisableCssClass="TextBoxPink" Min="0" Max="0" width="660px" HiddenInput="False" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel56" runat="server" text="*" ForeColor="Red" Width="2px"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="101">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"></span>
                            <aspxform:XLabel id="XLabel36" runat="server" text="附件(设计规格书)"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="577">
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="ASP_Applicant_All.BaseFunctionAttachment" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" DisableExpress='ASP_Applicant_All.NeedSample !="不需要样品"' ControlToValidate="XMSNAttachments2" ErrorMessage="您选择了不需要样品，请上传设计规格书！" Display="None">物料设计规格书</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="162">
                            <aspxform:XLabel id="XLabel10" runat="server" text="涉及法规及市场准入要求:"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="va2" Min="0" Max="0" width="15px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1" Express="ASP_Applicant_All.MarketRequires"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid" width="434">
                            <aspxform:XCheckBoxList id="XCheckBoxList2" runat="server" XDataBind="ASP_Applicant_All.MarketRequires" Width="420px" RepeatDirection="Horizontal">
                                <asp:ListItem>CE</asp:ListItem>
                                <asp:ListItem>3C</asp:ListItem>
                                <asp:ListItem>UL</asp:ListItem>
                                <asp:ListItem>REACH </asp:ListItem>
                                <asp:ListItem>ROHS</asp:ListItem>
                                <asp:ListItem>VDE</asp:ListItem>
                                <asp:ListItem>专利</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="244">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="ASP_Applicant_All.MarketRequires_Other" DisableCssClass="TextBoxPink" Min="0" Max="0" HiddenInput="False" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="186px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" valign="top" width="160">
                            <aspxform:XLabel id="XLabel17" runat="server" text="申请阶段:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="673">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="ASP_Applicant_All.AppStage" Width="312px" RepeatDirection="Horizontal">
                                <asp:ListItem>平台开发</asp:ListItem>
                                <asp:ListItem>产品开发</asp:ListItem>
                                <asp:ListItem>订单维护</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" ControlToValidate="XRadioButtonList1" ErrorMessage="请勾选申请阶段！" Display="None">申请阶段</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" ControlToValidate="XTextBox7" ErrorMessage="首个使用机型机芯必填！" Display="None">首个使用机型</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" ControlToValidate="XTextBox8" ErrorMessage="应用功能模块必填！" Display="None">应用功能模块</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" ControlToValidate="XTextBox17" ErrorMessage="用途类型必选其一！" Display="None">用途类型</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="163">
                            <aspxform:XLabel id="XLabel18" runat="server" text="首个使用机型/机芯:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="272">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="ASP_Applicant_All.FirstUseModel" DisableCssClass="TextBoxPink" Min="0" Max="0" width="175px" HiddenInput="False" CssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel58" runat="server" text="*" ForeColor="Red" Width="2px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="117" align="middle">
                            <aspxform:XLabel id="XLabel19" runat="server" text="应用功能模块:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="289" colspan="2">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="ASP_Applicant_All.AppFunctionModule" DisableCssClass="TextBoxPink" Min="0" Max="0" width="175px" HiddenInput="False" CssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel59" runat="server" text="*" ForeColor="Red" Width="2px"></aspxform:XLabel>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="161">
                            <aspxform:XLabel id="XLabel13" runat="server" text="用途类型"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="va3" Min="0" Max="0" width="24px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1" Express='if(ASP_Applicant_All.UseType_Productive == 0 ,if(ASP_Applicant_All.UseType_Nonproductive == 0 ,"","aa") ,"aa")  '></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="678" colspan="2">
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="ASP_Applicant_All.UseType_Productive" Text="生产用料,需要物料编码(预研项目)"></aspxform:XCheckBox>
                            <aspxform:XLabel id="XLabel41" runat="server" text="期望编码时间 :" HiddenExpress="ASP_Applicant_All.UseType_Productive == 0"></aspxform:XLabel>
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="ASP_Applicant_All.HopeCodingDate" CssClass="TextBox" BorderColor="#DCDCDC" HiddenExpress="ASP_Applicant_All.UseType_Productive == 0"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" DisableExpress="ASP_Applicant_All.UseType_Productive == 0" ControlToValidate="XDateTimePicker1" ErrorMessage="请填写期望编码时间！" Display="None">编码时间</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" DisableExpress="ASP_Applicant_All.UseType_Nonproductive ==0" ControlToValidate="XTextBox14" ErrorMessage="用途描述"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28" colspan="2">
                            <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="ASP_Applicant_All.UseType_Nonproductive" Text="非生产用料,不需要物料编码(工装用)"></aspxform:XCheckBox>
                            <aspxform:XLabel id="XLabel12" runat="server" text="用途描述:" HiddenExpress="ASP_Applicant_All.UseType_Nonproductive ==0"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="ASP_Applicant_All.UseTypeDescribe" DisableCssClass="TextBoxPink" Min="0" Max="0" width="404px" HiddenInput="False" CssClass="TextBoxPink" HiddenExpress="ASP_Applicant_All.UseType_Nonproductive ==0"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="100">
                            <aspxform:XLabel id="XLabel15" runat="server" text="样品需求"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="807" colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="ASP_Applicant_All.NeedSample" RepeatDirection="Horizontal">
                                <asp:ListItem>需要样品</asp:ListItem>
                                <asp:ListItem>不需要样品</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" ControlToValidate="XRadioButtonList3" ErrorMessage="样品采购需要必选！" Display="None">样品采购需求</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" DisableExpress='ASP_Applicant_All.NeedSample !="需要采购样品"' ControlToValidate="XTextBox16" ErrorMessage="数量必填" Display="None">数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" DisableExpress='ASP_Applicant_All.NeedSample !="需要采购样品"' ControlToValidate="XDateTimePicker3" ErrorMessage="期望到货日期必填！" Display="None">期望到货日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" DisableExpress='ASP_Applicant_All.NeedSample !="不需要采购样品"' ControlToValidate="XTextBox10" ErrorMessage="采用的确认方式必填！" Display="None">采用确认方式</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" colspan="2">
                            <aspxform:XLabel id="XLabel23" runat="server" text="数量:" HiddenExpress='ASP_Applicant_All.NeedSample !="需要样品"'></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="ASP_Applicant_All.NeedSample_Num" Min="0" Max="0" width="53px" HiddenInput="False" CssClass="TextBox" BorderColor="Gainsboro" HiddenExpress='ASP_Applicant_All.NeedSample !="需要样品"' Height="22px"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel25" runat="server" text="期望到货日期:" HiddenExpress='ASP_Applicant_All.NeedSample !="需要样品"'></aspxform:XLabel>
                            <aspxform:XDateTimePicker id="XDateTimePicker3" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="ASP_Applicant_All.NeedSample_Date" ReadOnly="True" CssClass="TextBox" BorderColor="Gainsboro" HiddenExpress='ASP_Applicant_All.NeedSample !="需要样品"' Width="125px" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XLabel id="XLabel26" runat="server" text="采用的确认方式:" HiddenExpress='ASP_Applicant_All.NeedSample !="不需要样品"'></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="ASP_Applicant_All.NeedSampleMode" DisableCssClass="TextBoxPink" Min="0" Max="0" width="368px" HiddenInput="False" CssClass="TextBoxPink" HiddenExpress='ASP_Applicant_All.NeedSample !="不需要样品"'></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="6" width="18">
                            <aspxform:XLabel id="XLabel27" runat="server" text="新增必要性" Width="16px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28" width="143">
                            <aspxform:XLabel id="XLabel28" runat="server" text="新增理由:"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator24" runat="server" ControlToValidate="XRadioButtonList6" ErrorMessage="新增理由请选其一！" Display="None">新增理由</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator25" runat="server" DisableExpress="ASP_Applicant_All.AddReason  !='其他'" ControlToValidate="XTextBox19" ErrorMessage="新增理由为其他时请填写！" Display="None">其他</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none" width="301">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="ASP_Applicant_All.AddReason" Width="300px" RepeatDirection="Horizontal">
                                <asp:ListItem>客供料</asp:ListItem>
                                <asp:ListItem>客户指定</asp:ListItem>
                                <asp:ListItem>OEM</asp:ListItem>
                                <asp:ListItem>设计需要</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="6">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox19" runat="server" XDataBind="ASP_Applicant_All.AddReason_Other" DisableCssClass="TextBoxPink" Min="0" Max="0" width="273px" HiddenInput="False" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" HiddenExpress="ASP_Applicant_All.AddReason  !='其他'" Height="26px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" colspan="8">
                            <aspxform:XLabel id="XLabel29" runat="server" text="与公司现有最接近物料的比对分析"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator26" runat="server" ControlToValidate="XTextBox18" ErrorMessage="所属小类最接近物料料号必填！" Display="None">所属小类最接近物料料号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator27" runat="server" ControlToValidate="XTextBox35" ErrorMessage="质量状态必填！" Display="None">质量状态</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator28" runat="server" ControlToValidate="XTextBox20" ErrorMessage="分析理由必填！" Display="None">分析理由</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                            <aspxform:XLabel id="XLabel45" runat="server" text="所属小类最接近物料料号:" Width="139px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="298" colspan="3">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="ASP_Applicant_All.NearCode" DisableCssClass="TextBoxPink" Min="0" Max="0" width="200px" HiddenInput="False" CssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel60" runat="server" text="*" ForeColor="Red" Width="2px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75" colspan="3">
                            <aspxform:XLabel id="XLabel47" runat="server" text="质量状态:" Width="64px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="298">
                            <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="ASP_Applicant_All.QualityStage" DisableCssClass="TextBoxPink" Min="0" Max="0" width="200px" HiddenInput="False" CssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel61" runat="server" text="*" ForeColor="Red" Width="2px"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23" colspan="8">
                            <aspxform:XLabel id="XLabel46" runat="server" text="分析理由:"></aspxform:XLabel>
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox20" runat="server" XDataBind="ASP_Applicant_All.AnalyseReason" DisableCssClass="TextBoxPink" Min="0" Max="0" width="749px" HiddenInput="False" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="26px" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel62" runat="server" text="*" ForeColor="Red" Width="2px"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" colspan="8">
                            <aspxform:XLabel id="XLabel30" runat="server" text="分析附件"></aspxform:XLabel>
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="ASP_Applicant_All.AnalyseAtt" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='开始'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="102" colspan="4">
                            <aspxform:XLabel id="XLabel54" runat="server" text="审批完成时限"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="744">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" Font-Bold="True" XDataBind="ASP_Applicant_All.OverTime" ReadOnly="True" BorderColor="Gainsboro" BorderWidth="1px" Width="164px" onchange="javascript:XFormOnChange(this);" XSubType="timeminutes" XType="datetime" Type="TimeMinutes"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator29" runat="server" ValidationGroup="物料助理" ControlToValidate="XDateTimePicker5" ErrorMessage="认证时限必填！" Display="None">认证时限</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='开始'||Global.StepName =='物料助理'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="734" colspan="2">
                            <aspxform:XLabel id="XLabel32" runat="server" Font-Bold="True" Font-Size="Small" text="确认基本信息" ForeColor="Blue" PrintOut="False"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator35" runat="server" ValidationGroup="SQE" ControlToValidate="XTextBox24" ErrorMessage="请填写确认的厂家品牌！" Display="None">厂家品牌</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator36" runat="server" ValidationGroup="SQE" ControlToValidate="XTextBox23" ErrorMessage="请填写确认的物料型号！" Display="None">物料型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator33" runat="server" ValidationGroup="SQE" ControlToValidate="XTextBox29" ErrorMessage="现有合格供应商或此类物料新供应商选择其一！" Display="None">合格供应商</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator34" runat="server" ValidationGroup="SQE" DisableExpress='ASP_Applicant_All_Body.Suppliers  !="此类物料新供应商"' ControlToValidate="XDateTimePicker2" ErrorMessage="请填写启动新增供应商认证的预计完成时间" Display="None">启动新增供应商认证的预计完成时间</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator37" runat="server" ValidationGroup="SQE" ControlToValidate="XTextBox26" ErrorMessage="请填写批量供货能力评估！" Display="None">批量供货能力评估</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator38" runat="server" ValidationGroup="SQE" ControlToValidate="XTextBox36" ErrorMessage="请填写厂家的供货范围！" Display="None">厂家的供货范围</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ValidationGroup="研发经理" ControlToValidate="XTextBox31" ErrorMessage="请选择厂家是否合格" Display="None">合格</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator39" runat="server" ValidationGroup="SQE" ControlToValidate="XDateTimePicker4" ErrorMessage="请选择承诺到样时间！" Display="None">承诺到样时间</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator40" runat="server" ValidationGroup="SQE" ControlToValidate="XDateTimePicker6" ErrorMessage="请选择承诺编码时间！" Display="None">承诺编码时间</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='开始'||Global.StepName =='物料助理'" dynamicarea="0,2">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="40" width="52">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Bold="True" Font-Size="X-Large" XDataBind="var" BorderColor="Black" BorderWidth="1px" ForeColor="Red" Width="26px" Height="37px" XType="gridlineno" Font-Overline="False" Font-Italic="False" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="102">
                            <aspxform:XLabel id="XLabel35" runat="server" text="确认的厂家/品牌" Width="100px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="181">
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="ASP_Applicant_All_Body.ConfirmationFactory" DisableCssClass="TextBoxPink" Min="0" Max="0" width="168px" HiddenInput="False" CssClass="TextBoxPink" Height="22px"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel63" runat="server" text="*" ForeColor="Red" Width="2px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="90">
                            <aspxform:XLabel id="XLabel34" runat="server" text="确认的物料型号" Width="88px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="195" colspan="5">
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="ASP_Applicant_All_Body.ConfirmationMaterialModel" DisableCssClass="TextBoxPink" Min="0" Max="0" width="182px" HiddenInput="False" CssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel64" runat="server" text="*" ForeColor="Red" Width="2px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="145">
                            <aspxform:XCheckBoxList id="XCheckBoxList4" runat="server" XDataBind="ASP_Applicant_All_Body.FactoryConformity" HiddenExpress="Global.StepName =='SQE'||Global.StepName =='物料助理'||Global.StepName =='采购代表'" Width="132px" RepeatDirection="Horizontal">
                                <asp:ListItem Value="合格">触发认证</asp:ListItem>
                                <asp:ListItem Value="不合格">不触发</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="66">
                            <aspxform:XHistoryFormLink id="XHistoryFormLink1" runat="server" XDataBind="ASP_Applicant_All_Body.Detail" Width="25px" Text="查看详情" PopupWndWidth="850" PopupWndHeight="745" PopupWndXOffset="20" PopupWndYOffset="20"></aspxform:XHistoryFormLink>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="144" colspan="11">
                            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="227" colspan="2">
                                            <aspxform:XCheckBoxList id="XCheckBoxList7" runat="server" XDataBind="ASP_Applicant_All_Body.Suppliers" Width="237px" RepeatDirection="Horizontal">
                                                <asp:ListItem>现有合格供应商</asp:ListItem>
                                                <asp:ListItem>此类物料新供应商</asp:ListItem>
                                            </aspxform:XCheckBoxList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid; ORDER-LEFT: #d1dedf 1px solid" colspan="5" align="left">
                                            <aspxform:XLabel id="XLabel14" runat="server" text="启动新增供应商认证的预计完成时间:" HiddenExpress='ASP_Applicant_All_Body.Suppliers  !="此类物料新供应商"' Width="218px"></aspxform:XLabel>
                                            <aspxform:XDateTimePicker id="XDateTimePicker2" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="ASP_Applicant_All_Body.AddSupplierCompleteDate" ReadOnly="True" CssClass="TextBox" BorderColor="Gainsboro" HiddenExpress='ASP_Applicant_All_Body.Suppliers !="此类物料新供应商"' Width="167px" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                                            <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="v1" Min="0" Max="0" width="26px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1" Express='if(ASP_Applicant_All_Body.FactoryConformity =="","",if(ASP_Applicant_All_Body.FactoryConformity=="合格,不合格","","aa"))'></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="ASP_Applicant_All_Body.SN" Min="0" Max="0" width="67px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="44" width="238" colspan="7">
                                            <aspxform:XLabel id="XLabel39" runat="server" text="批量供货能力评估:" Width="109px"></aspxform:XLabel>
                                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="ASP_Applicant_All_Body.SuppliersAbilityEvaluate" DisableCssClass="TextBoxPink" Min="0" Max="0" HiddenInput="False" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="636px" Height="26px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="29" colspan="7">
                                            <aspxform:XLabel id="XLabel48" runat="server" text="厂家的供货范围:"></aspxform:XLabel>
                                            <aspxform:XTextBox id="XTextBox36" runat="server" XDataBind="ASP_Applicant_All_Body.SupplyMaterialArea" DisableCssClass="TextBoxPink" Min="0" Max="0" HiddenInput="False" CssClass="TextBoxPink" NormalCssClass="TextBox" Width="672px"></aspxform:XTextBox>
                                            <aspxform:XLabel id="XLabel66" runat="server" text="*" ForeColor="Red" Width="2px"></aspxform:XLabel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28" colspan="2" align="right">
                                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="v2" Min="0" Max="0" width="27px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1" Express='if(ASP_Applicant_All_Body.Suppliers =="","",if(ASP_Applicant_All_Body.Suppliers =="现有合格供应商,此类物料新供应商","","aa"))'></aspxform:XTextBox>
                                            <aspxform:XLabel id="XLabel8" runat="server" Font-Bold="True" text="承诺到样时间:" Width="100px"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="156" colspan="3">
                                            <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" XDataBind="ASP_Applicant_All_Body.ReceiveTime" CssClass="TextBox" BorderColor="#DCDCDC" Type="TimeMinutes"></aspxform:XDateTimePicker>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="89">
                                            <aspxform:XLabel id="XLabel40" runat="server" Font-Bold="True" text="承诺编码时间:"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="351">
                                            <aspxform:XDateTimePicker id="XDateTimePicker6" runat="server" XDataBind="ASP_Applicant_All_Body.CodeTime" CssClass="TextBox" BorderColor="#DCDCDC" Type="TimeMinutes"></aspxform:XDateTimePicker>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="22" colspan="11" align="right">
                            <div>
                                <aspxform:XAddBlockButton id="XAddBlockButton3" runat="server" Text="添加物料型号" PrintOut="False" TableName="ASP_Applicant_All_Body"></aspxform:XAddBlockButton>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='开始'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" width="309" colspan="3">
                            <aspxform:XLabel id="XLabel20" runat="server" text="SQE:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="538">
                            <div align="right">
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator32" runat="server" Width="28px" ValidationGroup="物料助理" ControlToValidate="XTextBox21" ErrorMessage="请选择SQE" Display="None">SQE</aspxform:XRequiredFieldValidator>
                                <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" HiddenExpress="Global.StepName !='物料助理'" Width="105px" Height="20px" Text="选择SQE" PrintOut="False" PopupWndWidth="800" PopupWndHeight="500" DataMap="Account->ASP_Applicant_All_AssistantSelect.SQE_HRID;DisplayName->ASP_Applicant_All_AssistantSelect.SQE_Name;Department->ASP_Applicant_All_AssistantSelect.SQE_Dept" NavigateUrl="~\FormSupport\SelUser.aspx" UseSubmitBehavior="False" PopupWndY="100" PopupWndX="100"></aspxform:XSelectUserButton>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="99">
                            <div align="center">
                                <aspxform:XLabel id="XLabel87" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="202">
                            <div align="center">
                                <aspxform:XLabel id="XLabel89" runat="server" text="SQE姓名"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <div align="center">
                                <aspxform:XLabel id="XLabel92" runat="server" text="部门"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="26">
                            <aspxform:XGridLineNo id="XGridLineNo3" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Width="33px" Height="22px" XType="gridlineno" Enabled="False" BackColor="#F0F0F0">1</aspxform:XGridLineNo>
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="ASP_Applicant_All_AssistantSelect.SQE_HRID" Min="0" Max="0" width="39px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="ASP_Applicant_All_AssistantSelect.SQE_Name" ReadOnly="True" Min="0" Max="0" width="158px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" Height="22px" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="ASP_Applicant_All_AssistantSelect.SQE_Dept" ReadOnly="True" Min="0" Max="0" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" Width="239px" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                            &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='开始'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" width="309" colspan="3">
                            <aspxform:XLabel id="XLabel86" runat="server" text="设计师:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="537">
                            <div align="right">
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Width="36px" ValidationGroup="物料助理" ControlToValidate="XTextBox37" ErrorMessage="请选择设计师" Display="None">设计师</aspxform:XRequiredFieldValidator>
                                <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" HiddenExpress="Global.StepName !='物料助理'" Width="105px" Height="20px" Text="选择设计师" PrintOut="False" PopupWndWidth="800" PopupWndHeight="500" DataMap="Account->ASP_Applicant_All_AssistantSelect.Designer_HRID;DisplayName->ASP_Applicant_All_AssistantSelect.Designer_Name;Department->ASP_Applicant_All_AssistantSelect.Designer_Dept" NavigateUrl="~\FormSupport\SelUser.aspx" UseSubmitBehavior="False" PopupWndY="100" PopupWndX="100"></aspxform:XSelectUserButton>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="98">
                            <div align="center">
                                <aspxform:XLabel id="XLabel24" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="204">
                            <div align="center">
                                <aspxform:XLabel id="XLabel37" runat="server" text="设计师姓名"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <div align="center">
                                <aspxform:XLabel id="XLabel38" runat="server" text="部门"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="26">
                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Width="33px" Height="22px" XType="gridlineno" Enabled="False" BackColor="#F0F0F0">1</aspxform:XGridLineNo>
                            <aspxform:XTextBox id="XTextBox34" runat="server" XDataBind="ASP_Applicant_All_AssistantSelect.Designer_HRID" Min="0" Max="0" width="37px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="ASP_Applicant_All_AssistantSelect.Designer_Name" ReadOnly="True" Min="0" Max="0" width="166px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" Height="22px" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox38" runat="server" XDataBind="ASP_Applicant_All_AssistantSelect.Designer_Dept" ReadOnly="True" Min="0" Max="0" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" Width="199px" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                            &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='开始'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="26" width="307" colspan="3">
                            <aspxform:XLabel id="XLabel49" runat="server" text="采购代表:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="539">
                            <div align="right">
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ValidationGroup="物料助理" ControlToValidate="XTextBox41" ErrorMessage="请选择采购代表" Display="None">采购代表</aspxform:XRequiredFieldValidator>
                                <aspxform:XSelectUserButton id="XSelectUserButton3" runat="server" HiddenExpress="Global.StepName !='物料助理'" Width="105px" Height="19px" Text="选择采购代表" PrintOut="False" PopupWndWidth="800" PopupWndHeight="500" DataMap="Account->ASP_Applicant_All_AssistantSelect.Buyer_HRID;DisplayName->ASP_Applicant_All_AssistantSelect.Buyer_Name;Department->ASP_Applicant_All_AssistantSelect.Buyer_Dept" NavigateUrl="~\FormSupport\SelUser.aspx" UseSubmitBehavior="False" PopupWndY="100" PopupWndX="100"></aspxform:XSelectUserButton>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="99">
                            <div align="center">
                                <aspxform:XLabel id="XLabel50" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="201">
                            <div align="center">
                                <aspxform:XLabel id="XLabel51" runat="server" text="采购代表姓名"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <div align="center">
                                <aspxform:XLabel id="XLabel52" runat="server" text="部门"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="26">
                            <aspxform:XGridLineNo id="XGridLineNo4" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Width="33px" Height="22px" XType="gridlineno" Enabled="False" BackColor="#F0F0F0">1</aspxform:XGridLineNo>
                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="ASP_Applicant_All_AssistantSelect.Buyer_HRID" Min="0" Max="0" width="36px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox41" runat="server" XDataBind="ASP_Applicant_All_AssistantSelect.Buyer_Name" ReadOnly="True" Min="0" Max="0" width="168px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" Height="22px" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox42" runat="server" XDataBind="ASP_Applicant_All_AssistantSelect.Buyer_Dept" ReadOnly="True" Min="0" Max="0" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" Width="265px" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                            &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="ASP_Applicant_All.ManageInfo ==&quot;&quot;||Global.StepName=='研发经理'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel33" runat="server" Font-Bold="True" text="经理审批信息"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="ASP_Applicant_All.ManageInfo ==&quot;&quot;||Global.StepName=='研发经理'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="14" width="846">
                            <aspxform:XTextBox id="XTextBox22" runat="server" Min="0" Max="0" width="100%" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" TextMode="MultiLine" Express="ASP_Applicant_All.ManageInfo"></aspxform:XTextBox>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" colspan="2">
                            <aspxform:XLabel id="XLabel31" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <p>
                                <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="ASP_Applicant_All.ManageInfo" Min="0" Max="0" width="100%" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="Global.StepName !='研发经理'" Height="54px" TextMode="MultiLine"></aspxform:XTextBox>
                                <aspxform:XCommentsTextBox id="XCommentsTextBox2" runat="server" width="100%" BorderColor="#DCDCDC" BorderWidth="1" HiddenExpress="Global.StepName =='研发经理'" TextMode="MultiLine" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" CssClass="AA" BorderColor="Gainsboro" BorderWidth="1px" Width="100%" Height="103px"></aspxform:XSignTrace>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td height="35" width="800" align="middle">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator41" runat="server" Width="74px" ValidationGroup="MagementReturn" ControlToValidate="XTextBox25" ErrorMessage="退回请填写审批信息!" Display="None">研发经理退回</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" ValidationGroup="Return" ControlToValidate="XCommentsTextBox2" ErrorMessage="退回请填写审批信息" Display="None">退回</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" ValidationGroup="Reject" ControlToValidate="XCommentsTextBox2" ErrorMessage="拒绝请填写审批信息" Display="None">拒绝</aspxform:XRequiredFieldValidator>
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
