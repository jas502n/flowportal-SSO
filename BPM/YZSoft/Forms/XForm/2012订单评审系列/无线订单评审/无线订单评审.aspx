<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
    
     protected void Page_Load(object sender, EventArgs e)
        {
           XTextBox4.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox46.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox61.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox49.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
    
           XTextBox43.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
    
    
    
           XTextBox16.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox39.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
    
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
<body style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
    <form runat="server">
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" rowspan="3" width="170">
                            &nbsp;<asp:Image id="Image1" runat="server" ImageUrl="../../../image/logo.gif"></asp:Image>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" rowspan="3" width="909" align="center">
                            <aspxform:XLabel id="XLabel226" runat="server" Font-Names="Tahoma" text="深圳创维无线技术有限公司" Font-Size="Medium" Font-Bold="True" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" bgcolor="white" height="21" width="61" align="right">
                            <p>
                                <aspxform:XLabel id="XLabel227" runat="server" text="版本:" Value ValueToDisplayText></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" width="99">
                            <aspxform:XLabel id="XLabel228" runat="server" text="V2.01" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" height="18" align="right">
                            <p>
                                <aspxform:XLabel id="XLabel229" runat="server" text="发布日期:" Value ValueToDisplayText></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
                            <aspxform:XLabel id="XLabel230" runat="server" text="2014-02-15" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="22" colspan="2" align="center">
                            <aspxform:XLabel id="XLabel11" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_Applicant.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="50" colspan="4" align="center">
                            <div align="center"><asp:Label id="Label1" runat="server" text="产品订单通知书" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label> 
                                <p>
                                    <aspxform:XLabel id="XLabel68" runat="server" text="翻单注意事项：有更改时请销售助理在填写变更说明时，同时更新正式表单中的内容信息！" Font-Bold="False" ForeColor="Red"></aspxform:XLabel>
                                </p>
                            </div>
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
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="OFR_Wuxian_Applicant.HRID" HiddenExpress="1" width="25px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="OFR_Wuxian_Applicant.Dept" HiddenExpress="1" width="6px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px"></aspxform:XTextBox>
                        </td>
                        <td width="132">
                        </td>
                        <td width="46" align="right">
                            <aspxform:XLabel id="XLabel2" runat="server" text="发起人:"></aspxform:XLabel>
                        </td>
                        <td width="95">
                            <aspxform:XTextBox id="XTextBox229" runat="server" XDataBind="OFR_Wuxian_Applicant.Name" width="89px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td width="58" align="right">
                            <aspxform:XLabel id="XLabel3" runat="server" text="发起时间:" Width="54px"></aspxform:XLabel>
                        </td>
                        <td width="152">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="OFR_Wuxian_Applicant.AppDate" width="147px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="18px"></aspxform:XTextBox>
                        </td>
                        <td width="55" align="right">
                            <aspxform:XLabel id="XLabel33" runat="server" text="订单类别:"></aspxform:XLabel>
                        </td>
                        <td width="190">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="OFR_Wuxian_Applicant.OrderType" Width="183px" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">新订单</asp:ListItem>
                                <asp:ListItem>翻单</asp:ListItem>
                                <asp:ListItem>参考订单</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            </span></td>
                        <td width="57" align="right">
                            <aspxform:XLabel id="XLabel332" runat="server" text="文档编号:"></aspxform:XLabel>
                        </td>
                        <td width="163">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="OFR_Wuxian_Applicant.DocumentNum" width="130px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" height="25" width="149" align="right">
                            <aspxform:XLabel id="XLabel202" runat="server" text="订单号:" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td width="145">
                            <aspxform:XTextBox id="XTextBox115" runat="server" XDataBind="OFR_Wuxian_Applicant.OrderNum" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="128px"></aspxform:XTextBox>
                        </td>
                        <td width="259" align="right">
                            <aspxform:XLabel id="XLabel203" runat="server" text="散件订单号:" Value ValueToDisplayText HiddenExpress="1"></aspxform:XLabel>
                        </td>
                        <td width="202">
                            <aspxform:XTextBox id="XTextBox105" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_Applicant.OrderNum_Sanjian" HiddenExpress="1" width="118px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td width="206" align="right">
                            <aspxform:XLabel id="XLabel204" runat="server" text="半成品订单号:" Value ValueToDisplayText HiddenExpress="1" Width="87px"></aspxform:XLabel>
                        </td>
                        <td width="276" colspan="5">
                            <aspxform:XTextBox id="XTextBox106" runat="server" XDataBind="OFR_Wuxian_Applicant.OrderNum_Banchengpin" HiddenExpress="1" width="147px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="18px"></aspxform:XTextBox>
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"></span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_Applicant.OrderType =="新订单"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28" width="80" align="right">
                            <aspxform:XLabel id="XLabel53" runat="server" text="原订单号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="204">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox163" runat="server" XDataBind="OFR_Wuxian_Applicant.OrderNum_Original" width="70px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" CssClass="TextBox" BorderColor="Goldenrod" ReadOnly="True"></aspxform:XTextBox>
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="103px" UseSubmitBehavior="False" PopupWndWidth="800" PopupWndX="100" XDataSource="TableName:V_OFR_Wuxian_Applicant;Filter:State->OFR_Wuxian_Applicant.State" PopupWndY="100" PopupWndHeight="500" Text="导入原订单信息" DisplayColumns="TaskID:电子流ID,;Name:发起人,;SN:电子流编号,;OrderNum:订单号,;DocumentNum:文档编号," DataMap="TaskID->OFR_Wuxian_Applicant.TaskID_Original;OrderNum->OFR_Wuxian_Applicant.OrderNum_Original"></aspxform:XDataBrowserButton>
                            <aspxform:XTextBox id="XTextBox63" runat="server" XDataBind="OFR_Wuxian_Applicant.TaskID_Original" HiddenExpress="1" width="15px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" CssClass="TextBox" NormalCssClass="TextBox" BorderColor="Goldenrod"></aspxform:XTextBox>
                            </span></span></span></span></span></span></span></span></span></span></span></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="96" align="right">
                            <aspxform:XLabel id="XLabel84" runat="server" text="变更方式:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="294">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XRadioButtonList id="XRadioButtonList47" runat="server" XDataBind="OFR_Wuxian_Applicant.ChangeModle" RepeatDirection="Horizontal">
                                <asp:ListItem>无变更</asp:ListItem>
                                <asp:ListItem>永久性替换</asp:ListItem>
                                <asp:ListItem>两种客户化产品并存</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="560">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox46" runat="server" XDataBind="OFR_Wuxian_Applicant.ChangeModleRemark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="510px" Height="19px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_Applicant.OrderType =="新订单"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="80" align="center">
                            <aspxform:XLabel id="XLabel324" runat="server" text="变更说明:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1163">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox4" runat="server" XDataBind="OFR_Wuxian_Applicant.ChangeDescription" ForeColor="Red" width="100%" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" width="945" colspan="3">
                            <aspxform:XLabel id="XLabel65" runat="server" text="销售人员:"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator59" runat="server" Display="None" ErrorMessage="请勾选销售人员" ControlToValidate="XTextBox79" ValidationGroup="开始">销售人员</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请填写订单号" ControlToValidate="XTextBox115" ValidationGroup="订单专员">订单号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请选择原订单号" ControlToValidate="XTextBox63" ValidationGroup="开始" DisableExpress='OFR_Wuxian_Applicant.OrderType == "新订单"'>原订单号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Font-Bold="False" ForeColor Display="None" ErrorMessage="请选择变更方式" ControlToValidate="XRadioButtonList47" ValidationGroup="开始" DisableExpress='OFR_Wuxian_Applicant.OrderType == "新订单"'>变更方式</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="请填写变更说明" ControlToValidate="XTextBox4" ValidationGroup="开始" DisableExpress='OFR_Wuxian_Applicant.OrderType == "新订单"'>变更说明</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" Display="None" ErrorMessage="请填写文档编号" ControlToValidate="XTextBox2" ValidationGroup="开始">文档编号</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="302">
                            <div align="right">
                                <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="85px" PopupWndWidth="800" PopupWndX="100" PopupWndY="100" PopupWndHeight="500" Text="选择销售人员" DataMap="Account->OFR_Wuxian_Salers.HRID;DisplayName->OFR_Wuxian_Salers.Name;MemberFullName->OFR_Wuxian_Salers.FullName;Department->OFR_Wuxian_Salers.Dept" NavigateUrl="~\FormSupport\SelUser.aspx"></aspxform:XSelectUserButton>
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
                            <aspxform:XTextBox id="XTextBox79" runat="server" XDataBind="OFR_Wuxian_Salers.HRID" HiddenExpress="1" width="30px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" BorderColor="Gainsboro" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox134" runat="server" XDataBind="OFR_Wuxian_Salers.Name" width="428px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" BorderColor="Gainsboro" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox135" runat="server" XDataBind="OFR_Wuxian_Salers.Dept" width="243px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" BorderColor="Gainsboro" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox136" runat="server" XDataBind="OFR_Wuxian_Salers.FullName" HiddenExpress="1" width="10px" BorderWidth="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
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
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" HiddenExpress="1" Width="82px" XDataSource="TableName:OFR_Wuxian_BInfo;Filter:TaskID->OFR_Wuxian_Applicant.TaskID_Original;BufferType:RuntimeUpdate" DataMap="SalesArea->OFR_Wuxian_BInfo.SalesArea;SanJian->OFR_Wuxian_BInfo.SanJian;BeiSun->OFR_Wuxian_BInfo.BeiSun;CustomerModel->OFR_Wuxian_BInfo.CustomerModel;CabinetType_Only->OFR_Wuxian_BInfo.CabinetType_Only;ConfigTablesImage->OFR_Wuxian_BInfo.ConfigTablesImage;GoTheWayGoods_Remark->OFR_Wuxian_BInfo.GoTheWayGoods_Remark;CustomerAddr->OFR_Wuxian_BInfo.CustomerAddr;ModeOfDelivery->OFR_Wuxian_BInfo.ModeOfDelivery;ModeOfPayment->OFR_Wuxian_BInfo.ModeOfPayment;OtherRequirements->OFR_Wuxian_BInfo.OtherRequirements;CustomerBrand->OFR_Wuxian_BInfo.CustomerBrand;GoTheWayGoods->OFR_Wuxian_BInfo.GoTheWayGoods;ExportsAtt->OFR_Wuxian_BInfo.ExportsAtt;ProductModel->OFR_Wuxian_BInfo.ProductModel;ModeOfPayment_Remark->OFR_Wuxian_BInfo.ModeOfPayment_Remark;ROSH->OFR_Wuxian_BInfo.ROSH;ShipmentDate->OFR_Wuxian_BInfo.ShipmentDate;CustomerName->OFR_Wuxian_BInfo.CustomerName;CoreNumber->OFR_Wuxian_BInfo.CoreNumber;ProcessingWay->OFR_Wuxian_BInfo.ProcessingWay;Coulor->OFR_Wuxian_BInfo.Coulor;ProductType->OFR_Wuxian_BInfo.ProductType" onchange="javascript:XFormOnChange(this);" DisplayColumn="TaskID" ValueColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox62" runat="server" XDataBind="OFR_Wuxian_Applicant.State" HiddenExpress="1" width="38px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" BorderColor="Gainsboro">有效</aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="OFR_Wuxian_Applicant.SN" HiddenExpress="1" width="31px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请填写项目名称" ControlToValidate="XTextBox234" ValidationGroup="开始">项目名称</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="请选择产品类别" ControlToValidate="XRadioButtonList9" ValidationGroup="开始">产品类别</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="请填写加工方式" ControlToValidate="XRadioButtonList22" ValidationGroup="开始">加工方式</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="请选择RoHS要求" ControlToValidate="XRadioButtonList20" ValidationGroup="开始">RoHS</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" Display="None" ErrorMessage="请填写客户名称" ControlToValidate="XTextBox138" ValidationGroup="开始">客户名称</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" Display="None" ErrorMessage="请选择客户品牌" ControlToValidate="XTextBox114" ValidationGroup="开始">客户品牌</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" Display="None" ErrorMessage="请填写客户型号" ControlToValidate="XTextBox132" ValidationGroup="开始">客户型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" Display="None" ErrorMessage="请填写客户所在地" ControlToValidate="XTextBox140" ValidationGroup="开始">客户所在地</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" Display="None" ErrorMessage="请填写销售地区" ControlToValidate="XTextBox237" ValidationGroup="开始">销售地区</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" Display="None" ErrorMessage="请填写整机颜色" ControlToValidate="XTextBox45" ValidationGroup="开始">整机颜色</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" Display="None" ErrorMessage="请填写销售数量" ControlToValidate="XTextBox117" ValidationGroup="开始">销售数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" Display="None" ErrorMessage="请填写整机备损" ControlToValidate="XTextBox30" ValidationGroup="开始">整机备损</aspxform:XRequiredFieldValidator>
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
                            <aspxform:XLabel id="XLabel359" runat="server" text="项目名称:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid" width="296">
                            <aspxform:XTextBox id="XTextBox234" runat="server" XDataBind="OFR_Wuxian_BInfo.CoreNumber" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="191px" Height="23px" DisableExpress='OFR_Wuxian_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75" align="right">
                            <aspxform:XLabel id="XLabel325" runat="server" text="订单类型:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="458">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="OFR_Wuxian_BInfo.OrderCategory" RepeatDirection="Horizontal" DisableExpress='OFR_Wuxian_Applicant.OrderType == "翻单"'>
                                <asp:ListItem>保税</asp:ListItem>
                                <asp:ListItem>一般贸易</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td width="70" align="right">
                            <aspxform:XLabel id="XLabel4" runat="server" text="产品类别:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="252">
                            <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="OFR_Wuxian_BInfo.ProductType" RepeatDirection="Horizontal" DisableExpress='OFR_Wuxian_Applicant.OrderType == "翻单"'>
                                <asp:ListItem>手机</asp:ListItem>
                                <asp:ListItem>平板电脑</asp:ListItem>
                                <asp:ListItem>模块</asp:ListItem>
                                <asp:ListItem>移动电源</asp:ListItem>
                            </aspxform:XRadioButtonList>
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
                        <td style="BORDER-TOP: #d1dedf 1px solid" width="296">
                            <aspxform:XTextBox id="XTextBox235" runat="server" XDataBind="OFR_Wuxian_BInfo.ProductModel" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Width="180px" DisableExpress='OFR_Wuxian_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75" align="right">
                            <aspxform:XLabel id="XLabel104" runat="server" text="加工方式:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="458">
                            <aspxform:XRadioButtonList id="XRadioButtonList22" runat="server" XDataBind="OFR_Wuxian_BInfo.ProcessingWay" RepeatDirection="Horizontal" DisableExpress='OFR_Wuxian_Applicant.OrderType == "翻单"'>
                                <asp:ListItem>自制</asp:ListItem>
                                <asp:ListItem>外购PCBA</asp:ListItem>
                                <asp:ListItem>外购整机</asp:ListItem>
                                <asp:ListItem>第三方外购</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="70" align="right">
                            <aspxform:XLabel id="XLabel64" runat="server" text="ROHS:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="252">
                            <aspxform:XRadioButtonList id="XRadioButtonList20" runat="server" XDataBind="OFR_Wuxian_BInfo.ROSH" RepeatDirection="Horizontal">
                                <asp:ListItem>要求</asp:ListItem>
                                <asp:ListItem>不要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
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
                            <aspxform:XTextBox id="XTextBox138" runat="server" XDataBind="OFR_Wuxian_BInfo.CustomerName" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="159px" Height="23px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel188" runat="server" text="客户品牌:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="236">
                            <aspxform:XTextBox id="XTextBox114" runat="server" XDataBind="OFR_Wuxian_BInfo.CustomerBrand" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="193px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                            <aspxform:XLabel id="XLabel96" runat="server" text="客户型号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="234">
                            <aspxform:XTextBox id="XTextBox132" runat="server" XDataBind="OFR_Wuxian_BInfo.CustomerModel" width="210px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="70" align="right">
                            <aspxform:XLabel id="XLabel193" runat="server" text="客户所在地:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="252">
                            <aspxform:XTextBox id="XTextBox140" runat="server" XDataBind="OFR_Wuxian_BInfo.CustomerAddr" width="181px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px"></aspxform:XTextBox>
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
                        <td style="BORDER-TOP: #d1dedf 1px solid" width="213">
                            <aspxform:XTextBox id="XTextBox237" runat="server" XDataBind="OFR_Wuxian_BInfo.SalesArea" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Width="180px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel195" runat="server" text="整机颜色:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="236">
                            <aspxform:XTextBox id="XTextBox45" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_BInfo.Coulor" width="200px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61">
                            <aspxform:XLabel id="XLabel83" runat="server" text="销售数量:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="85">
                            <aspxform:XTextBox id="XTextBox117" runat="server" XDataBind="OFR_Wuxian_BInfo.SalesAmount" width="66px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="63">
                            <aspxform:XLabel id="XLabel148" runat="server" text="金机数量:" Value ValueToDisplayText Width="61px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80">
                            <aspxform:XTextBox id="XTextBox89" runat="server" XDataBind="OFR_Wuxian_BInfo.JinJiAmount" width="66px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="70" align="right">
                            <aspxform:XLabel id="XLabel99" runat="server" text="整机备损:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="77">
                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="OFR_Wuxian_BInfo.SwingAmount" width="71px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="62" align="right">
                            <aspxform:XLabel id="XLabel97" runat="server" text="总计数量:" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="107">
                            <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="OFR_Wuxian_BInfo.TotalAmount" width="78px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Express="OFR_Wuxian_BInfo.SalesAmount+OFR_Wuxian_BInfo.JinJiAmount+OFR_Wuxian_BInfo.SwingAmount"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="79" align="right">
                            <aspxform:XLabel id="XLabel46" runat="server" text="散件备损:" Value ValueToDisplayText HiddenExpress="1"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="213">
                            <aspxform:XCheckBox id="XCheckBox17" runat="server" XDataBind="OFR_Wuxian_BInfo.SanJian" HiddenExpress="1" Text="半成品"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox18" runat="server" XDataBind="OFR_Wuxian_BInfo.BeiSun" HiddenExpress="1" Text="散件"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel173" runat="server" text="其他要求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="865">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox103" runat="server" XDataBind="OFR_Wuxian_BInfo.OtherRequirements" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Width="830px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_BInfo.SanJian != 1">
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
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_BInfo.SanJian != 1" dynamicarea="1,1" xdatasource="TableName:OFR_Wuxian_BanChengPin;Filter:TaskID->OFR_Wuxian_Applicant.TaskID_Original" datamap="Name->OFR_Wuxian_BanChengPin.Name;Amount->OFR_Wuxian_BanChengPin.Amount;ModuleNumber->OFR_Wuxian_BanChengPin.ModuleNumber;Remark->OFR_Wuxian_BanChengPin.Remark">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="29">
                            <aspxform:XLabel id="XLabel307" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="262" align="center">
                            <aspxform:XLabel id="XLabel163" runat="server" text="名称" Font-Bold="True" Width="32px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="center">
                            <aspxform:XLabel id="XLabel164" runat="server" text="数量" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="216" align="center">
                            <aspxform:XLabel id="XLabel166" runat="server" text="组件号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="center">
                            <aspxform:XLabel id="XLabel169" runat="server" text="备注/电子流更改号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="17px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox92" runat="server" XDataBind="OFR_Wuxian_BanChengPin.Name" width="240px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox93" runat="server" XDataBind="OFR_Wuxian_BanChengPin.Amount" width="60px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox95" runat="server" XDataBind="OFR_Wuxian_BanChengPin.ModuleNumber" width="200px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox98" runat="server" XDataBind="OFR_Wuxian_BanChengPin.Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="625px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="添加半成品" PrintOut="False" TableName="OFR_Wuxian_BanChengPin"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_BInfo.BeiSun !=1">
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
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_BInfo.BeiSun !=1" dynamicarea="1,1" xdatasource="TableName:OFR_Wuxian_SanJian;Filter:TaskID->OFR_Wuxian_Applicant.TaskID_Original" datamap="Name->OFR_Wuxian_SanJian.Name;Amount->OFR_Wuxian_SanJian.Amount;PN->OFR_Wuxian_SanJian.PN;Remark->OFR_Wuxian_SanJian.Remark">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="17" width="31">
                            <aspxform:XLabel id="XLabel308" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261" align="center">
                            <aspxform:XLabel id="XLabel171" runat="server" text="名称" Font-Bold="True" Width="32px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="center">
                            <aspxform:XLabel id="XLabel172" runat="server" text="数量" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="215" align="center">
                            <aspxform:XLabel id="XLabel175" runat="server" text="P/N" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="center">
                            <aspxform:XLabel id="XLabel177" runat="server" text="备注/电子流更改号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox99" runat="server" XDataBind="OFR_Wuxian_SanJian.Name" width="240px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox100" runat="server" XDataBind="OFR_Wuxian_SanJian.Amount" width="60px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox101" runat="server" XDataBind="OFR_Wuxian_SanJian.PN" width="200px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox102" runat="server" XDataBind="OFR_Wuxian_SanJian.Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="625px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="23">
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator38" runat="server" Display="None" ErrorMessage="您走货方式选择的为SKD，请填写SKD的详细要求信息！" ControlToValidate="XTextBox139" ValidationGroup="开始" DisableExpress='OFR_Wuxian_BInfo.GoTheWayGoods !="SKD"'>走货方式SKD</aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td width="420" align="right">
                        </td>
                        <td width="226" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加散件" PrintOut="False" TableName="OFR_Wuxian_SanJian"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel95" runat="server" text="付款方式:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261">
                            <aspxform:XRadioButtonList id="XRadioButtonList55" runat="server" XDataBind="OFR_Wuxian_BInfo.ModeOfPayment" RepeatDirection="Horizontal">
                                <asp:ListItem>已付定金</asp:ListItem>
                                <asp:ListItem>已有保证金</asp:ListItem>
                                <asp:ListItem>L/C</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="900">
                            <aspxform:XTextBox id="XTextBox131" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_BInfo.ModeOfPayment_Remark" width="800px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel194" runat="server" text="走货方式:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261">
                            <aspxform:XRadioButtonList id="XRadioButtonList53" runat="server" XDataBind="OFR_Wuxian_BInfo.GoTheWayGoods" RepeatDirection="Horizontal" ValidationGroup="开始">
                                <asp:ListItem>CBU</asp:ListItem>
                                <asp:ListItem>SKD</asp:ListItem>
                                <asp:ListItem>CKD</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XLabel id="XLabel225" runat="server" Value ValueToDisplayText ForeColor="Red" Text="勾选SKD,请注明SKD的详细要求"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="900">
                            <aspxform:XTextBox id="XTextBox139" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_BInfo.GoTheWayGoods_Remark" width="559px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
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
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="OFR_Wuxian_BInfo.ModeOfDelivery" RepeatDirection="Horizontal">
                                <asp:ListItem>一次性出货</asp:ListItem>
                                <asp:ListItem>分批次出货要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel25" runat="server" text="期望出货日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="215">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OFR_Wuxian_BInfo.ShipmentDate" CssClass="TextBox" Width="170px" ReadOnly="True" XType="datetime" onchange="javascript:XFormOnChange(this);" XSubType="date"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="82" align="right">
                            <aspxform:XLabel id="XLabel26" runat="server" text="柜型:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="562">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="OFR_Wuxian_BInfo.CabinetType_Only" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            </span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_BInfo.ModeOfDelivery !="分批次出货要求"' dynamicarea="1,1" xdatasource="TableName:OFR_Wuxian_Delivery;Filter:TaskID->OFR_Wuxian_Applicant.TaskID_Original" datamap="Bath->OFR_Wuxian_Delivery.Bath;DeliveryDate->OFR_Wuxian_Delivery.DeliveryDate;Amount->OFR_Wuxian_Delivery.Amount;CabinetType->OFR_Wuxian_Delivery.CabinetType;Remark->OFR_Wuxian_Delivery.Remark">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="29">
                            <aspxform:XLabel id="XLabel77" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="148" align="center">
                            <aspxform:XLabel id="XLabel78" runat="server" text="批次" Font-Bold="True" Width="40px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="195" align="center">
                            <aspxform:XLabel id="XLabel80" runat="server" text="交期" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="center">
                            <aspxform:XLabel id="XLabel135" runat="server" text="数量" Font-Bold="True" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="218" align="center">
                            <aspxform:XLabel id="XLabel327" runat="server" text="柜型" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="562" align="center">
                            <aspxform:XLabel id="XLabel331" runat="server" text="备注" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="21">
                            <aspxform:XGridLineNo id="XGridLineNo6" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="OFR_Wuxian_Delivery.Bath" width="139px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox164" runat="server" XDataBind="OFR_Wuxian_Delivery.DeliveryDate" width="187px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox165" runat="server" XDataBind="OFR_Wuxian_Delivery.Amount" width="75px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox166" runat="server" XDataBind="OFR_Wuxian_Delivery.CabinetType" width="204px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox168" runat="server" XDataBind="OFR_Wuxian_Delivery.Remark" width="530px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton6" runat="server" Text="添加批次" PrintOut="False" TableName="OFR_Wuxian_Delivery"></aspxform:XAddBlockButton>
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
                            <aspxform:XLabel id="XLabel124" runat="server" text="客户指定物料及序列号要求信息" Font-Size="Small" Font-Bold="True" Value ValueToDisplayText ForeColor="Navy"></aspxform:XLabel>
                            <font color="red">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" HiddenExpress="1" Width="75px" XDataSource="TableName:OFR_Wuxian_CustomerRequirement;Filter:TaskID->OFR_Wuxian_Applicant.TaskID_Original;BufferType:RuntimeUpdate" DataMap="CustomerPurchaseMaterial->OFR_Wuxian_CustomerRequirement.CustomerPurchaseMaterial;MyPurchaseMaterial->OFR_Wuxian_CustomerRequirement.MyPurchaseMaterial" onchange="javascript:XFormOnChange(this);" DisplayColumn="TaskID" ValueColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" Display="None" ErrorMessage="请选择付款方式" ControlToValidate="XRadioButtonList55" ValidationGroup="开始">付款方式</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" Display="None" ErrorMessage="请选择走货方式" ControlToValidate="XRadioButtonList53" ValidationGroup="开始">走货方式</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" Display="None" ErrorMessage="请选择交货方式" ControlToValidate="XRadioButtonList5" ValidationGroup="开始">交货方式</aspxform:XRequiredFieldValidator>
                            </font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28" valign="middle" width="131" align="center">
                            <aspxform:XLabel id="XLabel31" runat="server" text="客户指定采购物料要求"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1112">
                            <aspxform:XCheckBox id="XCheckBox19" runat="server" XDataBind="OFR_Wuxian_CustomerRequirement.CustomerPurchaseMaterial" Text="由我司负责采购的物料"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox20" runat="server" XDataBind="OFR_Wuxian_CustomerRequirement.MyPurchaseMaterial" Text="由客户自行采购的物料"></aspxform:XCheckBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_CustomerRequirement.CustomerPurchaseMaterial !=1" dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="35">
                            <aspxform:XLabel id="XLabel36" runat="server" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="310" align="center">
                            <aspxform:XLabel id="XLabel37" runat="server" text="我司采购物料名称" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="center">
                            <aspxform:XLabel id="XLabel38" runat="server" text="数量" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261" align="center">
                            <aspxform:XLabel id="XLabel39" runat="server" text="指定供应商与联系方式" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="575" colspan="2" align="center">
                            <aspxform:XLabel id="XLabel40" runat="server" text="交货时间与方式" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26">
                            <aspxform:XGridLineNo id="XGridLineNo7" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="OFR_Wuxian_CR_MyCompany.MaterialName" width="274px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="OFR_Wuxian_CR_MyCompany.Amount" width="36px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="OFR_Wuxian_CR_MyCompany.Suppliers" width="256px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox53" runat="server" XDataBind="OFR_Wuxian_CR_MyCompany.DeliveryTime" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="560px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton7" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加物料" PrintOut="False" TableName="OFR_Wuxian_CR_MyCompany"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_CustomerRequirement.MyPurchaseMaterial !=1" dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="35">
                            <aspxform:XLabel id="XLabel41" runat="server" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="310" align="center">
                            <aspxform:XLabel id="XLabel42" runat="server" text="客户采购物料名称" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="center">
                            <aspxform:XLabel id="XLabel43" runat="server" text="数量" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261" align="center">
                            <aspxform:XLabel id="XLabel44" runat="server" text="指定供应商与联系方式" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="575" colspan="2" align="center">
                            <aspxform:XLabel id="XLabel45" runat="server" text="交货时间与方式" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22">
                            <aspxform:XGridLineNo id="XGridLineNo8" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="OFR_Wuxian_CR_Customer.MaterialName" width="277px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="OFR_Wuxian_CR_Customer.Amount" width="36px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox56" runat="server" XDataBind="OFR_Wuxian_CR_Customer.Suppliers" width="253px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox57" runat="server" XDataBind="OFR_Wuxian_CR_Customer.DeliveryTime" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="560px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton8" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加物料" PrintOut="False" TableName="OFR_Wuxian_CR_Customer"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" valign="middle" width="89" align="center">
                            <aspxform:XLabel id="XLabel32" runat="server" text="序列号要求" Font-Size="X-Small" Font-Bold="True" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="411">
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.Type_SerialNumber" Text="序列号"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.Type_IMEI1" Text="IMEI1"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox6" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.Type_IMEI2" Text="IMEI2"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox7" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.Type_WIFI1" Text="WIFI1"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox8" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.Type_WIFI2" Text="WIFI2"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox5" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.Type_BT" Text="BT"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox9" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.Type_Other" Text="其他"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="740">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox116" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.Remark" width="695px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_SerialNumberRequirement.Type_SerialNumber != 1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="63">
                            <aspxform:XLabel id="XLabel47" runat="server" text="序列号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="53">
                            <aspxform:XLabel id="XLabel13" runat="server" text="客户提供" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="51">
                            <aspxform:XLabel id="XLabel51" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="491">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox22" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.SerialNumber_Start_Customer" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="51">
                            <aspxform:XLabel id="XLabel16" runat="server" text="我司提供" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="51">
                            <aspxform:XLabel id="XLabel17" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="467">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox82" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_SerialNumberRequirement.SerialNumber_Start_Company" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XLabel id="XLabel345" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox181" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.SerialNumber_End_Customer" width="388px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel18" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox5" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_SerialNumberRequirement.SerialNumber_End_Company" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_SerialNumberRequirement.Type_IMEI1 != 1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="63">
                            <aspxform:XLabel id="XLabel19" runat="server" text="IMIE1" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="53">
                            <aspxform:XLabel id="XLabel20" runat="server" text="客户提供" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="51">
                            <aspxform:XLabel id="XLabel21" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="491">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox6" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI1_Start_Customer" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="51">
                            <aspxform:XLabel id="XLabel22" runat="server" text="我司提供" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="51">
                            <aspxform:XLabel id="XLabel23" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="467">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox9" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI1_Start_Company" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel24" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI1_End_Customer" width="388px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel29" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox15" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI1_End_Company" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_SerialNumberRequirement.Type_IMEI2 != 1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="63">
                            <aspxform:XLabel id="XLabel30" runat="server" text="IMIE2" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="53">
                            <aspxform:XLabel id="XLabel48" runat="server" text="客户提供" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="51">
                            <aspxform:XLabel id="XLabel52" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="491">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox16" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI2_Start_Customer" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="51">
                            <aspxform:XLabel id="XLabel56" runat="server" text="我司提供" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="51">
                            <aspxform:XLabel id="XLabel57" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="467">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox17" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI2_Start_Company" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XLabel id="XLabel58" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI2_End_Customer" width="388px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel59" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox19" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI2_End_Company" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_SerialNumberRequirement.Type_WIFI1 !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="63">
                            <aspxform:XLabel id="XLabel67" runat="server" text="WIFI1" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="53">
                            <aspxform:XLabel id="XLabel69" runat="server" text="客户提供" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="51">
                            <aspxform:XLabel id="XLabel101" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="491">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox24" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI1_Start_Customer" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="51">
                            <aspxform:XLabel id="XLabel106" runat="server" text="我司提供" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="51">
                            <aspxform:XLabel id="XLabel107" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="467">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox28" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI1_Start_Company" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XLabel id="XLabel108" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI1_End_Customer" width="388px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel109" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox32" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI1_End_Company" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_SerialNumberRequirement.Type_WIFI2 !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="63">
                            <aspxform:XLabel id="XLabel110" runat="server" text="WIFI2" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="53">
                            <aspxform:XLabel id="XLabel111" runat="server" text="客户提供" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="51">
                            <aspxform:XLabel id="XLabel112" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="491">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox33" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI2_Start_Customer" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="51">
                            <aspxform:XLabel id="XLabel113" runat="server" text="我司提供" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="51">
                            <aspxform:XLabel id="XLabel114" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="467">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox34" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI2_Start_Company" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XLabel id="XLabel117" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI2_End_Customer" width="388px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel121" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox37" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI2_End_Company" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_SerialNumberRequirement.Type_BT !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="63">
                            <aspxform:XLabel id="XLabel122" runat="server" text="BT" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="53">
                            <aspxform:XLabel id="XLabel123" runat="server" text="客户提供" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="51">
                            <aspxform:XLabel id="XLabel125" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="491">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox38" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.BT_Start_Customer" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="51">
                            <aspxform:XLabel id="XLabel126" runat="server" text="我司提供" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="51">
                            <aspxform:XLabel id="XLabel129" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="467">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox39" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_SerialNumberRequirement.BT_Start_Company" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XLabel id="XLabel130" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.BT_End_Customer" width="388px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel143" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox41" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_SerialNumberRequirement.BT_End_Company" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="388px" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_SerialNumberRequirement.Type_Other !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="64" align="center">
                            <aspxform:XLabel id="XLabel28" runat="server" text="其他"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1179">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox61" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.Other" width="1100px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="89">
                            <aspxform:XLabel id="XLabel5" runat="server" text="备机要求" Font-Size="Small" Font-Bold="True" ForeColor="Navy"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="221">
                            <aspxform:XCheckBoxList id="XCheckBoxList7" runat="server" XDataBind="OFR_Wuxian_AlternateMachineRequirment.Type" RepeatDirection="Horizontal">
                                <asp:ListItem>认证机器</asp:ListItem>
                                <asp:ListItem>研发备机</asp:ListItem>
                                <asp:ListItem>生产备机</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="930">
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" HiddenExpress="1" XDataSource="TableName:OFR_Wuxian_AlternateMachineRequirment;Filter:TaskID->OFR_Wuxian_Applicant.TaskID_Original;BufferType:RuntimeUpdate" DataMap="Type->OFR_Wuxian_AlternateMachineRequirment.Type;CertificationMachine->OFR_Wuxian_AlternateMachineRequirment.CertificationMachine;CertificationMachine_Reason->OFR_Wuxian_AlternateMachineRequirment.CertificationMachine_Reason;RDMachine->OFR_Wuxian_AlternateMachineRequirment.RDMachine;RDMachine_Reason->OFR_Wuxian_AlternateMachineRequirment.RDMachine_Reason;ProcuctMachine->OFR_Wuxian_AlternateMachineRequirment.ProcuctMachine;ProcuctMachine_Reason->OFR_Wuxian_AlternateMachineRequirment.ProcuctMachine_Reason" DisplayColumn="TaskID" ValueColumn="TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
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
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_AlternateMachineRequirment.Type =="" || OFR_Wuxian_AlternateMachineRequirment.Type=="研发备机"|| OFR_Wuxian_AlternateMachineRequirment.Type=="生产备机"|| OFR_Wuxian_AlternateMachineRequirment.Type=="研发备机,生产备机"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="center">
                            <div align="center">
                                <aspxform:XLabel id="XLabel9" runat="server" text="认证机器"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="748">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="OFR_Wuxian_AlternateMachineRequirment.CertificationMachine" ForeColor="Red" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="650px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="403">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="OFR_Wuxian_AlternateMachineRequirment.CertificationMachine_Reason" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="380px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_AlternateMachineRequirment.Type =="" || OFR_Wuxian_AlternateMachineRequirment.Type=="认证机器"|| OFR_Wuxian_AlternateMachineRequirment.Type=="生产备机"|| OFR_Wuxian_AlternateMachineRequirment.Type=="认证机器,生产备机"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="center">
                            <aspxform:XLabel id="XLabel10" runat="server" text="研发备机"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="748">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="OFR_Wuxian_AlternateMachineRequirment.RDMachine" ForeColor="Red" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="650px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="403">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="OFR_Wuxian_AlternateMachineRequirment.RDMachine_Reason" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="380px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_AlternateMachineRequirment.Type =="" || OFR_Wuxian_AlternateMachineRequirment.Type=="认证机器"|| OFR_Wuxian_AlternateMachineRequirment.Type=="研发备机"|| OFR_Wuxian_AlternateMachineRequirment.Type=="认证机器,研发备机"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89">
                            <div align="center">
                                <aspxform:XLabel id="XLabel12" runat="server" text="生产备机"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="748">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="OFR_Wuxian_AlternateMachineRequirment.ProcuctMachine" ForeColor="Red" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="650px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="403">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="OFR_Wuxian_AlternateMachineRequirment.ProcuctMachine_Reason" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="380px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="1248" colspan="2">
                            <aspxform:XLabel id="XLabel34" runat="server" text="出口规格书要求" Font-Size="Small" Font-Bold="True" Value ValueToDisplayText ForeColor="Navy"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" Display="None" ErrorMessage="请上传出口规格书" ControlToValidate="XMSNAttachments3" ValidationGroup="开始">出口规格书</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div style="VISIBILITY: visible" id="div1" align="center">
                <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="89" align="center">
                                <aspxform:XLabel id="XLabel82" runat="server" text="出口规格书" Value ValueToDisplayText></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1154">
                                <aspxform:XMSNAttachments id="XMSNAttachments3" runat="server" XDataBind="OFR_Wuxian_BInfo.ExportsAtt"></aspxform:XMSNAttachments>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="1248" colspan="2">
                            <aspxform:XLabel id="XLabel70" runat="server" text="配置表图片" Font-Size="Small" Font-Bold="True" ForeColor="Navy"></aspxform:XLabel>
                            <input id="bt2" onclick="Toggle('bt2','div2')" value="隐藏" type="button" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" id="div2" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="800" align="center">
                            <aspxform:XImageAttachment id="XImageAttachment1" runat="server" XDataBind="OFR_Wuxian_BInfo.ConfigTablesImage" BorderWidth="3px" Width="133px" Height="128px" BorderColor="Gainsboro" BorderStyle="Solid" PrintOut="True" MaximumFileSize="MaximumFileSize"></aspxform:XImageAttachment>
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
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" height="27">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="98">
                            <aspxform:XLabel id="XLabel71" runat="server" text="订单评审参考资料"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1145">
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="OFR_Wuxian_BInfo.ReferenceAtt"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="98" align="center">
                            <aspxform:XLabel id="XLabel63" runat="server" text="资料说明"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1145">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox88" runat="server" XDataBind="OFR_Wuxian_BInfo.ReferenceAttRemark" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="81">
                            <aspxform:XLabel id="XLabel209" runat="server" text="BOM提交" Font-Size="Small" Font-Bold="True" Value ValueToDisplayText ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="300">
                            <aspxform:XCheckBox id="XCheckBox11" runat="server" XDataBind="OFR_Wuxian_BOMAtt.MainYorN" Text="硬件"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox13" runat="server" XDataBind="OFR_Wuxian_BOMAtt.StructYorN" Text="结构"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox14" runat="server" XDataBind="OFR_Wuxian_BOMAtt.PackageYorN" Text="包装"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox15" runat="server" XDataBind="OFR_Wuxian_BOMAtt.ElectronYorN" Text="电子"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="73" align="right">
                            <aspxform:XLabel id="XLabel210" runat="server" text="硬件设计师:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" width="79">
                            <aspxform:XTextBox id="XTextBox96" runat="server" XDataBind="OFR_Wuxian_BOMAtt.MainYorN_DesignerName" width="77px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="54">
                            <aspxform:XSelectUserButton id="XSelectUserButton4" runat="server" Width="22px" Height="20px" UseSubmitBehavior="False" PopupWndWidth="800" PopupWndX="100" PopupWndY="100" PopupWndHeight="500" Text="..." DataMap="Account->OFR_Wuxian_BOMAtt.MainYorN_Designer;DisplayName->OFR_Wuxian_BOMAtt.MainYorN_DesignerName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox97" runat="server" XDataBind="OFR_Wuxian_BOMAtt.MainYorN_Designer" width="21px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="68">
                            <aspxform:XLabel id="XLabel211" runat="server" text="结构设计师:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="82">
                            <aspxform:XTextBox id="XTextBox107" runat="server" XDataBind="OFR_Wuxian_BOMAtt.StructYorN_DesignerName" width="77px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="488">
                            <aspxform:XSelectUserButton id="XSelectUserButton5" runat="server" Width="21px" DataMap="Account->OFR_Wuxian_BOMAtt.StructYorN_Designer;DisplayName->OFR_Wuxian_BOMAtt.StructYorN_DesignerName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox109" runat="server" XDataBind="OFR_Wuxian_BOMAtt.StructYorN_Designer" width="25px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" height="27" hiddenexpress="OFR_Wuxian_BOMAtt.MainYorN !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="98">
                            <aspxform:XLabel id="XLabel205" runat="server" text="硬件BOM资料" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1145">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="OFR_Wuxian_BOMAtt.Main_Att"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" height="27" hiddenexpress="OFR_Wuxian_BOMAtt.StructYorN !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="98">
                            <aspxform:XLabel id="XLabel206" runat="server" text="结构BOM资料" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1145">
                            <aspxform:XMSNAttachments id="XMSNAttachments4" runat="server" XDataBind="OFR_Wuxian_BOMAtt.Struct_Att"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" height="27" hiddenexpress="OFR_Wuxian_BOMAtt.Electron_Att !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="98">
                            <aspxform:XLabel id="XLabel207" runat="server" text="电子BOM资料" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1145">
                            <aspxform:XMSNAttachments id="XMSNAttachments5" runat="server" XDataBind="OFR_Wuxian_BOMAtt.Electron_Att"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" height="27" hiddenexpress="OFR_Wuxian_BOMAtt.PackageYorN !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="98">
                            <aspxform:XLabel id="XLabel208" runat="server" text="包装BOM资料" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1145">
                            <aspxform:XMSNAttachments id="XMSNAttachments6" runat="server" XDataBind="OFR_Wuxian_BOMAtt.Package_Att"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="81">
                            <aspxform:XLabel id="XLabel119" runat="server" text="技术评审" Font-Size="Small" Font-Bold="True" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="300">
                            <aspxform:XCheckBox id="XCheckBox24" runat="server" XDataBind="OFR_Wuxian_Review_HD.MainYorN" Text="硬件"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox4" runat="server" XDataBind="OFR_Wuxian_Review_HD.SoftYorN" Text="软件"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox22" runat="server" XDataBind="OFR_Wuxian_Review_HD.StructYorN" Text="结构"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="OFR_Wuxian_Review_HD.PackageYorN" Text="包装"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox10" runat="server" XDataBind="OFR_Wuxian_Review_HD.ElectronYorN" Text="电子"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="73" align="right">
                            <aspxform:XLabel id="XLabel120" runat="server" text="硬件设计师:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" width="79">
                            <aspxform:XTextBox id="XTextBox64" runat="server" XDataBind="OFR_Wuxian_Review_HD.MainYorN_DesignerName" width="77px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="54">
                            <aspxform:XSelectUserButton id="XSelectUserButton3" runat="server" Width="22px" Height="20px" UseSubmitBehavior="False" PopupWndWidth="800" PopupWndX="100" PopupWndY="100" PopupWndHeight="500" Text="..." DataMap="Account->OFR_Wuxian_Review_HD.MainYorN_Designer;DisplayName->OFR_Wuxian_Review_HD.MainYorN_DesignerName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox65" runat="server" XDataBind="OFR_Wuxian_Review_HD.MainYorN_Designer" width="21px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="68">
                            <aspxform:XLabel id="XLabel116" runat="server" text="结构设计师:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="82">
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="OFR_Wuxian_Review_HD.StructYorN_DesignerName" width="77px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="488">
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" DataMap="Account->OFR_Wuxian_Review_HD.StructYorN_Designer;DisplayName->OFR_Wuxian_Review_HD.StructYorN_DesignerName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="OFR_Wuxian_Review_HD.StructYorN_Designer" width="25px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel73" runat="server" text="硬件评审" Font-Size="Small" Font-Bold="True" ForeColor="Black"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="请选择认证要求" ControlToValidate="XRadioButtonList26" ValidationGroup="项目经理(确认)">认证要求</aspxform:XRequiredFieldValidator>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81">
                            <aspxform:XLabel id="XLabel74" runat="server" text="订单配置类型"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1161">
                            <aspxform:XRadioButtonList id="XRadioButtonList16" runat="server" XDataBind="OFR_Wuxian_Review_HD.OrderConfigType" RepeatDirection="Horizontal">
                                <asp:ListItem>A类(翻单)</asp:ListItem>
                                <asp:ListItem>C类(新配置机型)</asp:ListItem>
                                <asp:ListItem>D类(未批量新机芯)</asp:ListItem>
                            </aspxform:XRadioButtonList>
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
                            <aspxform:XRadioButtonList id="XRadioButtonList17" runat="server" XDataBind="OFR_Wuxian_Review_HD.SemifinishedProducts" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="194">
                            <aspxform:XTextBox id="XTextBox68" runat="server" XDataBind="OFR_Wuxian_Review_HD.SemifinishedProducts_Remark" width="138px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="65">
                            <aspxform:XLabel id="XLabel100" runat="server" text="工艺评审"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="107">
                            <aspxform:XRadioButtonList id="XRadioButtonList31" runat="server" XDataBind="OFR_Wuxian_Review_HD.TechnologyReview" RepeatDirection="Horizontal">
                                <asp:ListItem>完成</asp:ListItem>
                                <asp:ListItem>未完成</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="248">
                            <aspxform:XTextBox id="XTextBox73" runat="server" XDataBind="OFR_Wuxian_Review_HD.TechnologyReview_Remark" width="188px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="59">
                            <div align="left">
                                <aspxform:XLabel id="XLabel85" runat="server" text="认证要求"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="143">
                            <aspxform:XRadioButtonList id="XRadioButtonList26" runat="server" XDataBind="OFR_Wuxian_Review_HD.Certication" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>完成</asp:ListItem>
                                <asp:ListItem>未完成</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="248">
                            <aspxform:XTextBox id="XTextBox70" runat="server" XDataBind="OFR_Wuxian_Review_HD.Certication_Remark" width="185px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
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
                            <aspxform:XRadioButtonList id="XRadioButtonList30" runat="server" XDataBind="OFR_Wuxian_Review_HD.SplitOrder" RepeatDirection="Horizontal">
                                <asp:ListItem>否</asp:ListItem>
                                <asp:ListItem>是</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="194">
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="OFR_Wuxian_Review_HD.SplitOrder_Remark" width="185px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="64">
                            <div align="left">
                                <aspxform:XLabel id="XLabel54" runat="server" text="需要样机"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="106">
                            <aspxform:XRadioButtonList id="XRadioButtonList18" runat="server" XDataBind="OFR_Wuxian_Review_HD.SampleMachine" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="310" align="left">
                            <div align="right">
                                <aspxform:XLabel id="XLabel35" runat="server" text="关键物料首次使用" Value ValueToDisplayText></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79">
                            <aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" XDataBind="OFR_Wuxian_Review_HD.DDR" RepeatDirection="Horizontal">
                                <asp:ListItem>否</asp:ListItem>
                                <asp:ListItem>是</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="312">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="OFR_Wuxian_Review_HD.DDR_Remark" width="185px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
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
                            <aspxform:XRadioButtonList id="XRadioButtonList32" runat="server" XDataBind="OFR_Wuxian_Review_HD.BOMBPM" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator37" runat="server" Display="None" ErrorMessage="请勾选是否有变更电子流！" ControlToValidate="XRadioButtonList32" ValidationGroup="硬件签单工程师">变更电子流</aspxform:XRequiredFieldValidator>
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
                            <aspxform:XRadioButtonList id="XRadioButtonList33" runat="server" XDataBind="OFR_Wuxian_Review_HD.SealedMaterial" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="707">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator27" runat="server" Display="None" ErrorMessage="请选择是否有未封样物料!" ControlToValidate="XRadioButtonList33" ValidationGroup="硬件签单工程师">未封样物料</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator43" runat="server" Display="None" ErrorMessage="请选择预计封祥时间!" ControlToValidate="XDateTimePicker3" ValidationGroup="硬件签单工程师" DisableExpress='OFR_Wuxian_Review_HD.SealedMaterial !="有"'>预计封祥时间</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_Review_HD.BOMBPM !="有"' dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="57" width="30" align="center">
                            <aspxform:XLabel id="XLabel118" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="162" align="center">
                            <aspxform:XLabel id="XLabel127" runat="server" text="电子流编号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1048" align="center">
                            <aspxform:XLabel id="XLabel132" runat="server" text="更改内容说明" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XGridLineNo id="XGridLineNo3" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox74" runat="server" XDataBind="OFR_Wuxian_Review_HD_BOMBPM.BPMNumber" width="140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox77" runat="server" XDataBind="OFR_Wuxian_Review_HD_BOMBPM.BPMChangeRemark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="1002px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton3" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加变更项" PrintOut="False" TableName="OFR_Wuxian_Review_HD_BOMBPM"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_Review_HD.SealedMaterial !="有"' dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="29">
                            <aspxform:XLabel id="XLabel27" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="204" align="center">
                            <aspxform:XLabel id="XLabel92" runat="server" text="物料类别" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="709" align="center">
                            <aspxform:XLabel id="XLabel131" runat="server" text="物料说明" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="155" align="center">
                            <aspxform:XLabel id="XLabel133" runat="server" text="预计封样时间" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="137" align="center">
                            <aspxform:XLabel id="XLabel134" runat="server" text="设计师" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="21">
                            <aspxform:XGridLineNo id="XGridLineNo4" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox67" runat="server" XDataBind="OFR_Wuxian_Review_HD_SealedMaterial.MaterialType" width="202px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox78" runat="server" XDataBind="OFR_Wuxian_Review_HD_SealedMaterial.MaterialRemark" width="665px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="OFR_Wuxian_Review_HD_SealedMaterial.SealedTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="center">
                            <aspxform:XTextBox id="XTextBox80" runat="server" XDataBind="OFR_Wuxian_Review_HD_SealedMaterial.Designer" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="100px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator26" runat="server" Display="None" ErrorMessage="请填写预计封样时间!" ControlToValidate="XDateTimePicker3" ValidationGroup="硬件签单工程师" DisableExpress='OFR_Wuxian_Review_HD_SealedMaterial.MaterialType ==""'>预计封样时间</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton4" runat="server" Width="105px" Height="21px" UseSubmitBehavior="False" Text="添加未封样物料" PrintOut="False" TableName="OFR_Wuxian_Review_HD_SealedMaterial" OnClientClick="XFormShell.XFormAgent.AppendBlock(this,'OFR_Attachment1_SJ');return false;"></aspxform:XAddBlockButton>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox84" runat="server" XDataBind="OFR_Wuxian_Review_HD.OtherReview" width="1140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox85" runat="server" XDataBind="OFR_Wuxian_Review_HD.ElectronicsBOM" width="1140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel137" runat="server" text="电子评审" Font-Size="Small" Font-Bold="True" Value ValueToDisplayText ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel213" runat="server" text="变更电子流"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="275">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="OFR_Wuxian_BOMAtt.BOMBPM" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator39" runat="server" Display="None" ErrorMessage="请勾选是否有变更电子流！" ControlToValidate="XRadioButtonList2" ValidationGroup="电子签单工程师">变更电子流</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="65" align="right">
                            <div align="left">
                                <div align="left">
                                    <div align="left">
                                        <aspxform:XLabel id="XLabel214" runat="server" text="未封样物料"></aspxform:XLabel>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="109" colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList24" runat="server" XDataBind="OFR_Wuxian_BOMAtt.SealedMaterial" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="707">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator40" runat="server" Display="None" ErrorMessage="请选择是否有未封样物料!" ControlToValidate="XRadioButtonList24" ValidationGroup="电子签单工程师">未封样物料</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_BOMAtt.BOMBPM !="有"' dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="57" width="30" align="center">
                            <aspxform:XLabel id="XLabel215" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="162" align="center">
                            <aspxform:XLabel id="XLabel216" runat="server" text="电子流编号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1048" align="center">
                            <aspxform:XLabel id="XLabel217" runat="server" text="更改内容说明" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XGridLineNo id="XGridLineNo12" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox110" runat="server" XDataBind="OFR_Wuxian_Review_Electron_BOMBPM.BPMNumber" width="140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox118" runat="server" XDataBind="OFR_Wuxian_Review_Electron_BOMBPM.BPMChangeRemark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="1002px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton17" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加变更项" PrintOut="False" TableName="OFR_Wuxian_Review_Electron_BOMBPM"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_BOMAtt.SealedMaterial !="有"' dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="29">
                            <aspxform:XLabel id="XLabel218" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="204" align="center">
                            <aspxform:XLabel id="XLabel219" runat="server" text="物料类别" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="709" align="center">
                            <aspxform:XLabel id="XLabel220" runat="server" text="物料说明" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="155" align="center">
                            <aspxform:XLabel id="XLabel221" runat="server" text="预计封样时间" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="137" align="center">
                            <aspxform:XLabel id="XLabel222" runat="server" text="设计师" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22">
                            <aspxform:XGridLineNo id="XGridLineNo13" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox119" runat="server" XDataBind="OFR_Wuxian_Review_Electron_SealedMaterial.MaterialType" width="202px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox120" runat="server" XDataBind="OFR_Wuxian_Review_Electron_SealedMaterial.MaterialRemark" width="665px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker11" runat="server" XDataBind="OFR_Wuxian_Review_Electron_SealedMaterial.SealedTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="center">
                            <aspxform:XTextBox id="XTextBox121" runat="server" XDataBind="OFR_Wuxian_Review_Electron_SealedMaterial.Designer" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="100px"></aspxform:XTextBox>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton18" runat="server" Width="105px" Height="21px" UseSubmitBehavior="False" Text="添加未封样物料" PrintOut="False" TableName="OFR_Wuxian_Review_Electron_SealedMaterial" OnClientClick="XFormShell.XFormAgent.AppendBlock(this,'OFR_Attachment1_SJ');return false;"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81">
                            <aspxform:XLabel id="XLabel223" runat="server" text="其他评审意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox122" runat="server" XDataBind="OFR_Wuxian_BOMAtt.OtherReview" width="1140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81">
                            <aspxform:XLabel id="XLabel224" runat="server" text="电子BOM签发"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox123" runat="server" XDataBind="OFR_Wuxian_BOMAtt.ElectronicsBOM" width="1140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel212" runat="server" text="软件评审" Font-Size="Small" Font-Bold="True" ForeColor="Black"></aspxform:XLabel>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="250">
                            <aspxform:XRadioButtonList id="XRadioButtonList34" runat="server" XDataBind="OFR_Wuxian_Review_Software.OrderSoftwareType" RepeatDirection="Horizontal">
                                <asp:ListItem>成熟软件</asp:ListItem>
                                <asp:ListItem>新开发软件</asp:ListItem>
                                <asp:ListItem>第三方软件</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="137" align="right">
                            <aspxform:XLabel id="XLabel140" runat="server" text="订单软件发布时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="181">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox59" runat="server" XDataBind="OFR_Wuxian_Review_Software.PublishTime" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="66" align="center">
                            <aspxform:XLabel id="XLabel62" runat="server" text="同订单"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="103">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox130" runat="server" XDataBind="OFR_Wuxian_Review_Software.SameOrderNuber" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="91px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="86" align="right">
                            <aspxform:XLabel id="XLabel154" runat="server" text="软件状态"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="322">
                            <aspxform:XRadioButtonList id="XRadioButtonList36" runat="server" XDataBind="OFR_Wuxian_Review_Software.SoftwareState" RepeatDirection="Horizontal">
                                <asp:ListItem>研发阶段</asp:ListItem>
                                <asp:ListItem>客户确认阶段</asp:ListItem>
                                <asp:ListItem>第三方未提供软件</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel61" runat="server" text="生产写码软件" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="154">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="OFR_Wuxian_Review_Software.ProductCodeSoft_YOrN" RepeatDirection="Horizontal">
                                <asp:ListItem>不提供</asp:ListItem>
                                <asp:ListItem>提供及时间</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="135" align="right">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox42" runat="server" XDataBind="OFR_Wuxian_Review_Software.ProductCodeSoft_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Width="125px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="163">
                            <aspxform:XLabel id="XLabel60" runat="server" text="生产测试及写码作业指导书" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="71">
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="OFR_Wuxian_Review_Software.ProductTest_YOrN" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="136">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox442" runat="server" XDataBind="OFR_Wuxian_Review_Software.ProductTest_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Width="125px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="94" align="center">
                            <aspxform:XLabel id="XLabel155" runat="server" text="说明书更改要求"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="78">
                            <aspxform:XRadioButtonList id="XRadioButtonList37" runat="server" XDataBind="OFR_Wuxian_Review_Software.SpecificationChange" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="122">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox86" runat="server" XDataBind="OFR_Wuxian_Review_Software.SpecificationChange_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" id="div2" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel156" runat="server" text="条码打印选项"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="154">
                            <aspxform:XRadioButtonList id="XRadioButtonList39" runat="server" XDataBind="OFR_Wuxian_Review_Software.PrintSelect" RepeatDirection="Horizontal">
                                <asp:ListItem>离线打印</asp:ListItem>
                                <asp:ListItem>在线打印</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="136">
                            <aspxform:XLabel id="XLabel158" runat="server" text="生产写码软件包含内容" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="472">
                            <aspxform:XCheckBoxList id="XCheckBoxList10" runat="server" XDataBind="OFR_Wuxian_Review_Software.ProductCodeSoftContent" RepeatDirection="Horizontal">
                                <asp:ListItem>串码</asp:ListItem>
                                <asp:ListItem>IMEI</asp:ListItem>
                                <asp:ListItem>WIFI</asp:ListItem>
                                <asp:ListItem>WIFI_MAC地址</asp:ListItem>
                                <asp:ListItem>蓝牙MAC地址</asp:ListItem>
                                <asp:ListItem>其他号码</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="391">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox87" runat="server" XDataBind="OFR_Wuxian_Review_Software.ProductCodeSoftContent_Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="125px"></aspxform:XTextBox>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox90" runat="server" XDataBind="OFR_Wuxian_Review_Software.OtherReview" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XCheckBoxList id="XCheckBoxList3" runat="server" XDataBind="OFR_Wuxian_Review_Struct.StructSelect" RepeatDirection="Horizontal">
                                <asp:ListItem>物料替换</asp:ListItem>
                                <asp:ListItem>增加物料</asp:ListItem>
                                <asp:ListItem>删除物料</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="241" align="right">
                            <aspxform:XLabel id="XLabel165" runat="server" text="是否有新物料需要助理跟进" Value ValueToDisplayText HiddenExpress="1"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="411">
                            <aspxform:XRadioButtonList id="XRadioButtonList59" runat="server" XDataBind="OFR_Wuxian_Review_Struct.MaterialFollowUp" HiddenExpress="1" RepeatDirection="Horizontal">
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
                            <aspxform:XRadioButtonList id="XRadioButtonList50" runat="server" XDataBind="OFR_Wuxian_Review_Struct.StructType" RepeatDirection="Horizontal">
                                <asp:ListItem>A类(翻单)</asp:ListItem>
                                <asp:ListItem>B类(客户化更改)</asp:ListItem>
                                <asp:ListItem>C类(新配置)</asp:ListItem>
                                <asp:ListItem Value="D类(新模具)">D类(新模具)</asp:ListItem>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="167" align="center">
                            <aspxform:XLabel id="XLabel176" runat="server" text="ECN更改类型" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="15" colspan="3">
                            <div align="center">
                                <aspxform:XLabel id="XLabel174" runat="server" Font-Bold="True" Text="新物料状况"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="141" align="center">
                            <aspxform:XLabel id="XLabel182" runat="server" text="SAP录入" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113" align="center">
                            <aspxform:XLabel id="XLabel183" runat="server" text="封样" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="152" align="center">
                            <aspxform:XLabel id="XLabel184" runat="server" text="计划封样时间" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_Review_Struct.StructSelect == "" || OFR_Wuxian_Review_Struct.StructSelect =="增加物料" || OFR_Wuxian_Review_Struct.StructSelect =="删除物料" ||OFR_Wuxian_Review_Struct.StructSelect =="增加物料,删除物料"' dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="81">
                            <div align="center">
                                <aspxform:XLabel id="XLabel178" runat="server" text="物料替换" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="577">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox108" runat="server" XDataBind="OFR_Wuxian_Review_Struct_MaterialChange.MaterialChangeContent" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="555px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <div align="center">
                                <aspxform:XCheckBoxList id="XCheckBoxList1" runat="server" XDataBind="OFR_Wuxian_Review_Struct_MaterialChange.MaterialChange_ECN" RepeatDirection="Horizontal">
                                    <asp:ListItem>产品BOM</asp:ListItem>
                                    <asp:ListItem>销单BOM</asp:ListItem>
                                </aspxform:XCheckBoxList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="141">
                            <div align="center">
                                <aspxform:XRadioButtonList id="XRadioButtonList52" runat="server" XDataBind="OFR_Wuxian_Review_Struct_MaterialChange.MaterialChange_SAP" RepeatDirection="Horizontal">
                                    <asp:ListItem>需新申请</asp:ListItem>
                                    <asp:ListItem>无</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113" align="center">
                            <aspxform:XRadioButtonList id="XRadioButtonList44" runat="server" XDataBind="OFR_Wuxian_Review_Struct_MaterialChange.MaterialChange_Sealed" RepeatDirection="Horizontal">
                                <asp:ListItem>需封样</asp:ListItem>
                                <asp:ListItem>无</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="152">
                            <aspxform:XDateTimePicker id="XDateTimePicker6" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OFR_Wuxian_Review_Struct_MaterialChange.MaterialChange_SealedTime" BorderWidth="1px" Width="129px" BorderColor="Gainsboro" ReadOnly="True" XType="datetime" XSubType="date"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator28" runat="server" Display="None" ErrorMessage="请选择新物料状况内是否有封样物料!" ControlToValidate="XRadioButtonList44" ValidationGroup="结构签单工程师" DisableExpress='OFR_Wuxian_Review_Struct.StructSelect == "" || OFR_Wuxian_Review_Struct.StructSelect =="增加物料" || OFR_Wuxian_Review_Struct.StructSelect =="删除物料" ||OFR_Wuxian_Review_Struct.StructSelect =="增加物料,删除物料"'>新物料状况内封样</aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator29" runat="server" Display="None" ErrorMessage="请填写计划封样时间!" ControlToValidate="XDateTimePicker6" ValidationGroup="结构签单工程师" DisableExpress='OFR_Wuxian_Review_Struct_MaterialChange.MaterialChange_Sealed !="需封样" '>计划封样时间</aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                        </td>
                        <td align="center">
                            <aspxform:XAddBlockButton id="XAddBlockButton9" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加" PrintOut="False" TableName="OFR_Wuxian_Review_Struct_MaterialChange"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_Review_Struct.StructSelect == "" || OFR_Wuxian_Review_Struct.StructSelect =="物料替换" || OFR_Wuxian_Review_Struct.StructSelect =="删除物料" ||OFR_Wuxian_Review_Struct.StructSelect =="物料替换,删除物料"' dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="81">
                            <div align="center">
                                <aspxform:XLabel id="XLabel179" runat="server" text="增加物料" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="577">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox112" runat="server" XDataBind="OFR_Wuxian_Review_Struct_AddMaterial.AddMaterialContent" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Width="555px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <div align="center">
                                <aspxform:XCheckBoxList id="XCheckBoxList4" runat="server" XDataBind="OFR_Wuxian_Review_Struct_AddMaterial.AddMaterial_ECN" RepeatDirection="Horizontal">
                                    <asp:ListItem>产品BOM</asp:ListItem>
                                    <asp:ListItem>销单BOM</asp:ListItem>
                                </aspxform:XCheckBoxList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="141">
                            <div align="center">
                                <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="OFR_Wuxian_Review_Struct_AddMaterial.AddMaterial_SAP" RepeatDirection="Horizontal">
                                    <asp:ListItem>需新申请</asp:ListItem>
                                    <asp:ListItem>无</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113" align="center">
                            <aspxform:XRadioButtonList id="XRadioButtonList45" runat="server" XDataBind="OFR_Wuxian_Review_Struct_AddMaterial.AddMaterial_Sealed" RepeatDirection="Horizontal">
                                <asp:ListItem>需封样</asp:ListItem>
                                <asp:ListItem>无</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="152">
                            <aspxform:XDateTimePicker id="XDateTimePicker7" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OFR_Wuxian_Review_Struct_AddMaterial.AddMaterial_SealedTime" BorderWidth="1px" Width="128px" BorderColor="Gainsboro" ReadOnly="True" XType="datetime" XSubType="date"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" Display="None" ErrorMessage="请选择新物料状况内是否有封样物料!" ControlToValidate="XRadioButtonList45" ValidationGroup="结构签单工程师" DisableExpress='OFR_Wuxian_Review_Struct.StructSelect == "" || OFR_Wuxian_Review_Struct.StructSelect =="物料替换" || OFR_Wuxian_Review_Struct.StructSelect =="删除物料" ||OFR_Wuxian_Review_Struct.StructSelect =="物料替换,删除物料"'>新物料状况内封样</aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" Display="None" ErrorMessage="请填写计划封样时间!" ControlToValidate="XDateTimePicker8" ValidationGroup="结构签单工程师" DisableExpress='OFR_Wuxian_Review_Struct_AddMaterial.AddMaterial_Sealed !="需封样"'>计划封样时间</aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                        </td>
                        <td align="center">
                            <aspxform:XAddBlockButton id="XAddBlockButton10" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加" PrintOut="False" TableName="OFR_Wuxian_Review_Struct_AddMaterial"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_Review_Struct.StructSelect== "" || OFR_Wuxian_Review_Struct.StructSelect=="物料替换" || OFR_Wuxian_Review_Struct.StructSelect=="增加物料" ||OFR_Wuxian_Review_Struct.StructSelect =="物料替换,增加物料"' dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="81">
                            <div align="center">
                                <aspxform:XLabel id="XLabel180" runat="server" text="删除物料" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="577">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox113" runat="server" XDataBind="OFR_Wuxian_Review_Struct_DeleteMaterial.DeleteMaterialContent" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Width="555px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <div align="center">
                                <aspxform:XCheckBoxList id="XCheckBoxList5" runat="server" XDataBind="OFR_Wuxian_Review_Struct_DeleteMaterial.DeleteMaterial_ECN" RepeatDirection="Horizontal">
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
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td align="center">
                            <aspxform:XAddBlockButton id="XAddBlockButton11" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加" PrintOut="False" TableName="OFR_Wuxian_Review_Struct_DeleteMaterial"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="82">
                            <aspxform:XLabel id="XLabel141" runat="server" text="变更电子流"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1161">
                            <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="OFR_Wuxian_Review_Struct.BOMBPM" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator42" runat="server" Display="None" ErrorMessage="请勾选是否有变更电子流！" ControlToValidate="XRadioButtonList8" ValidationGroup="结构签单工程师">变更电子流</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_Review_Struct.BOMBPM !="有"' dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="30" align="center">
                            <aspxform:XLabel id="XLabel144" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="162" align="center">
                            <aspxform:XLabel id="XLabel145" runat="server" text="电子流编号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1048" align="center">
                            <aspxform:XLabel id="XLabel146" runat="server" text="更改内容说明" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XGridLineNo id="XGridLineNo5" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox36" runat="server" XDataBind="OFR_Wuxian_Review_Struct_BOMBPM.BPMNumber" width="140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox43" runat="server" XDataBind="OFR_Wuxian_Review_Struct_BOMBPM.BPMChangeRemark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="1002px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton5" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加变更项" PrintOut="False" TableName="OFR_Wuxian_Review_Struct_BOMBPM"></aspxform:XAddBlockButton>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox91" runat="server" XDataBind="OFR_Wuxian_Review_Struct.OtherReview" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox94" runat="server" XDataBind="OFR_Wuxian_Review_Struct.StructBOM" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="111">
                            <aspxform:XLabel id="XLabel150" runat="server" text="包装BOM评审" Font-Size="Small" Font-Bold="True" Value ValueToDisplayText ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="474">
                            <aspxform:XCheckBoxList id="XCheckBoxList2" runat="server" XDataBind="OFR_Wuxian_Review_Package.PackageSelect" RepeatDirection="Horizontal">
                                <asp:ListItem>物料替换</asp:ListItem>
                                <asp:ListItem>增加物料</asp:ListItem>
                                <asp:ListItem>删除物料</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="241" align="right">
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="411">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="81">
                            <div align="center">
                                <aspxform:XLabel id="XLabel66" runat="server" text="BOM操作" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="577">
                            <div align="center">
                                <aspxform:XLabel id="XLabel89" runat="server" text="变更内容/数量" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="167" align="center">
                            <aspxform:XLabel id="XLabel94" runat="server" text="ECN更改类型" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="15" colspan="3">
                            <div align="center">
                                <aspxform:XLabel id="XLabel115" runat="server" Font-Bold="True" Text="新物料状况"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="141" align="center">
                            <aspxform:XLabel id="XLabel142" runat="server" text="SAP录入" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113" align="center">
                            <aspxform:XLabel id="XLabel151" runat="server" text="封样" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="152" align="center">
                            <aspxform:XLabel id="XLabel197" runat="server" text="计划封样时间" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_Review_Package.PackageSelect== "" || OFR_Wuxian_Review_Package.PackageSelect=="增加物料" || OFR_Wuxian_Review_Package.PackageSelect=="删除物料" ||OFR_Wuxian_Review_Package.PackageSelect =="增加物料,删除物料"' dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="81">
                            <div align="center">
                                <aspxform:XLabel id="XLabel198" runat="server" text="物料替换" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="577">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox71" runat="server" XDataBind="OFR_Wuxian_Review_Package_MaterialChange.MaterialChangeContent" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="555px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <div align="center">
                                <aspxform:XCheckBoxList id="XCheckBoxList6" runat="server" XDataBind="OFR_Wuxian_Review_Package_MaterialChange.MaterialChange_ECN" RepeatDirection="Horizontal">
                                    <asp:ListItem>产品BOM</asp:ListItem>
                                    <asp:ListItem>销单BOM</asp:ListItem>
                                </aspxform:XCheckBoxList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="141">
                            <div align="center">
                                <aspxform:XRadioButtonList id="XRadioButtonList11" runat="server" XDataBind="OFR_Wuxian_Review_Package_MaterialChange.MaterialChange_SAP" RepeatDirection="Horizontal">
                                    <asp:ListItem>需新申请</asp:ListItem>
                                    <asp:ListItem>无</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113" align="center">
                            <aspxform:XRadioButtonList id="XRadioButtonList14" runat="server" XDataBind="OFR_Wuxian_Review_Package_MaterialChange.MaterialChange_Sealed" RepeatDirection="Horizontal">
                                <asp:ListItem>需封样</asp:ListItem>
                                <asp:ListItem>无</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="152">
                            <aspxform:XDateTimePicker id="XDateTimePicker9" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OFR_Wuxian_Review_Package_MaterialChange.MaterialChange_SealedTime" BorderWidth="1px" Width="129px" BorderColor="Gainsboro" ReadOnly="True" XType="datetime" XSubType="date"></aspxform:XDateTimePicker>
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
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator32" runat="server" Display="None" ErrorMessage="请选择新物料状况内是否有封样物料!" ControlToValidate="XRadioButtonList14" ValidationGroup="包装设计签单工程师" DisableExpress='OFR_Wuxian_Review_Package.PackageSelect== "" || OFR_Wuxian_Review_Package.PackageSelect=="增加物料" || OFR_Wuxian_Review_Package.PackageSelect=="删除物料" ||OFR_Wuxian_Review_Package.PackageSelect =="增加物料,删除物料"'>新物料状况内封样</aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator33" runat="server" Display="None" ErrorMessage="请填写计划封样时间!" ControlToValidate="XDateTimePicker9" ValidationGroup="包装设计签单工程师" DisableExpress='OFR_Wuxian_Review_Package_MaterialChange.MaterialChange_Sealed !="需封样"'>计划封样时间</aspxform:XRequiredFieldValidator>
                        </td>
                        <td align="center">
                            <aspxform:XAddBlockButton id="XAddBlockButton14" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加" PrintOut="False" TableName="OFR_Wuxian_Review_Package_MaterialChange"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_Review_Package.PackageSelect== "" || OFR_Wuxian_Review_Package.PackageSelect=="物料替换" || OFR_Wuxian_Review_Package.PackageSelect=="删除物料" ||OFR_Wuxian_Review_Package.PackageSelect =="物料替换,删除物料"' dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="81">
                            <div align="center">
                                <aspxform:XLabel id="XLabel199" runat="server" text="增加物料" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="577">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox72" runat="server" XDataBind="OFR_Wuxian_Review_Package_AddMaterial.AddMaterialContent" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Width="555px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <div align="center">
                                <aspxform:XCheckBoxList id="XCheckBoxList8" runat="server" XDataBind="OFR_Wuxian_Review_Package_AddMaterial.AddMaterial_ECN" RepeatDirection="Horizontal">
                                    <asp:ListItem>产品BOM</asp:ListItem>
                                    <asp:ListItem>销单BOM</asp:ListItem>
                                </aspxform:XCheckBoxList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="141">
                            <div align="center">
                                <aspxform:XRadioButtonList id="XRadioButtonList21" runat="server" XDataBind="OFR_Wuxian_Review_Package_AddMaterial.AddMaterial_SAP" RepeatDirection="Horizontal">
                                    <asp:ListItem>需新申请</asp:ListItem>
                                    <asp:ListItem>无</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113" align="center">
                            <aspxform:XRadioButtonList id="XRadioButtonList23" runat="server" XDataBind="OFR_Wuxian_Review_Package_AddMaterial.AddMaterial_Sealed" RepeatDirection="Horizontal">
                                <asp:ListItem>需封样</asp:ListItem>
                                <asp:ListItem>无</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="152">
                            <aspxform:XDateTimePicker id="XDateTimePicker10" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OFR_Wuxian_Review_Package_AddMaterial.AddMaterial_SealedTime" BorderWidth="1px" Width="128px" BorderColor="Gainsboro" ReadOnly="True" XType="datetime" XSubType="date"></aspxform:XDateTimePicker>
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
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator34" runat="server" Display="None" ErrorMessage="请选择新物料状况内是否有封样物料!" ControlToValidate="XRadioButtonList23" ValidationGroup="包装设计签单工程师" DisableExpress='OFR_Wuxian_Review_Package.PackageSelect== "" || OFR_Wuxian_Review_Package.PackageSelect=="物料替换" || OFR_Wuxian_Review_Package.PackageSelect=="删除物料" ||OFR_Wuxian_Review_Package.PackageSelect =="物料替换,删除物料"'>新物料状况内封样</aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator35" runat="server" Display="None" ErrorMessage="请填写计划封样时间!" ControlToValidate="XDateTimePicker10" ValidationGroup="包装设计签单工程师" DisableExpress='OFR_Wuxian_Review_Package_AddMaterial.AddMaterial_Sealed !="需封样"'>计划封样时间</aspxform:XRequiredFieldValidator>
                        </td>
                        <td align="center">
                            <aspxform:XAddBlockButton id="XAddBlockButton15" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加" PrintOut="False" TableName="OFR_Wuxian_Review_Package_AddMaterial"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_Review_Package.PackageSelect== "" || OFR_Wuxian_Review_Package.PackageSelect=="物料替换" || OFR_Wuxian_Review_Package.PackageSelect=="增加物料" ||OFR_Wuxian_Review_Package.PackageSelect =="物料替换,增加物料"' dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="81">
                            <div align="center">
                                <aspxform:XLabel id="XLabel200" runat="server" text="删除物料" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="577">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox81" runat="server" XDataBind="OFR_Wuxian_Review_Package_DeleteMaterial.DeleteMaterialContent" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Width="555px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <div align="center">
                                <aspxform:XCheckBoxList id="XCheckBoxList9" runat="server" XDataBind="OFR_Wuxian_Review_Package_DeleteMaterial.DeleteMaterial_ECN" RepeatDirection="Horizontal">
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
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td align="center">
                            <aspxform:XAddBlockButton id="XAddBlockButton16" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加" PrintOut="False" TableName="OFR_Wuxian_Review_Package_DeleteMaterial"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel152" runat="server" text="变更电子流"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="275">
                            <aspxform:XRadioButtonList id="XRadioButtonList13" runat="server" XDataBind="OFR_Wuxian_Review_Package.BOMBPM" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator41" runat="server" Display="None" ErrorMessage="请勾选是否有变更电子流！" ControlToValidate="XRadioButtonList13" ValidationGroup="包装设计签单工程师">变更电子流</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="65" align="right">
                            <div align="left">
                                <div align="left">
                                    <div align="left">
                                        <aspxform:XLabel id="XLabel153" runat="server" text="未封样物料" Value ValueToDisplayText HiddenExpress="1"></aspxform:XLabel>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="109" colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList15" runat="server" XDataBind="OFR_Wuxian_Review_Package.SealedMaterial" HiddenExpress="1" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="707">
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_Review_Package.BOMBPM !="有"' dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="30" align="center">
                            <aspxform:XLabel id="XLabel157" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="162" align="center">
                            <aspxform:XLabel id="XLabel186" runat="server" text="电子流编号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1048" align="center">
                            <aspxform:XLabel id="XLabel187" runat="server" text="更改内容说明" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XGridLineNo id="XGridLineNo10" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="OFR_Wuxian_Review_Package_BOMBPM.BPMNumber" width="140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox49" runat="server" XDataBind="OFR_Wuxian_Review_Package_BOMBPM.BPMChangeRemark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="1002px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton12" runat="server" Height="21px" UseSubmitBehavior="False" Text="添加变更项" PrintOut="False" TableName="OFR_Wuxian_Review_Package_BOMBPM"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="1" dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="29">
                            <aspxform:XLabel id="XLabel189" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="204" align="center">
                            <aspxform:XLabel id="XLabel190" runat="server" text="物料类别" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="709" align="center">
                            <aspxform:XLabel id="XLabel191" runat="server" text="物料说明" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="155" align="center">
                            <aspxform:XLabel id="XLabel192" runat="server" text="预计封样时间" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="137" align="center">
                            <aspxform:XLabel id="XLabel196" runat="server" text="设计师" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XGridLineNo id="XGridLineNo11" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox60" runat="server" XDataBind="OFR_Wuxian_Review_Package_SealedMaterial.MaterialType" width="202px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox66" runat="server" XDataBind="OFR_Wuxian_Review_Package_SealedMaterial.MaterialRemark" width="665px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="OFR_Wuxian_Review_Package_SealedMaterial.SealedTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="center">
                            <aspxform:XTextBox id="XTextBox69" runat="server" XDataBind="OFR_Wuxian_Review_Package_SealedMaterial.Designer" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="100px"></aspxform:XTextBox>
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
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator36" runat="server" Display="None" ErrorMessage="请填写预计封样时间!" ControlToValidate="XDateTimePicker2" ValidationGroup="包装设计签单工程师" DisableExpress='OFR_Wuxian_Review_Package_SealedMaterial.MaterialType ==""'>预计封样时间</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton13" runat="server" Width="105px" Height="21px" UseSubmitBehavior="False" Text="添加未封样物料" PrintOut="False" TableName="OFR_Wuxian_Review_Package_SealedMaterial" OnClientClick="XFormShell.XFormAgent.AppendBlock(this,'OFR_Attachment1_SJ');return false;"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="81">
                            <aspxform:XLabel id="XLabel49" runat="server" text="项目评审" Font-Size="Small" Font-Bold="True" Value ValueToDisplayText ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox75" runat="server" XDataBind="OFR_Wuxian_BInfo.Project_Review" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="135" align="center">
                            <aspxform:XLabel id="XLabel86" runat="server" text="物料类别" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="135" align="center">
                            <aspxform:XLabel id="XLabel88" runat="server" text="长周期物料"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
                            <aspxform:XTextBox id="XTextBox76" runat="server" XDataBind="OFR_Wuxian_Review_DeliveryDate.LongCycleMaterial" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox104" runat="server" XDataBind="OFR_Wuxian_Review_DeliveryDate.AllMachine" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
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
                            <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" XDataBind="OFR_Wuxian_Review_DeliveryDate.ShippingTime_Start" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75">
                            <aspxform:XLabel id="XLabel103" runat="server" text="完成出货时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="276">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" runat="server" XDataBind="OFR_Wuxian_Review_DeliveryDate.ShippingTime_End" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="78" align="right">
                            <aspxform:XLabel id="XLabel105" runat="server" text="撤销计划时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80">
                            <aspxform:XRadioButtonList id="XRadioButtonList54" runat="server" XDataBind="OFR_Wuxian_Review_DeliveryDate.RevocationPlan" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="431">
                            <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" XDataBind="OFR_Wuxian_Review_DeliveryDate.RevocationPlanTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="82" align="center">
                            <aspxform:XLabel id="XLabel50" runat="server" text="订单是否激活" Value ValueToDisplayText HiddenExpress="1"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="74">
                            <aspxform:XRadioButtonList id="XRadioButtonList12" runat="server" XDataBind="OFR_Wuxian_Review_DeliveryDate.JiHuoYorN" HiddenExpress="1" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="129" align="right">
                            <aspxform:XLabel id="XLabel90" runat="server" text="其他评审意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="952">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox58" runat="server" XDataBind="OFR_Wuxian_Review_DeliveryDate.OtherReview" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="82">
                            <aspxform:XLabel id="XLabel128" runat="server" text="财务评审" Font-Size="Small" Font-Bold="True" ForeColor="Black"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1161">
                            <aspxform:XRadioButtonList id="XRadioButtonList19" runat="server" XDataBind="OFR_Wuxian_BInfo.Financial_Review_YOrN" RepeatDirection="Horizontal">
                                <asp:ListItem>正常</asp:ListItem>
                                <asp:ListItem>异常</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="82">
                            <aspxform:XLabel id="XLabel147" runat="server" text="评审意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1161">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox111" runat="server" XDataBind="OFR_Wuxian_BInfo.Financial_Review" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='Global.StepName !="订单批准" &amp;&amp; Global.StepName !="订单终审" &amp;&amp; Global.StepName !="订单专员(订单通知书)"&amp;&amp; Global.StepName !="财务评审"&amp;&amp; Global.StepName !="产品负责人"&amp;&amp; Global.StepName !="总裁批准"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="82">
                            <aspxform:XLabel id="XLabel201" runat="server" text="售价及成本" Font-Bold="False" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1161">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox83" runat="server" Value ValueToDisplayText XDataBind="OFR_Wuxian_BInfo.ProductCost" width="879px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" Display="None" ErrorMessage="请填写销售价格！" ControlToValidate="XTextBox83" ValidationGroup="财务评审">产品成本</aspxform:XRequiredFieldValidator>
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
                        <td height="29" width="277" align="center">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" Zoom="60" MarginLeft="2" MarginRight="2" MarginTop="20" MarginBottom="10"></aspxform:XPrintButton>
                        </td>
                        <td width="719" align="center">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
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
