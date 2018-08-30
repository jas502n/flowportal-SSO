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
	BORDER-TOP: #d1dedf 1px solid; FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: #004e98; BACKGROUND-COLOR: #dde6f4
}
.MYTABLE {
	BACKGROUND-COLOR: #fbfdff
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
	COLOR: #e0efe6
}
TEXTAREA {
	BORDER-RIGHT: #ffffff 0px solid; BORDER-TOP: #ffffff 0px solid; OVERFLOW-Y: visible; BACKGROUND: #ffffff; OVERFLOW: hidden; BORDER-LEFT: #ffffff 0px solid; BORDER-BOTTOM: #ffb3a7 0px solid
}
</style>
</head>
<body bottommargin="0" leftmargin="0" rightmargin="0" topmargin="0">
    <form runat="server">
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
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
                            <asp:Label id="Label1" runat="server" text="培训申请" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Insert content here -->
        <div align="center">
            <table class="mytable" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30" width="100">
                            <p align="center">
                                流 水 号
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="276">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="HR_Training.AppSN" HiddenInput="False" ValueToDisplayText Value Min="0" Max="0" width="191px" BorderColor="Gainsboro" BorderWidth="0px" DisableBehavior="ReadOnly" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="87">
                            <p align="center">
                                申请日期
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="262">
                            <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" XDataBind="HR_Training.AppDate" BorderColor="#DCDCDC" BorderWidth="0px" Width="240px" DisplayOnly="True"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30">
                            <p align="center">
                                申 请 人&nbsp;
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="HR_Training.AppHRName" HiddenInput="False" ValueToDisplayText Value Min="0" Max="0" width="179px" BorderColor="Gainsboro" BorderWidth="0px" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="HR_Training.AppHRID" HiddenInput="True" BorderColor="#DCDCDC" BorderWidth="1" Width="10px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <p align="center">
                                申请部门
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="HR_Training.AppDept" HiddenInput="False" ValueToDisplayText Value Min="0" Max="0" width="240px" BorderColor="Gainsboro" BorderWidth="0px" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30">
                            <p align="center">
                                培训项目
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="HR_Training.T_Name" HiddenInput="False" ValueToDisplayText Value Min="0" Max="0" Width="550px" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XTextBox1" ErrorMessage="请填写培训项目！" Display="None">培训项目</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="33">
                            <p align="center">
                                培类类型
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="HR_Training.T_Type" RepeatDirection="Horizontal">
                                <asp:ListItem>外送培训</asp:ListItem>
                                <asp:ListItem>委外内训</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XRadioButtonList1" ErrorMessage="请选择培训类型！" Display="None">培训类型</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="33">
                            <p align="center">
                                培训时间
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <table border="0" cellspacing="0" cellpadding="0" width="99%">
                                <tbody>
                                    <tr>
                                        <td width="228">
                                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="HR_Training.T_FromTime" BorderColor="Gainsboro" BorderWidth="1px" Width="220px" Type="TimeMinutes" Height="24px"></aspxform:XDateTimePicker>
                                        </td>
                                        <td width="22">
                                            <p align="left">
                                                至
                                            </p>
                                        </td>
                                        <td width="369">
                                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="HR_Training.T_ToTime" BorderColor="Gainsboro" BorderWidth="1px" Width="220px" Type="TimeMinutes" Height="24px"></aspxform:XDateTimePicker>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XDateTimePicker1" ErrorMessage="请选择培训时间！" Display="None">开始时间</aspxform:XRequiredFieldValidator>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XDateTimePicker2" ErrorMessage="请选择培训时间！" Display="None">结束时间</aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="63">
                            <p align="center">
                                培训对象
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="HR_Training.T_Trainers" BorderColor="#DCDCDC" Width="99%" CssClass="MYAREA" Height="60px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="100">
                            <p align="center">
                                培训内容
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XTextBox10" ErrorMessage="请填写课程及讲师介绍！" Display="None">课程介绍</aspxform:XRequiredFieldValidator>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <p>
                                <table border="0" cellspacing="0" cellpadding="0" width="99%">
                                    <tbody>
                                        <tr>
                                            <td height="28" width="101">
                                                供应商名称:</td>
                                            <td width="519">
                                                <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="HR_Training.T_Supplier" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="450px" NormalCssClass="BOXCSS" CssClass="BOXCSS"></aspxform:XTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="28">
                                                讲&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;师:</td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="HR_Training.T_Teachers" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="450px" NormalCssClass="BOXCSS" CssClass="BOXCSS"></aspxform:XTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="28">
                                                <p>
                                                    课程及讲师介绍:
                                                </p>
                                            </td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="HR_Training.T_Courses" HiddenInput="False" Min="0" Max="0" DisableBehavior="ReadOnly" Width="100%" NormalCssClass="BOXCSS" CssClass="BOXCSS" TextMode="MultiLine"></aspxform:XTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="28">
                                                相关附件:</td>
                                            <td>
                                                <aspxform:XAttachments id="XAttachments1" runat="server" XDataBind="HR_Training.T_Attachments" width="100%"></aspxform:XAttachments>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="60">
                            <p align="center">
                                培训预算
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" colspan="3">
                            <p>
                                &nbsp;
                                <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                    <tbody>
                                        <tr>
                                            <td width="33%">
                                                金 额：</td>
                                            <td width="33%">
                                                <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="HR_Training.T_Money" HiddenInput="False" ValueToDisplayText Value Min="0" Max="0" Width="100px" CssClass="BOXCSS" Format="type:currency;pfx:￥;.2"></aspxform:XTextBox>
                                            </td>
                                            <td width="34%">
                                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XTextBox4" ErrorMessage="请填写金额！" Display="None">金额</aspxform:XRequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                备 注：</td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="HR_Training.T_MoneyNote" HiddenInput="False" ValueToDisplayText Value Min="0" Max="0" DisableBehavior="ReadOnly" Width="508px" NormalCssClass="BOXCSS" CssClass="BOXCSS" TextMode="MultiLine"></aspxform:XTextBox>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </p>
                            <p>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="63">
                            <p align="center">
                                申请理由
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="HR_Training.T_Reason" BorderColor="#DCDCDC" Width="99%" CssClass="MYAREA" Height="60px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="Global.StepName!='申请人(打分)'&amp;&amp;Global.StepName!=''">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" height="65" width="100">
                            <p align="center">
                                总裁审批
                            </p>
                            <p align="center">
                                意见
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="Global.StepName!='申请人(打分)'&amp;&amp;Global.StepName!=''">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" width="100">
                            <p align="center">
                                评&nbsp;&nbsp;&nbsp; 价
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 0px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <table border="0" cellspacing="0" cellpadding="0" width="99%">
                                <tbody>
                                    <tr>
                                        <td height="25" width="53">
                                            讲&nbsp;师：</td>
                                        <td colspan="2">
                                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="HR_Training.P_Teacher" Width="350px" RepeatDirection="Horizontal" Height="22px">
                                                <asp:ListItem Value="5">很好</asp:ListItem>
                                                <asp:ListItem Value="4">好</asp:ListItem>
                                                <asp:ListItem Value="3">一般</asp:ListItem>
                                                <asp:ListItem Value="2">较差</asp:ListItem>
                                                <asp:ListItem Value="1">非常差</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XRadioButtonList2" ErrorMessage="请给讲师打分！" Display="None" DisableExpress="Global.StepName!='申请人(打分)'">讲师</aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            课 程：</td>
                                        <td colspan="2">
                                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="HR_Training.P_Courses" Width="350px" RepeatDirection="Horizontal" Height="22px">
                                                <asp:ListItem Value="5">很好</asp:ListItem>
                                                <asp:ListItem Value="4">好</asp:ListItem>
                                                <asp:ListItem Value="3">一般</asp:ListItem>
                                                <asp:ListItem Value="2">较差</asp:ListItem>
                                                <asp:ListItem Value="1">非常差</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ControlToValidate="XRadioButtonList3" ErrorMessage="请给课程打分！" Display="None" DisableExpress="Global.StepName!='申请人(打分)'">课程</aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            组 织：</td>
                                        <td colspan="2">
                                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="HR_Training.P_Zuzhi" Width="350px" RepeatDirection="Horizontal" Height="22px">
                                                <asp:ListItem Value="5">很好</asp:ListItem>
                                                <asp:ListItem Value="4">好</asp:ListItem>
                                                <asp:ListItem Value="3">一般</asp:ListItem>
                                                <asp:ListItem Value="2">较差</asp:ListItem>
                                                <asp:ListItem Value="1">非常差</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="XRadioButtonList4" ErrorMessage="请给组织打分！" Display="None" DisableExpress="Global.StepName!='申请人(打分)'">组织</aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            平 均：</td>
                                        <td width="35">
                                            <p align="center">
                                                <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="HR_Training.P_Sum" HiddenInput="False" ValueToDisplayText Value Min="0" Max="0" ReadOnly="True" Width="30px" CssClass="BOXCSS" Format="type:number;.1" Express="(HR_Training.P_Teacher+HR_Training.P_Courses+HR_Training.P_Zuzhi)/3" TextAlign="Center" HiddenExpress="HR_Training.P_Sum<=0"></aspxform:XTextBox>
                                            </p>
                                        </td>
                                        <td width="525">
                                            分</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="736">
                            填写审批意见</td>
                    </tr>
                </tbody>
            </table>
            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" Width="738px" Height="45px" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
            <aspxform:XSignTrace id="XSignTrace1" runat="server" BorderColor="#dcdcdc" BorderWidth="1" Width="738px" CssClass="AA"></aspxform:XSignTrace>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td width="163" align="right">
                        </td>
                        <td width="469" align="left">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->HR_Training.AppDept"></aspxform:XProcessButtonList>
                        </td>
                        <td width="100">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress="Global.StepName == '开始'"></aspxform:XPrintButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="738">
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
    </form>
</body>
</html>
