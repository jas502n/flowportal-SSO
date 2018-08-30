<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <title>信用证检查单</title> <style>BODY {
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
	BORDER-RIGHT: #d1dedf 1px solid; FONT-WEIGHT: bold; FONT-SIZE: 13px; BORDER-LEFT: #000000 0px solid; COLOR: #004e98; BACKGROUND-COLOR: #d1dedf
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
TABLE.AA {
	BORDER-COLLAPSE: separate; BACKGROUND-COLOR: #d1dedf
}
TABLE.AA TD {
	BORDER-TOP: white 0px solid; BORDER-LEFT: white 0px solid; HEIGHT: 15px
}
TABLE.AA TR.HeaderRow {
	BACKGROUND-COLOR: #f0f0f0
}
TABLE.AA TR.HeaderRow TD {
	HEIGHT: 29px; TEXT-ALIGN: center
}
TABLE.AA TR.HeaderRow TD.NoColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.StepNameColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.SignColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.ActionColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.DateColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.NoColumn {
	PADDING-RIGHT: 8px; PADDING-LEFT: 8px
}
TABLE.AA TR.HeaderRow TD.CommentsColumn {
	WIDTH: 99%
}
TABLE.AA TR.DataRow {
	BACKGROUND-COLOR: #ffffff
}
TABLE.AA TR.DataRow TD {
	HEIGHT: 41px; TEXT-ALIGN: center
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
TABLE.AA TR.DataRow TD.NoCell {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px
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
TEXTAREA {
	BORDER-RIGHT: #ffffff 0px solid; BORDER-TOP: #ffffff 0px solid; OVERFLOW-Y: visible; BACKGROUND: #ffffff; OVERFLOW: hidden; BORDER-LEFT: #ffffff 0px solid; BORDER-BOTTOM: #ffb3a7 0px solid
}
</style>
</head>
<body>
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
                            <asp:Label id="Label1" runat="server" text="信用证检查单" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Insert content here -->
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td width="70">
                            <p align="right">
                                <aspxform:XLabel id="XLabel43" runat="server" text="申  请  人：" Width="100%"></aspxform:XLabel>
                            </p>
                        </td>
                        <td height="20" width="91">
                            <aspxform:XTextBox id="XTextBox44" runat="server" Width="60px" XDataBind="LC_Applicant.AppHRName" DisableBehavior="ReadOnly" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox47" runat="server" Width="20px" XDataBind="LC_Applicant.AppHRID" BorderWidth="1" HiddenInput="True" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td width="71">
                            <p align="right">
                                <aspxform:XLabel id="XLabel45" runat="server" text="申请日期：" Height="14px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="132">
                            <aspxform:XTextBox id="XTextBox45" runat="server" Width="120px" XDataBind="LC_Applicant.AppDate" DisableBehavior="ReadOnly" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td width="61">
                            <p align="right">
                                流水号：
                            </p>
                        </td>
                        <td width="124">
                            <aspxform:XTextBox id="XTextBox46" runat="server" Width="120px" XDataBind="LC_Applicant.AppSN" DisableBehavior="ReadOnly" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td width="60">
                            <p align="right">
                                公 司：
                            </p>
                        </td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" Width="100px" XDataBind="LC_Applicant.CompanyName" ForeColor="Blue">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>创维数字</asp:ListItem>
                                <asp:ListItem>创维无线</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="RFCGS" runat="server" ControlToValidate="XDropDownList2" ErrorMessage="请选择公司" Display="None"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="22" colspan="4">
                            基本信息<aspxform:XRequiredFieldValidator id="RFV1" runat="server" ControlToValidate="XTextBox1" ErrorMessage="请选择客户！" Display="None"></aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="RFV2" runat="server" ControlToValidate="XTextBox2" ErrorMessage="请填写国家！" Display="None"></aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="RFV3" runat="server" ControlToValidate="XTextBox3" ErrorMessage="请填写开证行！" Display="None"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="79">
                            <p align="right">
                                客户名称：
                            </p>
                        </td>
                        <td width="316">
                            <aspxform:XTextBox id="XTextBox1" runat="server" Width="250px" XDataBind="LC_Applicant.CustomerName" DisableExpress="LC_Applicant.CompanyName!='创维无线'" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton1" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCustomer.aspx" DataMap="Col1->LC_Applicant.CustomerName" HiddenExpress="Global.StepName!='开始' &amp;&amp; Global.StepName!='财务(评审)' || LC_Applicant.CompanyName!='创维数字'"></aspxform:XCustomBrowserButton>
                        </td>
                        <td width="79">
                            <p align="right">
                                国&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;家：
                            </p>
                        </td>
                        <td width="316">
                            <aspxform:XTextBox id="XTextBox2" runat="server" Width="250px" XDataBind="LC_Applicant.Country" DisableExpress="LC_Applicant.CompanyName!='创维无线'" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                开&nbsp;证&nbsp;行：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox3" runat="server" Width="250px" XDataBind="LC_Applicant.OpenBank" DisableExpress="LC_Applicant.CompanyName!='创维无线'" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="21px" DataMap="Country->LC_Applicant.Country;BankName->LC_Applicant.OpenBank;Swift->LC_Applicant.Swift" HiddenExpress="Global.StepName!='开始' &amp;&amp; Global.StepName!='财务(评审)' || LC_Applicant.CompanyName!='创维数字'" DisplayColumns="BankName:银行;Country:国家;Swift:SWIFT;GradeNote:财务评估" XDataSource="TableName:LC_BankList"></aspxform:XDataBrowserButton>
                        </td>
                        <td>
                            <p align="right">
                                转&nbsp;让&nbsp;行：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox4" runat="server" Width="250px" XDataBind="LC_Applicant.TransBank" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                SWIFT码：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox5" runat="server" Width="250px" XDataBind="LC_Applicant.Swift" DisableExpress="LC_Applicant.CompanyName!='创维无线'" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="RFV4" runat="server" ControlToValidate="XTextBox5" ErrorMessage="请填写SWIFT码！" Display="None"></aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                            <p align="right">
                                信用证号：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox6" runat="server" Width="250px" XDataBind="LC_Applicant.LC_NO" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                开证日期：
                            </p>
                        </td>
                        <td>
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" Width="120px" XDataBind="LC_Applicant.OpenDate" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                        </td>
                        <td>
                            <p align="right">
                                订&nbsp;单&nbsp;号：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox7" runat="server" Width="250px" XDataBind="LC_Applicant.OrderNO" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                金&nbsp; &nbsp;&nbsp;&nbsp;额：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox8" runat="server" Width="100px" XDataBind="LC_Applicant.LC_Money" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox28" runat="server" Width="60px" XDataBind="LC_Applicant.LC_MoneyUnit" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS">美元</aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="RFV7" runat="server" ControlToValidate="XTextBox28" ErrorMessage="请填写币别！" Display="None"></aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                            <p align="right">
                                交货日期：
                            </p>
                        </td>
                        <td>
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" Width="120px" XDataBind="LC_Applicant.DeliveryDate" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="800" align="center" hiddenexpress="Global.StepName=='开始'">
                <tbody>
                    <tr>
                        <td height="28" width="30">
                            <p align="center">
                                序号
                            </p>
                        </td>
                        <td width="55">
                            <p align="center">
                                负责人
                            </p>
                        </td>
                        <td width="68">
                        </td>
                        <td width="230">
                            <p align="center">
                                内容
                            </p>
                        </td>
                        <td width="150">
                            风险类型</td>
                        <td width="125">
                            风险评估</td>
                        <td width="120">
                            风险处理建议</td>
                    </tr>
                    <tr>
                        <td height="55">
                            <p align="center">
                                1
                            </p>
                        </td>
                        <td>
                            <p align="center">
                                财务
                            </p>
                        </td>
                        <td>
                            银行咨信</td>
                        <td>
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td height="28" width="100%">
                                            &nbsp;开证银行:<aspxform:XLabel id="XLabel4" runat="server" Express="LC_Applicant.OpenBank"></aspxform:XLabel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="28">
                                            &nbsp;转让银行:<aspxform:XLabel id="XLabel3" runat="server" Express="LC_Applicant.TransBank"></aspxform:XLabel>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <td valign="top">
                            <p>
                                是否有风险:<aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" Width="68px" XDataBind="LC_Applicant.RiskType1" Height="20px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem>否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p align="center">
                                <aspxform:XTextBox id="XTextBox30" runat="server" Width="100%" XDataBind="LC_Applicant.RiskTypeNote1" Height="25px" CssClass="BOXCSS" HiddenExpress="LC_Applicant.RiskType1!='是'" TextMode="MultiLine"></aspxform:XTextBox>
                                <aspxform:XRequiredFieldValidator id="RFCD1" runat="server" ControlToValidate="XRadioButtonList8" ErrorMessage="请选择[是否有风险]!" Display="None" ValidationGroup="CaiWu1"></aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="RFCC1" runat="server" ControlToValidate="XTextBox30" ErrorMessage="请填写风险类型!" Display="None" DisableExpress='LC_Applicant.RiskType1 !="是"' ValidationGroup="CaiWu1"></aspxform:XRequiredFieldValidator>
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox19" runat="server" Width="125px" XDataBind="LC_Applicant.RiskAssesment1" Max="0" Min="0" BorderWidth="0px" HiddenInput="False" BorderColor="Gainsboro" Height="100%" TextMode="MultiLine" BackColor="#FAFAFA"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="RFCA1" runat="server" ControlToValidate="XTextBox19" ErrorMessage="请填写风险评估!" Display="None" DisableExpress='LC_Applicant.RiskType1 !="是"' ValidationGroup="CaiWu1"></aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox20" runat="server" Width="120px" XDataBind="LC_Applicant.RiskTreatment1" BorderWidth="0px" BorderColor="#DCDCDC" Height="100%" TextMode="MultiLine" BackColor="#FAFAFA"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="RFCB1" runat="server" ControlToValidate="XTextBox20" ErrorMessage="请填写风险处理建议!" Display="None" DisableExpress='LC_Applicant.RiskType1 !="是"' ValidationGroup="CaiWu1"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="75">
                            <p align="center">
                                2
                            </p>
                        </td>
                        <td>
                            <p align="center">
                                财务
                            </p>
                        </td>
                        <td>
                            类别</td>
                        <td>
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td height="25" width="100%">
                                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="LC_Applicant.isRepeal" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                <asp:ListItem>不可撤销</asp:ListItem>
                                                <asp:ListItem>可撤销</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                            <aspxform:XRequiredFieldValidator id="RF1" runat="server" ControlToValidate="XRadioButtonList5" ErrorMessage="请选择是否可撤销！" Display="None" ValidationGroup="CaiWu1"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            <p>
                                                <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="LC_Applicant.isTransfer" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                    <asp:ListItem>不可转让</asp:ListItem>
                                                    <asp:ListItem>可转让</asp:ListItem>
                                                </aspxform:XRadioButtonList>
                                                <aspxform:XRequiredFieldValidator id="RF2" runat="server" ControlToValidate="XRadioButtonList6" ErrorMessage="请选择是否可转让！" Display="None" ValidationGroup="CaiWu1"></aspxform:XRequiredFieldValidator>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            <p>
                                                <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="LC_Applicant.isUnderbond" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                    <asp:ListItem>保兑</asp:ListItem>
                                                    <asp:ListItem>非保兑</asp:ListItem>
                                                </aspxform:XRadioButtonList>
                                                <aspxform:XRequiredFieldValidator id="RF3" runat="server" ControlToValidate="XRadioButtonList7" ErrorMessage="请选择是否保兑！" Display="None" ValidationGroup="CaiWu1"></aspxform:XRequiredFieldValidator>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            <aspxform:XRadioButtonList id="XRadioButtonList14" runat="server" XDataBind="LC_Applicant.isZhengBen" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                <asp:ListItem>正本</asp:ListItem>
                                                <asp:ListItem>非正本</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                            <aspxform:XRequiredFieldValidator id="RF31" runat="server" ControlToValidate="XRadioButtonList14" ErrorMessage="请选择是否为正本!" Display="None" ValidationGroup="CaiWu1"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <td valign="top">
                            <p>
                                是否有风险:<aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" Width="68px" XDataBind="LC_Applicant.RiskType2" Height="20px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem>否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p align="center">
                                <aspxform:XTextBox id="XTextBox31" runat="server" Width="100%" XDataBind="LC_Applicant.RiskTypeNote2" Height="25px" CssClass="BOXCSS" HiddenExpress="LC_Applicant.RiskType2!='是'" TextMode="MultiLine"></aspxform:XTextBox>
                                <aspxform:XRequiredFieldValidator id="RFCD2" runat="server" ControlToValidate="XRadioButtonList9" ErrorMessage="请选择[是否有风险]!" Display="None" ValidationGroup="CaiWu1"></aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="RFCC2" runat="server" ControlToValidate="XTextBox31" ErrorMessage="请填写风险类型!" Display="None" DisableExpress='LC_Applicant.RiskType2 !="是"' ValidationGroup="CaiWu1"></aspxform:XRequiredFieldValidator>
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox21" runat="server" Width="125px" XDataBind="LC_Applicant.RiskAssesment2" Max="0" Min="0" BorderWidth="0px" HiddenInput="False" BorderColor="Gainsboro" Height="100%" TextMode="MultiLine" BackColor="#FAFAFA"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="RFCA2" runat="server" ControlToValidate="XTextBox21" ErrorMessage="请填写风险评估!" Display="None" DisableExpress='LC_Applicant.RiskType2 !="是"' ValidationGroup="CaiWu1"></aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox22" runat="server" Width="120px" XDataBind="LC_Applicant.RiskTreatment2" BorderWidth="0px" BorderColor="#DCDCDC" Height="100%" TextMode="MultiLine" BackColor="#FAFAFA"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="RFCB2" runat="server" ControlToValidate="XTextBox22" ErrorMessage="请填写风险处理建议!" Display="None" DisableExpress='LC_Applicant.RiskType2 !="是"' ValidationGroup="CaiWu1"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="350">
                            <p align="center">
                                3
                            </p>
                        </td>
                        <td>
                            <p align="center">
                                船务
                            </p>
                        </td>
                        <td>
                            基本信息</td>
                        <td>
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td height="25" width="65">
                                            分批装运:</td>
                                        <td width="175">
                                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" Width="68px" XDataBind="LC_Applicant.isBatch" Height="20px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                <asp:ListItem>是</asp:ListItem>
                                                <asp:ListItem>否</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                            <aspxform:XRequiredFieldValidator id="RF4" runat="server" ControlToValidate="XRadioButtonList1" ErrorMessage="是否分批转运！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="24">
                                            转&nbsp;&nbsp; 运:</td>
                                        <td>
                                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="LC_Applicant.isTransship" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                <asp:ListItem>是</asp:ListItem>
                                                <asp:ListItem>否</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                            <aspxform:XRequiredFieldValidator id="RF5" runat="server" ControlToValidate="XRadioButtonList2" ErrorMessage="是否转运！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            承兑期限:
                                        </td>
                                        <td>
                                            <aspxform:XRadioButtonList id="XRadioButtonList13" runat="server" XDataBind="LC_Applicant.SettledType" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                <asp:ListItem>即期</asp:ListItem>
                                                <asp:ListItem>远期</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                            <aspxform:XTextBox id="XTextBox9" runat="server" Width="30px" XDataBind="LC_Applicant.SettledWithin" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" HiddenExpress="LC_Applicant.SettledType!='远期'" Express="if(LC_Applicant.SettledType=='即期','',LC_Applicant.SettledWithin)" TextAlign="Right"></aspxform:XTextBox>
                                            <aspxform:XLabel id="XLabel2" runat="server" text="天" HiddenExpress="LC_Applicant.SettledType!='远期'"></aspxform:XLabel>
                                            <aspxform:XRequiredFieldValidator id="RF6" runat="server" ControlToValidate="XRadioButtonList13" ErrorMessage="请选择承兑期限！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            起算日:</td>
                                        <td>
                                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="LC_Applicant.BeginType">
                                                <asp:ListItem Selected="True">开船日</asp:ListItem>
                                                <asp:ListItem>其他</asp:ListItem>
                                            </aspxform:XDropDownList>
                                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="LC_Applicant.BeginOther" CssClass="BOXCSS" HiddenExpress="LC_Applicant.BeginType!='其他'" width="80px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            效&nbsp;&nbsp; 期:
                                        </td>
                                        <td>
                                            <aspxform:XDateTimePicker id="XDateTimePicker5" runat="server" Width="120px" XDataBind="LC_Applicant.ExpiryDate" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                                            <aspxform:XRequiredFieldValidator id="RF7" runat="server" ControlToValidate="XDateTimePicker5" ErrorMessage="请填写效期！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            效&nbsp;&nbsp; 地:
                                        </td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox10" runat="server" Width="150px" XDataBind="LC_Applicant.ExpiryPlace" CssClass="BOXCSS"></aspxform:XTextBox>
                                            <aspxform:XRequiredFieldValidator id="RF8" runat="server" ControlToValidate="XTextBox10" ErrorMessage="请填写效地！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25" colspan="2">
                                            最晚装船期:<aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" Width="120px" XDataBind="LC_Applicant.LatestDate" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                                            <aspxform:XRequiredFieldValidator id="RF9" runat="server" ControlToValidate="XDateTimePicker4" ErrorMessage="请填写最晚装船期！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25" colspan="2">
                                            装运港:<aspxform:XTextBox id="XTextBox11" runat="server" Width="150px" XDataBind="LC_Applicant.ShipmentPort" CssClass="BOXCSS"></aspxform:XTextBox>
                                            <aspxform:XRequiredFieldValidator id="RF10" runat="server" ControlToValidate="XTextBox11" ErrorMessage="请填写装运港！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25" colspan="2">
                                            <p>
                                                卸货港:<aspxform:XTextBox id="XTextBox12" runat="server" Width="150px" XDataBind="LC_Applicant.DeliveryPort" CssClass="BOXCSS"></aspxform:XTextBox>
                                                <aspxform:XRequiredFieldValidator id="RF11" runat="server" ControlToValidate="XTextBox12" ErrorMessage="请填写卸货港！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25" colspan="2">
                                            是否客户指定货代:<aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="LC_Applicant.isAppoint" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                <asp:ListItem>是</asp:ListItem>
                                                <asp:ListItem>否</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                            <aspxform:XRequiredFieldValidator id="RF12" runat="server" ControlToValidate="XRadioButtonList3" ErrorMessage="是否指定货代！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25" colspan="2">
                                            交单期：信用证效期内,开船<aspxform:XTextBox id="XTextBox13" runat="server" Width="45px" XDataBind="LC_Applicant.DeliverDay" CssClass="BOXCSS"></aspxform:XTextBox>
                                            天<aspxform:XRequiredFieldValidator id="RF13" runat="server" ControlToValidate="XTextBox13" ErrorMessage="请填写交单期！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            发&nbsp;&nbsp; 票:</td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox14" runat="server" Width="45px" XDataBind="LC_Applicant.Invoice" CssClass="BOXCSS"></aspxform:XTextBox>
                                            份<aspxform:XRequiredFieldValidator id="RF14" runat="server" ControlToValidate="XTextBox14" ErrorMessage="请填写发票份数！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            装箱单:</td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox15" runat="server" Width="45px" XDataBind="LC_Applicant.PackingList" CssClass="BOXCSS"></aspxform:XTextBox>
                                            份<aspxform:XRequiredFieldValidator id="RF15" runat="server" ControlToValidate="XTextBox15" ErrorMessage="请填写装箱单份数！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            提&nbsp; &nbsp;单:</td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox16" runat="server" Width="45px" XDataBind="LC_Applicant.LadingBill" CssClass="BOXCSS"></aspxform:XTextBox>
                                            份<aspxform:XRequiredFieldValidator id="RF16" runat="server" ControlToValidate="XTextBox16" ErrorMessage="请填写提单份数！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            产地证:</td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox17" runat="server" Width="45px" XDataBind="LC_Applicant.CO" CssClass="BOXCSS"></aspxform:XTextBox>
                                            份<aspxform:XRequiredFieldValidator id="RF17" runat="server" ControlToValidate="XTextBox17" ErrorMessage="请填写产地证份数！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="28">
                                            其&nbsp;&nbsp;它:</td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox27" runat="server" Width="95%" XDataBind="LC_Applicant.OtherNote" CssClass="BOXCSS"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <td valign="top">
                            <p>
                                是否有风险:<aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" Width="68px" XDataBind="LC_Applicant.RiskType3" Height="20px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem>否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p align="center">
                                <aspxform:XTextBox id="XTextBox32" runat="server" Width="100%" XDataBind="LC_Applicant.RiskTypeNote3" Height="25px" CssClass="BOXCSS" HiddenExpress="LC_Applicant.RiskType3!='是'" TextMode="MultiLine"></aspxform:XTextBox>
                                <aspxform:XRequiredFieldValidator id="RFCD3" runat="server" ControlToValidate="XRadioButtonList10" ErrorMessage="请填写风险类型!" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="RFCC3" runat="server" ControlToValidate="XTextBox32" ErrorMessage="请填写风险类型!" Display="None" DisableExpress='LC_Applicant.RiskType3 !="是"' ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox23" runat="server" Width="125px" XDataBind="LC_Applicant.RiskAssesment3" Max="0" Min="0" BorderWidth="0px" HiddenInput="False" BorderColor="Gainsboro" Height="100%" TextMode="MultiLine" BackColor="#FAFAFA"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="RFCA3" runat="server" ControlToValidate="XTextBox23" ErrorMessage="请填写风险评估!" Display="None" DisableExpress='LC_Applicant.RiskType3 !="是"' ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox24" runat="server" Width="120px" XDataBind="LC_Applicant.RiskTreatment3" BorderWidth="0px" BorderColor="#DCDCDC" Height="100%" TextMode="MultiLine" BackColor="#FAFAFA"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="RFCB3" runat="server" ControlToValidate="XTextBox24" ErrorMessage="请填写风险处理建议!" Display="None" DisableExpress='LC_Applicant.RiskType3 !="是"' ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="70">
                            <p align="center">
                                4
                            </p>
                        </td>
                        <td>
                            <p align="center">
                                船务
                            </p>
                        </td>
                        <td>
                            附加条件</td>
                        <td>
                            <p>
                                <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="LC_Applicant.isCondition" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>否</asp:ListItem>
                                    <asp:ListItem>是</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                ，详细：<aspxform:XRequiredFieldValidator id="RF18" runat="server" ControlToValidate="XRadioButtonList4" ErrorMessage="是否有附加条件！" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                            </p>
                            <p>
                                <aspxform:XTextBox id="XTextBox18" runat="server" Width="235px" XDataBind="LC_Applicant.ConditionNote" Max="0" Min="0" BorderWidth="1px" HiddenInput="False" BorderColor="Gainsboro" Height="35px" TextMode="MultiLine" BackColor="#FAFAFA"></aspxform:XTextBox>
                            </p>
                        </td>
                        <td valign="top">
                            <p>
                                是否有风险:<aspxform:XRadioButtonList id="XRadioButtonList11" runat="server" Width="68px" XDataBind="LC_Applicant.RiskType4" Height="20px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem>否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p align="center">
                                <aspxform:XTextBox id="XTextBox33" runat="server" Width="100%" XDataBind="LC_Applicant.RiskTypeNote4" Height="25px" CssClass="BOXCSS" HiddenExpress="LC_Applicant.RiskType4!='是'" TextMode="MultiLine"></aspxform:XTextBox>
                                <aspxform:XRequiredFieldValidator id="RFCD4" runat="server" ControlToValidate="XRadioButtonList11" ErrorMessage="请填写风险类型!" Display="None" ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="RFCC4" runat="server" ControlToValidate="XTextBox33" ErrorMessage="请填写风险类型!" Display="None" DisableExpress='LC_Applicant.RiskType4 !="是"' ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox25" runat="server" Width="125px" XDataBind="LC_Applicant.RiskAssesment4" BorderWidth="0px" BorderColor="#DCDCDC" Height="100%" TextMode="MultiLine" BackColor="#FAFAFA"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="RFCA4" runat="server" ControlToValidate="XTextBox25" ErrorMessage="请填写风险评估!" Display="None" DisableExpress='LC_Applicant.RiskType4 !="是"' ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox26" runat="server" Width="120px" XDataBind="LC_Applicant.RiskTreatment4" BorderWidth="0px" BorderColor="#DCDCDC" Height="100%" TextMode="MultiLine" BackColor="#FAFAFA"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="RFCB4" runat="server" ControlToValidate="XTextBox26" ErrorMessage="请填写风险处理建议!" Display="None" DisableExpress='LC_Applicant.RiskType4 !="是"' ValidationGroup="ChuanWu"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName!='船务(评审)' &amp;&amp; Global.StepName!='财务(评审)' &amp;&amp;Global.StepName!='船务(评审)1' &amp;&amp; Global.StepName!='财务(评审)1' &amp;&amp;  Global.StepName!=''">
                        <td height="35">
                            <p align="center">
                                5
                            </p>
                        </td>
                        <td>
                            <p align="center">
                                船务
                            </p>
                        </td>
                        <td>
                        </td>
                        <td>
                            <p>
                                开船日期:<aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" Width="120px" XDataBind="LC_Applicant.ShippingDate" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                                <aspxform:XRequiredFieldValidator id="RF19" runat="server" ControlToValidate="XDateTimePicker3" ErrorMessage="请填写开船日期！" Display="None" ValidationGroup="CUW"></aspxform:XRequiredFieldValidator>
                            </p>
                            <p>
                                交单日期:<aspxform:XDateTimePicker id="XDateTimePicker9" runat="server" Width="120px" XDataBind="LC_Applicant.DeliverDate" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                                <aspxform:XRequiredFieldValidator id="RF20" runat="server" ControlToValidate="XDateTimePicker9" ErrorMessage="请填写交单日期！" Display="None" ValidationGroup="CUW"></aspxform:XRequiredFieldValidator>
                            </p>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName!='船务(评审)' &amp;&amp; Global.StepName!='财务(评审)' &amp;&amp; Global.StepName!='船务(评审)1' &amp;&amp; Global.StepName!='财务(评审)1' &amp;&amp; Global.StepName!=''">
                        <td>
                            <p align="center">
                                6
                            </p>
                        </td>
                        <td>
                            <p align="center">
                                财务
                            </p>
                        </td>
                        <td>
                        </td>
                        <td>
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td height="25" width="78">
                                            承兑日期:</td>
                                        <td width="155">
                                            <aspxform:XDateTimePicker id="XDateTimePicker6" runat="server" Width="120px" XDataBind="LC_Applicant.AcceptDate" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                                            <aspxform:XRequiredFieldValidator id="RF21" runat="server" ControlToValidate="XDateTimePicker6" ErrorMessage="请填写承兑日期！" Display="None" ValidationGroup="CAIW"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            应收汇日期:</td>
                                        <td>
                                            <aspxform:XDateTimePicker id="XDateTimePicker7" runat="server" Width="120px" XDataBind="LC_Applicant.ShouHuiDate" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                                            <aspxform:XRequiredFieldValidator id="RF22" runat="server" ControlToValidate="XDateTimePicker7" ErrorMessage="请填写应收款日期！" Display="None" ValidationGroup="CAIW"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            收款日期:</td>
                                        <td>
                                            <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" Width="120px" XDataBind="LC_Applicant.PaymentDate" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                                            <aspxform:XRequiredFieldValidator id="RF23" runat="server" ControlToValidate="XDateTimePicker8" ErrorMessage="请填写收款日期！" Display="None" ValidationGroup="CAIW"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            信用证状态:</td>
                                        <td>
                                            <aspxform:XDropDownList id="XDropDownList5" runat="server" Width="120px" XDataBind="LC_Applicant.LC_Status" XDataSource="XDataSource" onchange="javascript:XFormOnChange(this);">
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem>已交单,已承兑</asp:ListItem>
                                                <asp:ListItem>已交单,未承兑</asp:ListItem>
                                                <asp:ListItem>已交单,银行拒付</asp:ListItem>
                                                <asp:ListItem>已发货,未交单</asp:ListItem>
                                                <asp:ListItem>已下单,未发货</asp:ListItem>
                                                <asp:ListItem>已收汇</asp:ListItem>
                                            </aspxform:XDropDownList>
                                            <aspxform:XRequiredFieldValidator id="RF24" runat="server" ControlToValidate="XDropDownList5" ErrorMessage="请填写信用证状态！" Display="None" ValidationGroup="CAIW"></aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="Global.StepName=='开始'">
                <tbody>
                    <tr>
                        <td height="30" width="167">
                            是否同意销售风险处理方案:</td>
                        <td width="627">
                            <aspxform:XRadioButtonList id="XRadioButtonList12" runat="server" XDataBind="LC_Applicant.isAgree" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>同意</asp:ListItem>
                                <asp:ListItem>不同意</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="RFV50" runat="server" ControlToValidate="XRadioButtonList12" ErrorMessage="请选择是否同意销售风险处理方案!" Display="None" ValidationGroup="zongshen"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20">
                            上传附件</td>
                    </tr>
                    <tr>
                        <td height="30">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="LC_Applicant.UploadFile"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="796">
                            审批意见</td>
                    </tr>
                    <tr>
                        <td height="42">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox2" runat="server" Width="100%" BorderWidth="1px" BorderColor="Gainsboro" Height="40px" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XSignTrace id="XSignTrace2" runat="server" Width="100%" BorderWidth="0px" BorderColor="Transparent" CssClass="AA"></aspxform:XSignTrace>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td valign="bottom" width="294">
                            <div align="right">
                                <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress="Global.StepName!=''"></aspxform:XPrintButton>
                            </div>
                        </td>
                        <td width="502">
                            <div align="left">
                                <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" Width="381px" Height="100%"></aspxform:XProcessButtonList>
                            </div>
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
                <div>
                </div>
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
