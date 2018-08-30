<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
     protected void Page_Load(object sender, EventArgs e)
        {
           XTextBox4.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox30.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox42.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox43.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox11.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox105.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox91.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox34.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox35.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox58.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox84.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox85.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
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
                            <aspxform:XLabel id="XLabel11" runat="server" XDataBind="OFR_SC_Applicant.SN" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="58" colspan="3" align="center">
                            <asp:Label id="Label1" runat="server" text="试产订单通知书" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" height="25" width="141" align="right">
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="OFR_SC_Applicant.HRID" HiddenExpress="1" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="25px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="OFR_SC_Applicant.Dept" HiddenExpress="1" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="6px"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel148" runat="server" text="订单号:" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td width="84">
                            <aspxform:XTextBox id="XTextBox115" runat="server" XDataBind="OFR_SC_Applicant.OrderNum" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="80px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td width="72" align="right">
                            <aspxform:XLabel id="XLabel2" runat="server" text="发起人:"></aspxform:XLabel>
                        </td>
                        <td width="125">
                            <aspxform:XTextBox id="XTextBox229" runat="server" XDataBind="OFR_SC_Applicant.Name" HiddenInput="False" Min="0" Max="0" width="89px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td width="76" align="right">
                            <aspxform:XLabel id="XLabel3" runat="server" text="发起时间:" Width="54px"></aspxform:XLabel>
                        </td>
                        <td width="179">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="OFR_SC_Applicant.AppDate" HiddenInput="False" Min="0" Max="0" width="130px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="18px"></aspxform:XTextBox>
                        </td>
                        <td width="76">
                            <aspxform:XLabel id="XLabel33" runat="server" text="产品线:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td width="482">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="OFR_SC_Applicant.ProductLine" Width="354px" RepeatDirection="Horizontal">
                                <asp:ListItem>国内运营</asp:ListItem>
                                <asp:ListItem>海外运营</asp:ListItem>
                                <asp:ListItem>海外零售</asp:ListItem>
                                <asp:ListItem>IPTV/OTT</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            </span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="998" colspan="2">
                            <aspxform:XLabel id="XLabel357" runat="server" Font-Bold="True" Font-Size="Small" text="基本信息" Value ValueToDisplayText ForeColor="Navy"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="OFR_SC_Applicant.SN" HiddenExpress="1" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="31px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ValidationGroup="订单专员(建单)" ControlToValidate="XTextBox115" ErrorMessage="请填写订单号!" Display="None">订单号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList7" ErrorMessage="请选择产品线!" Display="None">产品线</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox5" ErrorMessage="请填写平台方案" Display="None">平台方案</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox234" ErrorMessage="请填写机芯号" Display="None">机芯号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ValidationGroup="BOM设计师(确认)" ControlToValidate="XTextBox235" ErrorMessage="请填写产品型号" Display="None">产品型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox117" ErrorMessage="请填写试产数量" Display="None">试产数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox237" ErrorMessage="请选择项目经理!" Display="None">项目经理</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator36" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox4" ErrorMessage="请填写项目背景!" Display="None">项目背景</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ValidationGroup="开始" ControlToValidate="XCheckBoxList6" ErrorMessage="请选择试产目的!" Display="None">试产目的</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="right">
                            <aspxform:XLabel id="XLabel325" runat="server" text="平台方案:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="231">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="OFR_SC_BInfo.PlatformSolution" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="180px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel359" runat="server" text="机芯号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="220">
                            <aspxform:XTextBox id="XTextBox234" runat="server" XDataBind="OFR_SC_BInfo.CoreNum" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="135px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="58" align="right">
                            <aspxform:XLabel id="XLabel360" runat="server" text="产品型号:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="269">
                            <aspxform:XTextBox id="XTextBox235" runat="server" XDataBind="OFR_SC_BInfo.ProductModel" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="180px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="107" align="right">
                            <aspxform:XLabel id="XLabel361" runat="server" text="外部型号:" Value ValueToDisplayText Height="17px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="204">
                            <aspxform:XTextBox id="XTextBox114" runat="server" XDataBind="OFR_SC_BInfo.OutsideModel" HiddenInput="False" Min="0" Max="0" width="200px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="57" align="right">
                            <aspxform:XLabel id="XLabel83" runat="server" text="试产数量:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="231">
                            <aspxform:XTextBox id="XTextBox117" runat="server" XDataBind="OFR_SC_BInfo.TrialProduceAmount" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" width="137px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Format="type:number;.0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel4" runat="server" text="期望完成时间:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="220">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OFR_SC_BInfo.ExceptedTime" Width="170px" CssClass="TextBox" XSubType="date" onchange="javascript:XFormOnChange(this);" ReadOnly="True" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="58" align="right">
                            <aspxform:XLabel id="XLabel362" runat="server" text="目标市场:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="269">
                            <aspxform:XTextBox id="XTextBox236" runat="server" XDataBind="OFR_SC_BInfo.TargetMarket" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="205px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="108" align="right">
                            <aspxform:XLabel id="XLabel363" runat="server" text="项目经理/助理:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="204">
                            <aspxform:XTextBox id="XTextBox237" runat="server" XDataBind="OFR_SC_BInfo.ProjectManagerName" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="100px" CssClass="TextBox" DisableCssClass="TextBox" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton7" runat="server" Width="21px" DataMap="Account->OFR_SC_BInfo.ProjectManager;DisplayName->OFR_SC_BInfo.ProjectManagerName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox52" runat="server" XDataBind="OFR_SC_BInfo.ProjectManager" Value ValueToDisplayText HiddenExpress="1" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="31px" NormalCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td height="27" width="56" align="center">
                            <aspxform:XLabel id="XLabel64" runat="server" text="项目背景:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="980">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox4" runat="server" XDataBind="OFR_SC_BInfo.ProjectContext" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" width="920px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="65" align="right">
                            <aspxform:XLabel id="XLabel48" runat="server" text="ROHS:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="136">
                            <aspxform:XRadioButtonList id="XRadioButtonList11" runat="server" XDataBind="OFR_SC_BInfo.ROHS" RepeatDirection="Horizontal">
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
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="56" align="right">
                            <aspxform:XLabel id="XLabel46" runat="server" text="试产目的:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="980">
                            <aspxform:XCheckBoxList id="XCheckBoxList6" runat="server" XDataBind="OFR_SC_BInfo.TrialProducePurpose" RepeatDirection="Horizontal">
                                <asp:ListItem>电子物料验证</asp:ListItem>
                                <asp:ListItem>结构物料验证</asp:ListItem>
                                <asp:ListItem>硬件性能验证</asp:ListItem>
                                <asp:ListItem>软件性能验证</asp:ListItem>
                                <asp:ListItem>包材验证 </asp:ListItem>
                                <asp:ListItem>生产工艺验证</asp:ListItem>
                                <asp:ListItem>新品量产可行性验证 </asp:ListItem>
                                <asp:ListItem>客户确认样机</asp:ListItem>
                                <asp:ListItem>认证样机</asp:ListItem>
                                <asp:ListItem>市场推广样机</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="65" align="right">
                            <aspxform:XLabel id="XLabel173" runat="server" text="其他要求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="136">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox103" runat="server" XDataBind="OFR_SC_BInfo.TrialProducePurpose_Other" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="114px" NormalCssClass="TextBox" CssClass="TextBox" Height="26px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="80" align="center">
                            <aspxform:XLabel id="XLabel65" runat="server" text="测试特殊要求:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1163">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox30" runat="server" XDataBind="OFR_SC_BInfo.TestSpecialRequriments" HiddenInput="False" Min="0" Max="0" width="1150px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel106" runat="server" Font-Bold="True" Font-Size="Small" text="结构要求" Value ValueToDisplayText ForeColor="Navy"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox3" ErrorMessage="请填写机箱" Display="None">机箱</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox23" ErrorMessage="请填写机箱颜色" Display="None">机箱颜色</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox28" ErrorMessage="请填写面壳" Display="None">面壳</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox29" ErrorMessage="请填写面壳颜色" Display="None">面壳颜色</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList5" ErrorMessage="请选择前面板丝印" Display="None">前面板丝印</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList6" ErrorMessage="请选择后背板丝印" Display="None">后背板丝印</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList20" ErrorMessage="请选择包装" Display="None">包装</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList22" ErrorMessage="请选择说明书" Display="None">说明书</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList40" ErrorMessage="请选择遥控器" Display="None">遥控器</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="108" align="right">
                            <aspxform:XLabel id="XLabel15" runat="server" text="机箱:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="212">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="OFR_SC_StructInfo.MachineCase" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" width="165px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="98" align="right">
                            <aspxform:XLabel id="XLabel25" runat="server" text="机箱颜色:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="190">
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="OFR_SC_StructInfo.MachineCaseColour" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="180px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                            <aspxform:XLabel id="XLabel26" runat="server" text="面壳:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="302">
                            <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="OFR_SC_StructInfo.FacePiece" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="280px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="55" align="right">
                            <aspxform:XLabel id="XLabel76" runat="server" text="面壳颜色:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="199">
                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="OFR_SC_StructInfo.FacePieceColour" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="180px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="108" align="right">
                            <aspxform:XLabel id="XLabel77" runat="server" text="前面板丝印:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="506">
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="OFR_SC_StructInfo.FrontPanel" Width="393px" RepeatDirection="Horizontal">
                                <asp:ListItem>不带LOGO不带型号 </asp:ListItem>
                                <asp:ListItem>不带LOGO带型号</asp:ListItem>
                                <asp:ListItem>带LOGO带型号</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="626">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox2" runat="server" XDataBind="OFR_SC_StructInfo.FrontPanel_Remark" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="500px" NormalCssClass="TextBox" CssClass="TextBox" Height="23px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="108" align="right">
                            <aspxform:XLabel id="XLabel79" runat="server" text="后背板丝印:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="127">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="OFR_SC_StructInfo.BacKPanel" RepeatDirection="Horizontal">
                                <asp:ListItem>中性</asp:ListItem>
                                <asp:ListItem>特殊要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="376">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox38" runat="server" XDataBind="OFR_SC_StructInfo.BacKPanel_Remark" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="327px" NormalCssClass="TextBox" CssClass="TextBox" Height="25px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                            <aspxform:XLabel id="XLabel80" runat="server" text="包装:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="124">
                            <aspxform:XRadioButtonList id="XRadioButtonList20" runat="server" XDataBind="OFR_SC_StructInfo.Pack" RepeatDirection="Horizontal">
                                <asp:ListItem>白盒</asp:ListItem>
                                <asp:ListItem>特殊要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="435">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox39" runat="server" XDataBind="OFR_SC_StructInfo.Pack_Remark" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="345px" NormalCssClass="TextBox" CssClass="TextBox" Height="23px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="108" align="right">
                            <aspxform:XLabel id="XLabel81" runat="server" text="说明书:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="174">
                            <aspxform:XRadioButtonList id="XRadioButtonList22" runat="server" XDataBind="OFR_SC_StructInfo.Specification" Width="166px" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>中性</asp:ListItem>
                                <asp:ListItem>特殊要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="329">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox40" runat="server" XDataBind="OFR_SC_StructInfo.Specification_Remark" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="242px" NormalCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                            <aspxform:XLabel id="XLabel95" runat="server" text="遥控器:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="122">
                            <aspxform:XRadioButtonList id="XRadioButtonList40" runat="server" XDataBind="OFR_SC_StructInfo.RemoteControl" RepeatDirection="Horizontal">
                                <asp:ListItem>中性</asp:ListItem>
                                <asp:ListItem>特殊要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="179">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox41" runat="server" XDataBind="OFR_SC_StructInfo.RemoteControl_Remark" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="157px" NormalCssClass="TextBox" CssClass="TextBox" Height="23px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="54" align="right">
                            <aspxform:XLabel id="XLabel47" runat="server" text="型号:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="197">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox31" runat="server" XDataBind="OFR_SC_StructInfo.RemoteControl_Model" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="157px" NormalCssClass="TextBox" CssClass="TextBox" Height="23px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" valign="middle" width="89" align="center">
                            <aspxform:XLabel id="XLabel49" runat="server" Font-Bold="True" Font-Size="X-Small" text="序列号要求" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="589">
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="OFR_SC_StructInfo.Type_SerialNumber" Text="序列号"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="OFR_SC_StructInfo.Type_MAC" Text="MAC地址"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="OFR_SC_StructInfo.Type_CM" Text="CM_序列号"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox4" runat="server" XDataBind="OFR_SC_StructInfo.Type_CMMAC" Text="CM_MAC地址"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox5" runat="server" XDataBind="OFR_SC_StructInfo.Type_WANMAC" Text="WANMAC地址"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox6" runat="server" XDataBind="OFR_SC_StructInfo.Type_LANMAC" Text="LANMAC地址"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox7" runat="server" XDataBind="OFR_SC_StructInfo.Type_Other" Text="其他"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="562">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox116" runat="server" XDataBind="OFR_SC_StructInfo.Remark" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" width="220px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_SC_StructInfo.Type_SerialNumber == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="89" align="right">
                            <aspxform:XLabel id="XLabel97" runat="server" text="序列号:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67" align="right">
                            <aspxform:XLabel id="XLabel99" runat="server" text="开始号码:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="456">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox42" runat="server" XDataBind="OFR_SC_StructInfo.SerialNumber_Start" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="406px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" TextMode="MultiLine" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                            <aspxform:XLabel id="XLabel104" runat="server" text="结束号码:" Value ValueToDisplayText Width="58px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="562">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox43" runat="server" XDataBind="OFR_SC_StructInfo.SerialNumber_End" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="500px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" TextMode="MultiLine" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_SC_StructInfo.Type_MAC ==0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="89" align="right">
                            <aspxform:XLabel id="XLabel51" runat="server" text="MAC地址:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67" align="right">
                            <aspxform:XLabel id="XLabel52" runat="server" text="开始号码:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="455">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox37" runat="server" XDataBind="OFR_SC_StructInfo.MACAdd_Start" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="360px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" TextMode="MultiLine" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                            <aspxform:XLabel id="XLabel53" runat="server" text="结束号码:" Value ValueToDisplayText Width="58px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="562">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox51" runat="server" XDataBind="OFR_SC_StructInfo.MACAdd_End" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="500px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" TextMode="MultiLine" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_SC_StructInfo.Type_CM == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="89" align="right">
                            <aspxform:XLabel id="XLabel54" runat="server" text="CM_序列号:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67" align="right">
                            <aspxform:XLabel id="XLabel56" runat="server" text="开始号码:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="455">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox53" runat="server" XDataBind="OFR_SC_StructInfo.CM_Start" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="321px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" TextMode="MultiLine" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                            <aspxform:XLabel id="XLabel57" runat="server" text="结束号码:" Value ValueToDisplayText Width="58px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="562">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox54" runat="server" XDataBind="OFR_SC_StructInfo.CM_End" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="500px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" TextMode="MultiLine" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_SC_StructInfo.Type_CMMAC == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="89" align="right">
                            <aspxform:XLabel id="XLabel58" runat="server" text="CM_MAC地址:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67" align="right">
                            <aspxform:XLabel id="XLabel60" runat="server" text="开始号码:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="455">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox55" runat="server" XDataBind="OFR_SC_StructInfo.CMMAC_Start" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="384px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" TextMode="MultiLine" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                            <aspxform:XLabel id="XLabel61" runat="server" text="结束号码:" Value ValueToDisplayText Width="58px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="562">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox56" runat="server" XDataBind="OFR_SC_StructInfo.CMMAC_End" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="500px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" TextMode="MultiLine" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_SC_StructInfo.Type_WANMAC == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="89" align="right">
                            <aspxform:XLabel id="XLabel62" runat="server" text="WANMAC地址:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67" align="right">
                            <aspxform:XLabel id="XLabel63" runat="server" text="开始号码:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="456">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox57" runat="server" XDataBind="OFR_SC_StructInfo.WANMAC_Start" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="414px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" TextMode="MultiLine" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="60" align="right">
                            <aspxform:XLabel id="XLabel66" runat="server" text="结束号码:" Value ValueToDisplayText Width="58px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="563">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox59" runat="server" XDataBind="OFR_SC_StructInfo.WANMAC_End" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="500px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" TextMode="MultiLine" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_SC_StructInfo.Type_LANMAC == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="89" align="right">
                            <aspxform:XLabel id="XLabel67" runat="server" text="LANMAC地址:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67" align="right">
                            <aspxform:XLabel id="XLabel68" runat="server" text="开始号码:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="455">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox60" runat="server" XDataBind="OFR_SC_StructInfo.LANMAC_Start" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="296px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" TextMode="MultiLine" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                            <aspxform:XLabel id="XLabel69" runat="server" text="结束号码:" Value ValueToDisplayText Width="58px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="562">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox61" runat="server" XDataBind="OFR_SC_StructInfo.LANMAC_End" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="500px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" TextMode="MultiLine" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_SC_StructInfo.Type_Other == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="89" align="right">
                            <aspxform:XLabel id="XLabel7" runat="server" text="其他:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1154">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox11" runat="server" XDataBind="OFR_SC_StructInfo.Other" HiddenInput="False" Min="0" Max="0" width="1120px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="89" align="right">
                            <aspxform:XLabel id="XLabel59" runat="server" text="其他要求:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1154">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox105" runat="server" XDataBind="OFR_SC_StructInfo.OtherRequirement" HiddenInput="False" Min="0" Max="0" width="1120px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
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
                            <aspxform:XImageAttachment id="XImageAttachment1" runat="server" XDataBind="OFR_SC_StructInfo.ConfigTableImage" BorderWidth="3px" Width="112px" Height="128px" BorderColor="Gainsboro" PrintOut="True" BorderStyle="Solid"></aspxform:XImageAttachment>
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
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" ValidationGroup="项目经理/助理" ControlToValidate="XTextBox140" ErrorMessage="请选择主板评审人" Display="None">主板评审人</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" ValidationGroup="项目经理/助理" ControlToValidate="XTextBox142" ErrorMessage="请选择电源评审人" Display="None">电源评审人</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" ValidationGroup="项目经理/助理" ControlToValidate="XTextBox6" ErrorMessage="请选择软件评审人" Display="None">软件评审人</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" Height="12px" ValidationGroup="项目经理/助理" ControlToValidate="XTextBox8" ErrorMessage="请选择结构评审人" Display="None">结构评审人</aspxform:XRequiredFieldValidator>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="71">
                            <aspxform:XLabel id="XLabel193" runat="server" Font-Bold="True" Font-Size="Small" text="技术评审" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="72">
                            <aspxform:XLabel id="XLabel194" runat="server" text="主板评审人:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="54">
                            <aspxform:XTextBox id="XTextBox140" runat="server" XDataBind="OFR_SC_Review_Techonlogy.Designer_MainBoardName" HiddenInput="False" Min="0" Max="0" width="50px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="26">
                            <aspxform:XSelectUserButton id="XSelectUserButton3" runat="server" Width="22px" Height="20px" DataMap="Account->OFR_SC_Review_Techonlogy.Designer_MainBoard;DisplayName->OFR_SC_Review_Techonlogy.Designer_MainBoardName" Text="..." NavigateUrl="~\FormSupport\SelUser.aspx" PopupWndHeight="500" PopupWndY="100" PopupWndX="100" PopupWndWidth="800" UseSubmitBehavior="False"></aspxform:XSelectUserButton>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="68">
                            <aspxform:XTextBox id="XTextBox141" runat="server" XDataBind="OFR_SC_Review_Techonlogy.Designer_MainBoard" HiddenInput="False" Min="0" Max="0" width="60px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="69">
                            <aspxform:XLabel id="XLabel195" runat="server" text="电源评审人:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="52">
                            <aspxform:XTextBox id="XTextBox142" runat="server" XDataBind="OFR_SC_Review_Techonlogy.Designer_PowerName" HiddenInput="False" Min="0" Max="0" width="50px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="25">
                            <aspxform:XSelectUserButton id="XSelectUserButton4" runat="server" Width="21px" DataMap="Account->OFR_SC_Review_Techonlogy.Designer_Power;DisplayName->OFR_SC_Review_Techonlogy.Designer_PowerName"></aspxform:XSelectUserButton>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid" width="66">
                            <aspxform:XTextBox id="XTextBox143" runat="server" XDataBind="OFR_SC_Review_Techonlogy.Designer_Power" HiddenInput="False" Min="0" Max="0" width="60px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="80">
                            <aspxform:XLabel id="XLabel40" runat="server" text="键控板评审人:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="60">
                            <aspxform:XTextBox id="XTextBox49" runat="server" XDataBind="OFR_SC_Review_Techonlogy.Designer_KeyBoardName" HiddenInput="False" Min="0" Max="0" width="50px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT-WIDTH: 1px; BORDER-RIGHT-COLOR: #d1dedf; BORDER-TOP: medium none" width="23">
                            <aspxform:XSelectUserButton id="XSelectUserButton5" runat="server" Width="21px" DataMap="Account->OFR_SC_Review_Techonlogy.Designer_KeyBoard;DisplayName->OFR_SC_Review_Techonlogy.Designer_KeyBoardName"></aspxform:XSelectUserButton>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="64">
                            <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="OFR_SC_Review_Techonlogy.Designer_KeyBoard" HiddenInput="False" Min="0" Max="0" width="60px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="71">
                            <aspxform:XLabel id="XLabel5" runat="server" text="软件评审人:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="55">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="OFR_SC_Review_Techonlogy.Designer_SoftwareName" HiddenInput="False" Min="0" Max="0" width="50px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="28">
                            <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="21px" DataMap="Account->OFR_SC_Review_Techonlogy.Designer_Software;DisplayName->OFR_SC_Review_Techonlogy.Designer_SoftwareName"></aspxform:XSelectUserButton>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="65">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="OFR_SC_Review_Techonlogy.Designer_Software" HiddenInput="False" Min="0" Max="0" width="60px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80">
                            <aspxform:XLabel id="XLabel6" runat="server" text="结构评审人:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="62">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="OFR_SC_Review_Techonlogy.Designer_StructName" HiddenInput="False" Min="0" Max="0" width="50px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="30">
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" DataMap="Account->OFR_SC_Review_Techonlogy.Designer_Struct;DisplayName->OFR_SC_Review_Techonlogy.Designer_StructName"></aspxform:XSelectUserButton>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="71">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="OFR_SC_Review_Techonlogy.Designer_Struct" HiddenInput="False" Min="0" Max="0" width="60px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" height="27">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="100">
                            <aspxform:XLabel id="XLabel71" runat="server" text="订单评审参考资料"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1143">
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="OFR_SC_Review_Techonlogy.ReferenceAtt"></aspxform:XMSNAttachments>
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
                            <aspxform:XLabel id="XLabel73" runat="server" Font-Bold="True" Font-Size="Small" text="硬件评审" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30" width="34">
                            <aspxform:XLabel id="XLabel27" runat="server" Font-Bold="True" text="序号" Value ValueToDisplayText Width="32px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="204" align="center">
                            <aspxform:XLabel id="XLabel92" runat="server" Font-Bold="True" text="物料编号/型号" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="340" align="center">
                            <aspxform:XLabel id="XLabel131" runat="server" Font-Bold="True" text="规格说明" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="285">
                            <aspxform:XLabel id="XLabel8" runat="server" Font-Bold="True" text="物料提供方式" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="262" align="center">
                            <aspxform:XLabel id="XLabel133" runat="server" Font-Bold="True" text="研发提供/封样时间" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="107" align="center">
                            <aspxform:XLabel id="XLabel134" runat="server" Font-Bold="True" text="责任人" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XGridLineNo id="XGridLineNo4" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox67" runat="server" XDataBind="OFR_SC_Review_HD_Material.MaterialNo" HiddenInput="False" Min="0" Max="0" width="202px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox78" runat="server" XDataBind="OFR_SC_Review_HD_Material.Specification" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="335px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="OFR_SC_Review_HD_Material.MaterialDelivery" RepeatDirection="Horizontal">
                                <asp:ListItem>研发提供</asp:ListItem>
                                <asp:ListItem>供应链采购</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="OFR_SC_Review_HD_Material.EstimatedTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="center">
                            <aspxform:XTextBox id="XTextBox80" runat="server" XDataBind="OFR_SC_Review_HD_Material.Owner" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="100px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid" colspan="2">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton4" runat="server" Width="105px" Height="21px" Text="添加" PrintOut="False" UseSubmitBehavior="False" TableName="OFR_SC_Review_HD_Material" OnClientClick="XFormShell.XFormAgent.AppendBlock(this,'OFR_Attachment1_SJ');return false;"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81" align="right">
                            <aspxform:XLabel id="XLabel139" runat="server" text="样机需求:" Value ValueToDisplayText Height="14px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="72">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="OFR_SC_Review_HD.SampleMachine" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1087">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox84" runat="server" XDataBind="OFR_SC_Review_HD.SampleMachine_Remark" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="887px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81" align="right">
                            <aspxform:XLabel id="XLabel136" runat="server" text="其他评审意见:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox85" runat="server" XDataBind="OFR_SC_Review_HD.OtherReview" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="1100px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel137" runat="server" Font-Bold="True" Font-Size="Small" text="软件评审" ForeColor="Black"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" ValidationGroup="软件签单工程师" ControlToValidate="XTextBox14" ErrorMessage='您软件类型选择了"用成熟软生产"请填写同原订单号' Display="None" DisableExpress='OFR_SC_Review_Software.SoftwareType !="用成熟软件生产"'>同原订单号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" ValidationGroup="项目经理/助理(交期确认)" ControlToValidate="XRadioButtonList36" ErrorMessage="请选择软件状态" Display="None" DisableExpress='OFR_SC_Review_Software.SoftwareType =="用成熟软件生产" || OFR_SC_Review_Software.SoftwareType ==""'>软件状态</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator24" runat="server" ValidationGroup="软件签单工程师" ControlToValidate="XTextBox15" ErrorMessage="请填写软件预计发布时间" Display="None">软件预计发布时间</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="50">
                            <aspxform:XLabel id="XLabel9" runat="server" text="样机需求" Value ValueToDisplayText Height="14px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="77">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="OFR_SC_Review_Software.SampleMachine" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1114">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox13" runat="server" XDataBind="OFR_SC_Review_Software.SampleMachine_Remark" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="287px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="50">
                            <aspxform:XLabel id="XLabel142" runat="server" text="软件类型"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="301">
                            <aspxform:XRadioButtonList id="XRadioButtonList35" runat="server" XDataBind="OFR_SC_Review_Software.SoftwareType" RepeatDirection="Horizontal">
                                <asp:ListItem>用成熟软件生产</asp:ListItem>
                                <asp:ListItem>新软件开发</asp:ListItem>
                                <asp:ListItem>第三方提供软件</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="99" align="right">
                            <aspxform:XLabel id="XLabel14" runat="server" text="同原订单号:" Value ValueToDisplayText HiddenExpress='OFR_SC_Review_Software.SoftwareType !="用成熟软件生产"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="389">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="OFR_SC_Review_Software.SameOrderNumber" Value ValueToDisplayText HiddenExpress='OFR_SC_Review_Software.SoftwareType !="用成熟软件生产"' HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="148px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel154" runat="server" text="软件状态:" Value ValueToDisplayText HiddenExpress='OFR_SC_Review_Software.SoftwareType =="用成熟软件生产"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="312">
                            <aspxform:XRadioButtonList id="XRadioButtonList36" runat="server" XDataBind="OFR_SC_Review_Software.SoftwareState" HiddenExpress='OFR_SC_Review_Software.SoftwareType =="用成熟软件生产"' RepeatDirection="Horizontal">
                                <asp:ListItem>研发阶段</asp:ListItem>
                                <asp:ListItem>客户确认阶段</asp:ListItem>
                                <asp:ListItem>第三方未提供软件</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" id="div2" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="104">
                            <aspxform:XLabel id="XLabel13" runat="server" text="软件预计发布时间:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="247">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox15" runat="server" XDataBind="OFR_SC_Review_Software.EstimatedTimeOfRelease" Value ValueToDisplayText HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="230px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="99" align="right">
                            <aspxform:XLabel id="XLabel155" runat="server" text="说明书更改要求:" Value ValueToDisplayText HiddenExpress='OFR_SC_Review_Software.SoftwareType =="用成熟软件生产"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="87" align="left">
                            <aspxform:XRadioButtonList id="XRadioButtonList37" runat="server" XDataBind="OFR_SC_Review_Software.SpecificationChange" HiddenExpress='OFR_SC_Review_Software.SoftwareType =="用成熟软件生产"' RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="300">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox12" runat="server" XDataBind="OFR_SC_Review_Software.SpecificationChange_Remark" Value ValueToDisplayText HiddenExpress='OFR_SC_Review_Software.SoftwareType =="用成熟软件生产"' HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="275px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel156" runat="server" text="条码打印选项:" Value ValueToDisplayText HiddenExpress='OFR_SC_Review_Software.SoftwareType =="用成熟软件生产"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="312">
                            <aspxform:XRadioButtonList id="XRadioButtonList39" runat="server" XDataBind="OFR_SC_Review_Software.BarcodePrint" HiddenExpress='OFR_SC_Review_Software.SoftwareType =="用成熟软件生产"' RepeatDirection="Horizontal">
                                <asp:ListItem>离线打印</asp:ListItem>
                                <asp:ListItem>在线打印</asp:ListItem>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="104" align="right">
                            <aspxform:XLabel id="XLabel159" runat="server" text="其他评审意见:" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1139">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox90" runat="server" XDataBind="OFR_SC_Review_Software.OtherReview" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30" width="32">
                            <aspxform:XLabel id="XLabel10" runat="server" Font-Bold="True" text="序号" Value ValueToDisplayText Width="29px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="346" align="center">
                            <aspxform:XLabel id="XLabel41" runat="server" Font-Bold="True" text="物料编号/型号" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="354" align="center">
                            <aspxform:XLabel id="XLabel42" runat="server" Font-Bold="True" text="规格说明" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="213">
                            <aspxform:XLabel id="XLabel43" runat="server" Font-Bold="True" text="物料提供方式" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="179" align="center">
                            <aspxform:XLabel id="XLabel44" runat="server" Font-Bold="True" text="研发提供/封样时间" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="107" align="center">
                            <aspxform:XLabel id="XLabel45" runat="server" Font-Bold="True" text="责任人" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="38">
                            <aspxform:XGridLineNo id="XGridLineNo5" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="OFR_SC_Review_Struct_Material.MaterialNo" HiddenInput="False" Min="0" Max="0" width="320px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="OFR_SC_Review_Struct_Material.Specification" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="350px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" XDataBind="OFR_SC_Review_Struct_Material.MaterialDelivery" RepeatDirection="Horizontal">
                                <asp:ListItem>研发提供</asp:ListItem>
                                <asp:ListItem>供应链采购</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" runat="server" XDataBind="OFR_SC_Review_Struct_Material.EstimatedTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="center">
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="OFR_SC_Review_Struct_Material.Owner" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="100px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid" colspan="2">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton7" runat="server" Width="105px" Height="21px" Text="添加" PrintOut="False" UseSubmitBehavior="False" TableName="OFR_SC_Review_Struct_Material" OnClientClick="XFormShell.XFormAgent.AppendBlock(this,'OFR_Attachment1_SJ');return false;"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30" width="31">
                            <aspxform:XLabel id="XLabel16" runat="server" Font-Bold="True" text="增加" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="347" align="center">
                            <aspxform:XLabel id="XLabel17" runat="server" Font-Bold="True" text="增加物料编号/型号" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="354" align="center">
                            <aspxform:XLabel id="XLabel18" runat="server" Font-Bold="True" text="规格说明" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="213">
                            <aspxform:XLabel id="XLabel19" runat="server" Font-Bold="True" text="物料提供方式" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="178" align="center">
                            <aspxform:XLabel id="XLabel20" runat="server" Font-Bold="True" text="研发提供/封样时间" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="108" align="center">
                            <aspxform:XLabel id="XLabel21" runat="server" Font-Bold="True" text="责任人" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="OFR_SC_Review_Struct_AddMaterial.MaterialNo" HiddenInput="False" Min="0" Max="0" width="320px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="OFR_SC_Review_Struct_AddMaterial.Specification" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="350px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="OFR_SC_Review_Struct_AddMaterial.MaterialDelivery" RepeatDirection="Horizontal">
                                <asp:ListItem>研发提供</asp:ListItem>
                                <asp:ListItem>供应链采购</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="OFR_SC_Review_Struct_AddMaterial.EstimatedTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="center">
                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="OFR_SC_Review_Struct_AddMaterial.Owner" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="100px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid" colspan="2">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Width="105px" Height="21px" Text="添加" PrintOut="False" UseSubmitBehavior="False" TableName="OFR_SC_Review_Struct_AddMaterial" OnClientClick="XFormShell.XFormAgent.AppendBlock(this,'OFR_Attachment1_SJ');return false;"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30" width="32">
                            <aspxform:XLabel id="XLabel22" runat="server" Font-Bold="True" text="替代" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="346" align="center">
                            <aspxform:XLabel id="XLabel23" runat="server" Font-Bold="True" text="替代物料编号/型号" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="354" align="center">
                            <aspxform:XLabel id="XLabel24" runat="server" Font-Bold="True" text="规格说明" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="213">
                            <aspxform:XLabel id="XLabel28" runat="server" Font-Bold="True" text="物料提供方式" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="179" align="center">
                            <aspxform:XLabel id="XLabel29" runat="server" Font-Bold="True" text="研发提供/封样时间" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="107" align="center">
                            <aspxform:XLabel id="XLabel30" runat="server" Font-Bold="True" text="责任人" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="21">
                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="OFR_SC_Review_Struct_ReplaceMaterial.MaterialNo" HiddenInput="False" Min="0" Max="0" width="320px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="OFR_SC_Review_Struct_ReplaceMaterial.Specification" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="350px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="OFR_SC_Review_Struct_ReplaceMaterial.MaterialDelivery" RepeatDirection="Horizontal">
                                <asp:ListItem>研发提供</asp:ListItem>
                                <asp:ListItem>供应链采购</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker6" runat="server" XDataBind="OFR_SC_Review_Struct_ReplaceMaterial.EstimatedTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="center">
                            <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="OFR_SC_Review_Struct_ReplaceMaterial.Owner" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="100px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid" colspan="2">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Width="105px" Height="21px" Text="添加" PrintOut="False" UseSubmitBehavior="False" TableName="OFR_SC_Review_Struct_ReplaceMaterial" OnClientClick="XFormShell.XFormAgent.AppendBlock(this,'OFR_Attachment1_SJ');return false;"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="32" width="32">
                            <aspxform:XLabel id="XLabel31" runat="server" Font-Bold="True" text="删除" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="209" align="center">
                            <aspxform:XLabel id="XLabel32" runat="server" Font-Bold="True" text="删除物料编号/型号" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="330" align="center">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="289">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="264" align="center">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="107" align="center">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XGridLineNo id="XGridLineNo3" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="OFR_SC_Review_Struct_DelMaterial.MaterialNo" HiddenInput="False" Min="0" Max="0" width="202px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="center">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator37" runat="server" ValidationGroup="工艺签单工程师" ControlToValidate="XTextBox34" ErrorMessage="请填写工艺评审!" Display="None">工艺评审</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid" colspan="2">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton3" runat="server" Width="105px" Height="21px" Text="添加" PrintOut="False" UseSubmitBehavior="False" TableName="OFR_SC_Review_Struct_DelMaterial" OnClientClick="false;"></aspxform:XAddBlockButton>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox91" runat="server" XDataBind="OFR_SC_BInfo.Review_Struct" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="81">
                            <aspxform:XLabel id="XLabel34" runat="server" Font-Bold="True" Font-Size="Small" text="工艺评审" Value ValueToDisplayText ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox34" runat="server" XDataBind="OFR_SC_BInfo.Review_Craft" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel35" runat="server" Font-Bold="True" Font-Size="Small" text="BOM签发" Value ValueToDisplayText ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox35" runat="server" XDataBind="OFR_SC_BInfo.Review_BOM" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel36" runat="server" Font-Bold="True" Font-Size="Small" text="辅料验证评审" Value ValueToDisplayText ForeColor="Black"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator25" runat="server" ValidationGroup="SQE" ControlToValidate="XRadioButtonList3" ErrorMessage="请选择是否需要加辅料验证" Display="None">是否需要加辅料验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator26" runat="server" ValidationGroup="SQE" ControlToValidate="XTextBox36" ErrorMessage="您选择是需要加辅料验证，请填写意见说明" Display="None" DisableExpress='OFR_SC_BInfo.Review_AccessoryVerify !="是"'>意见说明</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator27" runat="server" ValidationGroup="SQE" ControlToValidate="XTextBox108" ErrorMessage="您选择是需要加辅料验证，请填写要删除主料的编码" Display="None" DisableExpress='OFR_SC_BInfo.Review_AccessoryVerify !="是"'>删除主料</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator28" runat="server" ValidationGroup="SQE" ControlToValidate="XTextBox44" ErrorMessage="您选择是需要加辅料验证，请填写要增加辅料的编码" Display="None" DisableExpress='OFR_SC_BInfo.Review_AccessoryVerify !="是"'>增加辅料</aspxform:XRequiredFieldValidator>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="140" align="center">
                            <aspxform:XLabel id="XLabel37" runat="server" text="是否需要加辅料验证" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="92">
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="OFR_SC_BInfo.Review_AccessoryVerify" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="82" align="right">
                            <aspxform:XLabel id="XLabel38" runat="server" text="意见说明" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="923">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox36" runat="server" XDataBind="OFR_SC_BInfo.Review_AccessoryVerify_Remark" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="16" width="99">
                            <div align="center">
                                <aspxform:XLabel id="XLabel167" runat="server" Font-Bold="True" text="操作" Value ValueToDisplayText></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="651">
                            <div align="center">
                                <aspxform:XLabel id="XLabel168" runat="server" Font-Bold="True" text="主料/辅料编码" Value ValueToDisplayText></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="228" align="center">
                            <aspxform:XLabel id="XLabel176" runat="server" Font-Bold="True" text="数量" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="259">
                            <div align="center">
                                <aspxform:XLabel id="XLabel174" runat="server" Font-Bold="True" Value ValueToDisplayText Text="位号"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="99">
                            <div align="center">
                                <aspxform:XLabel id="XLabel178" runat="server" Font-Bold="True" text="删除主料" Value ValueToDisplayText></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="650">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox108" runat="server" XDataBind="OFR_SC_Review_Accessory_DeleteMateial.MainMatrialCode" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="555px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="229">
                            <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="OFR_SC_Review_Accessory_DeleteMateial.Amount" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="153px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="259">
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="OFR_SC_Review_Accessory_DeleteMateial.BitNum" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="153px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton5" runat="server" Width="105px" Height="21px" Text="添加" PrintOut="False" UseSubmitBehavior="False" TableName="OFR_SC_Review_Accessory_DeleteMateial" OnClientClick="XFormShell.XFormAgent.AppendBlock(this,'OFR_Attachment1_SJ');return false;"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="0,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="99">
                            <div align="center">
                                <aspxform:XLabel id="XLabel39" runat="server" Font-Bold="True" text="增加辅料" Value ValueToDisplayText></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="652">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox44" runat="server" XDataBind="OFR_SC_Review_Accessory_AddMateial.MainMatrialCode" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="555px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="227">
                            <aspxform:XTextBox id="XTextBox46" runat="server" XDataBind="OFR_SC_Review_Accessory_AddMateial.Amount" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="100px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="259">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="OFR_SC_Review_Accessory_AddMateial.BitNum" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="153px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton6" runat="server" Width="105px" Height="21px" Text="添加" PrintOut="False" UseSubmitBehavior="False" TableName="OFR_SC_Review_Accessory_AddMateial" OnClientClick="XFormShell.XFormAgent.AppendBlock(this,'OFR_Attachment1_SJ');return false;"></aspxform:XAddBlockButton>
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
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator29" runat="server" ValidationGroup="PMC" ControlToValidate="XDateTimePicker4" ErrorMessage="请填写订单完成时间" Display="None">订单完成时间</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator32" runat="server" ValidationGroup="物控(长周期)" ControlToValidate="XTextBox76" ErrorMessage="请填写长周期物料完成时间" Display="None">长周期物料</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator33" runat="server" ValidationGroup="物控(SMT)" ControlToValidate="XTextBox96" ErrorMessage="请填写SMT/AI" Display="None">SMT/AI</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator34" runat="server" ValidationGroup="物控(SMT)" ControlToValidate="XTextBox97" ErrorMessage="请填写机芯" Display="None">机芯</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator35" runat="server" ValidationGroup="物控(整机)" ControlToValidate="XTextBox10" ErrorMessage="请填写整机" Display="None">整机</aspxform:XRequiredFieldValidator>
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
                            <aspxform:XTextBox id="XTextBox76" runat="server" XDataBind="OFR_SC_Review_DeliveryDate.LongCycleMaterial" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
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
                            <aspxform:XTextBox id="XTextBox96" runat="server" XDataBind="OFR_SC_Review_DeliveryDate.SMT_AI" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px"></aspxform:XTextBox>
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
                            <aspxform:XTextBox id="XTextBox97" runat="server" XDataBind="OFR_SC_Review_DeliveryDate.MachineChips" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="135" align="center">
                            <aspxform:XLabel id="XLabel12" runat="server" text="整机" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="OFR_SC_Review_DeliveryDate.AllMachine" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="79" align="center">
                            <aspxform:XLabel id="XLabel94" runat="server" text="订单完成时间" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="155">
                            <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" XDataBind="OFR_SC_Review_DeliveryDate.FinishTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="83" align="right">
                            <aspxform:XLabel id="XLabel50" runat="server" text="其他评审意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="923">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox58" runat="server" XDataBind="OFR_SC_Review_DeliveryDate.OtherReview" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderWidth="1" width="100%" TextMode="MultiLine" BorderColor="#DCDCDC" Rows="3"></aspxform:XCommentsTextBox>
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
