<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform= "xmlns:xform">
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
</head>
<body bottommargin="0" leftmargin="0" rightmargin="0" topmargin="0">
    <form runat="server">
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="217">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="403" align="middle">
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Bold="True" Font-Size="Small" text="深圳创维数字技术股份有限公司" Font-Names="Tahoma"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="224">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="35" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="国内销售合同审批单" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Insert content here -->
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
                            <aspxform:XTextBox id="XTextBox44" runat="server" Width="100px" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="GNHT_Applicant_All.AppHRName"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox47" runat="server" Width="20px" XDataBind="GNHT_Applicant_All.AppHRID" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td width="74">
                            <p align="right">
                                <aspxform:XLabel id="XLabel45" runat="server" text="申请日期：" Width="66px" Height="14px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="187">
                            <aspxform:XTextBox id="XTextBox45" runat="server" Width="120px" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="GNHT_Applicant_All.AppDate"></aspxform:XTextBox>
                        </td>
                        <td width="59">
                            <p align="right">
                                流水号：
                            </p>
                        </td>
                        <td width="207">
                            <aspxform:XTextBox id="XTextBox46" runat="server" Width="120px" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="GNHT_Applicant_All.AppSN"></aspxform:XTextBox>
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
                        <td colspan="3">
                            <p align="center">
                            </p>
                            <p align="center">
                            </p>
                            <p align="center">
                            </p>
                            <p align="center">
                            </p>
                            <p align="center">
                            </p>
                            <p align="left">
                                <aspxform:XTextBox id="XTextBox21" runat="server" Width="420px" XDataBind="GNHT_Applicant_All.Customer" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" CssClass="BOXCSS"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox34" runat="server" Width="120px" ReadOnly="True" XDataBind="GNHT_Applicant_All.CustomerID" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" CssClass="BOXCSS" Express="if(GNHT_Applicant_All.Customer=='','',GNHT_Applicant_All.CustomerID)"></aspxform:XTextBox>
                                <aspxform:XCustomBrowserButton id="XCustomBrowserButton1" runat="server" Width="21px" ColumnCount="2" NavigateUrl="~\FormSupport\SelCustomer.aspx" PopupWndWidth="600" DataMap="Col1->GNHT_Applicant_All.Customer;Col2->GNHT_Applicant_All.CustomerID" HiddenExpress="Global.StepName!='开始'"></aspxform:XCustomBrowserButton>
                                <aspxform:XCheckBox id="ChildCus" runat="server" XDataBind="GNHT_Applicant_All.IsChildCustomer" HiddenExpress="Global.StepName!='开始' &amp;&amp; Global.StepName!='市场支持部'" Text="子客户"></aspxform:XCheckBox>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XTextBox21" ErrorMessage="请选择客户名称！" Display="None">客户</aspxform:XRequiredFieldValidator>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                合同名称:
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox23" runat="server" Width="545px" XDataBind="GNHT_Applicant_All.ContractName" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XTextBox23" ErrorMessage="请填写合同名称！" Display="None">合同名称</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                合同编号:
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="GNHT_Applicant_All.ContractNO" CssClass="BOXCSS" MaxLength="10"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator152" runat="server" ControlToValidate="XTextBox11" ErrorMessage="请填写合同编号！" Display="None" DisableExpress="Global.StepName!='市场支持部'">合同编号</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                合同类型:
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="GNHT_Applicant_All.ContractType" RepeatDirection="Horizontal">
                                <asp:ListItem>正常合同</asp:ListItem>
                                <asp:ListItem>代理协议</asp:ListItem>
                                <asp:ListItem>框架协议</asp:ListItem>
                                <asp:ListItem>订货单</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XRadioButtonList1" ErrorMessage="请选择合同类型！" Display="None">合同类型</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr hiddenexpress="GNHT_Applicant_All.ContractType!='订货单'">
                        <td height="28">
                            <p align="right">
                                框架协议:
                            </p>
                        </td>
                        <td colspan="3">
                            <table border="0" cellspacing="0" cellpadding="0" width="98%" dynamicarea="0,1">
                                <tbody>
                                    <tr>
                                        <td width="100%">
                                            <aspxform:XTextBox id="XTextBox14" runat="server" Width="545px" ReadOnly="True" XDataBind="GNHT_Applicant_KJXY.FAgreement" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" CssClass="BOXCSS" Express="if(GNHT_Applicant_All.ContractType!='订货单','','')"></aspxform:XTextBox>
                                            <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="21px" DataMap="TaskID->GNHT_Applicant_KJXY.FAgreeTaskID;ContractName->GNHT_Applicant_KJXY.FAgreement" HiddenExpress="Global.StepName!='开始'" DisplayColumns="ContractName:合同(框架协议)名称;Customer:客户名称" XDataSource="TableName:V_GNHT_Contract"></aspxform:XDataBrowserButton>
                                            <aspxform:XHistoryFormLink id="XHistoryFormLink2" runat="server" XDataBind="GNHT_Applicant_KJXY.FAgreeTaskID" Express="if(GNHT_Applicant_All.ContractType!='订货单','','')" PopupWndWidth="-1" HiddenExpress="GNHT_Applicant_KJXY.FAgreeTaskID==''" Text="查看" PopupWndHeight="-1" EmptyText="尚未关联"></aspxform:XHistoryFormLink>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="XTextBox14" ErrorMessage="请填写框架协议！" Display="None" DisableExpress="GNHT_Applicant_All.ContractType!='订货单' || Global.StepName!='开始'">框架协议</aspxform:XRequiredFieldValidator>
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
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox24" runat="server" Width="545px" XDataBind="GNHT_Applicant_All.Signatory" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" CssClass="BOXCSS" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XTextBox24" ErrorMessage="清填写签约方！" Display="None">签约方</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                对方主体性质:
                            </p>
                        </td>
                        <td colspan="3">
                            <table border="0" cellspacing="0" cellpadding="0" width="99%">
                                <tbody>
                                    <tr>
                                        <td width="223">
                                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="GNHT_Applicant_All.Y_CompanyType" RepeatDirection="Horizontal" RepeatColumns="5">
                                                <asp:ListItem>有限责任公司</asp:ListItem>
                                                <asp:ListItem>分公司</asp:ListItem>
                                                <asp:ListItem>其他</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                        </td>
                                        <td width="439">
                                            <aspxform:XTextBox id="XTextBox39" runat="server" Width="318px" XDataBind="GNHT_Applicant_All.Y_CompanyTypeOther" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenExpress='GNHT_Applicant_All.Y_CompanyType!="其他"'></aspxform:XTextBox>
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
                        <td width="274">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="GNHT_Applicant_All.ContractStartDate" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                        </td>
                        <td width="115">
                            <p align="right">
                                合同有效结束日期:
                            </p>
                        </td>
                        <td width="278">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" Width="152px" ReadOnly="True" XDataBind="GNHT_Applicant_All.ContractEndDate" Height="22px" CssClass="BOXCSS" XSubType="date" XType="datetime" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                销售负责人:
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox22" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="GNHT_Applicant_All.SalesHRName" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" DataMap="Account->GNHT_Applicant_All.SalesHRID;DisplayName->GNHT_Applicant_All.SalesHRName" HiddenExpress="Global.StepName!='开始'"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox33" runat="server" Width="15px" XDataBind="GNHT_Applicant_All.SalesHRID" Max="0" Min="0" BorderColor="Gainsboro" HiddenInput="True" BorderWidth="1px" BorderStyle="Dotted"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XTextBox22" ErrorMessage="请选择销售负责人！" Display="None">**</aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                            <p align="right">
                                市场支持人员:
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox37" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="GNHT_Applicant_All.MarketHRName" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="21px" DataMap="Account->GNHT_Applicant_All.MarketHRID;DisplayName->GNHT_Applicant_All.MarketHRName" HiddenExpress="Global.StepName!='开始'"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox38" runat="server" Width="16px" XDataBind="GNHT_Applicant_All.MarketHRID" Max="0" Min="0" BorderColor="Gainsboro" HiddenInput="True" BorderWidth="1px" Height="22px" BorderStyle="Dotted"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ControlToValidate="XTextBox37" ErrorMessage="请选择市场支持人员！" Display="None" DisableExpress="Global.StepName!='开始'">**</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="40">
                            <p align="right">
                                紧急程度:
                            </p>
                        </td>
                        <td colspan="3">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td rowspan="3" width="146">
                                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" Width="145px" XDataBind="GNHT_Applicant_All.ContractClass" RepeatDirection="Horizontal">
                                                <asp:ListItem>一般</asp:ListItem>
                                                <asp:ListItem>加急</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                        </td>
                                        <td width="445">
                                            <aspxform:XTextBox id="XTextBox36" runat="server" Width="379px" XDataBind="GNHT_Applicant_All.ClassNote" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenExpress="GNHT_Applicant_All.ContractClass!='加急'" BackColor="#FADAFC"></aspxform:XTextBox>
                                        </td>
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
                                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="1" cellspacing="0" cellpadding="0" width="99.5%" align="center" hiddenexpress="GNHT_Applicant_All.ContractType=='代理协议'" dynamicarea="1,3" deletelastrow="Denied">
                                    <tbody>
                                        <tr>
                                            <td style="BORDER-LEFT: #8080ff 1px solid; BORDER-TOP: #8080ff 1px solid" bgcolor="#e0e0e0" height="33" width="120">
                                                合同编号</td>
                                            <td style="BORDER-TOP: #8080ff 1px solid" bgcolor="#e0e0e0" width="100">
                                                <p align="center">
                                                    销单号
                                                </p>
                                            </td>
                                            <td style="BORDER-TOP: #8080ff 1px solid" bgcolor="#e0e0e0" width="80">
                                                <p align="center">
                                                    销单
                                                </p>
                                                <p align="center">
                                                    行项目
                                                </p>
                                            </td>
                                            <td style="BORDER-TOP: #8080ff 1px solid" bgcolor="#e0e0e0" width="90">
                                                <p align="center">
                                                    机型
                                                </p>
                                            </td>
                                            <td style="BORDER-TOP: #8080ff 1px solid" bgcolor="#e0e0e0" width="70">
                                                <p align="center">
                                                    数量
                                                </p>
                                            </td>
                                            <td style="BORDER-TOP: #8080ff 1px solid" bgcolor="#e0e0e0" width="70">
                                                <p align="center">
                                                    单价
                                                </p>
                                            </td>
                                            <td style="BORDER-TOP: #8080ff 1px solid" bgcolor="#e0e0e0" width="140">
                                                <p align="center">
                                                    售后保修期
                                                </p>
                                            </td>
                                            <td style="BORDER-TOP: #8080ff 1px solid; BORDER-RIGHT: #8080ff 1px solid" bgcolor="#e0e0e0">
                                                <p align="center">
                                                    是否
                                                </p>
                                                <p align="center">
                                                    进SAP
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="BORDER-LEFT: #8080ff 1px solid" height="23">
                                                <aspxform:XTextBox id="XTextBox25" runat="server" Width="100%" DisableBehavior="ReadOnly" XDataBind="GNHT_Applicant_Order.ContractNO"></aspxform:XTextBox>
                                            </td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox26" runat="server" Width="100%" DisableBehavior="ReadOnly" XDataBind="GNHT_Applicant_Order.OrderNO"></aspxform:XTextBox>
                                            </td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox27" runat="server" Width="100%" DisableBehavior="ReadOnly" XDataBind="GNHT_Applicant_Order.OrderNum"></aspxform:XTextBox>
                                            </td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox28" runat="server" Width="100%" DisableBehavior="ReadOnly" XDataBind="GNHT_Applicant_Order.MachineType"></aspxform:XTextBox>
                                            </td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox29" runat="server" Width="100%" DisableBehavior="ReadOnly" XDataBind="GNHT_Applicant_Order.Count"></aspxform:XTextBox>
                                            </td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox30" runat="server" Width="100%" DisableBehavior="ReadOnly" XDataBind="GNHT_Applicant_Order.UnitPrice"></aspxform:XTextBox>
                                            </td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox35" runat="server" Width="100%" DisableBehavior="ReadOnly" XDataBind="GNHT_Applicant_Order.StatusNote"></aspxform:XTextBox>
                                            </td>
                                            <td style="BORDER-BOTTOM: #8080ff 1px solid; BORDER-RIGHT: #8080ff 1px solid" rowspan="3">
                                                <p align="center">
                                                    <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="GNHT_Applicant_Order.isASP" DisableExpress='GNHT_Applicant_Order.ContractNO==""'></aspxform:XCheckBox>
                                                </p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="23" colspan="7">
                                                付款条件：<aspxform:XTextBox id="XTextBox1" runat="server" Width="390px" XDataBind="GNHT_Applicant_Order.PaymentNote" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" CssClass="BOXCSS"></aspxform:XTextBox>
                                                <aspxform:XTextBox id="XTextBox31" runat="server" Width="50px" XDataBind="GNHT_Applicant_Order.PaymentNO" CssClass="BOXCSS"></aspxform:XTextBox>
                                                <aspxform:XCustomBrowserButton id="XCustomBrowserButton2" runat="server" Width="21px" ColumnCount="2" NavigateUrl="~\FormSupport\SelPayment.aspx" PopupWndWidth="600" DataMap="Col1->GNHT_Applicant_Order.PaymentNO;Col2->GNHT_Applicant_Order.PaymentNote" HiddenExpress="Global.StepName!='开始' &amp;&amp; Global.StepName!='市场支持部'"></aspxform:XCustomBrowserButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="BORDER-BOTTOM: #8080ff 1px solid; BORDER-LEFT: #8080ff 1px solid" height="30" colspan="7">
                                                备&nbsp;&nbsp;&nbsp;&nbsp; 注：<aspxform:XTextBox id="XTextBox32" runat="server" Width="446px" XDataBind="GNHT_Applicant_Order.Remark" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" CssClass="BOXCSS"></aspxform:XTextBox>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <p>
                                <aspxform:XTextBox id="XTextBox3" runat="server" Width="100%" XDataBind="GNHT_Applicant_All.H_Content" BorderColor="#DCDCDC" Height="35px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable3" border="1" cellspacing="0" cellpadding="0" width="800" hiddenexpress="GNHT_Applicant_All.ContractType=='代理协议'">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20">
                            2.交货方式：（包括付款时间、电汇或汇票、发票和税收、是否包括版权等）
                        </td>
                    </tr>
                    <tr>
                        <td height="48">
                            <p>
                                &nbsp;第三方版权的支付：<aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="GNHT_Applicant_All.Y_CopyrightPay" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>甲方支付</asp:ListItem>
                                    <asp:ListItem>乙方支付--标准明细</asp:ListItem>
                                    <asp:ListItem>乙方支付--标准不明</asp:ListItem>
                                    <asp:ListItem>双方承担--明细</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p>
                                <aspxform:XTextBox id="XTextBox4" runat="server" Width="100%" XDataBind="GNHT_Applicant_All.H_Delivery" BorderColor="#DCDCDC" Height="25px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
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
                                &nbsp;支付结算方式：<aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="GNHT_Applicant_All.Y_PayType" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>电汇</asp:ListItem>
                                    <asp:ListItem>银行汇票</asp:ListItem>
                                    <asp:ListItem>银行承兑汇票</asp:ListItem>
                                    <asp:ListItem>其他</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p>
                                <aspxform:XTextBox id="XTextBox2" runat="server" Width="100%" XDataBind="GNHT_Applicant_All.H_Payment" BorderColor="#DCDCDC" Height="25px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
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
                                <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="GNHT_Applicant_All.Y_IsDefault" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem Value="1">有默认验收条款</asp:ListItem>
                                    <asp:ListItem Value="2">无默认验收条款</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p>
                                <aspxform:XTextBox id="XTextBox5" runat="server" Width="100%" XDataBind="GNHT_Applicant_All.H_Acceptance" BorderColor="#DCDCDC" Height="25px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            5.售后服务：（保修和保换期、备机数量及归还时间）</td>
                    </tr>
                    <tr>
                        <td height="48">
                            <aspxform:XTextBox id="XTextBox6" runat="server" Width="100%" XDataBind="GNHT_Applicant_All.H_Saleservice" BorderColor="#DCDCDC" Height="45px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable3" border="1" cellspacing="0" cellpadding="0" width="800" hiddenexpress="GNHT_Applicant_All.ContractType!='代理协议'">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20">
                            2.代理区域（包括代理机型及价格）：
                        </td>
                    </tr>
                    <tr>
                        <td height="48">
                            <aspxform:XTextBox id="XTextBox7" runat="server" Width="100%" XDataBind="GNHT_Applicant_All.DL_Area" BorderColor="#DCDCDC" Height="45px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            3.甲乙双方的义务分工：</td>
                    </tr>
                    <tr>
                        <td height="48">
                            <aspxform:XTextBox id="XTextBox9" runat="server" Width="100%" XDataBind="GNHT_Applicant_All.DL_Duty" BorderColor="#DCDCDC" Height="45px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            4.代理费支付规定（包括代理费的确认和支付）：</td>
                    </tr>
                    <tr>
                        <td height="48">
                            <p>
                                &nbsp;贷款逾期时的代理费的扣款约定：<aspxform:XTextBox id="XTextBox42" runat="server" Width="562px" XDataBind="GNHT_Applicant_All.Y_CutNote" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS"></aspxform:XTextBox>
                            </p>
                            <p>
                                <aspxform:XTextBox id="XTextBox10" runat="server" Width="100%" XDataBind="GNHT_Applicant_All.DL_Payment" BorderColor="#DCDCDC" Height="25px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            5.合作期限：</td>
                    </tr>
                    <tr>
                        <td height="48">
                            <aspxform:XTextBox id="XTextBox13" runat="server" Width="100%" XDataBind="GNHT_Applicant_All.DL_TimeLimit" BorderColor="#DCDCDC" Height="45px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
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
                                &nbsp;管辖法院：<aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="GNHT_Applicant_All.Y_Court" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>甲方所在地法院</asp:ListItem>
                                    <asp:ListItem>乙方所在地法院</asp:ListItem>
                                    <asp:ListItem>原告方所在地法院</asp:ListItem>
                                    <asp:ListItem>其他</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p>
                                <aspxform:XTextBox id="XTextBox12" runat="server" Width="100%" XDataBind="GNHT_Applicant_All.H_Breach" BorderColor="#DCDCDC" Height="25px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
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
                                <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="GNHT_Applicant_All.Y_Mark" RepeatDirection="Horizontal" RepeatLayout="Flow">
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
                            <aspxform:XTextBox id="XTextBox15" runat="server" Width="100%" XDataBind="GNHT_Applicant_All.H_Others" BorderColor="#DCDCDC" Height="45px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            9.包括附件（含件数及名称）:</td>
                    </tr>
                    <tr>
                        <td height="30">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="GNHT_Applicant_All.H_Attachment"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p>
                                &nbsp;项目负责人上传附件：<aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="GNHT_Applicant_All.H_Attachment2"></aspxform:XMSNAttachments>
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
                            <aspxform:XTextBox id="XTextBox16" runat="server" Width="100%" XDataBind="GNHT_Applicant_All.H_OtherCharge" BorderColor="#DCDCDC" Height="45px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            11.备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 注:</td>
                    </tr>
                    <tr>
                        <td height="48">
                            <aspxform:XTextBox id="XTextBox17" runat="server" Width="100%" XDataBind="GNHT_Applicant_All.H_Note" BorderColor="#DCDCDC" Height="45px" CssClass="MYAREA" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="MYHEAD" height="20">
                            12.合同存档:</td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: 1px groove; BORDER-LEFT: medium none; BORDER-RIGHT: medium none" height="48">
                            <aspxform:XMSNAttachments id="XMSNAttachments3" runat="server" XDataBind="GNHT_Applicant_All.H_Attachment3"></aspxform:XMSNAttachments>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XMSNAttachments3" ErrorMessage="请上传归档合同！" Display="None" ValidationGroup="HTSAVE">合同存档</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="800">
                            审批意见</td>
                    </tr>
                    <tr>
                        <td>
                            <p align="left">
                                <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="100%" BorderColor="Transparent" BorderWidth="1px" CssClass="AA"></aspxform:XSignTrace>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="800">
                            填写审批意见</td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" Width="100%" BorderColor="#DCDCDC" BorderWidth="1" Height="45px" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td width="263" align="right">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress="Global.StepName == '开始'"></aspxform:XPrintButton>
                        </td>
                        <td width="533" align="left">
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
