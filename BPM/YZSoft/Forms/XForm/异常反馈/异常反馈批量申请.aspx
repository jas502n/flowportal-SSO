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
                            <asp:Label id="Label1" runat="server" text="异常反馈批量申请" font-size="Small" font-names="Tahoma" font-bold="True"></asp:Label></td>
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
                            <aspxform:XTextBox id="XTextBox44" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="SHYC_Applicant_M.AppHRName" Width="100px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="SHYC_Applicant_M.AppHRID" Width="20px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td width="74">
                            <p align="right">
                                <aspxform:XLabel id="XLabel45" runat="server" text="申请日期：" Width="66px" Height="14px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="193">
                            <aspxform:XTextBox id="XTextBox45" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="SHYC_Applicant_M.AppDate" Width="120px"></aspxform:XTextBox>
                        </td>
                        <td width="62">
                            <p align="right">
                                流水号：
                            </p>
                        </td>
                        <td width="214">
                            <aspxform:XTextBox id="XTextBox46" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="SHYC_Applicant_M.AppSN" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="760" dynamicarea="0,15">
                <tbody>
                    <tr>
                        <td class="myhead" height="20" colspan="8">
                            异常申请
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator72" runat="server" ControlToValidate="XRadioButtonList1" ErrorMessage="请选择【异常类型】！" Display="None">--异常类型--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="XRadioButtonList2" ErrorMessage="请选择【是否出货】！" Display="None">--是否出货--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" ControlToValidate="XTextBox11" ErrorMessage="请填写【客户名称】！" Display="None">--客户名称--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" ControlToValidate="XTextBox12" ErrorMessage="请填写【产品型号】！" Display="None">--产品型号--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" ControlToValidate="XTextBox13" ErrorMessage="请填写【订单编号】！" Display="None">--订单编号--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" ControlToValidate="XTextBox3" ErrorMessage="请填写【平台机芯】！" Display="None">--平台机芯--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" ControlToValidate="XTextBox5" ErrorMessage="请填写【异常数量】！" Display="None">--异常数量--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" ControlToValidate="XTextBox6" ErrorMessage="请填写【异常比例】！" Display="None">--异常比例--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" width="62">
                            异常类型：</td>
                        <td colspan="7">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="SHYC_Applicant_M_Dtl.AbnormalType" Width="150px" RepeatDirection="Horizontal">
                                <asp:ListItem>生产异常</asp:ListItem>
                                <asp:ListItem>客户异常</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            是否出货：</td>
                        <td colspan="7">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="SHYC_Applicant_M_Dtl.ShipMentType" Width="150px" RepeatDirection="Horizontal">
                                <asp:ListItem>已出货</asp:ListItem>
                                <asp:ListItem>未出货</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            客户名称：</td>
                        <td width="120">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="SHYC_Applicant_M_Dtl.Customer" Width="98%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td width="64">
                            产品型号：</td>
                        <td width="120">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="SHYC_Applicant_M_Dtl.ProductNO" Width="98%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td width="64">
                            订单编号：</td>
                        <td width="119">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="SHYC_Applicant_M_Dtl.OrderNO" Width="98%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td width="64">
                            订单数量：</td>
                        <td width="120">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="SHYC_Applicant_M_Dtl.OrderCount" Width="98%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="31">
                            平台机芯：</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="SHYC_Applicant_M_Dtl.Chip" Width="98%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p>
                                异常物料
                            </p>
                            <p>
                                EDE编号：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="SHYC_Applicant_M_Dtl.EDENO" Width="98%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p>
                                异常物料
                            </p>
                            <p>
                                的位号：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="SHYC_Applicant_M_Dtl.AbnormalWeiHao" Width="98%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p>
                                异常发生
                            </p>
                            <p>
                                单位：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="SHYC_Applicant_M_Dtl.BeginUnit" Width="98%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="29">
                            异常数量：</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="SHYC_Applicant_M_Dtl.AbnormalCount" Width="98%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            异常比例：</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="SHYC_Applicant_M_Dtl.AbnormalScale" Width="98%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p>
                                生产数量：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox34" runat="server" XDataBind="SHYC_Applicant_M_Dtl.ProductCount" Width="98%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            出货数量：</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox53" runat="server" XDataBind="SHYC_Applicant_M_Dtl.ShipmentCount" Width="99%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="29">
                            生产线体号</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox38" runat="server" XDataBind="SHYC_Applicant_M_Dtl.XianTiNO" Width="98%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            异常工位：</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox64" runat="server" XDataBind="SHYC_Applicant_M_Dtl.GongHao" Width="98%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td height="39" colspan="8">
                            异常情况详细描述：<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" ControlToValidate="XTextBox7" ErrorMessage="请填写【异常情况详细描述】！" Display="None">--异常情况详细描述--</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="SHYC_Applicant_M_Dtl.AbnormalNote" Width="100%" BorderWidth="1px" Rows="3" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="43" colspan="8">
                            后果及影响：<aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="SHYC_Applicant_M_Dtl.AbnormalStatus" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>致命</asp:ListItem>
                                <asp:ListItem>紧急</asp:ListItem>
                                <asp:ListItem>一般</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator24" runat="server" ControlToValidate="XTextBox10" ErrorMessage="请填写【后果及影响】！" Display="None">--后果及影响--</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="SHYC_Applicant_M_Dtl.AbnormalResult" Width="100%" BorderWidth="1px" Rows="3" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="39" colspan="8">
                            初步分析（可能原因）：<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator25" runat="server" ControlToValidate="XTextBox8" ErrorMessage="请填写【初步分析】！" Display="None">--初步分析--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator27" runat="server" ControlToValidate="XTextBox15" ErrorMessage="请填写【之前是否发生过类似异常】！" Display="None">--之前是否发生过类似异常--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator26" runat="server" ControlToValidate="XTextBox39" ErrorMessage="请填写【对异常分析反馈的时间要求】！" Display="None">--对异常分析反馈的时间要求--</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="SHYC_Applicant_M_Dtl.AnalyseNote" Width="100%" BorderWidth="1px" Rows="3" TextMode="MultiLine"></aspxform:XTextBox>
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
                                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="SHYC_Applicant_M_Dtl.AnalyseFileType" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                <asp:ListItem>文件</asp:ListItem>
                                                <asp:ListItem>图片</asp:ListItem>
                                                <asp:ListItem>其他</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                        </td>
                                        <td width="100">
                                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="SHYC_Applicant_M_Dtl.AnalyseFileOther" Width="90px" CssClass="BOXCSS"></aspxform:XTextBox>
                                        </td>
                                        <td width="343">
                                            <aspxform:XMSNAttachments id="XMSNAttachments6" runat="server" XDataBind="SHYC_Applicant_M_Dtl.AnalyseFile" Width="330px"></aspxform:XMSNAttachments>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" colspan="8">
                            紧急应对措施(有则填写)：<aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="SHYC_Applicant_M_Dtl.InstantSolutions" Width="594px" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" colspan="8">
                            之前是否发生过类似异常：<aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="SHYC_Applicant_M_Dtl.HappenBegin" Width="593px" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" colspan="8">
                            对异常分析反馈的时间要求：
                            <aspxform:XTextBox id="XTextBox39" runat="server" XDataBind="SHYC_Applicant_M_Dtl.TimeYaoqiu" Width="575px" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" colspan="8">
                            产品线类别：<aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="SHYC_Applicant_M_Dtl.ProductLine" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>海外零售</asp:ListItem>
                                <asp:ListItem>海外运营</asp:ListItem>
                                <asp:ListItem>国内运营</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XRadioButtonList5" ErrorMessage="请选择【产品线类别】！" Display="None">--产品线类别--</aspxform:XRequiredFieldValidator>
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
