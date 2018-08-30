<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <title>异常反馈单</title> <style>BODY {
	FONT-SIZE: 12px; FONT-FAMILY: verdana
}
TABLE {
	FONT-SIZE: 12px; FONT-FAMILY: verdana; BORDER-COLLAPSE: collapse
}
P {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 12px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; FONT-FAMILY: verdana
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
	BORDER-RIGHT: #000000 1px solid; FONT-WEIGHT: bold; FONT-SIZE: 10pt; BORDER-LEFT: #000000 1px solid; COLOR: #004e98; BACKGROUND-COLOR: #d1dedf
}
.MYHEAD2 {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; FONT-WEIGHT: bold; FONT-SIZE: 10pt; BORDER-LEFT: #000000 1px solid; COLOR: #004e98; BACKGROUND-COLOR: #d1dedf
}
.MYTABLE {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 0px solid
}
.MYTABLE2 {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 0px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid
}
.MYTABLE3 {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 0px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 0px solid
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
	BORDER-RIGHT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; OVERFLOW-Y: visible; BACKGROUND: #ffffff; OVERFLOW: hidden; BORDER-LEFT: #ffffff 1px solid; BORDER-BOTTOM: #ffb3a7 1px solid
}
</style>
</head>
<body bottommargin="0" leftmargin="0" rightmargin="0" topmargin="0">
    <form runat="server">
        <!-- Insert content here -->
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="217">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="403" align="middle">
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Bold="True" Font-Size="Medium" text="深圳创维数字技术股份有限公司" Font-Names="Tahoma"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="224">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="40" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="异常反馈单" font-size="Small" font-names="Tahoma" font-bold="True"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td width="63">
                            <p align="right">
                                <aspxform:XLabel id="XLabel43" runat="server" text="申  请  人："></aspxform:XLabel>
                            </p>
                        </td>
                        <td height="20" width="142">
                            <aspxform:XTextBox id="XTextBox44" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="SHYC_Applicant.AppHRName" Width="100px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="SHYC_Applicant.AppHRID" Width="20px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td width="74">
                            <p align="right">
                                <aspxform:XLabel id="XLabel45" runat="server" text="申请日期：" Width="66px" Height="14px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="193">
                            <aspxform:XTextBox id="XTextBox45" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="SHYC_Applicant.AppDate" Width="120px"></aspxform:XTextBox>
                        </td>
                        <td width="62">
                            <p align="right">
                                流水号：
                            </p>
                        </td>
                        <td width="214">
                            <aspxform:XTextBox id="XTextBox46" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="SHYC_Applicant.AppSN" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYHEAD2" border="0" width="760">
                <tbody>
                    <tr>
                        <td class="myhead" height="20" width="796">
                            异常申请
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator72" runat="server" DisableExpress="Global.StepName!='开始'" ControlToValidate="XRadioButtonList1" ErrorMessage="请选择【异常类型】！" Display="None">--异常类型--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="XRadioButtonList2" ErrorMessage="请选择【是否出货】！" Display="None">--是否出货--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" DisableExpress="Global.StepName!='开始'" ControlToValidate="XTextBox11" ErrorMessage="请填写【客户名称】！" Display="None">--客户名称--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" DisableExpress="Global.StepName!='开始'" ControlToValidate="XTextBox12" ErrorMessage="请填写【产品型号】！" Display="None">--产品型号--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" DisableExpress="Global.StepName!='开始'" ControlToValidate="XTextBox13" ErrorMessage="请填写【订单编号】！" Display="None">--订单编号--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" DisableExpress="Global.StepName!='开始'" ControlToValidate="XTextBox3" ErrorMessage="请填写【平台机芯】！" Display="None">--平台机芯--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" DisableExpress="Global.StepName!='开始'" ControlToValidate="XTextBox5" ErrorMessage="请填写【异常数量】！" Display="None">--异常数量--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" DisableExpress="Global.StepName!='开始'" ControlToValidate="XTextBox6" ErrorMessage="请填写【异常比例】！" Display="None">--异常比例--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td height="25" width="90">
                            异常类型</td>
                        <td colspan="7">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="SHYC_Applicant.AbnormalType" Width="150px" RepeatDirection="Horizontal">
                                <asp:ListItem>生产异常</asp:ListItem>
                                <asp:ListItem>客户异常</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td height="29">
                            是否出货</td>
                        <td colspan="7">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="SHYC_Applicant.ShipMentType" Width="150px" RepeatDirection="Horizontal">
                                <asp:ListItem>已出货</asp:ListItem>
                                <asp:ListItem>未出货</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            客户名称</td>
                        <td width="105">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="SHYC_Applicant.Customer" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td width="80">
                            产品型号</td>
                        <td width="105">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="SHYC_Applicant.ProductNO" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td width="80">
                            订单编号</td>
                        <td width="105">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="SHYC_Applicant.OrderNO" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td width="80">
                            订单数量</td>
                        <td width="105">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="SHYC_Applicant.OrderCount" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="31">
                            平台机芯</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="SHYC_Applicant.Chip" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p>
                                异常物料
                            </p>
                            <p>
                                EDE编号
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="SHYC_Applicant.EDENO" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p>
                                异常物料
                            </p>
                            <p>
                                的位号
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="SHYC_Applicant.AbnormalWeiHao" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p>
                                异常发生
                            </p>
                            <p>
                                单位
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="SHYC_Applicant.BeginUnit" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="29">
                            异常数量</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="SHYC_Applicant.AbnormalCount" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            异常比例</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="SHYC_Applicant.AbnormalScale" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p>
                                生产数量
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox34" runat="server" XDataBind="SHYC_Applicant.ProductCount" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            出货数量</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox53" runat="server" XDataBind="SHYC_Applicant.ShipmentCount" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="29">
                            生产线体号</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox38" runat="server" XDataBind="SHYC_Applicant.XianTiNO" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            异常工位</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox64" runat="server" XDataBind="SHYC_Applicant.GongHao" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td height="37" colspan="8">
                            异常情况详细描述：<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" DisableExpress="Global.StepName!='开始'" ControlToValidate="XTextBox7" ErrorMessage="请填写【异常情况详细描述】！" Display="None">--异常情况详细描述--</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="SHYC_Applicant.AbnormalNote" Width="100%" BorderWidth="1px" Rows="3" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="37" colspan="8">
                            后果及影响：<aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="SHYC_Applicant.AbnormalStatus" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>致命</asp:ListItem>
                                <asp:ListItem>紧急</asp:ListItem>
                                <asp:ListItem>一般</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator24" runat="server" DisableExpress="Global.StepName!='开始'" ControlToValidate="XTextBox10" ErrorMessage="请填写【后果及影响】！" Display="None">--后果及影响--</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="SHYC_Applicant.AbnormalResult" Width="100%" BorderWidth="1px" Rows="3" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="37" colspan="8">
                            初步分析（可能原因）：<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator25" runat="server" DisableExpress="Global.StepName!='开始'" ControlToValidate="XTextBox8" ErrorMessage="请填写【初步分析】！" Display="None">--初步分析--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator27" runat="server" DisableExpress="Global.StepName!='开始'" ControlToValidate="XTextBox15" ErrorMessage="请填写【之前是否发生过类似异常】！" Display="None">--之前是否发生过类似异常--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator26" runat="server" DisableExpress="Global.StepName!='开始'" ControlToValidate="XTextBox39" ErrorMessage="请填写【对异常分析反馈的时间要求】！" Display="None">--对异常分析反馈的时间要求--</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="SHYC_Applicant.AnalyseNote" Width="100%" BorderWidth="1px" Rows="3" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="37" colspan="8">
                            <table border="0" cellspacing="0" cellpadding="0" width="750">
                                <tbody>
                                    <tr>
                                        <td width="165">
                                            进一步分析需要携带的附件：</td>
                                        <td width="150">
                                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="SHYC_Applicant.AnalyseFileType" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                <asp:ListItem>文件</asp:ListItem>
                                                <asp:ListItem>图片</asp:ListItem>
                                                <asp:ListItem>其他</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                        </td>
                                        <td width="100">
                                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="SHYC_Applicant.AnalyseFileOther" Width="90px" CssClass="BOXCSS"></aspxform:XTextBox>
                                        </td>
                                        <td width="343">
                                            <aspxform:XMSNAttachments id="XMSNAttachments6" runat="server" XDataBind="SHYC_Applicant.AnalyseFile" Width="330px"></aspxform:XMSNAttachments>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="NoPadding" height="28" colspan="8">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="50%">
                                            紧急应对措施(有则填写)：
                                        </td>
                                        <td width="50%">
                                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="SHYC_Applicant.InstantSolutions" Width="594px" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" TextMode="MultiLine"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="NoPadding" height="28" colspan="8">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="50%">
                                            之前是否发生过类似异常：
                                        </td>
                                        <td width="50%">
                                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="SHYC_Applicant.HappenBegin" Width="593px" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" TextMode="MultiLine"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="NoPadding" height="28" colspan="8">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="50%">
                                            对异常分析反馈的时间要求：
                                        </td>
                                        <td width="50%">
                                            <aspxform:XTextBox id="XTextBox39" runat="server" XDataBind="SHYC_Applicant.TimeYaoqiu" Width="575px" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" TextMode="MultiLine"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr hiddenexpress="SHYC_Applicant.AbnormalType!='生产异常'">
                        <td bgcolor="#c0ffc0" height="28" colspan="8">
                            质量部效果确认：
                            <aspxform:XRadioButtonList id="XRadioButtonList11" runat="server" XDataBind="SHYC_Applicant.isClose" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem Value="1">同意启动后续分析</asp:ListItem>
                                <asp:ListItem Value="2">同意工程分析，闭环</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE2" border="1" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td height="28" width="796">
                            异常分类：<aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="SHYC_Applicant.isSoftware" Text="软件设计"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="SHYC_Applicant.isHardware" Text="硬件设计"></aspxform:XCheckBox>
                            &nbsp;
                            <aspxform:XCheckBox id="XCheckBox4" runat="server" XDataBind="SHYC_Applicant.isStructure" Text="结构设计"></aspxform:XCheckBox>
                            &nbsp;<aspxform:XCheckBox id="XCheckBox5" runat="server" XDataBind="SHYC_Applicant.isEngineering" Text="工程工艺"></aspxform:XCheckBox>
                            &nbsp;<aspxform:XCheckBox id="XCheckBox6" runat="server" XDataBind="SHYC_Applicant.isMaterial" Text="物料"></aspxform:XCheckBox>
                            &nbsp;&nbsp;<aspxform:XCheckBox id="XCheckBox7" runat="server" XDataBind="SHYC_Applicant.isAuthentication" Text="认证"></aspxform:XCheckBox>
                            <aspxform:XTextBox id="XTextBox40" runat="server" Width="30px" Max="0" Min="0" BorderColor="Gainsboro" HiddenInput="True" BorderWidth="1px" Express="if(SHYC_Applicant.isSoftware==1 || SHYC_Applicant.isHardware==1 || SHYC_Applicant.isStructure==1  ||SHYC_Applicant.isEngineering==1 || SHYC_Applicant.isMaterial==1 || SHYC_Applicant.isAuthentication==1 ,'已选择','')"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" DisableExpress="Global.StepName!='研发接口人'" ControlToValidate="XTextBox40" ErrorMessage="请选择【异常分类】！" Display="None">异常分类</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            产品线类别：<aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="SHYC_Applicant.ProductLine" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>海外零售</asp:ListItem>
                                <asp:ListItem>海外运营</asp:ListItem>
                                <asp:ListItem>国内运营</asp:ListItem>
                                <asp:ListItem>IPTV/OTT</asp:ListItem>
                                <asp:ListItem>无线</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" DisableExpress="Global.StepName!='开始' &amp;&amp; Global.StepName!='研发接口人'" ControlToValidate="XRadioButtonList5" ErrorMessage="请选择【产品线类别】！" Display="None">--产品线类别--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator28" runat="server" DisableExpress="Global.StepName!='研发接口人'" ControlToValidate="XTextBox24" ErrorMessage="请填写【之前是否发生过类似异常】！" Display="None">--之前是否发生过类似异常--</aspxform:XRequiredFieldValidator>
                            <table border="0" cellspacing="0" cellpadding="0" width="626" hiddenexpress="SHYC_Applicant.ProductLine!='IPTV/OTT'">
                                <tbody>
                                    <tr>
                                        <td height="28" width="160">
                                            请选择IPTV/OTT产品类型：</td>
                                        <td width="462">
                                            <aspxform:XRadioButtonList id="XRadioButtonList13" runat="server" XDataBind="SHYC_Applicant.ProducetChildLine" Width="116px" RepeatDirection="Horizontal">
                                                <asp:ListItem>IPTV</asp:ListItem>
                                                <asp:ListItem>OTT</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator71" runat="server" DisableExpress="SHYC_Applicant.ProductLine!='IPTV/OTT'" ControlToValidate="XRadioButtonList13" ErrorMessage="请填写IPTV/OTT产品类型！" Display="None">IPTV/OTT</aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="NoPadding" height="25">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="50%">
                                            之前是否发生过类似异常：
                                        </td>
                                        <td width="50%">
                                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="SHYC_Applicant.HappenBegin2" Width="590px" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="60">
                            个人意见或建议：<aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="SHYC_Applicant.PersonalNote" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--软件异常-->
        <div align="center" hiddenexpress="SHYC_Applicant.isSoftware!=1|| (Global.StepName!='软件产品负责人(分析)' &amp;&amp; Global.StepName!='软件问题分析人' &amp;&amp; Global.StepName!='软件产品负责人(收集)' &amp;&amp; Global.StepName!='软件评估组长' &amp;&amp; Global.StepName!='QA(发布处理结论)' &amp;&amp; Global.StepName!='问题处理人' &amp;&amp; Global.StepName!='QA(关闭问题)'&amp;&amp; Global.StepName!='质量部'&amp;&amp; Global.StepName!='质量部(挂起)' &amp;&amp; Global.StepName!='')">
            <table class="MYHead" border="0" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td class="myhead" height="20" width="796">
                            软件异常分析<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XDateTimePicker2" ErrorMessage="请设定时间节点！" Display="None" ValidationGroup="softsub">--设定时间节点--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XTextBox23" ErrorMessage="请选择【问题分析人】！" Display="None" ValidationGroup="softsub">--问题分析人--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator29" runat="server" ControlToValidate="XTextBox50" ErrorMessage="请填写【具体任务】！" Display="None" ValidationGroup="softsub">--具体任务--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td height="23" width="99">
                            <p align="right">
                                设定时间节点T：
                            </p>
                        </td>
                        <td width="654">
                            <p>
                                <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="SHYC_Applicant.S_TimeNode" Width="200px" CssClass="BOXCSS" Type="TimeMinutes30"></aspxform:XDateTimePicker>
                            </p>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName!='软件产品负责人(分析)'">
                        <td bgcolor="#f3f7fa" height="22" colspan="2">
                            <p align="right">
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator36" runat="server" ControlToValidate="XTextBox25" ErrorMessage="请填写【分析结论】！" Display="None" ValidationGroup="softfenxi">--分析结论--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator37" runat="server" ControlToValidate="XTextBox26" ErrorMessage="请填写【改善方案或建议】！" Display="None" ValidationGroup="softfenxi">--改善方案或建议--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator44" runat="server" ControlToValidate="XTextBox29" ErrorMessage="请填写【负责人分析结论】！" Display="None" ValidationGroup="softshouji">--负责人分析结论--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator46" runat="server" ControlToValidate="XTextBox30" ErrorMessage="请填写【临时改善方案】！" Display="None" ValidationGroup="softshouji">--临时改善方案--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator47" runat="server" ControlToValidate="XTextBox54" ErrorMessage="请填写【预防措施】！" Display="None" ValidationGroup="softshouji">预防措施</aspxform:XRequiredFieldValidator>
                                <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Text="新增问题分析人" TableName="SHYC_Applicant_Soft"></aspxform:XAddBlockButton>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="760" bgcolor="#f3f7fa" dynamicarea="0,4" deletelastrow="Denied">
                <tbody>
                    <tr>
                        <td height="28" width="100">
                            <p align="right">
                                问题分析人：
                            </p>
                        </td>
                        <td width="250">
                            <aspxform:XTextBox id="XTextBox23" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="SHYC_Applicant_Soft.S_AnalystName" Width="120px" CssClass="BOXCSS" BackColor="#F3F7FA"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="21px" DataMap="Account->SHYC_Applicant_Soft.S_AnalystID;DisplayName->SHYC_Applicant_Soft.S_AnalystName" HiddenExpress="Global.StepName!='软件产品负责人(分析)'"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox42" runat="server" XDataBind="SHYC_Applicant_Soft.S_AnalystID" Width="20px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td width="80">
                            <p align="right">
                                具体任务：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="SHYC_Applicant_Soft.S_Job" Width="290px" CssClass="BOXCSS" TextMode="MultiLine" BackColor="#F3F7FA"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='软件产品负责人(分析)'">
                        <td height="29">
                            <p align="right">
                                分析结论：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="SHYC_Applicant_Soft.S_Verdict" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='软件产品负责人(分析)'">
                        <td height="29">
                            <p align="right">
                                改善方案或建议：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="SHYC_Applicant_Soft.S_Improve" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='软件产品负责人(分析)'">
                        <td style="BORDER-BOTTOM: medium none" height="29">
                            <p align="right">
                                分析报告：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: medium none" colspan="3">
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="SHYC_Applicant_Soft.S_ReportFile"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE3" border="1" cellspacing="0" cellpadding="0" width="760" hiddenexpress="Global.StepName=='软件产品负责人(分析)' || Global.StepName=='软件问题分析人' ">
                <tbody>
                    <tr>
                        <td height="39" width="100">
                            <p align="right">
                                负责人分析结论：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="SHYC_Applicant.S_Conclusion" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="22">
                            <p align="right">
                                问题类型：
                            </p>
                        </td>
                        <td>
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="543">
                                            <aspxform:XCheckBoxList id="XCheckBoxList2" runat="server" XDataBind="SHYC_Applicant.S_ProblemType" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                <asp:ListItem>驱动问题</asp:ListItem>
                                                <asp:ListItem>应用问题</asp:ListItem>
                                                <asp:ListItem>Loader问题</asp:ListItem>
                                                <asp:ListItem>CA问题</asp:ListItem>
                                                <asp:ListItem>业务集成问题</asp:ListItem>
                                                <asp:ListItem>第三方软件问题</asp:ListItem>
                                                <asp:ListItem>其他</asp:ListItem>
                                            </aspxform:XCheckBoxList>
                                        </td>
                                        <td width="106">
                                            <aspxform:XTextBox id="XTextBox36" runat="server" XDataBind="SHYC_Applicant.S_ProblemOther" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" width="95%"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                临时改善方案：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="SHYC_Applicant.S_ImproveProgram" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p align="right">
                                预防措施：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="SHYC_Applicant.S_PreventiveAction" Width="100%" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none" height="19">
                            <p align="right">
                                分析报告：
                            </p>
                        </td>
                        <td>
                            <aspxform:XMSNAttachments id="XMSNAttachments4" runat="server" XDataBind="SHYC_Applicant.S_ImproveProgram"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE2" border="1" cellspacing="0" cellpadding="0" width="760" hiddenexpress="Global.StepName=='软件产品负责人(分析)'  || Global.StepName=='软件问题分析人'  || Global.StepName=='软件产品负责人(收集)'">
                <tbody>
                    <tr>
                        <td height="25" width="100">
                            <p align="right">
                                评审意见：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="SHYC_Applicant.S_VerifyNote" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                评审结论：
                            </p>
                        </td>
                        <td>
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="SHYC_Applicant.S_VerifyResult" Width="120px" RepeatDirection="Horizontal">
                                <asp:ListItem>通过</asp:ListItem>
                                <asp:ListItem>不通过</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator62" runat="server" ControlToValidate="XTextBox32" ErrorMessage="请填写【评审意见】！" Display="None" ValidationGroup="softsp">--评审意见--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator61" runat="server" ControlToValidate="XRadioButtonList4" ErrorMessage="请选择【评审结论】！" Display="None" ValidationGroup="softsp">--评审结论--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--硬件异常-->
        <div align="center" hiddenexpress="SHYC_Applicant.isHardware!=1|| (Global.StepName!='硬件设计负责人(分析)' &amp;&amp; Global.StepName!='硬件设计问题分析人' &amp;&amp; Global.StepName!='硬件设计负责人(收集)' &amp;&amp; Global.StepName!='硬件设计评估组长'  &amp;&amp; Global.StepName!='QA(发布处理结论)' &amp;&amp; Global.StepName!='问题处理人' &amp;&amp; Global.StepName!='QA(关闭问题)'&amp;&amp; Global.StepName!='质量部'&amp;&amp; Global.StepName!='质量部(挂起)' &amp;&amp; Global.StepName!='')">
            <table class="MYHead" border="0" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td class="myhead" height="20" width="796">
                            硬件设计异常分析<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XDateTimePicker1" ErrorMessage="请设定时间节点！" Display="None" ValidationGroup="hardsub">--设定时间节点--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XTextBox17" ErrorMessage="请选择【问题分析人】！" Display="None" ValidationGroup="hardsub">--问题分析人--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" ControlToValidate="XTextBox49" ErrorMessage="请填写【具体任务】！" Display="None" ValidationGroup="hardsub">--具体任务--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td height="23" width="100">
                            设定时间节点T：</td>
                        <td width="653">
                            <p>
                                <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" ReadOnly="True" XDataBind="SHYC_Applicant.H_TimeNode" Width="200px" CssClass="BOXCSS" Type="TimeMinutes30" XSubType="date" XType="datetime" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                            </p>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName!='硬件设计负责人(分析)'">
                        <td bgcolor="#f3f7fa" height="22" colspan="2">
                            <p align="right">
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator34" runat="server" ControlToValidate="XTextBox19" ErrorMessage="请选择【分析结论】！" Display="None" ValidationGroup="hardfenxi">--分析结论--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator35" runat="server" ControlToValidate="XTextBox20" ErrorMessage="请选择【改善方案或建议】！" Display="None" ValidationGroup="hardfenxi">--改善方案或建议--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator45" runat="server" ControlToValidate="XTextBox27" ErrorMessage="请填写【负责人分析结论】！" Display="None" ValidationGroup="hardshouji">--负责人分析结论--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator48" runat="server" ControlToValidate="XTextBox28" ErrorMessage="请填写【临时改善方案】！" Display="None" ValidationGroup="hardshouji">--临时改善方案--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator49" runat="server" ControlToValidate="XTextBox55" ErrorMessage="请填写【预防措施】！" Display="None" ValidationGroup="hardshouji">预防措施</aspxform:XRequiredFieldValidator>
                                <aspxform:XAddBlockButton id="XAddBlockButton4" runat="server" Text="新增问题分析人" TableName="SHYC_Applicant_Hard"></aspxform:XAddBlockButton>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE3" border="1" cellspacing="0" cellpadding="0" width="760" bgcolor="#f3f7fa" dynamicarea="0,5" deletelastrow="Denied">
                <tbody>
                    <tr>
                        <td height="23" width="100">
                            <p align="right">
                                问题分析人：
                            </p>
                        </td>
                        <td width="250">
                            <aspxform:XTextBox id="XTextBox17" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="SHYC_Applicant_Hard.H_AnalystName" Width="120px" CssClass="BOXCSS" BackColor="#F3F7FA"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" DataMap="Account->SHYC_Applicant_Hard.H_AnalystID;DisplayName->SHYC_Applicant_Hard.H_AnalystName" HiddenExpress="Global.StepName!='硬件设计负责人(分析)'"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox41" runat="server" XDataBind="SHYC_Applicant_Hard.H_AnalystID" Width="20px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td width="80">
                            <p align="right">
                                具体任务：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox49" runat="server" XDataBind="SHYC_Applicant_Hard.H_Job" Width="290px" CssClass="BOXCSS" TextMode="MultiLine" BackColor="#F3F7FA"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='硬件设计负责人(分析)'">
                        <td height="25">
                            <p align="right">
                                分析结论：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="SHYC_Applicant_Hard.H_Verdict" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='硬件设计负责人(分析)'">
                        <td height="29">
                            <p align="right">
                                改善方案或建议：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="SHYC_Applicant_Hard.H_Improve" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='硬件设计负责人(分析)'">
                        <td style="BORDER-BOTTOM: medium none" height="25">
                            <p align="right">
                                分析报告：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: medium none" colspan="3">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="SHYC_Applicant_Hard.H_ReportFile"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE3" border="1" cellspacing="0" cellpadding="0" width="760" hiddenexpress="Global.StepName=='硬件设计负责人(分析)' || Global.StepName=='硬件设计问题分析人' ">
                <tbody>
                    <tr>
                        <td height="30" width="100">
                            <p align="right">
                                负责人分析结论：
                            </p>
                        </td>
                        <td width="653">
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="SHYC_Applicant.H_Conclusion" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                临时改善方案：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="SHYC_Applicant.H_ImproveProgram" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                预防措施：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="SHYC_Applicant.H_PreventiveAction" Width="100%" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                分析报告：
                            </p>
                        </td>
                        <td>
                            <aspxform:XMSNAttachments id="XMSNAttachments3" runat="server" XDataBind="SHYC_Applicant.H_AnalyseReport"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE2" border="1" cellspacing="0" cellpadding="0" width="760" hiddenexpress="Global.StepName=='硬件设计负责人(分析)'  || Global.StepName=='硬件设计问题分析人'  || Global.StepName=='硬件设计负责人(收集)'">
                <tbody>
                    <tr>
                        <td height="25" width="100">
                            <p align="right">
                                评审意见：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="SHYC_Applicant.H_VerifyNote" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                评审结论：
                            </p>
                        </td>
                        <td>
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="SHYC_Applicant.H_VerifyResult" Width="120px" RepeatDirection="Horizontal">
                                <asp:ListItem>通过</asp:ListItem>
                                <asp:ListItem>不通过</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator59" runat="server" ControlToValidate="XTextBox31" ErrorMessage="请填写【评审意见】！" Display="None" ValidationGroup="hardsp">--评审意见--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator60" runat="server" ControlToValidate="XRadioButtonList6" ErrorMessage="请选择【评审结论】！" Display="None" ValidationGroup="hardsp">--评审结论--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--结构设计异常22222222222222222222222222222222222222222222222222222222222222-->
        <div align="center" hiddenexpress="SHYC_Applicant.isStructure!=1|| (Global.StepName!='结构设计负责人(分析)' &amp;&amp; Global.StepName!='结构设计问题分析人' &amp;&amp; Global.StepName!='结构设计负责人(收集)' &amp;&amp; Global.StepName!='结构设计评估组长'  &amp;&amp; Global.StepName!='QA(发布处理结论)' &amp;&amp; Global.StepName!='问题处理人' &amp;&amp; Global.StepName!='QA(关闭问题)'&amp;&amp; Global.StepName!='质量部'&amp;&amp; Global.StepName!='质量部(挂起)' &amp;&amp; Global.StepName!='')">
            <table class="MYHead" border="0" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td class="myhead" height="20" width="796">
                            结构设计异常分析<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ControlToValidate="XDateTimePicker4" ErrorMessage="请设定时间节点！" Display="None" ValidationGroup="jiegousub">--设定时间节点--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ControlToValidate="XTextBox58" ErrorMessage="请选择【问题分析人】！" Display="None" ValidationGroup="jiegousub">--问题分析人--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" ControlToValidate="XTextBox60" ErrorMessage="请填写【具体任务】！" Display="None" ValidationGroup="jiegousub">--具体任务--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td height="23" width="100">
                            设定时间节点T：</td>
                        <td width="653">
                            <p>
                                <aspxform:XDateTimePicker id="XDateTimePicker4" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" ReadOnly="True" XDataBind="SHYC_Applicant.ST_TimeNode" Width="200px" CssClass="BOXCSS" Type="TimeMinutes30" XSubType="date" XType="datetime" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                            </p>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName!='结构设计负责人(分析)'">
                        <td bgcolor="#f3f7fa" height="22" colspan="2">
                            <p align="right">
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator38" runat="server" ControlToValidate="XTextBox61" ErrorMessage="请填写【分析结论】！" Display="None" ValidationGroup="jiegoufenxi">--分析结论--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator39" runat="server" ControlToValidate="XTextBox62" ErrorMessage="请填写【改善方案或建议】！" Display="None" ValidationGroup="jiegoufenxi">--改善方案或建议--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator50" runat="server" ControlToValidate="XTextBox63" ErrorMessage="请填写【负责人分析结论】！" Display="None" ValidationGroup="jiegoushouji">--负责人分析结论--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator51" runat="server" ControlToValidate="XTextBox65" ErrorMessage="请填写【临时改善方案】！" Display="None" ValidationGroup="jiegoushouji">--临时改善方案--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator52" runat="server" ControlToValidate="XTextBox66" ErrorMessage="请填写【预防措施】！" Display="None" ValidationGroup="jiegoushouji">预防措施</aspxform:XRequiredFieldValidator>
                                <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="新增问题分析人" TableName="SHYC_Applicant_Struct"></aspxform:XAddBlockButton>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE3" border="1" cellspacing="0" cellpadding="0" width="760" bgcolor="#f3f7fa" dynamicarea="0,5" deletelastrow="Denied">
                <tbody>
                    <tr>
                        <td height="23" width="100">
                            <p align="right">
                                问题分析人：
                            </p>
                        </td>
                        <td width="250">
                            <aspxform:XTextBox id="XTextBox58" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="SHYC_Applicant_Struct.H_AnalystName" Width="120px" CssClass="BOXCSS" BackColor="#F3F7FA"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton4" runat="server" Width="21px" DataMap="Account->SHYC_Applicant_Struct.H_AnalystID;DisplayName->SHYC_Applicant_Struct.H_AnalystName" HiddenExpress="Global.StepName!='结构设计负责人(分析)'"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox59" runat="server" XDataBind="SHYC_Applicant_Struct.H_AnalystID" Width="20px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td width="80">
                            <p align="right">
                                具体任务：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox60" runat="server" XDataBind="SHYC_Applicant_Struct.H_Job" Width="290px" CssClass="BOXCSS" TextMode="MultiLine" BackColor="#F3F7FA"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='结构设计负责人(分析)'">
                        <td height="25">
                            <p align="right">
                                分析结论：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox61" runat="server" XDataBind="SHYC_Applicant_Struct.H_Verdict" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='结构设计负责人(分析)'">
                        <td height="29">
                            <p align="right">
                                改善方案或建议：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox62" runat="server" XDataBind="SHYC_Applicant_Struct.H_Improve" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='结构设计负责人(分析)'">
                        <td style="BORDER-BOTTOM: medium none" height="25">
                            <p align="right">
                                分析报告：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: medium none" colspan="3">
                            <aspxform:XMSNAttachments id="XMSNAttachments7" runat="server" XDataBind="SHYC_Applicant_Struct.H_ReportFile"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE3" border="1" cellspacing="0" cellpadding="0" width="760" hiddenexpress="Global.StepName=='结构设计负责人(分析)' || Global.StepName=='结构设计问题分析人' ">
                <tbody>
                    <tr>
                        <td height="30" width="100">
                            <p align="right">
                                负责人分析结论：
                            </p>
                        </td>
                        <td width="653">
                            <aspxform:XTextBox id="XTextBox63" runat="server" XDataBind="SHYC_Applicant.ST_Conclusion" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                问题类型：
                            </p>
                        </td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="SHYC_Applicant.ST_DefectTypes">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>外观造型设计--可实现性</asp:ListItem>
                                <asp:ListItem>外观造型设计--美观性</asp:ListItem>
                                <asp:ListItem>结构布局设计--装联工艺</asp:ListItem>
                                <asp:ListItem>结构布局设计--材料选型</asp:ListItem>
                                <asp:ListItem>结构布局设计--可靠性设计</asp:ListItem>
                                <asp:ListItem>结构布局设计--标识设计</asp:ListItem>
                                <asp:ListItem>结构布局设计--安规设计</asp:ListItem>
                                <asp:ListItem>结构布局设计--散热设计</asp:ListItem>
                                <asp:ListItem>手板/模具--可靠性设计</asp:ListItem>
                                <asp:ListItem>手板/模具--表面处理工艺</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                临时改善方案：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox65" runat="server" XDataBind="SHYC_Applicant.ST_ImproveProgram" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                预防措施：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox66" runat="server" XDataBind="SHYC_Applicant.ST_PreventiveAction" Width="100%" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                分析报告：
                            </p>
                        </td>
                        <td>
                            <aspxform:XMSNAttachments id="XMSNAttachments8" runat="server" XDataBind="SHYC_Applicant.ST_AnalyseReport"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE2" border="1" cellspacing="0" cellpadding="0" width="760" hiddenexpress="Global.StepName=='结构设计负责人(分析)'  || Global.StepName=='结构设计问题分析人'  || Global.StepName=='结构设计负责人(收集)'">
                <tbody>
                    <tr>
                        <td height="25" width="100">
                            <p align="right">
                                评审意见：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox67" runat="server" XDataBind="SHYC_Applicant.ST_VerifyNote" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                评审结论：
                            </p>
                        </td>
                        <td>
                            <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="SHYC_Applicant.ST_VerifyResult" Width="120px" RepeatDirection="Horizontal">
                                <asp:ListItem>通过</asp:ListItem>
                                <asp:ListItem>不通过</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator63" runat="server" ControlToValidate="XTextBox67" ErrorMessage="请填写【评审意见】！" Display="None" ValidationGroup="jiegousp">--评审意见--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator64" runat="server" ControlToValidate="XRadioButtonList8" ErrorMessage="请选择【评审结论】！" Display="None" ValidationGroup="jiegousp">--评审结论--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--工程工艺33333333333333333333333333333333333333333333333333333333-->
        <div align="center" hiddenexpress="SHYC_Applicant.isEngineering!=1 || (Global.StepName!='工程工艺负责人(分析)' &amp;&amp; Global.StepName!='工程工艺问题分析人' &amp;&amp; Global.StepName!='工程工艺负责人(收集)' &amp;&amp; Global.StepName!='工程工艺评估组长'  &amp;&amp; Global.StepName!='QA(发布处理结论)' &amp;&amp; Global.StepName!='问题处理人' &amp;&amp; Global.StepName!='QA(关闭问题)'&amp;&amp; Global.StepName!='质量部'&amp;&amp; Global.StepName!='质量部(挂起)' &amp;&amp; Global.StepName!='')">
            <table class="MYHead" border="0" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td class="myhead" height="20" width="796">
                            工程工艺异常分析<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ControlToValidate="XDateTimePicker5" ErrorMessage="请设定时间节点！" Display="None" ValidationGroup="gongyisub">--设定时间节点--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" ControlToValidate="XTextBox70" ErrorMessage="请选择【问题分析人】！" Display="None" ValidationGroup="gongyisub">--问题分析人--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator32" runat="server" ControlToValidate="XTextBox72" ErrorMessage="请填写【具体任务】！" Display="None" ValidationGroup="gongyisub">--具体任务--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td height="23" width="100">
                            设定时间节点T：</td>
                        <td width="653">
                            <p>
                                <aspxform:XDateTimePicker id="XDateTimePicker5" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" ReadOnly="True" XDataBind="SHYC_Applicant.E_TimeNode" Width="200px" CssClass="BOXCSS" Type="TimeMinutes30" XSubType="date" XType="datetime" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                            </p>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName!='工程工艺负责人(分析)'">
                        <td bgcolor="#f3f7fa" height="22" colspan="2">
                            <p align="right">
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator40" runat="server" ControlToValidate="XTextBox73" ErrorMessage="请填写【分析结论】！" Display="None" ValidationGroup="gongyifenxi">--分析结论--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator41" runat="server" ControlToValidate="XTextBox74" ErrorMessage="请填写【改善方案或建议】！" Display="None" ValidationGroup="gongyifenxi">--改善方案或建议--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator53" runat="server" ControlToValidate="XTextBox75" ErrorMessage="请填写【负责人分析结论】！" Display="None" ValidationGroup="gongyishouji">--负责人分析结论--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator54" runat="server" ControlToValidate="XTextBox77" ErrorMessage="请填写【临时改善方案】！" Display="None" ValidationGroup="gongyishouji">--临时改善方案--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator55" runat="server" ControlToValidate="XTextBox78" ErrorMessage="请填写【预防措施】！" Display="None" ValidationGroup="gongyishouji">预防措施</aspxform:XRequiredFieldValidator>
                                <aspxform:XAddBlockButton id="XAddBlockButton5" runat="server" Text="新增问题分析人" TableName="SHYC_Applicant_Eng"></aspxform:XAddBlockButton>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE3" border="1" cellspacing="0" cellpadding="0" width="760" bgcolor="#f3f7fa" dynamicarea="0,5" deletelastrow="Denied">
                <tbody>
                    <tr>
                        <td height="23" width="100">
                            <p align="right">
                                问题分析人：
                            </p>
                        </td>
                        <td width="250">
                            <aspxform:XTextBox id="XTextBox70" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="SHYC_Applicant_Eng.H_AnalystName" Width="120px" CssClass="BOXCSS" BackColor="#F3F7FA"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton5" runat="server" Width="21px" DataMap="Account->SHYC_Applicant_Eng.H_AnalystID;DisplayName->SHYC_Applicant_Eng.H_AnalystName" HiddenExpress="Global.StepName!='工程工艺负责人(分析)'"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox71" runat="server" XDataBind="SHYC_Applicant_Eng.H_AnalystID" Width="20px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td width="80">
                            <p align="right">
                                具体任务：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox72" runat="server" XDataBind="SHYC_Applicant_Eng.H_Job" Width="290px" CssClass="BOXCSS" TextMode="MultiLine" BackColor="#F3F7FA"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='工程工艺负责人(分析)'">
                        <td height="25">
                            <p align="right">
                                分析结论：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox73" runat="server" XDataBind="SHYC_Applicant_Eng.H_Verdict" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='工程工艺负责人(分析)'">
                        <td height="29">
                            <p align="right">
                                改善方案或建议：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox74" runat="server" XDataBind="SHYC_Applicant_Eng.H_Improve" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='工程工艺负责人(分析)'">
                        <td style="BORDER-BOTTOM: medium none" height="25">
                            <p align="right">
                                分析报告：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: medium none" colspan="3">
                            <aspxform:XMSNAttachments id="XMSNAttachments9" runat="server" XDataBind="SHYC_Applicant_Eng.H_ReportFile"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE3" border="1" cellspacing="0" cellpadding="0" width="760" hiddenexpress="Global.StepName=='工程工艺负责人(分析)' || Global.StepName=='工程工艺问题分析人' ">
                <tbody>
                    <tr>
                        <td height="30" width="100">
                            <p align="right">
                                负责人分析结论：
                            </p>
                        </td>
                        <td width="653">
                            <aspxform:XTextBox id="XTextBox75" runat="server" XDataBind="SHYC_Applicant.E_Conclusion" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                问题类型：
                            </p>
                        </td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="SHYC_Applicant.E_DefectTypes">
                                <asp:ListItem>未绑定</asp:ListItem>
                                <asp:ListItem>PCB设计--板材选择</asp:ListItem>
                                <asp:ListItem>PCB设计--元件封装</asp:ListItem>
                                <asp:ListItem>PCB设计--走线设计</asp:ListItem>
                                <asp:ListItem>PCB设计--安全距离</asp:ListItem>
                                <asp:ListItem>PCB设计--EMC设计</asp:ListItem>
                                <asp:ListItem>整机装联工艺设计--接口互联</asp:ListItem>
                                <asp:ListItem>整机装联工艺设计--工艺指导</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                临时改善方案：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox77" runat="server" XDataBind="SHYC_Applicant.E_ImproveProgram" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                预防措施：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox78" runat="server" XDataBind="SHYC_Applicant.E_PreventiveAction" Width="100%" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                分析报告：
                            </p>
                        </td>
                        <td>
                            <aspxform:XMSNAttachments id="XMSNAttachments10" runat="server" XDataBind="SHYC_Applicant.E_AnalyseReport"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE2" border="1" cellspacing="0" cellpadding="0" width="760" hiddenexpress="Global.StepName=='工程工艺负责人(分析)'  || Global.StepName=='工程工艺问题分析人'  || Global.StepName=='工程工艺负责人(收集)'">
                <tbody>
                    <tr>
                        <td height="25" width="100">
                            <p align="right">
                                评审意见：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox79" runat="server" XDataBind="SHYC_Applicant.E_VerifyNote" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                评审结论：
                            </p>
                        </td>
                        <td>
                            <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="SHYC_Applicant.E_VerifyResult" Width="120px" RepeatDirection="Horizontal">
                                <asp:ListItem>通过</asp:ListItem>
                                <asp:ListItem>不通过</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator65" runat="server" ControlToValidate="XTextBox79" ErrorMessage="请填写【评审意见】！" Display="None" ValidationGroup="gongyisp">--评审意见--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator66" runat="server" ControlToValidate="XRadioButtonList9" ErrorMessage="请选择【评审结论】！" Display="None" ValidationGroup="gongyisp">--评审结论--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--物料444444444444444444444444444444444444444444444444444444-->
        <div align="center" hiddenexpress="SHYC_Applicant.isMaterial!=1 || (Global.StepName!='物料负责人(分析)' &amp;&amp; Global.StepName!='物料问题分析人' &amp;&amp; Global.StepName!='物料负责人(收集)' &amp;&amp; Global.StepName!='物料评估组长'  &amp;&amp; Global.StepName!='QA(发布处理结论)' &amp;&amp; Global.StepName!='问题处理人' &amp;&amp; Global.StepName!='QA(关闭问题)'&amp;&amp; Global.StepName!='质量部'&amp;&amp; Global.StepName!='质量部(挂起)' &amp;&amp; Global.StepName!='')">
            <table class="MYHead" border="0" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td class="myhead" height="20" width="796">
                            物料异常分析<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" ControlToValidate="XDateTimePicker6" ErrorMessage="请设定时间节点！" Display="None" ValidationGroup="wuliaosub">--设定时间节点--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" ControlToValidate="XTextBox82" ErrorMessage="请选择【问题分析人】！" Display="None" ValidationGroup="wuliaosub">--问题分析人--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator33" runat="server" ControlToValidate="XTextBox84" ErrorMessage="请填写【具体任务】！" Display="None" ValidationGroup="wuliaosub">--具体任务--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td height="23" width="100">
                            设定时间节点T：</td>
                        <td width="653">
                            <p>
                                <aspxform:XDateTimePicker id="XDateTimePicker6" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" ReadOnly="True" XDataBind="SHYC_Applicant.M_TimeNode" Width="200px" CssClass="BOXCSS" Type="TimeMinutes30" XSubType="date" XType="datetime" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                            </p>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName!='物料负责人(分析)'">
                        <td bgcolor="#f3f7fa" height="22" colspan="2">
                            <p align="right">
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator42" runat="server" ControlToValidate="XTextBox85" ErrorMessage="请填写【分析结论】！" Display="None" ValidationGroup="wuliaofenxi">--分析结论--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator43" runat="server" ControlToValidate="XTextBox86" ErrorMessage="请填写【改善方案或建议】！" Display="None" ValidationGroup="wuliaofenxi">--改善方案或建议--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator56" runat="server" ControlToValidate="XTextBox90" ErrorMessage="请填写【预防措施】！" Display="None" ValidationGroup="wuliaoshouji">预防措施</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator57" runat="server" ControlToValidate="XTextBox89" ErrorMessage="请填写【临时改善方案】！" Display="None" ValidationGroup="wuliaoshouji">--临时改善方案--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator58" runat="server" ControlToValidate="XTextBox87" ErrorMessage="请填写【负责人分析结论】！" Display="None" ValidationGroup="wuliaoshouji">--负责人分析结论--</aspxform:XRequiredFieldValidator>
                                <aspxform:XAddBlockButton id="XAddBlockButton6" runat="server" Text="新增问题分析人" TableName="SHYC_Applicant_Mat"></aspxform:XAddBlockButton>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE3" border="1" cellspacing="0" cellpadding="0" width="760" bgcolor="#f3f7fa" dynamicarea="0,5" deletelastrow="Denied">
                <tbody>
                    <tr>
                        <td height="23" width="100">
                            <p align="right">
                                问题分析人：
                            </p>
                        </td>
                        <td width="250">
                            <aspxform:XTextBox id="XTextBox82" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="SHYC_Applicant_Mat.H_AnalystName" Width="120px" CssClass="BOXCSS" BackColor="#F3F7FA"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton6" runat="server" Width="21px" DataMap="Account->SHYC_Applicant_Mat.H_AnalystID;DisplayName->SHYC_Applicant_Mat.H_AnalystName" HiddenExpress="Global.StepName!='物料负责人(分析)'"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox83" runat="server" XDataBind="SHYC_Applicant_Mat.H_AnalystID" Width="20px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td width="80">
                            <p align="right">
                                具体任务：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox84" runat="server" XDataBind="SHYC_Applicant_Mat.H_Job" Width="290px" CssClass="BOXCSS" TextMode="MultiLine" BackColor="#F3F7FA"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='物料负责人(分析)'">
                        <td height="25">
                            <p align="right">
                                分析结论：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox85" runat="server" XDataBind="SHYC_Applicant_Mat.H_Verdict" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='物料负责人(分析)'">
                        <td height="29">
                            <p align="right">
                                改善方案或建议：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox86" runat="server" XDataBind="SHYC_Applicant_Mat.H_Improve" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='物料负责人(分析)'">
                        <td style="BORDER-BOTTOM: medium none" height="25">
                            <p align="right">
                                分析报告：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: medium none" colspan="3">
                            <aspxform:XMSNAttachments id="XMSNAttachments11" runat="server" XDataBind="SHYC_Applicant_Mat.H_ReportFile"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE3" border="1" cellspacing="0" cellpadding="0" width="760" hiddenexpress="Global.StepName=='物料负责人(分析)' || Global.StepName=='物料问题分析人' ">
                <tbody>
                    <tr>
                        <td height="30" width="100">
                            <p align="right">
                                负责人分析结论：
                            </p>
                        </td>
                        <td width="653">
                            <aspxform:XTextBox id="XTextBox87" runat="server" XDataBind="SHYC_Applicant.M_Conclusion" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                临时改善方案：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox89" runat="server" XDataBind="SHYC_Applicant.M_ImproveProgram" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                预防措施：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox90" runat="server" XDataBind="SHYC_Applicant.M_PreventiveAction" Width="100%" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                分析报告：
                            </p>
                        </td>
                        <td>
                            <aspxform:XMSNAttachments id="XMSNAttachments12" runat="server" XDataBind="SHYC_Applicant.M_AnalyseReport"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE2" border="1" cellspacing="0" cellpadding="0" width="760" hiddenexpress="Global.StepName=='物料负责人(分析)'  || Global.StepName=='物料问题分析人'  || Global.StepName=='物料负责人(收集)'">
                <tbody>
                    <tr>
                        <td height="25" width="100">
                            <p align="right">
                                评审意见：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox91" runat="server" XDataBind="SHYC_Applicant.M_VerifyNote" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                评审结论：
                            </p>
                        </td>
                        <td>
                            <aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" XDataBind="SHYC_Applicant.M_VerifyResult" Width="120px" RepeatDirection="Horizontal">
                                <asp:ListItem>通过</asp:ListItem>
                                <asp:ListItem>不通过</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator67" runat="server" ControlToValidate="XTextBox91" ErrorMessage="请填写【评审意见】！" Display="None" ValidationGroup="wuliaosp">--评审意见--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator68" runat="server" ControlToValidate="XRadioButtonList10" ErrorMessage="请选择【评审结论】！" Display="None" ValidationGroup="wuliaosp">--评审结论--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--认证异常-->
        <div align="center" hiddenexpress="SHYC_Applicant.isAuthentication!=1 || (Global.StepName!='认证负责人(分析)' &amp;&amp; Global.StepName!='认证问题分析人' &amp;&amp; Global.StepName!='认证负责人(收集)' &amp;&amp; Global.StepName!='认证评估组长'  &amp;&amp; Global.StepName!='QA(发布处理结论)' &amp;&amp; Global.StepName!='问题处理人' &amp;&amp; Global.StepName!='QA(关闭问题)'&amp;&amp; Global.StepName!='质量部'&amp;&amp; Global.StepName!='质量部(挂起)' &amp;&amp; Global.StepName!='')">
            <table class="MYHead" border="0" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td class="myhead" height="20" width="796">
                            认证异常分析<aspxform:XRequiredFieldValidator id="XRZ01" runat="server" ControlToValidate="XDateTimePicker101" ErrorMessage="请设定时间节点！" Display="None" ValidationGroup="renzhengsub">--设定时间节点--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRZ02" runat="server" ControlToValidate="XTextBox101" ErrorMessage="请选择【问题分析人】！" Display="None" ValidationGroup="renzhengsub">--问题分析人--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRZ03" runat="server" ControlToValidate="XTextBox110" ErrorMessage="请填写【具体任务】！" Display="None" ValidationGroup="renzhengsub">--具体任务--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td height="23" width="100">
                            设定时间节点T：</td>
                        <td width="653">
                            <p>
                                <aspxform:XDateTimePicker id="XDateTimePicker101" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" ReadOnly="True" XDataBind="SHYC_Applicant.RZ_TimeNode" Width="200px" CssClass="BOXCSS" Type="TimeMinutes30" XSubType="date" XType="datetime" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                            </p>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName!='认证负责人(分析)'">
                        <td bgcolor="#f3f7fa" height="22" colspan="2">
                            <p align="right">
                                <aspxform:XRequiredFieldValidator id="XRZ04" runat="server" ControlToValidate="XTextBox102" ErrorMessage="请填写【分析结论】！" Display="None" ValidationGroup="renzhengfenxi">--分析结论--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRZ05" runat="server" ControlToValidate="XTextBox103" ErrorMessage="请填写【改善方案或建议】！" Display="None" ValidationGroup="renzhengfenxi">--改善方案或建议--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRZ06" runat="server" ControlToValidate="XTextBox107" ErrorMessage="请填写【预防措施】！" Display="None" ValidationGroup="renzhengshouji">预防措施</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRZ07" runat="server" ControlToValidate="XTextBox106" ErrorMessage="请填写【临时改善方案】！" Display="None" ValidationGroup="renzhengshouji">--临时改善方案--</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRZ08" runat="server" ControlToValidate="XTextBox104" ErrorMessage="请填写【负责人分析结论】！" Display="None" ValidationGroup="renzhengshouji">--负责人分析结论--</aspxform:XRequiredFieldValidator>
                                <aspxform:XAddBlockButton id="XAddBlockButton8" runat="server" Text="新增问题分析人" TableName="SHYC_Applicant_RenZheng"></aspxform:XAddBlockButton>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE3" border="1" cellspacing="0" cellpadding="0" width="760" bgcolor="#f3f7fa" dynamicarea="0,5" deletelastrow="Denied">
                <tbody>
                    <tr>
                        <td height="23" width="100">
                            <p align="right">
                                问题分析人：
                            </p>
                        </td>
                        <td width="250">
                            <aspxform:XTextBox id="XTextBox101" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="SHYC_Applicant_RenZheng.RZ_AnalystName" Width="120px" CssClass="BOXCSS" BackColor="#F3F7FA"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton101" runat="server" Width="21px" DataMap="Account->SHYC_Applicant_RenZheng.RZ_AnalystID;DisplayName->SHYC_Applicant_RenZheng.RZ_AnalystName" HiddenExpress="Global.StepName!='认证负责人(分析)'"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox109" runat="server" XDataBind="SHYC_Applicant_RenZheng.RZ_AnalystID" Width="20px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td width="80">
                            <p align="right">
                                具体任务：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox110" runat="server" XDataBind="SHYC_Applicant_RenZheng.RZ_Job" Width="290px" CssClass="BOXCSS" TextMode="MultiLine" BackColor="#F3F7FA"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='认证负责人(分析)'">
                        <td height="25">
                            <p align="right">
                                分析结论：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox102" runat="server" XDataBind="SHYC_Applicant_RenZheng.RZ_Verdict" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='认证负责人(分析)'">
                        <td height="29">
                            <p align="right">
                                改善方案或建议：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox103" runat="server" XDataBind="SHYC_Applicant_RenZheng.RZ_Improve" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='认证负责人(分析)'">
                        <td style="BORDER-BOTTOM: medium none" height="25">
                            <p align="right">
                                分析报告：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: medium none" colspan="3">
                            <aspxform:XMSNAttachments id="XMSNAttachments101" runat="server" XDataBind="SHYC_Applicant_RenZheng.RZ_ReportFile"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE3" border="1" cellspacing="0" cellpadding="0" width="760" hiddenexpress="Global.StepName=='认证负责人(分析)' || Global.StepName=='认证问题分析人' ">
                <tbody>
                    <tr>
                        <td height="30" width="100">
                            <p align="right">
                                负责人分析结论：
                            </p>
                        </td>
                        <td width="653">
                            <aspxform:XTextBox id="XTextBox104" runat="server" XDataBind="SHYC_Applicant.RZ_Conclusion" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                问题类型：
                            </p>
                        </td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SHYC_Applicant.RZ_DefectTypes">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>认证评审--认证资料审核</asp:ListItem>
                                <asp:ListItem>认证评审--样机评审</asp:ListItem>
                                <asp:ListItem>认证评审--样机自测试</asp:ListItem>
                                <asp:ListItem>外部认证--认证资料提交</asp:ListItem>
                                <asp:ListItem>外部认证--样机提交</asp:ListItem>
                                <asp:ListItem>外部认证--认证整改执行落实</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                临时改善方案：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox106" runat="server" XDataBind="SHYC_Applicant.RZ_ImproveProgram" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                预防措施：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox107" runat="server" XDataBind="SHYC_Applicant.RZ_PreventiveAction" Width="100%" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                分析报告：
                            </p>
                        </td>
                        <td>
                            <aspxform:XMSNAttachments id="XMSNAttachments102" runat="server" XDataBind="SHYC_Applicant.RZ_AnalyseReport"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE2" border="1" cellspacing="0" cellpadding="0" width="760" hiddenexpress="Global.StepName=='认证负责人(分析)'  || Global.StepName=='认证问题分析人'  || Global.StepName=='认证负责人(收集)'">
                <tbody>
                    <tr>
                        <td height="25" width="100">
                            <p align="right">
                                评审意见：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox108" runat="server" XDataBind="SHYC_Applicant.RZ_VerifyNote" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                缺陷应检出阶段：
                            </p>
                        </td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SHYC_Applicant.RZ_DefectStage">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>认证评审</asp:ListItem>
                                <asp:ListItem>认证测试</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <p align="right">
                                评审结论：
                            </p>
                        </td>
                        <td>
                            <aspxform:XRadioButtonList id="XRadioButtonList101" runat="server" XDataBind="SHYC_Applicant.RZ_VerifyResult" Width="120px" RepeatDirection="Horizontal">
                                <asp:ListItem>通过</asp:ListItem>
                                <asp:ListItem>不通过</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRZ09" runat="server" ControlToValidate="XTextBox108" ErrorMessage="请填写【评审意见】！" Display="None" ValidationGroup="renzhengsp">--评审意见--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRZ10" runat="server" ControlToValidate="XRadioButtonList101" ErrorMessage="请选择【评审结论】！" Display="None" ValidationGroup="renzhengsp">--评审结论--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--异常处理-->
        <div align="center" hiddenexpress="Global.StepName!='QA(发布处理结论)' &amp;&amp; Global.StepName!='问题处理人' &amp;&amp; Global.StepName!='QA(关闭问题)' &amp;&amp; Global.StepName!='质量部'&amp;&amp; Global.StepName!='质量部(挂起)' &amp;&amp; Global.StepName!=''">
            <table class="MYHead" border="0" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td class="myhead" height="20" width="796">
                            异常处理<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" DisableExpress="Global.StepName!='QA(发布处理结论)'" ControlToValidate="XDateTimePicker3" ErrorMessage="请设定时间节点！" Display="None">--设定时间节点--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" DisableExpress="Global.StepName!='QA(发布处理结论)'" ControlToValidate="XDateTimePicker7" ErrorMessage="请设定问题处理时间点！" Display="None">--设定问题处理时间点--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" DisableExpress="Global.StepName!='QA(发布处理结论)'" ControlToValidate="XTextBox35" ErrorMessage="请选择【问题处理人】！" Display="None">--问题处理人--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator69" runat="server" DisableExpress="Global.StepName!='QA(发布处理结论)'" ControlToValidate="XTextBox51" ErrorMessage="请填写【具体任务】！" Display="None">--具体任务--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator70" runat="server" ControlToValidate="XTextBox37" ErrorMessage="请填写【处理措施和结论】！" Display="None" ValidationGroup="yichangjl">--处理措施和结论--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td height="22" width="100">
                            设定时间节点T1：</td>
                        <td width="654">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="SHYC_Applicant.Z_TimeNode" Width="200px" CssClass="BOXCSS" Type="TimeMinutes30"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName!='QA(发布处理结论)'">
                        <td bgcolor="#f3f7fa" height="20" colspan="2">
                            <p align="right">
                                <aspxform:XAddBlockButton id="XAddBlockButton3" runat="server" Text="新增问题处理人" TableName="SHYC_Applicant_Reply"></aspxform:XAddBlockButton>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE2" border="1" cellspacing="0" cellpadding="0" width="760" bgcolor="#f3f7fa" dynamicarea="0,5" deletelastrow="Denied">
                <tbody>
                    <tr>
                        <td height="23" width="100">
                            <p align="right">
                                问题处理时间点：
                            </p>
                        </td>
                        <td width="250">
                            <aspxform:XDateTimePicker id="XDateTimePicker7" runat="server" XDataBind="SHYC_Applicant_Reply.R_SetDate" Width="200px" CssClass="BOXCSS" Type="TimeMinutes30"></aspxform:XDateTimePicker>
                        </td>
                        <td width="80">
                        </td>
                        <td width="317">
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                问题处理人：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox35" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="SHYC_Applicant_Reply.R_HRName" Width="120px" CssClass="BOXCSS" BackColor="#F3F7FA"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton3" runat="server" Width="21px" DataMap="Account->SHYC_Applicant_Reply.R_HRID;DisplayName->SHYC_Applicant_Reply.R_HRName" HiddenExpress="Global.StepName!='QA(发布处理结论)'"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox43" runat="server" XDataBind="SHYC_Applicant_Reply.R_HRID" Width="20px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p align="right">
                                具体任务：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="SHYC_Applicant_Reply.R_Job" Width="290px" CssClass="BOXCSS" TextMode="MultiLine" BackColor="#F3F7FA"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='QA(发布处理结论)'">
                        <td height="30">
                            <p align="right">
                                处理措施和结论：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="SHYC_Applicant_Reply.R_VerdictNote" Width="100%" BorderWidth="1" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='QA(发布处理结论)'">
                        <td height="28">
                            <p align="right">
                                处理报告：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XMSNAttachments id="XMSNAttachments5" runat="server" XDataBind="SHYC_Applicant_Reply.R_VerdictFile"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName=='QA(发布处理结论)'">
                        <td height="28">
                            <p align="right">
                                处理意见：
                            </p>
                        </td>
                        <td>
                            <aspxform:XRadioButtonList id="XRadioButtonList12" runat="server" XDataBind="SHYC_Applicant_Reply.R_VerdictType" RepeatDirection="Horizontal">
                                <asp:ListItem>宽收</asp:ListItem>
                                <asp:ListItem>返工</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td>
                            <p align="right">
                                其他：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox1" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="SHYC_Applicant_Reply.R_VerdictTypeOther" Width="120px" CssClass="BOXCSS" BackColor="#F3F7FA"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="7600">
                            审批意见</td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" Width="100%" BorderColor="Gainsboro" BorderWidth="1px" Height="40px" Rows="3" TextMode="MultiLine"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="100%" BorderColor="Transparent" BorderWidth="0px" CssClass="AA"></aspxform:XSignTrace>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="760">
                <tbody>
                    <tr>
                        <td width="220">
                            <p align="right">
                                <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress="Global.StepName=='开始'"></aspxform:XPrintButton>
                            </p>
                        </td>
                        <td width="536">
                            <div align="left">
                                <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
           <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="760">
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
