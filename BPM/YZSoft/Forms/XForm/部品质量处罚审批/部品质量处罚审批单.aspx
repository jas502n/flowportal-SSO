<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
    void XDropDownList2_SelectedIndexChanged(object sender, EventArgs e) {
    }

</script>
<html xmlns:xform="xmlns:xform">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <title>BPM Form</title> <script language="javascript" type="text/javascript">
    function CheckConfirm(sender,args){
    var ddl = document.getElementById("XDropDownList2");
    var result=ddl.options[ddl.selectedIndex].value;

    if (result=="不是")
    {
        var result=confirm("确认不是厂家问题吗?");
	   args.IsValid=result;
	}
    }
     </script>
    <style>BODY {
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
.TextBox {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: silver 1px solid
}
.TextBoxPink {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: pink 1px solid
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
TABLE.SignHistory {
	BORDER-RIGHT: #dcdcdc 1px solid; BORDER-TOP: #dcdcdc 1px solid; BORDER-LEFT: #dcdcdc 1px solid; BORDER-BOTTOM: #dcdcdc 1px solid; BORDER-COLLAPSE: collapse
}
TABLE.SignHistory TD.Col1 {
	PADDING-RIGHT: 3px; WIDTH: 30%; COLOR: gray; BACKGROUND-COLOR: #ffffff; TEXT-ALIGN: right
}
TABLE.SignHistory TD.Col2 {
	PADDING-RIGHT: 20px; PADDING-LEFT: 3px; FONT-WEIGHT: bold; WIDTH: 25%; BACKGROUND-COLOR: #f0f0f0; TEXT-ALIGN: right
}
TABLE.SignHistory TD.Col3 {
	PADDING-RIGHT: 3px; WIDTH: 15%; COLOR: gray; BACKGROUND-COLOR: #ffffff; TEXT-ALIGN: right
}
TABLE.SignHistory TD.Col4 {
	PADDING-RIGHT: 20px; PADDING-LEFT: 3px; FONT-WEIGHT: bold; WIDTH: 25%; BACKGROUND-COLOR: #f0f0f0; TEXT-ALIGN: right
}
TABLE.SignHistory INPUT.Acc {
	BORDER-RIGHT: #dcdcdc 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #dcdcdc 1px solid; PADDING-LEFT: 3px; BORDER-LEFT: #dcdcdc 1px solid; WIDTH: 100%; BORDER-BOTTOM: #dcdcdc 1px solid
}
TABLE.SignHistory INPUT.Date {
	BORDER-RIGHT: #dcdcdc 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #dcdcdc 1px solid; PADDING-LEFT: 3px; BORDER-LEFT: #dcdcdc 1px solid; WIDTH: 100%; BORDER-BOTTOM: #dcdcdc 1px solid
}
.a {
	WIDTH: 80px; hight: 20px
}
.b {
	hight: 20px
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
.MYTABLE {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 0px solid
}
.BOXCSS {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #ffb3a7 1px solid;OVERFLOW: hidden
}
.MYHEAD {
	BORDER-TOP: #d1dedf 1px solid; FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: #004e98; BACKGROUND-COLOR: #d1dedf
}
.TextBoxPink {
	BORDER-BOTTOM: pink 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none;OVERFLOW: hidden
}
</style>
    <style type="text/css" href="~/Style/Skyworth.css" rel="stylesheet"></style>
</head>
<body>
    <form runat="server">
        <p align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" rowspan="3" width="131">
                            <asp:Image id="Image2" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" rowspan="3" width="544" align="middle">
                            <aspxform:XLabel id="XLabel18" runat="server" Font-Bold="True" Font-Size="Medium" text="深圳创维数字技术股份有限公司" Font-Names="Tahoma"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" height="25" width="83" align="right">
                            <p>
                                <aspxform:XLabel id="XLabel47" runat="server" text="版本:" Value ValueToDisplayText></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" width="79">
                            <aspxform:XLabel id="XLabel49" runat="server" text="V1.0" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="20" align="right">
                            <p>
                                <aspxform:XLabel id="XLabel46" runat="server" text="发布日期:" Value ValueToDisplayText></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                            <aspxform:XLabel id="XLabel48" runat="server" text="2014/6/4" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="21" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel19" runat="server" Value ValueToDisplayText XDataBind="QOP_Applicant.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="36" colspan="4">
                            <div align="center">
                                <div align="left">
                                </div>
                                <div align="center">
                                    <aspxform:XLabel id="XLabel13" runat="server" Font-Bold="True" Font-Size="Medium" text="部品质量处罚审批单" Font-Names="Tahoma" Value ValueToDisplayText Height="23px"></aspxform:XLabel>
                                </div>
                                <div align="center">
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="mytable" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: 1px solid" height="25" width="81" colspan="6" align="right">
                            <div align="left">
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" width="71">
                            <div align="center">
                                <aspxform:XLabel id="XLabel16" runat="server" text="申请人:"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: white 1px solid" width="206">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="QOP_Applicant.AppName" NormalCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro" HiddenInput="False" width="73px" Max="0" Min="0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: white 1px solid" width="105">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="QOP_Applicant.Dept" BorderColor="#DCDCDC" width="10%" BorderWidth="1px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" width="114">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="QOP_Applicant.HRID" BorderColor="#DCDCDC" width="10%" BorderWidth="1"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" width="63">
                            <div align="center">
                                <aspxform:XLabel id="XLabel1" runat="server" text="申请日期:" Value ValueToDisplayText Height="16px" Width="54px"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" width="191">
                            <div align="left">
                                <aspxform:XTextBox id="XTextBox17" runat="server" Value ValueToDisplayText XDataBind="QOP_Applicant.AppDate" CssClass="TextBox" BorderColor="Gainsboro" HiddenInput="False" width="151px" Max="0" Min="0" ReadOnly="True"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="848" colspan="2">
                            申请处罚信息 
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td width="153">
                            <p align="right">
                                反馈来源： 
                            </p>
                        </td>
                        <td colspan="8">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="QOP_Applicant.FeedbackSource">
                                <asp:ListItem>售后</asp:ListItem>
                                <asp:ListItem>产线</asp:ListItem>
                                <asp:ListItem>来料检验</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="客户不能为空" ControlToValidate="XTextBox8" DisableExpress="QOP_Applicant.FeedbackSource=='来料检验'">客户</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="订单号不能为空" ControlToValidate="XTextBox1" DisableExpress="QOP_Applicant.FeedbackSource=='来料检验'">订单</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="机型不能为空" ControlToValidate="XTextBox2" DisableExpress="QOP_Applicant.FeedbackSource=='来料检验'">机型</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="不良描述不能为空" ControlToValidate="XTextBox6">描述</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="期望完成日期不能为空" ControlToValidate="XDateTimePicker1">日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="物料小类不能为空" ControlToValidate="XTextBox3" DisableExpress="QOP_Applicant.FeedbackSource!='来料检验'">小类</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" Display="None" ErrorMessage="物料编号不能为空" ControlToValidate="XTextBox4" DisableExpress="QOP_Applicant.FeedbackSource!='来料检验'">编号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" Display="None" ErrorMessage="厂家不能为空" ControlToValidate="XTextBox5" DisableExpress="QOP_Applicant.FeedbackSource!='来料检验'">厂家</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr hiddenexpress='QOP_Applicant.FeedbackSource=="来料检验"'>
                        <td align="right">
                            客户：</td>
                        <td width="205" colspan="4">
                            <aspxform:XTextBox id="XTextBox8" runat="server" Value ValueToDisplayText XDataBind="QOP_Applicant.Customer" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="164px"></aspxform:XTextBox>
                        </td>
                        <td width="67" align="right">
                            订单号：</td>
                        <td width="157">
                            <aspxform:XTextBox id="XTextBox1" runat="server" Value ValueToDisplayText XDataBind="QOP_Applicant.OrderNo" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="137px"></aspxform:XTextBox>
                        </td>
                        <td width="59" align="right">
                            机型：</td>
                        <td width="193">
                            <aspxform:XTextBox id="XTextBox2" runat="server" Value ValueToDisplayText XDataBind="QOP_Applicant.Model" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="156px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress='QOP_Applicant.FeedbackSource!="来料检验"'>
                        <td align="right">
                            物料小类：</td>
                        <td colspan="4">
                            <aspxform:XTextBox id="XTextBox3" runat="server" Value ValueToDisplayText XDataBind="QOP_Applicant.SmallClassName" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="165px"></aspxform:XTextBox>
                        </td>
                        <td align="right">
                            物料编号：</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox4" runat="server" Value ValueToDisplayText XDataBind="QOP_Applicant.MaterialNumber" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="134px"></aspxform:XTextBox>
                        </td>
                        <td align="right">
                            厂家：</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox5" runat="server" Value ValueToDisplayText XDataBind="QOP_Applicant.Factory" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="164px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            部品不良具体描述：</td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="QOP_Applicant.Description" Height="28px" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="100%" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            附件：</td>
                        <td colspan="8">
                            <p>
                                <font color="red">上传损失索赔函,异常反馈单等</font> 
                                <aspxform:XAttachments id="XAttachments1" runat="server" XDataBind="QOP_Applicant.DAttachments" width="100%"></aspxform:XAttachments>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" align="right">
                            期望完成日期：</td>
                        <td colspan="8">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="QOP_Applicant.ExpectedCDate" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" height="73" hiddenexpress="Global.StepName=='开始'||Global.StepName=='部门领导审批'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" width="485" colspan="4">
                            <aspxform:XLabel id="XLabel41" runat="server" text="SQE:" Value ValueToDisplayText></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" Display="None" ErrorMessage="SQE不能为空" ControlToValidate="XTextBox50" ValidationGroup="SQE">SQE</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="361">
                            <div align="right">
                                <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" HiddenExpress="Global.StepName!='部品质量负责人审批'" AppendMode="Append" Text="选择SQE" PopupWndHeight="500" PopupWndX="100" PopupWndY="100" UseSubmitBehavior="False" NavigateUrl="~\FormSupport\SelUser.aspx" PopupWndWidth="800" DataMap="Account->QOP_SQEInfo.SQEHRID;DisplayName->QOP_SQEInfo.SQEName;Department->QOP_SQEInfo.Dept"></aspxform:XSelectUserButton>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="27">
                            <div align="center">
                                <aspxform:XLabel id="XLabel74" runat="server" text="序号"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="218">
                            SQE工号</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="232">
                            <div align="center">
                                <aspxform:XLabel id="XLabel75" runat="server" text="SQE姓名" Value ValueToDisplayText></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <div align="center">
                                <aspxform:XLabel id="XLabel76" runat="server" text="SQE部门" Value ValueToDisplayText></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XGridLineNo id="XGridLineNo6" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Width="24px" BackColor="#F0F0F0" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox50" runat="server" Value ValueToDisplayText XDataBind="QOP_SQEInfo.SQEHRID" BorderColor="Gainsboro" HiddenInput="False" width="216px" Max="0" Min="0" BorderWidth="1px" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox51" runat="server" Value ValueToDisplayText XDataBind="QOP_SQEInfo.SQEName" BorderColor="Gainsboro" HiddenInput="False" width="178px" Max="0" Min="0" ReadOnly="True" BorderWidth="1px" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="QOP_SQEInfo.Dept" BorderColor="Gainsboro" HiddenInput="False" width="174px" Max="0" Min="0" ReadOnly="True" BorderWidth="1px" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="HD_Applicant_Designer_Factory.FullName" BorderColor="#DCDCDC" width="10px" BorderWidth="1" HiddenExpress="1" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="851" hiddenexpress="Global.StepName=='开始'||Global.StepName=='部门领导审批'||Global.StepName=='部品质量负责人审批'">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="18" colspan="9">
                            SQE事故分析和责任判定</td>
                    </tr>
                    <tr>
                        <td height="28" width="163">
                            <p align="right">
                                是否为厂家问题:&nbsp;&nbsp; 
                            </p>
                        </td>
                        <td colspan="8">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="QOP_Applicant_SQE.ProducerResponsibility" OnSelectedIndexChanged="XDropDownList2_SelectedIndexChanged">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>不是</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" Display="None" ErrorMessage="责任厂家" ControlToValidate="XTextBox9" DisableExpress="QOP_Applicant_SQE.ProducerResponsibility=='不是'" ValidationGroup="V1">厂家</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" Display="None" ErrorMessage="原因分析不能为空" ControlToValidate="XTextBox7" ValidationGroup="V1">原因分析</aspxform:XRequiredFieldValidator>
                            <aspxform:XCustomValidator id="XCustomValidator1" runat="server" Display="None" ErrorMessage="请确认后再提交。" ControlToValidate="XDropDownList2" ValidationGroup="V1" ClientValidationFunction="CheckConfirm">厂家责任</aspxform:XCustomValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="选择是否有造成损失" ControlToValidate="XDropDownList3" ValidationGroup="V1">损失</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr hiddenexpress='QOP_Applicant_SQE.ProducerResponsibility!="是"'>
                        <td height="23">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 责任厂家：</td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox9" runat="server" Value ValueToDisplayText XDataBind="QOP_Applicant_SQE.ResponsibilityFactory" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="326px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="31">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 原因分析：</td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox7" runat="server" Value ValueToDisplayText XDataBind="QOP_Applicant_SQE.Reason" Height="28px" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="323px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress='QOP_Applicant_SQE.ProducerResponsibility!="是"'>
                        <td height="24">
                            &nbsp;&nbsp;&nbsp;&nbsp; 是否有造成损失：</td>
                        <td width="96" colspan="7">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="QOP_Applicant_SQE.LossYN">
                                <asp:ListItem>有</asp:ListItem>
                                <asp:ListItem>没有</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td width="584">
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="QOP_Applicant_SQE.LossBC" HiddenExpress='QOP_Applicant_SQE.LossYN!="有"' Text="收集本厂生产损失"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="QOP_Applicant_SQE.LossWC" HiddenExpress='QOP_Applicant_SQE.LossYN!="有"' Text="收集外发厂生产损失"></aspxform:XCheckBox>
                            <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="QOP_Applicant_SQE.LossSC" HiddenExpress='QOP_Applicant_SQE.LossYN!="有"' Text="收集市场损失"></aspxform:XCheckBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
        </div>
        <div align="center">
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='QOP_Applicant_SQE.LossBC != "1"'>
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="848" colspan="2">
                            收集本厂生产损失</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850" hiddenexpress='QOP_Applicant_SQE.LossBC != "1"'>
                <tbody>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                工时损失费用（元）： 
                            </p>
                        </td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="QOP_BenChangLost.WorkingHoursLost" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" align="right">
                            辅料损失费用（元）：</td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="QOP_BenChangLost.AccessoriesLost" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" align="right">
                            其他费用（元）：</td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="QOP_BenChangLost.OrtherLost" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" align="right">
                            附件：</td>
                        <td colspan="8">
                            <aspxform:XAttachments id="XAttachments3" runat="server" XDataBind="QOP_BenChangLost.Attachments" width="100%" FileTypes="*.PDF|"></aspxform:XAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='QOP_Applicant_SQE.LossWC != "1"'>
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="848" colspan="2">
                            收集外发厂生产损失</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850" hiddenexpress='QOP_Applicant_SQE.LossWC != "1"'>
                <tbody>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                工时损失费用（元）： 
                            </p>
                        </td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="QOP_WaiFaChangLost.WorkingHoursLost" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" align="right">
                            辅料损失费用（元）：</td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="QOP_WaiFaChangLost.AccessoriesLost" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" align="right">
                            其他费用（元）：</td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="QOP_WaiFaChangLost.OrtherLost" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" align="right">
                            附件：</td>
                        <td colspan="8">
                            <aspxform:XAttachments id="XAttachments4" runat="server" XDataBind="QOP_WaiFaChangLost.Attachments" width="100%"></aspxform:XAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='QOP_Applicant_SQE.LossSC != "1"'>
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="848" colspan="2">
                            收集市场损失</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850" hiddenexpress='QOP_Applicant_SQE.LossSC != "1"'>
                <tbody>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                工时损失费用（元）： 
                            </p>
                        </td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="QOP_ShiChangLost.WorkingHoursLost" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" align="right">
                            辅料损失费用（元）：</td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="QOP_ShiChangLost.AccessoriesLost" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" align="right">
                            其他费用（元）：</td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="QOP_ShiChangLost.OrtherLost" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" align="right">
                            附件：</td>
                        <td colspan="8">
                            <aspxform:XAttachments id="XAttachments5" runat="server" XDataBind="QOP_ShiChangLost.Attachments" width="100%"></aspxform:XAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850" align="center" hiddenexpress="Global.StepName=='开始'||Global.StepName=='部门领导审批'||Global.StepName=='部品质量负责人审批'||Global.StepName=='SQE事故分析判断'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px groove; BORDER-LEFT: #d1dedf 1px groove; BORDER-TOP: #d1dedf 1px groove; BORDER-RIGHT: #d1dedf 1px groove" class="MYHEAD" height="19" colspan="9">
                            <font size="2"><strong>SQE处理方案</strong></font></td>
                    </tr>
                    <tr>
                        <td style="BORDER-TOP: medium none" height="32" width="106">
                            <p align="right">
                                是需要冻结贷款： 
                            </p>
                        </td>
                        <td style="BORDER-TOP: medium none" width="743" colspan="8">
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="QOP_Applicant_SQE.FrozenLoanYN">
                                <asp:ListItem>需要</asp:ListItem>
                                <asp:ListItem Selected="True">不需要</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" Display="None" ErrorMessage="冻结货款必须上次附件" ControlToValidate="XAttachments8" DisableExpress='QOP_Applicant_SQE.FrozenLoanYN !="需要"' ValidationGroup="V2">冻结货款必须上次附件</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" Display="None" ErrorMessage="是否需要冻结货款" ControlToValidate="XDropDownList5" DisableExpress="QOP_Applicant_SQE.ProducerResponsibility=='不是'" ValidationGroup="V2">冻结</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" Display="None" ErrorMessage="冻结金额不能为空" ControlToValidate="XTextBox27" DisableExpress="QOP_Applicant_SQE.FrozenLoanYN=='不需要'" ValidationGroup="V2">金额</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <!--<tr hiddenexpress='QOP_Applicant_SQE.FrozenLoanYN=="不需要"'> -->
                    <tr hiddenexpress='QOP_Applicant_SQE.FrozenLoanYN!="需要"'>
                        <td height="26" align="right">
                            冻结贷款金额：</td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="QOP_Applicant_SQE.FrozenLoan" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <!--<tr hiddenexpress='QOP_Applicant_SQE.FrozenLoanYN=="不需要"'> -->
                    <tr>
                        <td height="65" align="right">
                            附件（贷款冻结申请单）：</td>
                        <td colspan="8">
                            <aspxform:XAttachments id="XAttachments8" runat="server" XDataBind="QOP_Applicant_SQE.FLAttachments" width="678px" MaximumFileSize></aspxform:XAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName=='开始'||Global.StepName=='部门领导审批'||Global.StepName=='部品质量负责人审批'||Global.StepName=='SQE事故分析判断'||Global.StepName=='SQE处理方案'||Global.StepName=='采购部审核货款冻结'||Global.StepName=='财务执行货款冻结'">
                <tbody>
                    <tr>
                        <td class="myhead" height="22" colspan="9">
                            <font size="2">最终处理方案</font> 
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="必须上传处理附件" ControlToValidate="XAttachments6" ValidationGroup="V3">附件</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                损失索赔金额： 
                            </p>
                        </td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="QOP_FinalPlan.ClaimAmount" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                质量处罚金额： 
                            </p>
                        </td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="QOP_FinalPlan.FineAmount" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                其他： 
                            </p>
                        </td>
                        <td colspan="8">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="QOP_FinalPlan.Other" NormalCssClass="BOXCSS" CssClass="BOXCSS" HiddenInput="False" Max="0" Min="0" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                附件（部品不良处理函）： 
                            </p>
                        </td>
                        <td colspan="8">
                            <aspxform:XAttachments id="XAttachments6" runat="server" XDataBind="QOP_FinalPlan.Atttachments" width="100%" FileTypes="*.doc;*.docx;*.pdf;*.xlsx;*.xls"></aspxform:XAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName=='开始'||Global.StepName=='部门领导审批'||Global.StepName=='部品质量负责人审批'||Global.StepName=='SQE事故分析判断'||Global.StepName=='SQE处理方案'||Global.StepName=='采购部审核货款冻结'||Global.StepName=='财务执行货款冻结'||Global.StepName=='质量部审核'||Global.StepName=='采购部审核'||Global.StepName=='最终处理方案'">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="21" colspan="9">
                            <font size="2">供应商确认回函</font> 
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="必须上传确认回函附件" ControlToValidate="XAttachments7" ValidationGroup="供应商回函">附件1</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                附件： 
                            </p>
                        </td>
                        <td colspan="8">
                            <aspxform:XAttachments id="XAttachments7" runat="server" XDataBind="QOP_Applicant.ReplyAttachments" width="100%" FileTypes="*.jpg;*.pdf"></aspxform:XAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                期望完成日期： 
                            </p>
                        </td>
                        <td colspan="8">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="QOP_Applicant.ExpectedFDate" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="848" colspan="2">
                            审批信息</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="856" align="center" height="240">
                <tbody>
                    <tr>
                        <td height="55" width="854" colspan="6">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="Gainsboro" width="845px" BorderWidth="1px" TextMode="MultiLine" Rows="3" PrintOut="False"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="112" colspan="6">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" Height="111px" CssClass="AA" BorderColor="Gainsboro" BorderWidth="1px" Width="850px"></aspxform:XSignTrace>
                        </td>
                    </tr>
                    <tr>
                        <td height="41" colspan="6">
                            <table width="850">
                                <tbody>
                                    <tr>
                                        <td height="25" width="240" align="right">
                                            <aspxform:XPrintButton id="XPrintButton1" runat="server" Height="20px" Width="80px" HiddenExpress="Global.StepName =='开始'" PageFooterFormat="提交人:________部门负责人:________初审人:________电子流检查:________总裁审批:________" PageHeaderFormat="\t"></aspxform:XPrintButton>
                                        </td>
                                        <td width="606">
                                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" Height="24px" Width="350px" DataMap="Department->QOP_Applicant.Dept" DorpDownListCssClass="b" SystemBtnCssClass="a" ProcessBtnCssClass="a"></aspxform:XProcessButtonList>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <table width="850">
                                <tbody>
                                    <tr>
                                        <td align="right">
                                        </td>
                                        <td width="120" align="left">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
