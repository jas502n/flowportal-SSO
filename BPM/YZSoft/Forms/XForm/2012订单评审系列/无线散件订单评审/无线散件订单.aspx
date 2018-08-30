<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" rowspan="3" width="909" align="middle">
                            <aspxform:XLabel id="XLabel226" runat="server" Font-Bold="True" Font-Size="Medium" text="深圳创维数字技术股份有限公司" Font-Names="Tahoma"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" bgcolor="white" height="21" width="61" align="right">
                            <p>
                                <aspxform:XLabel id="XLabel227" runat="server" text="版本:" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" width="99">
                            <aspxform:XLabel id="XLabel228" runat="server" text="V2.01" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" height="18" align="right">
                            <p>
                                <aspxform:XLabel id="XLabel229" runat="server" text="发布日期:" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
                            <aspxform:XLabel id="XLabel230" runat="server" text="2014-02-15" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="22" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel11" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_Applicant.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="50" colspan="4" align="middle">
                            <div align="center"><asp:Label id="Label1" runat="server" text="散件订单通知书" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label>
                                <p>
                                    <aspxform:XLabel id="XLabel68" runat="server" Font-Bold="False" text="翻单注意事项：有更改时请销售助理在填写变更说明时，同时更新正式表单中的内容信息！" ForeColor="Red"></aspxform:XLabel>
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
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="OFR_Wuxian_Applicant.HRID" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="25px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="OFR_Wuxian_Applicant.Dept" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="6px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel202" runat="server" text="订单号:" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td width="132">
                            <aspxform:XTextBox id="XTextBox115" runat="server" XDataBind="OFR_Wuxian_Applicant.OrderNum" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="128px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td width="46" align="right">
                            <aspxform:XLabel id="XLabel2" runat="server" text="发起人:"></aspxform:XLabel>
                        </td>
                        <td width="95">
                            <aspxform:XTextBox id="XTextBox229" runat="server" XDataBind="OFR_Wuxian_Applicant.Name" HiddenInput="False" Min="0" Max="0" width="89px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td width="58" align="right">
                            <aspxform:XLabel id="XLabel3" runat="server" text="发起时间:" Width="54px"></aspxform:XLabel>
                        </td>
                        <td width="152">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="OFR_Wuxian_Applicant.AppDate" HiddenInput="False" Min="0" Max="0" width="147px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="18px"></aspxform:XTextBox>
                        </td>
                        <td width="55" align="right">
                            <aspxform:XLabel id="XLabel33" runat="server" text="订单类别:"></aspxform:XLabel>
                        </td>
                        <td width="190">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="OFR_Wuxian_Applicant.OrderType" Width="183px" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">散件订单</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            </span></td>
                        <td width="57" align="right">
                            <aspxform:XLabel id="XLabel332" runat="server" text="PI号:" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td width="163">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="OFR_Wuxian_Applicant.DocumentNum" HiddenInput="False" Min="0" Max="0" width="130px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" width="945" colspan="3">
                            <aspxform:XLabel id="XLabel65" runat="server" text="销售人员:"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator59" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox79" ErrorMessage="请勾选销售人员" Display="None">销售人员</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ValidationGroup="订单专员" ControlToValidate="XTextBox115" ErrorMessage="请填写订单号" Display="None">订单号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox2" ErrorMessage="请填写文档编号" Display="None">文档编号</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="302">
                            <div align="right">
                                <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="85px" NavigateUrl="~\FormSupport\SelUser.aspx" DataMap="Account->OFR_Wuxian_Salers.HRID;DisplayName->OFR_Wuxian_Salers.Name;MemberFullName->OFR_Wuxian_Salers.FullName;Department->OFR_Wuxian_Salers.Dept" Text="选择销售人员" PopupWndHeight="500" PopupWndY="100" PopupWndX="100" PopupWndWidth="800"></aspxform:XSelectUserButton>
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
                            <aspxform:XGridLineNo id="XGridLineNo9" runat="server" BorderWidth="1px" Width="24px" BackColor="#F0F0F0" XType="gridlineno" Enabled="False" BorderColor="Gainsboro">1</aspxform:XGridLineNo>
                            <aspxform:XTextBox id="XTextBox79" runat="server" XDataBind="OFR_Wuxian_Salers.HRID" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="30px" HiddenExpress="1" BorderColor="Gainsboro" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox134" runat="server" XDataBind="OFR_Wuxian_Salers.Name" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="428px" BackColor="#F0F0F0" BorderColor="Gainsboro" BorderStyle="None" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox135" runat="server" XDataBind="OFR_Wuxian_Salers.Dept" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="243px" BackColor="#F0F0F0" BorderColor="Gainsboro" BorderStyle="None" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox136" runat="server" XDataBind="OFR_Wuxian_Salers.FullName" BorderWidth="1" width="10px" HiddenExpress="1" BackColor="#F0F0F0" BorderColor="#DCDCDC" BorderStyle="None"></aspxform:XTextBox>
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
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="OFR_Wuxian_Applicant.SN" BorderWidth="1px" HiddenInput="False" Min="0" Max="0" width="31px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox234" ErrorMessage="请填写项目名称" Display="None">项目名称</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList9" ErrorMessage="请选择产品类别" Display="None">产品类别</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList20" ErrorMessage="请选择RoHS要求" Display="None">RoHS</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox138" ErrorMessage="请填写客户名称" Display="None">客户名称</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox114" ErrorMessage="请选择客户品牌" Display="None">客户品牌</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox132" ErrorMessage="请填写客户型号" Display="None">客户型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox140" ErrorMessage="请填写客户所在地" Display="None">客户所在地</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox237" ErrorMessage="请填写销售地区" Display="None">销售地区</aspxform:XRequiredFieldValidator>
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
                            <aspxform:XLabel id="XLabel359" runat="server" text="项目名称:" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid" width="296">
                            <aspxform:XTextBox id="XTextBox234" runat="server" XDataBind="OFR_Wuxian_BInfo.CoreNumber" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="191px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" DisableExpress='OFR_Wuxian_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
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
                            <aspxform:XTextBox id="XTextBox235" runat="server" XDataBind="OFR_Wuxian_BInfo.ProductModel" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="180px" CssClass="TextBox" DisableCssClass="TextBox" DisableExpress='OFR_Wuxian_Applicant.OrderType == "翻单"'></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75" align="right">
                            <aspxform:XLabel id="XLabel64" runat="server" text="ROHS:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="458">
                            <aspxform:XRadioButtonList id="XRadioButtonList20" runat="server" XDataBind="OFR_Wuxian_BInfo.ROSH" RepeatDirection="Horizontal">
                                <asp:ListItem>要求</asp:ListItem>
                                <asp:ListItem>不要求</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="70" align="right">
                            <aspxform:XLabel id="XLabel363" runat="server" text="销售地区:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="252">
                            <aspxform:XTextBox id="XTextBox237" runat="server" XDataBind="OFR_Wuxian_BInfo.SalesArea" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="180px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
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
                            <aspxform:XTextBox id="XTextBox138" runat="server" XDataBind="OFR_Wuxian_BInfo.CustomerName" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="159px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel188" runat="server" text="客户品牌:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="236">
                            <aspxform:XTextBox id="XTextBox114" runat="server" XDataBind="OFR_Wuxian_BInfo.CustomerBrand" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="193px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="right">
                            <aspxform:XLabel id="XLabel96" runat="server" text="客户型号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="234">
                            <aspxform:XTextBox id="XTextBox132" runat="server" XDataBind="OFR_Wuxian_BInfo.CustomerModel" HiddenInput="False" Min="0" Max="0" width="210px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="70" align="right">
                            <aspxform:XLabel id="XLabel193" runat="server" text="客户所在地:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="252">
                            <aspxform:XTextBox id="XTextBox140" runat="server" XDataBind="OFR_Wuxian_BInfo.CustomerAddr" HiddenInput="False" Min="0" Max="0" width="181px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel46" runat="server" text="散件备损:" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="213">
                            <aspxform:XCheckBox id="XCheckBox17" runat="server" XDataBind="OFR_Wuxian_BInfo.SanJian" Text="半成品"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox18" runat="server" XDataBind="OFR_Wuxian_BInfo.BeiSun" Text="散件"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="right">
                            <aspxform:XLabel id="XLabel173" runat="server" text="其他要求:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="865">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox103" runat="server" XDataBind="OFR_Wuxian_BInfo.OtherRequirements" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="830px" NormalCssClass="TextBox" CssClass="TextBox" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel162" runat="server" Font-Bold="True" Font-Size="X-Small" text="半成品" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="1,1" hiddenexpress="OFR_Wuxian_BInfo.SanJian != 1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="29">
                            <aspxform:XLabel id="XLabel307" runat="server" Font-Bold="True" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="262" align="middle">
                            <aspxform:XLabel id="XLabel163" runat="server" Font-Bold="True" text="名称" Width="32px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="middle">
                            <aspxform:XLabel id="XLabel164" runat="server" Font-Bold="True" text="数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="216" align="middle">
                            <aspxform:XLabel id="XLabel166" runat="server" Font-Bold="True" text="组件号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel169" runat="server" Font-Bold="True" text="备注/电子流更改号"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="17px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox92" runat="server" XDataBind="OFR_Wuxian_BanChengPin.Name" HiddenInput="False" Min="0" Max="0" width="240px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox93" runat="server" XDataBind="OFR_Wuxian_BanChengPin.Amount" HiddenInput="False" Min="0" Max="0" width="60px" DisableBehavior="ReadOnly" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox95" runat="server" XDataBind="OFR_Wuxian_BanChengPin.ModuleNumber" HiddenInput="False" Min="0" Max="0" width="200px" DisableBehavior="ReadOnly" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox98" runat="server" XDataBind="OFR_Wuxian_BanChengPin.Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="625px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="添加半成品" TableName="OFR_Wuxian_BanChengPin" PrintOut="False"></aspxform:XAddBlockButton>
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
                            <aspxform:XLabel id="XLabel170" runat="server" Font-Bold="True" Font-Size="X-Small" text="散件" ForeColor="Blue"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="1,1" hiddenexpress="OFR_Wuxian_BInfo.BeiSun !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="17" width="31">
                            <aspxform:XLabel id="XLabel308" runat="server" Font-Bold="True" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261" align="middle">
                            <aspxform:XLabel id="XLabel171" runat="server" Font-Bold="True" text="名称" Width="32px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="80" align="middle">
                            <aspxform:XLabel id="XLabel172" runat="server" Font-Bold="True" text="数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="215" align="middle">
                            <aspxform:XLabel id="XLabel175" runat="server" Font-Bold="True" text="P/N"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel177" runat="server" Font-Bold="True" text="备注/电子流更改号"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox99" runat="server" XDataBind="OFR_Wuxian_SanJian.Name" HiddenInput="False" Min="0" Max="0" width="240px" DisableBehavior="ReadOnly" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox100" runat="server" XDataBind="OFR_Wuxian_SanJian.Amount" HiddenInput="False" Min="0" Max="0" width="60px" DisableBehavior="ReadOnly" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox101" runat="server" XDataBind="OFR_Wuxian_SanJian.PN" HiddenInput="False" Min="0" Max="0" width="200px" DisableBehavior="ReadOnly" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox102" runat="server" XDataBind="OFR_Wuxian_SanJian.Remark" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="625px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="23">
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator38" runat="server" ValidationGroup="开始" ControlToValidate="XTextBox139" ErrorMessage="您走货方式选择的为SKD，请填写SKD的详细要求信息！" Display="None" DisableExpress='OFR_Wuxian_BInfo.GoTheWayGoods !="SKD"'>走货方式SKD</aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td width="420" align="right">
                        </td>
                        <td width="226" align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Height="21px" Text="添加散件" TableName="OFR_Wuxian_SanJian" PrintOut="False" UseSubmitBehavior="False"></aspxform:XAddBlockButton>
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
                            <aspxform:XTextBox id="XTextBox131" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_BInfo.ModeOfPayment_Remark" HiddenInput="False" Min="0" Max="0" width="800px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="right">
                            <aspxform:XLabel id="XLabel194" runat="server" text="发货要求:" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261">
                            <aspxform:XRadioButtonList id="XRadioButtonList53" runat="server" XDataBind="OFR_Wuxian_BInfo.GoTheWayGoods" RepeatDirection="Horizontal" ValidationGroup="开始">
                                <asp:ListItem>单独发货</asp:ListItem>
                                <asp:ListItem>随主订单发货</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="900">
                            <aspxform:XTextBox id="XTextBox139" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_BInfo.GoTheWayGoods_Remark" HiddenInput="False" Min="0" Max="0" width="559px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
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
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OFR_Wuxian_BInfo.ShipmentDate" Width="170px" CssClass="TextBox" XType="datetime" ReadOnly="True" XSubType="date" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="82" align="right">
                            <aspxform:XLabel id="XLabel26" runat="server" text="柜型:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="562">
                            <span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="OFR_Wuxian_BInfo.CabinetType_Only" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            </span></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_BInfo.ModeOfDelivery !="分批次出货要求"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="29">
                            <aspxform:XLabel id="XLabel77" runat="server" Font-Bold="True" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="148" align="middle">
                            <aspxform:XLabel id="XLabel78" runat="server" Font-Bold="True" text="批次" Width="40px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="195" align="middle">
                            <aspxform:XLabel id="XLabel80" runat="server" Font-Bold="True" text="交期"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79" align="middle">
                            <aspxform:XLabel id="XLabel135" runat="server" Font-Bold="True" text="数量" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="218" align="middle">
                            <aspxform:XLabel id="XLabel327" runat="server" Font-Bold="True" text="柜型"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="562" align="middle">
                            <aspxform:XLabel id="XLabel331" runat="server" Font-Bold="True" text="备注"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="21">
                            <aspxform:XGridLineNo id="XGridLineNo6" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="OFR_Wuxian_Delivery.Bath" HiddenInput="False" Min="0" Max="0" width="139px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox164" runat="server" XDataBind="OFR_Wuxian_Delivery.DeliveryDate" HiddenInput="False" Min="0" Max="0" width="187px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox165" runat="server" XDataBind="OFR_Wuxian_Delivery.Amount" HiddenInput="False" Min="0" Max="0" width="75px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox166" runat="server" XDataBind="OFR_Wuxian_Delivery.CabinetType" HiddenInput="False" Min="0" Max="0" width="204px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox168" runat="server" XDataBind="OFR_Wuxian_Delivery.Remark" HiddenInput="False" Min="0" Max="0" width="530px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton6" runat="server" Text="添加批次" TableName="OFR_Wuxian_Delivery" PrintOut="False"></aspxform:XAddBlockButton>
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
                            <aspxform:XLabel id="XLabel124" runat="server" Font-Bold="True" Font-Size="Small" text="客户指定物料及序列号要求信息" ValueToDisplayText Value ForeColor="Navy"></aspxform:XLabel>
                            <font color="red">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList55" ErrorMessage="请选择付款方式" Display="None">付款方式</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList53" ErrorMessage="请选择走货方式" Display="None">走货方式</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" ValidationGroup="开始" ControlToValidate="XRadioButtonList5" ErrorMessage="请选择交货方式" Display="None">交货方式</aspxform:XRequiredFieldValidator>
                            </font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28" valign="center" width="131" align="middle">
                            <aspxform:XLabel id="XLabel31" runat="server" text="客户指定采购物料要求"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1112">
                            <aspxform:XCheckBox id="XCheckBox19" runat="server" XDataBind="OFR_Wuxian_CustomerRequirement.CustomerPurchaseMaterial" Text="由我司负责采购的物料"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox20" runat="server" XDataBind="OFR_Wuxian_CustomerRequirement.MyPurchaseMaterial" Text="由客户自行采购的物料"></aspxform:XCheckBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="1,1" hiddenexpress="OFR_Wuxian_CustomerRequirement.CustomerPurchaseMaterial !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="35">
                            <aspxform:XLabel id="XLabel36" runat="server" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="310" align="middle">
                            <aspxform:XLabel id="XLabel37" runat="server" Font-Bold="True" text="我司采购物料名称"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="middle">
                            <aspxform:XLabel id="XLabel38" runat="server" Font-Bold="True" text="数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261" align="middle">
                            <aspxform:XLabel id="XLabel39" runat="server" Font-Bold="True" text="指定供应商与联系方式"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="575" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel40" runat="server" Font-Bold="True" text="交货时间与方式"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26">
                            <aspxform:XGridLineNo id="XGridLineNo7" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="OFR_Wuxian_CR_MyCompany.MaterialName" HiddenInput="False" Min="0" Max="0" width="274px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="OFR_Wuxian_CR_MyCompany.Amount" HiddenInput="False" Min="0" Max="0" width="36px" DisableBehavior="ReadOnly" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="OFR_Wuxian_CR_MyCompany.Suppliers" HiddenInput="False" Min="0" Max="0" width="256px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox53" runat="server" XDataBind="OFR_Wuxian_CR_MyCompany.DeliveryTime" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="560px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton7" runat="server" Height="21px" Text="添加物料" TableName="OFR_Wuxian_CR_MyCompany" PrintOut="False" UseSubmitBehavior="False"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" dynamicarea="1,1" hiddenexpress="OFR_Wuxian_CustomerRequirement.MyPurchaseMaterial !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="35">
                            <aspxform:XLabel id="XLabel41" runat="server" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="310" align="middle">
                            <aspxform:XLabel id="XLabel42" runat="server" Font-Bold="True" text="客户采购物料名称"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="middle">
                            <aspxform:XLabel id="XLabel43" runat="server" Font-Bold="True" text="数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="261" align="middle">
                            <aspxform:XLabel id="XLabel44" runat="server" Font-Bold="True" text="指定供应商与联系方式"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="575" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel45" runat="server" Font-Bold="True" text="交货时间与方式"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22">
                            <aspxform:XGridLineNo id="XGridLineNo8" runat="server" Font-Bold="True" ForeColor="Red" BorderWidth="0px" Width="21px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="OFR_Wuxian_CR_Customer.MaterialName" HiddenInput="False" Min="0" Max="0" width="277px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="OFR_Wuxian_CR_Customer.Amount" HiddenInput="False" Min="0" Max="0" width="36px" DisableBehavior="ReadOnly" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox56" runat="server" XDataBind="OFR_Wuxian_CR_Customer.Suppliers" HiddenInput="False" Min="0" Max="0" width="253px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox57" runat="server" XDataBind="OFR_Wuxian_CR_Customer.DeliveryTime" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="560px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XAddBlockButton id="XAddBlockButton8" runat="server" Height="21px" Text="添加物料" TableName="OFR_Wuxian_CR_Customer" PrintOut="False" UseSubmitBehavior="False"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" valign="center" width="89" align="middle">
                            <aspxform:XLabel id="XLabel32" runat="server" Font-Bold="True" Font-Size="X-Small" text="序列号要求" ForeColor="Blue"></aspxform:XLabel>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox116" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.Remark" HiddenInput="False" Min="0" Max="0" width="695px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel13" runat="server" text="客户提供" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="51">
                            <aspxform:XLabel id="XLabel51" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="491">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox22" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.SerialNumber_Start_Customer" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="51">
                            <aspxform:XLabel id="XLabel16" runat="server" text="我司提供" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="51">
                            <aspxform:XLabel id="XLabel17" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="467">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox82" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_SerialNumberRequirement.SerialNumber_Start_Company" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XLabel id="XLabel345" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox181" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.SerialNumber_End_Customer" HiddenInput="False" Min="0" Max="0" width="388px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel18" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox5" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_SerialNumberRequirement.SerialNumber_End_Company" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_SerialNumberRequirement.Type_IMEI1 != 1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="63">
                            <aspxform:XLabel id="XLabel19" runat="server" text="IMIE1" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="53">
                            <aspxform:XLabel id="XLabel20" runat="server" text="客户提供" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="51">
                            <aspxform:XLabel id="XLabel21" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="491">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox6" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI1_Start_Customer" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="51">
                            <aspxform:XLabel id="XLabel22" runat="server" text="我司提供" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="51">
                            <aspxform:XLabel id="XLabel23" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="467">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox9" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI1_Start_Company" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel24" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI1_End_Customer" HiddenInput="False" Min="0" Max="0" width="388px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel29" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox15" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI1_End_Company" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_SerialNumberRequirement.Type_IMEI2 != 1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="63">
                            <aspxform:XLabel id="XLabel30" runat="server" text="IMIE2" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="53">
                            <aspxform:XLabel id="XLabel48" runat="server" text="客户提供" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="51">
                            <aspxform:XLabel id="XLabel52" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="491">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox16" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI2_Start_Customer" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="51">
                            <aspxform:XLabel id="XLabel56" runat="server" text="我司提供" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="51">
                            <aspxform:XLabel id="XLabel57" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="467">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox17" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI2_Start_Company" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XLabel id="XLabel58" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI2_End_Customer" HiddenInput="False" Min="0" Max="0" width="388px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel59" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox19" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_SerialNumberRequirement.IMEI2_End_Company" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_SerialNumberRequirement.Type_WIFI1 !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="63">
                            <aspxform:XLabel id="XLabel67" runat="server" text="WIFI1" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="53">
                            <aspxform:XLabel id="XLabel69" runat="server" text="客户提供" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="51">
                            <aspxform:XLabel id="XLabel101" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="491">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox24" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI1_Start_Customer" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="51">
                            <aspxform:XLabel id="XLabel106" runat="server" text="我司提供" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="51">
                            <aspxform:XLabel id="XLabel107" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="467">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox28" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI1_Start_Company" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XLabel id="XLabel108" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI1_End_Customer" HiddenInput="False" Min="0" Max="0" width="388px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel109" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox32" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI1_End_Company" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_SerialNumberRequirement.Type_WIFI2 !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="63">
                            <aspxform:XLabel id="XLabel110" runat="server" text="WIFI2" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="53">
                            <aspxform:XLabel id="XLabel111" runat="server" text="客户提供" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="51">
                            <aspxform:XLabel id="XLabel112" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="491">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox33" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI2_Start_Customer" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="51">
                            <aspxform:XLabel id="XLabel113" runat="server" text="我司提供" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="51">
                            <aspxform:XLabel id="XLabel114" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="467">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox34" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI2_Start_Company" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XLabel id="XLabel117" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI2_End_Customer" HiddenInput="False" Min="0" Max="0" width="388px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel121" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox37" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_SerialNumberRequirement.WIFI2_End_Company" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_SerialNumberRequirement.Type_BT !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="63">
                            <aspxform:XLabel id="XLabel122" runat="server" text="BT" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="53">
                            <aspxform:XLabel id="XLabel123" runat="server" text="客户提供" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="51">
                            <aspxform:XLabel id="XLabel125" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="491">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox38" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.BT_Start_Customer" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="19px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="51">
                            <aspxform:XLabel id="XLabel126" runat="server" text="我司提供" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="51">
                            <aspxform:XLabel id="XLabel129" runat="server" text="开始号码"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="467">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox39" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_SerialNumberRequirement.BT_Start_Company" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XLabel id="XLabel130" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.BT_End_Customer" HiddenInput="False" Min="0" Max="0" width="388px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel143" runat="server" text="结束号码" Width="48px"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox41" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_SerialNumberRequirement.BT_End_Company" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="388px" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="20px" BorderColor="Gainsboro" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress="OFR_Wuxian_SerialNumberRequirement.Type_Other !=1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="64" align="middle">
                            <aspxform:XLabel id="XLabel28" runat="server" text="其他"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1179">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox61" runat="server" XDataBind="OFR_Wuxian_SerialNumberRequirement.Other" HiddenInput="False" Min="0" Max="0" width="1100px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="89">
                            <aspxform:XLabel id="XLabel5" runat="server" Font-Bold="True" Font-Size="Small" text="备机要求" ForeColor="Navy"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="221">
                            <aspxform:XCheckBoxList id="XCheckBoxList7" runat="server" XDataBind="OFR_Wuxian_AlternateMachineRequirment.Type" RepeatDirection="Horizontal">
                                <asp:ListItem>认证机器</asp:ListItem>
                                <asp:ListItem>研发备机</asp:ListItem>
                                <asp:ListItem>生产备机</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="930">
                        </td>
                    </tr>
                </tbody>
            </table>
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
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_AlternateMachineRequirment.Type =="" || OFR_Wuxian_AlternateMachineRequirment.Type=="研发备机"|| OFR_Wuxian_AlternateMachineRequirment.Type=="生产备机"|| OFR_Wuxian_AlternateMachineRequirment.Type=="研发备机,生产备机"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel9" runat="server" text="认证机器"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="748">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="OFR_Wuxian_AlternateMachineRequirment.CertificationMachine" ForeColor="Red" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="650px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="403">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="OFR_Wuxian_AlternateMachineRequirment.CertificationMachine_Reason" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="380px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='OFR_Wuxian_AlternateMachineRequirment.Type =="" || OFR_Wuxian_AlternateMachineRequirment.Type=="认证机器"|| OFR_Wuxian_AlternateMachineRequirment.Type=="生产备机"|| OFR_Wuxian_AlternateMachineRequirment.Type=="认证机器,生产备机"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89" align="middle">
                            <aspxform:XLabel id="XLabel10" runat="server" text="研发备机"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="748">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="OFR_Wuxian_AlternateMachineRequirment.RDMachine" ForeColor="Red" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="650px" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="403">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="OFR_Wuxian_AlternateMachineRequirment.RDMachine_Reason" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="380px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
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
                                <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="OFR_Wuxian_AlternateMachineRequirment.ProcuctMachine" ForeColor="Red" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="650px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="403">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="OFR_Wuxian_AlternateMachineRequirment.ProcuctMachine_Reason" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="380px" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="1248" colspan="2">
                            <aspxform:XLabel id="XLabel34" runat="server" Font-Bold="True" Font-Size="Small" text="出口规格书要求" ValueToDisplayText Value ForeColor="Navy"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" ValidationGroup="暂时不验证" ControlToValidate="XMSNAttachments3" ErrorMessage="请上传出口规格书" Display="None">出口规格书</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div style="VISIBILITY: visible" id="div1" align="center">
                <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="89" align="middle">
                                <aspxform:XLabel id="XLabel82" runat="server" text="出口规格书" ValueToDisplayText Value></aspxform:XLabel>
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
                            <aspxform:XLabel id="XLabel70" runat="server" Font-Bold="True" Font-Size="Small" text="配置表图片" ForeColor="Navy"></aspxform:XLabel>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="800" align="middle">
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
                            <aspxform:XLabel id="XLabel72" runat="server" Font-Bold="True" Font-Size="Small" text="订单评审信息" ForeColor="Navy"></aspxform:XLabel>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="98" align="middle">
                            <aspxform:XLabel id="XLabel63" runat="server" text="资料说明"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1145">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox88" runat="server" XDataBind="OFR_Wuxian_BInfo.ReferenceAttRemark" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="81">
                            <aspxform:XLabel id="XLabel119" runat="server" Font-Bold="True" Font-Size="Small" text="技术评审" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="300">
                            <aspxform:XCheckBox id="XCheckBox24" runat="server" XDataBind="OFR_Wuxian_Review_HD.MainYorN" Text="硬件"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox4" runat="server" XDataBind="OFR_Wuxian_Review_HD.SoftYorN" Text="软件"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox22" runat="server" XDataBind="OFR_Wuxian_Review_HD.StructYorN" Text="结构"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="OFR_Wuxian_Review_HD.PackageYorN" Text="包装"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox10" runat="server" XDataBind="OFR_Wuxian_Review_HD.ElectronYorN" Text="电子"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="73" align="right">
                            <aspxform:XLabel id="XLabel120" runat="server" text="硬件设计师:" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" width="79">
                            <aspxform:XTextBox id="XTextBox64" runat="server" XDataBind="OFR_Wuxian_Review_HD.MainYorN_DesignerName" HiddenInput="False" Min="0" Max="0" width="77px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="54">
                            <aspxform:XSelectUserButton id="XSelectUserButton3" runat="server" Width="22px" Height="20px" DataMap="Account->OFR_Wuxian_Review_HD.MainYorN_Designer;DisplayName->OFR_Wuxian_Review_HD.MainYorN_DesignerName" Text="..." PopupWndHeight="500" PopupWndY="100" PopupWndX="100" PopupWndWidth="800" UseSubmitBehavior="False"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox65" runat="server" XDataBind="OFR_Wuxian_Review_HD.MainYorN_Designer" HiddenInput="False" Min="0" Max="0" width="21px" HiddenExpress="1" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="68">
                            <aspxform:XLabel id="XLabel116" runat="server" text="结构设计师:" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="82">
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="OFR_Wuxian_Review_HD.StructYorN_DesignerName" HiddenInput="False" Min="0" Max="0" width="77px" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: red 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="488">
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" DataMap="Account->OFR_Wuxian_Review_HD.StructYorN_Designer;DisplayName->OFR_Wuxian_Review_HD.StructYorN_DesignerName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="OFR_Wuxian_Review_HD.StructYorN_Designer" HiddenInput="False" Min="0" Max="0" width="25px" HiddenExpress="1" DisableBehavior="ReadOnly" NormalCssClass="TextBoxPink" CssClass="TextBoxPink" DisableCssClass="TextBoxPink"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel73" runat="server" Font-Bold="True" Font-Size="Small" text="硬件评审" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81" align="middle">
                            <aspxform:XLabel id="XLabel136" runat="server" text="评审意见" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox84" runat="server" XDataBind="OFR_Wuxian_Review_SanjianOrderNum.Review_HD" HiddenInput="False" Min="0" Max="0" width="1140px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel137" runat="server" Font-Bold="True" Font-Size="Small" text="电子评审" ValueToDisplayText Value ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81" align="middle">
                            <aspxform:XLabel id="XLabel223" runat="server" text="评审意见" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox122" runat="server" XDataBind="OFR_Wuxian_Review_SanjianOrderNum.Review_Electron" HiddenInput="False" Min="0" Max="0" width="1140px" DisableBehavior="ReadOnly" NormalCssClass="TextBox" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel212" runat="server" Font-Bold="True" Font-Size="Small" text="软件评审" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="middle">
                            <aspxform:XLabel id="XLabel159" runat="server" text="评审意见" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox90" runat="server" XDataBind="OFR_Wuxian_Review_SanjianOrderNum.Review_Soft" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="81">
                            <aspxform:XLabel id="XLabel160" runat="server" Font-Bold="True" Font-Size="Small" text="结构评审" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="504">
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="241" align="right">
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="411">
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="81" align="middle">
                            <aspxform:XLabel id="XLabel181" runat="server" text="评审意见" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox91" runat="server" XDataBind="OFR_Wuxian_Review_SanjianOrderNum.Review_Struct" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="111">
                            <aspxform:XLabel id="XLabel150" runat="server" Font-Bold="True" Font-Size="Small" text="包装BOM评审" ValueToDisplayText Value ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="474">
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="241" align="right">
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="411">
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="81" align="middle">
                            <aspxform:XLabel id="XLabel1" runat="server" text="评审意见" ValueToDisplayText Value></aspxform:XLabel>
                            <font color="red"></font></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1162">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox75" runat="server" XDataBind="OFR_Wuxian_Review_SanjianOrderNum.Review_Package" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel55" runat="server" Font-Bold="True" Font-Size="Small" text="交期评审" ForeColor="Black"></aspxform:XLabel>
                            <font color="red"></font></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="VISIBILITY: visible" align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="135" align="middle">
                            <aspxform:XLabel id="XLabel86" runat="server" Font-Bold="True" text="物料类别"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="135" align="middle">
                            <aspxform:XLabel id="XLabel88" runat="server" text="长周期物料"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="1108">
                            <aspxform:XTextBox id="XTextBox76" runat="server" XDataBind="OFR_Wuxian_Review_DeliveryDate.LongCycleMaterial" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox104" runat="server" XDataBind="OFR_Wuxian_Review_DeliveryDate.AllMachine" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="82" align="middle">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="74">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="129" align="right">
                            <aspxform:XLabel id="XLabel90" runat="server" text="其他评审意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="952">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox58" runat="server" XDataBind="OFR_Wuxian_Review_DeliveryDate.OtherReview" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="82">
                            <aspxform:XLabel id="XLabel128" runat="server" Font-Bold="True" Font-Size="Small" text="财务评审" ForeColor="Black"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1161">
                            <aspxform:XRadioButtonList id="XRadioButtonList19" runat="server" XDataBind="OFR_Wuxian_Review_SanjianOrderNum.Financial_Review_YOrN" RepeatDirection="Horizontal">
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
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox111" runat="server" XDataBind="OFR_Wuxian_Review_SanjianOrderNum.Financial_Review" HiddenInput="False" Min="0" Max="0" width="890px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="1250" hiddenexpress='Global.StepName !="订单批准" &amp;&amp; Global.StepName !="订单终审" &amp;&amp; Global.StepName !="订单专员(订单通知书)"&amp;&amp; Global.StepName !="财务评审"&amp;&amp; Global.StepName !="产品负责人"&amp;&amp; Global.StepName !="总裁批准"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20" width="82">
                            <aspxform:XLabel id="XLabel201" runat="server" Font-Bold="False" text="售价及成本" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1161">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox83" runat="server" ValueToDisplayText Value XDataBind="OFR_Wuxian_Review_SanjianOrderNum.ProductCost" HiddenInput="False" Min="0" Max="0" width="879px" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
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
                        <td height="29" width="277" align="middle">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" MarginBottom="10" MarginTop="20" MarginRight="2" MarginLeft="2" Zoom="60"></aspxform:XPrintButton>
                        </td>
                        <td width="719" align="middle">
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
