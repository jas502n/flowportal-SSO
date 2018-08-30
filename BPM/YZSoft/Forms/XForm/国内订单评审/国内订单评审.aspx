<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
     protected void Page_Load(object sender, EventArgs e)
        {
           XTextBox4.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox49.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox34.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox35.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox61.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox77.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox81.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox83.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox103.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox105.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox116.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox123.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox125.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox129.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox133.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox139.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox190.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox191.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox192.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox193.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
    
    
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
    <script language="JavaScript">
    function　Toggle(pButton,pDiv)
     {
        var button=document.getElementById(pButton);
        var div=document.getElementById(pDiv);

　　　　if(div.style.display=='none')
　　　　{
                div.style.display = "";
　　　　　　　　button.value="隐藏";
　　　　}
　　　　else
　　　　{
                div.style.display = "none";
　　　　　　　　button.value='展开';
　　　　}
     }

      window.onbeforeunload = function() {
         return "是否离开当前页面";  //返回提示页面显示的信息
 }
    </script>
</head>
<body>
    <form runat="server">
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="51" width="203">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" align="middle">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="210">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <aspxform:XLabel id="XLabel11" runat="server" XDataBind="OFR_GN_Applicant.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="58" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="国内运营产品线订单通知书" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" height="25" width="79" align="right">
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="OFR_GN_Applicant.HRID" width="25px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="OFR_GN_Applicant.Dept" width="6px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel148" runat="server" text="订单号:" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td width="84">
                            <aspxform:XTextBox id="XTextBox115" runat="server" XDataBind="OFR_GN_Applicant.OrderNum" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="80px"></aspxform:XTextBox>
                        </td>
                        <td width="53" align="right">
                            <aspxform:XLabel id="XLabel2" runat="server" text="发起人:"></aspxform:XLabel>
                        </td>
                        <td width="92">
                            <aspxform:XTextBox id="XTextBox229" runat="server" XDataBind="OFR_GN_Applicant.Name" width="89px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td width="56" align="right">
                            <aspxform:XLabel id="XLabel3" runat="server" text="发起时间:" Width="54px"></aspxform:XLabel>
                        </td>
                        <td width="132">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="OFR_GN_Applicant.AppDate" width="130px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="18px"></aspxform:XTextBox>
                        </td>
                        <td width="133" align="middle">
                            <aspxform:XRadioButtonList id="XRadioButtonList20" runat="server" XDataBind="OFR_GN_Applicant.ProductType" RepeatDirection="Horizontal">
                                <asp:ListItem>直播星</asp:ListItem>
                                <asp:ListItem>有线</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td width="56">
                            <aspxform:XLabel id="XLabel33" runat="server" text="订单类别:"></aspxform:XLabel>
                        </td>
                        <td width="185">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="OFR_GN_Applicant.OrderType" Width="184px" Height="21px" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">新订单</asp:ListItem>
                                <asp:ListItem>翻单</asp:ListItem>
                                <asp:ListItem>参考订单</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            </span></td>
                        <td width="57" align="right">
                            <aspxform:XLabel id="XLabel64" runat="server" text="技术支持:"></aspxform:XLabel>
                        </td>
                        <td width="115">
                            <aspxform:XTextBox id="XTextBox131" runat="server" XDataBind="OFR_GN_Applicant.Name_TechnologySupport" width="80px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" HiddenExpress='Global.StepName !="开始"' Width="21px" DataMap="Account->OFR_GN_Applicant.HRID_TechnologySupport;DisplayName->OFR_GN_Applicant.Name_TechnologySupport"></aspxform:XSelectUserButton>
                        </td>
                        <td width="57" align="right">
                            <aspxform:XLabel id="XLabel332" runat="server" text="文档编号:"></aspxform:XLabel>
                        </td>
                        <td width="122">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="OFR_GN_Applicant.DocumentNum" width="120px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_GN_Applicant.OrderType =="新订单"'>
                <tbody>
                    <tr>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28" width="80" align="right">
                            <aspxform:XLabel id="XLabel53" runat="server" text="原订单号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="212">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox163" runat="server" XDataBind="OFR_GN_Applicant.OrderNum_Original" width="70px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" CssClass="TextBox" BorderColor="Goldenrod"></aspxform:XTextBox>
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="103px" DataMap="TaskID->OFR_GN_Applicant.TaskID_Original;OrderNum->OFR_GN_Applicant.OrderNum_Original;ProductType->OFR_GN_Applicant.ProductType" UseSubmitBehavior="False" PopupWndWidth="800" PopupWndX="100" XDataSource="TableName:V_OFR_GN_Applicant;Filter:State->OFR_GN_Applicant.State" PopupWndY="100" PopupWndHeight="500" Text="导入原订单信息" DisplayColumns="TaskID:电子流ID;Name:发起人;SN:电子流编号;OrderNum:订单号;DocumentNum:文档编号"></aspxform:XDataBrowserButton>
                            <aspxform:XTextBox id="XTextBox63" runat="server" XDataBind="OFR_GN_Applicant.TaskID_Original" width="10px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1" CssClass="TextBox" BorderColor="Goldenrod"></aspxform:XTextBox>
                            </span></span></span></span></span></span></span></span></span></span></span></span></span></td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel324" runat="server" text="变更说明:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="865">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox4" runat="server" XDataBind="OFR_GN_Applicant.ChangeDescription" width="100%" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" width="945" colspan="3">
                            <aspxform:XLabel id="XLabel65" runat="server" text="销售人员:"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator61" runat="server" Display="None" ErrorMessage="请选择直播星或有线" ControlToValidate="XRadioButtonList20" ValidationGroup="开始">直播星无线</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator59" runat="server" Display="None" ErrorMessage="请勾选销售人员" ControlToValidate="XTextBox79" ValidationGroup="开始">销售人员</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator66" runat="server" Display="None" ErrorMessage="请根据评审勾选订单类型！" ControlToValidate="XRadioButtonList1" ValidationGroup="BOM设计师(固化)">订单类型</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="302">
                            <div align="right">
                                <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="85px" DataMap="Account->OFR_GN_Salers.HRID;DisplayName->OFR_GN_Salers.Name;MemberFullName->OFR_GN_Salers.FullName;Department->OFR_GN_Salers.Dept" PopupWndWidth="800" PopupWndX="100" PopupWndY="100" PopupWndHeight="500" Text="选择销售人员" MultiSelect="True" NavigateUrl="~\FormSupport\SelUser.aspx"></aspxform:XSelectUserButton>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="80">
                            <div align="center">
                                <aspxform:XLabel id="XLabel76" runat="server" text="序号"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="858">
                            <div align="center">
                                <aspxform:XLabel id="XLabel79" runat="server" text="销售人员"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <div align="center">
                                <aspxform:XLabel id="XLabel81" runat="server" text="部门"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo9" runat="server" BorderWidth="1px" Width="24px" BorderColor="Gainsboro" Enabled="False" XType="gridlineno" BackColor="#F0F0F0">1</aspxform:XGridLineNo>
                            <aspxform:XTextBox id="XTextBox79" runat="server" XDataBind="OFR_GN_Salers.HRID" width="30px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1" BorderColor="Gainsboro" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox134" runat="server" XDataBind="OFR_GN_Salers.Name" width="428px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" BorderColor="Gainsboro" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox135" runat="server" XDataBind="OFR_GN_Salers.Dept" width="243px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" BorderColor="Gainsboro" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox136" runat="server" XDataBind="OFR_GN_Salers.FullName" width="10px" BorderWidth="1" HiddenExpress="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="998" colspan="2">
                            <aspxform:XLabel id="XLabel357" runat="server" text="订单基本信息" Font-Size="Small" Font-Bold="True" ForeColor="Navy"></aspxform:XLabel>
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" HiddenExpress="1" Width="82px" DataMap="OrderCategory->OFR_GN_BInfo.OrderCategory;CoreNumber->OFR_GN_BInfo.CoreNumber;CustomerName->OFR_GN_BInfo.CustomerName;CabinetType_Only->OFR_GN_BInfo.CabinetType_Only;CustomerAbbr->OFR_GN_BInfo.CustomerAbbr;ModeOfDelivery->OFR_GN_BInfo.ModeOfDelivery;OtherRequirements->OFR_GN_BInfo.OtherRequirements;ImportantOrder->OFR_GN_BInfo.ImportantOrder;BeiSun->OFR_GN_BInfo.BeiSun;SanJian->OFR_GN_BInfo.SanJian;CustomerModel->OFR_GN_BInfo.CustomerModel;ProductModel->OFR_GN_BInfo.ProductModel;SalesArea->OFR_GN_BInfo.SalesArea" XDataSource="TableName:V_OFR_GN_BInfo;Filter:TaskID->OFR_GN_Applicant.TaskID_Original;BufferType:RuntimeUpdate" onchange="javascript:XFormOnChange(this);" DisplayColumn="TaskID" ValueColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox62" runat="server" XDataBind="OFR_GN_Applicant.State" width="38px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1" BorderColor="Gainsboro">有效</aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="请选择是否为红标订单!" ControlToValidate="XRadioButtonList22" ValidationGroup="开始">红标</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="请填写机芯号!" ControlToValidate="XTextBox234" ValidationGroup="开始">机芯</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator25" runat="server" Display="None" ErrorMessage="请填写产品型号!" ControlToValidate="XTextBox235" ValidationGroup="BOM设计师(确认)">产品型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请填写客户型号!" ControlToValidate="XTextBox114" ValidationGroup="开始">客户型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="请填写客户简称!" ControlToValidate="XTextBox5" ValidationGroup="开始">客户简称</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="请填写客户全称!" ControlToValidate="XTextBox236" ValidationGroup="开始">客户全称</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="请填写销售地区!" ControlToValidate="XTextBox237" ValidationGroup="开始">销售地区</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="请填写销售数量!" ControlToValidate="XTextBox117" ValidationGroup="开始">销售数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" Display="None" ErrorMessage="请填写赠机数量!" ControlToValidate="XTextBox29" ValidationGroup="开始">赠机数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" Display="None" ErrorMessage="请填写周转机!" ControlToValidate="XTextBox30" ValidationGroup="开始">周转机</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="OFR_GN_Applicant.SN" width="31px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator63" runat="server" Display="None" ErrorMessage="请选择是否为合同约定比例!" ControlToValidate="XRadioButtonList40" ValidationGroup="开始">是否合同比例</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请填写文档编号!" ControlToValidate="XTextBox2" ValidationGroup="开始">文档编号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请填写订单号!" ControlToValidate="XTextBox115" ValidationGroup="订单专员">订单号</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox132" runat="server" XDataBind="OFR_GN_Applicant.HRID_TechnologySupport" width="13px" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator40" runat="server" Display="None" ErrorMessage="请选择技术支持人员!" ControlToValidate="XTextBox131" ValidationGroup="开始">技术支持</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator58" runat="server" Display="None" ErrorMessage="请选择交货方式！" ControlToValidate="XRadioButtonList5" ValidationGroup="提交人">交货方式</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel104" runat="server" text="红标订单:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid" width="213">
                            <aspxform:XRadioButtonList id="XRadioButtonList22" runat="server" XDataBind="OFR_GN_BInfo.ImportantOrder" RepeatDirection="Horizontal">
                                <asp:ListItem>红标订单</asp:ListItem>
                                <asp:ListItem>非红标订单</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel325" runat="server" text="订单类型:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="236">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="OFR_GN_BInfo.OrderCategory" RepeatDirection="Horizontal">
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td width="61" align="right">
                            <aspxform:XLabel id="XLabel359" runat="server" text="机芯号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="302">
                            <aspxform:XTextBox id="XTextBox234" runat="server" XDataBind="OFR_GN_BInfo.CoreNumber" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="280px" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="55" align="right">
                            <aspxform:XLabel id="XLabel360" runat="server" text="产品型号:" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="199">
                            <aspxform:XTextBox id="XTextBox235" runat="server" XDataBind="OFR_GN_BInfo.ProductModel" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Width="180px" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel361" runat="server" text="客户型号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid" width="213">
                            <aspxform:XTextBox id="XTextBox114" runat="server" XDataBind="OFR_GN_BInfo.CustomerModel" width="210px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel4" runat="server" text="客户简称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="236">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="OFR_GN_BInfo.CustomerAbbr" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="180px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                            <aspxform:XLabel id="XLabel362" runat="server" text="客户全称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="302">
                            <aspxform:XTextBox id="XTextBox236" runat="server" XDataBind="OFR_GN_BInfo.CustomerName" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="280px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="55" align="right">
                            <aspxform:XLabel id="XLabel363" runat="server" text="销售地区:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="199">
                            <aspxform:XTextBox id="XTextBox237" runat="server" XDataBind="OFR_GN_BInfo.SalesArea" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Width="180px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel83" runat="server" text="销售数量:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid" width="87">
                            <aspxform:XTextBox id="XTextBox117" runat="server" XDataBind="OFR_GN_BInfo.SalesAmount" width="66px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="right">
                            <aspxform:XLabel id="XLabel95" runat="server" text="赠机数量:" Height="16px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="64">
                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="OFR_GN_BInfo.GiftAmount" width="60px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel99" runat="server" text="周转机:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="68">
                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="OFR_GN_BInfo.SwingAmount" width="46px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="58">
                            <aspxform:XLabel id="XLabel188" runat="server" text="合同比例:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="48">
                            <aspxform:XTextBox id="XTextBox138" runat="server" XDataBind="OFR_GN_BInfo.ContractPersent" width="46px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="118">
                            <aspxform:XLabel id="XLabel149" runat="server" text="是否为合同约定比例:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="74">
                            <aspxform:XRadioButtonList id="XRadioButtonList40" runat="server" XDataBind="OFR_GN_BInfo.ContractYorN" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="224">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox139" runat="server" XDataBind="OFR_GN_BInfo.ContractRemark" width="200px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="25px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="55" align="right">
                            <aspxform:XLabel id="XLabel97" runat="server" text="总计数量:" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="198">
                            <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="OFR_GN_BInfo.TotalAmount" width="78px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Express="OFR_GN_BInfo.SalesAmount+OFR_GN_BInfo.GiftAmount+OFR_GN_BInfo.SwingAmount"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="79" align="right">
                            <aspxform:XLabel id="XLabel46" runat="server" text="散件备损:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="213">
                            <aspxform:XCheckBox id="XCheckBox17" runat="server" XDataBind="OFR_GN_BInfo.SanJian" Text="半成品"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox18" runat="server" XDataBind="OFR_GN_BInfo.BeiSun" Text="散件"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel173" runat="server" text="其他要求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="865">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox103" runat="server" XDataBind="OFR_GN_BInfo.OtherRequirements" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Width="830px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_BInfo.SanJian != 1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="998" colspan="2">
                            <aspxform:XLabel id="XLabel162" runat="server" text="半成品" Font-Size="X-Small" Font-Bold="True" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_BInfo.SanJian != 1" dynamicarea="1,1" xdatasource="TableName:OFR_GN_BanChengPin;Filter:TaskID->OFR_GN_Applicant.TaskID_Original" datamap="Name->OFR_GN_BanChengPin.Name;Amount->OFR_GN_BanChengPin.Amount;ModuleNumber->OFR_GN_BanChengPin.ModuleNumber;Remark->OFR_GN_BanChengPin.Remark">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="29">
                            <aspxform:XLabel id="XLabel307" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="262" align="middle">
                            <aspxform:XLabel id="XLabel163" runat="server" text="名称" Font-Bold="True" Width="32px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="middle">
                            <aspxform:XLabel id="XLabel164" runat="server" text="数量" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="216" align="middle">
                            <aspxform:XLabel id="XLabel166" runat="server" text="组件号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel169" runat="server" text="备注/电子流更改号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="17px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox92" runat="server" XDataBind="OFR_GN_BanChengPin.Name" width="240px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox93" runat="server" XDataBind="OFR_GN_BanChengPin.Amount" width="60px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox95" runat="server" XDataBind="OFR_GN_BanChengPin.ModuleNumber" width="200px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox98" runat="server" XDataBind="OFR_GN_BanChengPin.Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="625px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" height="25">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td width="418">
                        </td>
                        <td width="227" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="添加半成品" PrintOut="False" TableName="OFR_GN_BanChengPin"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_BInfo.BeiSun !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="1248" colspan="2">
                            <aspxform:XLabel id="XLabel170" runat="server" text="散件" Font-Size="X-Small" Font-Bold="True" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_BInfo.BeiSun !=1" dynamicarea="1,1" xdatasource="TableName:OFR_GN_SanJian;Filter:TaskID->OFR_GN_Applicant.TaskID_Original" datamap="Name->OFR_GN_SanJian.Name;Amount->OFR_GN_SanJian.Amount;PN->OFR_GN_SanJian.PN;Remark->OFR_GN_SanJian.Remark">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="17" width="31">
                            <aspxform:XLabel id="XLabel308" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261" align="middle">
                            <aspxform:XLabel id="XLabel171" runat="server" text="名称" Font-Bold="True" Width="32px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="middle">
                            <aspxform:XLabel id="XLabel172" runat="server" text="数量" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="215" align="middle">
                            <aspxform:XLabel id="XLabel175" runat="server" text="P/N" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel177" runat="server" text="备注/电子流更改号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox99" runat="server" XDataBind="OFR_GN_SanJian.Name" width="240px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox100" runat="server" XDataBind="OFR_GN_SanJian.Amount" width="60px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox101" runat="server" XDataBind="OFR_GN_SanJian.PN" width="200px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox102" runat="server" XDataBind="OFR_GN_SanJian.Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="625px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="23">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td width="420" align="right">
                        </td>
                        <td width="226" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加散件" PrintOut="False" TableName="OFR_GN_SanJian"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="79" align="right">
                            <aspxform:XLabel id="XLabel15" runat="server" text="交货方式:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="213">
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="OFR_GN_BInfo.ModeOfDelivery" RepeatDirection="Horizontal">
                                <asp:ListItem>一次性出货</asp:ListItem>
                                <asp:ListItem>分批次出货要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel25" runat="server" text="期望出货日期:" HiddenExpress='OFR_GN_BInfo.ModeOfDelivery !="一次性出货"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="215">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OFR_GN_BInfo.ShipmentDate" HiddenExpress='OFR_GN_BInfo.ModeOfDelivery !="一次性出货"' CssClass="TextBox" Width="170px" XType="datetime" ReadOnly="True" onchange="javascript:XFormOnChange(this);" XSubType="date"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="82" align="right">
                            <aspxform:XLabel id="XLabel26" runat="server" text="柜型:" HiddenExpress='OFR_GN_BInfo.ModeOfDelivery !="一次性出货"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="562">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="OFR_GN_BInfo.CabinetType_Only" HiddenExpress='OFR_GN_BInfo.ModeOfDelivery !="一次性出货"' DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"></span></span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_GN_BInfo.ModeOfDelivery !="分批次出货要求"' dynamicarea="1,1" xdatasource="TableName:OFR_GN_Delivery;Filter:TaskID->OFR_GN_Applicant.TaskID_Original" datamap="Bath->OFR_GN_Delivery.Bath;DeliveryDate->OFR_GN_Delivery.DeliveryDate;Amount->OFR_GN_Delivery.Amount;CabinetType->OFR_GN_Delivery.CabinetType;Remark->OFR_GN_Delivery.Remark">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="29">
                            <aspxform:XLabel id="XLabel77" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="148" align="middle">
                            <aspxform:XLabel id="XLabel78" runat="server" text="批次" Font-Bold="True" Width="40px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="195" align="middle">
                            <aspxform:XLabel id="XLabel80" runat="server" text="交期" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="middle">
                            <aspxform:XLabel id="XLabel135" runat="server" text="数量" Font-Bold="True" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="218" align="middle">
                            <aspxform:XLabel id="XLabel327" runat="server" text="柜型" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="562" align="middle">
                            <aspxform:XLabel id="XLabel331" runat="server" text="备注" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="21">
                            <aspxform:XGridLineNo id="XGridLineNo6" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="OFR_GN_Delivery.Bath" width="139px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox164" runat="server" XDataBind="OFR_GN_Delivery.DeliveryDate" width="187px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox165" runat="server" XDataBind="OFR_GN_Delivery.Amount" width="75px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox166" runat="server" XDataBind="OFR_GN_Delivery.CabinetType" width="204px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox168" runat="server" XDataBind="OFR_GN_Delivery.Remark" width="530px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="22">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton6" runat="server" Text="添加批次" PrintOut="False" TableName="OFR_GN_Delivery"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel106" runat="server" text="产品要求信息" Font-Size="Small" Font-Bold="True" ForeColor="Navy"></aspxform:XLabel>
                            <font color="red">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" HiddenExpress="1" Width="82px" DataMap="Dubi->OFR_GN_ProductRequirementInfo.Dubi;NVOD->OFR_GN_ProductRequirementInfo.NVOD;Stock->OFR_GN_ProductRequirementInfo.Stock;CA->OFR_GN_ProductRequirementInfo.CA;EPGFrequency->OFR_GN_ProductRequirementInfo.EPGFrequency;Flash->OFR_GN_ProductRequirementInfo.Flash;DataRadio->OFR_GN_ProductRequirementInfo.DataRadio;SDRAM->OFR_GN_ProductRequirementInfo.SDRAM;InterfaceRequire->OFR_GN_ProductRequirementInfo.InterfaceRequire;VOD->OFR_GN_ProductRequirementInfo.VOD;OpenImage->OFR_GN_ProductRequirementInfo.OpenImage;EPG->OFR_GN_ProductRequirementInfo.EPG;LoaderFrequency->OFR_GN_ProductRequirementInfo.LoaderFrequency;BaseAudioAndVideo->OFR_GN_ProductRequirementInfo.BaseAudioAndVideo;Tuner->OFR_GN_ProductRequirementInfo.Tuner;Loader->OFR_GN_ProductRequirementInfo.Loader" XDataSource="TableName:OFR_GN_ProductRequirementInfo;Filter:TaskID->OFR_GN_Applicant.TaskID_Original;BufferType:RuntimeUpdate" onchange="javascript:XFormOnChange(this);" DisplayColumn="TaskID" ValueColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" Display="None" ErrorMessage="请填写业务要求中CA值！" ControlToValidate="XTextBox37" ValidationGroup="开始">CA</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" Display="None" ErrorMessage="请填写业务要求中开机画面！" ControlToValidate="XTextBox38" ValidationGroup="开始">开机画面</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" Display="None" ErrorMessage="请填写业务要求中Flash！" ControlToValidate="XTextBox39" ValidationGroup="开始">Flash</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" Display="None" ErrorMessage="请填写业务要求中SDRAM！" ControlToValidate="XTextBox40" ValidationGroup="开始">SDRAM</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" Display="None" ErrorMessage="请填写业务要求中高频头！" ControlToValidate="XTextBox28" ValidationGroup="开始">高频头</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator65" runat="server" Display="None" ErrorMessage="请选择是否支持杜比选型" ControlToValidate="XRadioButtonList49" ValidationGroup="技术支持">杜比</aspxform:XRequiredFieldValidator>
                            </font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="4" width="52">
                            <aspxform:XLabel id="XLabel107" runat="server" text="业务要求" Width="50px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="64">
                            <aspxform:XLabel id="XLabel108" runat="server" text="CA"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.CA" width="150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="56">
                            <aspxform:XLabel id="XLabel117" runat="server" text="开机画面"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="164">
                            <aspxform:XTextBox id="XTextBox38" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.OpenImage" width="150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="77">
                            <aspxform:XLabel id="XLabel119" runat="server" text="FLASH"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="168">
                            <aspxform:XTextBox id="XTextBox39" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.Flash" width="150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="46">
                            <aspxform:XLabel id="XLabel120" runat="server" text="SDRAM"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="164">
                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.SDRAM" width="150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="94">
                            <aspxform:XLabel id="XLabel121" runat="server" text="高频头"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="164">
                            <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.Tuner" width="150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XLabel id="XLabel111" runat="server" text="基本音视频"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox41" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.BaseAudioAndVideo" width="150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel114" runat="server" text="NVOD"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox42" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.NVOD" width="150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel349" runat="server" text="VOD" Width="26px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox43" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.VOD" width="150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel109" runat="server" text="Loader"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.Loader" width="150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel112" runat="server" text="Loader频点预置"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox46" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.LoaderFrequency" width="150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27">
                            <aspxform:XLabel id="XLabel115" runat="server" text="数据广播"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.DataRadio" width="150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel110" runat="server" text="EPG"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox189" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.EPG" width="150px" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel113" runat="server" text="EPG频点预置"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.EPGFrequency" width="150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel116" runat="server" text="股票"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.Stock" width="150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" DisableExpress='OFR_GN_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel196" runat="server" text="支持杜比" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XRadioButtonList id="XRadioButtonList49" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.Dubi" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27">
                            去掉E2</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XRadioButtonList id="XRadioButtonList55" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.E2" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="4">
                            <aspxform:XLabel id="XLabel201" runat="server" text="去掉E2请确认软件是否兼容，如果发现软件不兼容，可以选择否。" HiddenExpress='OFR_GN_ProductRequirementInfo.E2 !="是"' ForeColor="Red" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator68" runat="server" Display="None" ErrorMessage="请选择是否去掉E2" ControlToValidate="XRadioButtonList55" DisableExpress='Global.StepName != "产品管理工程师"'>请选择是否去掉E2</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="52" align="middle">
                            <aspxform:XLabel id="XLabel59" runat="server" text="接口要求"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1191">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox105" runat="server" XDataBind="OFR_GN_ProductRequirementInfo.InterfaceRequire" width="1150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="0,1" xdatasource="TableName:OFR_GN_ProductRequirementInfo_Remark;Filter:TaskID->OFR_GN_Applicant.TaskID_Original" datamap="Remark->OFR_GN_ProductRequirementInfo_Remark.Remark">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="52" align="middle">
                            <aspxform:XLabel id="XLabel122" runat="server" text="备注"></aspxform:XLabel>
                            <aspxform:XGridLineNo id="XGridLineNo5" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="10px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1191">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox49" runat="server" XDataBind="OFR_GN_ProductRequirementInfo_Remark.Remark" width="1150px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="21">
                        </td>
                        <td align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton5" runat="server" Text="添加" PrintOut="False" TableName="OFR_GN_ProductRequirementInfo_Remark"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="89">
                            <aspxform:XLabel id="XLabel5" runat="server" text="备机要求" Font-Size="Small" Font-Bold="True" ForeColor="Navy"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="221">
                            <aspxform:XCheckBoxList id="XCheckBoxList7" runat="server" XDataBind="OFR_GN_AlternateMachineRequirment.Type" RepeatDirection="Horizontal">
                                <asp:ListItem>认证机器</asp:ListItem>
                                <asp:ListItem>研发备机</asp:ListItem>
                                <asp:ListItem>生产备机</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="930">
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" HiddenExpress="1" XDataSource="TableName:OFR_GN_AlternateMachineRequirment;Filter:TaskID->OFR_GN_Applicant.TaskID_Original;BufferType:RuntimeUpdate" DisplayColumn="TaskID" ValueColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="89">
                            <div align="center">
                                <aspxform:XLabel id="XLabel6" runat="server" text="备机类型" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="748">
                            <div align="center">
                                <aspxform:XLabel id="XLabel7" runat="server" text="整机数量/半成品&amp;数量" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="403">
                            <div align="center">
                                <aspxform:XLabel id="XLabel8" runat="server" Font-Bold="True" Text="申请原因"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_GN_AlternateMachineRequirment.Type =="" || OFR_GN_AlternateMachineRequirment.Type=="研发备机"|| OFR_GN_AlternateMachineRequirment.Type=="生产备机"|| OFR_GN_AlternateMachineRequirment.Type=="研发备机,生产备机"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel9" runat="server" text="认证机器"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="748">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="OFR_GN_AlternateMachineRequirment.CertificationMachine" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" ForeColor="Red" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="650px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="403">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="OFR_GN_AlternateMachineRequirment.CertificationMachine_Reason" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="380px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_GN_AlternateMachineRequirment.Type =="" || OFR_GN_AlternateMachineRequirment.Type=="认证机器"|| OFR_GN_AlternateMachineRequirment.Type=="生产备机"|| OFR_GN_AlternateMachineRequirment.Type=="认证机器,生产备机"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="middle">
                            <aspxform:XLabel id="XLabel10" runat="server" text="研发备机"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="748">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="OFR_GN_AlternateMachineRequirment.RDMachine" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" ForeColor="Red" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="650px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="403">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="OFR_GN_AlternateMachineRequirment.RDMachine_Reason" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="380px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_GN_AlternateMachineRequirment.Type =="" || OFR_GN_AlternateMachineRequirment.Type=="认证机器"|| OFR_GN_AlternateMachineRequirment.Type=="研发备机"|| OFR_GN_AlternateMachineRequirment.Type=="认证机器,研发备机"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89">
                            <div align="center">
                                <aspxform:XLabel id="XLabel12" runat="server" text="生产备机"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="748">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="OFR_GN_AlternateMachineRequirment.ProcuctMachine" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" ForeColor="Red" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="650px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="403">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="OFR_GN_AlternateMachineRequirment.ProcuctMachine_Reason" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="380px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel124" runat="server" text="配件和客户化及序列号要求信息" Font-Size="Small" Font-Bold="True" ForeColor="Navy"></aspxform:XLabel>
                            <font color="red">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" HiddenExpress="1" Width="75px" DataMap="Type_Other->OFR_GN_PartsRequest.Type_Other;Type_YKQ->OFR_GN_PartsRequest.Type_YKQ;AVCable->OFR_GN_PartsRequest.AVCable;CACards_Remark->OFR_GN_PartsRequest.CACards_Remark;RemoteControl_Logo->OFR_GN_PartsRequest.RemoteControl_Logo;Type_Otherline->OFR_GN_PartsRequest.Type_Otherline;RemoteControl_LogoRemark->OFR_GN_PartsRequest.RemoteControl_LogoRemark;Specification->OFR_GN_PartsRequest.Specification;NetWorkCable->OFR_GN_PartsRequest.NetWorkCable;RFCable_Remark->OFR_GN_PartsRequest.RFCable_Remark;OtherCable->OFR_GN_PartsRequest.OtherCable;Battery->OFR_GN_PartsRequest.Battery;Type_HDMI->OFR_GN_PartsRequest.Type_HDMI;AVCable_Remark->OFR_GN_PartsRequest.AVCable_Remark;NetWorkCable_Remark->OFR_GN_PartsRequest.NetWorkCable_Remark;Specification_Remark->OFR_GN_PartsRequest.Specification_Remark;RemoteControl_PurchaseRemark->OFR_GN_PartsRequest.RemoteControl_PurchaseRemark;RFCable->OFR_GN_PartsRequest.RFCable;Type_RFZ->OFR_GN_PartsRequest.Type_RFZ;RFAdapter->OFR_GN_PartsRequest.RFAdapter;CACards->OFR_GN_PartsRequest.CACards;YPbPrCable->OFR_GN_PartsRequest.YPbPrCable;Type_AV->OFR_GN_PartsRequest.Type_AV;Type_YPbPr->OFR_GN_PartsRequest.Type_YPbPr;Type_Battery->OFR_GN_PartsRequest.Type_Battery;Type_Internet->OFR_GN_PartsRequest.Type_Internet;Type_CACard->OFR_GN_PartsRequest.Type_CACard;OtherCable_Remark->OFR_GN_PartsRequest.OtherCable_Remark;Type_RF->OFR_GN_PartsRequest.Type_RF;Other->OFR_GN_PartsRequest.Other;YPbPrCable_Remark->OFR_GN_PartsRequest.YPbPrCable_Remark;RemoteControl_Purchase->OFR_GN_PartsRequest.RemoteControl_Purchase;RFAdapter_Remark->OFR_GN_PartsRequest.RFAdapter_Remark;HDMICable_Remark->OFR_GN_PartsRequest.HDMICable_Remark;HDMICable->OFR_GN_PartsRequest.HDMICable" XDataSource="TableName:OFR_GN_PartsRequest;Filter:TaskID->OFR_GN_Applicant.TaskID_Original;BufferType:RuntimeUpdate" onchange="javascript:XFormOnChange(this);" DisplayColumn="TaskID" ValueColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" HiddenExpress="1" DataMap="Carton->OFR_GN_CustomerRequirement.Carton;Baopan_Remark->OFR_GN_CustomerRequirement.Baopan_Remark;ColorBox_Remark->OFR_GN_CustomerRequirement.ColorBox_Remark;CustomerPurchaseMaterial->OFR_GN_CustomerRequirement.CustomerPurchaseMaterial;BackSilk_Remark->OFR_GN_CustomerRequirement.BackSilk_Remark;Color_Remark->OFR_GN_CustomerRequirement.Color_Remark;Color->OFR_GN_CustomerRequirement.Color;SurfaceShellSilk_Remark->OFR_GN_CustomerRequirement.SurfaceShellSilk_Remark;ColorBox->OFR_GN_CustomerRequirement.ColorBox;MyPurchaseMaterial->OFR_GN_CustomerRequirement.MyPurchaseMaterial;Carton_Remark->OFR_GN_CustomerRequirement.Carton_Remark;SurfaceShellSilk->OFR_GN_CustomerRequirement.SurfaceShellSilk;Other->OFR_GN_CustomerRequirement.Other;Baopan->OFR_GN_CustomerRequirement.Baopan;BackSilk->OFR_GN_CustomerRequirement.BackSilk" XDataSource="TableName:OFR_GN_CustomerRequirement;Filter:TaskID->OFR_GN_Applicant.TaskID_Original;BufferType:RuntimeUpdate" DisplayColumn="TaskID" ValueColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XDropDownList id="XDropDownList6" runat="server" HiddenExpress="1" DataMap="MACAdd_StickerRemark->OFR_GN_SerialNumberRequirement.MACAdd_StickerRemark;MACAdd_PasteMethod->OFR_GN_SerialNumberRequirement.MACAdd_PasteMethod;CMMAC_StickerRemark->OFR_GN_SerialNumberRequirement.CMMAC_StickerRemark;CMMAC_PasteMethodRemark->OFR_GN_SerialNumberRequirement.CMMAC_PasteMethodRemark;Remark->OFR_GN_SerialNumberRequirement.Remark;CMMAC_BPI->OFR_GN_SerialNumberRequirement.CMMAC_BPI;SerialNumber_PasteMethod->OFR_GN_SerialNumberRequirement.SerialNumber_PasteMethod;SerialNumber_StickerRemark->OFR_GN_SerialNumberRequirement.SerialNumber_StickerRemark;CMMAC_PasteMethod->OFR_GN_SerialNumberRequirement.CMMAC_PasteMethod;MACAdd_Sticker->OFR_GN_SerialNumberRequirement.MACAdd_Sticker;Type_MAC->OFR_GN_SerialNumberRequirement.Type_MAC;MACAdd_PasteMethodRemark->OFR_GN_SerialNumberRequirement.MACAdd_PasteMethodRemark;CM_StickerRemark->OFR_GN_SerialNumberRequirement.CM_StickerRemark;SerialNumber_Sticker->OFR_GN_SerialNumberRequirement.SerialNumber_Sticker;SerialNumber_PasteMethodRemark->OFR_GN_SerialNumberRequirement.SerialNumber_PasteMethodRemark;Type_CM->OFR_GN_SerialNumberRequirement.Type_CM;Type_SerialNumber->OFR_GN_SerialNumberRequirement.Type_SerialNumber;CM_PasteMethodRemark->OFR_GN_SerialNumberRequirement.CM_PasteMethodRemark;Type_Other->OFR_GN_SerialNumberRequirement.Type_Other;Other->OFR_GN_SerialNumberRequirement.Other;Type_CMMAC->OFR_GN_SerialNumberRequirement.Type_CMMAC;CM_Sticker->OFR_GN_SerialNumberRequirement.CM_Sticker;CMMAC_Sticker->OFR_GN_SerialNumberRequirement.CMMAC_Sticker;CM_PasteMethod->OFR_GN_SerialNumberRequirement.CM_PasteMethod;CMMAC_BPIRemark->OFR_GN_SerialNumberRequirement.CMMAC_BPIRemark" XDataSource="TableName:OFR_GN_SerialNumberRequirement;Filter:TaskID->OFR_GN_Applicant.TaskID_Original;BufferType:RuntimeUpdate" DisplayColumn="TaskID" ValueColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            </font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td height="20" valign="center" width="89" align="middle">
                            <aspxform:XLabel id="XLabel20" runat="server" text="配件要求" Font-Size="X-Small" Font-Bold="True" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                        <td width="1154">
                            <aspxform:XCheckBox id="XCheckBox6" runat="server" XDataBind="OFR_GN_PartsRequest.Type_AV" Text="AV线"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox7" runat="server" XDataBind="OFR_GN_PartsRequest.Type_RF" Text="RF线"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox8" runat="server" XDataBind="OFR_GN_PartsRequest.Type_RFZ" Text="RF转接头"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox9" runat="server" XDataBind="OFR_GN_PartsRequest.Type_HDMI" Text="HDMI线"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox10" runat="server" XDataBind="OFR_GN_PartsRequest.Type_YPbPr" Text="YPbPr线"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox11" runat="server" XDataBind="OFR_GN_PartsRequest.Type_Internet" Text="网线"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox12" runat="server" XDataBind="OFR_GN_PartsRequest.Type_CACard" Text="CA卡"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox13" runat="server" XDataBind="OFR_GN_PartsRequest.Type_Otherline" Text="其他配线"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox14" runat="server" XDataBind="OFR_GN_PartsRequest.Type_YKQ" Text="遥控器"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox15" runat="server" XDataBind="OFR_GN_PartsRequest.Type_Battery" Text="电池"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox16" runat="server" XDataBind="OFR_GN_PartsRequest.Type_Other" Text="其它(保修卡、合格证和说明书)"></aspxform:XCheckBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="89">
                            <div align="center">
                                <aspxform:XLabel id="XLabel16" runat="server" text="配件名称" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XLabel id="XLabel17" runat="server" text="规格说明" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <div align="center">
                                <aspxform:XLabel id="XLabel18" runat="server" Font-Bold="True" Text="备注"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_PartsRequest.Type_AV ==0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel19" runat="server" text="AV线"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="OFR_GN_PartsRequest.AVCable" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="800px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="OFR_GN_PartsRequest.AVCable_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="300px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_PartsRequest.Type_RF == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel13" runat="server" text="RF线"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="OFR_GN_PartsRequest.RFCable" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="800px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="OFR_GN_PartsRequest.RFCable_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="300px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_PartsRequest.Type_RFZ == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel150" runat="server" text="RF转接头"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox118" runat="server" XDataBind="OFR_GN_PartsRequest.RFAdapter" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="800px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox119" runat="server" XDataBind="OFR_GN_PartsRequest.RFAdapter_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="300px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_PartsRequest.Type_HDMI == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel21" runat="server" text="HDMI线"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="OFR_GN_PartsRequest.HDMICable" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="800px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="OFR_GN_PartsRequest.HDMICable_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="300px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_PartsRequest.Type_YPbPr == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel22" runat="server" text="YPbPr线"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="OFR_GN_PartsRequest.YPbPrCable" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="800px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="OFR_GN_PartsRequest.YPbPrCable_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="300px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_PartsRequest.Type_Internet == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel151" runat="server" text="网线"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox120" runat="server" XDataBind="OFR_GN_PartsRequest.NetWorkCable" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="800px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox121" runat="server" XDataBind="OFR_GN_PartsRequest.NetWorkCable_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="300px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_PartsRequest.Type_CACard == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel56" runat="server" text="CA卡"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="OFR_GN_PartsRequest.CACards" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="800px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <div align="center">
                                <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="OFR_GN_PartsRequest.CACards_Remark" RepeatDirection="Horizontal">
                                    <asp:ListItem>放入机器</asp:ListItem>
                                    <asp:ListItem>独立包装</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_PartsRequest.Type_Otherline == 0 ">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel23" runat="server" text="其他配线"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="OFR_GN_PartsRequest.OtherCable" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="800px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="OFR_GN_PartsRequest.OtherCable_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="300px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_PartsRequest.Type_YKQ == 0 ">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="96" align="middle">
                            <aspxform:XLabel id="XLabel24" runat="server" text="遥控器"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="612" colspan="3">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="OFR_GN_PartsRequest.RemoteControl_Purchase" Width="520px" RepeatDirection="Horizontal">
                                <asp:ListItem>客户采购送当地广电</asp:ListItem>
                                <asp:ListItem>客户采购送工厂装箱</asp:ListItem>
                                <asp:ListItem>我司采购送当地广电</asp:ListItem>
                                <asp:ListItem>我司采购送工厂装箱</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="555">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox133" runat="server" XDataBind="OFR_GN_PartsRequest.RemoteControl_PurchaseRemark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="523px" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="206">
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="OFR_GN_PartsRequest.RemoteControl_Logo" Width="204px" RepeatDirection="Horizontal">
                                <asp:ListItem>我司通用Logo</asp:ListItem>
                                <asp:ListItem>客户Logo</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="400">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox34" runat="server" XDataBind="OFR_GN_PartsRequest.RemoteControl_LogoRemark" Max="0" Min="0" HiddenInput="False" HiddenExpress='OFR_GN_PartsRequest.RemoteControl_Logo !="客户Logo"' DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="377px" Height="22px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_PartsRequest.Type_Battery == 0 ">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="89" align="middle">
                            <aspxform:XLabel id="XLabel57" runat="server" text="电池"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1154">
                            <aspxform:XRadioButtonList id="XRadioButtonList11" runat="server" XDataBind="OFR_GN_PartsRequest.Battery" RepeatDirection="Horizontal">
                                <asp:ListItem>我司采购</asp:ListItem>
                                <asp:ListItem>厂家采购</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_PartsRequest.Type_Other == 0 ">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="89" align="middle">
                            <aspxform:XLabel id="XLabel29" runat="server" text="其它" Width="29px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="184">
                            <aspxform:XCheckBoxList id="XCheckBoxList2" runat="server" XDataBind="OFR_GN_PartsRequest.Other" RepeatDirection="Horizontal">
                                <asp:ListItem>保修卡</asp:ListItem>
                                <asp:ListItem>合格证</asp:ListItem>
                                <asp:ListItem>说明书</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="148">
                            <aspxform:XRadioButtonList id="XRadioButtonList23" runat="server" XDataBind="OFR_GN_PartsRequest.Specification" HiddenExpress='OFR_GN_PartsRequest.Other=="" || OFR_GN_PartsRequest.Other=="保修卡"  || OFR_GN_PartsRequest.Other=="保修卡,合格证" || OFR_GN_PartsRequest.Other=="合格证" ' RepeatDirection="Horizontal">
                                <asp:ListItem>通用</asp:ListItem>
                                <asp:ListItem>客户特殊需求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="814">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox35" runat="server" XDataBind="OFR_GN_PartsRequest.Specification_Remark" Max="0" Min="0" HiddenInput="False" HiddenExpress='OFR_GN_PartsRequest.Other=="" || OFR_GN_PartsRequest.Other=="保修卡"  || OFR_GN_PartsRequest.Other=="保修卡,合格证" || OFR_GN_PartsRequest.Other=="合格证" ' DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="688px" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" height="20" valign="center" width="91" colspan="2">
                            <aspxform:XLabel id="XLabel30" runat="server" text="客户化要求" Font-Size="X-Small" Font-Bold="True" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1155">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" Display="None" ErrorMessage="请填写客户化要求中的整机颜色!" ControlToValidate="XRadioButtonList4" ValidationGroup="开始">整机颜色</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" Display="None" ErrorMessage="请填写客户化要求中的整机颜色!" ControlToValidate="XTextBox81" ValidationGroup="开始" DisableExpress='OFR_GN_CustomerRequirement.Color !="其它"'>整机颜色其他</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" Display="None" ErrorMessage="请填写客户化要求中的面壳丝印!" ControlToValidate="XRadioButtonList24" ValidationGroup="开始">面壳丝印</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" Display="None" ErrorMessage="请填写客户化要求中的面壳丝印!" ControlToValidate="XTextBox193" ValidationGroup="开始" DisableExpress='OFR_GN_CustomerRequirement.SurfaceShellSilk !="客户要求"'>面壳丝印客户要求</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" Display="None" ErrorMessage="请填写客户化要求中的背板丝印!" ControlToValidate="XRadioButtonList25" ValidationGroup="开始">背板丝印</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" Display="None" ErrorMessage="请填写客户化要求中的背板丝印客户要求!" ControlToValidate="XTextBox123" ValidationGroup="开始" DisableExpress='OFR_GN_CustomerRequirement.BackSilk !="客户要求"'>背板丝印客户要求</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" Display="None" ErrorMessage="请填写客户化要求中彩盒!" ControlToValidate="XRadioButtonList27" ValidationGroup="开始">彩盒</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator24" runat="server" Display="None" ErrorMessage="请填写客户化要求中彩盒!" ControlToValidate="XTextBox191" ValidationGroup="开始" DisableExpress='OFR_GN_CustomerRequirement.ColorBox !="客户要求"'>彩盒客户要求</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator67" runat="server" Display="None" ErrorMessage="请填写报盘制作要求" ControlToValidate="XRadioButtonList6" ValidationGroup="开始">报盘制作</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator69" runat="server" Display="None" ErrorMessage="序列号规范" ControlToValidate="XTextBox116" ValidationGroup="技术支持">规范</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="88" align="middle">
                            <aspxform:XLabel id="XLabel123" runat="server" text="整机颜色" Width="51px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="122">
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="OFR_GN_CustomerRequirement.Color" RepeatDirection="Horizontal">
                                <asp:ListItem>白色</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="105">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox81" runat="server" XDataBind="OFR_GN_CustomerRequirement.Color_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="95px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="63" align="middle">
                            <aspxform:XLabel id="XLabel125" runat="server" text="面壳丝印"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="126">
                            <aspxform:XRadioButtonList id="XRadioButtonList24" runat="server" XDataBind="OFR_GN_CustomerRequirement.SurfaceShellSilk" RepeatDirection="Horizontal">
                                <asp:ListItem>通用</asp:ListItem>
                                <asp:ListItem>客户要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="230">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox193" runat="server" XDataBind="OFR_GN_CustomerRequirement.SurfaceShellSilk_Remark" width="225px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="17px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="59" align="middle">
                            <aspxform:XLabel id="XLabel126" runat="server" text="背板丝印"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="123">
                            <aspxform:XRadioButtonList id="XRadioButtonList25" runat="server" XDataBind="OFR_GN_CustomerRequirement.BackSilk" RepeatDirection="Horizontal">
                                <asp:ListItem>通用</asp:ListItem>
                                <asp:ListItem>客户要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="306">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox123" runat="server" XDataBind="OFR_GN_CustomerRequirement.BackSilk_Remark" width="300px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="21px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="88" align="middle">
                            <aspxform:XLabel id="XLabel129" runat="server" text="彩盒"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="122">
                            <aspxform:XRadioButtonList id="XRadioButtonList27" runat="server" XDataBind="OFR_GN_CustomerRequirement.ColorBox" RepeatDirection="Horizontal">
                                <asp:ListItem>通用</asp:ListItem>
                                <asp:ListItem>客户要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="105">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox191" runat="server" XDataBind="OFR_GN_CustomerRequirement.ColorBox_Remark" width="100px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="24px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="63" align="middle">
                            <aspxform:XLabel id="XLabel130" runat="server" text="外箱"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="125">
                            <aspxform:XRadioButtonList id="XRadioButtonList28" runat="server" XDataBind="OFR_GN_CustomerRequirement.Carton" RepeatDirection="Horizontal">
                                <asp:ListItem>通用</asp:ListItem>
                                <asp:ListItem>客户要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="230">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox192" runat="server" XDataBind="OFR_GN_CustomerRequirement.Carton_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="161px" Height="17px" BorderColor="Gainsboro" TextMode="MultiLine" ValueToDisplayText Value></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="59" align="middle">
                            <aspxform:XLabel id="XLabel197" runat="server" text="报盘制作" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="123">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="OFR_GN_CustomerRequirement.Baopan" RepeatDirection="Horizontal">
                                <asp:ListItem>通用</asp:ListItem>
                                <asp:ListItem>客户要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="306">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox144" runat="server" XDataBind="OFR_GN_CustomerRequirement.Baopan_Remark" width="300px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="21px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="88" align="middle">
                            <aspxform:XLabel id="XLabel58" runat="server" text="其他"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1155">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox83" runat="server" XDataBind="OFR_GN_CustomerRequirement.Other" width="1100px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28" valign="center" width="131" align="middle">
                            <aspxform:XLabel id="XLabel31" runat="server" text="客户指定采购物料要求"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1112">
                            <aspxform:XCheckBox id="XCheckBox19" runat="server" XDataBind="OFR_GN_CustomerRequirement.CustomerPurchaseMaterial" Text="由我司负责采购的物料"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox20" runat="server" XDataBind="OFR_GN_CustomerRequirement.MyPurchaseMaterial" Text="由客户自行采购的物料"></aspxform:XCheckBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_CustomerRequirement.CustomerPurchaseMaterial !=1" dynamicarea="1,1" xdatasource="TableName:OFR_GN_CR_MyCompany;Filter:TaskID->OFR_GN_Applicant.TaskID_Original" datamap="MaterialName->OFR_GN_CR_MyCompany.MaterialName;Amount->OFR_GN_CR_MyCompany.Amount;Suppliers->OFR_GN_CR_MyCompany.Suppliers;DeliveryTime->OFR_GN_CR_MyCompany.DeliveryTime">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="35">
                            <aspxform:XLabel id="XLabel36" runat="server" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="310" align="middle">
                            <aspxform:XLabel id="XLabel37" runat="server" text="我司采购物料名称" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="middle">
                            <aspxform:XLabel id="XLabel38" runat="server" text="数量" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261" align="middle">
                            <aspxform:XLabel id="XLabel39" runat="server" text="指定供应商与联系方式" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="575" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel40" runat="server" text="交货时间与方式" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22">
                            <aspxform:XGridLineNo id="XGridLineNo7" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="OFR_GN_CR_MyCompany.MaterialName" width="274px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="OFR_GN_CR_MyCompany.Amount" width="36px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="OFR_GN_CR_MyCompany.Suppliers" width="256px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox53" runat="server" XDataBind="OFR_GN_CR_MyCompany.DeliveryTime" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="560px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton7" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加物料" PrintOut="False" TableName="OFR_GN_CR_MyCompany"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_CustomerRequirement.MyPurchaseMaterial !=1" dynamicarea="1,1" xdatasource="TableName:OFR_GN_CR_Customer;Filter:TaskID->OFR_GN_Applicant.TaskID_Original" datamap="MaterialName->OFR_GN_CR_Customer.MaterialName;Amount->OFR_GN_CR_Customer.Amount;Suppliers->OFR_GN_CR_Customer.Suppliers;DeliveryTime->OFR_GN_CR_Customer.DeliveryTime">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="35">
                            <aspxform:XLabel id="XLabel41" runat="server" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="310" align="middle">
                            <aspxform:XLabel id="XLabel42" runat="server" text="客户采购物料名称" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="middle">
                            <aspxform:XLabel id="XLabel43" runat="server" text="数量" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261" align="middle">
                            <aspxform:XLabel id="XLabel44" runat="server" text="指定供应商与联系方式" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="575" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel45" runat="server" text="交货时间与方式" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22">
                            <aspxform:XGridLineNo id="XGridLineNo8" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="OFR_GN_CR_Customer.MaterialName" width="277px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="OFR_GN_CR_Customer.Amount" width="36px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox56" runat="server" XDataBind="OFR_GN_CR_Customer.Suppliers" width="253px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox57" runat="server" XDataBind="OFR_GN_CR_Customer.DeliveryTime" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="560px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton8" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加物料" PrintOut="False" TableName="OFR_GN_CR_Customer"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" valign="center" width="89" align="middle">
                            <aspxform:XLabel id="XLabel32" runat="server" text="序列号要求" Font-Size="X-Small" Font-Bold="True" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="396">
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.Type_SerialNumber" Text="序列号"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.Type_MAC" Text="MAC地址"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.Type_CM" Text="CM_序列号"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox4" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.Type_CMMAC" Text="CM_MAC地址"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox5" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.Type_Other" Text="其他"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="755">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox116" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.Remark" width="695px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_SerialNumberRequirement.Type_SerialNumber == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="64">
                            <aspxform:XLabel id="XLabel47" runat="server" text="序列号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="13" width="52">
                            <aspxform:XLabel id="XLabel51" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox22" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.SerialNumber_Start" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="453px" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="50">
                            <aspxform:XLabel id="XLabel345" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox82" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.SerialNumber_End" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="568px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="14">
                            <aspxform:XLabel id="XLabel52" runat="server" text="贴纸数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="127">
                            <aspxform:XRadioButtonList id="XRadioButtonList29" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.SerialNumber_Sticker" RepeatDirection="Horizontal">
                                <asp:ListItem>标准(4张)</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="342">
                            <aspxform:XTextBox id="XTextBox181" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.SerialNumber_StickerRemark" width="325px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel342" runat="server" text="贴法" Width="28px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="105">
                            <aspxform:XRadioButtonList id="XRadioButtonList15" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.SerialNumber_PasteMethod" RepeatDirection="Horizontal">
                                <asp:ListItem>标准</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="488">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox190" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.SerialNumber_PasteMethodRemark" width="480px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_SerialNumberRequirement.Type_MAC ==0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="64">
                            <aspxform:XLabel id="XLabel48" runat="server" text="MAC地址"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="52">
                            <aspxform:XLabel id="XLabel152" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox69" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.MACAdd_Start" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="210px" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="50">
                            <aspxform:XLabel id="XLabel153" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox122" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.MACAdd_End" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="210px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel186" runat="server" text="贴纸数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="127">
                            <aspxform:XRadioButtonList id="XRadioButtonList43" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.MACAdd_Sticker" RepeatDirection="Horizontal">
                                <asp:ListItem>标准(1张)</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="342">
                            <aspxform:XTextBox id="XTextBox124" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.MACAdd_StickerRemark" width="325px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel187" runat="server" text="贴法" Width="28px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="105">
                            <aspxform:XRadioButtonList id="XRadioButtonList46" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.MACAdd_PasteMethod" RepeatDirection="Horizontal">
                                <asp:ListItem>标准</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="488">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox125" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.MACAdd_PasteMethodRemark" width="480px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="21px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_SerialNumberRequirement.Type_CM == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="64">
                            <aspxform:XLabel id="XLabel60" runat="server" text="CM序列号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="52">
                            <aspxform:XLabel id="XLabel189" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox126" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.CM_Start" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="210px" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="50">
                            <aspxform:XLabel id="XLabel190" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox127" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.CM_End" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="210px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel191" runat="server" text="贴纸数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="129">
                            <aspxform:XRadioButtonList id="XRadioButtonList47" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.CM_Sticker" RepeatDirection="Horizontal">
                                <asp:ListItem>标准(4张)</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="340">
                            <aspxform:XTextBox id="XTextBox128" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.CM_StickerRemark" width="325px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel192" runat="server" text="贴法" Width="28px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="105">
                            <aspxform:XRadioButtonList id="XRadioButtonList48" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.CM_PasteMethod" RepeatDirection="Horizontal">
                                <asp:ListItem>标准</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="488">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox129" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.CM_PasteMethodRemark" width="480px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="24px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_SerialNumberRequirement.Type_CMMAC ==0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" valign="center" rowspan="2" width="64" align="middle">
                            <aspxform:XLabel id="XLabel34" runat="server" text="CMMAC地址"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="52">
                            <aspxform:XLabel id="XLabel35" runat="server" text="BPI证书"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="150">
                            <aspxform:XRadioButtonList id="XRadioButtonList14" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.CMMAC_BPI" Width="144px" RepeatDirection="Horizontal">
                                <asp:ListItem>欧标</asp:ListItem>
                                <asp:ListItem>美标</asp:ListItem>
                                <asp:ListItem>标准</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.CMMAC_BPIRemark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="50">
                            <aspxform:XLabel id="XLabel66" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="164">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox36" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.CMMAC_Start" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56">
                            <aspxform:XLabel id="XLabel67" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="370">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox64" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.CMMAC_End" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="210px" Height="20px" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel68" runat="server" text="贴纸数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.CMMAC_Sticker" RepeatDirection="Horizontal">
                                <asp:ListItem>标准(1张)</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox65" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.CMMAC_StickerRemark" width="264px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel69" runat="server" text="贴法" Width="28px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XRadioButtonList id="XRadioButtonList13" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.CMMAC_PasteMethod" RepeatDirection="Horizontal">
                                <asp:ListItem>标准</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox id="XTextBox66" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.CMMAC_PasteMethodRemark" width="425px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_GN_SerialNumberRequirement.Type_Other ==0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="64" align="middle">
                            <aspxform:XLabel id="XLabel28" runat="server" text="其他"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1179">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox61" runat="server" XDataBind="OFR_GN_SerialNumberRequirement.Other" width="1100px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="1248" colspan="2">
                            <aspxform:XLabel id="XLabel70" runat="server" text="配置表图片" Font-Size="Small" Font-Bold="True" ForeColor="Navy"></aspxform:XLabel>
                            <input id="bt2" onclick="Toggle('bt2','div2')" value="隐藏" type="button" />
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator53" runat="server" Display="None" ErrorMessage="请上传配置表图片!" ControlToValidate="XImageAttachment1" ValidationGroup="BOM设计师(确认)">配置表图片</aspxform:XRequiredFieldValidator>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" id="div2" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="800" align="middle">
                            <aspxform:XImageAttachment id="XImageAttachment1" runat="server" XDataBind="OFR_GN_BInfo.ConfigTablesImage" BorderWidth="3px" Width="112px" Height="128px" BorderColor="Gainsboro" BorderStyle="Solid" PrintOut="True"></aspxform:XImageAttachment>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#ff8080" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel72" runat="server" text="订单评审信息" Font-Size="Small" Font-Bold="True" ForeColor="Navy"></aspxform:XLabel>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" height="27">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="100">
                            <aspxform:XLabel id="XLabel71" runat="server" text="订单评审参考资料"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1143">
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="OFR_GN_BInfo.ReferenceAtt"></aspxform:XMSNAttachments>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator64" runat="server" Display="None" ErrorMessage="请选择主板设计师！" ControlToValidate="XTextBox140" ValidationGroup="产品管理工程师" DisableExpress="OFR_GN_Review_HD.MainYorN  !=1">主板设计师</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator72" runat="server" Display="None" ErrorMessage="请选择电源设计师！" ControlToValidate="XTextBox142" ValidationGroup="产品管理工程师" DisableExpress="OFR_GN_Review_HD.PowerYorN  !=1">电源设计师</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="100" align="middle">
                            <aspxform:XLabel id="XLabel63" runat="server" text="资料说明"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1143">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox88" runat="server" XDataBind="OFR_GN_BInfo.ReferenceAttRemark" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="81">
                            <aspxform:XLabel id="XLabel193" runat="server" text="技术评审" Font-Size="Small" Font-Bold="True" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="500">
                            <aspxform:XCheckBox id="XCheckBox24" runat="server" XDataBind="OFR_GN_Review_HD.MainYorN" Text="主板"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox25" runat="server" XDataBind="OFR_GN_Review_HD.PowerYorN" Text="电源"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox26" runat="server" XDataBind="OFR_GN_Review_HD.OtherBoardYorN" Text="副板"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox21" runat="server" XDataBind="OFR_GN_Review_HD.CMYorN" Text="CM板"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox22" runat="server" XDataBind="OFR_GN_Review_HD.WifiYorN" Text="Wifi板"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox23" runat="server" XDataBind="OFR_GN_Review_HD.SoftYorN" Text="软件" Checked="True"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox27" runat="server" XDataBind="OFR_GN_Review_HD.StructYorN" Text="结构" Checked="True"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox28" runat="server" XDataBind="OFR_GN_Review_HD.PlaneYorN" Text="平面" Checked="True"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="73" align="right">
                            <aspxform:XLabel id="XLabel194" runat="server" text="主板设计师:" HiddenExpress="OFR_GN_Review_HD.MainYorN  !=1"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" width="79">
                            <aspxform:XTextBox id="XTextBox140" runat="server" XDataBind="OFR_GN_Review_HD.MainYorN_DesignerName" width="77px" Max="0" Min="0" HiddenInput="False" HiddenExpress="OFR_GN_Review_HD.MainYorN  !=1" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="54">
                            <aspxform:XSelectUserButton id="XSelectUserButton3" runat="server" HiddenExpress="OFR_GN_Review_HD.MainYorN  !=1" Width="22px" Height="20px" DataMap="Account->OFR_GN_Review_HD.MainYorN_Designer;DisplayName->OFR_GN_Review_HD.MainYorN_DesignerName" UseSubmitBehavior="False" PopupWndWidth="800" PopupWndX="100" PopupWndY="100" PopupWndHeight="500" Text="..." NavigateUrl="~\FormSupport\SelUser.aspx"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox141" runat="server" XDataBind="OFR_GN_Review_HD.MainYorN_Designer" width="21px" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="68">
                            <aspxform:XLabel id="XLabel195" runat="server" text="电源设计师:" HiddenExpress="OFR_GN_Review_HD.PowerYorN  !=1"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="82">
                            <aspxform:XTextBox id="XTextBox142" runat="server" XDataBind="OFR_GN_Review_HD.PowerYorN_DesignerName" width="77px" Max="0" Min="0" HiddenInput="False" HiddenExpress="OFR_GN_Review_HD.PowerYorN  !=1" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="488">
                            <aspxform:XSelectUserButton id="XSelectUserButton4" runat="server" HiddenExpress="OFR_GN_Review_HD.PowerYorN  !=1" Width="21px" DataMap="Account->OFR_GN_Review_HD.PowerYorN_Designer;DisplayName->OFR_GN_Review_HD.PowerYorN_DesignerName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox143" runat="server" XDataBind="OFR_GN_Review_HD.PowerYorN_Designer" width="25px" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel73" runat="server" text="硬件评审" Font-Size="Small" Font-Bold="True" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="86">
                            <aspxform:XLabel id="XLabel74" runat="server" text="订单配置类型"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1157">
                            <aspxform:XRadioButtonList id="XRadioButtonList16" runat="server" XDataBind="OFR_GN_Review_HD.OrderConfigType" RepeatDirection="Horizontal">
                                <asp:ListItem>A类(翻单)</asp:ListItem>
                                <asp:ListItem>C类(新配置机型)</asp:ListItem>
                                <asp:ListItem>D类(未量产新机芯)</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator26" runat="server" Display="None" ErrorMessage="请选择订单配置类型!" ControlToValidate="XRadioButtonList16" ValidationGroup="产品管理工程师">订单配置类型</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator27" runat="server" Display="None" ErrorMessage="请选择清半成品库存!" ControlToValidate="XRadioButtonList17" ValidationGroup="产品管理工程师">清半成品库存</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator28" runat="server" Display="None" ErrorMessage="您选择清半成品库存为有,请填写内容!" ControlToValidate="XTextBox68" ValidationGroup="产品管理工程师" DisableExpress='OFR_GN_Review_HD.SemifinishedProducts !="有"'>清半成品库存有</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator29" runat="server" Display="None" ErrorMessage="请选择拆单生产!" ControlToValidate="XRadioButtonList30" ValidationGroup="产品管理工程师">拆单生产</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator32" runat="server" Display="None" ErrorMessage="您选择拆单生产为是,请填写内容!" ControlToValidate="XTextBox27" ValidationGroup="产品管理工程师" DisableExpress='OFR_GN_Review_HD.SplitOrder !="是"'>拆单生产是</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator33" runat="server" Display="None" ErrorMessage="请选择3C认证!" ControlToValidate="XRadioButtonList19" ValidationGroup="产品管理工程师">3C认证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator34" runat="server" Display="None" ErrorMessage="您选择3C认证未完成，请填写内容!" ControlToValidate="XTextBox72" ValidationGroup="产品管理工程师" DisableExpress='OFR_GN_Review_HD.ThreeCCertification !="未完成"'>3C认证未完成</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator35" runat="server" Display="None" ErrorMessage="请选择能效认证!" ControlToValidate="XRadioButtonList21" ValidationGroup="产品管理工程师">能效认证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator36" runat="server" Display="None" ErrorMessage="您选择能效认证为未完成，请填写内容!" ControlToValidate="XTextBox71" ValidationGroup="产品管理工程师" DisableExpress='OFR_GN_Review_HD.EnergyCertification !="未完成"'>能效认证未完成</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator48" runat="server" Display="None" ErrorMessage="请选择整体硬件评审中的工艺评审！" ControlToValidate="XRadioButtonList31" ValidationGroup="产品管理工程师">工艺评审</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator49" runat="server" Display="None" ErrorMessage="产品管理工程师选择了工艺评审中的未完成，请填写内容！" ControlToValidate="XTextBox73" ValidationGroup="工艺签单工程师" DisableExpress='OFR_GN_Review_HD.TechnologyReview !="未完成"'>工艺评审未完成</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="86">
                            <aspxform:XLabel id="XLabel75" runat="server" text="清半成品库存"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="72">
                            <aspxform:XRadioButtonList id="XRadioButtonList17" runat="server" XDataBind="OFR_GN_Review_HD.SemifinishedProducts" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="213">
                            <aspxform:XTextBox id="XTextBox68" runat="server" XDataBind="OFR_GN_Review_HD.SemifinishedProducts_Remark" width="138px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67">
                            <aspxform:XLabel id="XLabel100" runat="server" text="工艺评审"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="107">
                            <aspxform:XRadioButtonList id="XRadioButtonList31" runat="server" XDataBind="OFR_GN_Review_HD.TechnologyReview" RepeatDirection="Horizontal">
                                <asp:ListItem>完成</asp:ListItem>
                                <asp:ListItem>未完成</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="246">
                            <aspxform:XTextBox id="XTextBox73" runat="server" XDataBind="OFR_GN_Review_HD.TechnologyReview_Remark" width="227px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="53">
                            <aspxform:XLabel id="XLabel98" runat="server" text="拆单生产"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="78">
                            <aspxform:XRadioButtonList id="XRadioButtonList30" runat="server" XDataBind="OFR_GN_Review_HD.SplitOrder" RepeatDirection="Horizontal">
                                <asp:ListItem>否</asp:ListItem>
                                <asp:ListItem>是</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="300">
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="OFR_GN_Review_HD.SplitOrder_Remark" width="185px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="86">
                            <aspxform:XLabel id="XLabel82" runat="server" text="3C认证"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="108">
                            <aspxform:XRadioButtonList id="XRadioButtonList19" runat="server" XDataBind="OFR_GN_Review_HD.ThreeCCertification" RepeatDirection="Horizontal">
                                <asp:ListItem>完成</asp:ListItem>
                                <asp:ListItem>未完成</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="177">
                            <aspxform:XTextBox id="XTextBox72" runat="server" XDataBind="OFR_GN_Review_HD.ThreeCCertification_Remark" width="169px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67">
                            <aspxform:XLabel id="XLabel84" runat="server" text="能效认证"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="107">
                            <aspxform:XRadioButtonList id="XRadioButtonList21" runat="server" XDataBind="OFR_GN_Review_HD.EnergyCertification" RepeatDirection="Horizontal">
                                <asp:ListItem>完成</asp:ListItem>
                                <asp:ListItem>未完成</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="246">
                            <aspxform:XTextBox id="XTextBox71" runat="server" XDataBind="OFR_GN_Review_HD.EnergyCertification_Remark" width="226px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="53">
                            <aspxform:XLabel id="XLabel85" runat="server" text="其它认证"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="146">
                            <aspxform:XRadioButtonList id="XRadioButtonList26" runat="server" XDataBind="OFR_GN_Review_HD.OtherCertication" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>完成</asp:ListItem>
                                <asp:ListItem>未完成</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="232">
                            <aspxform:XTextBox id="XTextBox70" runat="server" XDataBind="OFR_GN_Review_HD.OtherCertication_Remark" width="185px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="86">
                            <aspxform:XLabel id="XLabel102" runat="server" text="设计变更电子流"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="288">
                            <aspxform:XRadioButtonList id="XRadioButtonList32" runat="server" XDataBind="OFR_GN_Review_HD.BOMBPM" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67">
                            <aspxform:XLabel id="XLabel14" runat="server" text="未封样物料"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="356">
                            <aspxform:XRadioButtonList id="XRadioButtonList33" runat="server" XDataBind="OFR_GN_Review_HD.SealedMaterial" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator50" runat="server" Display="None" ErrorMessage="请选择整体硬件评审中的未封样物料！" ControlToValidate="XRadioButtonList33" ValidationGroup="产品管理工程师">未封样物料</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75">
                            <aspxform:XLabel id="XLabel54" runat="server" text="是否需要样机"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="359">
                            <aspxform:XRadioButtonList id="XRadioButtonList18" runat="server" XDataBind="OFR_GN_Review_HD.SampleMachine" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator51" runat="server" Display="None" ErrorMessage="请选择整体硬件评审中的是否需要样机！" ControlToValidate="XRadioButtonList18" ValidationGroup="产品管理工程师">是否需要样机</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_GN_Review_HD.BOMBPM !="有"' dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="30" align="middle">
                            <aspxform:XLabel id="XLabel118" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="162" align="middle">
                            <aspxform:XLabel id="XLabel127" runat="server" text="电子流编号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1048" align="middle">
                            <aspxform:XLabel id="XLabel132" runat="server" text="更改内容说明" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="21">
                            <aspxform:XGridLineNo id="XGridLineNo3" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox74" runat="server" XDataBind="OFR_GN_Review_HD_BOMBPM.BPMNumber" width="140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox77" runat="server" XDataBind="OFR_GN_Review_HD_BOMBPM.BPMChangeRemark" Max="0" Min="0" HiddenInput="False" HiddenExpress='OFR_GN_Review_Software.OrderSoftwareType =="无"' DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="1002px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton3" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加变更项" PrintOut="False" TableName="OFR_GN_Review_HD_BOMBPM"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_GN_Review_HD.SealedMaterial !="有"' dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="16" width="29">
                            <aspxform:XLabel id="XLabel27" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="204" align="middle">
                            <aspxform:XLabel id="XLabel92" runat="server" text="物料类别" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="709" align="middle">
                            <aspxform:XLabel id="XLabel131" runat="server" text="物料说明" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="155" align="middle">
                            <aspxform:XLabel id="XLabel133" runat="server" text="预计封样时间" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="137" align="middle">
                            <aspxform:XLabel id="XLabel134" runat="server" text="设计师" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XGridLineNo id="XGridLineNo4" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox67" runat="server" XDataBind="OFR_GN_Review_HD_SealedMaterial.MaterialType" width="202px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox78" runat="server" XDataBind="OFR_GN_Review_HD_SealedMaterial.MaterialRemark" width="665px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="OFR_GN_Review_HD_SealedMaterial.SealedTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                            <aspxform:XTextBox id="XTextBox80" runat="server" XDataBind="OFR_GN_Review_HD_SealedMaterial.Designer" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="100px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator37" runat="server" Display="None" ErrorMessage="请填写电子BOM签发！" ControlToValidate="XTextBox85" ValidationGroup="BOM设计师(固化)">电子BOM签发</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton4" runat="server" Width="105px" Height="21px" UseSubmitBehavior="False" Text="添加未封样物料" PrintOut="False" TableName="OFR_GN_Review_HD_SealedMaterial" OnClientClick="XFormShell.XFormAgent.AppendBlock(this,'OFR_Attachment1_SJ');return false;"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81">
                            <aspxform:XLabel id="XLabel136" runat="server" text="其他评审意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox84" runat="server" XDataBind="OFR_GN_Review_HD.OtherReview" width="1140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81">
                            <aspxform:XLabel id="XLabel139" runat="server" text="电子BOM签发"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox85" runat="server" XDataBind="OFR_GN_Review_HD.ElectronicsBOM" width="1140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel137" runat="server" text="软件评审" Font-Size="Small" Font-Bold="True" ForeColor="Black"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator38" runat="server" Display="None" ErrorMessage="请选择订单软件类型！" ControlToValidate="XRadioButtonList34" ValidationGroup="软件签单工程师">订单软件类型</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator39" runat="server" Display="None" ErrorMessage="请选择说明书更改要求！" ControlToValidate="XRadioButtonList34" ValidationGroup="软件签单工程师">说明书更改要求</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator52" runat="server" Display="None" ErrorMessage="请选择软件评审中的是否需要样机！" ControlToValidate="XRadioButtonList8" ValidationGroup="软件签单工程师">是否需要样机</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator46" runat="server" Display="None" ErrorMessage="请填写软件评审中的软件编译完成时间！" ControlToValidate="XTextBox60" ValidationGroup="软件签单工程师" DisableExpress='OFR_GN_Review_Software.OrderSoftwareType !="A类(翻单)"'>软件编译完成时间</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator55" runat="server" Display="None" ErrorMessage="请填写软件评审中的同订单！" ControlToValidate="XTextBox130" ValidationGroup="软件签单工程师" DisableExpress='OFR_GN_Review_Software.OrderSoftwareType !="A类(翻单)"'>同订单</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator56" runat="server" Display="None" ErrorMessage="请填写软件评审中的订单软件发布时间！" ControlToValidate="XTextBox59" ValidationGroup="软件签单工程师" DisableExpress='OFR_GN_Review_Software.OrderSoftwareType =="A类(翻单)" || OFR_GN_Review_Software.OrderSoftwareType ==""'>订单软件发布时间</aspxform:XRequiredFieldValidator>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel138" runat="server" text="订单软件类型"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="299">
                            <aspxform:XRadioButtonList id="XRadioButtonList34" runat="server" XDataBind="OFR_GN_Review_Software.OrderSoftwareType" RepeatDirection="Horizontal">
                                <asp:ListItem>A类(翻单)</asp:ListItem>
                                <asp:ListItem>C类(软件更改)</asp:ListItem>
                                <asp:ListItem>D类(全新软件)</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="102" align="right">
                            <aspxform:XLabel id="XLabel140" runat="server" text="订单软件发布时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="153">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox59" runat="server" XDataBind="OFR_GN_Review_Software.PublishTime" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="77" align="middle">
                            <aspxform:XLabel id="XLabel61" runat="server" text="是否需要样机"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="71">
                            <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="OFR_GN_Review_Software.SampleMachine" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="98" align="right">
                            <aspxform:XLabel id="XLabel141" runat="server" text="软件编译完成时间" HiddenExpress='OFR_GN_Review_Software.OrderSoftwareType =="C类(软件更改)" ||OFR_GN_Review_Software.OrderSoftwareType =="D类(全新软件)"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="169">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox60" runat="server" XDataBind="OFR_GN_Review_Software.CompileCompleteTime" Max="0" Min="0" HiddenInput="False" HiddenExpress='OFR_GN_Review_Software.OrderSoftwareType =="C类(软件更改)" ||OFR_GN_Review_Software.OrderSoftwareType =="D类(全新软件)"' DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="44">
                            <aspxform:XLabel id="XLabel62" runat="server" text="同订单" HiddenExpress='OFR_GN_Review_Software.OrderSoftwareType =="C类(软件更改)" ||OFR_GN_Review_Software.OrderSoftwareType =="D类(全新软件)"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="125">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox130" runat="server" XDataBind="OFR_GN_Review_Software.SameOrderNuber" Max="0" Min="0" HiddenInput="False" HiddenExpress='OFR_GN_Review_Software.OrderSoftwareType =="C类(软件更改)" ||OFR_GN_Review_Software.OrderSoftwareType =="D类(全新软件)"' DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="91px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_GN_Review_Software.OrderSoftwareType =="A类(翻单)"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel142" runat="server" text="软件类型"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="192">
                            <aspxform:XRadioButtonList id="XRadioButtonList35" runat="server" XDataBind="OFR_GN_Review_Software.SoftwareType" RepeatDirection="Horizontal">
                                <asp:ListItem>新软件开发</asp:ListItem>
                                <asp:ListItem>第三方提供软件</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="104" align="right">
                            <aspxform:XLabel id="XLabel154" runat="server" text="软件状态"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <aspxform:XRadioButtonList id="XRadioButtonList36" runat="server" XDataBind="OFR_GN_Review_Software.SoftwareState" RepeatDirection="Horizontal">
                                <asp:ListItem>研发阶段</asp:ListItem>
                                <asp:ListItem>客户确认阶段</asp:ListItem>
                                <asp:ListItem>第三方未提供软件</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="96" align="middle">
                            <aspxform:XLabel id="XLabel155" runat="server" text="说明书更改要求"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75">
                            <aspxform:XRadioButtonList id="XRadioButtonList37" runat="server" XDataBind="OFR_GN_Review_Software.SpecificationChange" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="122">
                            <aspxform:XLabel id="XLabel101" runat="server" text="说明书软件提供时间：" HiddenExpress='OFR_GN_Review_Software.SpecificationChange == "无"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="235">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox86" runat="server" XDataBind="OFR_GN_Review_Software.SpecificationChange_Remark" Max="0" Min="0" HiddenInput="False" HiddenExpress='OFR_GN_Review_Software.SpecificationChange == "无"' DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" id="div2" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_GN_Review_Software.OrderSoftwareType =="A类(翻单)"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel156" runat="server" text="条码打印选项"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="192">
                            <aspxform:XRadioButtonList id="XRadioButtonList39" runat="server" XDataBind="OFR_GN_Review_Software.PrintSelect" RepeatDirection="Horizontal">
                                <asp:ListItem>离线打印</asp:ListItem>
                                <asp:ListItem>在线打印</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="104" align="right">
                            <aspxform:XLabel id="XLabel157" runat="server" text="需准备新CA测试卡"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75">
                            <aspxform:XRadioButtonList id="XRadioButtonList41" runat="server" XDataBind="OFR_GN_Review_Software.CATest" RepeatDirection="Horizontal">
                                <asp:ListItem>否</asp:ListItem>
                                <asp:ListItem>是</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="241">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox89" runat="server" XDataBind="OFR_GN_Review_Software.CATest_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="174" align="middle">
                            <aspxform:XLabel id="XLabel158" runat="server" text="需第三方提供生产/授权数据"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75">
                            <aspxform:XRadioButtonList id="XRadioButtonList42" runat="server" XDataBind="OFR_GN_Review_Software.NeedThreeData" RepeatDirection="Horizontal">
                                <asp:ListItem>否</asp:ListItem>
                                <asp:ListItem>是</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="283">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox87" runat="server" XDataBind="OFR_GN_Review_Software.NeedThreeData_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel198" runat="server" text="支持自动化" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="74">
                            <aspxform:XRadioButtonList id="XRadioButtonList53" runat="server" XDataBind="OFR_GN_Review_Software.Automate" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="115" align="right">
                            <aspxform:XLabel id="XLabel199" runat="server" text="自动化软件版本" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="182">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox145" runat="server" XDataBind="OFR_GN_Review_Software.AutomateVersions" width="170px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="31">
                            <aspxform:XLabel id="XLabel200" runat="server" text="原因:" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="748">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox146" runat="server" XDataBind="OFR_GN_Review_Software.Automate_Reason" width="700px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel159" runat="server" text="其他评审意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox90" runat="server" XDataBind="OFR_GN_Review_Software.OtherReview" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="81">
                            <aspxform:XLabel id="XLabel160" runat="server" text="结构评审" Font-Size="Small" Font-Bold="True" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="504">
                            <aspxform:XCheckBoxList id="XCheckBoxList3" runat="server" XDataBind="OFR_GN_Review_Struct.StructSelect" RepeatDirection="Horizontal">
                                <asp:ListItem>物料替换</asp:ListItem>
                                <asp:ListItem>增加物料</asp:ListItem>
                                <asp:ListItem>删除物料</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="241" align="right">
                            <aspxform:XLabel id="XLabel165" runat="server" text="是否有新物料需要助理跟进" HiddenExpress="1"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="411">
                            <aspxform:XRadioButtonList id="XRadioButtonList59" runat="server" XDataBind="OFR_GN_Review_Struct.MaterialFollowUp" HiddenExpress="1" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81">
                            <aspxform:XLabel id="XLabel161" runat="server" text="订单结构类型"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XRadioButtonList id="XRadioButtonList50" runat="server" XDataBind="OFR_GN_Review_Struct.StructType" RepeatDirection="Horizontal">
                                <asp:ListItem>A类(翻单)</asp:ListItem>
                                <asp:ListItem>B类(客户化更改)</asp:ListItem>
                                <asp:ListItem>C类(新配置)</asp:ListItem>
                                <asp:ListItem Value="D类(新机芯、需新开模的新机型)">D类(新模具)</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator57" runat="server" Display="None" ErrorMessage="请选择订单结构类型！" ControlToValidate="XRadioButtonList50" ValidationGroup="结构签单工程师">订单结构类型</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="81">
                            <div align="center">
                                <aspxform:XLabel id="XLabel167" runat="server" text="BOM操作" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="577">
                            <div align="center">
                                <aspxform:XLabel id="XLabel168" runat="server" text="变更内容/数量" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="167" align="middle">
                            <aspxform:XLabel id="XLabel176" runat="server" text="ECN更改类型" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="10" colspan="3">
                            <div align="center">
                                <aspxform:XLabel id="XLabel174" runat="server" Font-Bold="True" Text="新物料状况"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="11" width="141" align="middle">
                            <aspxform:XLabel id="XLabel182" runat="server" text="SAP录入" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113" align="middle">
                            <aspxform:XLabel id="XLabel183" runat="server" text="封样" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="152" align="middle">
                            <aspxform:XLabel id="XLabel184" runat="server" text="计划封样时间" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_GN_Review_Struct.StructSelect == "" || OFR_GN_Review_Struct.StructSelect =="增加物料" || OFR_GN_Review_Struct.StructSelect =="删除物料" ||OFR_GN_Review_Struct.StructSelect =="增加物料,删除物料"' dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="81">
                            <div align="center">
                                <aspxform:XLabel id="XLabel178" runat="server" text="物料替换" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="577">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox108" runat="server" XDataBind="OFR_GN_Review_Struct_MaterialChange.MaterialChangeContent" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="555px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <div align="center">
                                <aspxform:XCheckBoxList id="XCheckBoxList1" runat="server" XDataBind="OFR_GN_Review_Struct_MaterialChange.MaterialChange_ECN" RepeatDirection="Horizontal">
                                    <asp:ListItem>产品BOM</asp:ListItem>
                                    <asp:ListItem>销单BOM</asp:ListItem>
                                </aspxform:XCheckBoxList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="141">
                            <div align="center">
                                <aspxform:XRadioButtonList id="XRadioButtonList52" runat="server" XDataBind="OFR_GN_Review_Struct_MaterialChange.MaterialChange_SAP" RepeatDirection="Horizontal">
                                    <asp:ListItem>需新申请</asp:ListItem>
                                    <asp:ListItem>无</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113" align="middle">
                            <aspxform:XRadioButtonList id="XRadioButtonList44" runat="server" XDataBind="OFR_GN_Review_Struct_MaterialChange.MaterialChange_Sealed" RepeatDirection="Horizontal">
                                <asp:ListItem>需封样</asp:ListItem>
                                <asp:ListItem>无</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="152">
                            <aspxform:XDateTimePicker id="XDateTimePicker6" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OFR_GN_Review_Struct_MaterialChange.MaterialChange_SealedTime" BorderWidth="1px" Width="129px" BorderColor="Gainsboro" XType="datetime" ReadOnly="True" XSubType="date"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td align="middle">
                            <aspxform:XAddBlockButton id="XAddBlockButton9" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加" PrintOut="False" TableName="OFR_GN_Review_Struct_MaterialChange"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_GN_Review_Struct.StructSelect == "" || OFR_GN_Review_Struct.StructSelect =="物料替换" || OFR_GN_Review_Struct.StructSelect =="删除物料" ||OFR_GN_Review_Struct.StructSelect =="物料替换,删除物料"' dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="81">
                            <div align="center">
                                <aspxform:XLabel id="XLabel179" runat="server" text="增加物料" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="577">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox112" runat="server" XDataBind="OFR_GN_Review_Struct_AddMaterial.AddMaterialContent" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Width="555px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <div align="center">
                                <aspxform:XCheckBoxList id="XCheckBoxList4" runat="server" XDataBind="OFR_GN_Review_Struct_AddMaterial.AddMaterial_ECN" RepeatDirection="Horizontal">
                                    <asp:ListItem>产品BOM</asp:ListItem>
                                    <asp:ListItem>销单BOM</asp:ListItem>
                                </aspxform:XCheckBoxList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="141">
                            <div align="center">
                                <aspxform:XRadioButtonList id="XRadioButtonList12" runat="server" XDataBind="OFR_GN_Review_Struct_AddMaterial.AddMaterial_SAP" RepeatDirection="Horizontal">
                                    <asp:ListItem>需新申请</asp:ListItem>
                                    <asp:ListItem>无</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113" align="middle">
                            <aspxform:XRadioButtonList id="XRadioButtonList45" runat="server" XDataBind="OFR_GN_Review_Struct_AddMaterial.AddMaterial_Sealed" RepeatDirection="Horizontal">
                                <asp:ListItem>需封样</asp:ListItem>
                                <asp:ListItem>无</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="152">
                            <aspxform:XDateTimePicker id="XDateTimePicker7" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OFR_GN_Review_Struct_AddMaterial.AddMaterial_SealedTime" BorderWidth="1px" Width="128px" BorderColor="Gainsboro" XType="datetime" ReadOnly="True" XSubType="date"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td align="middle">
                            <aspxform:XAddBlockButton id="XAddBlockButton10" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加" PrintOut="False" TableName="OFR_GN_Review_Struct_AddMaterial"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_GN_Review_Struct.StructSelect == "" || OFR_GN_Review_Struct.StructSelect =="物料替换" || OFR_GN_Review_Struct.StructSelect =="增加物料" ||OFR_GN_Review_Struct.StructSelect =="物料替换,增加物料"' dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="81">
                            <div align="center">
                                <aspxform:XLabel id="XLabel180" runat="server" text="删除物料" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="577">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox113" runat="server" XDataBind="OFR_GN_Review_Struct_DeleteMaterial.DeleteMaterialContent" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Width="555px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <div align="center">
                                <aspxform:XCheckBoxList id="XCheckBoxList5" runat="server" XDataBind="OFR_GN_Review_Struct_DeleteMaterial.DeleteMaterial_ECN" RepeatDirection="Horizontal">
                                    <asp:ListItem>产品BOM</asp:ListItem>
                                    <asp:ListItem>销单BOM</asp:ListItem>
                                </aspxform:XCheckBoxList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="141">
                            <div align="center">
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113" align="middle">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="152">
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator54" runat="server" Display="None" ErrorMessage="请填写结构BOM签发！" ControlToValidate="XTextBox94" ValidationGroup="BOM设计师(固化)">结构BOM签发</aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td align="middle">
                            <aspxform:XAddBlockButton id="XAddBlockButton11" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加" PrintOut="False" TableName="OFR_GN_Review_Struct_DeleteMaterial"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81">
                            <aspxform:XLabel id="XLabel181" runat="server" text="其他评审意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox91" runat="server" XDataBind="OFR_GN_Review_Struct.OtherReview" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81">
                            <aspxform:XLabel id="XLabel185" runat="server" text="结构BOM签发"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox94" runat="server" XDataBind="OFR_GN_Review_Struct.StructBOM" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="81">
                            <aspxform:XLabel id="XLabel49" runat="server" text="质量评审" Font-Size="Small" Font-Bold="True" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox75" runat="server" XDataBind="OFR_GN_Review_Quality.QualityConent" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="29" width="81">
                            <aspxform:XLabel id="XLabel96" runat="server" text="订单计划" Font-Size="Small" Font-Bold="True" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="204">
                            <aspxform:XRadioButtonList id="XRadioButtonList38" runat="server" XDataBind="OFR_GN_Review_Quality.ProjectPlan" Width="182px" RepeatDirection="Horizontal">
                                <asp:ListItem>执行项目计划</asp:ListItem>
                                <asp:ListItem>无项目计划</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="955">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox137" runat="server" XDataBind="OFR_GN_Review_Quality.ProjectRemark" width="938px" Max="0" Min="0" HiddenInput="False" HiddenExpress='OFR_GN_Review_Quality.ProjectPlan != "无项目计划"' DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="29px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel55" runat="server" text="交期评审" Font-Size="Small" Font-Bold="True" ForeColor="Black"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator41" runat="server" Display="None" ErrorMessage="请填写交期评审中的长周期物料！" ControlToValidate="XTextBox76" ValidationGroup="物控(长周期)">长周期物料</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator42" runat="server" Display="None" ErrorMessage="请填写交期评审中的SMT/AI！" ControlToValidate="XTextBox96" ValidationGroup="物控(SMT)">SMT/AI</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator43" runat="server" Display="None" ErrorMessage="请填写交期评审中的机芯!" ControlToValidate="XTextBox97" ValidationGroup="物控(SMT)">机芯</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator44" runat="server" Display="None" ErrorMessage="请填写交期评审中的整机!" ControlToValidate="XTextBox104" ValidationGroup="物控(整机)">整机</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator62" runat="server" Display="None" ErrorMessage="请勾选D类订单计划" ControlToValidate="XRadioButtonList38" ValidationGroup="项目经理">订单项目计划</aspxform:XRequiredFieldValidator>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="135" align="middle">
                            <aspxform:XLabel id="XLabel86" runat="server" text="物料类别" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
                            <p align="center">
                                <aspxform:XLabel id="XLabel87" runat="server" text="物料齐套时间评审" Font-Bold="True"></aspxform:XLabel>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="135" align="middle">
                            <aspxform:XLabel id="XLabel88" runat="server" text="长周期物料"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
                            <aspxform:XTextBox id="XTextBox76" runat="server" XDataBind="OFR_GN_Review_DeliveryDate.LongCycleMaterial" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="135" align="middle">
                            <aspxform:XLabel id="XLabel89" runat="server" text="SMT/AI"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
                            <aspxform:XTextBox id="XTextBox96" runat="server" XDataBind="OFR_GN_Review_DeliveryDate.SMT_AI" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="135" align="middle">
                            <aspxform:XLabel id="XLabel90" runat="server" text="机芯"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
                            <aspxform:XTextBox id="XTextBox97" runat="server" XDataBind="OFR_GN_Review_DeliveryDate.MachineChips" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="135" align="middle">
                            <aspxform:XLabel id="XLabel91" runat="server" text="整机"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox104" runat="server" XDataBind="OFR_GN_Review_DeliveryDate.AllMachine" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="82" align="middle">
                            <aspxform:XLabel id="XLabel93" runat="server" text="开始出货时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="206">
                            <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" XDataBind="OFR_GN_Review_DeliveryDate.ShippingTime_Start" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75">
                            <aspxform:XLabel id="XLabel103" runat="server" text="完成出货时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="276">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" runat="server" XDataBind="OFR_GN_Review_DeliveryDate.ShippingTime_End" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="78" align="right">
                            <aspxform:XLabel id="XLabel105" runat="server" text="撤销计划时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80">
                            <aspxform:XRadioButtonList id="XRadioButtonList54" runat="server" XDataBind="OFR_GN_Review_DeliveryDate.RevocationPlan" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="431">
                            <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" XDataBind="OFR_GN_Review_DeliveryDate.RevocationPlanTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator45" runat="server" Display="None" ErrorMessage="您在交期评审中选择了撤销计划时间为有，请填写！" ControlToValidate="XDateTimePicker8" ValidationGroup="PMC" DisableExpress='OFR_GN_Review_DeliveryDate.RevocationPlan !="有"'>撤销计划时间</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="82" align="middle">
                            <aspxform:XLabel id="XLabel94" runat="server" text="订单是否激活"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="125">
                            <aspxform:XRadioButtonList id="XRadioButtonList51" runat="server" XDataBind="OFR_GN_Review_DeliveryDate.JiHuoYorN" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator60" runat="server" Display="None" ErrorMessage="请选择是否勾选激活！" ControlToValidate="XRadioButtonList51" ValidationGroup="PMC">激活</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="78" align="right">
                            <aspxform:XLabel id="XLabel50" runat="server" text="其他评审意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="952">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox58" runat="server" XDataBind="OFR_GN_Review_DeliveryDate.OtherReview" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='Global.StepName !="财务评审" &amp;&amp;  Global.StepName !="订单终审"&amp;&amp; Global.StepName !="总裁业务助理"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel128" runat="server" text="财务评审" Font-Size="Small" Font-Bold="True" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='Global.StepName !="财务评审" &amp;&amp;  Global.StepName !="订单终审"&amp;&amp; Global.StepName !="总裁业务助理"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel143" runat="server" text="单价" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="208">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox106" runat="server" XDataBind="OFR_GN_Review_Financial.Price" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator47" runat="server" Display="None" ErrorMessage="请填写财务评审中单价！" ControlToValidate="XTextBox106" ValidationGroup="财务评审">单价</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="53">
                            <aspxform:XLabel id="XLabel144" runat="server" text="信用额度"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="297">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox107" runat="server" XDataBind="OFR_GN_Review_Financial.OverCreditQuota" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="196px" Height="25px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="64">
                            <aspxform:XLabel id="XLabel145" runat="server" text="应收款余额"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="248">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox109" runat="server" XDataBind="OFR_GN_Review_Financial.ReceivingQuota" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56">
                            <aspxform:XLabel id="XLabel146" runat="server" text="逾期金额"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="219">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox110" runat="server" XDataBind="OFR_GN_Review_Financial.OverdueQuota" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='Global.StepName !="财务评审" &amp;&amp;  Global.StepName !="订单终审"&amp;&amp; Global.StepName !="总裁业务助理"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="80">
                            <aspxform:XLabel id="XLabel147" runat="server" text="评审意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1163">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox111" runat="server" XDataBind="OFR_GN_Review_Financial.FinReview" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="21" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel311" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="113" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" CssClass="AA" Width="100%" Height="93px"></aspxform:XSignTrace>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td height="29" width="277" align="middle">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" Zoom="60" MarginLeft="2" MarginRight="2" MarginTop="20" MarginBottom="10"></aspxform:XPrintButton>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" Display="None" ErrorMessage="退回请填写审批信息" ControlToValidate="XCommentsTextBox1" ValidationGroup="Return">退回</aspxform:XRequiredFieldValidator>
                        </td>
                        <td width="719" align="middle">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" Display="None" ErrorMessage="拒绝请填写审批信息" ControlToValidate="XCommentsTextBox1" ValidationGroup="Reject">拒绝</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="1250">
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
