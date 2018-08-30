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
        var date = new Date();
        if(mytime!="")
        {
            var str = mytime.replace(/-/g,"/");
            date = new Date(str);
        }
            var year=date.getFullYear();
            var month=date.getMonth()+1;

            if(month<10){
                month="0"+month;
            }
            var day=date.getDate();
            if(day<10){
            day="0"+day;
            }
            var h=date.getHours();
            if(h<10){
            h="0"+h;
            }
            var m=date.getMinutes();
            if(m<10){
                m="0"+m;
         }
        return year+"-"+month+"-"+day+" " + hm
    }
</script>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
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
                            <asp:Label id="Label1" runat="server" text="公干申请" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="27" width="100">
                            <p align="right">
                                流 水 号：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="294">
                            <aspxform:XLabel id="XLb_ID" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.AppSN"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="78">
                            <p align="right">
                                申请日期：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="315">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.AppDate" BorderWidth="0px" BorderColor="#DCDCDC" DisplayOnly="True"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                            <p align="right">
                                公&nbsp;&nbsp;&nbsp;&nbsp; 司：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XLabel id="XLB_CPY" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.AppCompany"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                            <p align="right">
                                申请部门：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLb_Dept" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.AppDept"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <p align="right">
                                申 请 人：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLb_Pes" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.AppHRName"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.AppHRID" BorderWidth="1" BorderColor="#DCDCDC" HiddenInput="True" Width="20px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800" height="5">
                <tbody>
                    <tr>
                        <td width="800">
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="801" deletelastrow="Denied">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="2">
                            公干信息</td>
                    </tr>
                    <tr>
                        <td height="30" width="101">
                            <p align="right">
                                公干时间：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="693">
                            <table border="0" cellspacing="0" cellpadding="0">
                                <tbody>
                                    <tr>
                                        <td>
                                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.FromDate" Width="200px" Type="TimeMinutes" Express='javascript("settime",DigitalHR:HR_GongGan_MAIN.AppDate,"08:30")'></aspxform:XDateTimePicker>
                                        </td>
                                        <td>
                                            &nbsp;至 &nbsp;</td>
                                        <td>
                                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.ToDate" Width="200px" Type="TimeMinutes" Express='javascript("settime",DigitalHR:HR_GongGan_MAIN.AppDate,"18:30")'></aspxform:XDateTimePicker>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请填写出差起始时间！" ControlToValidate="XDateTimePicker1">起始时间-</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="请填写出差结束时间！" ControlToValidate="XDateTimePicker2">结束时间</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator1" runat="server" Display="None" ErrorMessage="出差结束时间必须大于起始时间!" ControlToValidate="XDateTimePicker2" ValueToCompareExpress="DigitalHR:HR_GangGan_DTL.FromDate" Operator="GreaterThan">-结束时间必须大于起始时间</aspxform:XCompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                            <p align="right">
                                合&nbsp;&nbsp;&nbsp;&nbsp; 计：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="52">
                                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.DayInt" DisableBehavior="ReadOnly" HiddenInput="False" Width="50px" Max="0" Min="0"></aspxform:XTextBox>
                                        </td>
                                        <td width="17">
                                            天</td>
                                        <td width="53">
                                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.HourInt" DisableBehavior="ReadOnly" HiddenInput="False" Width="50px" Max="0" Min="0"></aspxform:XTextBox>
                                        </td>
                                        <td width="565">
                                            小时</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30" align="right">
                            公干地点：</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.Address" DisableBehavior="ReadOnly" HiddenInput="False" Width="335px" Max="0" Min="0"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.EmpName" HiddenInput="True" Width="50px" Max="0" Min="0" Express="DigitalHR:HR_GongGan_MAIN.AppHRName"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.EmpID" HiddenInput="True" Width="50px" Max="0" Min="0" Express="DigitalHR:HR_GongGan_MAIN.AppHRID" BorderStyle="Dotted"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请填写公干地点！" ControlToValidate="XTextBox6">公干地点</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="53">
                            <p align="right">
                                公干原因：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.Note" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" Width="600px" TextMode="MultiLine" Height="50px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="请填写出差原因！" ControlToValidate="XTextBox3">出差原因</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="800">
                            <p align="left">
                                填写审批意见
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderWidth="1" BorderColor="#DCDCDC" Width="100%" TextMode="MultiLine" Height="45px" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <aspxform:XSignTrace id="XSignTrace1" runat="server" BorderWidth="1" BorderColor="#dcdcdc" Width="800px" CssClass="AA"></aspxform:XSignTrace>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td width="263" align="right">
                            <p align="center">
                            </p>
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
                <div>
                </div>
            </table>
        </div>
    </form>
</body>
</html>
