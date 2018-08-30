<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform="xmlns:xform">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <title>BPM Form</title> <script language="javascript" type="text/javascript">
    function CorporationDiff(fullname)
    {
         var Corporation,company;
         Corporation=fullname.toString().split("/");
         company=Corporation[2].toString();
         return company;
    }
    function GetEmp(OUFullName)
    {
         var empdept;
         var olength;
         olength=OUFullName.length;
         empdept=OUFullName.substring(8,olength);
         return empdept;
    }
    </script>
    <style> BODY {
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
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="67" width="278">
                            <div align="center">
                                <asp:Image id="Image2" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            </div>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="519" colspan="2" align="middle">
                            <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <aspxform:XTextBox id="XTextBox7" runat="server" Font-Size="Medium" Express="javascript('CorporationDiff',company)" TextAlign="Center" Width="405px" BorderWidth="0px" BorderColor="GhostWhite" Max="0" Min="0" Height="30px" HiddenInput="False" XDataBind="NewEmployee_Prepare.AppCompany" ValueToDisplayText Value Font-Bold="True" Font-Underline="False"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="46" colspan="3" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel14" runat="server" Font-Size="Small" ValueToDisplayText Value Font-Bold="True" Text="新员工入职准备" Font-Names="Tahoma"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="86" align="right">
                        <div align="center">
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Size="X-Small" ValueToDisplayText Value Font-Bold="False" text="申请日期:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" bgcolor="#f0f0f0" width="411" colspan="2">
                        <aspxform:XTextBox id="XTextBox5" runat="server" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" XDataBind="NewEmployee_Prepare.AppDate" ValueToDisplayText Value BorderStyle="None" BackColor="#F0F0F0" width="129px"></aspxform:XTextBox>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请选择入职部门" ControlToValidate="XTextBox1" ValidationGroup="VG1">选择部门</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请输入员工工号" ControlToValidate="XTextBox9" ValidationGroup="VG2">输入工号</aspxform:XRequiredFieldValidator>
                        <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></font></span></span></font></span></span></font></span></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="86" align="right">
                        <div align="center">
                            <aspxform:XLabel id="XLabel15" runat="server" Font-Size="X-Small" ValueToDisplayText Value text="单号:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="207">
                        <aspxform:XTextBox id="XTextBox14" runat="server" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" XDataBind="NewEmployee_Prepare.TaskID" ValueToDisplayText Value BorderStyle="None" BackColor="#F0F0F0" width="102px"></aspxform:XTextBox>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请输入人员姓名" ControlToValidate="XTextBox8" ValidationGroup="VG1">姓名</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="选择预到职日期" ControlToValidate="XDateTimePicker1" ValidationGroup="VG1">选择日期</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="选择部门负责人" ControlToValidate="XTextBox10" ValidationGroup="VG1">部门负责人</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="选择能否如期入职" ControlToValidate="XDropDownList1" ValidationGroup="VG3">如期入职</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="801" align="center">
            <tbody>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #f0f0f0 1px solid" height="32" width="86">
                        <div align="center">
                            <aspxform:XLabel id="XLabel3" runat="server" Font-Size="X-Small" ValueToDisplayText Value text="申请人:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #f0f0f0 1px solid" width="155">
                        <aspxform:XTextBox id="XTextBox3" runat="server" BorderWidth="0px" BorderColor="Gainsboro" Max="0" Min="0" Height="25px" HiddenInput="False" XDataBind="NewEmployee_Prepare.AppName" ValueToDisplayText Value width="137px"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #f0f0f0 1px solid" width="88">
                        <div align="center">
                            <aspxform:XLabel id="XLabel4" runat="server" Font-Size="X-Small" ValueToDisplayText Value text="工号:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #f0f0f0 1px solid" width="158">
                        <aspxform:XTextBox id="XTextBox4" runat="server" BorderWidth="0px" BorderColor="Gainsboro" Max="0" Min="0" Height="25px" HiddenInput="False" XDataBind="NewEmployee_Prepare.AppAccount" ValueToDisplayText Value width="155px"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #f0f0f0 1px solid" width="89">
                        <div align="center">
                            <aspxform:XLabel id="XLabel5" runat="server" Font-Size="X-Small" ValueToDisplayText Value text="部门:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="205">
                        <div align="left">
                            <aspxform:XTextBox id="XTextBox6" runat="server" BorderWidth="0px" BorderColor="Gainsboro" Max="0" Min="0" Height="23px" HiddenInput="False" XDataBind="NewEmployee_Prepare.AppDept" ValueToDisplayText Value width="189px"></aspxform:XTextBox>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="20" colspan="10">
                        <aspxform:XLabel id="XLabel6" runat="server" Font-Size="X-Small" ValueToDisplayText Value Font-Bold="False" text="预入职员工信息"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="17" colspan="2">
                        <div align="center">
                            <div align="center">
                                <aspxform:XLabel id="XLabel8" runat="server" ValueToDisplayText Value text="部门"></aspxform:XLabel>
                            </div>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="73" colspan="3">
                        <div align="center">
                            <div align="center">
                                <aspxform:XLabel id="XLabel9" runat="server" ValueToDisplayText Value text="姓名"></aspxform:XLabel>
                            </div>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="81">
                        <div align="center">
                            <div align="center">
                                <aspxform:XLabel id="XLabel10" runat="server" ValueToDisplayText Value text="工号"></aspxform:XLabel>
                            </div>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="155">
                        <div align="center">
                            <div align="center">
                                <aspxform:XLabel id="XLabel11" runat="server" ValueToDisplayText Value text="预计到职日期"></aspxform:XLabel>
                            </div>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                        <div align="center">
                            <aspxform:XLabel id="XLabel2" runat="server" ValueToDisplayText Value text="入职部门负责人"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid" width="124">
                        <div align="center">
                            <aspxform:XLabel id="XLabel13" runat="server" ValueToDisplayText Value text="如期入职"></aspxform:XLabel>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32" width="67">
                        <div align="center">
                            <aspxform:XSelectOUButton id="XSelectOUButton1" runat="server" Font-Size="X-Small" Width="63px" Text="入职部门" DataMap="OUFullName->empdept" UseSubmitBehavior="False" PopupWndWidth="-1" PopupWndHeight="-1"></aspxform:XSelectOUButton>
                        </div>
                    </td>
                    <td width="167">
                        <div align="right">
                            <aspxform:XTextBox id="XTextBox1" runat="server" Express="javascript('GetEmp',empdept)" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Height="29px" HiddenInput="False" XDataBind="NewEmployee_Prepare.EmpDept" ValueToDisplayText Value width="165px" ReadOnly="True"></aspxform:XTextBox>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                        <div align="center">
                            <aspxform:XTextBox id="XTextBox8" runat="server" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Height="28px" HiddenInput="False" XDataBind="NewEmployee_Prepare.EmpName" ValueToDisplayText Value width="68px"></aspxform:XTextBox>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="left">
                            <aspxform:XTextBox id="XTextBox9" runat="server" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Height="28px" HiddenInput="False" XDataBind="NewEmployee_Prepare.EmpAccount" ValueToDisplayText Value width="79px"></aspxform:XTextBox>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" Width="153px" BorderWidth="1px" BorderColor="Gainsboro" Height="26px" XDataBind="NewEmployee_Prepare.EmpHireDate" Type="TimeMinutes30"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="79">
                        <div align="right">
                            <div align="right">
                                <aspxform:XTextBox id="XTextBox10" runat="server" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Height="27px" HiddenInput="False" XDataBind="NewEmployee_Prepare.EmpLeader" ValueToDisplayText Value width="80px"></aspxform:XTextBox>
                            </div>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid" width="34">
                        <div align="center">
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="26px" Text="..." DataMap="DisplayName->NewEmployee_Prepare.EmpLeader" UseSubmitBehavior="False" PopupWndWidth="-1" PopupWndHeight="-1"></aspxform:XSelectUserButton>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="NewEmployee_Prepare.RegisterOnTime">
                            <asp:ListItem>如期入职</asp:ListItem>
                            <asp:ListItem>放弃入职</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
            </tbody>
        </table>
        <p>
            <table border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td bgcolor="#f0f0f0" height="21" width="800">
                            <aspxform:XLabel id="XLabel7" runat="server" Font-Size="X-Small" Width="78px" ValueToDisplayText Value text="邮件通知模板" BackColor="#F0F0F0"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XTextBox id="XTextBox11" runat="server" Font-Size="Small" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Height="132px" HiddenInput="False" XDataBind="NewEmployee_Prepare.NoticeMail" ValueToDisplayText Value width="797px" TextMode="MultiLine">大家好：
    XX定于X年 X月X日XX来正式报到:
   直属领导:
   联系方式:
   请各位同事准备好座位、办公设备、各类账号及邮箱.
                            谢谢！
</aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#f0f0f0" height="20" width="398">
                        <aspxform:XLabel id="XLabel12" runat="server" Font-Size="X-Small" ValueToDisplayText Value text="审批信息"></aspxform:XLabel>
                    </td>
                    <td bgcolor="#f0f0f0" background="#F0F0F0" width="400">
                        <aspxform:XTextBox id="XTextBox2" runat="server" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" XDataBind="company" ValueToDisplayText Value BorderStyle="Dotted" BackColor="#F0F0F0" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox12" runat="server" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" XDataBind="empdept" ValueToDisplayText Value BorderStyle="Dotted" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-RIGHT: medium none" height="47" colspan="2">
                        <aspxform:XCommentsTextBox style="OVERFLOW: hidden" id="XCommentsTextBox1" runat="server" Width="798px" BorderWidth="1px" BorderColor="Gainsboro" Height="45px" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <p align="center">
            <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="800px" BorderWidth="1px" BorderColor="Gainsboro" CssClass="AA"></aspxform:XSignTrace>
        </p>
        <div align="center">
            <div align="right">
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                    <tbody>
                        <tr>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: medium none" height="26" width="51">
                        <div align="left">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" Height="23px" Text="打 印" UseSubmitBehavior="False" HiddenExpress='Global.StepName=="开始"' OnClientClick="XFormPrint(this,'ori=v;zm=87;ml=48;mt=48;mr=48;mb=48;ph=;pf=',true);"></aspxform:XPrintButton>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: medium none" width="745">
                        <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="MemberFullName->company" PositionDisplayType="FullName"></aspxform:XProcessButtonList>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="800">
                        <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.9.1.min.js"></script>
                        <script type="text/javascript">
          document.write('<script type="text/javascript" charset="gb2312"   src="' + rootUrl + 'MyApp/Demo/TaskComment/taskcomment.js"><\/script>');
           </script>
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
    </form>
</body>
</html>
