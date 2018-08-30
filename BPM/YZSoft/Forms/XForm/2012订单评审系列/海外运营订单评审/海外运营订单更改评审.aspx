<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    
    
     protected void Page_Load(object sender, EventArgs e)
        {
           XTextBox4.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox49.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox46.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox47.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox61.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox230.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox231.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox232.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox233.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox42.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox43.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox44.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox123.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox193.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox81.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
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
                            <asp:Image id="Image1" runat="server" ImageUrl="../../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" align="center">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Bold="True" Font-Size="Medium" text="深圳创维数字技术股份有限公司" Font-Names="Tahoma"></aspxform:XLabel>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="210">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <aspxform:XLabel id="XLabel11" runat="server" XDataBind="OFR_WY_Applicant.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="58" colspan="3" align="center">
                            <p>
                                <asp:Label id="Label1" runat="server" text="海外运营订单更改通知书" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel54" runat="server" Font-Bold="False" text="订单更改注意事项：请销售助理在填写订单更改内容时，同时更新正式表单中的内容信息！" ForeColor="Red" HiddenExpress='Global.StepName !="开始"'></aspxform:XLabel>
                                &nbsp;&nbsp;&nbsp; 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" height="25" width="80" align="right">
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="OFR_WY_Applicant.HRID" HiddenExpress="1" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="25px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="OFR_WY_Applicant.Dept" HiddenExpress="1" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="6px"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel148" runat="server" text="订单号:" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td width="132">
                            <aspxform:XTextBox id="XTextBox115" runat="server" XDataBind="OFR_WY_Applicant.OrderNum" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Express="OFR_WY_Applicant.OrderChange_Original" Width="128px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td width="46" align="right">
                            <aspxform:XLabel id="XLabel2" runat="server" text="发起人:"></aspxform:XLabel>
                        </td>
                        <td width="95">
                            <aspxform:XTextBox id="XTextBox229" runat="server" XDataBind="OFR_WY_Applicant.Name" HiddenInput="False" Min="0" Max="0" width="89px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td width="58" align="right">
                            <aspxform:XLabel id="XLabel3" runat="server" text="发起时间:" Width="54px"></aspxform:XLabel>
                        </td>
                        <td width="152">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="OFR_WY_Applicant.AppDate" HiddenInput="False" Min="0" Max="0" width="147px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="18px"></aspxform:XTextBox>
                        </td>
                        <td width="55" align="right">
                            <aspxform:XLabel id="XLabel33" runat="server" text="订单类别:"></aspxform:XLabel>
                        </td>
                        <td width="190">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="OFR_WY_Applicant.OrderType" Width="183px" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">订单更改</asp:ListItem>
                                <asp:ListItem>订单取消</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            </span></td>
                        <td width="57" align="right">
                            <aspxform:XLabel id="XLabel332" runat="server" text="文档编号:"></aspxform:XLabel>
                        </td>
                        <td width="163">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="OFR_WY_Applicant.DocumentNum" HiddenInput="False" Min="0" Max="0" width="130px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28" width="80" align="right">
                            <aspxform:XLabel id="XLabel53" runat="server" text="原订单号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="213">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox163" runat="server" XDataBind="OFR_WY_Applicant.OrderChange_Original" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="70px" CssClass="TextBox" ReadOnly="True" BorderColor="Goldenrod"></aspxform:XTextBox>
                            <aspxform:XDataBrowserButton id="XDataBrowserButton3" runat="server" Width="103px" DataMap="TaskID->OFR_WY_Applicant.OrderChangeID;OrderNum->OFR_WY_Applicant.OrderChange_Original" DisplayColumns="TaskID:电子流ID;Name:发起人;SN:电子流编号;OrderNum:订单号;DocumentNum:文档编号" Text="导入订单信息" PopupWndHeight="500" PopupWndY="100" XDataSource="TableName:V_OFR_WY_Applicant;Filter:State->OFR_WY_Applicant.State" PopupWndX="100" PopupWndWidth="800" UseSubmitBehavior="False"></aspxform:XDataBrowserButton>
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox63" runat="server" XDataBind="OFR_WY_Applicant.OrderChangeID" HiddenExpress="1" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="10px" CssClass="TextBox" BorderColor="Goldenrod"></aspxform:XTextBox>
                            </span></span></span></span></span></span></span></span></span></span></span></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="94" align="right">
                            <aspxform:XLabel id="XLabel84" runat="server" text="变更方式:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="408">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XRadioButtonList id="XRadioButtonList47" runat="server" XDataBind="OFR_WY_Applicant.ChangeModle" RepeatDirection="Horizontal">
                                <asp:ListItem>无变更</asp:ListItem>
                                <asp:ListItem>永久性替换</asp:ListItem>
                                <asp:ListItem>两种客户化产品并存</asp:ListItem>
                                <asp:ListItem>本次订单临时更改</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="439">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox47" runat="server" XDataBind="OFR_WY_Applicant.ChangeModleRemark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="373px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="80" align="right">
                            <aspxform:XLabel id="XLabel324" runat="server" text="更改原因:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1163">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox4" runat="server" XDataBind="OFR_WY_Applicant.ChangeReason" ForeColor="Red" HiddenInput="False" Min="0" Max="0" width="1114px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                            </span></span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="80" align="center">
                            <aspxform:XLabel id="XLabel67" runat="server" text="订单更改内容:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1163">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox46" runat="server" XDataBind="OFR_WY_Applicant.OrderChangeContent" ForeColor="Red" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="1114px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                            </span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="80">
                            <aspxform:XLabel id="XLabel119" runat="server" Font-Bold="True" Font-Size="Small" text="技术评审" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="295">
                            <aspxform:XCheckBox id="XCheckBox24" runat="server" XDataBind="OFR_WY_Review_HD.MainYorN" Text="主板"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox25" runat="server" XDataBind="OFR_WY_Review_HD.PowerYorN" Text="电源"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox26" runat="server" XDataBind="OFR_WY_Review_HD.OtherBoardYorN" Text="副板"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox4" runat="server" XDataBind="OFR_WY_Review_HD.SoftYorN" Text="软件" Checked="True"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox22" runat="server" XDataBind="OFR_WY_Review_HD.StructYorN" Text="结构"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="OFR_WY_Review_HD.PlaneYorN" Text="平面" Checked="True"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel120" runat="server" text="主板设计师:" HiddenExpress="OFR_WY_Review_HD.MainYorN  !=1"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" width="79">
                            <aspxform:XTextBox id="XTextBox64" runat="server" XDataBind="OFR_WY_Review_HD.MainYorN_DesignerName" HiddenExpress="OFR_WY_Review_HD.MainYorN  !=1" HiddenInput="False" Min="0" Max="0" width="77px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid" width="50">
                            <aspxform:XSelectUserButton id="XSelectUserButton3" runat="server" HiddenExpress="OFR_WY_Review_HD.MainYorN  !=1" Width="22px" Height="20px" DataMap="Account->OFR_WY_Review_HD.MainYorN_Designer;DisplayName->OFR_WY_Review_HD.MainYorN_DesignerName" Text="..." PopupWndHeight="500" PopupWndY="100" PopupWndX="100" PopupWndWidth="800" UseSubmitBehavior="False" NavigateUrl="~\FormSupport\SelUser.aspx"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox65" runat="server" XDataBind="OFR_WY_Review_HD.MainYorN_Designer" HiddenExpress="1" HiddenInput="False" Min="0" Max="0" width="21px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid" width="72">
                            <aspxform:XLabel id="XLabel121" runat="server" text="电源设计师:" HiddenExpress="OFR_WY_Review_HD.PowerYorN  !=1"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid" width="82">
                            <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="OFR_WY_Review_HD.PowerYorN_DesignerName" HiddenExpress="OFR_WY_Review_HD.PowerYorN  !=1" HiddenInput="False" Min="0" Max="0" width="77px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid" width="488">
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" HiddenExpress="OFR_WY_Review_HD.PowerYorN  !=1" Width="21px" DataMap="Account->OFR_WY_Review_HD.PowerYorN_Designer;DisplayName->OFR_WY_Review_HD.PowerYorN_DesignerName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox66" runat="server" XDataBind="OFR_WY_Review_HD.PowerYorN_Designer" HiddenExpress="1" HiddenInput="False" Min="0" Max="0" width="25px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="80">
                            <aspxform:XLabel id="XLabel68" runat="server" text="硬件更改评审:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="212">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox230" runat="server" XDataBind="OFR_WY_Applicant.ChangeReview_HD" HiddenInput="False" Min="0" Max="0" width="200px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="24px" TextMode="MultiLine" DisableExpress='Global.StepName =="开始" || Global.StepName =="BOM设计师(确认)"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80">
                            <aspxform:XLabel id="XLabel333" runat="server" text="软件更改评审:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="214">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox231" runat="server" XDataBind="OFR_WY_Applicant.ChangeReview_Software" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="200px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="26px" TextMode="MultiLine" DisableExpress='Global.StepName =="开始" || Global.StepName =="BOM设计师(确认)"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="83">
                            <aspxform:XLabel id="XLabel356" runat="server" text="结构更改评审:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="215">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox232" runat="server" XDataBind="OFR_WY_Applicant.ChangeReview_Structure" HiddenInput="False" Min="0" Max="0" width="200px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="24px" TextMode="MultiLine" DisableExpress='Global.StepName =="开始" || Global.StepName =="BOM设计师(确认)"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="87">
                            <aspxform:XLabel id="XLabel358" runat="server" text="更改BOM签发:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="254">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox233" runat="server" XDataBind="OFR_WY_Applicant.ChangeBOMIssue" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="200px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" TextMode="MultiLine" DisableExpress='Global.StepName =="开始" || Global.StepName =="BOM设计师(确认)"'></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" datamap="HRID->OFR_WY_Salers.HRID;Name->OFR_WY_Salers.Name;Dept->OFR_WY_Salers.Dept;FullName->OFR_WY_Salers.FullName" xdatasource="TableName:OFR_WY_Salers;Filter:TaskID->OFR_WY_Applicant.OrderChangeID" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" width="945" colspan="3">
                            <aspxform:XLabel id="XLabel82" runat="server" text="销售人员:"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox79" ErrorMessage="请勾选销售人员" Display="None">销售人员</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator70" runat="server" DisableExpress="OFR_WY_Review_HD.MainYorN  !=1" ValidationGroup="产品管理工程师" ControlToValidate="XTextBox64" ErrorMessage="请选择主板设计师！" Display="None">主板设计师</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator72" runat="server" DisableExpress="OFR_WY_Review_HD.PowerYorN  !=1" ValidationGroup="产品管理工程师" ControlToValidate="XTextBox48" ErrorMessage="请选择电源设计师！" Display="None">电源设计师</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="302">
                            <div align="right">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="80">
                            <div align="center">
                                <aspxform:XLabel id="XLabel115" runat="server" text="序号"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="858">
                            <div align="center">
                                <aspxform:XLabel id="XLabel116" runat="server" text="销售人员"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <div align="center">
                                <aspxform:XLabel id="XLabel117" runat="server" text="部门"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo9" runat="server" BorderWidth="1px" Width="24px" BorderColor="Gainsboro" XType="gridlineno" Enabled="False" BackColor="#F0F0F0">1</aspxform:XGridLineNo>
                            <aspxform:XTextBox id="XTextBox79" runat="server" XDataBind="OFR_WY_Salers.HRID" HiddenExpress="1" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="30px" BorderColor="Gainsboro" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox134" runat="server" XDataBind="OFR_WY_Salers.Name" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="428px" ReadOnly="True" BorderColor="Gainsboro" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox135" runat="server" XDataBind="OFR_WY_Salers.Dept" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="243px" ReadOnly="True" BorderColor="Gainsboro" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox136" runat="server" XDataBind="OFR_WY_Salers.FullName" HiddenExpress="1" BorderWidth="1" width="10px" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel357" runat="server" Font-Bold="True" Font-Size="Small" text="订单基本信息" ForeColor="Navy"></aspxform:XLabel>
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" HiddenExpress="1" Width="82px" DataMap="SalesArea->OFR_WY_BInfo.SalesArea;BeiSun->OFR_WY_BInfo.BeiSun;OrderCategory->OFR_WY_BInfo.OrderCategory;OtherRequirements->OFR_WY_BInfo.OtherRequirements;ROSH->OFR_WY_BInfo.ROSH;CustomerName->OFR_WY_BInfo.CustomerName;SalesAmount->OFR_WY_BInfo.SalesAmount;ProductType->OFR_WY_BInfo.ProductType;CabinetType_Only->OFR_WY_BInfo.CabinetType_Only;ReferenceAtt->OFR_WY_BInfo.ReferenceAtt;CustomerAddr->OFR_WY_BInfo.CustomerAddr;ModeOfPayment->OFR_WY_BInfo.ModeOfPayment;Deposit->OFR_WY_BInfo.Deposit;ProductNameIdentifier_Customer->OFR_WY_BInfo.ProductNameIdentifier_Customer;CustomerModel->OFR_WY_BInfo.CustomerModel;SwingAmount->OFR_WY_BInfo.SwingAmount;NewCertificationRequirements_Remark->OFR_WY_BInfo.NewCertificationRequirements_Remark;ThreePatent_Reason->OFR_WY_BInfo.ThreePatent_Reason;GoTheWayGoods->OFR_WY_BInfo.GoTheWayGoods;CustomerBrand->OFR_WY_BInfo.CustomerBrand;ModeOfDelivery->OFR_WY_BInfo.ModeOfDelivery;ReferenceAttRemark->OFR_WY_BInfo.ReferenceAttRemark;ProductModel->OFR_WY_BInfo.ProductModel;CoreNumber->OFR_WY_BInfo.CoreNumber;ProductNameIdentifier->OFR_WY_BInfo.ProductNameIdentifier;ShipmentDate->OFR_WY_BInfo.ShipmentDate;NewCertificationRequirements->OFR_WY_BInfo.NewCertificationRequirements;ImportantOrder->OFR_WY_BInfo.ImportantOrder;TotalAmount->OFR_WY_BInfo.TotalAmount;CustomerAbbr->OFR_WY_BInfo.CustomerAbbr;SanJian->OFR_WY_BInfo.SanJian;ThreePatent_Remark->OFR_WY_BInfo.ThreePatent_Remark;PlaceIdentifier_Other->OFR_WY_BInfo.PlaceIdentifier_Other;GoTheWayGoods_Remark->OFR_WY_BInfo.GoTheWayGoods_Remark;PlaceIdentifier->OFR_WY_BInfo.PlaceIdentifier;ModeOfPayment_Remark->OFR_WY_BInfo.ModeOfPayment_Remark;ThreePatent->OFR_WY_BInfo.ThreePatent" XDataSource="TableName:V_OFR_WY_BInfo;Filter:TaskID->OFR_WY_Applicant.OrderChangeID;BufferType:RuntimeUpdate" ValueColumn="TaskID" DisplayColumn="TaskID" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox62" runat="server" XDataBind="OFR_WY_Applicant.State" HiddenExpress="1" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="38px" BorderColor="Gainsboro">有效</aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="OFR_WY_Applicant.SN" HiddenExpress="1" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="31px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList22" ErrorMessage="请选择是否为红标订单!" Display="None">红标</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox234" ErrorMessage="请填写机芯号!" Display="None">机芯号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator25" runat="server" ValidationGroup="BOM设计师(确认)" ControlToValidate="XTextBox235" ErrorMessage="请填写产品型号!" Display="None">产品型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ValidationGroup="订单专员" ControlToValidate="XTextBox115" ErrorMessage="请填写订单号!" Display="None">订单号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ValidationGroup="开始" ControlToValidate="XDropDownList7" ErrorMessage="请选择产品类别!" Display="None">产品类别</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList40" ErrorMessage="请选择产品名称标识!" Display="None">产品名称标识</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList20" ErrorMessage="请选择ROHS要求!" Display="None">ROHS</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox138" ErrorMessage="请填写客户名称!" Display="None">客户名称</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox114" ErrorMessage="请填写客户品牌!" Display="None">客户品牌</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox132" ErrorMessage="请填写客户型号!" Display="None">客户型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox237" ErrorMessage="请填写销售地区!" Display="None">销售地区</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList38" ErrorMessage="请选择生产地识别!" Display="None">生产地识别</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox117" ErrorMessage="请填写销售数量!" Display="None">销售数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox2" ErrorMessage="请填写文档编号!" Display="None">文档编号</aspxform:XRequiredFieldValidator>
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" HiddenExpress="1" Width="21px" Height="23px" DataMap="DocumentNum->OFR_WY_Applicant.DocumentNum" XDataSource="TableName:OFR_WY_Applicant;Filter:TaskID->OFR_WY_Applicant.OrderChangeID;BufferType:RuntimeUpdate" ValueColumn="TaskID" DisplayColumn="TaskID" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator47" runat="server" ValidationGroup="产品管理工程师" ControlToValidate="XTextBox230" ErrorMessage="请填写硬件更改评审!" Display="None">硬件更改评审</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator50" runat="server" ValidationGroup="软件签单工程师" ControlToValidate="XTextBox231" ErrorMessage="请填写软件更改评审!" Display="None">软件更改评审</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator51" runat="server" ValidationGroup="结构签单工程师" ControlToValidate="XTextBox232" ErrorMessage="请填写结构评审!" Display="None">结构更改评审</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator59" runat="server" ValidationGroup="BOM设计师(BOM更改)" ControlToValidate="XTextBox233" ErrorMessage="请填写更改BOM签发！" Display="None">更改BOM签发</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator64" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList47" ErrorMessage="请勾选客户化变更方式！" Display="None">客户化变更方式</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator71" runat="server" ValidationGroup="平面设计签单工程师" ControlToValidate="XTextBox232" ErrorMessage="请填写结构评审!" Display="None">平面设计更改评审</aspxform:XRequiredFieldValidator>
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
                            <aspxform:XLabel id="XLabel359" runat="server" text="机芯号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid" width="213">
                            <aspxform:XTextBox id="XTextBox234" runat="server" XDataBind="OFR_WY_BInfo.CoreNumber" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="191px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" DisableExpress='OFR_WY_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel325" runat="server" text="订单类型:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="236">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="OFR_WY_BInfo.OrderCategory" RepeatDirection="Horizontal">
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td width="61" align="right">
                            <aspxform:XLabel id="XLabel4" runat="server" text="产品类别:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="148">
                            <aspxform:XDropDownList id="XDropDownList7" runat="server" XDataBind="OFR_WY_BInfo.ProductType" XDataSource="BufferType:RuntimeUpdate" PromptText="请选择">
                                <asp:ListItem>DVB-C</asp:ListItem>
                                <asp:ListItem>DVB-T</asp:ListItem>
                                <asp:ListItem>DVB-S</asp:ListItem>
                                <asp:ListItem>双模DVB-S/T</asp:ListItem>
                                <asp:ListItem>ISDB-T</asp:ListItem>
                                <asp:ListItem>ATSC</asp:ListItem>
                                <asp:ListItem>IPTV</asp:ListItem>
                                <asp:ListItem>OTT</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="83" align="right">
                            <aspxform:XLabel id="XLabel196" runat="server" text="产品名称标识:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="147">
                            <aspxform:XRadioButtonList id="XRadioButtonList40" runat="server" XDataBind="OFR_WY_BInfo.ProductNameIdentifier" RepeatDirection="Horizontal">
                                <asp:ListItem>我司规范</asp:ListItem>
                                <asp:ListItem>客户定义</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td width="175">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="OFR_WY_BInfo.ProductNameIdentifier_Customer" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="139px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel360" runat="server" text="产品型号:" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid" width="213">
                            <aspxform:XTextBox id="XTextBox235" runat="server" XDataBind="OFR_WY_BInfo.ProductModel" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="180px" CssClass="TextBox" DisableCssClass="TextBox" DisableExpress='OFR_WY_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel104" runat="server" text="红标订单:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="236">
                            <aspxform:XRadioButtonList id="XRadioButtonList22" runat="server" XDataBind="OFR_WY_BInfo.ImportantOrder" RepeatDirection="Horizontal">
                                <asp:ListItem>红标订单</asp:ListItem>
                                <asp:ListItem>非红标订单</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                            <aspxform:XLabel id="XLabel64" runat="server" text="ROHS:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="148">
                            <aspxform:XRadioButtonList id="XRadioButtonList20" runat="server" XDataBind="OFR_WY_BInfo.ROSH" RepeatDirection="Horizontal">
                                <asp:ListItem>要求</asp:ListItem>
                                <asp:ListItem>不要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="83" align="right">
                            <aspxform:XLabel id="XLabel193" runat="server" text="客户所在地:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="325">
                            <aspxform:XTextBox id="XTextBox140" runat="server" XDataBind="OFR_WY_BInfo.CustomerAddr" HiddenInput="False" Min="0" Max="0" width="202px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel149" runat="server" text="客户名称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid" width="213">
                            <aspxform:XTextBox id="XTextBox138" runat="server" XDataBind="OFR_WY_BInfo.CustomerName" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="159px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel188" runat="server" text="客户品牌:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="236">
                            <aspxform:XTextBox id="XTextBox114" runat="server" XDataBind="OFR_WY_BInfo.CustomerBrand" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="193px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                            <aspxform:XLabel id="XLabel96" runat="server" text="客户型号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="234">
                            <aspxform:XTextBox id="XTextBox132" runat="server" XDataBind="OFR_WY_BInfo.CustomerModel" HiddenInput="False" Min="0" Max="0" width="210px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="60" align="right">
                            <aspxform:XLabel id="XLabel101" runat="server" text="客户号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="262">
                            <aspxform:XTextBox id="XTextBox137" runat="server" XDataBind="OFR_WY_BInfo.CustomerAbbr" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="180px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel363" runat="server" text="销售地区:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid" width="214">
                            <aspxform:XTextBox id="XTextBox237" runat="server" XDataBind="OFR_WY_BInfo.SalesArea" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="180px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel195" runat="server" text="生产地识别:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="217">
                            <aspxform:XRadioButtonList id="XRadioButtonList38" runat="server" XDataBind="OFR_WY_BInfo.PlaceIdentifier" RepeatDirection="Horizontal">
                                <asp:ListItem>无需</asp:ListItem>
                                <asp:ListItem>MADE IN CHINA</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="169">
                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="OFR_WY_BInfo.PlaceIdentifier_Other" HiddenInput="False" Min="0" Max="0" width="153px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="60" align="right">
                            <aspxform:XLabel id="XLabel83" runat="server" text="销售数量:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="83">
                            <aspxform:XTextBox id="XTextBox117" runat="server" XDataBind="OFR_WY_BInfo.SalesAmount" HiddenInput="False" Min="0" Max="0" width="66px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="62" align="right">
                            <aspxform:XLabel id="XLabel99" runat="server" text="整机备损:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="85">
                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="OFR_WY_BInfo.SwingAmount" HiddenInput="False" Min="0" Max="0" width="71px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="62" align="right">
                            <aspxform:XLabel id="XLabel97" runat="server" text="总计数量:" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="107">
                            <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="OFR_WY_BInfo.TotalAmount" HiddenInput="False" Min="0" Max="0" width="78px" DisableBehavior="ReadOnly" Express="OFR_WY_BInfo.SalesAmount+OFR_WY_BInfo.SwingAmount" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
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
                            <aspxform:XCheckBox id="XCheckBox17" runat="server" XDataBind="OFR_WY_BInfo.SanJian" Text="半成品"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox18" runat="server" XDataBind="OFR_WY_BInfo.BeiSun" Text="散件"></aspxform:XCheckBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator36" runat="server" DisableExpress='OFR_WY_BInfo.ProductNameIdentifier !="客户定义"' ValidationGroup="开始" ControlToValidate="XTextBox5" ErrorMessage="请选择产品名称标识!" Display="None">产品名称标识客户</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel173" runat="server" text="其他要求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="865">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox103" runat="server" XDataBind="OFR_WY_BInfo.OtherRequirements" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="830px" NormalCssClass="TextBox" CssClass="TextBox" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_WY_BInfo.SanJian != 1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="998" colspan="2">
                            <aspxform:XLabel id="XLabel162" runat="server" Font-Bold="True" Font-Size="X-Small" text="半成品" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" datamap="Name->OFR_WY_BanChengPin.Name;Amount->OFR_WY_BanChengPin.Amount;ModuleNumber->OFR_WY_BanChengPin.ModuleNumber;Remark->OFR_WY_BanChengPin.Remark" xdatasource="TableName:OFR_WY_BanChengPin;Filter:TaskID->OFR_WY_Applicant.OrderChangeID" dynamicarea="1,1" hiddenexpress="OFR_WY_BInfo.SanJian != 1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="29">
                            <aspxform:XLabel id="XLabel307" runat="server" Font-Bold="True" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="262" align="center">
                            <aspxform:XLabel id="XLabel163" runat="server" Font-Bold="True" text="名称" Width="32px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="center">
                            <aspxform:XLabel id="XLabel164" runat="server" Font-Bold="True" text="数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="216" align="center">
                            <aspxform:XLabel id="XLabel166" runat="server" Font-Bold="True" text="组件号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="center">
                            <aspxform:XLabel id="XLabel169" runat="server" Font-Bold="True" text="备注/电子流更改号"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="17px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox92" runat="server" XDataBind="OFR_WY_BanChengPin.Name" HiddenInput="False" Min="0" Max="0" width="240px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox93" runat="server" XDataBind="OFR_WY_BanChengPin.Amount" HiddenInput="False" Min="0" Max="0" width="60px" DisableBehavior="ReadOnly" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox95" runat="server" XDataBind="OFR_WY_BanChengPin.ModuleNumber" HiddenInput="False" Min="0" Max="0" width="200px" DisableBehavior="ReadOnly" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox98" runat="server" XDataBind="OFR_WY_BanChengPin.Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="625px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="添加半成品" TableName="OFR_WY_BanChengPin" PrintOut="False"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_WY_BInfo.BeiSun !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="1248" colspan="2">
                            <aspxform:XLabel id="XLabel170" runat="server" Font-Bold="True" Font-Size="X-Small" text="散件" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" datamap="Name->OFR_WY_SanJian.Name;Amount->OFR_WY_SanJian.Amount;PN->OFR_WY_SanJian.PN;Remark->OFR_WY_SanJian.Remark" xdatasource="TableName:OFR_WY_SanJian;Filter:TaskID->OFR_WY_Applicant.OrderChangeID" dynamicarea="1,1" hiddenexpress="OFR_WY_BInfo.BeiSun !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="17" width="31">
                            <aspxform:XLabel id="XLabel308" runat="server" Font-Bold="True" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261" align="center">
                            <aspxform:XLabel id="XLabel171" runat="server" Font-Bold="True" text="名称" Width="32px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="center">
                            <aspxform:XLabel id="XLabel172" runat="server" Font-Bold="True" text="数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="215" align="center">
                            <aspxform:XLabel id="XLabel175" runat="server" Font-Bold="True" text="P/N"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="center">
                            <aspxform:XLabel id="XLabel177" runat="server" Font-Bold="True" text="备注/电子流更改号"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox99" runat="server" XDataBind="OFR_WY_SanJian.Name" HiddenInput="False" Min="0" Max="0" width="240px" DisableBehavior="ReadOnly" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox100" runat="server" XDataBind="OFR_WY_SanJian.Amount" HiddenInput="False" Min="0" Max="0" width="60px" DisableBehavior="ReadOnly" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox101" runat="server" XDataBind="OFR_WY_SanJian.PN" HiddenInput="False" Min="0" Max="0" width="200px" DisableBehavior="ReadOnly" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox102" runat="server" XDataBind="OFR_WY_SanJian.Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="625px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="23">
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator62" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList21" ErrorMessage="请选择订金到账！" Display="None">订金到账</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList55" ErrorMessage="请选择付款方式！" Display="None">付款方式</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator33" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList53" ErrorMessage="请选择走货方式！" Display="None">走货方式</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator58" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList5" ErrorMessage="请选择交货方式！" Display="None">交货方式</aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td width="420" align="right">
                        </td>
                        <td width="226" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Height="21px" Text="添加散件" UseSubmitBehavior="False" TableName="OFR_WY_SanJian" PrintOut="False"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel76" runat="server" text="订金到账:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="90">
                            <aspxform:XRadioButtonList id="XRadioButtonList21" runat="server" XDataBind="OFR_WY_BInfo.Deposit" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="57">
                            <aspxform:XLabel id="XLabel95" runat="server" text="付款方式:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="955">
                            <aspxform:XRadioButtonList id="XRadioButtonList55" runat="server" XDataBind="OFR_WY_BInfo.ModeOfPayment" RepeatDirection="Horizontal">
                                <asp:ListItem>LC00</asp:ListItem>
                                <asp:ListItem>LC01</asp:ListItem>
                                <asp:ListItem>LC02</asp:ListItem>
                                <asp:ListItem>LC03</asp:ListItem>
                                <asp:ListItem>LC45</asp:ListItem>
                                <asp:ListItem>TT00</asp:ListItem>
                                <asp:ListItem>Y203</asp:ListItem>
                                <asp:ListItem>Y204</asp:ListItem>
                                <asp:ListItem>Y205</asp:ListItem>
                                <asp:ListItem>Y206</asp:ListItem>
                                <asp:ListItem>Y208</asp:ListItem>
                                <asp:ListItem>Y209</asp:ListItem>
                                <asp:ListItem>Y210</asp:ListItem>
                                <asp:ListItem>Y211</asp:ListItem>
                                <asp:ListItem>Y212</asp:ListItem>
                                <asp:ListItem>Y214</asp:ListItem>
                                <asp:ListItem>Y217</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="54">
                            <aspxform:XTextBox id="XTextBox131" runat="server" XDataBind="OFR_WY_BInfo.ModeOfPayment_Remark" HiddenInput="False" Min="0" Max="0" width="52px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_WY_AlternateMachineRequirment.Type =="" || OFR_WY_AlternateMachineRequirment.Type=="研发备机"|| OFR_WY_AlternateMachineRequirment.Type=="生产备机"|| OFR_WY_AlternateMachineRequirment.Type=="研发备机,生产备机"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel194" runat="server" text="走货方式:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="296">
                            <aspxform:XRadioButtonList id="XRadioButtonList53" runat="server" XDataBind="OFR_WY_BInfo.GoTheWayGoods" RepeatDirection="Horizontal">
                                <asp:ListItem>CBU</asp:ListItem>
                                <asp:ListItem>TUNER_SKD</asp:ListItem>
                                <asp:ListItem>SKD</asp:ListItem>
                                <asp:ListItem>CKD</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="865">
                            <aspxform:XTextBox id="XTextBox139" runat="server" XDataBind="OFR_WY_BInfo.GoTheWayGoods_Remark" HiddenInput="False" Min="0" Max="0" width="800px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
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
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="OFR_WY_BInfo.ModeOfDelivery" RepeatDirection="Horizontal">
                                <asp:ListItem>一次性出货</asp:ListItem>
                                <asp:ListItem>分批次出货要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel25" runat="server" text="出货日期:" HiddenExpress='OFR_WY_BInfo.ModeOfDelivery !="一次性出货"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="215">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OFR_WY_BInfo.ShipmentDate" HiddenExpress='OFR_WY_BInfo.ModeOfDelivery !="一次性出货"' Width="170px" CssClass="TextBox" ReadOnly="True" XType="datetime" onchange="javascript:XFormOnChange(this);" XSubType="date"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="82" align="right">
                            <aspxform:XLabel id="XLabel26" runat="server" text="柜型:" HiddenExpress='OFR_WY_BInfo.ModeOfDelivery !="一次性出货"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="562">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="OFR_WY_BInfo.CabinetType_Only" HiddenExpress='OFR_WY_BInfo.ModeOfDelivery !="一次性出货"' DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"></span></span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" datamap="Bath->OFR_WY_Delivery.Bath;DeliveryDate->OFR_WY_Delivery.DeliveryDate;Amount->OFR_WY_Delivery.Amount;CabinetType->OFR_WY_Delivery.CabinetType;Remark->OFR_WY_Delivery.Remark" xdatasource="TableName:OFR_WY_Delivery;Filter:TaskID->OFR_WY_Applicant.OrderChangeID" dynamicarea="1,1" hiddenexpress='OFR_WY_BInfo.ModeOfDelivery !="分批次出货要求"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="29">
                            <aspxform:XLabel id="XLabel77" runat="server" Font-Bold="True" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="148" align="center">
                            <aspxform:XLabel id="XLabel78" runat="server" Font-Bold="True" text="批次" Width="40px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="195" align="center">
                            <aspxform:XLabel id="XLabel80" runat="server" Font-Bold="True" text="交期"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="center">
                            <aspxform:XLabel id="XLabel135" runat="server" Font-Bold="True" text="数量" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="218" align="center">
                            <aspxform:XLabel id="XLabel327" runat="server" Font-Bold="True" text="柜型"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="562" align="center">
                            <aspxform:XLabel id="XLabel331" runat="server" Font-Bold="True" text="备注"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="21">
                            <aspxform:XGridLineNo id="XGridLineNo6" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="OFR_WY_Delivery.Bath" HiddenInput="False" Min="0" Max="0" width="139px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox164" runat="server" XDataBind="OFR_WY_Delivery.DeliveryDate" HiddenInput="False" Min="0" Max="0" width="187px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox165" runat="server" XDataBind="OFR_WY_Delivery.Amount" HiddenInput="False" Min="0" Max="0" width="75px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox166" runat="server" XDataBind="OFR_WY_Delivery.CabinetType" HiddenInput="False" Min="0" Max="0" width="204px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox168" runat="server" XDataBind="OFR_WY_Delivery.Remark" HiddenInput="False" Min="0" Max="0" width="530px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton6" runat="server" Text="添加批次" TableName="OFR_WY_Delivery" PrintOut="False"></aspxform:XAddBlockButton>
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
                            <aspxform:XLabel id="XLabel106" runat="server" Font-Bold="True" Font-Size="Small" text="产品要求信息" ForeColor="Navy"></aspxform:XLabel>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" datamap="Remark->OFR_WY_ProductRequirementInfo_Remark.Remark" xdatasource="TableName:OFR_WY_ProductRequirementInfo_Remark;Filter:TaskID->OFR_WY_Applicant.OrderChangeID" dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="52" align="center">
                            <aspxform:XLabel id="XLabel122" runat="server" text="备注"></aspxform:XLabel>
                            <aspxform:XGridLineNo id="XGridLineNo5" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="10px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1191">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox49" runat="server" XDataBind="OFR_WY_ProductRequirementInfo_Remark.Remark" HiddenInput="False" Min="0" Max="0" width="1150px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="21">
                        </td>
                        <td align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton5" runat="server" Text="添加" TableName="OFR_WY_ProductRequirementInfo_Remark" PrintOut="False"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel59" runat="server" Font-Bold="True" Font-Size="Small" text="认证及专利要求" ForeColor="Navy"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator34" runat="server" DisableExpress='OFR_WY_BInfo.ThreePatent ==""' ValidationGroup="开始" ControlToValidate="XTextBox72" ErrorMessage="您勾选了第三方专利要求,请填写申请原因" Display="None">申请原因</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator73" runat="server" DisableExpress='OFR_WY_BInfo.NewCertificationRequirements ==""' ValidationGroup="开始" ControlToValidate="XRadioButtonList18" ErrorMessage="您选择了认证选项，请选择要求说明。" Display="None">认证要求说明</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator74" runat="server" DisableExpress='OFR_WY_BInfo.ThreePatent ==""' ValidationGroup="开始" ControlToValidate="XRadioButtonList49" ErrorMessage="您选择了专利选项，请选择要求说明。" Display="None">第三方要求说明</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator75" runat="server" DisableExpress='OFR_WY_BInfo.NewCertificationRequirements !="其它"' ValidationGroup="开始" ControlToValidate="XTextBox118" ErrorMessage="您认证选项选择了其他，请填写内容" Display="None">认证选项其他</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator76" runat="server" DisableExpress='OFR_WY_BInfo.CentificationRequirements !="其它"' ValidationGroup="开始" ControlToValidate="XTextBox119" ErrorMessage="您要求说明选择了其他，请填写内容" Display="None">认证要求说明其他</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator77" runat="server" DisableExpress='OFR_WY_BInfo.ThreePatent !="其它"' ValidationGroup="开始" ControlToValidate="XTextBox71" ErrorMessage="您认证选项选择了其他，请填写内容" Display="None">专利选项其他</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator78" runat="server" DisableExpress='OFR_WY_BInfo.ThreePatentRequirements  !="其它"' ValidationGroup="开始" ControlToValidate="XTextBox105" ErrorMessage="您要求说明选择了其他，请填写内容" Display="None">专利要求说明其他</aspxform:XRequiredFieldValidator>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="93" align="right">
                            <aspxform:XLabel id="XLabel197" runat="server" text="认证要求:" Width="56px" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="51">
                            <aspxform:XLabel id="XLabel198" runat="server" text="认证选项" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XCheckBoxList id="XCheckBoxList10" runat="server" XDataBind="OFR_WY_BInfo.NewCertificationRequirements" RepeatDirection="Horizontal">
                                <asp:ListItem>CE认证</asp:ListItem>
                                <asp:ListItem>CE报备</asp:ListItem>
                                <asp:ListItem>HKSI</asp:ListItem>
                                <asp:ListItem>FCC</asp:ListItem>
                                <asp:ListItem>SASO</asp:ListItem>
                                <asp:ListItem>HDMI</asp:ListItem>
                                <asp:ListItem>Dolby</asp:ListItem>
                                <asp:ListItem>MEPS</asp:ListItem>
                                <asp:ListItem>UL</asp:ListItem>
                                <asp:ListItem>ERP</asp:ListItem>
                                <asp:ListItem>IC</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox id="XTextBox118" runat="server" XDataBind="OFR_WY_BInfo.NewCertificationRequirements_Remark" HiddenInput="False" Min="0" Max="0" width="455px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel199" runat="server" text="要求说明" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="283">
                            <aspxform:XRadioButtonList id="XRadioButtonList18" runat="server" XDataBind="OFR_WY_BInfo.CentificationRequirements" RepeatDirection="Horizontal">
                                <asp:ListItem>自我宣称无需报告</asp:ListItem>
                                <asp:ListItem>需我司提供报告</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="333">
                            <aspxform:XTextBox id="XTextBox119" runat="server" XDataBind="OFR_WY_BInfo.CentificationRequirements_Other" HiddenInput="False" Min="0" Max="0" width="200px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="53" align="right">
                            <aspxform:XLabel id="XLabel200" runat="server" text="说明:" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="417">
                            <aspxform:XTextBox id="XTextBox126" runat="server" XDataBind="OFR_WY_BInfo.CentificationRequirements_Remark" HiddenInput="False" Min="0" Max="0" width="400px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="93" align="right">
                            <aspxform:XLabel id="XLabel143" runat="server" text="第三方专利要求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="51">
                            <aspxform:XLabel id="XLabel144" runat="server" text="专利选项" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XCheckBoxList id="XCheckBoxList2" runat="server" XDataBind="OFR_WY_BInfo.ThreePatent" Width="672px" RepeatDirection="Horizontal">
                                <asp:ListItem>AC-3</asp:ListItem>
                                <asp:ListItem>HDMI(带HDCP)</asp:ListItem>
                                <asp:ListItem>HDMI(不带HDCP)</asp:ListItem>
                                <asp:ListItem>S&amp;T MHEG-5 REDKEY</asp:ListItem>
                                <asp:ListItem>DD+</asp:ListItem>
                                <asp:ListItem>Microvision</asp:ListItem>
                                <asp:ListItem>CI+</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="98">
                            <aspxform:XTextBox id="XTextBox71" runat="server" XDataBind="OFR_WY_BInfo.ThreePatent_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="90px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" ValueToDisplayText Value></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="58" align="right">
                            <aspxform:XLabel id="XLabel145" runat="server" text="申请原因:"></aspxform:XLabel>
                        </td>
                        <td width="255">
                            <aspxform:XTextBox id="XTextBox72" runat="server" XDataBind="OFR_WY_BInfo.ThreePatent_Reason" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="240px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" ValueToDisplayText Value></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel146" runat="server" text="要求说明" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="283">
                            <aspxform:XRadioButtonList id="XRadioButtonList49" runat="server" XDataBind="OFR_WY_BInfo.ThreePatentRequirements" RepeatDirection="Horizontal">
                                <asp:ListItem>客户做专利认证</asp:ListItem>
                                <asp:ListItem>需我司提供报告</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" width="390">
                            <aspxform:XTextBox id="XTextBox105" runat="server" XDataBind="OFR_WY_BInfo.ThreePatentRequirements_Other" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="358px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" ValueToDisplayText Value></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XLabel id="XLabel150" runat="server" text="说明:" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox106" runat="server" XDataBind="OFR_WY_BInfo.ThreePatentRequirements_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="240px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" ValueToDisplayText Value></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel5" runat="server" Font-Bold="True" Font-Size="Small" text="备机要求" ForeColor="Navy"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="221">
                            <aspxform:XCheckBoxList id="XCheckBoxList7" runat="server" XDataBind="OFR_WY_AlternateMachineRequirment.Type" RepeatDirection="Horizontal">
                                <asp:ListItem>认证机器</asp:ListItem>
                                <asp:ListItem>研发备机</asp:ListItem>
                                <asp:ListItem>生产备机</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="930">
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" HiddenExpress="1" DataMap="Type->OFR_WY_AlternateMachineRequirment.Type;CertificationMachine->OFR_WY_AlternateMachineRequirment.CertificationMachine;CertificationMachine_Reason->OFR_WY_AlternateMachineRequirment.CertificationMachine_Reason;RDMachine->OFR_WY_AlternateMachineRequirment.RDMachine;RDMachine_Reason->OFR_WY_AlternateMachineRequirment.RDMachine_Reason;ProcuctMachine->OFR_WY_AlternateMachineRequirment.ProcuctMachine;ProcuctMachine_Reason->OFR_WY_AlternateMachineRequirment.ProcuctMachine_Reason" XDataSource="TableName:OFR_WY_AlternateMachineRequirment;Filter:TaskID->OFR_WY_Applicant.OrderChangeID;BufferType:RuntimeUpdate" ValueColumn="TaskID" DisplayColumn="TaskID">
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
                                <aspxform:XLabel id="XLabel6" runat="server" Font-Bold="True" text="备机类型"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="748">
                            <div align="center">
                                <aspxform:XLabel id="XLabel7" runat="server" Font-Bold="True" text="整机数量/半成品&amp;数量"></aspxform:XLabel>
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
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_WY_AlternateMachineRequirment.Type =="" || OFR_WY_AlternateMachineRequirment.Type=="研发备机"|| OFR_WY_AlternateMachineRequirment.Type=="生产备机"|| OFR_WY_AlternateMachineRequirment.Type=="研发备机,生产备机"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="center">
                            <div align="center">
                                <aspxform:XLabel id="XLabel9" runat="server" text="认证机器"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="748">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="OFR_WY_AlternateMachineRequirment.CertificationMachine" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="650px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="403">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="OFR_WY_AlternateMachineRequirment.CertificationMachine_Reason" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="380px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_WY_AlternateMachineRequirment.Type =="" || OFR_WY_AlternateMachineRequirment.Type=="认证机器"|| OFR_WY_AlternateMachineRequirment.Type=="生产备机"|| OFR_WY_AlternateMachineRequirment.Type=="认证机器,生产备机"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="center">
                            <aspxform:XLabel id="XLabel10" runat="server" text="研发备机"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="748">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="OFR_WY_AlternateMachineRequirment.RDMachine" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="650px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="403">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="OFR_WY_AlternateMachineRequirment.RDMachine_Reason" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="380px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_WY_AlternateMachineRequirment.Type =="" || OFR_WY_AlternateMachineRequirment.Type=="认证机器"|| OFR_WY_AlternateMachineRequirment.Type=="研发备机"|| OFR_WY_AlternateMachineRequirment.Type=="认证机器,研发备机"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89">
                            <div align="center">
                                <aspxform:XLabel id="XLabel12" runat="server" text="生产备机"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="748">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="OFR_WY_AlternateMachineRequirment.ProcuctMachine" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="650px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="403">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="OFR_WY_AlternateMachineRequirment.ProcuctMachine_Reason" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="380px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel124" runat="server" Font-Bold="True" Font-Size="Small" text="配件和客户化及序列号要求信息" ForeColor="Navy"></aspxform:XLabel>
                            <font color="red">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" HiddenExpress="1" Width="75px" DataMap="Battery_Remark->OFR_WY_PartsRequest.Battery_Remark;RemoteControl_PurchaseAppoint->OFR_WY_PartsRequest.RemoteControl_PurchaseAppoint;Type_Other->OFR_WY_PartsRequest.Type_Other;Specification_OtherRemark->OFR_WY_PartsRequest.Specification_OtherRemark;AVCable->OFR_WY_PartsRequest.AVCable;Type_YKQ->OFR_WY_PartsRequest.Type_YKQ;Type_Otherline->OFR_WY_PartsRequest.Type_Otherline;Type_AV->OFR_WY_PartsRequest.Type_AV;Specification_Language->OFR_WY_PartsRequest.Specification_Language;RemoteControl_PurchaseRemark->OFR_WY_PartsRequest.RemoteControl_PurchaseRemark;Specification_Class->OFR_WY_PartsRequest.Specification_Class;Other_TieZhi->OFR_WY_PartsRequest.Other_TieZhi;SCARTCable->OFR_WY_PartsRequest.SCARTCable;Specification_Other->OFR_WY_PartsRequest.Specification_Other;Battery->OFR_WY_PartsRequest.Battery;Type_HDMI->OFR_WY_PartsRequest.Type_HDMI;AVCable_Remark->OFR_WY_PartsRequest.AVCable_Remark;Other_TieZhi_Position->OFR_WY_PartsRequest.Other_TieZhi_Position;OtherCable->OFR_WY_PartsRequest.OtherCable;Other_TieZhi_Use->OFR_WY_PartsRequest.Other_TieZhi_Use;SCARTCable_Remark->OFR_WY_PartsRequest.SCARTCable_Remark;YPbPrCable->OFR_WY_PartsRequest.YPbPrCable;Other_SinglePage->OFR_WY_PartsRequest.Other_SinglePage;Other_WarrantyCard->OFR_WY_PartsRequest.Other_WarrantyCard;Type_YPbPr->OFR_WY_PartsRequest.Type_YPbPr;Other_Remark->OFR_WY_PartsRequest.Other_Remark;Type_Battery->OFR_WY_PartsRequest.Type_Battery;OtherCable_Remark->OFR_WY_PartsRequest.OtherCable_Remark;YPbPrCable_Remark->OFR_WY_PartsRequest.YPbPrCable_Remark;Type_SCART->OFR_WY_PartsRequest.Type_SCART;RemoteControl_Purchase->OFR_WY_PartsRequest.RemoteControl_Purchase;Type_Specification->OFR_WY_PartsRequest.Type_Specification;HDMICable_Remark->OFR_WY_PartsRequest.HDMICable_Remark;HDMICable->OFR_WY_PartsRequest.HDMICable" XDataSource="TableName:OFR_WY_PartsRequest;Filter:TaskID->OFR_WY_Applicant.OrderChangeID;BufferType:RuntimeUpdate" ValueColumn="TaskID" DisplayColumn="TaskID" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" HiddenExpress="1" DataMap="SurfaceShellSilk->OFR_WY_CustomerRequirement.SurfaceShellSilk;TieZhi->OFR_WY_CustomerRequirement.TieZhi;CustomerPurchaseMaterial->OFR_WY_CustomerRequirement.CustomerPurchaseMaterial;UppeCover_Remark->OFR_WY_CustomerRequirement.UppeCover_Remark;ColorBox_Remark->OFR_WY_CustomerRequirement.ColorBox_Remark;Color->OFR_WY_CustomerRequirement.Color;TieZhi_Remark->OFR_WY_CustomerRequirement.TieZhi_Remark;BackSilk->OFR_WY_CustomerRequirement.BackSilk;SurfaceShellSilk_Remark->OFR_WY_CustomerRequirement.SurfaceShellSilk_Remark;Carton->OFR_WY_CustomerRequirement.Carton;ColorBox->OFR_WY_CustomerRequirement.ColorBox;Carton_Remark->OFR_WY_CustomerRequirement.Carton_Remark;ColorButton->OFR_WY_CustomerRequirement.ColorButton;Other->OFR_WY_CustomerRequirement.Other;BackSilk_Remark->OFR_WY_CustomerRequirement.BackSilk_Remark;Color_Remark->OFR_WY_CustomerRequirement.Color_Remark;MyPurchaseMaterial->OFR_WY_CustomerRequirement.MyPurchaseMaterial;UppeCover->OFR_WY_CustomerRequirement.UppeCover;ColorButton_Remark->OFR_WY_CustomerRequirement.ColorButton_Remark" XDataSource="TableName:OFR_WY_CustomerRequirement;Filter:TaskID->OFR_WY_Applicant.OrderChangeID;BufferType:RuntimeUpdate" ValueColumn="TaskID" DisplayColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XDropDownList id="XDropDownList6" runat="server" HiddenExpress="1" DataMap="MACAdd_StickerRemark->OFR_WY_SerialNumberRequirement.MACAdd_StickerRemark;MACAdd_PasteMethod->OFR_WY_SerialNumberRequirement.MACAdd_PasteMethod;MACAdd_End->OFR_WY_SerialNumberRequirement.MACAdd_End;SerialNumber_Start->OFR_WY_SerialNumberRequirement.SerialNumber_Start;SerialNumber_PasteMethod->OFR_WY_SerialNumberRequirement.SerialNumber_PasteMethod;SerialNumber_StickerRemark->OFR_WY_SerialNumberRequirement.SerialNumber_StickerRemark;SerialNumber_End->OFR_WY_SerialNumberRequirement.SerialNumber_End;Type_MAC->OFR_WY_SerialNumberRequirement.Type_MAC;MACAdd_PasteMethodRemark->OFR_WY_SerialNumberRequirement.MACAdd_PasteMethodRemark;SerialNumber_Sticker->OFR_WY_SerialNumberRequirement.SerialNumber_Sticker;Type_SerialNumber->OFR_WY_SerialNumberRequirement.Type_SerialNumber;MACAdd_Sticker->OFR_WY_SerialNumberRequirement.MACAdd_Sticker;SerialNumber_PasteMethodRemark->OFR_WY_SerialNumberRequirement.SerialNumber_PasteMethodRemark;Type_Other->OFR_WY_SerialNumberRequirement.Type_Other;Other->OFR_WY_SerialNumberRequirement.Other;MACAdd_Start->OFR_WY_SerialNumberRequirement.MACAdd_Start;Remark->OFR_WY_SerialNumberRequirement.Remark" XDataSource="TableName:OFR_WY_SerialNumberRequirement;Filter:TaskID->OFR_WY_Applicant.OrderChangeID;BufferType:RuntimeUpdate" ValueColumn="TaskID" DisplayColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator35" runat="server" DisableExpress="OFR_WY_PartsRequest.Type_Specification == 0 " ValidationGroup="开始" ControlToValidate="XTextBox40" ErrorMessage="您勾选了说明书,请填写说明书语言" Display="None">说明书语言</aspxform:XRequiredFieldValidator>
                            </font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td height="20" valign="middle" width="89" align="center">
                            <aspxform:XLabel id="XLabel20" runat="server" Font-Bold="True" Font-Size="X-Small" text="配件要求" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                        <td width="1154">
                            <aspxform:XCheckBox id="XCheckBox6" runat="server" XDataBind="OFR_WY_PartsRequest.Type_AV" Text="AV线"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox9" runat="server" XDataBind="OFR_WY_PartsRequest.Type_HDMI" Text="HDMI线"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox10" runat="server" XDataBind="OFR_WY_PartsRequest.Type_YPbPr" Text="YPbPr线"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox11" runat="server" XDataBind="OFR_WY_PartsRequest.Type_SCART" Text="SCART线"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox13" runat="server" XDataBind="OFR_WY_PartsRequest.Type_Otherline" Text="其他配件"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox14" runat="server" XDataBind="OFR_WY_PartsRequest.Type_YKQ" Text="遥控器"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox15" runat="server" XDataBind="OFR_WY_PartsRequest.Type_Battery" Text="电池"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox7" runat="server" XDataBind="OFR_WY_PartsRequest.Type_Specification" Text="说明书"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox16" runat="server" XDataBind="OFR_WY_PartsRequest.Type_Other" Text="其它(保修卡、单页和贴纸)"></aspxform:XCheckBox>
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
                                <aspxform:XLabel id="XLabel16" runat="server" Font-Bold="True" text="配件名称"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XLabel id="XLabel17" runat="server" Font-Bold="True" text="规格说明"></aspxform:XLabel>
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
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_WY_PartsRequest.Type_AV ==0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="center">
                            <div align="center">
                                <aspxform:XLabel id="XLabel19" runat="server" text="AV线"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="OFR_WY_PartsRequest.AVCable" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="800px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="OFR_WY_PartsRequest.AVCable_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="300px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_WY_PartsRequest.Type_HDMI == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="center">
                            <div align="center">
                                <aspxform:XLabel id="XLabel21" runat="server" text="HDMI线"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="OFR_WY_PartsRequest.HDMICable" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="800px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="OFR_WY_PartsRequest.HDMICable_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="300px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_WY_PartsRequest.Type_YPbPr == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="center">
                            <div align="center">
                                <aspxform:XLabel id="XLabel22" runat="server" text="YPbPr线"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="OFR_WY_PartsRequest.YPbPrCable" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="800px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="OFR_WY_PartsRequest.YPbPrCable_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="300px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_WY_PartsRequest.Type_SCART == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="center">
                            <div align="center">
                                <aspxform:XLabel id="XLabel151" runat="server" text="SCART线"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox120" runat="server" XDataBind="OFR_WY_PartsRequest.SCARTCable" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="800px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox121" runat="server" XDataBind="OFR_WY_PartsRequest.SCARTCable_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="300px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_WY_PartsRequest.Type_Otherline == 0 ">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="center">
                            <div align="center">
                                <aspxform:XLabel id="XLabel23" runat="server" text="其他配件"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="832">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="OFR_WY_PartsRequest.OtherCable" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="800px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="OFR_WY_PartsRequest.OtherCable_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="300px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_WY_PartsRequest.Type_YKQ  == 0 ">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="center">
                            <aspxform:XLabel id="XLabel24" runat="server" text="遥控器"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="248">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="OFR_WY_PartsRequest.RemoteControl_Purchase" Width="236px" RepeatDirection="Horizontal">
                                <asp:ListItem>我司采购</asp:ListItem>
                                <asp:ListItem>客户提供</asp:ListItem>
                                <asp:ListItem>客户指定厂家</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="153">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox34" runat="server" XDataBind="OFR_WY_PartsRequest.RemoteControl_PurchaseAppoint" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="144px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="22px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="746">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox133" runat="server" XDataBind="OFR_WY_PartsRequest.RemoteControl_PurchaseRemark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="730px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_WY_PartsRequest.Type_Battery == 0 ">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="center">
                            <aspxform:XLabel id="XLabel57" runat="server" text="电池"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="248">
                            <aspxform:XRadioButtonList id="XRadioButtonList11" runat="server" XDataBind="OFR_WY_PartsRequest.Battery" RepeatDirection="Horizontal">
                                <asp:ListItem>我司采购</asp:ListItem>
                                <asp:ListItem>客户提供</asp:ListItem>
                                <asp:ListItem>无需电池</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="903">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox12" runat="server" XDataBind="OFR_WY_PartsRequest.Battery_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="605px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="17px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_WY_PartsRequest.Type_Specification == 0 ">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="center">
                            <aspxform:XLabel id="XLabel110" runat="server" text="说明书"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="118">
                            <aspxform:XRadioButtonList id="XRadioButtonList51" runat="server" XDataBind="OFR_WY_PartsRequest.Specification_Class" RepeatDirection="Horizontal">
                                <asp:ListItem>折页</asp:ListItem>
                                <asp:ListItem>小册子</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="127" align="right">
                            <aspxform:XLabel id="XLabel111" runat="server" text="说明书语言"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="225">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox40" runat="server" XDataBind="OFR_WY_PartsRequest.Specification_Language" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="197px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="24px" TextMode="MultiLine" ValueToDisplayText Value></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="178" align="right">
                            <aspxform:XCheckBoxList id="XCheckBoxList11" runat="server" XDataBind="OFR_WY_PartsRequest.Specification_Other" RepeatDirection="Horizontal">
                                <asp:ListItem>多语言分开印刷</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="493">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox41" runat="server" XDataBind="OFR_WY_PartsRequest.Specification_OtherRemark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="400px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_WY_PartsRequest.Type_Other == 0 ">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="89" align="center">
                            <aspxform:XLabel id="XLabel29" runat="server" text="其它" Width="29px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="66">
                            <aspxform:XCheckBox id="XCheckBox8" runat="server" XDataBind="OFR_WY_PartsRequest.Other_WarrantyCard" Text="保修卡"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="96">
                            <aspxform:XCheckBox id="XCheckBox12" runat="server" XDataBind="OFR_WY_PartsRequest.Other_SinglePage" Text="单页"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="73">
                            <aspxform:XCheckBox id="XCheckBox21" runat="server" XDataBind="OFR_WY_PartsRequest.Other_TieZhi" Text="贴纸"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="85">
                            <aspxform:XLabel id="XLabel13" runat="server" text="用量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="90">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox16" runat="server" XDataBind="OFR_WY_PartsRequest.Other_TieZhi_Use" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="88px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="52">
                            <aspxform:XLabel id="XLabel56" runat="server" text="粘贴位置" Width="50px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="178">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox39" runat="server" XDataBind="OFR_WY_PartsRequest.Other_TieZhi_Position" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="145px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="36">
                            <aspxform:XLabel id="XLabel69" runat="server" text="备注"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="455">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox35" runat="server" XDataBind="OFR_WY_PartsRequest.Other_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="165px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" height="20" valign="middle" width="91" colspan="2">
                            <aspxform:XLabel id="XLabel30" runat="server" Font-Bold="True" Font-Size="X-Small" text="客户化要求" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1155">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList3" ErrorMessage="请填写客户化要求中的面壳颜色!" Display="None">面壳颜色</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" DisableExpress='OFR_WY_CustomerRequirement.Color !="其它"' ValidationGroup="开始" ControlToValidate="XTextBox81" ErrorMessage="请填写客户化要求中的面壳颜色!" Display="None">面壳颜色其他</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList24" ErrorMessage="请填写客户化要求中的面壳丝印!" Display="None">面壳丝印</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" DisableExpress='OFR_WY_CustomerRequirement.SurfaceShellSilk !="客户要求"' ValidationGroup="开始" ControlToValidate="XTextBox193" ErrorMessage="请填写客户化要求中的面壳丝印!" Display="None">面壳丝印客户要求</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList25" ErrorMessage="请填写客户化要求中的背板丝印!" Display="None">背板丝印</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" DisableExpress='OFR_WY_CustomerRequirement.BackSilk !="客户要求"' ValidationGroup="开始" ControlToValidate="XTextBox123" ErrorMessage="请填写客户化要求中的背板丝印客户要求!" Display="None">背板丝印客户要求</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList27" ErrorMessage="请填写客户化要求中彩盒!" Display="None">彩盒</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator24" runat="server" DisableExpress='OFR_WY_CustomerRequirement.ColorBox !="客户要求"' ValidationGroup="开始" ControlToValidate="XTextBox191" ErrorMessage="请填写客户化要求中彩盒!" Display="None">彩盒客户要求</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator60" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList28" ErrorMessage="请填写客户化要求中外箱!" Display="None">外箱</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator61" runat="server" DisableExpress='OFR_WY_CustomerRequirement.Carton !="客户要求"' ValidationGroup="开始" ControlToValidate="XTextBox192" ErrorMessage="请填写客户化要求中彩盒的客户要求!" Display="None">外箱客户要求</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator67" runat="server" DisableExpress='OFR_WY_CustomerRequirement.ColorButton !="特殊"' ValidationGroup="开始" ControlToValidate="XTextBox42" ErrorMessage="请选择了客户化要求中按键为特殊,请填写内容!" Display="None">按键特殊</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator68" runat="server" DisableExpress='OFR_WY_CustomerRequirement.UppeCover !="客户要求"' ValidationGroup="开始" ControlToValidate="XTextBox43" ErrorMessage="请填写上盖工艺的客户要求！" Display="None">上盖工艺客户要求</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="88" align="center">
                            <aspxform:XLabel id="XLabel123" runat="server" text="面壳颜色" Width="51px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="193">
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="OFR_WY_CustomerRequirement.Color" RepeatDirection="Horizontal">
                                <asp:ListItem>白色</asp:ListItem>
                                <asp:ListItem>黑色</asp:ListItem>
                                <asp:ListItem>银色</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="100">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox81" runat="server" XDataBind="OFR_WY_CustomerRequirement.Color_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="88px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="69" align="center">
                            <aspxform:XLabel id="XLabel125" runat="server" text="面壳丝印"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <aspxform:XRadioButtonList id="XRadioButtonList24" runat="server" XDataBind="OFR_WY_CustomerRequirement.SurfaceShellSilk" RepeatDirection="Horizontal">
                                <asp:ListItem>中性</asp:ListItem>
                                <asp:ListItem>客户要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="117">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox193" runat="server" XDataBind="OFR_WY_CustomerRequirement.SurfaceShellSilk_Remark" HiddenInput="False" Min="0" Max="0" width="97px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="17px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="59" align="center">
                            <aspxform:XLabel id="XLabel126" runat="server" text="背板丝印"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="125">
                            <aspxform:XRadioButtonList id="XRadioButtonList25" runat="server" XDataBind="OFR_WY_CustomerRequirement.BackSilk" RepeatDirection="Horizontal">
                                <asp:ListItem>中性</asp:ListItem>
                                <asp:ListItem>客户要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="305">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox123" runat="server" XDataBind="OFR_WY_CustomerRequirement.BackSilk_Remark" HiddenInput="False" Min="0" Max="0" width="275px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="21px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="88" align="center">
                            <aspxform:XLabel id="XLabel112" runat="server" text="按键"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="193">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="OFR_WY_CustomerRequirement.ColorButton" RepeatDirection="Horizontal">
                                <asp:ListItem>白色</asp:ListItem>
                                <asp:ListItem>黑色</asp:ListItem>
                                <asp:ListItem>银色</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="100">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox42" runat="server" XDataBind="OFR_WY_CustomerRequirement.ColorButton_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="87px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="69" align="center">
                            <aspxform:XLabel id="XLabel113" runat="server" text="上盖工艺"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="OFR_WY_CustomerRequirement.UppeCover" RepeatDirection="Horizontal">
                                <asp:ListItem>覆膜</asp:ListItem>
                                <asp:ListItem>烤漆</asp:ListItem>
                                <asp:ListItem>客户要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="117">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox43" runat="server" XDataBind="OFR_WY_CustomerRequirement.UppeCover_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="115px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="59" align="center">
                            <aspxform:XLabel id="XLabel114" runat="server" text="易碎贴纸"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="194">
                            <aspxform:XRadioButtonList id="XRadioButtonList23" runat="server" XDataBind="OFR_WY_CustomerRequirement.TieZhi" RepeatDirection="Horizontal">
                                <asp:ListItem>我司通用</asp:ListItem>
                                <asp:ListItem>无需</asp:ListItem>
                                <asp:ListItem>客户要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="235">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox44" runat="server" XDataBind="OFR_WY_CustomerRequirement.TieZhi_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="216px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="88" align="center">
                            <aspxform:XLabel id="XLabel129" runat="server" text="彩盒"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="164">
                            <aspxform:XRadioButtonList id="XRadioButtonList27" runat="server" XDataBind="OFR_WY_CustomerRequirement.ColorBox" RepeatDirection="Horizontal">
                                <asp:ListItem>白盒</asp:ListItem>
                                <asp:ListItem>无需</asp:ListItem>
                                <asp:ListItem>客户要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="491">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox191" runat="server" XDataBind="OFR_WY_CustomerRequirement.ColorBox_Remark" HiddenInput="False" Min="0" Max="0" width="311px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="24px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="59" align="center">
                            <aspxform:XLabel id="XLabel130" runat="server" text="外箱"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="173">
                            <aspxform:XRadioButtonList id="XRadioButtonList28" runat="server" XDataBind="OFR_WY_CustomerRequirement.Carton" RepeatDirection="Horizontal">
                                <asp:ListItem>白色</asp:ListItem>
                                <asp:ListItem>无需</asp:ListItem>
                                <asp:ListItem>客户要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="256">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox192" runat="server" XDataBind="OFR_WY_CustomerRequirement.Carton_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="233px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="17px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="88" align="center">
                            <aspxform:XLabel id="XLabel58" runat="server" text="其他"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1155">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox83" runat="server" XDataBind="OFR_WY_CustomerRequirement.Other" HiddenInput="False" Min="0" Max="0" width="1100px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28" valign="middle" width="131" align="center">
                            <aspxform:XLabel id="XLabel31" runat="server" text="客户指定采购物料要求"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1112">
                            <aspxform:XCheckBox id="XCheckBox19" runat="server" XDataBind="OFR_WY_CustomerRequirement.CustomerPurchaseMaterial" Text="由我司负责采购的物料"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox20" runat="server" XDataBind="OFR_WY_CustomerRequirement.MyPurchaseMaterial" Text="由客户自行采购的物料"></aspxform:XCheckBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" datamap="MaterialName->OFR_WY_CR_MyCompany.MaterialName;Amount->OFR_WY_CR_MyCompany.Amount;Suppliers->OFR_WY_CR_MyCompany.Suppliers;DeliveryTime->OFR_WY_CR_MyCompany.DeliveryTime" xdatasource="TableName:OFR_WY_CR_MyCompany;Filter:ID->OFR_WY_Applicant.OrderChangeID" dynamicarea="1,1" hiddenexpress="OFR_WY_CustomerRequirement.CustomerPurchaseMaterial !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="35">
                            <aspxform:XLabel id="XLabel36" runat="server" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="310" align="center">
                            <aspxform:XLabel id="XLabel37" runat="server" Font-Bold="True" text="我司采购物料名称"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="center">
                            <aspxform:XLabel id="XLabel38" runat="server" Font-Bold="True" text="数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261" align="center">
                            <aspxform:XLabel id="XLabel39" runat="server" Font-Bold="True" text="指定供应商与联系方式"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="575" colspan="2" align="center">
                            <aspxform:XLabel id="XLabel40" runat="server" Font-Bold="True" text="交货时间与方式"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26">
                            <aspxform:XGridLineNo id="XGridLineNo7" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="OFR_WY_CR_MyCompany.MaterialName" HiddenInput="False" Min="0" Max="0" width="274px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="OFR_WY_CR_MyCompany.Amount" HiddenInput="False" Min="0" Max="0" width="36px" DisableBehavior="ReadOnly" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="OFR_WY_CR_MyCompany.Suppliers" HiddenInput="False" Min="0" Max="0" width="256px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox53" runat="server" XDataBind="OFR_WY_CR_MyCompany.DeliveryTime" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="560px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton7" runat="server" Height="21px" Text="添加物料" UseSubmitBehavior="False" TableName="OFR_WY_CR_MyCompany" PrintOut="False"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" datamap="MaterialName->OFR_WY_CR_Customer.MaterialName;Amount->OFR_WY_CR_Customer.Amount;Suppliers->OFR_WY_CR_Customer.Suppliers;DeliveryTime->OFR_WY_CR_Customer.DeliveryTime" xdatasource="TableName:OFR_WY_CR_Customer;Filter:TaskID->OFR_WY_Applicant.OrderChangeID" dynamicarea="1,1" hiddenexpress="OFR_WY_CustomerRequirement.MyPurchaseMaterial !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="35">
                            <aspxform:XLabel id="XLabel41" runat="server" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="310" align="center">
                            <aspxform:XLabel id="XLabel42" runat="server" Font-Bold="True" text="客户采购物料名称"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="center">
                            <aspxform:XLabel id="XLabel43" runat="server" Font-Bold="True" text="数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261" align="center">
                            <aspxform:XLabel id="XLabel44" runat="server" Font-Bold="True" text="指定供应商与联系方式"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="575" colspan="2" align="center">
                            <aspxform:XLabel id="XLabel45" runat="server" Font-Bold="True" text="交货时间与方式"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22">
                            <aspxform:XGridLineNo id="XGridLineNo8" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="OFR_WY_CR_Customer.MaterialName" HiddenInput="False" Min="0" Max="0" width="277px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="OFR_WY_CR_Customer.Amount" HiddenInput="False" Min="0" Max="0" width="36px" DisableBehavior="ReadOnly" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox56" runat="server" XDataBind="OFR_WY_CR_Customer.Suppliers" HiddenInput="False" Min="0" Max="0" width="253px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox57" runat="server" XDataBind="OFR_WY_CR_Customer.DeliveryTime" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="560px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton8" runat="server" Height="21px" Text="添加物料" UseSubmitBehavior="False" TableName="OFR_WY_CR_Customer" PrintOut="False"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" valign="middle" width="88" align="center">
                            <aspxform:XLabel id="XLabel32" runat="server" Font-Bold="True" Font-Size="X-Small" text="序列号要求" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="194">
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.Type_SerialNumber" Text="序列号"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.Type_MAC" Text="MAC地址"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox5" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.Type_Other" Text="其他"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="114">
                            序列号要求说明：</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="204">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.SerialNumber_ReferenceAtt" Width="120px" Height="30px" XType="file" OnAddButtonClick="XMSNAttachments_AddAttach(this);" AllowAdd="True" NewItemID="_sys_attach_item" StorePathBasicFolder="SystemAttachmentsRoot" StorePathExpress="0" MaximumFileSize="MaximumFileSize"></aspxform:XMSNAttachments>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="634">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox116" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.Remark" HiddenInput="False" Min="0" Max="0" width="569px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_WY_SerialNumberRequirement.Type_SerialNumber == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="64">
                            <aspxform:XLabel id="XLabel47" runat="server" text="序列号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="13" width="52">
                            <aspxform:XLabel id="XLabel51" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox22" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.SerialNumber_Start" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="384px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="50">
                            <aspxform:XLabel id="XLabel345" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox82" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.SerialNumber_End" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="517px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="14">
                            <aspxform:XLabel id="XLabel52" runat="server" text="贴纸数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="127">
                            <aspxform:XRadioButtonList id="XRadioButtonList29" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.SerialNumber_Sticker" RepeatDirection="Horizontal">
                                <asp:ListItem>标准(3张)</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="342">
                            <aspxform:XTextBox id="XTextBox181" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.SerialNumber_StickerRemark" HiddenInput="False" Min="0" Max="0" width="325px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel342" runat="server" text="贴法" Width="28px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="105">
                            <aspxform:XRadioButtonList id="XRadioButtonList15" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.SerialNumber_PasteMethod" RepeatDirection="Horizontal">
                                <asp:ListItem>标准</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="488">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox190" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.SerialNumber_PasteMethodRemark" HiddenInput="False" Min="0" Max="0" width="480px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_WY_SerialNumberRequirement.Type_MAC ==0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="64">
                            <aspxform:XLabel id="XLabel48" runat="server" text="MAC地址"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="52">
                            <aspxform:XLabel id="XLabel152" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox69" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.MACAdd_Start" HiddenInput="False" Min="0" Max="0" Width="210px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="50">
                            <aspxform:XLabel id="XLabel153" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox122" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.MACAdd_End" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="210px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel186" runat="server" text="贴纸数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="127">
                            <aspxform:XRadioButtonList id="XRadioButtonList43" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.MACAdd_Sticker" RepeatDirection="Horizontal">
                                <asp:ListItem>标准(1张)</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="342">
                            <aspxform:XTextBox id="XTextBox124" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.MACAdd_StickerRemark" HiddenInput="False" Min="0" Max="0" width="325px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel187" runat="server" text="贴法" Width="28px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="105">
                            <aspxform:XRadioButtonList id="XRadioButtonList46" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.MACAdd_PasteMethod" RepeatDirection="Horizontal">
                                <asp:ListItem>标准</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="488">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox125" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.MACAdd_PasteMethodRemark" HiddenInput="False" Min="0" Max="0" width="480px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="21px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_WY_SerialNumberRequirement.Type_Other ==0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="64" align="center">
                            <aspxform:XLabel id="XLabel28" runat="server" text="其他"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1179">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox61" runat="server" XDataBind="OFR_WY_SerialNumberRequirement.Other" HiddenInput="False" Min="0" Max="0" width="1100px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="1248" colspan="2">
                            <aspxform:XLabel id="XLabel34" runat="server" Font-Bold="True" Font-Size="Small" text="软件特性要求" ForeColor="Navy"></aspxform:XLabel>
                            <input id="bt1" onclick="Toggle('bt1','div1')" value="隐藏" type="button" />
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
            <div style="VISIBILITY: visible" id="div1" align="center">
                <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="800" align="center">
                                <aspxform:XImageAttachment id="XImageAttachment2" runat="server" XDataBind="OFR_WY_BInfo.SoftRequireImage" BorderWidth="3px" Width="133px" Height="128px" BorderColor="Gainsboro" BorderStyle="Solid" PrintOut="True" MaximumFileSize="MaximumFileSize"></aspxform:XImageAttachment>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="94" align="center">
                                <aspxform:XLabel id="XLabel79" runat="server" text="软件特性说明"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1149">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox15" runat="server" XDataBind="OFR_WY_BInfo.SoftRequireImage_Remark" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="1248" colspan="2">
                            <aspxform:XLabel id="XLabel70" runat="server" Font-Bold="True" Font-Size="Small" text="配置表图片" ForeColor="Navy"></aspxform:XLabel>
                            <input id="bt2" onclick="Toggle('bt2','div2')" value="隐藏" type="button" />
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator53" runat="server" ValidationGroup="BOM设计师(确认)" ControlToValidate="XImageAttachment1" ErrorMessage="请上传配置表图片!" Display="None">配置表图片</aspxform:XRequiredFieldValidator>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" id="div2" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="800" align="center">
                            <aspxform:XImageAttachment id="XImageAttachment1" runat="server" XDataBind="OFR_WY_BInfo.ConfigTablesImage" BorderWidth="3px" Width="133px" Height="128px" BorderColor="Gainsboro" BorderStyle="Solid" PrintOut="True" MaximumFileSize="MaximumFileSize"></aspxform:XImageAttachment>
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
                            <aspxform:XLabel id="XLabel72" runat="server" Font-Bold="True" Font-Size="Small" text="订单评审信息" ForeColor="Navy"></aspxform:XLabel>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" height="27">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="99">
                            <aspxform:XLabel id="XLabel71" runat="server" text="订单评审参考资料"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1144">
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="OFR_WY_BInfo.ReferenceAtt"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="94" align="center">
                            <aspxform:XLabel id="XLabel63" runat="server" text="资料说明"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1149">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox88" runat="server" XDataBind="OFR_WY_BInfo.ReferenceAttRemark" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel73" runat="server" Font-Bold="True" Font-Size="Small" text="整体硬件评审" ForeColor="Black"></aspxform:XLabel>
                            <aspxform:XDropDownList id="XDropDownList8" runat="server" HiddenExpress="1" DataMap="DDR->OFR_WY_Review_HD.DDR;TechnologyReview_Remark->OFR_WY_Review_HD.TechnologyReview_Remark;BOMBPM->OFR_WY_Review_HD.BOMBPM;OrderConfigType->OFR_WY_Review_HD.OrderConfigType;ElectronicsBOM->OFR_WY_Review_HD.ElectronicsBOM;Certication_Remark->OFR_WY_Review_HD.Certication_Remark;SealedMaterial->OFR_WY_Review_HD.SealedMaterial;SemifinishedProducts->OFR_WY_Review_HD.SemifinishedProducts;OtherReview->OFR_WY_Review_HD.OtherReview;SampleMachine->OFR_WY_Review_HD.SampleMachine;SemifinishedProducts_Remark->OFR_WY_Review_HD.SemifinishedProducts_Remark;Certication->OFR_WY_Review_HD.Certication;SplitOrder->OFR_WY_Review_HD.SplitOrder;DDR_Remark->OFR_WY_Review_HD.DDR_Remark;SplitOrder_Remark->OFR_WY_Review_HD.SplitOrder_Remark;TechnologyReview->OFR_WY_Review_HD.TechnologyReview" XDataSource="TableName:OFR_WY_Review_HD;Filter:TaskID->OFR_WY_Applicant.OrderChangeID;BufferType:RuntimeUpdate" ValueColumn="TaskID" DisplayColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel74" runat="server" text="订单配置类型"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XRadioButtonList id="XRadioButtonList16" runat="server" XDataBind="OFR_WY_Review_HD.OrderConfigType" RepeatDirection="Horizontal">
                                <asp:ListItem>A类(翻单)</asp:ListItem>
                                <asp:ListItem>C类(新配置机型)</asp:ListItem>
                                <asp:ListItem>D类(未批量新机芯)</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator26" runat="server" ValidationGroup="产品管理工程师" ControlToValidate="XRadioButtonList16" ErrorMessage="请选择订单配置类型!" Display="None">订单配置类型</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator27" runat="server" ValidationGroup="产品管理工程师" ControlToValidate="XRadioButtonList17" ErrorMessage="请选择清库存安排!" Display="None">清库存安排</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator28" runat="server" DisableExpress='OFR_WY_Review_HD.SemifinishedProducts !="有"' ValidationGroup="产品管理工程师" ControlToValidate="XTextBox68" ErrorMessage="您选择清库存为有,请填写内容!" Display="None">清半成品库存有</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator48" runat="server" ValidationGroup="产品管理工程师" ControlToValidate="XRadioButtonList31" ErrorMessage="请选择整体硬件评审中的工艺评审！" Display="None">工艺评审</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator63" runat="server" ValidationGroup="产品管理工程师" ControlToValidate="XRadioButtonList26" ErrorMessage="请选择整体硬件评审中的认证要求！" Display="None">认证要求</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator29" runat="server" DisableExpress='OFR_WY_Review_HD.OrderConfigType =="A类(翻单)"' ValidationGroup="产品管理工程师" ControlToValidate="XRadioButtonList30" ErrorMessage="请选择拆单生产!" Display="None">拆单生产</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator32" runat="server" DisableExpress='OFR_WY_Review_HD.SplitOrder !="是"' ValidationGroup="产品管理工程师" ControlToValidate="XTextBox27" ErrorMessage="您选择拆单生产为是,请填写内容!" Display="None">拆单生产是</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator65" runat="server" DisableExpress='OFR_WY_Review_HD.OrderConfigType =="A类(翻单)"' ValidationGroup="产品管理工程师" ControlToValidate="XRadioButtonList10" ErrorMessage="请选择DDR/Flash/EEPROM/DEMO/Tuner首次使用!" Display="None">DDR</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator66" runat="server" DisableExpress='OFR_WY_Review_HD.DDR !="是"' ValidationGroup="产品管理工程师" ControlToValidate="XTextBox26" ErrorMessage='您选择"DDR/Flash/EEPROM/DEMO/Tuner首次使用"为是,请填写内容!' Display="None">DDR是</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel75" runat="server" text="清库存安排"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="78">
                            <aspxform:XRadioButtonList id="XRadioButtonList17" runat="server" XDataBind="OFR_WY_Review_HD.SemifinishedProducts" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="194">
                            <aspxform:XTextBox id="XTextBox68" runat="server" XDataBind="OFR_WY_Review_HD.SemifinishedProducts_Remark" HiddenInput="False" Min="0" Max="0" width="138px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="65">
                            <aspxform:XLabel id="XLabel100" runat="server" text="工艺评审"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="107">
                            <aspxform:XRadioButtonList id="XRadioButtonList31" runat="server" XDataBind="OFR_WY_Review_HD.TechnologyReview" RepeatDirection="Horizontal">
                                <asp:ListItem>完成</asp:ListItem>
                                <asp:ListItem>未完成</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="248">
                            <aspxform:XTextBox id="XTextBox73" runat="server" XDataBind="OFR_WY_Review_HD.TechnologyReview_Remark" HiddenInput="False" Min="0" Max="0" width="188px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="59">
                            <div align="left">
                                <aspxform:XLabel id="XLabel85" runat="server" text="认证要求"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="143">
                            <aspxform:XRadioButtonList id="XRadioButtonList26" runat="server" XDataBind="OFR_WY_Review_HD.Certication" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>完成</asp:ListItem>
                                <asp:ListItem>未完成</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="248">
                            <aspxform:XTextBox id="XTextBox70" runat="server" XDataBind="OFR_WY_Review_HD.Certication_Remark" HiddenInput="False" Min="0" Max="0" width="185px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel98" runat="server" text="拆单生产"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="78">
                            <aspxform:XRadioButtonList id="XRadioButtonList30" runat="server" XDataBind="OFR_WY_Review_HD.SplitOrder" RepeatDirection="Horizontal">
                                <asp:ListItem>否</asp:ListItem>
                                <asp:ListItem>是</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="194">
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="OFR_WY_Review_HD.SplitOrder_Remark" HiddenInput="False" Min="0" Max="0" width="185px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="64">
                            <div align="left">
                                <aspxform:XLabel id="XLabel35" runat="server" text="需要样机"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="106">
                            <aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" XDataBind="OFR_WY_Review_HD.SampleMachine" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="310" align="left">
                            <div align="right">
                                <aspxform:XLabel id="XLabel65" runat="server" text="DDR/Flash/EEPROM/DEMO/Tuner首次使用"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79">
                            <aspxform:XRadioButtonList id="XRadioButtonList19" runat="server" XDataBind="OFR_WY_Review_HD.DDR" RepeatDirection="Horizontal">
                                <asp:ListItem>否</asp:ListItem>
                                <asp:ListItem>是</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="312">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="OFR_WY_Review_HD.DDR_Remark" HiddenInput="False" Min="0" Max="0" width="185px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel102" runat="server" text="变更电子流"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="275">
                            <aspxform:XRadioButtonList id="XRadioButtonList32" runat="server" XDataBind="OFR_WY_Review_HD.BOMBPM" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator40" runat="server" ValidationGroup="产品管理工程师" ControlToValidate="XRadioButtonList10" ErrorMessage="请选择整体硬件评审中的是否需要样机！" Display="None">是否需要样机</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator49" runat="server" ValidationGroup="产品管理工程师" ControlToValidate="XRadioButtonList33" ErrorMessage="请选择整体硬件评审中的未封样物料！" Display="None">未封样物料</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="65" align="right">
                            <div align="left">
                                <div align="left">
                                    <div align="left">
                                        <aspxform:XLabel id="XLabel14" runat="server" text="未封样物料"></aspxform:XLabel>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="109" colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList33" runat="server" XDataBind="OFR_WY_Review_HD.SealedMaterial" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="707">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" datamap="BPMNumber->OFR_WY_Review_HD_BOMBPM.BPMNumber;BPMChangeRemark->OFR_WY_Review_HD_BOMBPM.BPMChangeRemark" xdatasource="TableName:OFR_WY_Review_HD_BOMBPM;Filter:TaskID->OFR_WY_Applicant.OrderChangeID" dynamicarea="1,1" hiddenexpress='OFR_WY_Review_HD.BOMBPM !="有"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="30" align="center">
                            <aspxform:XLabel id="XLabel118" runat="server" Font-Bold="True" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="162" align="center">
                            <aspxform:XLabel id="XLabel127" runat="server" Font-Bold="True" text="电子流编号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1048" align="center">
                            <aspxform:XLabel id="XLabel132" runat="server" Font-Bold="True" text="更改内容说明"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XGridLineNo id="XGridLineNo3" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox74" runat="server" XDataBind="OFR_WY_Review_HD_BOMBPM.BPMNumber" HiddenInput="False" Min="0" Max="0" width="140px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox77" runat="server" XDataBind="OFR_WY_Review_HD_BOMBPM.BPMChangeRemark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="1002px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton3" runat="server" Height="21px" Text="添加变更项" UseSubmitBehavior="False" TableName="OFR_WY_Review_HD_BOMBPM" PrintOut="False"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" datamap="MaterialType->OFR_WY_Review_HD_SealedMaterial.MaterialType;MaterialRemark->OFR_WY_Review_HD_SealedMaterial.MaterialRemark;SealedTime->OFR_WY_Review_HD_SealedMaterial.SealedTime;Designer->OFR_WY_Review_HD_SealedMaterial.Designer" xdatasource="TableName:OFR_WY_Review_HD_SealedMaterial;Filter:TaskID->OFR_WY_Applicant.OrderChangeID" dynamicarea="1,1" hiddenexpress='OFR_WY_Review_HD.SealedMaterial !="有"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="16" width="29">
                            <aspxform:XLabel id="XLabel27" runat="server" Font-Bold="True" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="204" align="center">
                            <aspxform:XLabel id="XLabel92" runat="server" Font-Bold="True" text="物料类别"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="709" align="center">
                            <aspxform:XLabel id="XLabel131" runat="server" Font-Bold="True" text="物料说明"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="155" align="center">
                            <aspxform:XLabel id="XLabel133" runat="server" Font-Bold="True" text="预计封样时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="137" align="center">
                            <aspxform:XLabel id="XLabel134" runat="server" Font-Bold="True" text="设计师"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XGridLineNo id="XGridLineNo4" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox67" runat="server" XDataBind="OFR_WY_Review_HD_SealedMaterial.MaterialType" HiddenInput="False" Min="0" Max="0" width="202px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox78" runat="server" XDataBind="OFR_WY_Review_HD_SealedMaterial.MaterialRemark" HiddenInput="False" Min="0" Max="0" width="665px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="OFR_WY_Review_HD_SealedMaterial.SealedTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="center">
                            <aspxform:XTextBox id="XTextBox80" runat="server" XDataBind="OFR_WY_Review_HD_SealedMaterial.Designer" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="100px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator37" runat="server" ValidationGroup="BOM设计师(固化)" ControlToValidate="XTextBox85" ErrorMessage="请填写电子BOM签发！" Display="None">电子BOM签发</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton4" runat="server" Width="105px" Height="21px" Text="添加未封样物料" UseSubmitBehavior="False" TableName="OFR_WY_Review_HD_SealedMaterial" PrintOut="False" OnClientClick="XFormShell.XFormAgent.AppendBlock(this,'OFR_Attachment1_SJ');return false;"></aspxform:XAddBlockButton>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox84" runat="server" XDataBind="OFR_WY_Review_HD.OtherReview" HiddenInput="False" Min="0" Max="0" width="1140px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox85" runat="server" XDataBind="OFR_WY_Review_HD.ElectronicsBOM" HiddenInput="False" Min="0" Max="0" width="1140px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel137" runat="server" Font-Bold="True" Font-Size="Small" text="软件评审" ForeColor="Black"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator38" runat="server" ValidationGroup="软件签单工程师" ControlToValidate="XRadioButtonList34" ErrorMessage="请选择订单软件类型！" Display="None">订单软件类型</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator39" runat="server" ValidationGroup="软件签单工程师" ControlToValidate="XRadioButtonList34" ErrorMessage="请选择说明书更改要求！" Display="None">说明书更改要求</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator52" runat="server" ValidationGroup="软件签单工程师" ControlToValidate="XRadioButtonList8" ErrorMessage="请选择软件评审中的是否需要样机！" Display="None">是否需要样机</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator46" runat="server" DisableExpress='OFR_WY_Review_Software.OrderSoftwareType !="A类(翻单)"' ValidationGroup="软件签单工程师" ControlToValidate="XTextBox60" ErrorMessage="请填写软件评审中的软件编译完成时间！" Display="None">软件编译完成时间</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator55" runat="server" DisableExpress='OFR_WY_Review_Software.OrderSoftwareType !="A类(翻单)"' ValidationGroup="软件签单工程师" ControlToValidate="XTextBox130" ErrorMessage="请填写软件评审中的同订单！" Display="None">同订单</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator56" runat="server" DisableExpress='OFR_WY_Review_Software.OrderSoftwareType =="A类(翻单)" || OFR_WY_Review_Software.OrderSoftwareType ==""' ValidationGroup="软件签单工程师" ControlToValidate="XTextBox59" ErrorMessage="请填写软件评审中的订单软件发布时间！" Display="None">订单软件发布时间</aspxform:XRequiredFieldValidator>
                            <font color="red"></font>
                            <aspxform:XDropDownList id="XDropDownList9" runat="server" HiddenExpress="1" DataMap="OtherReview->OFR_WY_Review_Software.OtherReview;PublishTime->OFR_WY_Review_Software.PublishTime;TestRemoteControl->OFR_WY_Review_Software.TestRemoteControl;SampleMachine->OFR_WY_Review_Software.SampleMachine;NeedThreeData_Remark->OFR_WY_Review_Software.NeedThreeData_Remark;PrintSelect->OFR_WY_Review_Software.PrintSelect;CompileCompleteTime->OFR_WY_Review_Software.CompileCompleteTime;TestRemoteControl_Remark->OFR_WY_Review_Software.TestRemoteControl_Remark;CATest->OFR_WY_Review_Software.CATest;SoftwareState->OFR_WY_Review_Software.SoftwareState;SameOrderNuber->OFR_WY_Review_Software.SameOrderNuber;SpecificationChange_Remark->OFR_WY_Review_Software.SpecificationChange_Remark;SoftwareType->OFR_WY_Review_Software.SoftwareType;NeedThreeData->OFR_WY_Review_Software.NeedThreeData;SpecificationChange->OFR_WY_Review_Software.SpecificationChange;CATest_Remark->OFR_WY_Review_Software.CATest_Remark;OrderSoftwareType->OFR_WY_Review_Software.OrderSoftwareType" XDataSource="TableName:OFR_WY_Review_Software;Filter:TaskID->OFR_WY_Applicant.OrderChangeID;BufferType:RuntimeUpdate" ValueColumn="TaskID" DisplayColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
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
                            <aspxform:XRadioButtonList id="XRadioButtonList34" runat="server" XDataBind="OFR_WY_Review_Software.OrderSoftwareType" RepeatDirection="Horizontal">
                                <asp:ListItem>A类(翻单)</asp:ListItem>
                                <asp:ListItem>C类(软件更改)</asp:ListItem>
                                <asp:ListItem>D类(全新软件)</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="102" align="right">
                            <aspxform:XLabel id="XLabel140" runat="server" text="订单软件发布时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="153">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox59" runat="server" XDataBind="OFR_WY_Review_Software.PublishTime" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="77" align="center">
                            <aspxform:XLabel id="XLabel61" runat="server" text="是否需要样机"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="71">
                            <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="OFR_WY_Review_Software.SampleMachine" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="98" align="right">
                            <aspxform:XLabel id="XLabel141" runat="server" text="软件编译完成时间" HiddenExpress='OFR_WY_Review_Software.OrderSoftwareType =="C类(软件更改)" ||OFR_WY_Review_Software.OrderSoftwareType =="D类(全新软件)"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="169">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox60" runat="server" XDataBind="OFR_WY_Review_Software.CompileCompleteTime" HiddenExpress='OFR_WY_Review_Software.OrderSoftwareType =="C类(软件更改)" ||OFR_WY_Review_Software.OrderSoftwareType =="D类(全新软件)"' HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="44">
                            <aspxform:XLabel id="XLabel62" runat="server" text="同订单" HiddenExpress='OFR_WY_Review_Software.OrderSoftwareType =="C类(软件更改)" ||OFR_WY_Review_Software.OrderSoftwareType =="D类(全新软件)"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="125">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox130" runat="server" XDataBind="OFR_WY_Review_Software.SameOrderNuber" HiddenExpress='OFR_WY_Review_Software.OrderSoftwareType =="C类(软件更改)" ||OFR_WY_Review_Software.OrderSoftwareType =="D类(全新软件)"' HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="91px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_WY_Review_Software.OrderSoftwareType =="A类(翻单)"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel142" runat="server" text="软件类型"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="192">
                            <aspxform:XRadioButtonList id="XRadioButtonList35" runat="server" XDataBind="OFR_WY_Review_Software.SoftwareType" RepeatDirection="Horizontal">
                                <asp:ListItem>新软件开发</asp:ListItem>
                                <asp:ListItem>第三方提供软件</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="104" align="right">
                            <aspxform:XLabel id="XLabel154" runat="server" text="软件状态"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="319">
                            <aspxform:XRadioButtonList id="XRadioButtonList36" runat="server" XDataBind="OFR_WY_Review_Software.SoftwareState" RepeatDirection="Horizontal">
                                <asp:ListItem>研发阶段</asp:ListItem>
                                <asp:ListItem>客户确认阶段</asp:ListItem>
                                <asp:ListItem>第三方未提供软件</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="96" align="center">
                            <aspxform:XLabel id="XLabel155" runat="server" text="说明书更改要求"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75">
                            <aspxform:XRadioButtonList id="XRadioButtonList37" runat="server" XDataBind="OFR_WY_Review_Software.SpecificationChange" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="122">
                            <aspxform:XLabel id="XLabel81" runat="server" text="说明书软件提供时间：" HiddenExpress='OFR_WY_Review_Software.SpecificationChange == "无"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="235">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox86" runat="server" XDataBind="OFR_WY_Review_Software.SpecificationChange_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" id="div2" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_WY_Review_Software.OrderSoftwareType =="A类(翻单)"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel156" runat="server" text="条码打印选项"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="149">
                            <aspxform:XRadioButtonList id="XRadioButtonList39" runat="server" XDataBind="OFR_WY_Review_Software.PrintSelect" RepeatDirection="Horizontal">
                                <asp:ListItem>离线打印</asp:ListItem>
                                <asp:ListItem>在线打印</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="104" align="right">
                            <aspxform:XLabel id="XLabel157" runat="server" text="需准备新CA测试卡"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="70">
                            <aspxform:XRadioButtonList id="XRadioButtonList41" runat="server" XDataBind="OFR_WY_Review_Software.CATest" RepeatDirection="Horizontal">
                                <asp:ListItem>否</asp:ListItem>
                                <asp:ListItem>是</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="127">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox89" runat="server" XDataBind="OFR_WY_Review_Software.CATest_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="125px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="136">
                            <aspxform:XLabel id="XLabel60" runat="server" text="需准备新生产测试遥控器"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="70">
                            <aspxform:XRadioButtonList id="XRadioButtonList13" runat="server" XDataBind="OFR_WY_Review_Software.TestRemoteControl" RepeatDirection="Horizontal">
                                <asp:ListItem>否</asp:ListItem>
                                <asp:ListItem>是</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="127">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox36" runat="server" XDataBind="OFR_WY_Review_Software.TestRemoteControl_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="125px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="153" align="center">
                            <aspxform:XLabel id="XLabel158" runat="server" text="需第三方提供生产/授权数据"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="70">
                            <aspxform:XRadioButtonList id="XRadioButtonList42" runat="server" XDataBind="OFR_WY_Review_Software.NeedThreeData" RepeatDirection="Horizontal">
                                <asp:ListItem>否</asp:ListItem>
                                <asp:ListItem>是</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="130">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox87" runat="server" XDataBind="OFR_WY_Review_Software.NeedThreeData_Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="125px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox90" runat="server" XDataBind="OFR_WY_Review_Software.OtherReview" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel160" runat="server" Font-Bold="True" Font-Size="Small" text="结构评审" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="504">
                            <aspxform:XCheckBoxList id="XCheckBoxList3" runat="server" XDataBind="OFR_WY_Review_Struct.StructSelect" RepeatDirection="Horizontal">
                                <asp:ListItem>物料替换</asp:ListItem>
                                <asp:ListItem>增加物料</asp:ListItem>
                                <asp:ListItem>删除物料</asp:ListItem>
                            </aspxform:XCheckBoxList>
                            <aspxform:XDropDownList id="XDropDownList10" runat="server" HiddenExpress="1" DataMap="StructSelect->OFR_WY_Review_Struct.StructSelect;MaterialFollowUp->OFR_WY_Review_Struct.MaterialFollowUp;StructType->OFR_WY_Review_Struct.StructType;OtherReview->OFR_WY_Review_Struct.OtherReview;StructBOM->OFR_WY_Review_Struct.StructBOM" XDataSource="TableName:OFR_WY_Review_Struct;Filter:TaskID->OFR_WY_Applicant.OrderChangeID;BufferType:RuntimeUpdate" ValueColumn="TaskID" DisplayColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="241" align="right">
                            <aspxform:XLabel id="XLabel165" runat="server" text="是否有新物料需要助理跟进" HiddenExpress="1"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="411">
                            <aspxform:XRadioButtonList id="XRadioButtonList59" runat="server" XDataBind="OFR_WY_Review_Struct.MaterialFollowUp" HiddenExpress="1" RepeatDirection="Horizontal">
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
                            <aspxform:XRadioButtonList id="XRadioButtonList50" runat="server" XDataBind="OFR_WY_Review_Struct.StructType" RepeatDirection="Horizontal">
                                <asp:ListItem>A类(翻单)</asp:ListItem>
                                <asp:ListItem>B类(客户化更改)</asp:ListItem>
                                <asp:ListItem>C类(新配置)</asp:ListItem>
                                <asp:ListItem Value="D类(新模具)">D类(新模具)</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator57" runat="server" ValidationGroup="结构签单工程师" ControlToValidate="XRadioButtonList50" ErrorMessage="请选择订单结构类型！" Display="None">订单结构类型</aspxform:XRequiredFieldValidator>
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
                                <aspxform:XLabel id="XLabel167" runat="server" Font-Bold="True" text="BOM操作"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="577">
                            <div align="center">
                                <aspxform:XLabel id="XLabel168" runat="server" Font-Bold="True" text="变更内容/数量"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="167" align="center">
                            <aspxform:XLabel id="XLabel176" runat="server" Font-Bold="True" text="ECN更改类型"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="10" colspan="3">
                            <div align="center">
                                <aspxform:XLabel id="XLabel174" runat="server" Font-Bold="True" Text="新物料状况"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="11" width="141" align="center">
                            <aspxform:XLabel id="XLabel182" runat="server" Font-Bold="True" text="SAP录入"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113" align="center">
                            <aspxform:XLabel id="XLabel183" runat="server" Font-Bold="True" text="封样"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="152" align="center">
                            <aspxform:XLabel id="XLabel184" runat="server" Font-Bold="True" text="计划封样时间"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" datamap="MaterialChangeContent->OFR_WY_Review_Struct_MaterialChange.MaterialChangeContent;MaterialChange_ECN->OFR_WY_Review_Struct_MaterialChange.MaterialChange_ECN;MaterialChange_SAP->OFR_WY_Review_Struct_MaterialChange.MaterialChange_SAP;MaterialChange_Sealed->OFR_WY_Review_Struct_MaterialChange.MaterialChange_Sealed;MaterialChange_SealedTime->OFR_WY_Review_Struct_MaterialChange.MaterialChange_SealedTime" xdatasource="TableName:OFR_WY_Review_Struct_MaterialChange;Filter:TaskID->OFR_WY_Applicant.OrderChangeID" dynamicarea="0,1" hiddenexpress='OFR_WY_Review_Struct.StructSelect == "" || OFR_WY_Review_Struct.StructSelect =="增加物料" || OFR_WY_Review_Struct.StructSelect =="删除物料" ||OFR_WY_Review_Struct.StructSelect =="增加物料,删除物料"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="81">
                            <div align="center">
                                <aspxform:XLabel id="XLabel178" runat="server" Font-Bold="True" text="物料替换"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="577">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox108" runat="server" XDataBind="OFR_WY_Review_Struct_MaterialChange.MaterialChangeContent" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="555px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <div align="center">
                                <aspxform:XCheckBoxList id="XCheckBoxList1" runat="server" XDataBind="OFR_WY_Review_Struct_MaterialChange.MaterialChange_ECN" RepeatDirection="Horizontal">
                                    <asp:ListItem>产品BOM</asp:ListItem>
                                    <asp:ListItem>销单BOM</asp:ListItem>
                                </aspxform:XCheckBoxList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="141">
                            <div align="center">
                                <aspxform:XRadioButtonList id="XRadioButtonList52" runat="server" XDataBind="OFR_WY_Review_Struct_MaterialChange.MaterialChange_SAP" RepeatDirection="Horizontal">
                                    <asp:ListItem>需新申请</asp:ListItem>
                                    <asp:ListItem>无</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113" align="center">
                            <aspxform:XRadioButtonList id="XRadioButtonList44" runat="server" XDataBind="OFR_WY_Review_Struct_MaterialChange.MaterialChange_Sealed" RepeatDirection="Horizontal">
                                <asp:ListItem>需封样</asp:ListItem>
                                <asp:ListItem>无</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="152">
                            <aspxform:XDateTimePicker id="XDateTimePicker6" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OFR_WY_Review_Struct_MaterialChange.MaterialChange_SealedTime" BorderWidth="1px" Width="129px" ReadOnly="True" BorderColor="Gainsboro" XType="datetime" XSubType="date"></aspxform:XDateTimePicker>
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
                        <td align="center">
                            <aspxform:XAddBlockButton id="XAddBlockButton9" runat="server" Height="21px" Text="添加" UseSubmitBehavior="False" TableName="OFR_WY_Review_Struct_MaterialChange" PrintOut="False"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" datamap="AddMaterialContent->OFR_WY_Review_Struct_AddMaterial.AddMaterialContent;AddMaterial_ECN->OFR_WY_Review_Struct_AddMaterial.AddMaterial_ECN;AddMaterial_SAP->OFR_WY_Review_Struct_AddMaterial.AddMaterial_SAP;AddMaterial_Sealed->OFR_WY_Review_Struct_AddMaterial.AddMaterial_Sealed;AddMaterial_SealedTime->OFR_WY_Review_Struct_AddMaterial.AddMaterial_SealedTime" xdatasource="TableName:OFR_WY_Review_Struct_AddMaterial;Filter:TaskID->OFR_WY_Applicant.OrderChangeID" dynamicarea="0,1" hiddenexpress='OFR_WY_Review_Struct.StructSelect == "" || OFR_WY_Review_Struct.StructSelect =="物料替换" || OFR_WY_Review_Struct.StructSelect =="删除物料" ||OFR_WY_Review_Struct.StructSelect =="物料替换,删除物料"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="81">
                            <div align="center">
                                <aspxform:XLabel id="XLabel179" runat="server" Font-Bold="True" text="增加物料"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="577">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox112" runat="server" XDataBind="OFR_WY_Review_Struct_AddMaterial.AddMaterialContent" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="555px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <div align="center">
                                <aspxform:XCheckBoxList id="XCheckBoxList4" runat="server" XDataBind="OFR_WY_Review_Struct_AddMaterial.AddMaterial_ECN" RepeatDirection="Horizontal">
                                    <asp:ListItem>产品BOM</asp:ListItem>
                                    <asp:ListItem>销单BOM</asp:ListItem>
                                </aspxform:XCheckBoxList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="141">
                            <div align="center">
                                <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="OFR_WY_Review_Struct_AddMaterial.AddMaterial_SAP" RepeatDirection="Horizontal">
                                    <asp:ListItem>需新申请</asp:ListItem>
                                    <asp:ListItem>无</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113" align="center">
                            <aspxform:XRadioButtonList id="XRadioButtonList45" runat="server" XDataBind="OFR_WY_Review_Struct_AddMaterial.AddMaterial_Sealed" RepeatDirection="Horizontal">
                                <asp:ListItem>需封样</asp:ListItem>
                                <asp:ListItem>无</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="152">
                            <aspxform:XDateTimePicker id="XDateTimePicker7" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OFR_WY_Review_Struct_AddMaterial.AddMaterial_SealedTime" BorderWidth="1px" Width="128px" ReadOnly="True" BorderColor="Gainsboro" XType="datetime" XSubType="date"></aspxform:XDateTimePicker>
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
                        <td align="center">
                            <aspxform:XAddBlockButton id="XAddBlockButton10" runat="server" Height="21px" Text="添加" UseSubmitBehavior="False" TableName="OFR_WY_Review_Struct_AddMaterial" PrintOut="False"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" datamap="DeleteMaterialContent->OFR_WY_Review_Struct_DeleteMaterial.DeleteMaterialContent;DeleteMaterial_ECN->OFR_WY_Review_Struct_DeleteMaterial.DeleteMaterial_ECN" xdatasource="TableName:OFR_WY_Review_Struct_DeleteMaterial;Filter:TaskID->OFR_WY_Applicant.OrderChangeID" dynamicarea="0,1" hiddenexpress='OFR_WY_Review_Struct.StructSelect == "" || OFR_WY_Review_Struct.StructSelect =="物料替换" || OFR_WY_Review_Struct.StructSelect =="增加物料" ||OFR_WY_Review_Struct.StructSelect =="物料替换,增加物料"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="81">
                            <div align="center">
                                <aspxform:XLabel id="XLabel180" runat="server" Font-Bold="True" text="删除物料"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="577">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox113" runat="server" XDataBind="OFR_WY_Review_Struct_DeleteMaterial.DeleteMaterialContent" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="555px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <div align="center">
                                <aspxform:XCheckBoxList id="XCheckBoxList5" runat="server" XDataBind="OFR_WY_Review_Struct_DeleteMaterial.DeleteMaterial_ECN" RepeatDirection="Horizontal">
                                    <asp:ListItem>产品BOM</asp:ListItem>
                                    <asp:ListItem>销单BOM</asp:ListItem>
                                </aspxform:XCheckBoxList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="141">
                            <div align="center">
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113" align="center">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="152">
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator54" runat="server" ValidationGroup="BOM设计师(固化)" ControlToValidate="XTextBox94" ErrorMessage="请填写结构BOM签发！" Display="None">结构BOM签发</aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td align="center">
                            <aspxform:XAddBlockButton id="XAddBlockButton11" runat="server" Height="21px" Text="添加" UseSubmitBehavior="False" TableName="OFR_WY_Review_Struct_DeleteMaterial" PrintOut="False"></aspxform:XAddBlockButton>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox91" runat="server" XDataBind="OFR_WY_Review_Struct.OtherReview" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox94" runat="server" XDataBind="OFR_WY_Review_Struct.StructBOM" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel49" runat="server" Font-Bold="True" Font-Size="Small" text="质量评审" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox75" runat="server" XDataBind="OFR_WY_Review_Quality.QualityConent" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="29" width="81">
                            <aspxform:XLabel id="XLabel66" runat="server" Font-Bold="True" Font-Size="Small" text="订单计划" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="204">
                            <aspxform:XRadioButtonList id="XRadioButtonList14" runat="server" XDataBind="OFR_WY_Review_Quality.ProjectPlan" Width="182px" RepeatDirection="Horizontal">
                                <asp:ListItem>执行项目计划</asp:ListItem>
                                <asp:ListItem>无项目计划</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="955">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox45" runat="server" XDataBind="OFR_WY_Review_Quality.ProjectRemark" HiddenExpress='OFR_WY_Review_Quality.ProjectPlan != "无项目计划"' HiddenInput="False" Min="0" Max="0" width="938px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="29px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel55" runat="server" Font-Bold="True" Font-Size="Small" text="交期评审" ForeColor="Black"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator41" runat="server" ValidationGroup="物控(长周期)" ControlToValidate="XTextBox76" ErrorMessage="请填写交期评审中的长周期物料！" Display="None">长周期物料</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator42" runat="server" ValidationGroup="物控(机芯)" ControlToValidate="XTextBox96" ErrorMessage="请填写交期评审中的SMT/AI！" Display="None">SMT/AI</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator43" runat="server" ValidationGroup="物控(机芯)" ControlToValidate="XTextBox97" ErrorMessage="请填写交期评审中的机芯!" Display="None">机芯</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator44" runat="server" ValidationGroup="物控(整机)" ControlToValidate="XTextBox104" ErrorMessage="请填写交期评审中的整机!" Display="None">整机</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ValidationGroup="项目经理" ControlToValidate="XRadioButtonList14" ErrorMessage="请填写D类订单项目计划策略!" Display="None">订单项目计划</aspxform:XRequiredFieldValidator>
                            <aspxform:XDropDownList id="XDropDownList11" runat="server" HiddenExpress="1" DataMap="QualityConent->OFR_WY_Review_Quality.QualityConent;ProjectPlan->OFR_WY_Review_Quality.ProjectPlan;ProjectRemark->OFR_WY_Review_Quality.ProjectRemark" XDataSource="TableName:OFR_WY_Review_Quality;Filter:TaskID->OFR_WY_Applicant.OrderChangeID;BufferType:RuntimeUpdate" ValueColumn="TaskID" DisplayColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XDropDownList id="XDropDownList12" runat="server" HiddenExpress="1" DataMap="ShippingTime_Start->OFR_WY_Review_DeliveryDate.ShippingTime_Start;SMT_AI->OFR_WY_Review_DeliveryDate.SMT_AI;RevocationPlan->OFR_WY_Review_DeliveryDate.RevocationPlan;MachineChips->OFR_WY_Review_DeliveryDate.MachineChips;ShippingTime_End->OFR_WY_Review_DeliveryDate.ShippingTime_End;JiHuoYorN->OFR_WY_Review_DeliveryDate.JiHuoYorN;OtherReview->OFR_WY_Review_DeliveryDate.OtherReview;RevocationPlanTime->OFR_WY_Review_DeliveryDate.RevocationPlanTime;LongCycleMaterial->OFR_WY_Review_DeliveryDate.LongCycleMaterial;AllMachine->OFR_WY_Review_DeliveryDate.AllMachine" XDataSource="TableName:OFR_WY_Review_DeliveryDate;Filter:TaskID->OFR_WY_Applicant.OrderChangeID;BufferType:RuntimeUpdate" ValueColumn="TaskID" DisplayColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="135" align="center">
                            <aspxform:XLabel id="XLabel86" runat="server" Font-Bold="True" text="物料类别"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
                            <p align="center">
                                <aspxform:XLabel id="XLabel87" runat="server" Font-Bold="True" text="物料齐套时间评审"></aspxform:XLabel>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="135" align="center">
                            <aspxform:XLabel id="XLabel88" runat="server" text="长周期物料"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
                            <aspxform:XTextBox id="XTextBox76" runat="server" XDataBind="OFR_WY_Review_DeliveryDate.LongCycleMaterial" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="135" align="center">
                            <aspxform:XLabel id="XLabel89" runat="server" text="SMT/AI"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
                            <aspxform:XTextBox id="XTextBox96" runat="server" XDataBind="OFR_WY_Review_DeliveryDate.SMT_AI" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="135" align="center">
                            <aspxform:XLabel id="XLabel90" runat="server" text="机芯"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
                            <aspxform:XTextBox id="XTextBox97" runat="server" XDataBind="OFR_WY_Review_DeliveryDate.MachineChips" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="135" align="center">
                            <aspxform:XLabel id="XLabel91" runat="server" text="整机"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox104" runat="server" XDataBind="OFR_WY_Review_DeliveryDate.AllMachine" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="82" align="center">
                            <aspxform:XLabel id="XLabel93" runat="server" text="开始出货时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="206">
                            <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" XDataBind="OFR_WY_Review_DeliveryDate.ShippingTime_Start" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75">
                            <aspxform:XLabel id="XLabel103" runat="server" text="完成出货时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="276">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" runat="server" XDataBind="OFR_WY_Review_DeliveryDate.ShippingTime_End" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="78" align="right">
                            <aspxform:XLabel id="XLabel105" runat="server" text="撤销计划时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80">
                            <aspxform:XRadioButtonList id="XRadioButtonList54" runat="server" XDataBind="OFR_WY_Review_DeliveryDate.RevocationPlan" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="431">
                            <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" XDataBind="OFR_WY_Review_DeliveryDate.RevocationPlanTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator45" runat="server" DisableExpress='OFR_WY_Review_DeliveryDate.RevocationPlan !="有"' ValidationGroup="PMC" ControlToValidate="XDateTimePicker8" ErrorMessage="您在交期评审中选择了撤销计划时间为有，请填写！" Display="None">撤销计划时间</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="82" align="center">
                            <aspxform:XLabel id="XLabel94" runat="server" text="订单是否激活"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="125">
                            <aspxform:XRadioButtonList id="XRadioButtonList12" runat="server" XDataBind="OFR_WY_Review_DeliveryDate.JiHuoYorN" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator69" runat="server" ValidationGroup="PMC" ControlToValidate="XRadioButtonList12" ErrorMessage="请勾选激活！" Display="None">激活</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="78" align="right">
                            <aspxform:XLabel id="XLabel50" runat="server" text="其他评审意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="952">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox58" runat="server" XDataBind="OFR_WY_Review_DeliveryDate.OtherReview" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel128" runat="server" Font-Bold="True" Font-Size="Small" text="财务评审" ForeColor="Black"></aspxform:XLabel>
                            <aspxform:XDropDownList id="XDropDownList13" runat="server" HiddenExpress="1" DataMap="FinReview->OFR_WY_Review_Financial.FinReview" XDataSource="TableName:OFR_WY_Review_Financial;Filter:TaskID->OFR_WY_Applicant.OrderChangeID;BufferType:RuntimeUpdate" ValueColumn="TaskID" DisplayColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="80">
                            <aspxform:XLabel id="XLabel147" runat="server" text="评审意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1163">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox111" runat="server" XDataBind="OFR_WY_Review_Financial.FinReview" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderWidth="1" width="100%" BorderColor="#DCDCDC" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="113" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="100%" CssClass="AA" Height="93px"></aspxform:XSignTrace>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td height="29" width="277" align="center">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" MarginBottom="10" MarginTop="20" MarginRight="2" MarginLeft="2" Zoom="60"></aspxform:XPrintButton>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" ValidationGroup="Return" ControlToValidate="XCommentsTextBox1" ErrorMessage="退回请填写审批信息" Display="None">退回</aspxform:XRequiredFieldValidator>
                        </td>
                        <td width="719" align="center">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" ValidationGroup="Reject" ControlToValidate="XCommentsTextBox1" ErrorMessage="拒绝请填写审批信息" Display="None">拒绝</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td>
                            <script type="text/javascript" src="../../jquery-1.9.1.min.js"></script>
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
