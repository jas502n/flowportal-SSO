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
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #517dbf 1px solid
}
.MYHEAD {
	BORDER-TOP: #d1dedf 1px solid; FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: #004e98; BACKGROUND-COLOR: #dde6f4
}
.MYTABLE {
	BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid; BACKGROUND-COLOR: #fbfdff
}
TABLE.AA {
	BORDER-COLLAPSE: separate; BACKGROUND-COLOR: #d1dedf
}
TABLE.AA TD {
	BORDER-TOP: white 0px solid; BORDER-LEFT: white 0px solid
}
TABLE.AA TR.HeaderRow {
	BACKGROUND-COLOR: #ffffff
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
	BACKGROUND-COLOR: #f0f0f0
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
    <script language="javascript" type="text/javascript">
    function settime(mytime,hm)
    {
        if(mytime=="")
        {
            return "";
        }
        else
        {
            return mytime + " " + hm;
        }
    }
</script>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <div align="center">
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="800" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="217" height="53">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" align="middle" width="403">
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Bold="True" Font-Size="Small" text="深圳创维数字技术股份有限公司" Font-Names="Tahoma"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="224" bgcolor="white">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" align="middle" colspan="3" height="35">
                            <asp:Label id="Label1" runat="server" text="出差申请" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" cellspacing="0" cellpadding="0" width="800" border="1">
                <tbody>
                    <tr>
                        <td width="100" height="27">
                            <p align="right">
                                流 水 号：
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="294">
                            <aspxform:XLabel id="XLb_ID" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.AppSN"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="78">
                            <p align="right">
                                申请日期：
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="315">
                            <aspxform:XLabel id="XLb_Day" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.AppDate"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="28">
                            <p align="right">
                                申请部门：
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLb_Dept" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.AppDept"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="25">
                            <p align="right">
                                申 请 人：
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLb_Pes" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.AppHRName"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.AppHRID" Width="20px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table height="5" cellspacing="0" cellpadding="0" width="800" border="0">
                <tbody>
                    <tr>
                        <td width="800">
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" cellspacing="0" cellpadding="0" width="801" border="1" deletelastrow="Denied">
                <tbody>
                    <tr>
                        <td class="MYHEAD" colspan="4" height="20">
                            出差信息</td>
                    </tr>
                    <tr>
                        <td width="100" height="30">
                            <p align="right">
                                出差时间：
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="3">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.FromDate" Type="TimeMinutes15"></aspxform:XDateTimePicker>
                            &nbsp;至
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.ToDate" Type="TimeMinutes15"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XDateTimePicker1" ErrorMessage="请填写出差起始时间！" Display="None">起始时间-</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XDateTimePicker2" ErrorMessage="请填写出差结束时间！" Display="None">结束时间</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator1" runat="server" ControlToValidate="XDateTimePicker2" ErrorMessage="出差结束时间必须大于起始时间!" Display="None" Operator="GreaterThan" ValueToCompareExpress="DigitalHR:HR_GangGan_DTL.FromDate">-结束时间必须大于起始时间</aspxform:XCompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="28">
                            <p align="right">
                                合&nbsp;&nbsp;&nbsp;&nbsp; 计：
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="225">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.DayInt" Width="50px" HiddenInput="False" DisableBehavior="ReadOnly" Max="0" Min="0" Format="type:number;.1"></aspxform:XTextBox>
                            &nbsp;天
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.HourInt" Width="50px" HiddenInput="False" DisableBehavior="ReadOnly" Max="0" Min="0"></aspxform:XTextBox>
                            &nbsp;小时<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XTextBox6" ErrorMessage="请填写出差地点！" Display="None">出差地点</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="189">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;预计费用：</td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="273">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.Cost" Width="112px" HiddenInput="False" DisableBehavior="ReadOnly" Max="0" Min="0" Height="23px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XTextBox7" ErrorMessage="请填写预计费用！" Display="None">预计费用</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" align="right" height="30">
                            出差地点：</td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.Address" Width="160px" HiddenInput="False" DisableBehavior="ReadOnly" Max="0" Min="0"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.EmpName" Width="10px" HiddenInput="True" Max="0" Min="0" Express="DigitalHR:HR_GongGan_MAIN.AppHRName"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.EmpID" Width="10px" HiddenInput="True" Max="0" Min="0" Express="DigitalHR:HR_GongGan_MAIN.AppHRID" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" align="right">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XDropDownList1" ErrorMessage="请选择交通工具！" Display="None">交通工具</aspxform:XRequiredFieldValidator>
                            交通工具：</td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.Vehicle" BorderColor="Gainsboro" XDataSource="TableName:Fin_ChaiLv_Vehicle" onchange="javascript:XFormOnChange(this);" DisplayColumn="vehicle" ValueColumn="vehicle" PromptText="请选择">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.OtherVehicle" Width="138px" BorderColor="Gainsboro" HiddenInput="False" BorderWidth="1px" DisableBehavior="ReadOnly" Max="0" Min="0" Height="23px" HiddenExpress='DigitalHR:HR_GangGan_DTL.Vehicle !="其他"'></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XTextBox8" ErrorMessage="您选择了其他交通工具，请填写！" Display="None" DisableExpress='DigitalHR:HR_GangGan_DTL.Vehicle !="其他"'>其他交通</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="53">
                            <p align="right">
                                出差原因：
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="3">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.Note" Width="600px" BorderColor="#DCDCDC" BorderWidth="1" DisableBehavior="ReadOnly" Height="50px" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XTextBox3" ErrorMessage="请填写出差原因！" Display="None">出差原因</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE" cellspacing="0" cellpadding="0" width="800" border="0">
                <tbody>
                    <tr>
                        <td class="MYHEAD" width="800" height="20">
                            <p align="left">
                                填写审批意见
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="退回请填写审批信息" Display="None" ValidationGroup="Return">退回</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="拒绝请填写审批信息" Display="None" ValidationGroup="Reject">拒绝</aspxform:XRequiredFieldValidator>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" Width="100%" BorderColor="#DCDCDC" BorderWidth="1" Height="45px" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="800px" BorderColor="#dcdcdc" BorderWidth="1" CssClass="AA"></aspxform:XSignTrace>
        </div>
        <div align="center">
            <table cellspacing="0" cellpadding="0" width="800" align="center" border="0">
                <tbody>
                    <tr>
                        <td align="right" width="263">
                            <p align="center">
                            </p>
                        </td>
                        <td align="left" width="533">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->DigitalHR:HR_GongGan_MAIN.AppDept"></aspxform:XProcessButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
