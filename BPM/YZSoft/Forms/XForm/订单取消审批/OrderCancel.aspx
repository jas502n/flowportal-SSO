<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
     protected void Page_Load(object sender, EventArgs e)
        {
        /*
           XTextBox4.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
    
           XTextBox49.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox58.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox61.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox81.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox63.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox75.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox77.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox84.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox85.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox88.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox90.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox91.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox111.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox116.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox131.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox103.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox105.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox123.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox125.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox129.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox139.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox190.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox191.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox192.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox193.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox230.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox231.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox232.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox233.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
       */ }

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
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: medium none" height="52" width="203">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: medium none" align="middle">
                            <aspxform:XTextBox id="XTextBox25" runat="server" width="2px" Max="0" Min="0" HiddenInput="False" BorderWidth="0px" HiddenExpress="1" XDataBind="OFR_Cancel_Applicant.SN"></aspxform:XTextBox>
                            &nbsp;&nbsp;&nbsp;<aspxform:XTextBox id="XTextBox21" runat="server" width="4px" Max="0" Min="0" HiddenInput="False" BorderWidth="0px" HiddenExpress="1" XDataBind="OFR_Cancel_Applicant.Dept"></aspxform:XTextBox>
                            &nbsp;&nbsp;<aspxform:XTextBox id="XTextBox20" runat="server" width="4px" Max="0" Min="0" HiddenInput="False" BorderWidth="0px" HiddenExpress="1" XDataBind="OFR_Cancel_Applicant.HRID"></aspxform:XTextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" width="210">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <aspxform:XLabel id="XLabel11" runat="server" XDataBind="OFR_Cancel_Applicant.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="58" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="国内产品线订单取消通知书" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" height="20" width="80" align="right">
                            <aspxform:XLabel id="XLabel148" runat="server" text="订单号:"></aspxform:XLabel>
                        </td>
                        <td width="56">
                            <aspxform:XTextBox id="XTextBox115" runat="server" width="100%" XDataBind="OFR_Cancel_Applicant.OrderNum" DisableBehavior="ReadOnly" ReadOnly="True" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td width="58">
                            <p align="right">
                                <aspxform:XLabel id="XLabel2" runat="server" text="发起人:"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="74">
                            <aspxform:XTextBox id="XTextBox229" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_Applicant.Name" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="66px"></aspxform:XTextBox>
                        </td>
                        <td width="76" align="right">
                            <aspxform:XLabel id="XLabel3" runat="server" text="发起时间:" Width="54px"></aspxform:XLabel>
                        </td>
                        <td width="149">
                            <aspxform:XTextBox id="XTextBox1" runat="server" width="147px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_Applicant.AppDate" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="18px"></aspxform:XTextBox>
                        </td>
                        <td width="83" align="middle">
                            <p align="right">
                                <aspxform:XLabel id="XLabel33" runat="server" text="产品线:" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="201" align="right">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"> 
                            <p align="left">
                                <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="OFR_Cancel_Applicant.ProductType" Width="147px" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True">国内订单</asp:ListItem>
                                    <asp:ListItem>宽带订单</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            </span></td>
                        <td width="91">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XLabel id="XLabel58" runat="server" text="订单状态:" ValueToDisplayText Value></aspxform:XLabel>
                            </span></td>
                        <td width="360">
                            <aspxform:XDropDownList id="XDropDownList14" runat="server" XDataBind="OFR_Cancel_Applicant.State">
                                <asp:ListItem>未生产</asp:ListItem>
                                <asp:ListItem>在制</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="82" align="right">
                            <aspxform:XLabel id="XLabel64" runat="server" text="原订单号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="238" colspan="2">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox83" runat="server" width="127px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" XDataBind="OFR_Cancel_Applicant.OrderChange_Original" DisableBehavior="ReadOnly" ReadOnly="True" CssClass="TextBox" ValueToDisplayText Value BorderColor="Goldenrod"></aspxform:XTextBox>
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XDataBrowserButton id="XDataBrowserButton3" runat="server" Width="94px" DisableExpress='Global.StepName!="开始"' UseSubmitBehavior="False" PopupWndWidth="800" PopupWndX="100" XDataSource="TableName:OFR_GN_Applicant;BufferType:RuntimeUpdate" PopupWndY="100" PopupWndHeight="500" Text="导入订单信息" DisplayColumns="TaskID:电子流ID,;Name:发起人,;SN:电子流编号,;OrderNum:订单号,;OrderType:订单类型," DataMap="TaskID->OFR_Cancel_Applicant.OrderChangeID;OrderNum->OFR_Cancel_Applicant.OrderNum;ProductType->OFR_Cancel_Applicant.ProductType"></aspxform:XDataBrowserButton>
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"></span></span></span></span></span></span></span></span></span></span></span></span></span></td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="924">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ValidationGroup="V1" Display="None" ErrorMessage="输入订单取消原因" ControlToValidate="XTextBox4">取消原因</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ValidationGroup="V2" Display="None" ErrorMessage="选择订单状态" ControlToValidate="XDropDownList14">订单状态</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ValidationGroup="V3" Display="None" ErrorMessage="输入呆料金额" ControlToValidate="XTextBox13">呆料金额</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox14" runat="server" width="4px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" XDataBind="OFR_Cancel_Applicant.OrderChangeID" ValueToDisplayText Value BorderColor="Gainsboro"></aspxform:XTextBox>
                            </span></span></span></span></span></span></span></span></span></span></span></span></span></span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="73" width="80" align="middle">
                            <aspxform:XLabel id="XLabel149" runat="server" text="订单取消原因:" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox4" runat="server" width="1121px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_Applicant.ChangeReason" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="68px" ValueToDisplayText Value TextMode="MultiLine" ForeColor="Red"></aspxform:XTextBox>
                            </span></span></td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center">
                                <aspxform:XLabel id="XLabel17" runat="server" text="邮件通知" Font-Size="Small" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                            </div>
                        </td>
                        <td width="560">
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="OFR_Cancel_Review_HD.MainYorN" Font-Size="X-Small" Text="主板"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="OFR_Cancel_Review_HD.PowerYorN" Font-Size="X-Small" Text="电源"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox6" runat="server" XDataBind="OFR_Cancel_Review_HD.OtherBoardYorN" Font-Size="X-Small" Text="副板"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox7" runat="server" XDataBind="OFR_Cancel_Review_HD.CMYorN" Font-Size="X-Small" Text="CM板"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox8" runat="server" XDataBind="OFR_Cancel_Review_HD.WifiYorN" Font-Size="X-Small" Text="WiFi板"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox9" runat="server" XDataBind="OFR_Cancel_Review_HD.SoftYorN" Font-Size="X-Small" Text="软件"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox10" runat="server" XDataBind="OFR_Cancel_Review_HD.PlaneYorN" Font-Size="X-Small" Text="平面"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox11" runat="server" XDataBind="OFR_Cancel_Review_HD.StructYorN" Font-Size="X-Small" Text="结构"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox12" runat="server" XDataBind="OFR_Cancel_Review_HD.PurYorN" Font-Size="X-Small" Text="采购"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox13" runat="server" XDataBind="OFR_Cancel_Review_HD.PlanYorN" Font-Size="X-Small" Text="计划"></aspxform:XCheckBox>
                        </td>
                        <td width="603">
                            <aspxform:XLabel id="XLabel18" runat="server" text="(勾选邮件会发送给对应的人)" Font-Size="Small" ValueToDisplayText Value BackColor="Red"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1249">
                <tbody>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDERBOTTOM: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="998" colspan="2">
                            <aspxform:XLabel id="XLabel357" runat="server" text="订单基本信息" Font-Size="Small" Font-Bold="True" ForeColor="Navy"></aspxform:XLabel>
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" HiddenExpress="1" Width="82px" XDataSource="TableName:V_OFR_GN_BInfo;Filter:TaskID->OFR_Cancel_Applicant.OrderChangeID;BufferType:RuntimeUpdate" DataMap="OrderCategory->OFR_Cancel_BInfo.OrderCategory;CoreNumber->OFR_Cancel_BInfo.CoreNumber;TotalAmount->OFR_Cancel_BInfo.TotalAmount;CustomerName->OFR_Cancel_BInfo.CustomerName;OtherRequirements->OFR_Cancel_BInfo.OtherRequirements;CustomerAbbr->OFR_Cancel_BInfo.CustomerAbbr;SalesArea->OFR_Cancel_BInfo.SalesArea;ImportantOrder->OFR_Cancel_BInfo.ImportantOrder;SalesAmount->OFR_Cancel_BInfo.SalesAmount;SwingAmount->OFR_Cancel_BInfo.SwingAmount;CustomerModel->OFR_Cancel_BInfo.CustomerModel;ProductModel->OFR_Cancel_BInfo.ProductModel;GiftAmount->OFR_Cancel_BInfo.GiftAmount" ValueColumn="TaskID" DisplayColumn="TaskID" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel104" runat="server" text="红标订单:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-TOP: medium none" width="213">
                            <aspxform:XRadioButtonList id="XRadioButtonList22" runat="server" XDataBind="OFR_Cancel_BInfo.ImportantOrder" RepeatDirection="Horizontal">
                                <asp:ListItem>红标订单</asp:ListItem>
                                <asp:ListItem>非红标订单</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel325" runat="server" text="订单类型:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="236">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="OFR_Cancel_BInfo.OrderCategory" Width="175px" Height="22px" RepeatDirection="Horizontal">
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-TOP: medium none" width="61" align="right">
                            <aspxform:XLabel id="XLabel359" runat="server" text="机芯号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="302">
                            <aspxform:XTextBox id="XTextBox234" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_BInfo.CoreNumber" DisableBehavior="ReadOnly" ReadOnly="True" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="280px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="55" align="right">
                            <aspxform:XLabel id="XLabel360" runat="server" text="产品型号:" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="199">
                            <aspxform:XTextBox id="XTextBox235" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_BInfo.ProductModel" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Width="180px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel361" runat="server" text="客户型号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid" width="213">
                            <aspxform:XTextBox id="XTextBox114" runat="server" width="210px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_BInfo.CustomerModel" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel4" runat="server" text="客户简称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="236">
                            <aspxform:XTextBox id="XTextBox5" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_BInfo.CustomerAbbr" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="180px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                            <aspxform:XLabel id="XLabel362" runat="server" text="客户全称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="302">
                            <aspxform:XTextBox id="XTextBox236" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_BInfo.CustomerName" DisableBehavior="ReadOnly" ReadOnly="True" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="280px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="55" align="right">
                            <aspxform:XLabel id="XLabel363" runat="server" text="销售地区:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="199">
                            <aspxform:XTextBox id="XTextBox237" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_BInfo.SalesArea" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Width="180px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel83" runat="server" text="销售数量:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid" width="87">
                            <aspxform:XTextBox id="XTextBox117" runat="server" width="66px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_BInfo.SalesAmount" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="right">
                            <aspxform:XLabel id="XLabel95" runat="server" text="赠机数量:" Height="16px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="64">
                            <aspxform:XTextBox id="XTextBox29" runat="server" width="60px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_BInfo.GiftAmount" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel99" runat="server" text="周转机:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="68">
                            <aspxform:XTextBox id="XTextBox30" runat="server" width="46px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_BInfo.SwingAmount" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="58">
                            <aspxform:XLabel id="XLabel188" runat="server" text="合同比例:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="48">
                            <aspxform:XTextBox id="XTextBox138" runat="server" width="46px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_BInfo.ContractPersent" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="118">
                            <aspxform:XLabel id="XLabel76" runat="server" text="是否为合同约定比例:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="74">
                            <aspxform:XRadioButtonList id="XRadioButtonList40" runat="server" XDataBind="OFR_Cancel_BInfo.ContractYorN" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="224">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox139" runat="server" width="200px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_BInfo.ContractRemark" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="25px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="55" align="right">
                            <aspxform:XLabel id="XLabel97" runat="server" text="总计数量:" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="198">
                            <aspxform:XTextBox id="XTextBox31" runat="server" width="78px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_BInfo.TotalAmount" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Express="OFR_Cancel_BInfo.SalesAmount+OFR_Cancel_BInfo.GiftAmount+OFR_Cancel_BInfo.SwingAmount"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="79" align="right">
                            <aspxform:XLabel id="XLabel173" runat="server" text="其他要求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="213">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox103" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_BInfo.OtherRequirements" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Width="134px" Height="23px" ValueToDisplayText Value TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="865">
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1250" xdatasource="TableName:OFR_Cancel_DL" datamap="dj->OFR_Cancel_DL.dj;sl->OFR_Cancel_DL.sl;lh->OFR_Cancel_DL.lh;cgy->OFR_Cancel_DL.cgy;bz->OFR_Cancel_DL.bz;jxh->OFR_Cancel_DL.jxh;kl->OFR_Cancel_DL.kl;yl->OFR_Cancel_DL.yl;je->OFR_Cancel_DL.je">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="21" width="1248">
                            <aspxform:XLabel id="XLabel53" runat="server" text="呆料" Font-Size="Small" Font-Bold="True" ValueToDisplayText Value ForeColor="Navy"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf">
                            <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" HiddenExpress='!(Global.StepName=="长周期物控03"||Global.StepName=="SMT机芯物控04"||Global.StepName=="整机物控05")' Text="添加呆料" PrintOut="False" TableName="OFR_Cancel_DL"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" id="table_dl" border="1" cellspacing="0" cellpadding="0" width="1250" align="center" xdatasource="TableName:OFR_Cancel_DL;BufferType:RuntimeUpdate" dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" height="18" width="55">
                            <div align="center">
                                <aspxform:XLabel id="XLabel5" runat="server" text="序号" Font-Size="Small" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" width="159">
                            <p align="center">
                                <aspxform:XLabel id="XLabel6" runat="server" text="机芯号" Font-Size="Small" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" width="155">
                            <p align="center">
                                <aspxform:XLabel id="XLabel7" runat="server" text="料号" Font-Size="Small" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" width="107">
                            <p align="center">
                                <aspxform:XLabel id="XLabel8" runat="server" text="数量" Font-Size="Small" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" width="121">
                            <p align="center">
                                <aspxform:XLabel id="XLabel9" runat="server" text="用量" Font-Size="Small" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" width="122">
                            <p align="center">
                                <aspxform:XLabel id="XLabel10" runat="server" text="单价" Font-Size="Small" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" width="103">
                            <p align="center">
                                <aspxform:XLabel id="XLabel12" runat="server" text="金额" Font-Size="Small" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" width="124">
                            <p align="center">
                                <aspxform:XLabel id="XLabel13" runat="server" text="库龄(天)" Font-Size="Small" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" width="117">
                            <p align="center">
                                <aspxform:XLabel id="XLabel14" runat="server" text="采购员" Font-Size="Small" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="157">
                            <p align="center">
                                <aspxform:XLabel id="XLabel15" runat="server" text="备注" Font-Size="Small" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td height="24">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" BorderWidth="1px" ReadOnly="True" Width="31px" BorderColor="Gainsboro" BackColor="Transparent" BorderStyle="None" TextAlign="Center">1</aspxform:XGridLineNo>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox2" runat="server" width="100%" BorderWidth="1" XDataBind="OFR_Cancel_DL.jxh" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox3" runat="server" width="100%" BorderWidth="1" XDataBind="OFR_Cancel_DL.lh" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox6" runat="server" width="100%" BorderWidth="1" XDataBind="OFR_Cancel_DL.sl" BorderColor="#DCDCDC" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox7" runat="server" width="100%" BorderWidth="1" XDataBind="OFR_Cancel_DL.yl" BorderColor="#DCDCDC" Format="type:number;.2"></aspxform:XTextBox>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox8" runat="server" width="100%" BorderWidth="1" XDataBind="OFR_Cancel_DL.dj" BorderColor="#DCDCDC" Format="type:number;.3"></aspxform:XTextBox>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox9" runat="server" width="100%" BorderWidth="1" XDataBind="OFR_Cancel_DL.je" BorderColor="#DCDCDC" Format="type:number;.2" Express="sum(OFR_Cancel_DL.sl*OFR_Cancel_DL.yl*OFR_Cancel_DL.dj)"></aspxform:XTextBox>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox10" runat="server" width="100%" BorderWidth="1" XDataBind="OFR_Cancel_DL.kl" BorderColor="#DCDCDC" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox11" runat="server" width="100%" BorderWidth="1" XDataBind="OFR_Cancel_DL.cgy" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox12" runat="server" width="100%" BorderWidth="1" XDataBind="OFR_Cancel_DL.bz" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td height="30" width="313">
                        </td>
                        <td width="419">
                            <p align="right">
                                <strong><font color="red">合计:</font></strong> 
                            </p>
                        </td>
                        <td width="230">
                            <aspxform:XTextBox id="XTextBox13" runat="server" width="153px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress='Global.StepName!="总裁审批"&amp;&amp;Global.StepName!="呆料金额统计"' XDataBind="OFR_Cancel_Applicant.SumMoney" ValueToDisplayText Value BorderColor="Gainsboro" Format="type:number;.2" Express="sum(OFR_Cancel_DL.je)"></aspxform:XTextBox>
                        </td>
                        <td width="281">
                            <aspxform:XExcelDataLoadButton id="XExcelDataLoadButton1" runat="server" HiddenExpress='!(Global.StepName=="长周期物控03"||Global.StepName=="SMT机芯物控04"||Global.StepName=="整机物控05")' text="导入呆料" DataMap="H->OFR_Cancel_DL.cgy;I->OFR_Cancel_DL.bz;B->OFR_Cancel_DL.lh;C->OFR_Cancel_DL.sl;A->OFR_Cancel_DL.jxh;F->OFR_Cancel_DL.je;G->OFR_Cancel_DL.kl;D->OFR_Cancel_DL.yl;E->OFR_Cancel_DL.dj" AppendMode="Append" ColumnCount="9"></aspxform:XExcelDataLoadButton>
                            <aspxform:XExcelDataExportButton id="XExcelDataExportButton1" runat="server" HiddenExpress='!(Global.StepName=="长周期物控03"||Global.StepName=="SMT机芯物控04"||Global.StepName=="整机物控05"||Global.StepName=="呆料金额统计06")' Text="导出呆料" ExportTableID="table_dl"></aspxform:XExcelDataExportButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel106" runat="server" text="产品要求信息" Font-Size="Small" Font-Bold="True" ForeColor="Navy"></aspxform:XLabel>
                            <font color="red">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" HiddenExpress="1" Width="82px" XDataSource="TableName:OFR_GN_ProductRequirementInfo;Filter:TaskID->OFR_Cancel_Applicant.OrderChangeID;BufferType:RuntimeUpdate" DataMap="Dubi->OFR_Cancel_ProductRequirementInfo.Dubi;NVOD->OFR_Cancel_ProductRequirementInfo.NVOD;Stock->OFR_Cancel_ProductRequirementInfo.Stock;CA->OFR_Cancel_ProductRequirementInfo.CA;EPGFrequency->OFR_Cancel_ProductRequirementInfo.EPGFrequency;Flash->OFR_Cancel_ProductRequirementInfo.Flash;DataRadio->OFR_Cancel_ProductRequirementInfo.DataRadio;SDRAM->OFR_Cancel_ProductRequirementInfo.SDRAM;InterfaceRequire->OFR_Cancel_ProductRequirementInfo.InterfaceRequire;VOD->OFR_Cancel_ProductRequirementInfo.VOD;OpenImage->OFR_Cancel_ProductRequirementInfo.OpenImage;EPG->OFR_Cancel_ProductRequirementInfo.EPG;LoaderFrequency->OFR_Cancel_ProductRequirementInfo.LoaderFrequency;BaseAudioAndVideo->OFR_Cancel_ProductRequirementInfo.BaseAudioAndVideo;Tuner->OFR_Cancel_ProductRequirementInfo.Tuner;Loader->OFR_Cancel_ProductRequirementInfo.Loader" ValueColumn="TaskID" DisplayColumn="TaskID" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            </font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="52">
                            <aspxform:XLabel id="XLabel107" runat="server" text="业务要求" Width="50px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="64">
                            <aspxform:XLabel id="XLabel108" runat="server" text="CA"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <aspxform:XTextBox id="XTextBox37" runat="server" width="150px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo.CA" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="56">
                            <aspxform:XLabel id="XLabel117" runat="server" text="开机画面"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="164">
                            <aspxform:XTextBox id="XTextBox38" runat="server" width="150px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo.OpenImage" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="77">
                            <aspxform:XLabel id="XLabel119" runat="server" text="FLASH"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="168">
                            <aspxform:XTextBox id="XTextBox39" runat="server" width="150px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo.Flash" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="46">
                            <aspxform:XLabel id="XLabel120" runat="server" text="SDRAM"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="164">
                            <aspxform:XTextBox id="XTextBox40" runat="server" width="150px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo.SDRAM" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="94">
                            <aspxform:XLabel id="XLabel121" runat="server" text="高频头"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="164">
                            <aspxform:XTextBox id="XTextBox28" runat="server" width="150px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo.Tuner" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XLabel id="XLabel111" runat="server" text="基本音视频"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox41" runat="server" width="150px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo.BaseAudioAndVideo" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel114" runat="server" text="NVOD"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox42" runat="server" width="150px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo.NVOD" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel349" runat="server" text="VOD" Width="26px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox43" runat="server" width="150px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo.VOD" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel109" runat="server" text="Loader"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox44" runat="server" width="150px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo.Loader" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel112" runat="server" text="Loader频点预置"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox46" runat="server" width="150px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo.LoaderFrequency" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27">
                            <aspxform:XLabel id="XLabel115" runat="server" text="数据广播"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox45" runat="server" width="150px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo.DataRadio" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel110" runat="server" text="EPG"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox189" runat="server" width="150px" XDataBind="OFR_Cancel_ProductRequirementInfo.EPG" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel113" runat="server" text="EPG频点预置"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox48" runat="server" width="150px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo.EPGFrequency" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel116" runat="server" text="股票"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox47" runat="server" width="150px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo.Stock" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel196" runat="server" text="支持杜比" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XRadioButtonList id="XRadioButtonList49" runat="server" XDataBind="OFR_Cancel_ProductRequirementInfo.Dubi" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="1250" height="27">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="52" align="middle">
                            <aspxform:XLabel id="XLabel65" runat="server" text="接口要求"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1191">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox79" runat="server" width="1150px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo.InterfaceRequire" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1250" xdatasource="TableName:OFR_Cancel_ProductRequirementInfo_Remark;Filter:TaskID->OFR_Cancel_Applicant.OrderChangeID" datamap="Remark->OFR_Cancel_ProductRequirementInfo_Remark.Remark" dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="52" align="middle">
                            <aspxform:XLabel id="XLabel122" runat="server" text="备注"></aspxform:XLabel>
                            <aspxform:XGridLineNo id="XGridLineNo5" runat="server" BorderWidth="0px" Font-Bold="True" Width="10px" ForeColor="Red" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="1191">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox49" runat="server" width="890px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_ProductRequirementInfo_Remark.Remark" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" height="21">
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-RIGHT: medium none" align="right">
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td bgcolor="#d1dedf" colspan="2">
                            <aspxform:XLabel id="XLabel32" runat="server" text="序列号要求信息" Font-Size="Small" Font-Bold="True" ValueToDisplayText Value ForeColor="Navy"></aspxform:XLabel>
                            <aspxform:XDropDownList id="XDropDownList6" runat="server" HiddenExpress="1" XDataSource="TableName:OFR_GN_SerialNumberRequirement;Filter:TaskID->OFR_Cancel_Applicant.OrderChangeID;BufferType:RuntimeUpdate" DataMap="MACAdd_End->OFR_Cancel_SerialNumberRequirement.MACAdd_End;MACAdd_StickerRemark->OFR_Cancel_SerialNumberRequirement.MACAdd_StickerRemark;MACAdd_PasteMethod->OFR_Cancel_SerialNumberRequirement.MACAdd_PasteMethod;CMMAC_StickerRemark->OFR_Cancel_SerialNumberRequirement.CMMAC_StickerRemark;CMMAC_PasteMethodRemark->OFR_Cancel_SerialNumberRequirement.CMMAC_PasteMethodRemark;Remark->OFR_Cancel_SerialNumberRequirement.Remark;CMMAC_BPI->OFR_Cancel_SerialNumberRequirement.CMMAC_BPI;CM_Start->OFR_Cancel_SerialNumberRequirement.CM_Start;SerialNumber_Start->OFR_Cancel_SerialNumberRequirement.SerialNumber_Start;SerialNumber_PasteMethod->OFR_Cancel_SerialNumberRequirement.SerialNumber_PasteMethod;SerialNumber_StickerRemark->OFR_Cancel_SerialNumberRequirement.SerialNumber_StickerRemark;CM_End->OFR_Cancel_SerialNumberRequirement.CM_End;CMMAC_PasteMethod->OFR_Cancel_SerialNumberRequirement.CMMAC_PasteMethod;SerialNumber_End->OFR_Cancel_SerialNumberRequirement.SerialNumber_End;MACAdd_Start->OFR_Cancel_SerialNumberRequirement.MACAdd_Start;Type_MAC->OFR_Cancel_SerialNumberRequirement.Type_MAC;MACAdd_PasteMethodRemark->OFR_Cancel_SerialNumberRequirement.MACAdd_PasteMethodRemark;CM_StickerRemark->OFR_Cancel_SerialNumberRequirement.CM_StickerRemark;SerialNumber_Sticker->OFR_Cancel_SerialNumberRequirement.SerialNumber_Sticker;SerialNumber_PasteMethodRemark->OFR_Cancel_SerialNumberRequirement.SerialNumber_PasteMethodRemark;Type_CM->OFR_Cancel_SerialNumberRequirement.Type_CM;Type_SerialNumber->OFR_Cancel_SerialNumberRequirement.Type_SerialNumber;MACAdd_Sticker->OFR_Cancel_SerialNumberRequirement.MACAdd_Sticker;Type_Other->OFR_Cancel_SerialNumberRequirement.Type_Other;CM_PasteMethodRemark->OFR_Cancel_SerialNumberRequirement.CM_PasteMethodRemark;CMMAC_End->OFR_Cancel_SerialNumberRequirement.CMMAC_End;Other->OFR_Cancel_SerialNumberRequirement.Other;Type_CMMAC->OFR_Cancel_SerialNumberRequirement.Type_CMMAC;CM_Sticker->OFR_Cancel_SerialNumberRequirement.CM_Sticker;CMMAC_Sticker->OFR_Cancel_SerialNumberRequirement.CMMAC_Sticker;CMMAC_Start->OFR_Cancel_SerialNumberRequirement.CMMAC_Start;CM_PasteMethod->OFR_Cancel_SerialNumberRequirement.CM_PasteMethod;CMMAC_BPIRemark->OFR_Cancel_SerialNumberRequirement.CMMAC_BPIRemark" ValueColumn="TaskID" DisplayColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td bgcolor="#d1dedf" width="756">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="21" valign="center" width="79" align="middle">
                            <aspxform:XLabel id="XLabel16" runat="server" text="系列号要求:" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="406">
                            <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="OFR_Cancel_SerialNumberRequirement.Type_SerialNumber" Text="序列号"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox4" runat="server" XDataBind="OFR_Cancel_SerialNumberRequirement.Type_MAC" Text="MAC地址"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox5" runat="server" XDataBind="OFR_Cancel_SerialNumberRequirement.Type_CM" Text="CM_序列号"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox27" runat="server" XDataBind="OFR_Cancel_SerialNumberRequirement.Type_CMMAC" Text="CM_MAC地址"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox28" runat="server" XDataBind="OFR_Cancel_SerialNumberRequirement.Type_Other" Text="其他"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox116" runat="server" width="695px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.Remark" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Cancel_SerialNumberRequirement.Type_SerialNumber == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="64">
                            <aspxform:XLabel id="XLabel47" runat="server" text="序列号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="13" width="52">
                            <aspxform:XLabel id="XLabel51" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox22" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.SerialNumber_Start" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="210px" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="50">
                            <aspxform:XLabel id="XLabel345" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox82" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.SerialNumber_End" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="210px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="14">
                            <aspxform:XLabel id="XLabel52" runat="server" text="贴纸数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="127">
                            <aspxform:XRadioButtonList id="XRadioButtonList29" runat="server" XDataBind="OFR_Cancel_SerialNumberRequirement.SerialNumber_Sticker" RepeatDirection="Horizontal">
                                <asp:ListItem>标准(4张)</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="342">
                            <aspxform:XTextBox id="XTextBox181" runat="server" width="325px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.SerialNumber_StickerRemark" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <div align="center">
                                <aspxform:XLabel id="XLabel342" runat="server" text="贴法" Width="28px"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="105">
                            <aspxform:XRadioButtonList id="XRadioButtonList15" runat="server" XDataBind="OFR_Cancel_SerialNumberRequirement.SerialNumber_PasteMethod" RepeatDirection="Horizontal">
                                <asp:ListItem>标准</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="488">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox190" runat="server" width="480px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.SerialNumber_PasteMethodRemark" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="25px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Cancel_SerialNumberRequirement.Type_MAC ==0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="64">
                            <aspxform:XLabel id="XLabel48" runat="server" text="MAC地址"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="52">
                            <aspxform:XLabel id="XLabel152" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox69" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.MACAdd_Start" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="210px" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="50">
                            <aspxform:XLabel id="XLabel153" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox122" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.MACAdd_End" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="210px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel186" runat="server" text="贴纸数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="127">
                            <aspxform:XRadioButtonList id="XRadioButtonList43" runat="server" XDataBind="OFR_Cancel_SerialNumberRequirement.MACAdd_Sticker" RepeatDirection="Horizontal">
                                <asp:ListItem>标准(1张)</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="342">
                            <aspxform:XTextBox id="XTextBox124" runat="server" width="325px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.MACAdd_StickerRemark" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <div align="center">
                                <aspxform:XLabel id="XLabel187" runat="server" text="贴法" Width="28px"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="105">
                            <aspxform:XRadioButtonList id="XRadioButtonList46" runat="server" XDataBind="OFR_Cancel_SerialNumberRequirement.MACAdd_PasteMethod" RepeatDirection="Horizontal">
                                <asp:ListItem>标准</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="488">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox125" runat="server" width="480px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.MACAdd_PasteMethodRemark" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="26px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Cancel_SerialNumberRequirement.Type_CM == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="64">
                            <aspxform:XLabel id="XLabel60" runat="server" text="CM序列号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="52">
                            <aspxform:XLabel id="XLabel189" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox126" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.CM_Start" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="210px" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="50">
                            <aspxform:XLabel id="XLabel190" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox127" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.CM_End" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="210px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel191" runat="server" text="贴纸数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="129">
                            <aspxform:XRadioButtonList id="XRadioButtonList47" runat="server" XDataBind="OFR_Cancel_SerialNumberRequirement.CM_Sticker" RepeatDirection="Horizontal">
                                <asp:ListItem>标准(4张)</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="340">
                            <aspxform:XTextBox id="XTextBox128" runat="server" width="325px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.CM_StickerRemark" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <div align="center">
                                <aspxform:XLabel id="XLabel192" runat="server" text="贴法" Width="28px"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="105">
                            <aspxform:XRadioButtonList id="XRadioButtonList48" runat="server" XDataBind="OFR_Cancel_SerialNumberRequirement.CM_PasteMethod" RepeatDirection="Horizontal">
                                <asp:ListItem>标准</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="488">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox129" runat="server" width="480px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.CM_PasteMethodRemark" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="26px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Cancel_SerialNumberRequirement.Type_CMMAC ==0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" valign="center" rowspan="2" width="64" align="middle">
                            <aspxform:XLabel id="XLabel34" runat="server" text="CMMAC地址"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="52">
                            <aspxform:XLabel id="XLabel35" runat="server" text="BPI证书"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="129">
                            <aspxform:XRadioButtonList id="XRadioButtonList14" runat="server" XDataBind="OFR_Cancel_SerialNumberRequirement.CMMAC_BPI" RepeatDirection="Horizontal">
                                <asp:ListItem>欧标</asp:ListItem>
                                <asp:ListItem>美标</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="340">
                            <aspxform:XTextBox id="XTextBox26" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.CMMAC_BPIRemark" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="50">
                            <aspxform:XLabel id="XLabel66" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="164">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox36" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.CMMAC_Start" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56">
                            <aspxform:XLabel id="XLabel67" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="370">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox64" runat="server" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.CMMAC_End" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="210px" Height="20px" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel68" runat="server" text="贴纸数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" XDataBind="OFR_Cancel_SerialNumberRequirement.CMMAC_Sticker" RepeatDirection="Horizontal">
                                <asp:ListItem>标准(1张)</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox65" runat="server" width="325px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.CMMAC_StickerRemark" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <div align="center">
                                <aspxform:XLabel id="XLabel69" runat="server" text="贴法" Width="28px"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XRadioButtonList id="XRadioButtonList13" runat="server" XDataBind="OFR_Cancel_SerialNumberRequirement.CMMAC_PasteMethod" RepeatDirection="Horizontal">
                                <asp:ListItem>标准</asp:ListItem>
                                <asp:ListItem>特殊</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox id="XTextBox66" runat="server" width="425px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.CMMAC_PasteMethodRemark" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Cancel_SerialNumberRequirement.Type_Other ==0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="64" align="middle">
                            <aspxform:XLabel id="XLabel28" runat="server" text="其他"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1179">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox61" runat="server" width="890px" Max="0" Min="0" HiddenInput="False" XDataBind="OFR_Cancel_SerialNumberRequirement.Other" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1248">
                <tbody>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" id="div2" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="800" align="middle">
                        </td>
                    </tr>
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
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" ValidationGroup="Return" Display="None" ErrorMessage="退回请填写审批信息" ControlToValidate="XCommentsTextBox1">退回</aspxform:XRequiredFieldValidator>
                        </td>
                        <td width="719" align="middle">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" ValidationGroup="Reject" Display="None" ErrorMessage="拒绝请填写审批信息" ControlToValidate="XCommentsTextBox1">拒绝</aspxform:XRequiredFieldValidator>
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
