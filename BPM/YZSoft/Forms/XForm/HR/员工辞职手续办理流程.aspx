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
    </script>
    <style>

   BODY {
	FONT-SIZE: 12px; FONT-FAMILY: verdana
}
TABLE {
	FONT-SIZE: 12px; FONT-FAMILY: verdana; BORDER-COLLAPSE: collapse
}
P {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 12px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; FONT-FAMILY: verdana
}
TD {
	PADDING-RIGHT: 0px; PADDING-LEFT: 2px; PADDING-BOTTOM: 0px
}
TD.NoPadding {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px
}
TD.header {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BACKGROUND: url(~/image/logo.gif) no-repeat
}
INPUT {
	HEIGHT: 20px
}
INPUT.UL {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #33ff33 1px solid
}
.B {
	WIDTH: 80px; hight: 20px:
}
.D {
	hight: 18px
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
.TextBoxPink {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: pink 1px solid
}
.TextBox {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid
}
</style>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="MYHEAD" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="198">
                        <div align="center">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="397" colspan="2">
                        <div align="center">
                            <aspxform:XTextBox id="XTextBox1" runat="server" width="100%" BorderWidth="0px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText Font-Size="Large" Font-Bold="True" HiddenInput="False" Height="35px" TextAlign="Center" Express="javascript('CorporationDiff',company)" XDataBind="HR_Resign_Approval.AppCompany"></aspxform:XTextBox>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="198">
                        <aspxform:XLabel id="XLabel1" runat="server" Value ValueToDisplayText text="部门:HR"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="17">
                        <aspxform:XLabel id="XLabel2" runat="server" Value ValueToDisplayText text="编号：HR40010"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="19">
                        <aspxform:XLabel id="XLabel3" runat="server" Value ValueToDisplayText text="版本：V7"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" colspan="4">
                        <div align="center">
                            <aspxform:XLabel id="XLabel4" runat="server" Value ValueToDisplayText Font-Size="Medium" Font-Bold="True" text="员工离职手续办理"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请选择直属主管" ControlToValidate="XTextBox29">选择直属主管</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请选择交接人" ControlToValidate="XTextBox28">选择交接人</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Height="14px" Display="None" ErrorMessage="请选择部门负责人" ControlToValidate="XTextBox31" Width="130px">选择部门负责人</aspxform:XRequiredFieldValidator>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="803" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30" width="111">
                        <div align="center">
                            <aspxform:XLabel id="XLabel5" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="单号:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="153">
                        <aspxform:XTextBox id="XTextBox2" runat="server" width="100%" BorderWidth="0px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="24px" XDataBind="HR_Resign_Approval.TaskID" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="93">
                        <div align="center">
                            <aspxform:XLabel id="XLabel6" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="审批开始日期:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="153">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" BorderWidth="0px" BorderColor="Gainsboro" Height="26px" XDataBind="HR_Resign_Approval.AppDate" BackColor="#F0F0F0"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="118">
                        <div align="center">
                            <aspxform:XLabel id="XLabel26" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="工号:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="153">
                        <aspxform:XTextBox id="XTextBox11" runat="server" width="100%" BorderWidth="0px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="25px" XDataBind="HR_Resign_Approval.AppAccount" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="29">
                        <div align="center">
                            <aspxform:XLabel id="XLabel7" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="姓名:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XTextBox id="XTextBox24" runat="server" width="100%" BorderWidth="0px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="26px" XDataBind="HR_Resign_Approval.AppName" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="center">
                            <aspxform:XLabel id="XLabel8" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="部门:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XTextBox id="XTextBox25" runat="server" width="100%" BorderWidth="0px" BorderColor="Gainsboro" XDataBind="HR_Resign_Approval.AppDept" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="center">
                            <aspxform:XLabel id="XLabel9" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="职位:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XTextBox id="XTextBox26" runat="server" width="100%" BorderWidth="0px" BorderColor="Gainsboro" XDataBind="HR_Resign_Approval.AppTitle" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                        <div align="center">
                            <aspxform:XLabel id="XLabel10" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="入职日期:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" BorderWidth="0px" BorderColor="Gainsboro" Height="25px" XDataBind="HR_Resign_Approval.HireDate" BackColor="#F0F0F0"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="center">
                            <aspxform:XLabel id="XLabel11" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="提出申请日期:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" BorderWidth="0px" BorderColor="Gainsboro" XDataBind="HR_Resign_Approval.ApplyDate" BackColor="#F0F0F0"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="center">
                            <aspxform:XLabel id="XLabel12" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="离职日期:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" BorderWidth="0px" BorderColor="Gainsboro" Height="22px" XDataBind="HR_Resign_Approval.AppResignDate" BackColor="#F0F0F0"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                        <div align="center">
                            <aspxform:XLabel id="XLabel40" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="交接人姓名:"></aspxform:XLabel>
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Height="20px" Width="16px" PopupWndHeight="-1" PopupWndWidth="-1" UseSubmitBehavior="False" DataMap="DisplayName->HR_Resign_Approval.HandOverMan" Text="..."></aspxform:XSelectUserButton>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XTextBox id="XTextBox28" runat="server" width="100%" BorderWidth="0px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="24px" XDataBind="HR_Resign_Approval.HandOverMan" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="center">
                            <aspxform:XLabel id="XLabel42" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="直属主管:"></aspxform:XLabel>
                            <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Height="20px" Width="16px" PopupWndHeight="-1" PopupWndWidth="-1" UseSubmitBehavior="False" DataMap="DisplayName->HR_Resign_Approval.DirecLeaderName" Text="..."></aspxform:XSelectUserButton>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XTextBox id="XTextBox29" runat="server" width="100%" BorderWidth="0px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="25px" XDataBind="HR_Resign_Approval.DirecLeaderName" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="left">
                            <aspxform:XLabel id="XLabel44" runat="server" Value ValueToDisplayText Font-Size="X-Small" Height="17px" text="部门负责人:" Width="72px"></aspxform:XLabel>
                            <aspxform:XSelectUserButton id="XSelectUserButton3" runat="server" Width="21px" DataMap="DisplayName->HR_Resign_Approval.ManagerName"></aspxform:XSelectUserButton>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="center">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox31" runat="server" width="100%" BorderWidth="0px" BorderColor="#DCDCDC" XDataBind="HR_Resign_Approval.ManagerName" BackColor="#F0F0F0"></aspxform:XTextBox>
                            </div>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="88" width="110">
                        <div align="center">
                            <aspxform:XLabel id="XLabel13" runat="server" Value ValueToDisplayText Font-Size="Small" Font-Bold="True" text="离职原因"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="683">
                        <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" Font-Size="X-Small" Height="72px" XDataBind="HR_Resign_Approval.ResignReason">
                            <asp:ListItem>员工提出解除劳动合同关系，公司已经收到个人的辞职函</asp:ListItem>
                            <asp:ListItem>双方达成一致，解除劳动合同</asp:ListItem>
                            <asp:ListItem>合同到期终止，一方不再续签，另一方已收到合同终止通知</asp:ListItem>
                        </aspxform:XRadioButtonList>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" valign="center" rowspan="5" width="109">
                        <div align="center">
                            <aspxform:XLabel id="XLabel14" runat="server" Value ValueToDisplayText Font-Size="Small" Font-Bold="True" text="工作移交情况"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: medium none" height="24" width="184">
                        <aspxform:XLabel id="XLabel15" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="1、工作交接情况"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="498">
                        <aspxform:XTextBox id="XTextBox23" runat="server" width="10%" BorderWidth="1" BorderColor="#DCDCDC" HiddenInput="True" XDataBind="company"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                        <div align="left">
                            <aspxform:XCheckBoxList id="XCheckBoxList1" runat="server" XDataBind="HR_Resign_Approval.WorkHandover">
                                <asp:ListItem>书面文件、资料已经交接，且与交接清单一致</asp:ListItem>
                                <asp:ListItem>电脑工作资料已经交接，且与交接清单一致</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="44">
                        <p align="left">
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="HR_Resign_Approval.OtherHandover" Text="其他(如SAP操作交接等)"></aspxform:XCheckBox>
                        </p>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XTextBox id="XTextBox4" runat="server" width="494px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="41px" XDataBind="HR_Resign_Approval.OtherHandOverList" BackColor="#F0F0F0" HiddenExpress='HR_Resign_Approval.OtherHandover!="1"' TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32" colspan="2">
                        <aspxform:XLabel id="XLabel16" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="2、交接清单"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="54" colspan="2">
                        <aspxform:XTextBox id="XTextBox3" runat="server" width="100%" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="50px" XDataBind="HR_Resign_Approval.HandOverList" BackColor="#F0F0F0" TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="110">
                            <div align="center">
                                <aspxform:XLabel id="XLabel17" runat="server" Value ValueToDisplayText Font-Size="Small" Font-Bold="True" text="成品仓"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28" width="683">
                            <aspxform:XCheckBox id="XCheckBox2" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.LendThing" Text="没有借物"></aspxform:XCheckBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32">
                            <aspxform:XCheckBox id="XCheckBox3" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.LendException" Text="异常情况(请说明):"></aspxform:XCheckBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="34">
                            <aspxform:XTextBox id="XTextBox5" runat="server" width="100%" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="30px" XDataBind="HR_Resign_Approval.LendExceptionList" BackColor="#F0F0F0" HiddenExpress='HR_Resign_Approval.LendException!="1"' TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="110">
                            <div align="center">
                                <aspxform:XLabel id="XLabel18" runat="server" Value ValueToDisplayText Font-Size="Small" Font-Bold="True" text="办公用品"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="114" width="683">
                            <aspxform:XCheckBoxList id="XCheckBoxList6" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.ReturnThing">
                                <asp:ListItem>钥匙归还</asp:ListItem>
                                <asp:ListItem>书籍归还</asp:ListItem>
                                <asp:ListItem>手机彩铃取消</asp:ListItem>
                                <asp:ListItem>话机归还</asp:ListItem>
                                <asp:ListItem>插线板归还</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                            <aspxform:XCheckBox id="XCheckBox15" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.ReturnThingException" Text="异常情况(请说明):"></aspxform:XCheckBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32">
                            <aspxform:XTextBox id="XTextBox21" runat="server" width="100%" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="28px" XDataBind="HR_Resign_Approval.ReturnExceptionList" BackColor="#F0F0F0" HiddenExpress='HR_Resign_Approval.ReturnThingException!="1"' TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="42" width="109">
                            <div align="center">
                                <aspxform:XLabel id="XLabel38" runat="server" Value ValueToDisplayText Font-Size="Small" Font-Bold="True" text="卡位清理"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="684">
                            <aspxform:XTextBox id="XTextBox22" runat="server" width="100%" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="38px" XDataBind="HR_Resign_Approval.SeatClean" BackColor="#F0F0F0" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="108">
                        <div align="center">
                            <aspxform:XLabel id="XLabel19" runat="server" Value ValueToDisplayText Font-Size="Small" Font-Bold="True" text="样机组手续"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="48" colspan="2">
                        <aspxform:XCheckBoxList id="XCheckBoxList2" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.LendMachine">
                            <asp:ListItem>没有借样机且无损坏</asp:ListItem>
                            <asp:ListItem>没有借设备且无损坏</asp:ListItem>
                        </aspxform:XCheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="30" width="145">
                        <div align="center">
                            <aspxform:XCheckBox id="XCheckBox4" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.LendMachineException" Text="异常情况(请说明):"></aspxform:XCheckBox>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="537">
                        <aspxform:XTextBox id="XTextBox6" runat="server" width="100%" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="24px" XDataBind="HR_Resign_Approval.LendMachineExceptionList" BackColor="#F0F0F0" HiddenExpress='HR_Resign_Approval.LendMachineException!="1"'></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="109">
                        <div align="center">
                            <aspxform:XLabel id="XLabel20" runat="server" Value ValueToDisplayText Font-Size="Small" Font-Bold="True" text="研发部手续"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="44" colspan="2">
                        <aspxform:XCheckBoxList id="XCheckBoxList3" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.LendRDMachine">
                            <asp:ListItem>没有借工具且无损坏</asp:ListItem>
                            <asp:ListItem>没有借设备且无损坏</asp:ListItem>
                        </aspxform:XCheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="31" width="147">
                        <aspxform:XCheckBox id="XCheckBox5" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.RDException" Text="异常情况(请说明):"></aspxform:XCheckBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="534">
                        <aspxform:XTextBox id="XTextBox7" runat="server" width="100%" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="27px" XDataBind="HR_Resign_Approval.RDExceptionList" BackColor="#F0F0F0" HiddenExpress='HR_Resign_Approval.RDException!="1"'></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="29" colspan="2">
                        <aspxform:XCheckBox id="XCheckBox6" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.RDBook" Text="有无图书借阅"></aspxform:XCheckBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="109">
                        <div align="center">
                            <aspxform:XLabel id="XLabel21" runat="server" Value ValueToDisplayText Font-Size="Small" Font-Bold="True" text="办公设施"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="69" colspan="2">
                        <aspxform:XCheckBoxList id="XCheckBoxList4" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.OfficeThing">
                            <asp:ListItem>办公桌椅完好无损</asp:ListItem>
                            <asp:ListItem>拥有的公司钥匙已归还</asp:ListItem>
                            <asp:ListItem>固定资产及低值易耗品</asp:ListItem>
                        </aspxform:XCheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="33" width="160">
                        <aspxform:XCheckBox id="XCheckBox7" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.OfficeException" Text="异常情况(请说明):"></aspxform:XCheckBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="521">
                        <aspxform:XTextBox id="XTextBox8" runat="server" width="100%" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="26px" XDataBind="HR_Resign_Approval.OfficeExceptionList" BackColor="#F0F0F0" HiddenExpress='HR_Resign_Approval.OfficeException!="1"'></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="110">
                        <div align="center">
                            <aspxform:XLabel id="XLabel22" runat="server" Value ValueToDisplayText Font-Size="Small" Font-Bold="True" text="学习基金"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="45" colspan="2">
                        <aspxform:XCheckBoxList id="XCheckBoxList5" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.FundBookSAP">
                            <asp:ListItem>无图书借阅</asp:ListItem>
                            <asp:ListItem>SAP操作交接</asp:ListItem>
                        </aspxform:XCheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="197">
                        <aspxform:XCheckBox id="XCheckBox8" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.Train" Text="是否涉及培训费用,合计:"></aspxform:XCheckBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="483">
                        <aspxform:XTextBox id="XTextBox9" runat="server" width="50%" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="23px" XDataBind="HR_Resign_Approval.TrainMoney" BackColor="#F0F0F0" HiddenExpress='HR_Resign_Approval.Train!="1"'></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="5" width="110">
                        <div align="center">
                            <aspxform:XLabel id="XLabel29" runat="server" Value ValueToDisplayText Font-Size="Small" Font-Bold="True" text="人事手续"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23" colspan="3">
                        <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.Card" RepeatDirection="Horizontal">
                            <asp:ListItem>考勤卡已还</asp:ListItem>
                            <asp:ListItem>未还</asp:ListItem>
                            <asp:ListItem>丢失或损坏</asp:ListItem>
                        </aspxform:XRadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="175">
                        <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.Record" RepeatDirection="Horizontal">
                            <asp:ListItem>无档案</asp:ListItem>
                            <asp:ListItem>已办理转出</asp:ListItem>
                        </aspxform:XRadioButtonList>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="151">
                        <div align="center">
                            <aspxform:XCheckBox id="XCheckBox16" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.RecordOther" Text="其它"></aspxform:XCheckBox>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="351">
                        <aspxform:XTextBox id="XTextBox13" runat="server" width="175px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="23px" XDataBind="HR_Resign_Approval.RecordOtherList" HiddenExpress='HR_Resign_Approval.RecordOther!="1"'></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                        <aspxform:XRadioButton id="XRadioButton2" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.NoRecordFare" Text="不涉及户籍档案费"></aspxform:XRadioButton>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="center">
                            <aspxform:XCheckBox id="XCheckBox17" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.RecordFareCount" Text="户籍档案费用合计:"></aspxform:XCheckBox>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XTextBox id="XTextBox14" runat="server" width="50%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="HR_Resign_Approval.RecordFareMoeny" BackColor="#F0F0F0" HiddenExpress='HR_Resign_Approval.RecordFareCount!="1"'></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                        <aspxform:XRadioButton id="XRadioButton4" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.SocialStop" Text="已办理社保停交手续"></aspxform:XRadioButton>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="center">
                            <aspxform:XCheckBox id="XCheckBox18" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.SocialCount" Text="扣社保费用合计:"></aspxform:XCheckBox>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XTextBox id="XTextBox15" runat="server" width="50%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="HR_Resign_Approval.SocialMoney" BackColor="#F0F0F0" HiddenExpress='HR_Resign_Approval.SocialCount!="1"'></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22" colspan="3">
                        <aspxform:XRadioButton id="XRadioButton6" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.HouseFare" Text="已办理公积金停交手续"></aspxform:XRadioButton>
                    </td>
                </tr>
            </tbody>
        </table>
        <p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="109">
                            <div align="center">
                                <aspxform:XLabel id="XLabel46" runat="server" Value ValueToDisplayText Font-Size="Small" Font-Bold="True" text="离职审计意见"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="99">
                            <aspxform:XLabel id="XLabel47" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="工资结算日为:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67">
                            <aspxform:XTextBox id="XTextBox33" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="HR_Resign_Approval.SalaryYear" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="28">
                            <div align="center">
                                <aspxform:XLabel id="XLabel48" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="年"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="91">
                            <aspxform:XTextBox id="XTextBox34" runat="server" width="83px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" XDataBind="HR_Resign_Approval.SalaryMonth" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="22">
                            <div align="center">
                                <aspxform:XLabel id="XLabel49" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="月"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="89">
                            <aspxform:XTextBox id="XTextBox35" runat="server" width="86px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" XDataBind="HR_Resign_Approval.SalaryDay" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="270">
                            <aspxform:XLabel id="XLabel50" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="日"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="5" width="110">
                            <div align="center">
                                <aspxform:XLabel id="XLabel33" runat="server" Value ValueToDisplayText Font-Size="Small" Font-Bold="True" text="财务手续"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="112">
                            <aspxform:XLabel id="XLabel34" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="1、借支查验情况"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28" width="568">
                            <aspxform:XCheckBox id="XCheckBox11" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.NoLendMoney" Text="无借款和欠款"></aspxform:XCheckBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XCheckBox id="XCheckBox12" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.LendMoney" Text="有借款和欠款,列举"></aspxform:XCheckBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="41">
                            <aspxform:XTextBox id="XTextBox17" runat="server" width="100%" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="38px" XDataBind="HR_Resign_Approval.LendMoneyList" BackColor="#F0F0F0" HiddenExpress='HR_Resign_Approval.LendMoney!="1"' TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="21" colspan="2">
                            <aspxform:XLabel id="XLabel35" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="2、备注(视需要):"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="42" colspan="2">
                            <aspxform:XTextBox id="XTextBox18" runat="server" width="100%" BorderWidth="1px" BorderColor="#D1DEDF" Max="0" Min="0" Value ValueToDisplayText HiddenInput="False" Height="38px" XDataBind="HR_Resign_Approval.LendMoneyMark" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="5" width="110">
                            <div align="center">
                                <aspxform:XLabel id="XLabel23" runat="server" Value ValueToDisplayText Font-Size="Small" Font-Bold="True" text="IT手续"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="42" rowspan="2" width="144">
                            <div align="center">
                                <aspxform:XLabel id="XLabel24" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="网络手续"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="536">
                            <aspxform:XCheckBoxList id="XCheckBoxList8" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.NetAccount">
                                <asp:ListItem>已提交集团网络账号注销单</asp:ListItem>
                                <asp:ListItem>已通知取消内部网及服务器登录权限</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3">
                            <div align="center">
                                <aspxform:XLabel id="XLabel25" runat="server" Value ValueToDisplayText Font-Size="X-Small" text="电脑状态"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                            <aspxform:XCheckBox id="XCheckBox9" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.PCStatus" Text="完好无损"></aspxform:XCheckBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="21">
                            <aspxform:XCheckBox id="XCheckBox10" runat="server" Font-Size="X-Small" XDataBind="HR_Resign_Approval.PCException" Text="异常情况(请说明):"></aspxform:XCheckBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="40">
                            <aspxform:XTextBox id="XTextBox10" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" XDataBind="HR_Resign_Approval.PCExceptionList" HiddenExpress='HR_Resign_Approval.PCException!="1"' TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center" height="144">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="110">
                        <div align="center">
                            <aspxform:XLabel id="XLabel30" runat="server" Value ValueToDisplayText Font-Size="Small" Font-Bold="True" text="员工声明"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="96" colspan="4">
                        <aspxform:XTextBox id="XTextBox16" runat="server" width="100%" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText Font-Size="Small" HiddenInput="False" Height="89px" BackColor="#F0F0F0" TextMode="MultiLine" BorderStyle="None" ReadOnly="True">   本人已完成离职手续，并确认以上各项签字属实。本人明白，随着本离职手续的办结，所有存在于本人和公司的基于劳动关系存续期间产生的权利义务均告终止，相互间放弃一切追究的权利。</aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: 1px" height="49" width="315">
                        <div align="right">
                            <aspxform:XLabel id="XLabel31" runat="server" Value ValueToDisplayText Font-Size="Small" text="离职员工签字:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="97">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="163">
                        <div align="center">
                            <aspxform:XLabel id="XLabel32" runat="server" Value ValueToDisplayText Font-Size="Small" text="日期:"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="102">
                    </td>
                </tr>
            </tbody>
        </table>
        <p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="105" rowspan="2" width="798">
                            <aspxform:XTextBox id="XTextBox20" runat="server" width="100%" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Value ValueToDisplayText Font-Size="Small" HiddenInput="False" Height="98px" BackColor="#F0F0F0" TextMode="MultiLine" ReadOnly="True">   注意：根据入职时双方的约定，你在离职之后：
   1.继续负有保守公司商业秘密的义务，至公司正式通知你解除保密义务之时；
   2.负有竟业禁止的义务，从离职之日起_____年内不得在与公司存在竞争关系的企业担任任何职务，包括股东、合伙人、董事、监事、经理、代理人、顾问等等，也不得从事任何其他对公司构成竞争的行为。
   如违反以上义务，须赔偿由此给公司造成的损害；构成犯罪的，公司将移送司法机关追究刑事责任。</aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: medium none" height="22" width="107">
                            <div align="center">
                                <aspxform:XLabel id="XLabel39" runat="server" Value ValueToDisplayText Font-Size="X-Small" Font-Bold="False" text="审批信息"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="687">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox2" runat="server" width="100%" BorderWidth="1" BorderColor="#D1DEDF" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <div align="center">
            <aspxform:XSignTrace id="XSignTrace1" runat="server" BorderWidth="1" BorderColor="#D1DEDF" Width="800px" CssClass="AA"></aspxform:XSignTrace>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: medium none" height="40" width="52">
                            <div align="center">
                                <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress='Global.StepName=="开始"'></aspxform:XPrintButton>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="742">
                            <div align="left">
                                <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" Height="24px" Width="350px" DataMap="MemberFullName->company" PositionDisplayType="FullName"></aspxform:XProcessButtonList>
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
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="800">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
