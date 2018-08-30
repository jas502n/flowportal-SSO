<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
       protected void Page_Load(object sender, EventArgs e)
        {
    
           XTextBox3.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox58.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox84.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox90.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox91.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox111.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox103.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
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
    <script type="text/javascript" charset="gb2312">
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
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" align="middle">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="210">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <aspxform:XLabel id="XLabel11" runat="server" XDataBind="OFR_BS_Applicant.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="58" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="备损订单通知书" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" height="25" width="92" align="right">
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="OFR_BS_Applicant.HRID" width="25px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="OFR_BS_Applicant.Dept" width="6px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel148" runat="server" text="订单号:" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td width="78">
                            <aspxform:XTextBox id="XTextBox115" runat="server" XDataBind="OFR_BS_Applicant.OrderNum" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="80px"></aspxform:XTextBox>
                        </td>
                        <td width="62" align="right">
                            <aspxform:XLabel id="XLabel2" runat="server" text="发起人:"></aspxform:XLabel>
                        </td>
                        <td width="67">
                            <aspxform:XTextBox id="XTextBox229" runat="server" XDataBind="OFR_BS_Applicant.Name" width="69px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td width="65" align="right">
                            <aspxform:XLabel id="XLabel3" runat="server" text="发起时间:" Width="54px"></aspxform:XLabel>
                        </td>
                        <td width="132">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="OFR_BS_Applicant.AppDate" width="130px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="18px"></aspxform:XTextBox>
                        </td>
                        <td width="45" align="middle">
                            <aspxform:XLabel id="XLabel33" runat="server" text="产品线:"></aspxform:XLabel>
                        </td>
                        <td width="412">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="OFR_BS_Applicant.ProductLine" Width="495px" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">国内运营产品线</asp:ListItem>
                                <asp:ListItem>海外运营产品线</asp:ListItem>
                                <asp:ListItem>海外零售产品线</asp:ListItem>
                                <asp:ListItem>宽带事业部</asp:ListItem>
                                <asp:ListItem>零售产品部</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            </span></td>
                        <td width="59" align="right">
                            <aspxform:XLabel id="XLabel332" runat="server" text="文档编号:"></aspxform:XLabel>
                        </td>
                        <td width="120">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="OFR_BS_Applicant.DocumentNum" width="120px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" width="945" colspan="3">
                            <aspxform:XLabel id="XLabel65" runat="server" text="销售人员:"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator59" runat="server" Display="None" ErrorMessage="请勾选销售人员" ControlToValidate="XTextBox79" ValidationGroup="开始">销售人员</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请填写订单号!" ControlToValidate="XTextBox115" ValidationGroup="订单专员(建单)">订单号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="请填写文档编号!" ControlToValidate="XTextBox2" ValidationGroup="开始">文档编号</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="302">
                            <div align="right">
                                <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="85px" DataMap="Account->OFR_BS_Salers.HRID;DisplayName->OFR_BS_Salers.Name;MemberFullName->OFR_BS_Salers.FullName;Department->OFR_BS_Salers.Dept" MultiSelect="True" PopupWndWidth="800" PopupWndX="100" PopupWndY="100" PopupWndHeight="500" Text="选择销售人员" NavigateUrl="~\FormSupport\SelUser.aspx"></aspxform:XSelectUserButton>
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
                            <aspxform:XTextBox id="XTextBox79" runat="server" XDataBind="OFR_BS_Salers.HRID" width="30px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1" BorderColor="Gainsboro" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox134" runat="server" XDataBind="OFR_BS_Salers.Name" width="428px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" BorderColor="Gainsboro" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox135" runat="server" XDataBind="OFR_BS_Salers.Dept" width="243px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" BorderColor="Gainsboro" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox136" runat="server" XDataBind="OFR_BS_Salers.FullName" width="10px" BorderWidth="1" HiddenExpress="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
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
                            <aspxform:XTextBox id="XTextBox62" runat="server" XDataBind="OFR_BS_Applicant.State" width="38px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1" BorderColor="Gainsboro">有效</aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="OFR_BS_Applicant.SN" width="31px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="OFR_BS_Applicant.OrderType" width="73px" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1" BorderColor="Gainsboro">新订单</aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="请勾选Rohs要求！" ControlToValidate="XRadioButtonList22" ValidationGroup="开始">Rohs要求</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请填写客户名称" ControlToValidate="XTextBox236" ValidationGroup="开始">客户名称</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="请勾选订单方式!" ControlToValidate="XRadioButtonList6" ValidationGroup="开始">订单方式</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="请勾选客户付款方式！" ControlToValidate="XRadioButtonList20" ValidationGroup="开始">客户付款方式</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="请勾选发货要求！" ControlToValidate="XRadioButtonList40" ValidationGroup="开始">发货要求</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="请填写期望交货日期！" ControlToValidate="XDateTimePicker1" ValidationGroup="开始">期望交货日期</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="79" align="right">
                            <aspxform:XLabel id="XLabel53" runat="server" text="ROHS要求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="313">
                            <aspxform:XRadioButtonList id="XRadioButtonList22" runat="server" XDataBind="OFR_BS_BInfo.ROHS" RepeatDirection="Horizontal">
                                <asp:ListItem>要求</asp:ListItem>
                                <asp:ListItem>不要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="right">
                            <aspxform:XLabel id="XLabel362" runat="server" text="客户名称:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="764">
                            <aspxform:XTextBox id="XTextBox236" runat="server" XDataBind="OFR_BS_BInfo.CustomerName" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="380px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="79" align="right">
                            <aspxform:XLabel id="XLabel64" runat="server" text="订单方式:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="313">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="OFR_BS_BInfo.OrderType" RepeatDirection="Horizontal">
                                <asp:ListItem>独立订单</asp:ListItem>
                                <asp:ListItem>附属订单</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="right">
                            <aspxform:XLabel id="XLabel4" runat="server" text="主订单:" HiddenExpress='OFR_BS_BInfo.OrderType !="附属订单"'></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="OFR_BS_BInfo.MainOrder" Max="0" Min="0" HiddenInput="False" HiddenExpress='OFR_BS_BInfo.OrderType !="附属订单"' DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="160px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel83" runat="server" text="客户付款方式:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="164">
                            <aspxform:XRadioButtonList id="XRadioButtonList20" runat="server" XDataBind="OFR_BS_BInfo.PaymentType" RepeatDirection="Horizontal">
                                <asp:ListItem>TT00</asp:ListItem>
                                <asp:ListItem>免费</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="345">
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="OFR_BS_BInfo.PaymentOther" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Width="314px" Height="23px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="79" align="right">
                            <aspxform:XLabel id="XLabel95" runat="server" text="发货要求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="313">
                            <aspxform:XRadioButtonList id="XRadioButtonList40" runat="server" XDataBind="OFR_BS_BInfo.ModeOfDelivery" RepeatDirection="Horizontal">
                                <asp:ListItem>随主订单发货</asp:ListItem>
                                <asp:ListItem>单独发货</asp:ListItem>
                                <asp:ListItem>待发货通知</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="right">
                            <aspxform:XLabel id="XLabel97" runat="server" text="期望交货日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="764">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OFR_BS_BInfo.ShipmentDate" CssClass="TextBox" Width="170px" XType="datetime" ReadOnly="True" onchange="javascript:XFormOnChange(this);" XSubType="date"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="79" align="right">
                            <aspxform:XLabel id="XLabel15" runat="server" text="特殊要求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1164">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox3" runat="server" XDataBind="OFR_BS_BInfo.Requirements" width="1120px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="313">
                            <aspxform:XCheckBox id="XCheckBox17" runat="server" XDataBind="OFR_BS_BInfo.BanChengPin" Text="半成品"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox18" runat="server" XDataBind="OFR_BS_BInfo.SanJian" Text="散件"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel173" runat="server" text="其他要求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="765">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox103" runat="server" XDataBind="OFR_BS_BInfo.OtherRequirements" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Width="718px" Height="25px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
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
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="1,1" hiddenexpress="OFR_BS_BInfo.BanChengPin != 1">
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
                            <aspxform:XLabel id="XLabel169" runat="server" text="被拷贝订单号" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="17px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox92" runat="server" XDataBind="OFR_BS_BanChengPin.Name" width="240px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox93" runat="server" XDataBind="OFR_BS_BanChengPin.Amount" width="60px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox95" runat="server" XDataBind="OFR_BS_BanChengPin.ModuleNumber" width="200px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox98" runat="server" XDataBind="OFR_BS_BanChengPin.Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink" Width="625px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="添加半成品" PrintOut="False" TableName="OFR_BS_BanChengPin"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
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
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="1,1" hiddenexpress="OFR_BS_BInfo.SanJian !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="31">
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
                            <aspxform:XLabel id="XLabel177" runat="server" text="备注" Font-Bold="True"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Font-Bold="True" BorderWidth="0px" ForeColor="Red" Width="21px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox99" runat="server" XDataBind="OFR_BS_SanJian.Name" width="240px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox100" runat="server" XDataBind="OFR_BS_SanJian.Amount" width="60px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox101" runat="server" XDataBind="OFR_BS_SanJian.PN" width="200px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox102" runat="server" XDataBind="OFR_BS_SanJian.Remark" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" Width="625px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Height="21px" Text="添加散件" PrintOut="False" TableName="OFR_BS_SanJian" UseSubmitBehavior="False"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81" align="middle">
                            <aspxform:XLabel id="XLabel82" runat="server" text="附件" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XAttachments id="XAttachments1" runat="server" XDataBind="OFR_BS_BInfo.Attachment" width="100%" FileTypes="*.doc;*.docx;*.xls;*.xlsx" FileTypesDescription="Word,Excel"></aspxform:XAttachments>
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
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel128" runat="server" text="财务评审" Font-Size="Small" Font-Bold="True" ForeColor="Black"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请选择是否特批！" ControlToValidate="XRadioButtonList1" ValidationGroup="财务评审">是否特批</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" Display="None" ErrorMessage="请勾选产品评审！" ControlToValidate="XTextBox6" ValidationGroup="产品管理工程师">产品评审</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" Display="None" ErrorMessage="请填写硬件评审！" ControlToValidate="XTextBox84" ValidationGroup="硬件评审" DisableExpress="OFR_BS_Review_FinancialAndTechnology.HD  !=1">硬件评审</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" Display="None" ErrorMessage="请填写软件评审" ControlToValidate="XTextBox90" ValidationGroup="软件评审" DisableExpress="OFR_BS_Review_FinancialAndTechnology.Soft != 1">软件评审</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" Display="None" ErrorMessage="请填写结构评审" ControlToValidate="XTextBox91" ValidationGroup="结构评审" DisableExpress="OFR_BS_Review_FinancialAndTechnology.Struct != 1">结构评审</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" Display="None" ErrorMessage="请选择硬件设计师！" ControlToValidate="XTextBox9" ValidationGroup="产品管理工程师" DisableExpress="OFR_BS_Review_FinancialAndTechnology.HD  !=1">硬件设计师</aspxform:XRequiredFieldValidator>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81">
                            <aspxform:XLabel id="XLabel5" runat="server" text="是否特批"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="95">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="OFR_BS_Review_FinancialAndTechnology.TePi" RepeatDirection="Horizontal">
                                <asp:ListItem Value="是">是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="77">
                            <aspxform:XLabel id="XLabel147" runat="server" text="评审意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="984">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox111" runat="server" XDataBind="OFR_BS_Review_FinancialAndTechnology.FinReview" width="800px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="81">
                            <aspxform:XLabel id="XLabel73" runat="server" text="技术评审" Font-Size="Small" Font-Bold="True" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="242">
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="OFR_BS_Review_FinancialAndTechnology.HD" Text="硬件相关"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="OFR_BS_Review_FinancialAndTechnology.Soft" Text="软件相关"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="OFR_BS_Review_FinancialAndTechnology.Struct" Text="结构相关"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="85" align="right">
                            <aspxform:XLabel id="XLabel9" runat="server" text="硬件设计师:" HiddenExpress="OFR_BS_Review_FinancialAndTechnology.HD  !=1"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" width="81">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="OFR_BS_Applicant.HD_Designer" width="77px" Max="0" Min="0" HiddenInput="False" HiddenExpress="OFR_BS_Review_FinancialAndTechnology.HD  !=1" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="746">
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" HiddenExpress="OFR_BS_Review_FinancialAndTechnology.HD  !=1" Width="21px" DataMap="Account->OFR_BS_Applicant.HD_Designer;DisplayName->OFR_BS_Applicant.HD_DesignerName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="OFR_BS_Applicant.HD_DesignerName" width="77px" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" DisableBehavior="ReadOnly" DisableCssClass="TextBoxPink" CssClass="TextBoxPink" NormalCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81">
                            <aspxform:XLabel id="XLabel6" runat="server" text="产品评审"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox6" runat="server" XDataBind="OFR_BS_Review_FinancialAndTechnology.OtherReview" width="1140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_BS_Review_FinancialAndTechnology.HD  !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81">
                            <aspxform:XLabel id="XLabel136" runat="server" text="硬件评审"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox84" runat="server" XDataBind="OFR_BS_Review_FinancialAndTechnology.HDReview" width="1140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_BS_Review_FinancialAndTechnology.Soft != 1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                            <aspxform:XLabel id="XLabel159" runat="server" text="软件评审"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox90" runat="server" XDataBind="OFR_BS_Review_FinancialAndTechnology.SoftReview" width="1140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_BS_Review_FinancialAndTechnology.Struct != 1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81">
                            <aspxform:XLabel id="XLabel181" runat="server" text="结构评审"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox91" runat="server" XDataBind="OFR_BS_Review_FinancialAndTechnology.StructReview" width="1140px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" NormalCssClass="TextBox" Height="25px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator42" runat="server" Display="None" ErrorMessage="请填写交期评审中的SMT/AI！" ControlToValidate="XTextBox96" ValidationGroup="物控(SMT&amp;机芯)">SMT/AI</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator43" runat="server" Display="None" ErrorMessage="请填写交期评审中的机芯!" ControlToValidate="XTextBox97" ValidationGroup="物控(SMT&amp;机芯)">机芯</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator44" runat="server" Display="None" ErrorMessage="请填写交期评审中的整机!" ControlToValidate="XTextBox104" ValidationGroup="物控(整机)">整机</aspxform:XRequiredFieldValidator>
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
                            <aspxform:XTextBox id="XTextBox76" runat="server" XDataBind="OFR_BS_Review_DeliveryDate.LongCycleMaterial" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
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
                            <aspxform:XTextBox id="XTextBox96" runat="server" XDataBind="OFR_BS_Review_DeliveryDate.SMT_AI" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px"></aspxform:XTextBox>
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
                            <aspxform:XTextBox id="XTextBox97" runat="server" XDataBind="OFR_BS_Review_DeliveryDate.MachineChips" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox104" runat="server" XDataBind="OFR_BS_Review_DeliveryDate.AllMachine" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox"></aspxform:XTextBox>
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
                            <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" XDataBind="OFR_BS_Review_DeliveryDate.ShippingTime_Start" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75">
                            <aspxform:XLabel id="XLabel103" runat="server" text="完成出货时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="276">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" runat="server" XDataBind="OFR_BS_Review_DeliveryDate.ShippingTime_End" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="78" align="right">
                            <aspxform:XLabel id="XLabel105" runat="server" text="撤销计划时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80">
                            <aspxform:XRadioButtonList id="XRadioButtonList54" runat="server" XDataBind="OFR_BS_Review_DeliveryDate.RevocationPlan" RepeatDirection="Horizontal">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>有</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="431">
                            <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" XDataBind="OFR_BS_Review_DeliveryDate.RevocationPlanTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator45" runat="server" Display="None" ErrorMessage="您在交期评审中选择了撤销计划时间为有，请填写！" ControlToValidate="XDateTimePicker8" ValidationGroup="PMC" DisableExpress='OFR_BS_Review_DeliveryDate.RevocationPlan !="有"'>撤销计划时间</aspxform:XRequiredFieldValidator>
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
                            <aspxform:XRadioButtonList id="XRadioButtonList12" runat="server" XDataBind="OFR_BS_Review_DeliveryDate.JiHuoYorN" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator60" runat="server" Display="None" ErrorMessage="请是否勾选激活！" ControlToValidate="XRadioButtonList12" ValidationGroup="PMC">激活</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="78" align="right">
                            <aspxform:XLabel id="XLabel50" runat="server" text="其他评审意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="952">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox58" runat="server" XDataBind="OFR_BS_Review_DeliveryDate.OtherReview" width="890px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" DisableCssClass="TextBox" CssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
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
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
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
