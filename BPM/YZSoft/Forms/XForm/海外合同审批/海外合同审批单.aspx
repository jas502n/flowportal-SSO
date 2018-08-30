<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<%@ Register TagPrefix="n0" Namespace="XFormDesigner.Framework.Web.UI" Assembly="JieControls" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform= "xmlns:xform" xmlns:n0= "xmlns:n0">
<head runat="server">
    <title>BPM Form</title> <style>BODY {
	FONT-SIZE: 13px; FONT-FAMILY: verdana
}
TABLE {
	FONT-SIZE: 13px; FONT-FAMILY: verdana; BORDER-COLLAPSE: collapse
}

P {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 13px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; FONT-FAMILY: verdana
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
.BOXCSS {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #ffb3a7 1px solid
}
.TextBox {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: silver 1px solid
}
.TextBoxPink {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: pink 1px solid
}
.MYHEAD {
	BORDER-TOP: #d1dedf 1px solid; FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: #004e98; BACKGROUND-COLOR: #d1dedf
}
.MYHEAD2 {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; FONT-WEIGHT: bold; FONT-SIZE: 12px; BORDER-LEFT: #000000 1px solid; COLOR: #004e98; BACKGROUND-COLOR: #d1dedf
}
.MYTABLE {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 0px solid
}
.MYTABLE2 {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid
}
.MYTABLE3 {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #d1dedf 0px solid
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
	BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-COLLAPSE: separate; BACKGROUND-COLOR: #d1dedf; BORDER-RIGHT-WIDTH: 0px
}
TABLE.AA TD {
	BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid; HEIGHT: 15px
}
TABLE.AA TR.HeaderRow {
	BACKGROUND-COLOR: #f0f0f0
}
TABLE.AA TR.HeaderRow TD {
	HEIGHT: 25px; TEXT-ALIGN: left
}
TABLE.AA TR.HeaderRow TD.NoColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.StepNameColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.SignColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.ActionColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.DateColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.CommentsColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 99%
}
TABLE.AA TR.DataRow {
	BACKGROUND-COLOR: #ffffff
}
TABLE.AA TR.DataRow TD {
	HEIGHT: 25px; TEXT-ALIGN: left
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
TABLE.AA TR.DataRow TD.CommentsCell {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; COLOR: blue; TEXT-ALIGN: left
}
TABLE.AA TR.Running TD.NoCell {
	BACKGROUND-COLOR: #e0efe6
}
TABLE.AA TR.Running TD.SignCell {
	COLOR: #999999
}
TABLE.OW {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none
}
TABLE.OW TD.T_All {
	BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid
}
TABLE.OW TD.T_TOP {
	BORDER-RIGHT: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid
}
TABLE.OW TD.T_BOTTOM {
	BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid
}
TABLE.OW TD.T_Header {
	BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid; HEIGHT: 22px; BACKGROUND-COLOR: #f0f0f0
}
TABLE.BZ {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none
}
TABLE.BZ TD {
	BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid
}
TABLE.BZ TD.HEAD {
	BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid; HEIGHT: 22px; BACKGROUND-COLOR: #f0f0f0
}
TEXTAREA {
	BORDER-RIGHT: #ffffff 0px solid; BORDER-TOP: #ffffff 0px solid; OVERFLOW-Y: visible; BACKGROUND: #ffffff; OVERFLOW: hidden; BORDER-LEFT: #ffffff 0px solid; BORDER-BOTTOM: #ffb3a7 0px solid
}
</style>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <div align="center">&nbsp; 
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="217">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="403" align="middle">
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Small" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="224">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="45" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="海外合同审批单" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td height="25" width="86" align="right">
                            <aspxform:XLabel id="XLabel3" runat="server" text="申请日期："></aspxform:XLabel>
                        </td>
                        <td width="147">
                            <aspxform:XTextBox id="XTextBox2" runat="server" ReadOnly="True" Min="0" Max="0" width="120px" HiddenInput="False" XDataBind="HWHT_Applicant_Main.AppDate" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                        </td>
                        <td width="64">
                            <p align="right">
                                <aspxform:XLabel id="XLabel2" runat="server" text="申请人："></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="145">
                            <aspxform:XTextBox id="XTextBox1" runat="server" ReadOnly="True" Min="0" Max="0" width="100px" HiddenInput="False" XDataBind="HWHT_Applicant_Main.AppHRName" DisableBehavior="ReadOnly" NormalCssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox14" runat="server" Min="0" Max="0" width="20px" HiddenInput="False" XDataBind="HWHT_Applicant_Main.AppHRID" BorderColor="Gainsboro" BorderStyle="Dotted" HiddenExpress="1" BorderWidth="1px"></aspxform:XTextBox>
                        </td>
                        <td width="66" align="right">
                            流水号：</td>
                        <td width="330">
                            <aspxform:XTextBox id="XTextBox3" runat="server" ReadOnly="True" Min="0" Max="0" width="120px" HiddenInput="False" XDataBind="HWHT_Applicant_Main.AppSN" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_All" height="28" width="120">
                            <p align="right">
                                客户名称： 
                            </p>
                        </td>
                        <td class="T_All">
                            <aspxform:XTextBox id="XTextBox21" runat="server" Min="0" Max="0" HiddenInput="False" XDataBind="HWHT_Applicant_Main.Customer" DisableBehavior="ReadOnly" NormalCssClass="BOXCSS" CssClass="BOXCSS" Width="458px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox34" runat="server" ReadOnly="True" Min="0" Max="0" HiddenInput="False" XDataBind="HWHT_Applicant_Main.CustomerID" NormalCssClass="BOXCSS" CssClass="BOXCSS" Width="115px" Express="if(HWHT_Applicant_Main.Customer=='','',HWHT_Applicant_Main.CustomerID)"></aspxform:XTextBox>
                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton1" runat="server" HiddenExpress="Global.StepName!='开始'" Width="21px" ColumnCount="2" NavigateUrl="~\FormSupport\SelCustomer.aspx" PopupWndWidth="600" DataMap="Col1->HWHT_Applicant_Main.Customer;Col2->HWHT_Applicant_Main.CustomerID"></aspxform:XCustomBrowserButton>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请选择客户名称！" ControlToValidate="XTextBox21">客户名称</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="28" width="120">
                            <p align="right">
                                签约方： 
                            </p>
                        </td>
                        <td class="T_TOP">
                            <aspxform:XTextBox id="XTextBox41" runat="server" Min="0" Max="0" HiddenInput="False" XDataBind="HWHT_Applicant_Main.Signatory" NormalCssClass="BOXCSS" CssClass="BOXCSS" Width="577px" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="请填写签约方！" ControlToValidate="XTextBox41" DisableExpress="Global.StepName!='开始'">签约方</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="28" width="120">
                            <p align="right">
                                销售负责人： 
                            </p>
                        </td>
                        <td class="T_TOP" width="298">
                            <aspxform:XTextBox id="XTextBox22" runat="server" ReadOnly="True" Min="0" Max="0" HiddenInput="False" XDataBind="HWHT_Applicant_Main.SalesHRName" DisableBehavior="ReadOnly" NormalCssClass="BOXCSS" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" HiddenExpress="Global.StepName!='开始'" Width="21px" DataMap="Account->HWHT_Applicant_Main.SalesHRID;DisplayName->HWHT_Applicant_Main.SalesHRName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox33" runat="server" Min="0" Max="0" HiddenInput="True" XDataBind="HWHT_Applicant_Main.SalesHRID" BorderColor="Gainsboro" BorderStyle="Dotted" BorderWidth="1px" Width="15px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请选择销售负责人！" ControlToValidate="XTextBox22">销售负责人</aspxform:XRequiredFieldValidator>
                        </td>
                        <td class="T_TOP" width="122">
                            <p align="center">
                                销售助理： 
                            </p>
                        </td>
                        <td class="T_TOP" width="247">
                            <aspxform:XTextBox id="XTextBox37" runat="server" ReadOnly="True" XDataBind="HWHT_Applicant_Main.MarketHRName" DisableBehavior="ReadOnly" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton3" runat="server" HiddenExpress="Global.StepName!='开始'" Width="21px" DataMap="Account->HWHT_Applicant_Main.MarketHRID;DisplayName->HWHT_Applicant_Main.MarketHRName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox38" runat="server" Min="0" Max="0" HiddenInput="True" XDataBind="HWHT_Applicant_Main.MarketHRID" BorderColor="Gainsboro" BorderStyle="Dotted" BorderWidth="1px" Width="16px" Height="22px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="请选择销售助理！" ControlToValidate="XTextBox37">销售助理</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="28" width="120">
                            <p align="right">
                                合同名称： 
                            </p>
                        </td>
                        <td class="T_TOP">
                            <aspxform:XTextBox id="XTextBox23" runat="server" Min="0" Max="0" HiddenInput="False" XDataBind="HWHT_Applicant_Main.ContractName" NormalCssClass="BOXCSS" CssClass="BOXCSS" Width="577px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="请填写合同名称！" ControlToValidate="XTextBox23">合同名称</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="28" width="120">
                            <p align="right">
                                合同类型： 
                            </p>
                        </td>
                        <td class="T_TOP">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="HWHT_Applicant_Main.ContractType" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">销售合同</asp:ListItem>
                                <asp:ListItem>代理合同</asp:ListItem>
                                <asp:ListItem>PI</asp:ListItem>
                                <asp:ListItem>其它类型合同</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="28" width="120">
                            <p align="right">
                                紧急程度： 
                            </p>
                        </td>
                        <td class="T_TOP">
                            <table border="0" cellspacing="0" cellpadding="0" width="98%">
                                <tbody>
                                    <tr>
                                        <td width="120">
                                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="HWHT_Applicant_Main.ContractClass" Width="118px" RepeatDirection="Horizontal">
                                                <asp:ListItem Selected="True">一般</asp:ListItem>
                                                <asp:ListItem>紧急</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                        </td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox36" runat="server" Min="0" Max="0" HiddenInput="False" XDataBind="HWHT_Applicant_Main.ContractClassNote" NormalCssClass="BOXCSS" HiddenExpress="HWHT_Applicant_Main.ContractClass!='紧急'" CssClass="BOXCSS" Width="450px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <%--------------------------------销售合同-------------------------------------%> 
        <div align="center" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="28">
                            是否有销售赊账项目、远期信用证或保函：<aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="HWHT_Applicant_Main.X_IsXiaoShou" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="请选择【是否有销售赊账项目、远期信用证或保函】！" ControlToValidate="XRadioButtonList3" DisableExpress="HWHT_Applicant_Main.ContractType!='销售合同'">**</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.X_IsXiaoShou!='是'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: medium none" height="24" width="117">
                            中信保授信主体：</td>
                        <td style="BORDER-BOTTOM: transparent 1px solid; BORDER-LEFT: medium none; BORDER-TOP: transparent 1px solid" width="407">
                            <aspxform:XTextBox id="XTextBox11" runat="server" Min="0" Max="0" HiddenInput="False" XDataBind="HWHT_Applicant_Main.X_ZhongXin" NormalCssClass="BOXCSS" CssClass="BOXCSS" Width="401px" Height="22px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: transparent 1px solid; BORDER-TOP: transparent 1px solid; BORDER-RIGHT: transparent 1px solid" width="270">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="HWHT_Applicant_Main.X_ZhongXinBidui" HiddenExpress="1" XDataSource="TableName:HWHT_ZXCustomer;Filter:ZXCustomer->HWHT_Applicant_Main.X_ZhongXin" DisplayColumn="ZXCustomer" ValueColumn="ZXCustomer">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none" class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.X_ZhongXinBidui!='' ||HWHT_Applicant_Main.X_IsXiaoShou!='是'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="307">
                            此主体未检测到，请重新填写名称或写明不同原因：</td>
                        <td style="BORDER-LEFT: medium none" width="489">
                            <aspxform:XTextBox id="XTextBox40" runat="server" Min="0" Max="0" HiddenInput="False" XDataBind="HWHT_Applicant_Main.X_ZXReason" NormalCssClass="BOXCSS" CssClass="BOXCSS" Width="404px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none" class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.X_IsXiaoShou!='是'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="86">
                            收货人主体：</td>
                        <td style="BORDER-LEFT: medium none" width="413">
                            <aspxform:XTextBox id="XTextBox12" runat="server" Min="0" Max="0" HiddenInput="False" XDataBind="HWHT_Applicant_Main.X_ShouHuo" NormalCssClass="BOXCSS" CssClass="BOXCSS" Width="400px"></aspxform:XTextBox>
                        </td>
                        <td width="295">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="HWHT_Applicant_Main.X_ShouHuoBidui" HiddenExpress="1" XDataSource="TableName:HWHT_ZXCustomer;Filter:CONSIGNEE->HWHT_Applicant_Main.X_ShouHuo" DisplayColumn="CONSIGNEE" ValueColumn="CONSIGNEE">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none" class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.X_ShouHuoBidui!='' || HWHT_Applicant_Main.X_IsXiaoShou!='是'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="300">
                            此主体未检测到，请重新填写名称或写明不同原因：</td>
                        <td style="BORDER-LEFT: medium none" width="412">
                            <aspxform:XTextBox id="XTextBox13" runat="server" Min="0" Max="0" HiddenInput="False" XDataBind="HWHT_Applicant_Main.X_Reason" NormalCssClass="BOXCSS" CssClass="BOXCSS" Width="404px"></aspxform:XTextBox>
                        </td>
                        <td width="80">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="请填写原因！" ControlToValidate="XTextBox40" DisableExpress="HWHT_Applicant_Main.X_IsXiaoShou!='是' ||HWHT_Applicant_Main.X_ShouHuoBidui!=''">收货人</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <%--------------------------------销售合同/PI/其它类型合同 公共部分-------------------------------------%> 
        <div align="center" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同' &amp;&amp; HWHT_Applicant_Main.ContractType!='PI' &amp;&amp; HWHT_Applicant_Main.ContractType!='其它类型合同'">
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同' &amp;&amp; HWHT_Applicant_Main.ContractType!='PI' &amp;&amp; HWHT_Applicant_Main.ContractType!='其它类型合同'">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>合同主要内容</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同' &amp;&amp; HWHT_Applicant_Main.ContractType!='PI'" dynamicarea="1,1">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="28" width="120">
                            <p align="center">
                                <strong><font color="#8080ff">机型</font></strong> 
                            </p>
                        </td>
                        <td class="T_TOP" width="120">
                            <p align="center">
                                <strong><font color="#8080ff">数量</font></strong> 
                            </p>
                        </td>
                        <td class="T_TOP" width="120">
                            <p align="center">
                                <strong><font color="#8080ff">单价</font></strong> 
                            </p>
                        </td>
                        <td class="T_TOP">
                            &nbsp;<strong><font color="#8080ff">备注</font></strong></td>
                    </tr>
                    <tr>
                        <td class="T_TOP" height="28" width="120">
                            <p align="center">
                                <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="HWHT_Applicant_Order.MachineType" DisableBehavior="ReadOnly" Width="100%"></aspxform:XTextBox>
                            </p>
                        </td>
                        <td class="T_TOP" width="120">
                            <p align="center">
                                <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="HWHT_Applicant_Order.Count" DisableBehavior="ReadOnly" Width="100%"></aspxform:XTextBox>
                            </p>
                        </td>
                        <td class="T_TOP" width="120">
                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="HWHT_Applicant_Order.UnitPrice" DisableBehavior="ReadOnly" Width="100%"></aspxform:XTextBox>
                        </td>
                        <td class="T_TOP">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="HWHT_Applicant_Order.Remark" DisableBehavior="ReadOnly" Width="100%"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同' &amp;&amp; HWHT_Applicant_Main.ContractType!='PI' &amp;&amp; HWHT_Applicant_Main.ContractType!='其它类型合同'">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="38">
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="HWHT_Applicant_Main.H_Content" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="35px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='其它类型合同' || Global.StepName!='开始'">
                <tbody>
                    <tr>
                        <td class="T_TOP">
                            <p align="right">
                                <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" DisableExpress="HWHT_Applicant_Main.ContractType!='其它类型合同'" TableName="HWHT_Applicant_JUser" Text="新增相关加签人员" PrintOut="False"></aspxform:XAddBlockButton>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='其它类型合同'" dynamicarea="0,1" emptygrid="KeepEmpty">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="25" width="120">
                            <p align="right">
                                相关加签人员： 
                            </p>
                        </td>
                        <td class="T_TOP">
                            <aspxform:XTextBox id="XTextBox31" runat="server" ReadOnly="True" Min="0" Max="0" HiddenInput="False" XDataBind="HWHT_Applicant_JUser.J_EmpName" DisableBehavior="ReadOnly" NormalCssClass="BOXCSS" CssClass="BOXCSS" Width="120px"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" DataMap="Account->HWHT_Applicant_JUser.J_EmpID;DisplayName->HWHT_Applicant_JUser.J_EmpName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox32" runat="server" Min="0" Max="0" HiddenInput="True" XDataBind="HWHT_Applicant_JUser.J_EmpID" BorderColor="Gainsboro" BorderStyle="Dotted" BorderWidth="1px" Width="95px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请选择加签人员！" ControlToValidate="XTextBox31" DisableExpress="HWHT_Applicant_Main.ContractType!='其它类型合同'">加签人员</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>交货方式（包括交货时间、方式等）</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="25">
                            交货方式：<aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="HWHT_Applicant_Main.H_DeliveryType" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>FOB</asp:ListItem>
                                <asp:ListItem>FCA</asp:ListItem>
                                <asp:ListItem>CIF</asp:ListItem>
                                <asp:ListItem>DDU</asp:ListItem>
                                <asp:ListItem>DDP</asp:ListItem>
                                <asp:ListItem>EXW</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="38">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="HWHT_Applicant_Main.H_Delivery" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="35px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>付款方式（付款条件、方式）</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="25">
                            付款方式：<aspxform:XTextBox id="XTextBox39" runat="server" ReadOnly="True" Min="0" Max="0" HiddenInput="False" XDataBind="HWHT_Applicant_Main.H_PaymentType" DisableBehavior="ReadOnly" NormalCssClass="BOXCSS" CssClass="BOXCSS" Width="120px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox27" runat="server" ReadOnly="True" Min="0" Max="0" HiddenInput="False" XDataBind="HWHT_Applicant_Main.H_PaymentName" NormalCssClass="BOXCSS" CssClass="BOXCSS" Width="450px"></aspxform:XTextBox>
                            <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" HiddenExpress="Global.StepName!='开始'" Width="21px" DataMap="PaymentType->HWHT_Applicant_Main.H_PaymentType;PaymentName->HWHT_Applicant_Main.H_PaymentName" XDataSource="TableName:HWHT_Payment" DisplayColumns="PaymentType:条件代码;PaymentName:支付条件描述"></aspxform:XDataBrowserButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="38">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="HWHT_Applicant_Main.H_Payment" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="35px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>是否包含版权费、知识产权及专利等内容，付费方式等</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="50">
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="HWHT_Applicant_Main.H_CopyRight" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="48px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>验收标准（验收时间及具体条件等）</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="50">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="HWHT_Applicant_Main.H_Acceptance" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="48px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>售后服务（保修和保换期、备机数量等）</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="50">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="HWHT_Applicant_Main.H_Saleservice" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="45px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>违约责任（违约金是否有上限）</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='销售合同'">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="50">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="HWHT_Applicant_Main.H_Breach" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="45px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='PI'">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>交货、付款方式：（付款条件，方式、是否包含版权费及付费方式，是否含运输保险等）</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="HWHT_Applicant_Main.ContractType!='PI'">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="50">
                            <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="HWHT_Applicant_Main.PI_DeliveryPay" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="45px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <%--------------------------------代理合同-------------------------------------%> 
        <div align="center" hiddenexpress="HWHT_Applicant_Main.ContractType!='代理合同'">
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>最终客户名称及其背景及简介：（非代理方） </strong>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="50">
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="HWHT_Applicant_Main.D_Customer" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="45px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>相关代理机型&nbsp;</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="50">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="HWHT_Applicant_Main.D_MachineType" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="45px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>代理合作模式的描述（是否涉及产品、服务、售后相关内容）</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="50">
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="HWHT_Applicant_Main.D_Cooperation" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="45px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>代理费用标准及相关税费、手续费</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="50">
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="HWHT_Applicant_Main.D_Fee" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="45px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>代理协议有效期及代理区域限制</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="50">
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="HWHT_Applicant_Main.D_ExpiryDate" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="45px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>支付条款(包括支付币种、方式等)</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="50">
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="HWHT_Applicant_Main.D_Payment" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="45px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>代理佣金是否与销售回款相关联（支付方式及条件）</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="50">
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="HWHT_Applicant_Main.D_Com" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="45px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <%--------------------------------各合同公共部分-------------------------------------%> 
        <div align="center">
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>其它重要条款</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="50">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="HWHT_Applicant_Main.H_Others" BorderColor="#DCDCDC" CssClass="MYAREA" Width="100%" TextMode="MultiLine" Height="45px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>相关附件 </strong>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="35">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="HWHT_Applicant_Main.H_Attachment"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="T_Header">
                            <p align="left">
                                <strong>合同存档</strong> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="OW" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td class="T_TOP" height="35">
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="HWHT_Applicant_Main.H_Attachment2"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="HEAD" height="18" width="800">
                            审批意见</td>
                    </tr>
                    <tr>
                        <td style="BORDER-TOP: medium none">
                            <p align="left">
                                <N0:XSIGNTRACEEXT id="XSignTraceExt1" runat="server" BorderColor="Transparent" BorderWidth="1px" CssClass="AA" Width="100%"></N0:XSIGNTRACEEXT>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <%--------------------------------意见-------------------------------------%> 
        <div align="center"><%----- <N0:XSIGNTRACEEXT id="XSignTraceExt1" runat="server" BorderWidth="1px" BorderColor="Transparent" Width="800px" CssClass="AA"></N0:XSIGNTRACEEXT>-----%> 
            <table class="BZ" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="HEAD" height="20" width="800">
                            填写审批意见</td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" Width="100%" TextMode="MultiLine" Height="45px" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="45" width="280" align="right">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress="Global.StepName !=''"></aspxform:XPrintButton>
                        </td>
                        <td width="566" align="left">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800">
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
        <script language="javascript" defer>
                var u=document.getElementsByTagName("input");
                for(var i=0;i<u.length;i++)
                {
                    if(u[i].type=="text")
                    {
                        u[i].style.borderTop = "0 solid #ffb3a7";
                        u[i].style.borderLeft = "0 solid #ffb3a7";
                        u[i].style.borderRight = "0 solid #ffb3a7";
                    }
                }
        </script>
    </form>
</body>
</html>
