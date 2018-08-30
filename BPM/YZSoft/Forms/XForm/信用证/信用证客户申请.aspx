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
	BORDER-RIGHT: #d1dedf 1px solid; FONT-WEIGHT: bold; FONT-SIZE: 13px; BORDER-LEFT: #000000 0px solid; COLOR: #004e98; BACKGROUND-COLOR: #d1dedf
}
.MYHEAD2 {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; FONT-WEIGHT: bold; FONT-SIZE: 12px; BORDER-LEFT: #000000 1px solid; COLOR: #004e98; BACKGROUND-COLOR: #d1dedf
}
.MYTABLE {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 0px solid
}
.MYTABLE2 {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid
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
	BORDER-RIGHT: #ffffff 0px solid; BORDER-TOP: #ffffff 0px solid; OVERFLOW-Y: visible; BACKGROUND: #ffffff; OVERFLOW: hidden; BORDER-LEFT: #ffffff 0px solid; BORDER-BOTTOM: #ffb3a7 0px solid
}
</style>
</head>
<body>
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
                            <asp:Label id="Label1" runat="server" text="信用证结算方式及非数据库开证行结算的申请" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Insert content here -->
        <div align="center">
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
                <tbody>
                    <tr>
                        <td width="70">
                            <p align="right">
                                <aspxform:XLabel id="XLabel43" runat="server" text="申  请  人："></aspxform:XLabel>
                            </p>
                        </td>
                        <td height="20" width="110">
                            <aspxform:XTextBox id="XTextBox44" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="LC_Customer.AppHRName" Width="80px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="LC_Customer.AppHRID" Width="20px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td width="71">
                            <p align="right">
                                <aspxform:XLabel id="XLabel45" runat="server" text="申请日期：" Height="14px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="123">
                            <aspxform:XTextBox id="XTextBox45" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="LC_Customer.AppDate" Width="120px"></aspxform:XTextBox>
                        </td>
                        <td width="60">
                            <p align="right">
                                流水号：
                            </p>
                        </td>
                        <td width="120">
                            <aspxform:XTextBox id="XTextBox46" runat="server" ReadOnly="True" DisableBehavior="ReadOnly" XDataBind="LC_Customer.AppSN" Width="120px"></aspxform:XTextBox>
                        </td>
                        <td width="60">
                            <p align="right">
                                公&nbsp; 司：
                            </p>
                        </td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="LC_Customer.CompanyName" Width="100px" ForeColor="Blue">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>创维数字</asp:ListItem>
                                <asp:ListItem>创维无线</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="RFCGS" runat="server" ControlToValidate="XDropDownList2" ErrorMessage="请选择公司" Display="None"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="28" width="90">
                            <p align="right">
                                客户名称：
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="LC_Customer.CustomerName" Width="300px" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton1" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCustomer.aspx" DataMap="Col1->LC_Customer.CustomerName" HiddenExpress="Global.StepName!='开始'"></aspxform:XCustomBrowserButton>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XTextBox1" ErrorMessage="请填写客户名称！" Display="None"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                国&nbsp;&nbsp;&nbsp;&nbsp; 家：
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XTextBox id="XTextBox2" runat="server" ReadOnly="True" XDataBind="LC_Customer.Country" Width="300px" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px" NavigateUrl="~\FormSupport\DataBrowser.aspx" DataMap="City->LC_Customer.Country" XDataSource="TableName:Fin_R_City;Filter:Country->var1" DisplayColumns="City:国家"></aspxform:XDataBrowserButton>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XTextBox2" ErrorMessage="请填写国家！" Display="None"></aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="var1" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1">境外</aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                银行名称：
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="LC_Customer.BankName" Width="300px" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XTextBox3" ErrorMessage="请填写银行名称！" Display="None"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                SWIFT号码：
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="LC_Customer.SWIFT" Width="300px" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XTextBox4" ErrorMessage="请填写SWIFT！" Display="None"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                付款方式：
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="LC_Customer.Paytype" Width="300px" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XTextBox5" ErrorMessage="请填写付款方式！" Display="None"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress="Global.StepName=='开始'">
                <tbody>
                    <tr>
                        <td height="28">
                            <p align="right">
                                财务评估：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="LC_Customer.GradeNote" Width="500px" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XTextBox6" ErrorMessage="请填写财务评估！" Display="None" DisableExpress="Global.StepName!='财务人员'"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                评估时间：
                            </p>
                        </td>
                        <td>
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="LC_Customer.Teval" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XDateTimePicker1" ErrorMessage="请填写评估时间！" Display="None" DisableExpress="Global.StepName!='财务人员'"></aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="798">
                <tbody>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="17" width="7600">
                            审批意见</td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XCommentsTextBox id="XCommentsTextBox2" runat="server" Width="100%" BorderColor="Gainsboro" BorderWidth="1px" Height="40px" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XSignTrace id="XSignTrace2" runat="server" Width="100%" BorderColor="Transparent" BorderWidth="0px" CssClass="AA"></aspxform:XSignTrace>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td width="220">
                            <p align="right">
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
