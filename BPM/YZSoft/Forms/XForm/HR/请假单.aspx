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
                            <asp:Label id="Label1" runat="server" text="请假单" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="28" width="100">
                            <p align="right">
                                流 水 号： 
                            </p>
                        </td>
                        <td width="271">
                            <aspxform:XLabel id="XLb_ID" runat="server" XDataBind="DigitalHR:HR_LEAVE_MAIN.AppSN"></aspxform:XLabel>
                        </td>
                        <td width="100">
                            <p align="right">
                                申请日期： 
                            </p>
                        </td>
                        <td width="316">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="DigitalHR:HR_LEAVE_MAIN.AppDate" DisplayOnly="True" BorderWidth="0px" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                公&nbsp;&nbsp;&nbsp;&nbsp; 司： 
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XLabel id="XLB_CPY" runat="server" XDataBind="DigitalHR:HR_LEAVE_MAIN.AppCompany"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                申请部门： 
                            </p>
                        </td>
                        <td>
                            <aspxform:XLabel id="XLb_Dept" runat="server" XDataBind="DigitalHR:HR_LEAVE_MAIN.AppDept"></aspxform:XLabel>
                        </td>
                        <td>
                            <p align="right">
                                申 请 人： 
                            </p>
                        </td>
                        <td>
                            <aspxform:XLabel id="XLb_Pes" runat="server" XDataBind="DigitalHR:HR_LEAVE_MAIN.AppHRName"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="DigitalHR:HR_LEAVE_MAIN.AppHRID" BorderWidth="1" BorderColor="#DCDCDC" HiddenInput="True" Width="20px"></aspxform:XTextBox>
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
                            <p align="right">
                                <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" HiddenExpress="1" PrintOut="False" TableName="HR_LEAVE_DTL" Text="添加请假联"></aspxform:XAddBlockButton>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800" dynamicarea="0,6" deletelastrow="Denied">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="2">
                            请假信息</td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                请假类型： 
                            </p>
                        </td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="DigitalHR:HR_LEAVE_DTL.LeaveID" Width="150px" DisplayColumn="LeaveName" ValueColumn="LeaveID" XDataSource="DataSource:DigitalHR;TableName:LeaveType;BufferType:RuntimeUpdate" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem></asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="DigitalHR:HR_LEAVE_DTL.EmpName" HiddenInput="True" Width="20px" Max="0" Min="0" Express="DigitalHR:HR_LEAVE_MAIN.AppHRName"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="DigitalHR:HR_LEAVE_DTL.EmpID" HiddenInput="True" Width="20px" Max="0" Min="0" Express="DigitalHR:HR_LEAVE_MAIN.AppHRID" BorderStyle="Dotted"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请选择[请假类型]!" ControlToValidate="XDropDownList1">请假类型</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator2" runat="server" Display="None" ErrorMessage="2013-01-01开始才能申请请假单" ControlToValidate="XDateTimePicker1" ValueToCompareExpress="'2013-01-01'" Operator="GreaterThanEqual">日期大于2013-01-01</aspxform:XCompareValidator>
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="DigitalHR:HR_LEAVE_DTL.LeaveName" HiddenExpress="1" ValueColumn="LeaveName" XDataSource="DataSource:DigitalHR;TableName:LeaveType;Filter:LeaveID->DigitalHR:HR_LEAVE_DTL.LeaveID;BufferType:RuntimeUpdate">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td height="30" width="97">
                            <p align="right">
                                请假时间： 
                            </p>
                        </td>
                        <td width="696">
                            <table border="0" cellspacing="0" cellpadding="0" height="30">
                                <tbody>
                                    <tr>
                                        <td>
                                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="DigitalHR:HR_LEAVE_DTL.FromDate" BorderWidth="1" BorderColor="#DCDCDC" Width="200px" Express='javascript("settime",DigitalHR:HR_LEAVE_MAIN.AppDate,"09:00")' Type="TimeMinutes"></aspxform:XDateTimePicker>
                                        </td>
                                        <td>
                                            &nbsp;至 &nbsp;</td>
                                        <td>
                                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="DigitalHR:HR_LEAVE_DTL.ToDate" BorderWidth="1px" BorderColor="Gainsboro" Width="230px" Express='javascript("settime",DigitalHR:HR_LEAVE_MAIN.AppDate,"18:30")' Type="TimeMinutes"></aspxform:XDateTimePicker>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            (请注意填写请假结束时间的小时、分钟)<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请填写起始时间！" ControlToValidate="XDateTimePicker1">起始时间-</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="请填写结束时间！" ControlToValidate="XDateTimePicker2">结束时间</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator1" runat="server" Display="None" ErrorMessage="请假结束时间必须大于起始时间!" ControlToValidate="XDateTimePicker2" ValueToCompareExpress="DigitalHR:HR_LEAVE_DTL.FromDate" Operator="GreaterThan">-结束时间必须大于起始时间</aspxform:XCompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                合&nbsp;&nbsp;&nbsp;&nbsp; 计： 
                            </p>
                        </td>
                        <td class="NoPadding">
                            <p align="left">
                                <table border="0" cellspacing="0" cellpadding="0" width="526">
                                    <tbody>
                                        <tr>
                                            <td height="23" width="62">
                                                <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="DigitalHR:HR_LEAVE_DTL.DayInt" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" Width="50px" Max="0" Min="0"></aspxform:XTextBox>
                                            </td>
                                            <td width="26">
                                                <aspxform:XLabel id="XLabel2" runat="server" text="天" ValueToDisplayText Value></aspxform:XLabel>
                                            </td>
                                            <td width="61">
                                                <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="DigitalHR:HR_LEAVE_DTL.HourInt" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" Width="50px" Max="0" Min="0"></aspxform:XTextBox>
                                            </td>
                                            <td width="369">
                                                <aspxform:XLabel id="XLabel3" runat="server" text="小时" ValueToDisplayText Value></aspxform:XLabel>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                附件： 
                            </p>
                        </td>
                        <td>
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="DigitalHR:HR_LEAVE_DTL.Attachment"></aspxform:XMSNAttachments>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请上传相关附件!" ControlToValidate="XMSNAttachments1" DisableExpress='DigitalHR:HR_LEAVE_DTL.LeaveID==10 || DigitalHR:HR_LEAVE_DTL.LeaveID==20||DigitalHR:HR_LEAVE_DTL.LeaveID==60||Global.StepName!="开始"'>上传附件</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="38">
                            <p align="right">
                                请假原因： 
                            </p>
                        </td>
                        <td>
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="DigitalHR:HR_LEAVE_DTL.SangjiaTpye" HiddenExpress="DigitalHR:HR_LEAVE_DTL.LeaveID!=60" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>父母</asp:ListItem>
                                <asp:ListItem>配偶</asp:ListItem>
                                <asp:ListItem>子女</asp:ListItem>
                                <asp:ListItem>配偶父母</asp:ListItem>
                                <asp:ListItem>(外)祖父(母)</asp:ListItem>
                                <asp:ListItem>亲兄弟姐妹</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="DigitalHR:HR_LEAVE_DTL.Note" BorderWidth="1" BorderColor="#DCDCDC" Width="600px" ValueToDisplayText TextMode="MultiLine" Height="50px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="请填写请假原因！" ControlToValidate="XTextBox3">请假原因</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="10">
                        </td>
                    </tr>
                    <tr>
                        <td width="800">
                            <strong>个人年假信息</strong></td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800" dynamicarea="1,1" datamap="YearNO->DigitalHR:HR_LEAVE_YEAR.YearNO;SumTime->DigitalHR:HR_LEAVE_YEAR.YearSum;UsedTime->DigitalHR:HR_LEAVE_YEAR.YearUsed;UsableTime->DigitalHR:HR_LEAVE_YEAR.YearUsable;ExpDate->DigitalHR:HR_LEAVE_YEAR.ExpDate" xdatasource="DataSource:DigitalHR;TableName:View_YearLeave;Filter:EmpID->DigitalHR:HR_LEAVE_MAIN.AppHRID">
                <tbody>
                    <tr>
                        <td bgcolor="#ffe0c0" height="18" width="107">
                            年份</td>
                        <td bgcolor="#ffe0c0" width="118">
                            <p align="left">
                                年假总数(天) 
                            </p>
                        </td>
                        <td bgcolor="#ffe0c0" width="116">
                            已休年假(天)</td>
                        <td bgcolor="#ffe0c0" width="106">
                            可休年假(天)</td>
                        <td bgcolor="#ffe0c0" width="337">
                            过期日期</td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XLabel id="XLbl_Year" runat="server" XDataBind="DigitalHR:HR_LEAVE_YEAR.YearNO"></aspxform:XLabel>
                        </td>
                        <td>
                            <aspxform:XLabel id="XLbl_YearSum" runat="server" XDataBind="DigitalHR:HR_LEAVE_YEAR.YearSum"></aspxform:XLabel>
                        </td>
                        <td>
                            <aspxform:XLabel id="XLbl_YearUsed" runat="server" XDataBind="DigitalHR:HR_LEAVE_YEAR.YearUsed"></aspxform:XLabel>
                        </td>
                        <td>
                            <aspxform:XLabel id="XLbl_YearUsable" runat="server" XDataBind="DigitalHR:HR_LEAVE_YEAR.YearUsable" ForeColor="#00C000"></aspxform:XLabel>
                        </td>
                        <td>
                            <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" XDataBind="DigitalHR:HR_LEAVE_YEAR.ExpDate" DisplayOnly="True" BorderWidth="0px" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="10" width="800">
                            <p>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>休假历史记录</strong></td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800" dynamicarea="1,1" datamap="FromDate->DigitalHR:HR_LEAVE_HISTORY.FromDate;ToDate->DigitalHR:HR_LEAVE_HISTORY.ToDate;Note->DigitalHR:HR_LEAVE_HISTORY.Note;LeaveName->DigitalHR:HR_LEAVE_HISTORY.LeaveName" xdatasource="DataSource:DigitalHR;TableName:View_HR_LEAVE_DTL;Filter:EmpID->DigitalHR:HR_LEAVE_MAIN.AppHRID">
                <tbody>
                    <tr>
                        <td bgcolor="#ffe0c0" height="18" width="311">
                            请假时间</td>
                        <td bgcolor="#ffe0c0" width="88">
                            <p align="center">
                                类型 
                            </p>
                        </td>
                        <td bgcolor="#ffe0c0" width="391">
                            请假原因</td>
                    </tr>
                    <tr>
                        <td height="17">
                            <aspxform:XLabel id="XLbl_FDate" runat="server" XDataBind="DigitalHR:HR_LEAVE_HISTORY.FromDate"></aspxform:XLabel>
                            &nbsp;至 
                            <aspxform:XLabel id="XLbl_TDate" runat="server" XDataBind="DigitalHR:HR_LEAVE_HISTORY.ToDate"></aspxform:XLabel>
                        </td>
                        <td>
                            <p align="center">
                                <aspxform:XLabel id="XLbl_Leave" runat="server" XDataBind="DigitalHR:HR_LEAVE_HISTORY.LeaveName"></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <aspxform:XLabel id="XLbl_why" runat="server" XDataBind="DigitalHR:HR_LEAVE_HISTORY.Note"></aspxform:XLabel>
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
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->DigitalHR:HR_LEAVE_MAIN.AppDept"></aspxform:XProcessButtonList>
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
