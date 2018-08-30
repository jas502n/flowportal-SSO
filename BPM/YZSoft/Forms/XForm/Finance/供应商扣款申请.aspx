<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform="xmlns:xform">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <title>BPM Form</title> <style type="text/css">
body {FONT-SIZE: 12px; FONT-FAMILY: 微软雅黑}
table {border-collapse: collapse; FONT-SIZE: 12px; FONT-FAMILY: 微软雅黑}
p {PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; FONT-SIZE: 12px; FONT-FAMILY: 微软雅黑}


.demotable{
border:1px solid #DDDDDD;
color:#666;
table-layout:fixed;
empty-cells:show;
border-collapse: collapse;
margin:0 auto;
}
.demotable th {
background-repeat:repeat-x;
height:30px;
}
.demotable td,.demotable th{
border:1px solid #DDDDDD;
padding:0 4px 0 2px;
min-height:30px;
}
.demotable tr.alter{
background-color:#f5fafe;
}
.demotable .td_label {
background-color:#f4f8ff;text-align:right;
}
.demotable .td_header {
background-color:#f4f8ff;padding:2px 4px 2px 4px; font-weight:bold; font-family:微软雅黑; color:#333333; font-size:15px;  text-align:left;
}

.textbox_red {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #ffb3a7 1px solid
}

.textbox_gray {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #CCCCCC 1px solid
}
.BOXCSS {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #ffb3a7 1px solid
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
	COLOR: #999999
}


