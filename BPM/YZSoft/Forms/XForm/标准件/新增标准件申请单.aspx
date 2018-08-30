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
           XTextBox64.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
    
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
                                <aspxform:XLabel id="XLabel11" runat="server" XDataBind="ASP_Applicant_Fen.SN"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="58" colspan="3" align="middle">
                                <asp:Label id="Label1" runat="server" text="新物料认证" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                        </tr>
                    </tbody>
                </table>
                <!-- Insert content here -->
            </p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23" align="middle">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XLabel id="XLabel2" runat="server" text="申请人:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="ASP_Applicant_Fen.Name" CssClass="TextBox" ReadOnly="True" Min="0" Max="0" width="166px" HiddenInput="False" DisableCssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="ASP_Applicant_Fen.HRID" ReadOnly="True" Min="0" Max="0" width="39px" HiddenInput="False" HiddenExpress="1" BorderWidth="1px" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                            <aspxform:XLabel id="XLabel3" runat="server" text="申请日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="ASP_Applicant_Fen.AppDate" CssClass="TextBox" ReadOnly="True" Min="0" Max="0" width="166px" HiddenInput="False" DisableCssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="ASP_Applicant_Fen.Dept" ReadOnly="True" Min="0" Max="0" width="58px" HiddenInput="False" HiddenExpress="1" BorderWidth="1px" BorderColor="Gainsboro"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="ASP_Applicant_Fen.SN" Min="0" Max="0" width="90px" HiddenInput="False" HiddenExpress="1" BorderWidth="1px" BorderColor="Gainsboro"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="ASP_Applicant_Fen.SN_All" Min="0" Max="0" width="68px" HiddenInput="False" HiddenExpress="1" BorderWidth="1px" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='Layout工程师'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel94" runat="server" Font-Bold="True" Font-Size="Small" text="申请基本信息" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="170">
                            <aspxform:XLabel id="XLabel6" runat="server" text="物料申请类型:"></aspxform:XLabel>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80">
                            <aspxform:XLabel id="XLabel21" runat="server" text="物料大类名称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="252">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="ASP_Applicant_Fen.BigClassName" Width="166px" DisplayColumn="BigClassName" XDataSource="TableName:ASP_Category_BigClassName" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80">
                            <aspxform:XLabel id="XLabel22" runat="server" text="物料小类名称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="252">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="ASP_Applicant_Fen.SmallClassName" Width="166px" DisplayColumn="SmallClassName" XDataSource="TableName:ASP_Category" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_Fen.BigClassName !="电阻"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="48" width="92">
                            <aspxform:XLabel id="XLabel98" runat="server" text="需要的参数"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="751">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox142" runat="server" XDataBind="ASP_Applicant_Fen.RequireParm" CssClass="TextBox" Min="0" Max="0" HiddenInput="False" DisableCssClass="TextBox" NormalCssClass="TextBox" Width="741px" TextMode="MultiLine" ValidationGroup="销售人员"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_Fen.BigClassName !="电阻"'>
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="92">
                            <aspxform:XLabel id="XLabel99" runat="server" text="器件的具体用途" Width="87px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="59" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox64" runat="server" XDataBind="ASP_Applicant_Fen.RequireUse" CssClass="TextBox" Min="0" Max="0" HiddenInput="False" DisableCssClass="TextBox" NormalCssClass="TextBox" Width="706px" TextMode="MultiLine" ValidationGroup="销售人员" Height="57px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid" height="30" width="75">
                            <aspxform:XLabel id="XLabel100" runat="server" text="附：原理图"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid" width="675">
                            <aspxform:XMSNAttachments id="XMSNAttachments3" runat="server" XDataBind="ASP_Applicant_Fen.PrincipleDiagram" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" valign="top" width="170">
                            <aspxform:XLabel id="XLabel5" runat="server" text="是否申请封装:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="165">
                            <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="ASP_Applicant_Fen.AppEncapsulation" RepeatDirection="Horizontal">
                                <asp:ListItem>申请</asp:ListItem>
                                <asp:ListItem>不申请</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="165">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="ASP_Applicant_Fen.MaterialType" Width="158px" RepeatDirection="Horizontal">
                                <asp:ListItem>新物料</asp:ListItem>
                                <asp:ListItem>扩点物料</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="334">
                            <aspxform:XLabel id="XLabel4" runat="server" text="原物料编号:" HiddenExpress='ASP_Applicant_Fen.MaterialType !="扩点物料"'></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="ASP_Applicant_Fen.OldMaterialCode" CssClass="TextBox" Min="0" Max="0" width="171px" HiddenInput="False" HiddenExpress='ASP_Applicant_Fen.MaterialType !="扩点物料"'></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="ASP_Applicant_Fen.AppEncapsulation !='申请'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" valign="top" width="170">
                            <aspxform:XLabel id="XLabel20" runat="server" text="申请库类型:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="673">
                            <aspxform:XCheckBoxList id="XCheckBoxList3" runat="server" XDataBind="ASP_Applicant_Fen.StoreroomType" RepeatDirection="Horizontal">
                                <asp:ListItem>mentor_lib</asp:ListItem>
                                <asp:ListItem>mentor_lib_PPL</asp:ListItem>
                            </aspxform:XCheckBoxList>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="170" align="left">
                            <aspxform:XLabel id="XLabel7" runat="server" text="物料型号(或图号加版本):"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox11" runat="server" XDataBind="ASP_Applicant_Fen.MaterialModel" CssClass="TextBox" Min="0" Max="0" width="447px" HiddenInput="False" DisableCssClass="TextBox" NormalCssClass="TextBox" TextMode="MultiLine" Height="19px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                            <aspxform:XLabel id="XLabel16" runat="server" text="生产厂家:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="ASP_Applicant_Fen.ProductFactory" RepeatDirection="Horizontal">
                                <asp:ListItem Value="不指定厂家">不指定厂家</asp:ListItem>
                                <asp:ListItem Value="指定厂家">指定厂家</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='ASP_Applicant_Fen.ProductFactory  !="指定厂家"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="169">
                            <aspxform:XLabel id="XLabel42" runat="server" text="厂家名称"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="201">
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="ASP_Applicant_Fen.ProductFactoryName" CssClass="TextBoxPink" Min="0" Max="0" width="166px" HiddenInput="False" DisableCssClass="TextBoxPink" Height="22px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="91" align="middle">
                            <aspxform:XLabel id="XLabel43" runat="server" text="联系人:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="180">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="ASP_Applicant_Fen.ProductFactoryRelation" CssClass="TextBoxPink" Min="0" Max="0" width="136px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="67">
                            <aspxform:XLabel id="XLabel44" runat="server" text="联系方式:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="121">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="ASP_Applicant_Fen.ProductFactoryTel" CssClass="TextBoxPink" width="100%" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="170">
                            <aspxform:XLabel id="XLabel9" runat="server" text="物料基本功能、性能(可加附图)"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="674">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox5" runat="server" XDataBind="ASP_Applicant_Fen.BaseFunction" CssClass="TextBoxPink" Min="0" Max="0" width="662px" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" TextMode="MultiLine" Height="22px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XLabel id="XLabel8" runat="server" Text="附件(设计规格书):"></aspxform:XLabel>
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="ASP_Applicant_Fen.BaseFunctionAttachment" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="170">
                            <aspxform:XLabel id="XLabel10" runat="server" text="涉及法规及市场准入要求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="673">
                            <aspxform:XCheckBoxList id="XCheckBoxList2" runat="server" XDataBind="ASP_Applicant_Fen.MarketRequires" Width="518px" RepeatDirection="Horizontal">
                                <asp:ListItem>CE</asp:ListItem>
                                <asp:ListItem>3C</asp:ListItem>
                                <asp:ListItem>UL</asp:ListItem>
                                <asp:ListItem>REACH </asp:ListItem>
                                <asp:ListItem>ROHS</asp:ListItem>
                                <asp:ListItem>VDE</asp:ListItem>
                                <asp:ListItem>专利</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XCheckBoxList>
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="ASP_Applicant_Fen.MarketRequires_Other" CssClass="TextBoxPink" Min="0" Max="0" width="625px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" valign="top" width="170">
                            <aspxform:XLabel id="XLabel17" runat="server" text="申请阶段:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="673">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="ASP_Applicant_Fen.AppStage" Width="312px" RepeatDirection="Horizontal">
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="172">
                            <aspxform:XLabel id="XLabel18" runat="server" text="首个使用机型/机芯:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="201">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="ASP_Applicant_Fen.FirstUseModel" CssClass="TextBoxPink" Min="0" Max="0" width="166px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="91" align="middle">
                            <aspxform:XLabel id="XLabel19" runat="server" text="应用功能模块:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="379" colspan="2">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="ASP_Applicant_Fen.AppFunctionModule" CssClass="TextBoxPink" Min="0" Max="0" width="166px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="170">
                            <aspxform:XLabel id="XLabel13" runat="server" text="用途类型"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" colspan="2">
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="ASP_Applicant_Fen.UseType_Productive" Text="生产用料,需要物料编码(预研项目)"></aspxform:XCheckBox>
                            <aspxform:XLabel id="XLabel41" runat="server" text="期望编码时间 :"></aspxform:XLabel>
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="ASP_Applicant_Fen.HopeCodingDate" CssClass="TextBoxPink"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" colspan="2">
                            <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="ASP_Applicant_Fen.UseType_Nonproductive" Text="非生产用料,不需要物料编码(工装用)"></aspxform:XCheckBox>
                            <aspxform:XLabel id="XLabel12" runat="server" text="用途描述:"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="ASP_Applicant_Fen.UseTypeDescribe" CssClass="TextBoxPink" Min="0" Max="0" width="487px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="807" colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="ASP_Applicant_Fen.NeedSample" RepeatDirection="Horizontal">
                                <asp:ListItem>需要样品</asp:ListItem>
                                <asp:ListItem>不需要样品</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" colspan="2">
                            <aspxform:XLabel id="XLabel23" runat="server" text="数量:" HiddenExpress='ASP_Applicant_Fen.NeedSample !="需要样品"'></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="ASP_Applicant_Fen.NeedSample_Num" CssClass="TextBoxPink" Min="0" Max="0" width="53px" HiddenInput="False" DisableCssClass="TextBoxPink" HiddenExpress='ASP_Applicant_Fen.NeedSample !="需要样品"' Height="22px"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel25" runat="server" text="期望到货日期:" HiddenExpress='ASP_Applicant_Fen.NeedSample !="需要样品"'></aspxform:XLabel>
                            <aspxform:XDateTimePicker id="XDateTimePicker3" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="ASP_Applicant_Fen.NeedSample_Date" CssClass="TextBoxPink" ReadOnly="True" HiddenExpress='ASP_Applicant_Fen.NeedSample !="需要样品"' Width="125px" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XLabel id="XLabel26" runat="server" text="采用的确认方式:" HiddenExpress='ASP_Applicant_Fen.NeedSample !="不需要样品"'></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="ASP_Applicant_Fen.NeedSampleMode" CssClass="TextBoxPink" Min="0" Max="0" width="368px" HiddenInput="False" DisableCssClass="TextBoxPink" HiddenExpress='ASP_Applicant_Fen.NeedSample !="不需要样品"'></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="5" width="14">
                            <aspxform:XLabel id="XLabel27" runat="server" text="新增必要性"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="144" align="middle">
                            <aspxform:XLabel id="XLabel28" runat="server" text="新增理由:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="241">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="ASP_Applicant_Fen.AddReason" RepeatDirection="Horizontal">
                                <asp:ListItem>客供料</asp:ListItem>
                                <asp:ListItem>客户指定</asp:ListItem>
                                <asp:ListItem>OEM</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox19" runat="server" XDataBind="ASP_Applicant_Fen.AddReason_Other" CssClass="TextBoxPink" Min="0" Max="0" width="434px" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" HiddenExpress="ASP_Applicant_Fen.AddReason  !='其他'" TextMode="MultiLine" Height="23px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" colspan="4">
                            <aspxform:XLabel id="XLabel29" runat="server" text="与公司现有最接近物料的比对分析"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XLabel id="XLabel45" runat="server" text="所属小类最接近物料料号:" Width="142px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="ASP_Applicant_Fen.NearCode" CssClass="TextBoxPink" Min="0" Max="0" width="231px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="58">
                            <aspxform:XLabel id="XLabel47" runat="server" text="质量状态:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="377">
                            <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="ASP_Applicant_Fen.QualityStage" CssClass="TextBoxPink" Min="0" Max="0" width="259px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" colspan="4">
                            <aspxform:XLabel id="XLabel46" runat="server" text="分析理由:"></aspxform:XLabel>
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox20" runat="server" XDataBind="ASP_Applicant_Fen.AnalyseReason" CssClass="TextBoxPink" Min="0" Max="0" width="760px" HiddenInput="False" DisableCssClass="TextBoxPink" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" colspan="4">
                            <aspxform:XLabel id="XLabel30" runat="server" text="分析附件"></aspxform:XLabel>
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="ASP_Applicant_Fen.AnalyseAtt" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="102" colspan="4">
                            <aspxform:XLabel id="XLabel69" runat="server" text="认证时限"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="744">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" Font-Bold="True" XDataBind="ASP_Applicant_Fen.OverTime" CssClass="TextBoxPink" ReadOnly="True" Width="193px" onchange="javascript:XFormOnChange(this);" XSubType="timeminutes" XType="datetime" Type="TimeMinutes"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel32" runat="server" Font-Bold="True" Font-Size="Small" text="确认基本信息" ForeColor="Blue" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="112" colspan="2">
                            <aspxform:XLabel id="XLabel35" runat="server" text="确认的厂家/品牌" Width="92px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="203">
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="ASP_Applicant_Fen.ConfirmationFactory" CssClass="TextBoxPink" Min="0" Max="0" width="131px" HiddenInput="False" DisableCssClass="TextBoxPink" Height="22px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="110">
                            <aspxform:XLabel id="XLabel34" runat="server" text="确认的物料型号" Width="95px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="226" colspan="5">
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="ASP_Applicant_Fen.ConfirmationMaterialModel" CssClass="TextBoxPink" Min="0" Max="0" width="126px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="174">
                            <aspxform:XCheckBoxList id="XCheckBoxList4" runat="server" XDataBind="ASP_Applicant_Fen.FactoryConformity" RepeatDirection="Horizontal">
                                <asp:ListItem Value="合格">触发认证</asp:ListItem>
                                <asp:ListItem Value="不合格">不触发</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="94" colspan="10">
                            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="845">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="229">
                                            <aspxform:XCheckBoxList id="XCheckBoxList7" runat="server" XDataBind="ASP_Applicant_Fen.Suppliers" RepeatDirection="Horizontal">
                                                <asp:ListItem>现有合格供应商</asp:ListItem>
                                                <asp:ListItem>此类物料新供应商</asp:ListItem>
                                            </aspxform:XCheckBoxList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                                            <aspxform:XLabel id="XLabel14" runat="server" text="启动新增供应商认证的预计完成时间:" HiddenExpress='ASP_Applicant_Fen.Suppliers  !="此类物料新供应商"' Width="206px"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="361" colspan="2">
                                            <aspxform:XDateTimePicker id="XDateTimePicker2" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="ASP_Applicant_Fen.AddSupplierCompleteDate" CssClass="TextBox" ReadOnly="True" HiddenExpress='ASP_Applicant_Fen.Suppliers  !="此类物料新供应商"' BorderColor="Gainsboro" Width="167px" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25" align="right">
                                            <aspxform:XLabel id="XLabel101" runat="server" text="是否完成资审:"></aspxform:XLabel>
                                        </td>
                                        <td>
                                            <aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" XDataBind="ASP_Applicant_Fen.TrueOrFalseReview" RepeatDirection="Horizontal">
                                                <asp:ListItem>是</asp:ListItem>
                                                <asp:ListItem>否</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                        </td>
                                        <td colspan="3">
                                            <aspxform:XTextBox id="XTextBox65" runat="server" XDataBind="ASP_Applicant_Fen.TrueOrFalseReviewNote" CssClass="TextBoxPink" width="100%"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22" align="right">
                                            <aspxform:XLabel id="XLabel39" runat="server" text="批量供货能力评估:"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="4">
                                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="ASP_Applicant_Fen.SuppliersAbilityEvaluate" CssClass="TextBoxPink" Min="0" Max="0" HiddenInput="False" DisableCssClass="TextBoxPink" Width="597px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" align="right">
                                            <aspxform:XLabel id="XLabel48" runat="server" text="厂家的供货范围:"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="4">
                                            <aspxform:XTextBox id="XTextBox36" runat="server" XDataBind="ASP_Applicant_Fen.SupplyMaterialArea" CssClass="TextBoxPink" Min="0" Max="0" width="597px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" align="right">
                                            <aspxform:XLabel id="XLabel68" runat="server" Font-Bold="True" text="承诺到样时间:" Width="84px"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="157">
                                            <aspxform:XDateTimePicker id="XDateTimePicker6" runat="server" XDataBind="ASP_Applicant_Fen.ReceiveTime" CssClass="TextBox" BorderColor="#DCDCDC" Type="TimeMinutes"></aspxform:XDateTimePicker>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="85">
                                            <aspxform:XLabel id="XLabel72" runat="server" Font-Bold="True" text="承诺编码时间:"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                                            <aspxform:XDateTimePicker id="XDateTimePicker7" runat="server" XDataBind="ASP_Applicant_Fen.CodeTime" CssClass="TextBox" BorderColor="#DCDCDC" Type="TimeMinutes"></aspxform:XDateTimePicker>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName == '采购代表'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="106" align="left">
                            <aspxform:XLabel id="XLabel36" runat="server" text="是否收到样品:" Width="91px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="175">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="ASP_Applicant_Fen.ReceiveSample" Width="173px" RepeatDirection="Horizontal">
                                <asp:ListItem>收到样品</asp:ListItem>
                                <asp:ListItem>未收到样品</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61">
                            <aspxform:XLabel id="XLabel24" runat="server" Font-Bold="False" text="样品数量:" Width="59px" Height="16px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="58" align="left">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="ASP_Applicant_Fen.ReceiveSample_Num" CssClass="TextBoxPink" Min="0" Max="0" width="44px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="130">
                            <aspxform:XLabel id="XLabel38" runat="server" Font-Bold="True" text="厂家物料规格书资料:(SQE)" Width="179px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="301">
                            <aspxform:XMSNAttachments id="XMSNAttachments11" runat="server" XDataBind="ASP_Applicant_Fen.ReceiveSampleAtt" Width="89px" XType="file" MaximumFileSize="MaximumFileSize" NewItemID="_sys_attach_item" AllowAdd="True" OnAddButtonClick="XMSNAttachments_AddAttach(this);"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='设计师'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='EDE专员'||Global.StepName =='Layout工程师1'||Global.StepName =='EDE专员1'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="203">
                            <aspxform:XLabel id="XLabel51" runat="server" text="ROADMAP/规格系列资料(SQE):" Width="201px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="640">
                            <aspxform:XMSNAttachments id="XMSNAttachments10" runat="server" XDataBind="ASP_Applicant_Fen_Business.Rodemap"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='Layout工程师'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel40" runat="server" text="认证报告"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ValidationGroup="SQE" ControlToValidate="XRadioButtonList7" ErrorMessage="请选择是否收到样品！" Display="None">是否收到样品</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ValidationGroup="SQE" ControlToValidate="XTextBox26" ErrorMessage="请填写样品数量！" Display="None" DisableExpress="ASP_Applicant_Fen.ReceiveSample  == '未收到样品'">样品数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ValidationGroup="SQE" ControlToValidate="XMSNAttachments11" ErrorMessage="请上传物料规格书！" Display="None" DisableExpress="1">物料规格书</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='Layout工程师'" dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="36">
                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Font-Bold="True" Font-Size="Medium" XDataBind="var" BorderWidth="1px" BorderColor="White" Width="22px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="65" align="left">
                            <aspxform:XLabel id="XLabel49" runat="server" text="报告类型:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="175">
                            <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="ASP_Applicant_Fen_Reports.ReportsType" CssClass="TextBoxPink" Min="0" Max="0" width="166px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="60" align="left">
                            <aspxform:XLabel id="XLabel50" runat="server" text="认证编号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="186">
                            <aspxform:XTextBox id="XTextBox38" runat="server" XDataBind="ASP_Applicant_Fen_Reports.AttestationCode" CssClass="TextBoxPink" Min="0" Max="0" width="166px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="309">
                            <aspxform:XMSNAttachments id="XMSNAttachments9" runat="server" XDataBind="ASP_Applicant_Fen_Reports.AttestationCodeAtt"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" colspan="6" align="right">
                            <div>
                                <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="添加认证报告" PrintOut="False" TableName="ASP_Applicant_Fen_Reports"></aspxform:XAddBlockButton>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='Layout工程师'||Global.StepName =='SQE'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel91" runat="server" Font-Bold="True" Font-Size="Small" text="物料认证" ForeColor="Blue" PrintOut="False"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" ValidationGroup="SQE1" ControlToValidate="XMSNAttachments8" ErrorMessage="请填写结论或上传物料测评报告附件！" Display="None" DisableExpress='ASP_Applicant_Fen_Acknowledgment.TestReport  != ""'>物料测评报告附件</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" ValidationGroup="SQE1" ControlToValidate="XMSNAttachments6" ErrorMessage="请填写结论或上传物料工程参数数据附件" Display="None" DisableExpress="1">物料工程参数数据</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator25" runat="server" ValidationGroup="设计师" ControlToValidate="XMSNAttachments5" ErrorMessage="请填写结论或上传样品应用结果报告！" Display="None" DisableExpress='ASP_Applicant_Fen_Acknowledgment.ResultReport !=""'>样品应用结果报告附件</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" ValidationGroup="SQE1" ControlToValidate="XMSNAttachments12" ErrorMessage="请填写结论或上传厂家参考规格书附件！" Display="None" DisableExpress='ASP_Applicant_Fen_Acknowledgment.FactoryReferernce !=""'>厂家参考规格书</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" ValidationGroup="SQE1" ControlToValidate="XMSNAttachments4" ErrorMessage="请上传物料设计参数数据！" Display="None">设计参数数据</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" ValidationGroup="SQE4" ControlToValidate="XMSNAttachments12" ErrorMessage="请上传确认的物料规格书(SQE):附件！" Display="None">确认的物料规格书(SQE):</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='设计师'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='SQE'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="175">
                            <aspxform:XLabel id="XLabel58" runat="server" text="物料测评报告结论(SQE):"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="668">
                            <aspxform:XTextBox id="XTextBox34" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.TestReport" CssClass="TextBoxPink" Min="0" Max="0" width="526px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments8" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.TestReportAtt"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='设计师'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='SQE'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="175">
                            <aspxform:XLabel id="XLabel61" runat="server" text="物料设计参数数据(SQE):"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="668">
                            <aspxform:XTextBox id="XTextBox60" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.DesignP" CssClass="TextBoxPink" width="526px" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments4" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.DesignParameter"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="175">
                            <aspxform:XLabel id="XLabel62" runat="server" text="物料工程参数数据(SQE):"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="668">
                            <aspxform:XTextBox id="XTextBox61" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.EngineeP" CssClass="TextBoxPink" width="526px" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments6" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.EngineeParameter"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='Layout工程师'||Global.StepName =='SQE'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="175">
                            <aspxform:XLabel id="XLabel57" runat="server" text="样品应用结果报告结论(设计师):"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="668">
                            <aspxform:XTextBox id="XTextBox56" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.ResultReport" CssClass="TextBoxPink" Min="0" Max="0" width="527px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments5" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.ResultReportAtt"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='Layout工程师'||Global.StepName =='SQE'||Global.StepName =='设计师'||Global.StepName =='设计师1'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="175">
                            <aspxform:XLabel id="XLabel66" runat="server" Font-Bold="True" text="确认的物料规格书(SQE):"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="668">
                            <aspxform:XTextBox id="XTextBox62" onfocus="this.value=''" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.FactoryReferernce" CssClass="TextBoxPink" width="526px" DisableCssClass="TextBoxPink">EDE申请以此份为准</aspxform:XTextBox>
                            <aspxform:XMSNAttachments id="XMSNAttachments12" runat="server" XDataBind="ASP_Applicant_Fen_Acknowledgment.FactoryReferernceAtt"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="ASP_Applicant_Fen.AppEncapsulation =='不申请' ||Global.StepName =='采购代表'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师'||Global.StepName =='设计师1'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="21" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel83" runat="server" text="封装信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" ValidationGroup="Layout工程师" ControlToValidate="XTextBox55" ErrorMessage="请填写物料临时编码！" Display="None">物料临时编码</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" ValidationGroup="Layout工程师" ControlToValidate="XTextBox42" ErrorMessage="请填写SYMBOL！" Display="None">SYMBOL</aspxform:XRequiredFieldValidator>
                            &nbsp;&nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" ValidationGroup="Layout工程师" ControlToValidate="XTextBox52" ErrorMessage="请填写PKG_TYPE!" Display="None">PKG_TYPE</aspxform:XRequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="ASP_Applicant_Fen.AppEncapsulation =='不申请' ||Global.StepName =='采购代表'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师'||Global.StepName =='设计师1'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="175">
                            <aspxform:XLabel id="XLabel90" runat="server" text="物料小类简称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="268">
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="ASP_Applicant_Fen.SmallClassShortName" Width="166px" DisplayColumn="SmallClassShortName" XDataSource="TableName:ASP_Category" onchange="javascript:XFormOnChange(this);" ValueColumn="SmallClassShortName">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="86">
                            <aspxform:XLabel id="XLabel88" runat="server" text="物料临时编码:" HiddenExpress="Global.StepName =='开始'"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="314" colspan="2">
                            <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="ASP_Applicant_Fen_Encapsulation.MaterialTemporaryCode" CssClass="TextBoxPink" Min="0" Max="0" width="165px" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBox" HiddenExpress="Global.StepName =='开始'"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="ASP_Applicant_Fen.AppEncapsulation =='不申请' ||Global.StepName =='采购代表'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师'||Global.StepName =='设计师1'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="175" align="left">
                            <aspxform:XLabel id="XLabel59" runat="server" text="SYMBOL:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="268">
                            <aspxform:XTextBox id="XTextBox42" runat="server" XDataBind="ASP_Applicant_Fen_Encapsulation.SYMBOL" CssClass="TextBoxPink" Min="0" Max="0" width="166px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="86" align="left">
                            <aspxform:XLabel id="XLabel60" runat="server" text="PKG_TYPE:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="314" colspan="2">
                            <aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="ASP_Applicant_Fen_Encapsulation.PKG_TYPE" CssClass="TextBoxPink" Min="0" Max="0" width="166px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='设计师'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='EDE专员'||Global.StepName =='Layout工程师1'||Global.StepName =='EDE专员1'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel74" runat="server" Font-Bold="True" Font-Size="Small" text="商务信息" ForeColor="Blue" PrintOut="False"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ValidationGroup="采购代表" ControlToValidate="XTextBox59" ErrorMessage="请填写生命截止日期！" Display="None">生命截止日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ValidationGroup="采购代表" ControlToValidate="XTextBox44" ErrorMessage="请填写采购周期！" Display="None">采购周期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ValidationGroup="采购代表" ControlToValidate="XTextBox45" ErrorMessage="请填写交期执行！" Display="None">交期执行</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ValidationGroup="采购代表" ControlToValidate="XTextBox46" ErrorMessage="请填写服务！" Display="None">服务</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ValidationGroup="采购代表" ControlToValidate="XTextBox47" ErrorMessage="请填写价格！" Display="None">价格</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ValidationGroup="采购代表" ControlToValidate="XTextBox48" ErrorMessage="请填写月度产能！" Display="None">月度产能</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ValidationGroup="采购代表" ControlToValidate="XTextBox49" ErrorMessage="请填写最小批量包装" Display="None">批量最小包装</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" ValidationGroup="采购代表" ControlToValidate="XTextBox50" ErrorMessage="请填写账期评估！" Display="None">账期评估</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" ValidationGroup="采购代表" ControlToValidate="XTextBox51" ErrorMessage="请填写代理评估！" Display="None">代理评估</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator24" runat="server" ValidationGroup="采购代表" ControlToValidate="XTextBox63" ErrorMessage="请填写供应商编码！" Display="None">供应商编码</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" ValidationGroup="采购代表" ControlToValidate="XRadioButtonList4" ErrorMessage="请选择商务评估！" Display="None">商务评估</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='设计师'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='EDE专员'||Global.StepName =='Layout工程师1'||Global.StepName =='EDE专员1'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="77">
                            <aspxform:XLabel id="XLabel75" runat="server" text="生命周期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="181">
                            <aspxform:XTextBox id="XTextBox59" runat="server" XDataBind="ASP_Applicant_Fen_Business.LifeTime" CssClass="TextBoxPink" Min="0" Max="0" width="158px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="68">
                            <aspxform:XLabel id="XLabel76" runat="server" text="采购周期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="168">
                            <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="ASP_Applicant_Fen_Business.StockCycle" CssClass="TextBoxPink" Min="0" Max="0" width="148px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="63" align="middle">
                            <aspxform:XLabel id="XLabel77" runat="server" text="交期执行:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="278" colspan="2">
                            <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="ASP_Applicant_Fen_Business.Deliverytime" CssClass="TextBoxPink" Min="0" Max="0" width="166px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='设计师'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='EDE专员'||Global.StepName =='Layout工程师1'||Global.StepName =='EDE专员1'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="35" align="middle">
                            <aspxform:XLabel id="XLabel78" runat="server" text="服务:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="146">
                            <aspxform:XTextBox id="XTextBox46" runat="server" XDataBind="ASP_Applicant_Fen_Business.Serve" CssClass="TextBoxPink" Min="0" Max="0" width="134px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="31">
                            <aspxform:XLabel id="XLabel80" runat="server" text="价格:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="71">
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="ASP_Applicant_Fen_Business.Price" CssClass="TextBoxPink" Min="0" Max="0" width="53px" HiddenInput="False" DisableCssClass="TextBoxPink" Height="23px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="68" align="middle">
                            <aspxform:XLabel id="XLabel81" runat="server" text="月度产能:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="164">
                            <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="ASP_Applicant_Fen_Business.MonthCapacity" CssClass="TextBoxPink" Min="0" Max="0" width="155px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79">
                            <aspxform:XLabel id="XLabel82" runat="server" text="最小批量包装:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="232">
                            <aspxform:XTextBox id="XTextBox49" runat="server" XDataBind="ASP_Applicant_Fen_Business.SmallBatchPack" CssClass="TextBoxPink" Min="0" Max="0" width="193px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='设计师'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='EDE专员'||Global.StepName =='Layout工程师1'||Global.StepName =='EDE专员1'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="56" align="left">
                            <aspxform:XLabel id="XLabel84" runat="server" text="账期评估:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="233">
                            <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="ASP_Applicant_Fen_Business.AccountEvaluate" CssClass="TextBoxPink" Min="0" Max="0" width="166px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67" align="middle">
                            <aspxform:XLabel id="XLabel85" runat="server" text="代理评估:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="203">
                            <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="ASP_Applicant_Fen_Business.AgentEvaluate" CssClass="TextBoxPink" Min="0" Max="0" width="166px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="69">
                            <aspxform:XLabel id="XLabel96" runat="server" text="供应商编码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="205">
                            <aspxform:XTextBox id="XTextBox63" runat="server" XDataBind="ASP_Applicant_Fen_Business.SupplierCode" CssClass="TextBoxPink" Min="0" Max="0" width="180px" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='设计师'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='EDE专员'||Global.StepName =='Layout工程师1'||Global.StepName =='EDE专员1'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="173">
                            <aspxform:XLabel id="XLabel52" runat="server" text="商务评估:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="669">
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="ASP_Applicant_Fen_Business.BusinessConformity" RepeatDirection="Horizontal">
                                <asp:ListItem>商务合格</asp:ListItem>
                                <asp:ListItem>商务不合格</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='设计师'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='物料助理'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel56" runat="server" Font-Bold="True" Font-Size="Small" text="编码信息" ForeColor="Blue" PrintOut="False"></aspxform:XLabel>
                            &nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator26" runat="server" ValidationGroup="SQE4" ControlToValidate="XRadioButtonList8" ErrorMessage="请选择编码类型！" Display="None">编码类型</aspxform:XRequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator28" runat="server" ValidationGroup="EDE专员" ControlToValidate="XTextBox39" ErrorMessage="请填写物料编号！" Display="None">物料编号</aspxform:XRequiredFieldValidator>
                            &nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator29" runat="server" ValidationGroup="EDE专员" ControlToValidate="XTextBox40" ErrorMessage="请填写EDE编码" Display="None">EDE编码</aspxform:XRequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ValidationGroup="EDE专员" ControlToValidate="XTextBox58" ErrorMessage="请填写确认的物料长描述！" Display="None">确认物料长描述</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ValidationGroup="SQE4" ControlToValidate="XTextBox22" ErrorMessage="请填写物料参考长描述" Display="None">物料参考长描述</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='设计师'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='物料助理'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="442" colspan="3" align="middle">
                            <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="ASP_Applicant_Fen_Code.AppCode" RepeatDirection="Horizontal">
                                <asp:ListItem>申请专用编码</asp:ListItem>
                                <asp:ListItem>申请通用编码</asp:ListItem>
                                <asp:ListItem>在原有编码下新增EDE</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="106" align="middle">
                            <aspxform:XLabel id="XLabel102" runat="server" text="物料工艺层:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="295">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="ASP_Applicant_Fen.MaterialProcessLayer" Width="227px" XDataSource="XDataSource" onchange="javascript:XFormOnChange(this);" PromptText="请选择">
                                <asp:ListItem Value="S1">S1代表的是整机层用的物料</asp:ListItem>
                                <asp:ListItem Value="S2">S2代表的是机芯(手插件)层用的物料</asp:ListItem>
                                <asp:ListItem Value="S3">S3代表的是机插层用的物料</asp:ListItem>
                                <asp:ListItem Value="S4">S4代表所有贴片层用的物料(所有IC归纳到贴片层)</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='设计师'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='物料助理'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="113">
                            <aspxform:XLabel id="XLabel33" runat="server" text="物料参考长描述:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="730">
                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="ASP_Applicant_Fen.MaterialLongDescribe" CssClass="TextBoxPink" width="100%" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='设计师'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='物料助理'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="170">
                            <aspxform:XLabel id="XLabel64" runat="server" text="EDE附件(EDE专员):"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="675">
                            <aspxform:XMSNAttachments id="XMSNAttachments7" runat="server" XDataBind="ASP_Applicant_Fen_Code.EDEAtt"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='设计师'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='物料助理'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="171" align="left">
                            <aspxform:XLabel id="XLabel54" runat="server" text="物料编号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="273">
                            <aspxform:XTextBox id="XTextBox39" runat="server" XDataBind="ASP_Applicant_Fen_Code.MaterialCode" CssClass="TextBoxPink" Min="0" Max="0" width="166px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="90" align="left">
                            <aspxform:XLabel id="XLabel55" runat="server" text="EDE编码:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="308" colspan="2">
                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="ASP_Applicant_Fen_Code.EDECode" CssClass="TextBoxPink" Min="0" Max="0" width="109px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='设计师'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='物料助理'||Global.StepName =='物料助理2'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="113">
                            <aspxform:XLabel id="XLabel97" runat="server" text="确认的物料长描述:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="730">
                            <aspxform:XTextBox id="XTextBox58" runat="server" XDataBind="ASP_Applicant_Fen.ConfirmationMaterialLongDescribe" CssClass="TextBoxPink" Min="0" Max="0" width="717px" HiddenInput="False" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23" width="201" colspan="3">
                            <aspxform:XLabel id="XLabel53" runat="server" text="EDE专员:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="645">
                            <div align="right">
                                <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" HiddenExpress="1" Width="105px" Height="20px" Text="选择EDE专员" PrintOut="False" DataMap="Account->ASP_Applicant_Fen_AssistantSelect.EDE_HRID;DisplayName->ASP_Applicant_Fen_AssistantSelect.EDE_Name;Department->ASP_Applicant_Fen_AssistantSelect.EDE_Dept" PopupWndWidth="800" NavigateUrl="~\FormSupport\SelUser.aspx" UseSubmitBehavior="False" PopupWndY="100" PopupWndX="100" PopupWndHeight="500"></aspxform:XSelectUserButton>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="92">
                            <div align="center">
                                <aspxform:XLabel id="XLabel63" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="101">
                            <div align="center">
                                <aspxform:XLabel id="XLabel65" runat="server" text="EDE姓名"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <div align="center">
                                <aspxform:XLabel id="XLabel67" runat="server" text="部门"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo4" runat="server" BorderWidth="1px" BorderColor="Gainsboro" Width="33px" Height="22px" XType="gridlineno" Enabled="False" BackColor="#F0F0F0">1</aspxform:XGridLineNo>
                            &nbsp;&nbsp;&nbsp;<aspxform:XTextBox id="XTextBox41" runat="server" XDataBind="ASP_Applicant_Fen_AssistantSelect.EDE_HRID" Min="0" Max="0" width="21px" HiddenInput="True" BorderWidth="1px" BorderColor="Gainsboro" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox53" runat="server" XDataBind="ASP_Applicant_Fen_AssistantSelect.EDE_Name" ReadOnly="True" Min="0" Max="0" width="100px" HiddenInput="False" BorderWidth="1px" BorderColor="Gainsboro" Height="22px" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            &nbsp;
                            <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="ASP_Applicant_Fen_AssistantSelect.EDE_Dept" ReadOnly="True" Min="0" Max="0" HiddenInput="False" BorderWidth="1px" BorderColor="Gainsboro" Width="192px" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='采购代表'||Global.StepName =='设计师'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='物料助理'||Global.StepName =='物料助理2'" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" colspan="3">
                            <aspxform:XLabel id="XLabel86" runat="server" text="关联评审人:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="541">
                            <div align="right">
                                <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" HiddenExpress="Global.StepName !='SQE4'" Width="105px" Height="20px" Text="选择关联审批人" PrintOut="False" DataMap="Account->ASP_Applicant_Fen_RelationAuditor.HRID;DisplayName->ASP_Applicant_Fen_RelationAuditor.Name;Department->ASP_Applicant_Fen_RelationAuditor.Dept" PopupWndWidth="800" NavigateUrl="~\FormSupport\SelUser.aspx" UseSubmitBehavior="False" PopupWndY="100" PopupWndX="100" PopupWndHeight="500" MultiSelect="True"></aspxform:XSelectUserButton>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="91">
                            <div align="center">
                                <aspxform:XLabel id="XLabel87" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="102">
                            <div align="center">
                                <aspxform:XLabel id="XLabel89" runat="server" text="审批人姓名"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="103">
                            <div align="center">
                                <aspxform:XLabel id="XLabel92" runat="server" text="评审人部门"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                            <aspxform:XLabel id="XLabel93" runat="server" text="评审要求"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="26">
                            <aspxform:XGridLineNo id="XGridLineNo3" runat="server" BorderWidth="1px" BorderColor="Gainsboro" Width="33px" Height="22px" XType="gridlineno" Enabled="False" BackColor="#F0F0F0">1</aspxform:XGridLineNo>
                            <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="ASP_Applicant_Fen_RelationAuditor.HRID" Min="0" Max="0" width="21px" HiddenInput="True" BorderWidth="1px" BorderColor="Gainsboro" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="ASP_Applicant_Fen_RelationAuditor.Name" ReadOnly="True" Min="0" Max="0" width="100px" HiddenInput="False" BorderWidth="1px" BorderColor="Gainsboro" Height="22px" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="ASP_Applicant_Fen_RelationAuditor.Dept" ReadOnly="True" Min="0" Max="0" HiddenInput="False" BorderWidth="1px" BorderColor="Gainsboro" Width="80px" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                            &nbsp;
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="ASP_Applicant_Fen_RelationAuditor.Notion" CssClass="TextBox" HiddenInput="False" DisableCssClass="TextBox" BorderColor="#DCDCDC" Width="100%"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='开始' ||Global.StepName =='采购代表'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='EDE专员'||Global.StepName =='SQE4'||Global.StepName =='物料助理2'||Global.StepName =='物料助理'||Global.StepName =='关联审核人'||Global.StepName =='基础技术组经理'||Global.StepName =='采购经理'||Global.StepName =='质量经理'||Global.StepName =='研发经理'||Global.StepName =='EDE批准'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel37" runat="server" text="资料归档信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator32" runat="server" Font-Bold="False" ValidationGroup="EDE专员2" ControlToValidate="XTextBox25" ErrorMessage="请勾选资料归档信息！" Display="None">资料归档信息</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName =='开始' ||Global.StepName =='采购代表'||Global.StepName =='SQE'||Global.StepName =='SQE1'||Global.StepName =='SQE3'||Global.StepName =='设计师'||Global.StepName =='设计师1'||Global.StepName =='Layout工程师'||Global.StepName =='EDE专员'||Global.StepName =='SQE4'||Global.StepName =='物料助理2'||Global.StepName =='物料助理'||Global.StepName =='关联审核人'||Global.StepName =='基础技术组经理'||Global.StepName =='采购经理'||Global.StepName =='质量经理'||Global.StepName =='研发经理'||Global.StepName =='EDE批准'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="846" align="middle">
                            <aspxform:XCheckBoxList id="XCheckBoxList9" runat="server" XDataBind="ASP_Applicant_Fen.AllInfo" RepeatDirection="Horizontal">
                                <asp:ListItem Value="参数表校核">参数表校核</asp:ListItem>
                                <asp:ListItem>PPL录入</asp:ListItem>
                                <asp:ListItem>PPL通告发布</asp:ListItem>
                                <asp:ListItem>PCB库更新</asp:ListItem>
                                <asp:ListItem>SAP录入</asp:ListItem>
                                <asp:ListItem>EDE上传</asp:ListItem>
                            </aspxform:XCheckBoxList>
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="Info" Min="0" Max="0" width="47px" HiddenInput="False" HiddenExpress="1" BorderWidth="1px" BorderColor="Gainsboro" Express="ASP_Applicant_Fen.AllInfo"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel95" runat="server" text="总单研发经理审批信息" ForeColor="Red" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="16" width="846">
                            <aspxform:XTextBox id="XTextBox57" runat="server" XDataBind="ASP_Applicant_Fen.ManageInfo" Min="0" Max="0" width="100%" HiddenInput="False" BorderWidth="1px" BorderColor="Gainsboro" TextMode="MultiLine" Height="48px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel70" runat="server" text="相关表单信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="30" rowspan="2" width="88" align="middle">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="171" colspan="2" align="middle">
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="cc" Min="0" Max="0" width="38px" HiddenInput="False" HiddenExpress="1" BorderWidth="1px" BorderColor="Gainsboro">合格</aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel71" runat="server" text="客户名称"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="200" align="middle">
                            <aspxform:XLabel id="XLabel73" runat="server" text="客户品牌"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="400" colspan="6" align="middle">
                            <aspxform:XLabel id="XLabel79" runat="server" text="TaskID" HiddenExpress="1"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="29">
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XDropDownList id="XDropDownList6" runat="server" XDataBind="aa" Width="140px" DisplayColumn="ConfirmationFactory" XDataSource="TableName:ASP_Applicant_All_Body;Filter:SN->ASP_Applicant_Fen.SN_All,FactoryConformity->cc" onchange="javascript:XFormOnChange(this);" ValueColumn="ConfirmationFactory" PromptText="请选择" DataMap="ConfirmationMaterialModel->bb;Detail->TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="bb" Min="0" Max="0" width="200px" HiddenInput="False" BorderWidth="1px" BorderColor="Gainsboro" Height="22px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="6">
                            <aspxform:XTextBox id="XTextBox43" runat="server" XDataBind="TaskID" Min="0" Max="0" width="88px" HiddenInput="False" HiddenExpress="1" BorderWidth="1px" BorderColor="Gainsboro"></aspxform:XTextBox>
                            <aspxform:XHistoryFormLink id="XHistoryFormLink1" runat="server" Text="查看详情" Express="TaskID"></aspxform:XHistoryFormLink>
                        </td>
                    </tr>
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
                            <aspxform:XCommentsTextBox id="XCommentsTextBox2" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" TextMode="MultiLine" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" CssClass="AA" BorderWidth="1px" BorderColor="Gainsboro" Width="100%" Height="103px"></aspxform:XSignTrace>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td width="219" align="middle">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress='Global.StepName !="EDE专员"'></aspxform:XPrintButton>
                        </td>
                        <td width="627">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" ValidationGroup="Reject" ControlToValidate="XCommentsTextBox2" ErrorMessage="拒绝请填写审批信息" Display="None">拒绝</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator33" runat="server" ControlToValidate="XCommentsTextBox2" ErrorMessage="提交请填写审批信息" Display="None" DisableExpress="Global.StepName =='开始' || Global.StepName == '物料助理1'">提交</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" ValidationGroup="Return" ControlToValidate="XCommentsTextBox2" ErrorMessage="退回请填写审批信息" Display="None">退回</aspxform:XRequiredFieldValidator>
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
