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
                            <asp:Label id="Label1" runat="server" text="加班单" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Insert content here -->
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td width="100">
                            <p align="right">
                                流 水 号：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="271">
                            <aspxform:XTextBox id="XTextBox5" runat="server" width="200px" BorderColor="#DCDCDC" BorderWidth="0px" XDataBind="DigitalHR:HR_OVERTIME_MAIN.AppSN" DisableBehavior="ReadOnly" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="100">
                            <p align="right">
                                申请日期：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="316">
                            <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" BorderColor="#DCDCDC" BorderWidth="0px" XDataBind="DigitalHR:HR_OVERTIME_MAIN.AppDate" DisplayOnly="True"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <p align="right">
                                公&nbsp;&nbsp;&nbsp;&nbsp; 司：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XTextBox id="XTextBox7" runat="server" width="200px" BorderColor="#DCDCDC" BorderWidth="0px" XDataBind="DigitalHR:HR_OVERTIME_MAIN.AppCompany" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <p align="right">
                                申请部门：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox8" runat="server" width="200px" BorderColor="#DCDCDC" BorderWidth="0px" XDataBind="DigitalHR:HR_OVERTIME_MAIN.AppDept" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <p align="right">
                                申 请 人：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox9" runat="server" width="200px" BorderColor="#DCDCDC" BorderWidth="0px" XDataBind="DigitalHR:HR_OVERTIME_MAIN.AppHRName" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox47" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="DigitalHR:HR_OVERTIME_MAIN.AppHRID" Width="20px" HiddenInput="True"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="800" height="5">
                <tbody>
                    <tr>
                        <td width="800">
                            <p align="right">
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800" deletelastrow="Denied" dynamicarea="0,6">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" class="MYHEAD" height="20" colspan="2">
                            加班信息<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" DisableExpress="DigitalHR:HR_OVERTIME_DTL.OverType!=2" ControlToValidate="XTextBox6" ErrorMessage="请填写加班地点！" Display="None">加班地点</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30">
                            <p align="right">
                                加班地点：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="DigitalHR:HR_OVERTIME_DTL.OverType" Width="180px" RepeatDirection="Horizontal" Height="30px">
                                <asp:ListItem Selected="True" Value="1">公司加班</asp:ListItem>
                                <asp:ListItem Value="2">公司外加班</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td height="30" width="694">
                                            <p align="left">
                                                &nbsp;<font color="red">具体加班地点：</font>
                                                <aspxform:XTextBox id="XTextBox6" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="DigitalHR:HR_OVERTIME_DTL.OverNote" Width="528px" ForeColor="Red"></aspxform:XTextBox>
                                            </p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30" width="97">
                            <p align="right">
                                加班日期：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="696">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="DigitalHR:HR_OVERTIME_DTL.BelongDay"></aspxform:XDateTimePicker>
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="DigitalHR:HR_OVERTIME_DTL.EmpName" Max="0" Min="0" Width="50px" HiddenInput="True" Express="DigitalHR:HR_OVERTIME_MAIN.AppHRName"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="DigitalHR:HR_OVERTIME_DTL.EmpID" Max="0" Min="0" Width="50px" HiddenInput="True" Express="DigitalHR:HR_OVERTIME_MAIN.AppHRID" BorderStyle="Dotted"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XDateTimePicker3" ErrorMessage="请填写加班日期！" Display="None">请填写加班日期！</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator2" runat="server" ControlToValidate="XDateTimePicker3" ErrorMessage="加班从2013-01-01开始申请！" Display="None" ValueToCompareExpress="'2013-01-01'" Operator="GreaterThanEqual">日期大于2013-01-01</aspxform:XCompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="50">
                            <p align="right">
                                加班时间：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <p>
                                <table border="0" cellspacing="0" cellpadding="0">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" BorderColor="Gainsboro" BorderWidth="1px" XDataBind="DigitalHR:HR_OVERTIME_DTL.FromDate" Width="230px" Express='javascript("settime",DigitalHR:HR_OVERTIME_DTL.BelongDay,"09:00")' Type="TimeMinutes"></aspxform:XDateTimePicker>
                                            </td>
                                            <td>
                                                &nbsp;至&nbsp;</td>
                                            <td>
                                                <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="DigitalHR:HR_OVERTIME_DTL.ToDate" Width="230px" Express='javascript("settime",DigitalHR:HR_OVERTIME_DTL.BelongDay,"18:30")' Type="TimeMinutes"></aspxform:XDateTimePicker>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <font color="green">提示：加班时间不能超过一天，如果多天加班，请分开填写。</font>
                            </p>
                            <p>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XDateTimePicker1" ErrorMessage="请填写加班起始时间！" Display="None">加班起始时间</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XDateTimePicker2" ErrorMessage="请填写加班结束时间！" Display="None">加班结束时间</aspxform:XRequiredFieldValidator>
                                <aspxform:XCompareValidator id="XCompareValidator1" runat="server" ControlToValidate="XDateTimePicker2" ErrorMessage="结束时间必须大于时间!" Display="None" ValueToCompareExpress="DigitalHR:HR_OVERTIME_DTL.FromDate" Operator="GreaterThan">-结束时间必须大于起始时间</aspxform:XCompareValidator>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30">
                            <p align="right">
                                合&nbsp;&nbsp;&nbsp;&nbsp; 计：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox2" runat="server" BorderColor="Gainsboro" BorderWidth="1px" XDataBind="DigitalHR:HR_OVERTIME_DTL.SumTime" Max="0" Min="0" Width="50px" HiddenInput="False"></aspxform:XTextBox>
                            小时<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XTextBox2" ErrorMessage="请填写加班小时数！" Display="None">加班小时数</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30">
                            <p align="right">
                                加班原因：
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox3" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="DigitalHR:HR_OVERTIME_DTL.Note" Width="600px" Height="70px" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XTextBox3" ErrorMessage="请填写加班原因！" Display="None">加班原因</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="10" width="800">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>本月加班历史记录</strong></td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800" dynamicarea="1,1" xdatasource="DataSource:DigitalHR;TableName:View_HR_OVERTIME_DTL;Filter:EmpID->DigitalHR:HR_OVERTIME_MAIN.AppHRID" datamap="FromDate->DigitalHR:HR_OVERTIME_HISTORY.FromDate;ToDate->DigitalHR:HR_OVERTIME_HISTORY.ToDate;Note->DigitalHR:HR_OVERTIME_HISTORY.Note">
                <tbody>
                    <tr>
                        <td bgcolor="#ffe0c0" height="17" width="319">
                            加班时间</td>
                        <td bgcolor="#ffe0c0" width="474">
                            加班原因</td>
                    </tr>
                    <tr>
                        <td height="18">
                            &nbsp;<aspxform:XDateTimePicker id="XDateTimePicker5" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="DigitalHR:HR_OVERTIME_HISTORY.FromDate" DisableBehavior="ReadOnly" DisplayOnly="True" Width="140px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                            至<aspxform:XDateTimePicker id="XDateTimePicker6" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="DigitalHR:HR_OVERTIME_HISTORY.ToDate" DisableBehavior="ReadOnly" DisplayOnly="True" Width="140px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox10" runat="server" width="100%" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="DigitalHR:HR_OVERTIME_HISTORY.Note" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="800" height="3">
                <tbody>
                    <tr>
                        <td height="10" width="800">
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
                            填写审批意见</td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" Width="100%" Height="45px" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <aspxform:XSignTrace id="XSignTrace1" runat="server" BorderColor="#dcdcdc" BorderWidth="1" Width="800px" CssClass="AA"></aspxform:XSignTrace>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td width="263" align="right">
                        </td>
                        <td width="533" align="left">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->DigitalHR:HR_OVERTIME_MAIN.AppDept"></aspxform:XProcessButtonList>
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
