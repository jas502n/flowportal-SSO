<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<%@ Register TagPrefix="n0" Namespace="XFormDesigner.Framework.Web.UI" Assembly="JieControls" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform="xmlns:xform">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
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
	PADDING-RIGHT: 0px; PADDING-LEFT: 2px; BORDER-LEFT-COLOR: #d1dedf; BORDER-BOTTOM-COLOR: #d1dedf; PADDING-BOTTOM: 0px; BORDER-TOP-COLOR: #d1dedf; BORDER-RIGHT-COLOR: #d1dedf
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
.BOXCSS {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #ffb3a7 1px solid
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
TEXTAREA {
	BORDER-RIGHT: #ffffff 0px solid; BORDER-TOP: #ffffff 0px solid; OVERFLOW-Y: visible; BACKGROUND: #ffffff; OVERFLOW: hidden; BORDER-LEFT: #ffffff 0px solid; BORDER-BOTTOM: #ffb3a7 0px solid
}
</style>
    <script type="text/javascript">
 window.onbeforeunload = function() {
         return "是否离开当前页面";  //返回提示页面显示的信息
 }
</script>
</head>
<body id=" " bottommargin="0" leftmargin="0" rightmargin="0" topmargin="0">
    <form runat="server">
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
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
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="35" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="零售合同审批单" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td width="72">
                            <p align="right">
                                <aspxform:XLabel id="XLabel43" runat="server" text="申  请  人：" Width="100%"></aspxform:XLabel>
                            </p>
                        </td>
                        <td height="20" width="127">
                            <aspxform:XTextBox id="XTextBox44" runat="server" Width="100px" XDataBind="LSHT_Applicant_All.AppHRName" DisableBehavior="ReadOnly" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox47" runat="server" Width="20px" XDataBind="LSHT_Applicant_All.AppHRID" BorderWidth="1" HiddenInput="True" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td width="74">
                            <p align="right">
                                <aspxform:XLabel id="XLabel45" runat="server" text="申请日期：" Width="66px" Height="14px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="187">
                            <aspxform:XTextBox id="XTextBox45" runat="server" Width="120px" XDataBind="LSHT_Applicant_All.AppDate" DisableBehavior="ReadOnly" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td width="59">
                            <p align="right">
                                流水号： 
                            </p>
                        </td>
                        <td width="207">
                            <aspxform:XTextBox id="XTextBox46" runat="server" Width="120px" XDataBind="LSHT_Applicant_All.AppSN" DisableBehavior="ReadOnly" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox49" runat="server" Width="23px" XDataBind="LSHT_Applicant_All.History_Status" Max="0" Min="0" BorderWidth="1px" HiddenInput="True" BorderColor="Gainsboro" ValueToDisplayText Value></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="28" width="120">
                            <p align="right">
                                客户名称: 
                            </p>
                        </td>
                        <td colspan="2">
                            <p align="left">
                                <aspxform:XTextBox id="XTextBox21" runat="server" Width="420px" XDataBind="LSHT_Applicant_All.Customer" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请填写客户名称！" ControlToValidate="XTextBox21">客户</aspxform:XRequiredFieldValidator>
                                <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="添加" TableName="LSHT_Applicant_Cus" HiddenExpress="Global.StepName!='开始' &amp;&amp; Global.StepName!='市场支持部'"></aspxform:XAddBlockButton>
                            </p>
                        </td>
                        <td>
                            客户代码:</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox14" runat="server" Width="100px" XDataBind="LSHT_Applicant_All.CustomerID" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800" dynamicarea="0,1" emptygrid="KeepEmpty">
                <tbody>
                    <tr>
                        <td height="28" width="120">
                            <p align="right">
                                (第三方)客户名称: 
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox41" runat="server" Width="420px" XDataBind="LSHT_Applicant_Cus.G_Customer" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="28" width="88">
                            <p align="right">
                                销售范围: 
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XTextBox id="XTextBox19" runat="server" Width="440px" XDataBind="LSHT_Applicant_All.SalesArea_Note" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                合同名称: 
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XTextBox id="XTextBox23" runat="server" Width="545px" XDataBind="LSHT_Applicant_All.ContractName" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="请填写合同名称！" ControlToValidate="XTextBox23">合同名称</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                合同编号: 
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="LSHT_Applicant_All.ContractNO" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator152" runat="server" Display="None" ErrorMessage="请填写合同编号！" ControlToValidate="XTextBox11" DisableExpress="Global.StepName!='市场支持部'">合同编号</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                合同类型: 
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="LSHT_Applicant_All.ContractType" RepeatDirection="Horizontal">
                                <asp:ListItem>正常合同</asp:ListItem>
                                <asp:ListItem>代理协议</asp:ListItem>
                                <asp:ListItem>框架协议</asp:ListItem>
                                <asp:ListItem>订货单</asp:ListItem>
                                <asp:ListItem>广告协议</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="请选择合同类型！" ControlToValidate="XRadioButtonList1">合同类型</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr hiddenexpress="LSHT_Applicant_All.ContractType!='订货单'">
                        <td height="28">
                            <p align="right">
                                框架协议: 
                            </p>
                        </td>
                        <td colspan="5">
                            <table border="0" cellspacing="0" cellpadding="0" width="98%" dynamicarea="0,1">
                                <tbody>
                                    <tr>
                                        <td width="100%">
                                            <aspxform:XTextBox id="XTextBox1" runat="server" Width="545px" XDataBind="LSHT_Applicant_KJXY.FAgreement" ReadOnly="True" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Express="if(LSHT_Applicant_All.ContractType!='订货单','','')"></aspxform:XTextBox>
                                            <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="21px" HiddenExpress="Global.StepName!='开始'" XDataSource="TableName:V_LSHT_Contract" DisplayColumns="Customer:客户名称,;ContractName:合同(框架协议)名称," DataMap="ContractName->LSHT_Applicant_KJXY.FAgreement;Y_CopyrightPay->LSHT_Applicant_All.Y_CopyrightPay;TaskID->LSHT_Applicant_KJXY.FAgreeTaskID;H_Others->LSHT_Applicant_All.H_Others;H_Payment->LSHT_Applicant_All.H_Payment;H_Acceptance->LSHT_Applicant_All.H_Acceptance;Y_Mark->LSHT_Applicant_All.Y_Mark;H_Breach->LSHT_Applicant_All.H_Breach;Y_IsDefault->LSHT_Applicant_All.Y_IsDefault;Y_PayType->LSHT_Applicant_All.Y_PayType;Y_Court->LSHT_Applicant_All.Y_Court;H_Saleservice->LSHT_Applicant_All.H_Saleservice;H_Delivery->LSHT_Applicant_All.H_Delivery"></aspxform:XDataBrowserButton>
                                            <aspxform:XHistoryFormLink id="XHistoryFormLink2" runat="server" XDataBind="LSHT_Applicant_KJXY.FAgreeTaskID" Text="查看" HiddenExpress="LSHT_Applicant_KJXY.FAgreeTaskID==''" Express="if(LSHT_Applicant_All.ContractType!='订货单','','')" PopupWndWidth="-1" PopupWndHeight="-1" EmptyText="尚未关联"></aspxform:XHistoryFormLink>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="请填写框架协议！" ControlToValidate="XTextBox14" DisableExpress="LSHT_Applicant_All.ContractType!='订货单' || Global.StepName!='开始'">框架协议</aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                签 约&nbsp;方: 
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XTextBox id="XTextBox24" runat="server" Width="545px" XDataBind="LSHT_Applicant_All.Signatory" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="清填写签约方！" ControlToValidate="XTextBox24">签约方</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="39">
                            <p align="right">
                                对方主体性质: 
                            </p>
                        </td>
                        <td colspan="5">
                            <table border="0" cellspacing="0" cellpadding="0" width="99%">
                                <tbody>
                                    <tr>
                                        <td width="223" colspan="2">
                                            <aspxform:XTextBox id="XTextBox39" runat="server" Width="318px" XDataBind="LSHT_Applicant_All.Y_CompanyType" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                合同有效开始日期: 
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="LSHT_Applicant_All.ContractStartDate" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="请填写合同有效开始日期！" ControlToValidate="XDateTimePicker1" DisableExpress="(LSHT_Applicant_All.ContractType!='代理协议'&amp;&amp;LSHT_Applicant_All.ContractType!='框架协议')||LSHT_Applicant_All.History_Status==2">**</aspxform:XRequiredFieldValidator>
                        </td>
                        <td width="144">
                            <p align="right">
                                合同有效结束日期: 
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" Width="152px" XDataBind="LSHT_Applicant_All.ContractEndDate" ReadOnly="True" Height="22px" CssClass="BOXCSS" HiddenExpress="LSHT_Applicant_All.ContractIsLong==1" Express="if(LSHT_Applicant_All.ContractIsLong==1,'9999-12-31','')" XSubType="date" onchange="javascript:XFormOnChange(this);" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" Display="None" ErrorMessage="请填写合同有效结束日期！" ControlToValidate="XDateTimePicker2" DisableExpress="(LSHT_Applicant_All.ContractType!='代理协议'&amp;&amp;LSHT_Applicant_All.ContractType!='框架协议')||LSHT_Applicant_All.History_Status==2">**</aspxform:XRequiredFieldValidator>
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="LSHT_Applicant_All.ContractIsLong" Text="长久有效" HiddenExpress="LSHT_Applicant_All.ContractEndDate!=''&amp;&amp;LSHT_Applicant_All.ContractEndDate<'9999-12-31'"></aspxform:XCheckBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                销售负责人: 
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="LSHT_Applicant_All.SalesHRName" DisableBehavior="ReadOnly" ReadOnly="True" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" HiddenExpress="Global.StepName!='开始'" DataMap="Account->LSHT_Applicant_All.SalesHRID;DisplayName->LSHT_Applicant_All.SalesHRName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox33" runat="server" Width="15px" XDataBind="LSHT_Applicant_All.SalesHRID" Max="0" Min="0" BorderWidth="1px" HiddenInput="True" BorderColor="Gainsboro" BorderStyle="Dotted"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请选择销售负责人！" ControlToValidate="XTextBox22">**</aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                            <p align="right">
                                市场支持人员: 
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="LSHT_Applicant_All.MarketHRName" DisableBehavior="ReadOnly" ReadOnly="True" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="21px" HiddenExpress="Global.StepName!='开始'" DataMap="Account->LSHT_Applicant_All.MarketHRID;DisplayName->LSHT_Applicant_All.MarketHRName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox38" runat="server" Width="16px" XDataBind="LSHT_Applicant_All.MarketHRID" Max="0" Min="0" BorderWidth="1px" HiddenInput="True" BorderColor="Gainsboro" Height="22px" BorderStyle="Dotted"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="请选择市场支持人员！" ControlToValidate="XTextBox37" DisableExpress="Global.StepName!='开始'">**</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="39">
                            <p align="right">
                                紧急程度: 
                            </p>
                        </td>
                        <td colspan="5">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td rowspan="3" width="146">
                                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" Width="145px" XDataBind="LSHT_Applicant_All.ContractClass" RepeatDirection="Horizontal">
                                                <asp:ListItem Selected="True">一般</asp:ListItem>
                                                <asp:ListItem>加急</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                        </td>
                                        <td width="445">
                                            <aspxform:XTextBox id="XTextBox36" runat="server" Width="379px" XDataBind="LSHT_Applicant_All.ClassNote" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" HiddenExpress="LSHT_Applicant_All.ContractClass!='加急'" BackColor="#FADAFC"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                付款条件: 
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XTextBox id="XTextBox2" runat="server" Width="180px" XDataBind="LSHT_Applicant_All.PaymentNote" Max="0" Min="0" HiddenInput="False" Height="22px" ValueToDisplayText Value CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" align="right">
                            售后保修期:</td>
                        <td class="NoPadding" width="130">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%" height="22">
                                <tbody>
                                    <tr>
                                        <td width="43">
                                            整机：</td>
                                        <td width="54">
                                            <aspxform:XTextBox id="XTextBox35" runat="server" Width="50px" XDataBind="LSHT_Applicant_All.Warranty" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" TextAlign="Center"></aspxform:XTextBox>
                                        </td>
                                        <td width="19">
                                            月</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <td class="NoPadding" width="139">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%" height="22">
                                <tbody>
                                    <tr>
                                        <td width="50">
                                            主机：</td>
                                        <td width="53">
                                            <aspxform:XTextBox id="XTextBox26" runat="server" Width="50px" XDataBind="LSHT_Applicant_All.WarrantyZ" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" TextAlign="Center"></aspxform:XTextBox>
                                        </td>
                                        <td width="24">
                                            月</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <td class="NoPadding">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="60">
                                            遥控器：</td>
                                        <td width="53">
                                            <aspxform:XTextBox id="XTextBox27" runat="server" Width="50px" XDataBind="LSHT_Applicant_All.WarrantyY" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" TextAlign="Center"></aspxform:XTextBox>
                                        </td>
                                        <td width="30">
                                            &nbsp;月</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <td class="NoPadding" width="157">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%" height="30">
                                <tbody>
                                    <tr>
                                        <td width="80">
                                            电源适配器：</td>
                                        <td width="57">
                                            <aspxform:XTextBox id="XTextBox31" runat="server" Width="50px" XDataBind="LSHT_Applicant_All.WarrantyD" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" TextAlign="Center"></aspxform:XTextBox>
                                        </td>
                                        <td width="14">
                                            月</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <td class="NoPadding" width="135">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="43">
                                            其他</td>
                                        <td width="52">
                                            <aspxform:XTextBox id="XTextBox34" runat="server" Width="50px" XDataBind="LSHT_Applicant_All.WarrantyO" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" TextAlign="Center"></aspxform:XTextBox>
                                        </td>
                                        <td width="26">
                                            月</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="696">
                            1.合同标的或合同内容：（包括产品规格数量、型号、价格、有无赠机、合作方式）</td>
                    </tr>
                    <tr>
                        <td height="50">
                            <div align="center">
                                <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                    <tbody>
                                        <tr>
                                            <td width="99%">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="1" cellspacing="0" cellpadding="0" width="800" align="center" dynamicarea="1,3" hiddenexpress="LSHT_Applicant_All.ContractType=='代理协议'||LSHT_Applicant_All.ContractType=='广告协议'||LSHT_Applicant_All.ContractType=='其他'" deletelastrow="Denied">
                                    <tbody>
                                        <tr>
                                            <td style="BORDER-LEFT: #8080ff 1px solid; BORDER-TOP: #8080ff 1px solid" bgcolor="#e0e0e0" height="30" width="75">
                                                <p align="center">
                                                    合同行项目 
                                                </p>
                                            </td>
                                            <td style="BORDER-TOP: #8080ff 1px solid" bgcolor="#e0e0e0" width="135">
                                                <p align="center">
                                                    合同项目类别 
                                                </p>
                                            </td>
                                            <td style="BORDER-TOP: #8080ff 1px solid" bgcolor="#e0e0e0" width="191">
                                                <p align="center">
                                                    机型 
                                                </p>
                                            </td>
                                            <td style="BORDER-TOP: #8080ff 1px solid" bgcolor="#e0e0e0" width="131">
                                                <p align="center">
                                                    数量 
                                                </p>
                                            </td>
                                            <td style="BORDER-TOP: #8080ff 1px solid" bgcolor="#e0e0e0" width="143">
                                                <p align="center">
                                                    单价 
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="BORDER-LEFT: #8080ff 1px solid" height="23">
                                                <aspxform:XTextBox id="XTextBox18" runat="server" Width="100%" XDataBind="LSHT_Applicant_Order.ContractNum" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                                            </td>
                                            <td>
                                                <aspxform:XDropDownList id="XDropDownList1" runat="server" Width="100%" XDataBind="LSHT_Applicant_Order.ContractNumType">
                                                    <asp:ListItem></asp:ListItem>
                                                    <asp:ListItem Value="ZKM1">ZKM1-销售机</asp:ListItem>
                                                    <asp:ListItem Value="ZKM2">ZKM2-赠机</asp:ListItem>
                                                    <asp:ListItem Value="ZKM3">ZKM3-备机</asp:ListItem>
                                                    <asp:ListItem Value="ZKM4">ZKM4-备损</asp:ListItem>
                                                </aspxform:XDropDownList>
                                            </td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox28" runat="server" Width="100%" XDataBind="LSHT_Applicant_Order.MachineType" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                                            </td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox29" runat="server" Width="100%" XDataBind="LSHT_Applicant_Order.Count" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                                            </td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox30" runat="server" Width="100%" XDataBind="LSHT_Applicant_Order.UnitPrice" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="BORDER-BOTTOM: #8080ff 1px solid; BORDER-LEFT: #8080ff 1px solid" height="28" colspan="5">
                                                备&nbsp;&nbsp;&nbsp;&nbsp; 注：<aspxform:XTextBox id="XTextBox32" runat="server" Width="446px" XDataBind="LSHT_Applicant_Order.Remark" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" Display="None" ErrorMessage="请输入“合同行项目”！" ControlToValidate="XTextBox18" DisableExpress="(LSHT_Applicant_All.ContractType=='代理协议'||LSHT_Applicant_All.ContractType=='框架协议')||LSHT_Applicant_All.ContractType=='广告协议'||LSHT_Applicant_All.ContractType=='其他'||LSHT_Applicant_All.History_Status==2|| Global.StepName!='开始'">行项目</aspxform:XRequiredFieldValidator>
                                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" Display="None" ErrorMessage="请输入“合同项目类别”！" ControlToValidate="XDropDownList1" DisableExpress="(LSHT_Applicant_All.ContractType=='代理协议'||LSHT_Applicant_All.ContractType=='框架协议')||LSHT_Applicant_All.ContractType=='广告协议'||LSHT_Applicant_All.ContractType=='其他'||LSHT_Applicant_All.History_Status==2|| Global.StepName!='开始'">类别</aspxform:XRequiredFieldValidator>
                                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" Display="None" ErrorMessage="请输入“机型”！" ControlToValidate="XTextBox28" DisableExpress="(LSHT_Applicant_All.ContractType=='代理协议'||LSHT_Applicant_All.ContractType=='框架协议')||LSHT_Applicant_All.ContractType=='广告协议'||LSHT_Applicant_All.ContractType=='其他'||LSHT_Applicant_All.History_Status==2|| Global.StepName!='开始'">机型</aspxform:XRequiredFieldValidator>
                                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" Display="None" ErrorMessage="请输入“数量”！" ControlToValidate="XTextBox29" DisableExpress="(LSHT_Applicant_All.ContractType=='代理协议'||LSHT_Applicant_All.ContractType=='框架协议')||LSHT_Applicant_All.ContractType=='广告协议'||LSHT_Applicant_All.ContractType=='其他'||LSHT_Applicant_All.History_Status==2|| Global.StepName!='开始'">数量</aspxform:XRequiredFieldValidator>
                                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" Display="None" ErrorMessage="请输入“单价”！" ControlToValidate="XTextBox30" DisableExpress="(LSHT_Applicant_All.ContractType=='代理协议'||LSHT_Applicant_All.ContractType=='框架协议')||LSHT_Applicant_All.ContractType=='广告协议'||LSHT_Applicant_All.ContractType=='其他'||LSHT_Applicant_All.History_Status==2|| Global.StepName!='开始'">单价</aspxform:XRequiredFieldValidator>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <p>
                                <aspxform:XTextBox id="XTextBox3" runat="server" Width="100%" XDataBind="LSHT_Applicant_All.H_Content" BorderColor="#DCDCDC" Height="35px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable3" border="1" cellspacing="0" cellpadding="0" width="800" hiddenexpress="LSHT_Applicant_All.ContractType=='代理协议'">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20">
                            2.交货方式：（包括付款时间、电汇或汇票、发票和税收、是否包括版权等） 
                        </td>
                    </tr>
                    <tr>
                        <td height="48">
                            <p>
                                &nbsp;第三方版权的支付：<aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="LSHT_Applicant_All.Y_CopyrightPay" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>甲方支付</asp:ListItem>
                                    <asp:ListItem>乙方支付--标准明细</asp:ListItem>
                                    <asp:ListItem>乙方支付--标准不明</asp:ListItem>
                                    <asp:ListItem>双方承担--明细</asp:ListItem>
                                    <asp:ListItem>无</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p>
                                <aspxform:XTextBox id="XTextBox4" runat="server" Width="100%" XDataBind="LSHT_Applicant_All.H_Delivery" BorderColor="#DCDCDC" Height="25px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            3.付款方式：（包括付款时间、电汇）</td>
                    </tr>
                    <tr>
                        <td height="48">
                            <p>
                                &nbsp;支付结算方式：<aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="LSHT_Applicant_All.Y_PayType" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>电汇</asp:ListItem>
                                    <asp:ListItem>银行汇票</asp:ListItem>
                                    <asp:ListItem>银行承兑汇票</asp:ListItem>
                                    <asp:ListItem>其他</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                <table border="0" cellspacing="0" cellpadding="0" width="360" hiddenexpress="LSHT_Applicant_All.Y_PayType!='银行承兑汇票'">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <p>
                                                    &nbsp;票据期限：<aspxform:XTextBox id="XTextBox48" runat="server" Width="50px" XDataBind="LSHT_Applicant_All.Y_PayDay" Max="180" CssClass="BOXCSS" TextAlign="Center" MaxLength="3" Format="type:number;.0"></aspxform:XTextBox>
                                                    天<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" Display="None" ErrorMessage='请填写"票据期限"!' ControlToValidate="XTextBox48" DisableExpress="LSHT_Applicant_All.Y_PayType!='银行承兑汇票'||LSHT_Applicant_All.History_Status==2">票据期限</aspxform:XRequiredFieldValidator>
                                                </p>
                                                <p>
                                                    &nbsp;开票方式：<aspxform:XTextBox id="XTextBox25" runat="server" Width="200px" XDataBind="LSHT_Applicant_All.Y_BillingMethod" Max="180" CssClass="BOXCSS" TextAlign="Center" MaxLength="3" Format="type:number;.0"></aspxform:XTextBox>
                                                </p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </p>
                            <p>
                                <aspxform:XTextBox id="XTextBox5" runat="server" Width="100%" XDataBind="LSHT_Applicant_All.H_Payment" BorderColor="#DCDCDC" Height="25px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            4.验收标准：（验收时间和具体条件等）</td>
                    </tr>
                    <tr>
                        <td height="48">
                            <p>
                                <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="LSHT_Applicant_All.Y_IsDefault" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem Value="1">有默认验收条款</asp:ListItem>
                                    <asp:ListItem Value="2">无默认验收条款</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                <table border="0" cellspacing="0" cellpadding="0" width="782" hiddenexpress="LSHT_Applicant_All.Y_IsDefault!=2">
                                    <tbody>
                                        <tr>
                                            <td height="28" width="66">
                                                <p align="center">
                                                    验收时间: 
                                                </p>
                                            </td>
                                            <td width="90">
                                                <aspxform:XTextBox id="XTextBox20" runat="server" Width="60px" XDataBind="LSHT_Applicant_All.Y_AcceptanceTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                                &nbsp;天</td>
                                            <td width="62">
                                                <p align="right">
                                                    验收条款: 
                                                </p>
                                            </td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox8" runat="server" Width="480px" XDataBind="LSHT_Applicant_All.Y_AcceptanceNote" Max="0" Min="0" BorderWidth="1px" HiddenInput="False" BorderColor="Gainsboro" ValueToDisplayText Value></aspxform:XTextBox>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </p>
                            <p>
                                <aspxform:XTextBox id="XTextBox6" runat="server" Width="100%" XDataBind="LSHT_Applicant_All.H_Acceptance" BorderColor="#DCDCDC" Height="25px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            5.售后服务：（保修和保换期、备机数量及归还时间）</td>
                    </tr>
                    <tr>
                        <td height="48">
                            <aspxform:XTextBox id="XTextBox7" runat="server" Width="100%" XDataBind="LSHT_Applicant_All.H_Saleservice" BorderColor="#DCDCDC" Height="45px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable3" border="1" cellspacing="0" cellpadding="0" width="800" hiddenexpress="LSHT_Applicant_All.ContractType!='代理协议'">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20">
                            2.代理区域（包括代理机型及价格）： 
                        </td>
                    </tr>
                    <tr>
                        <td height="48">
                            <aspxform:XTextBox id="XTextBox9" runat="server" Width="100%" XDataBind="LSHT_Applicant_All.DL_Area" BorderColor="#DCDCDC" Height="45px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            3.甲乙双方的义务分工：</td>
                    </tr>
                    <tr>
                        <td height="48">
                            <aspxform:XTextBox id="XTextBox10" runat="server" Width="100%" XDataBind="LSHT_Applicant_All.DL_Duty" BorderColor="#DCDCDC" Height="45px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            4.代理费支付规定（包括代理费的确认和支付）：</td>
                    </tr>
                    <tr>
                        <td height="48">
                            <p>
                                &nbsp;贷款逾期时的代理费的扣款约定：<aspxform:XTextBox id="XTextBox42" runat="server" Width="562px" XDataBind="LSHT_Applicant_All.Y_CutNote" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS"></aspxform:XTextBox>
                            </p>
                            <p>
                                <aspxform:XTextBox id="XTextBox12" runat="server" Width="100%" XDataBind="LSHT_Applicant_All.DL_Payment" BorderColor="#DCDCDC" Height="25px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            5.合作期限：</td>
                    </tr>
                    <tr>
                        <td height="48">
                            <aspxform:XTextBox id="XTextBox13" runat="server" Width="100%" XDataBind="LSHT_Applicant_All.DL_TimeLimit" BorderColor="#DCDCDC" Height="45px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable3" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="796">
                            6.管辖法院和违约责任：（违约金是否有上限） 
                        </td>
                    </tr>
                    <tr>
                        <td height="48">
                            <p>
                                &nbsp;管辖法院：<aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="LSHT_Applicant_All.Y_Court" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>甲方所在地法院</asp:ListItem>
                                    <asp:ListItem>乙方所在地法院</asp:ListItem>
                                    <asp:ListItem>原告方所在地法院</asp:ListItem>
                                    <asp:ListItem>其他</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p>
                                <aspxform:XTextBox id="XTextBox15" runat="server" Width="100%" XDataBind="LSHT_Applicant_All.H_Breach" BorderColor="#DCDCDC" Height="25px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            7.商标选用：</td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p>
                                <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="LSHT_Applicant_All.Y_Mark" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>字体商标</asp:ListItem>
                                    <asp:ListItem>动画商标</asp:ListItem>
                                    <asp:ListItem>其他</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td height="35">
                            &nbsp;<a href="../Files/ikan商标证书.pdf" target="_blank">ikan商标证书</a>&nbsp; <a href="../Files/%E5%95%86%E6%A0%87%E8%AF%81%E4%B9%A6%EF%BC%88%E5%8A%A8%E7%94%BB%EF%BC%89.pdf" target="_blank">商标证书（动画）</a></td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            8.其他重大义务： 
                        </td>
                    </tr>
                    <tr>
                        <td height="48">
                            <aspxform:XTextBox id="XTextBox16" runat="server" Width="100%" XDataBind="LSHT_Applicant_All.H_Others" BorderColor="#DCDCDC" Height="45px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            9.包括附件（含件数及名称）:<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" Display="None" ErrorMessage="请上传相关资质文件！" ControlToValidate="XMSNAttachments10" DisableExpress="LSHT_Applicant_All.ContractType=='订货单' || Global.StepName!='开始'||LSHT_Applicant_All.History_Status==2">资质文件</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="86">
                            &nbsp;合同及附件：<aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="LSHT_Applicant_All.H_Attachment"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr hiddenexpress="LSHT_Applicant_All.ContractType!='代理协议'">
                        <td>
                            <p>
                                授权书： 
                            </p>
                            <p>
                                <aspxform:XMSNAttachments id="XMSNAttachments4" runat="server" XDataBind="LSHT_Applicant_All.H_Authorization"></aspxform:XMSNAttachments>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p>
                                &nbsp;资质文件： 
                                <aspxform:XMSNAttachments id="XMSNAttachments10" runat="server" XDataBind="LSHT_Applicant_All.H_Attachment4"></aspxform:XMSNAttachments>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p>
                                &nbsp;项目负责人上传合同及附件：<aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="LSHT_Applicant_All.H_Attachment2"></aspxform:XMSNAttachments>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            10.合同内所有我公司应承担的其他费用、成本列举: 
                        </td>
                    </tr>
                    <tr>
                        <td height="48">
                            <aspxform:XTextBox id="XTextBox17" runat="server" Width="100%" XDataBind="LSHT_Applicant_All.H_OtherCharge" BorderColor="#DCDCDC" Height="45px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            11.备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 注:</td>
                    </tr>
                    <tr>
                        <td height="48">
                            <aspxform:XTextBox id="XTextBox40" runat="server" Width="100%" XDataBind="LSHT_Applicant_All.H_Note" BorderColor="#DCDCDC" Height="45px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            12.合同存档:</td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: 1px groove; BORDER-LEFT: medium none; BORDER-RIGHT: medium none" height="48">
                            <aspxform:XMSNAttachments id="XMSNAttachments3" runat="server" XDataBind="LSHT_Applicant_All.H_Attachment3"></aspxform:XMSNAttachments>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="请上传归档合同！" ControlToValidate="XMSNAttachments3" ValidationGroup="HTSAVE">合同存档</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="800">
                            审批意见</td>
                    </tr>
                    <tr>
                        <td>
                            <p align="left">
                                <N0:XSIGNTRACEEXT id="XSignTraceExt1" runat="server" Width="100%" BorderWidth="1px" BorderColor="Transparent" CssClass="AA"></N0:XSIGNTRACEEXT>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="800">
                            填写审批意见</td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="70" width="806" colspan="2">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" Width="794px" BorderWidth="1px" BorderColor="Gainsboro" Height="67px" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none" width="263" align="right">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress="Global.StepName == '开始'"></aspxform:XPrintButton>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" width="533" align="left">
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
