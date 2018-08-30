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

    function CorporationDiff(fullname)
{
    var Corporation,company;
    Corporation=fullname.toString().split("/");
    company=Corporation[2].toString();
    return company;
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
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Bold="True" Font-Size="Small" text="深圳创维数字技术股份有限公司" Font-Names="Tahoma"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="224">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="35" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="出差申请" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
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
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.AppDate" BorderColor="#DCDCDC" BorderWidth="1" DisplayOnly="True"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                            <p align="right">
                                公&nbsp;&nbsp;&nbsp;&nbsp; 司： 
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XTextBox id="tbxCompany" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.AppCompany" BorderColor="#DCDCDC" BorderWidth="1" width="200px" Express="javascript('CorporationDiff',Company)" BorderStyle="None"></aspxform:XTextBox>
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
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.AppHRID" BorderColor="#DCDCDC" BorderWidth="1" Width="20px" HiddenInput="True"></aspxform:XTextBox>
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
                        <td class="MYHEAD" height="20" colspan="4">
                            出差信息<aspxform:XTextBox id="type" runat="server" XDataBind="DigitalHR:HR_GongGan_MAIN.Type" BorderColor="Gainsboro" BorderWidth="1px" width="22px" Max="0" Min="0" HiddenInput="False" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30" width="73">
                            <p align="right">
                                出差时间： 
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.FromDate" Express='javascript("settime",DigitalHR:HR_GongGan_MAIN.AppDate,"08:30")' Width="235px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                            &nbsp;至 
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.ToDate" Express='javascript("settime",DigitalHR:HR_GongGan_MAIN.AppDate,"18:30")' Width="235px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XDateTimePicker1" ErrorMessage="请填写出差起始时间！" Display="None">起始时间-</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XDateTimePicker2" ErrorMessage="请填写出差结束时间！" Display="None">结束时间</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator1" runat="server" ControlToValidate="XDateTimePicker2" ErrorMessage="出差结束时间必须大于起始时间!" Display="None" Operator="GreaterThan" ValueToCompareExpress="DigitalHR:HR_GangGan_DTL.FromDate">-结束时间必须大于起始时间</aspxform:XCompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                            <p align="right">
                                合&nbsp;&nbsp;&nbsp;&nbsp; 计： 
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="251">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.DayInt" DisableBehavior="ReadOnly" Max="0" Min="0" Width="50px" HiddenInput="False"></aspxform:XTextBox>
                            &nbsp;天 
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.HourInt" DisableBehavior="ReadOnly" Max="0" Min="0" Width="50px" HiddenInput="False"></aspxform:XTextBox>
                            &nbsp;小时<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XTextBox6" ErrorMessage="请填写出差地点！" Display="None">出差地点</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="201">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;预计费用：</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="264">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.Cost" DisableBehavior="ReadOnly" Max="0" Min="0" Width="112px" HiddenInput="False" Height="23px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XTextBox7" ErrorMessage="请填写预计费用！" Display="None">预计费用</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30" align="right">
                            出差地点：</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.Address" DisableBehavior="ReadOnly" Max="0" Min="0" Width="160px" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.EmpName" Express="DigitalHR:HR_GongGan_MAIN.AppHRName" Max="0" Min="0" Width="10px" HiddenInput="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.EmpID" Express="DigitalHR:HR_GongGan_MAIN.AppHRID" BorderStyle="Dotted" Max="0" Min="0" Width="10px" HiddenInput="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XDropDownList1" ErrorMessage="请选择交通工具！" Display="None">交通工具</aspxform:XRequiredFieldValidator>
                            交通工具：</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.Vehicle" BorderColor="Gainsboro" XDataSource="TableName:Fin_ChaiLv_Vehicle" onchange="javascript:XFormOnChange(this);" DisplayColumn="vehicle" ValueColumn="vehicle" PromptText="请选择">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.OtherVehicle" BorderColor="Gainsboro" BorderWidth="1px" DisableBehavior="ReadOnly" Max="0" Min="0" Width="138px" HiddenInput="False" HiddenExpress='DigitalHR:HR_GangGan_DTL.Vehicle !="其他"' Height="23px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XTextBox8" ErrorMessage="您选择了其他交通工具，请填写！" Display="None" DisableExpress='DigitalHR:HR_GangGan_DTL.Vehicle !="其他"'>其他交通</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="53">
                            <p align="right">
                                <aspxform:XLabel id="XLabel3" runat="server" text="出差原因：" HiddenExpress="DigitalHR:HR_GongGan_MAIN.Type==1"></aspxform:XLabel>
                                <aspxform:XLabel id="XLabel4" runat="server" text="出差目的：" HiddenExpress="DigitalHR:HR_GongGan_MAIN.Type==0"></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XLabel id="XLabel2" runat="server" text="核高基项目" HiddenExpress="DigitalHR:HR_GongGan_MAIN.Type==0" ForeColor="Red"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.Note1" BorderColor="#DCDCDC" BorderWidth="1" DisableBehavior="ReadOnly" Width="600px" HiddenExpress="DigitalHR:HR_GongGan_MAIN.Type==1" Height="50px" DisableExpress="DigitalHR:HR_GongGan_MAIN.Type==1" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XDropDownList id="hegaoji" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.Note2" HiddenExpress="DigitalHR:HR_GongGan_MAIN.Type==0" XDataSource="TableName:HeGaoJi_TravelGoal" DisplayColumn="TravelGoal" ValueColumn="TravelGoal" PromptText="请选择" DisableExpress="DigitalHR:HR_GongGan_MAIN.Type==0">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XTextBox3" ErrorMessage="请填写出差原因！" Display="None" DisableExpress="DigitalHR:HR_GongGan_MAIN.Type==1">出差原因</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ControlToValidate="hegaoji" ErrorMessage="请选择核高基项目！" Display="None" DisableExpress="DigitalHR:HR_GongGan_MAIN.Type==0">请选择核高基项目！</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="801" deletelastrow="Denied" hiddenexpress="DigitalHR:HR_GongGan_MAIN.Type==0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="53" width="72">
                            <p align="right">
                                <aspxform:XLabel id="XLabel5" runat="server" text="出差原因："></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XTextBox id="chuchaiyuanyin" runat="server" XDataBind="DigitalHR:HR_GangGan_DTL.Note3" BorderColor="#DCDCDC" BorderWidth="1" DisableBehavior="ReadOnly" Width="600px" HiddenExpress="DigitalHR:HR_GongGan_MAIN.Type==0" Height="50px" DisableExpress="DigitalHR:HR_GongGan_MAIN.Type==0" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="chuchaiyuanyin" ErrorMessage="请填写出差原因！" Display="None" DisableExpress="DigitalHR:HR_GongGan_MAIN.Type==0">出差原因</aspxform:XRequiredFieldValidator>
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
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="退回请填写审批信息" Display="None" ValidationGroup="Return">退回</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="拒绝请填写审批信息" Display="None" ValidationGroup="Reject">拒绝</aspxform:XRequiredFieldValidator>
                                <aspxform:XTextBox id="XTextBox126" runat="server" XDataBind="Company" BorderColor="#DCDCDC" BorderWidth="1" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                            </p>
                        </td>
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
            <table border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td width="50" align="right">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" Width="50px" HiddenExpress="Global.StepName =='开始'" Height="20px"></aspxform:XPrintButton>
                            <p align="center">
                            </p>
                        </td>
                        <td width="750" align="left">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" Width="675px" Height="24px" DataMap="MemberFullName->Company;Department->DigitalHR:HR_GongGan_MAIN.AppDept" PositionDisplayType="FullName"></aspxform:XProcessButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