</style>
</head>
<body>
    <form runat="server">
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="demotable" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #dddddd 1px solid; BORDER-TOP: #dddddd 1px solid; BORDER-RIGHT: medium none" height="56" width="207">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; TEXT-ALIGN: center; BORDER-LEFT: medium none; BORDER-TOP: #dddddd 1px solid; BORDER-RIGHT: medium none" width="406">
                            <aspxform:XLabel id="XLabel1" runat="server" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True" ValueToDisplayText Value Font-Names="微软雅黑"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #dddddd 1px solid; BORDER-RIGHT: #dddddd 1px solid" bgcolor="white" width="166">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; TEXT-ALIGN: center; BORDER-LEFT: #dddddd 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px solid" height="35" colspan="3">
                            <asp:Label id="Label1" runat="server" text="供应商扣款申请" font-bold="True" font-size="Medium" font-names="微软雅黑"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="demotable" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="td_label" width="800">
                            <div align="left">&nbsp; <strong>申请信息</strong> 
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" bgcolor="#f5fafe">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #dddddd 1px dotted; BORDER-LEFT: #dddddd 1px dotted; BORDER-TOP: #dddddd 1px dotted; BORDER-RIGHT: #dddddd 1px dotted" height="30" width="112">
                            <div align="right">申请人: 
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px dotted; BORDER-LEFT: medium none; BORDER-TOP: #dddddd 1px dotted; BORDER-RIGHT: #dddddd 1px dotted" width="275">
                            <aspxform:XTextBox id="XTextBox1" runat="server" ValueToDisplayText Value ReadOnly="True" Height="21px" HiddenInput="False" Min="0" Max="0" CssClass="textbox_gray" width="261px" XDataBind="Fin_KouKuan.AppName"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px dotted; BORDER-LEFT: medium none; BORDER-TOP: #dddddd 1px dotted; BORDER-RIGHT: #dddddd 1px dotted" width="98">
                            <p align="right">
                                编号: 
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px dotted; BORDER-LEFT: medium none; BORDER-TOP: #dddddd 1px dotted; BORDER-RIGHT: #dddddd 1px dotted" width="287">
                            <aspxform:XTextBox id="XTextBox2" runat="server" ValueToDisplayText Value ReadOnly="True" HiddenInput="False" Min="0" Max="0" CssClass="textbox_gray" width="253px" XDataBind="Fin_KouKuan.AppSN"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #dddddd 1px dotted; BORDER-LEFT: #dddddd 1px dotted; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px dotted" height="30">
                            <div align="right">部门: 
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px dotted; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px dotted">
                            <aspxform:XTextBox id="XTextBox3" runat="server" ValueToDisplayText Value ReadOnly="True" HiddenInput="False" Min="0" Max="0" CssClass="textbox_gray" width="257px" XDataBind="Fin_KouKuan.AppDept"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px dotted; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px dotted">
                            <p align="right">
                                申请日期: 
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px dotted; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px dotted">
                            <aspxform:XTextBox id="XTextBox4" runat="server" ValueToDisplayText Value ReadOnly="True" HiddenInput="False" Min="0" Max="0" CssClass="textbox_gray" width="256px" XDataBind="Fin_KouKuan.AppDate"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="demotable" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="td_label" width="800">
                            <p align="left">
                                &nbsp;<font size="2"> <strong>扣款信息</strong></font> 
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" bgcolor="#f5fafe">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: #dddddd 1px solid; BORDER-TOP: #dddddd 1px solid; BORDER-RIGHT: #dddddd 1px solid" height="31" width="111">
                            <p align="right">
                                扣款类型: 
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #dddddd 1px solid; BORDER-RIGHT: #dddddd 1px solid" colspan="3">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="Fin_KouKuan.WithHoldList" PromptText="请选择">
                                <asp:ListItem>差价返还扣款</asp:ListItem>
                                <asp:ListItem>交期异常扣款</asp:ListItem>
                                <asp:ListItem>物料宽收扣款</asp:ListItem>
                                <asp:ListItem>质量异常扣款</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ValidationGroup="V1" ControlToValidate="XDropDownList1" ErrorMessage="选择扣款类型" Display="None">类型</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ValidationGroup="V1" ControlToValidate="XTextBox5" ErrorMessage="供应商代码" Display="None">供应商</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ValidationGroup="V1" ControlToValidate="XTextBox8" ErrorMessage="输入金额" Display="None">金额</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ValidationGroup="V1" ControlToValidate="XDropDownList2" ErrorMessage="选择币种" Display="None">币种</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: #dddddd 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px solid" height="33">
                            <p align="right">
                                供应商代码: 
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px solid" width="288">
                            <aspxform:XTextBox id="XTextBox5" runat="server" ValueToDisplayText Value ReadOnly="True" Height="32px" HiddenInput="False" Min="0" Max="0" CssClass="BOXCSS " width="284px" XDataBind="Fin_KouKuan.SupplierCode"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px solid" width="105">
                            <p align="right">
                                供应商名称: 
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px solid" width="292">
                            <aspxform:XTextBox id="XTextBox6" runat="server" ValueToDisplayText Value ReadOnly="True" Height="33px" HiddenInput="False" Min="0" Max="0" CssClass="BOXCSS " width="227px" XDataBind="Fin_KouKuan.SupplierName"></aspxform:XTextBox>
                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton1" runat="server" PopupWndHeight="-1" Text="..." UseSubmitBehavior="False" PopupWndWidth="-1" Width="28px" HiddenExpress="Global.StepName!='开始'" DataMap="Col1->Fin_KouKuan.SupplierName;Col2->Fin_KouKuan.SupplierCode" ColumnCount="2" NavigateUrl="~\FormSupport\SelSupplier.aspx"></aspxform:XCustomBrowserButton>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: #dddddd 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px solid" height="51">
                            <p align="right">
                                扣款事由描述: 
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px solid" colspan="3">
                            <aspxform:XTextBox id="XTextBox7" runat="server" ValueToDisplayText Value Height="58px" HiddenInput="False" Min="0" Max="0" CssClass="BOXCSS " width="100%" XDataBind="Fin_KouKuan.WithHoldReason" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: #dddddd 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px solid" height="29">
                            <p align="right">
                                金额: 
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px solid">
                            <aspxform:XTextBox id="XTextBox8" runat="server" ValueToDisplayText Value Height="32px" HiddenInput="False" Min="0" Max="0" CssClass="BOXCSS " width="100%" XDataBind="Fin_KouKuan.WithHoldMoney"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px solid">
                            <p align="right">
                                币种: 
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px solid">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" Height="25px" XDataBind="Fin_KouKuan.Unit" PromptText="请选择" Width="167px" XDataSource="TableName:Fin_R_Rate;BufferType:RuntimeUpdate" DisplayColumn="Unit" ValueColumn="Unit">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: #dddddd 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px solid" height="70">
                            <p align="right">
                                上传附件: 
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #dddddd 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #dddddd 1px solid" colspan="3">
                            <aspxform:XAttachments id="XAttachments1" runat="server" width="100%" XDataBind="Fin_KouKuan.Attachment" MaximumFileSize></aspxform:XAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="demotable" border="0" cellspacing="0" cellpadding="2" width="800">
                <tbody>
                    <tr>
                        <td class="td_header" width="383">
                            &nbsp;审批信息</td>
                    </tr>
                    <tr>
                        <td height="49">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" Height="62px" Width="796px" TextMode="MultiLine" Rows="3" BorderWidth="1px" BorderColor="Gainsboro"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <aspxform:XSignTrace id="XSignTrace1" runat="server" CssClass="AA" Width="800px" BorderWidth="1" BorderColor="#dcdcdc"></aspxform:XSignTrace>
        </div>
        <div align="center">
            <table class="mytable" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td width="263" align="right">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress="Global.StepName=='开始'"></aspxform:XPrintButton>
                        </td>
                        <td width="533" align="left">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div align="center" width="800px">
                <script type="text/javascript" src="../jquery-1.9.1.min.js"></script>
                <script type="text/javascript">
            document.write('<script type="text/javascript" charset="gb2312"   src="' + rootUrl + 'MyApp/Demo/TaskComment/taskcomment.js"><\/script>');
            </script>
            </div>
        </div>
    </form>
</body>
</html>
