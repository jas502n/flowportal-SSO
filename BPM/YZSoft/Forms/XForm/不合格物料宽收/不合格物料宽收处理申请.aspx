<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
        {
           XTextBox6.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox7.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox9.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox12.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox21.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox22.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox23.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox24.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox26.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox27.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
         }

</script>
<html xmlns:xform="xmlns:xform">
<head runat="server">
    <title>BPM Form</title> <style>BODY {
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
	BORDER-BOTTOM: pink 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none
}
</style>
    <style type="text/css" href="~/Style/Skyworth.css" rel="stylesheet"></style>
</head>
<body>
    <form runat="server">
        <p align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" rowspan="3" width="150">
                            <asp:Image id="Image2" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" rowspan="3" width="600" align="middle">
                            <aspxform:XLabel id="XLabel18" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" bgcolor="white" height="19" width="68" align="right">
                            <p>
                                <aspxform:XLabel id="XLabel47" runat="server" text="版本:" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" width="98">
                            <aspxform:XLabel id="XLabel49" runat="server" text="V1.03" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" height="18" align="right">
                            <p>
                                <aspxform:XLabel id="XLabel46" runat="server" text="发布日期:" ValueToDisplayText Value></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
                            <aspxform:XLabel id="XLabel48" runat="server" text="2014/1/18" ValueToDisplayText Value></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="22" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel19" runat="server" ValueToDisplayText Value XDataBind="SWR_Applicant.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="49" width="20%" colspan="4">
                            <div align="center">
                            </div>
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel13" runat="server" Font-Names="Tahoma" text="不合格物料处理申请单" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <div align="center">
            <table style="BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="205" align="right">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="SWR_Applicant.HRID" ReadOnly="True" Min="0" Max="0" width="62px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel16" runat="server" text="申请人:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="119">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="SWR_Applicant.AppName" ReadOnly="True" Min="0" Max="0" width="73px" HiddenInput="False" BorderColor="Gainsboro" CssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="right">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="57" align="right">
                            <aspxform:XLabel id="XLabel1" runat="server" text="申请日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="244">
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="SWR_Applicant.AppDate" ReadOnly="True" Min="0" Max="0" width="166px" HiddenInput="False" BorderColor="Gainsboro" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="SWR_Applicant.Dept" ReadOnly="True" Min="0" Max="0" width="8px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="SWR_Applicant.MessageYN" Min="0" Max="0" width="9px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
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
                            基本信息
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="物料小类不能为空" ValidationGroup="Start" ControlToValidate="XTextBox8">物料小类不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="物料编号不能为空" ValidationGroup="Start" ControlToValidate="XTextBox31">物料编号不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="供应商不能为空" ValidationGroup="Start" ControlToValidate="XTextBox1">供应商不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="来料日期不能为空" ValidationGroup="Start" ControlToValidate="XDateTimePicker1">来料日期不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="收货串号不能为空" ValidationGroup="Start" ControlToValidate="XTextBox3">收货串号不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="检验日期不能为空" ValidationGroup="Start" ControlToValidate="XDateTimePicker2">检验日期不能为空</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td height="28" width="120">
                            <p align="right">
                                物料大类:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="SWR_Applicant.MateriasBigClass">
                                <asp:ListItem>数字电子料</asp:ListItem>
                                <asp:ListItem>数字结构料</asp:ListItem>
                                <asp:ListItem>无线电子料</asp:ListItem>
                                <asp:ListItem>无线结构料</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="来料数量不能为空" ValidationGroup="Start" ControlToValidate="XTextBox2">来料数量不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="抽样数量不能为空" ValidationGroup="Start" ControlToValidate="XTextBox4">抽样数量不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="不良比例或数量不能为空" ValidationGroup="Start" ControlToValidate="XTextBox5">不良比例或数量不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" Display="None" ErrorMessage="不良描述不能为空" ValidationGroup="Start" ControlToValidate="XTextBox6">不良描述不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator40" runat="server" Display="None" ErrorMessage="供应商代码不能为空" ValidationGroup="Start" ControlToValidate="XTextBox32">供应商代码不能为空</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="29" width="120">
                            <p align="right">
                                物料小类:
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="SWR_Applicant.MateriasSmallClass" Min="0" Max="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="120px"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p align="right">
                                物料编号:
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox31" runat="server" ValueToDisplayText Value XDataBind="SWR_Applicant.MateriasNo" Min="0" Max="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="140px"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p align="right">
                                供应商代码:
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XTextBox id="XTextBox32" runat="server" ValueToDisplayText Value XDataBind="SWR_Applicant.SupplierCode" Min="0" Max="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="120px"></aspxform:XTextBox>
                            <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px" DataMap="supplier->SWR_Applicant.Supplier;supplierfullname->SWR_Applicant.AffirmSupplier;suppliercode->SWR_Applicant.SupplierCode" DisplayColumns="supplier:制造商名称,;supplierfullname:供应商全称,;suppliercode:供应商代码," XDataSource="TableName:SWR_Supplier"></aspxform:XDataBrowserButton>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="120">
                            <p align="right">
                                供应商:
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="SWR_Applicant.Supplier" Min="0" Max="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="120px"></aspxform:XTextBox>
                        </td>
                        <td height="28" width="120">
                            <p align="right">
                                来料日期:
                            </p>
                        </td>
                        <td>
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="SWR_Applicant.IncomingDate" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XDateTimePicker>
                        </td>
                        <td height="28" width="120">
                            <p align="right">
                                收货串号:
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="SWR_Applicant.ReceiptNum" Min="0" Max="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="200px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="120">
                            <p align="right">
                                检验日期:
                            </p>
                        </td>
                        <td>
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="SWR_Applicant.InspectionDate" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XDateTimePicker>
                        </td>
                        <td height="28" width="120">
                            <p align="right">
                                来料数量:
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="SWR_Applicant.IncomingNum" Min="0" Max="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="120px"></aspxform:XTextBox>
                        </td>
                        <td height="28" width="120">
                            <p align="right">
                                抽样数量:
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="SWR_Applicant.SampleNum" Min="0" Max="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="29" width="120">
                            <p align="right">
                                不良比例或数量:
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="SWR_Applicant.BadRate" Min="0" Max="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="120px"></aspxform:XTextBox>
                        </td>
                        <td width="120">
                            <p align="right">
                                不良类型:
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="SWR_Applicant.BadType">
                                <asp:ListItem>致命不合格</asp:ListItem>
                                <asp:ListItem>严重不合格</asp:ListItem>
                                <asp:ListItem>一般不合格</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="120">
                            <p align="right">
                                不良描述:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox6" runat="server" XDataBind="SWR_Applicant.BadDescription" Min="0" Max="0" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="540px" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="120">
                            <p align="right">
                                附件:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XAttachments id="XAttachments1" runat="server" XDataBind="SWR_Applicant.Attachments" width="100%"></aspxform:XAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName=="开始"||Global.StepName=="IQC主管"'>
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="848" colspan="2">
                            SQE审批<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" Display="None" ErrorMessage="请选择改判情况" ValidationGroup="SQE" ControlToValidate="XRadioButtonList1">请选择改判情况</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" Display="None" ErrorMessage="请填写改判合格理由" ValidationGroup="SQE" ControlToValidate="XTextBox9" DisableExpress='SWR_Applicant.CommutedOrNot!="1"'>请填写改判合格理由</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" Display="None" ErrorMessage="请选择是否可以宽收" ValidationGroup="SQE" ControlToValidate="XRadioButtonList2" DisableExpress='SWR_Applicant.CommutedOrNot!="2"'>请选择是否可以宽收</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" Display="None" ErrorMessage="请填写不可宽收理由" ValidationGroup="SQE" ControlToValidate="XTextBox7" DisableExpress='SWR_Applicant.WideIncomeOrNot!="否"'>请填写不可宽收理由</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" Display="None" ErrorMessage="请填写已宽收次数" ValidationGroup="SQE" ControlToValidate="XTextBox10" DisableExpress='SWR_Applicant.WideIncomeOrNot!="是"||SWR_Applicant.CommutedOrNot!="2"'>请填写已宽收次数</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" Display="None" ErrorMessage="请选择是否需厂家确认" ValidationGroup="SQE" ControlToValidate="XRadioButtonList3" DisableExpress='SWR_Applicant.WideIncomeOrNot!="是"||SWR_Applicant.CommutedOrNot!="2"'>请选择是否需厂家确认</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName=="开始"||Global.StepName=="IQC主管"'>
                <tbody>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                是否有改判情况:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="SWR_Applicant.CommutedOrNot" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1">改判合格</asp:ListItem>
                                <asp:ListItem Value="2">无改判</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr hiddenexpress='SWR_Applicant.CommutedOrNot!="1"'>
                        <td height="28" width="150">
                            <p align="right">
                                改判合格理由:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="SWR_Applicant.CommutedReason" Min="0" Max="0" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="540px" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tbody hiddenexpress='SWR_Applicant.CommutedOrNot!="2"'>
                        <tr>
                            <td height="29" width="150">
                                <p align="right">
                                    紧急情况是否可以宽收:
                                </p>
                            </td>
                            <td colspan="5">
                                <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="SWR_Applicant.WideIncomeOrNot" RepeatDirection="Horizontal">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem>否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                        <tr hiddenexpress='SWR_Applicant.WideIncomeOrNot!="是"'>
                            <td height="29" align="right">
                                SQE建议宽收扣款比例:</td>
                            <td colspan="5">
                                <aspxform:XDropDownList id="XDropDownList9" runat="server" XDataBind="SWR_Applicant.SQEWithHoldRate">
                                    <asp:ListItem Value="1">0%</asp:ListItem>
                                    <asp:ListItem Value="2">5%</asp:ListItem>
                                    <asp:ListItem Value="4">15%</asp:ListItem>
                                    <asp:ListItem Value="3">10%</asp:ListItem>
                                    <asp:ListItem Value="5">20%</asp:ListItem>
                                    <asp:ListItem Value="6">25%</asp:ListItem>
                                    <asp:ListItem Value="7">其他</asp:ListItem>
                                    <asp:ListItem Selected="True" Value=" "></asp:ListItem>
                                </aspxform:XDropDownList>
                                <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="SWR_Applicant.SQEOtherWithHoldRate" Min="0" Max="0" HiddenInput="False" HiddenExpress='SWR_Applicant.SQEWithHoldRate!="7"' CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="40px"></aspxform:XTextBox>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator39" runat="server" Display="None" ErrorMessage="请选择SQE建议宽收扣款比例" ValidationGroup="SQE" ControlToValidate="XDropDownList9" DisableExpress='SWR_Applicant.WideIncomeOrNot!="是"'>请选择SQE建议宽收扣款比例</aspxform:XRequiredFieldValidator>
                            </td>
                        </tr>
                        <tr hiddenexpress='SWR_Applicant.WideIncomeOrNot!="否"'>
                            <td height="28" width="150">
                                <p align="right">
                                    不可宽收理由:
                                </p>
                            </td>
                            <td colspan="5">
                                <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="SWR_Applicant.NoWideIncomeReason" Min="0" Max="0" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="540px" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr hiddenexpress='SWR_Applicant.WideIncomeOrNot!="是"'>
                            <td height="28">
                                <p align="right">
                                    是否需厂家确认：
                                </p>
                            </td>
                            <td colspan="5" align="left">
                                <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="SWR_Applicant.SupplierAffirmOrNot" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">是</asp:ListItem>
                                    <asp:ListItem Value="2">否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                        <tr hiddenexpress='SWR_Applicant.WideIncomeOrNot!="是"'>
                            <td height="28">
                            </td>
                            <td colspan="5" align="left">
                                此类型的不良（同一厂家，同一物种）在一个月以内已宽收:<aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="SWR_Applicant.WideIncomeNum" Min="0" Max="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="40px"></aspxform:XTextBox>
                                次（不含此次）
                            </td>
                        </tr>
                    </tbody>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName=="开始"||Global.StepName=="IQC主管"||Global.StepName=="SQE经理批准不合格报告"'>
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="848" colspan="2">
                            物控员判断是否宽收<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" Display="None" ErrorMessage="请选择是否需要申请宽收" ValidationGroup="WK" ControlToValidate="XDropDownList3">请选择是否需要申请宽收</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" Display="None" ErrorMessage="请填写需要宽收理由" ValidationGroup="WK" ControlToValidate="XTextBox12" DisableExpress='SWR_Applicant.WideIncomeApplyOrNot!="1"'>请填写需要宽收理由</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" Display="None" ErrorMessage="订单号不能为空" ValidationGroup="WK" ControlToValidate="XTextBox15" DisableExpress='SWR_Applicant.WideIncomeApplyOrNot!="1"'>订单号不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" Display="None" ErrorMessage="订单机型不能为空" ValidationGroup="WK" ControlToValidate="XTextBox16" DisableExpress='SWR_Applicant.WideIncomeApplyOrNot!="1"'>订单机型不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" Display="None" ErrorMessage="需要宽收数量不能为空" ValidationGroup="WK" ControlToValidate="XTextBox18" DisableExpress='SWR_Applicant.WideIncomeApplyOrNot!="1"'>需要宽收数量不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator38" runat="server" Display="None" ErrorMessage="请选择订单生产厂家" ValidationGroup="WK" ControlToValidate="XRadioButtonList4" DisableExpress='SWR_Applicant.WideIncomeApplyOrNot!="1"'>请选择订单生产厂家</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName=="开始"||Global.StepName=="IQC主管"||Global.StepName=="SQE经理批准不合格报告"'>
                <tbody>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                是否需要申请宽收:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="SWR_Applicant.WideIncomeApplyOrNot">
                                <asp:ListItem Value="1">是</asp:ListItem>
                                <asp:ListItem Value="2">否</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" Display="None" ErrorMessage="请填写外发厂" ValidationGroup="WK" ControlToValidate="XTextBox20" DisableExpress='SWR_Applicant.OrderManufacturer!="外发厂"'>请填写外发厂</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
                <tbody hiddenexpress='SWR_Applicant.WideIncomeApplyOrNot!="1"'>
                    <tr>
                        <td height="28">
                            <p align="right">
                                1. 需要宽收理由:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="SWR_Applicant.WideIncomeApplyReason" Min="0" Max="0" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="540px" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                参考附件:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XAttachments id="XAttachments4" runat="server" XDataBind="SWR_Applicant.ReferenceAttachments" width="100%"></aspxform:XAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                2. 宽收订单信息:
                            </p>
                        </td>
                        <td colspan="5">
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                订单号:
                            </p>
                        </td>
                        <td width="189">
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="SWR_Applicant.OrderNum" Min="0" Max="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="120px"></aspxform:XTextBox>
                        </td>
                        <td height="28" width="150">
                            <p align="right">
                                订单机型:
                            </p>
                        </td>
                        <td width="189">
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="SWR_Applicant.OrderType" Min="0" Max="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="120px"></aspxform:XTextBox>
                        </td>
                        <td height="28" width="150">
                            <p align="right">
                                需要宽收数量:
                            </p>
                        </td>
                        <td width="3">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="SWR_Applicant.NeedWideIncomeNum" Min="0" Max="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            <p align="right">
                                订单生产厂家:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="SWR_Applicant.OrderManufacturer" RepeatDirection="Horizontal">
                                <asp:ListItem>制造中心</asp:ListItem>
                                <asp:ListItem>外发厂</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="SWR_Applicant.OrderManufacturerOutside" Min="0" Max="0" HiddenInput="False" HiddenExpress='SWR_Applicant.OrderManufacturer!="外发厂"' CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName=="开始"||Global.StepName=="IQC主管"||Global.StepName=="SQE经理批准不合格报告"||Global.StepName=="物控员"||Global.StepName=="确认退库"'>
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="848" colspan="2">
                            SQE评估风险范围<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" Display="None" ErrorMessage="请填写影响范围及涉及部门" ValidationGroup="SQE2" ControlToValidate="XTextBox22">请填写影响范围及涉及部门</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator24" runat="server" Display="None" ErrorMessage="请选择下拉选项" ValidationGroup="SQE2" ControlToValidate="XDropDownList4">请选择下拉选项</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator25" runat="server" Display="None" ErrorMessage="请选择生产部门" ValidationGroup="SQE2" ControlToValidate="XDropDownList5" DisableExpress='SWR_Applicant.AssessOption!="2"'>请选择生产部门</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName=="开始"||Global.StepName=="IQC主管"||Global.StepName=="SQE经理批准不合格报告"||Global.StepName=="物控员"||Global.StepName=="确认退库"'>
                <tbody>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                影响范围及涉及部门:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="SWR_Applicant.InvolveDept" Min="0" Max="0" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="480px" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            &nbsp; &nbsp; &nbsp; &nbsp;
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="SWR_Applicant.AssessOption">
                                <asp:ListItem Value="1">不可宽收，需退货处理</asp:ListItem>
                                <asp:ListItem Value="2">已影响生产，需要生产部门评估</asp:ListItem>
                                <asp:ListItem Value="3">未影响到生产，仅需要质量部组织评估</asp:ListItem>
                                <asp:ListItem Value="4">未影响到生产，仅需要部品部组织评估</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr hiddenexpress='SWR_Applicant.AssessOption!="2"'>
                        <td colspan="6">
                            &nbsp; &nbsp; &nbsp; &nbsp;
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="SWR_Applicant.ProductionDept">
                                <asp:ListItem>整机</asp:ListItem>
                                <asp:ListItem>机芯</asp:ListItem>
                                <asp:ListItem>SMT</asp:ListItem>
                                <asp:ListItem>无线生产部</asp:ListItem>
                                <asp:ListItem>外发管理部</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName=="开始"||Global.StepName=="IQC主管"||Global.StepName=="SQE经理批准不合格报告"||Global.StepName=="物控员"||Global.StepName=="确认退库"||Global.StepName=="SQE评估风险范围"||Global.StepName=="厂家确认"'>
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="848" colspan="2">
                            工程部评估<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator26" runat="server" Display="None" ErrorMessage="请选择是否需要增加工艺指导文件" ValidationGroup="GCB" ControlToValidate="XDropDownList8">请选择是否需要增加工艺指导文件</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator27" runat="server" Display="None" ErrorMessage="请上传文件" ValidationGroup="GCB" ControlToValidate="XAttachments3" DisableExpress='SWR_Applicant.DocumentsOrNot!="1"'>请上传文件</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator28" runat="server" Display="None" ErrorMessage="请填写评估意见" ValidationGroup="GCB" ControlToValidate="XTextBox23">请填写评估意见</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName=="开始"||Global.StepName=="IQC主管"||Global.StepName=="SQE经理批准不合格报告"||Global.StepName=="物控员"||Global.StepName=="确认退库"||Global.StepName=="SQE评估风险范围"||Global.StepName=="厂家确认"'>
                <tbody>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                是否需要增加工艺指导文件:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XDropDownList id="XDropDownList8" runat="server" XDataBind="SWR_Applicant.DocumentsOrNot">
                                <asp:ListItem Value="1">是</asp:ListItem>
                                <asp:ListItem Value="2">否</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr hiddenexpress='SWR_Applicant.DocumentsOrNot!="1"'>
                        <td height="28" width="150">
                            <p align="right">
                                附件:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XAttachments id="XAttachments3" runat="server" XDataBind="SWR_Applicant.Documents" width="100%"></aspxform:XAttachments>
                        </td>
                    </tr>
                    <tbody>
                        <tr>
                            <td height="28" width="150">
                                <p align="right">
                                    评估意见:
                                </p>
                            </td>
                            <td colspan="5">
                                <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="SWR_Applicant.EngineerAssessIdea" Min="0" Max="0" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="540px" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName=="开始"||Global.StepName=="IQC主管"||Global.StepName=="SQE经理批准不合格报告"||Global.StepName=="物控员"||Global.StepName=="确认退库"||Global.StepName=="SQE评估风险范围"||Global.StepName=="工程部组织评估"||Global.StepName=="厂家确认"'>
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="848" colspan="2">
                            生产部评估<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator29" runat="server" Display="None" ErrorMessage="请填写评估意见" ValidationGroup="SCB" ControlToValidate="XTextBox24">请填写评估意见</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" Display="None" ErrorMessage="请选择是否有预计工时损失产生" ValidationGroup="SCB" ControlToValidate="XDropDownList6">请选择是否有预计工时损失产生</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" Display="None" ErrorMessage="请填写预计工时损失" ValidationGroup="SCB" ControlToValidate="XTextBox25" DisableExpress='SWR_Applicant.WorkingLossOrNot!="1"'>请填写预计工时损失</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName=="开始"||Global.StepName=="IQC主管"||Global.StepName=="SQE经理批准不合格报告"||Global.StepName=="物控员"||Global.StepName=="确认退库"||Global.StepName=="SQE评估风险范围"||Global.StepName=="工程部组织评估"||Global.StepName=="厂家确认"'>
                <tbody>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                评估意见:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="SWR_Applicant.PDAssessIdea" Min="0" Max="0" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="540px" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                是否有预计工时损失产生:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XDropDownList id="XDropDownList6" runat="server" XDataBind="SWR_Applicant.WorkingLossOrNot">
                                <asp:ListItem Value="1">是</asp:ListItem>
                                <asp:ListItem Value="2">否</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tbody hiddenexpress='SWR_Applicant.WorkingLossOrNot!="1"'>
                        <tr>
                            <td height="29" width="150">
                                <p align="right">
                                    预计工时损失（小时*人）:
                                </p>
                            </td>
                            <td colspan="5">
                                <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="SWR_Applicant.WorkingLoss" Min="0" Max="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="120px"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td height="28" width="150">
                                <p align="right">
                                    预计其他损失:
                                </p>
                            </td>
                            <td colspan="5">
                                <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="SWR_Applicant.OtherLoss" Min="0" Max="0" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="540px" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName=="开始"||Global.StepName=="IQC主管"||Global.StepName=="SQE经理批准不合格报告"||Global.StepName=="物控员"||Global.StepName=="确认退库"||Global.StepName=="SQE评估风险范围"||Global.StepName=="工程部组织评估"||Global.StepName=="生产部评估宽收"||Global.StepName=="厂家确认"'>
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="848" colspan="2">
                            质量部评估<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator32" runat="server" Display="None" ErrorMessage="请填写评估意见" ValidationGroup="ZLB" ControlToValidate="XTextBox27">请填写评估意见</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName=="开始"||Global.StepName=="IQC主管"||Global.StepName=="SQE经理批准不合格报告"||Global.StepName=="物控员"||Global.StepName=="确认退库"||Global.StepName=="SQE评估风险范围"||Global.StepName=="工程部组织评估"||Global.StepName=="生产部评估宽收"||Global.StepName=="厂家确认"'>
                <tbody>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                评估意见:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="SWR_Applicant.QualityAssessIdea" Min="0" Max="0" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="540px" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName=="开始"||Global.StepName=="IQC主管"||Global.StepName=="SQE经理批准不合格报告"||Global.StepName=="物控员"||Global.StepName=="确认退库"||Global.StepName=="SQE评估风险范围"||Global.StepName=="工程部组织评估"||Global.StepName=="生产部评估宽收"||Global.StepName=="质量部核准评估"||Global.StepName=="制造中心总经理"||Global.StepName=="厂家确认"'>
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="848" colspan="2">
                            最终批准<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator33" runat="server" Display="None" ErrorMessage="请选择最终宽收扣款比例" ValidationGroup="ZZ" ControlToValidate="XDropDownList7">请选择最终宽收扣款比例</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator34" runat="server" Display="None" ErrorMessage="请填写其他宽收扣款比例" ValidationGroup="ZZ" ControlToValidate="XTextBox28" DisableExpress='SWR_Applicant.WithHoldRate!="7"'>请填写其他宽收扣款比例</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850" hiddenexpress='Global.StepName=="开始"||Global.StepName=="IQC主管"||Global.StepName=="SQE经理批准不合格报告"||Global.StepName=="物控员"||Global.StepName=="确认退库"||Global.StepName=="SQE评估风险范围"||Global.StepName=="工程部组织评估"||Global.StepName=="生产部评估宽收"||Global.StepName=="质量部核准评估"||Global.StepName=="制造中心总经理"||Global.StepName=="厂家确认"'>
                <tbody>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                最终宽收扣款比例:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XDropDownList id="XDropDownList7" runat="server" XDataBind="SWR_Applicant.AdviseWithHoldRate">
                                <asp:ListItem Value="1">0%</asp:ListItem>
                                <asp:ListItem Value="2">5%</asp:ListItem>
                                <asp:ListItem Value="4">15%</asp:ListItem>
                                <asp:ListItem Value="3">10%</asp:ListItem>
                                <asp:ListItem Value="5">20%</asp:ListItem>
                                <asp:ListItem Value="6">25%</asp:ListItem>
                                <asp:ListItem Value="7">其他</asp:ListItem>
                                <asp:ListItem Selected="True" Value=" "></asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XLabel id="XLabel2" runat="server" text="此物料按要求已不做宽收，请慎重" ValueToDisplayText Value HiddenExpress='(Global.StepName=="开始"||Global.StepName=="IQC主管"||Global.StepName=="SQE经理批准不合格报告"||Global.StepName=="物控员"||Global.StepName=="确认退库"||Global.StepName=="SQE评估风险范围"||Global.StepName=="工程部组织评估"||Global.StepName=="生产部评估宽收"||Global.StepName=="质量部核准评估"||Global.StepName=="制造中心总经理")||!(SWR_Applicant.WithHoldRate==6&amp;&amp;SWR_Applicant.MessageYN=="Y")' ForeColor="Red"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                宽收扣款比例:
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XDropDownList id="XDropDownList10" runat="server" XDataBind="SWR_Applicant.WithHoldRate">
                                <asp:ListItem Value="1">0%</asp:ListItem>
                                <asp:ListItem Value="2">5%</asp:ListItem>
                                <asp:ListItem Value="4">15%</asp:ListItem>
                                <asp:ListItem Value="3">10%</asp:ListItem>
                                <asp:ListItem Value="5">20%</asp:ListItem>
                                <asp:ListItem Value="6">25%</asp:ListItem>
                                <asp:ListItem Value="7">其他</asp:ListItem>
                                <asp:ListItem Selected="True" Value=" "></asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="SWR_Applicant.OtherWithHoldRate" Min="0" Max="0" HiddenInput="False" HiddenExpress='SWR_Applicant.WithHoldRate!="7"' CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="40px"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel3" runat="server" text="此物料按要求已不做宽收，请慎重" ValueToDisplayText Value HiddenExpress='(Global.StepName=="开始"||Global.StepName=="IQC主管"||Global.StepName=="SQE经理批准不合格报告"||Global.StepName=="物控员"||Global.StepName=="确认退库"||Global.StepName=="SQE评估风险范围"||Global.StepName=="工程部组织评估"||Global.StepName=="生产部评估宽收"||Global.StepName=="质量部核准评估"||Global.StepName=="制造中心总经理")||!(SWR_Applicant.WithHoldRate==6&amp;&amp;SWR_Applicant.MessageYN=="Y")' ForeColor="Red"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="848" colspan="2">
                            厂家确认<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator35" runat="server" Display="None" ErrorMessage="请填写供应商全称" ValidationGroup="CJ" ControlToValidate="XTextBox21">请填写供应商全称</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator36" runat="server" Display="None" ErrorMessage="请填写确认人" ValidationGroup="CJ" ControlToValidate="XTextBox29">请填写确认人</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator37" runat="server" Display="None" ErrorMessage="请选择是否同意" ValidationGroup="CJ" ControlToValidate="XRadioButtonList5">请选择是否同意</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td height="28" width="150">
                            <p align="right">
                                确认供应商全称:
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="SWR_Applicant.AffirmSupplier" Min="0" Max="0" HiddenInput="False" DisableBehavior="ReadOnly" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="360px" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td height="28" width="50">
                            <p align="right">
                                确认人:
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="SWR_Applicant.AffirmMan" Min="0" Max="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS" Width="120px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="800" colspan="6">
                            <table width="800">
                                <tbody>
                                    <tr>
                                        <td height="36" width="600" align="right">
                                            我司已确认此批不合格情况，并同意贵司对于此物料的25%以下的货款扣款比例，以满足贵司的生产需要:
                                        </td>
                                        <td width="200">
                                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="SWR_Applicant.WithholdOrNot" RepeatDirection="Horizontal">
                                                <asp:ListItem>同意</asp:ListItem>
                                                <asp:ListItem>不同意</asp:ListItem>
                                            </aspxform:XRadioButtonList>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-RIGHT: black 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="848" colspan="2">
                            审批信息</td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td height="28" width="150" colspan="6">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" width="850px" BorderColor="#DCDCDC" BorderWidth="1" TextMode="MultiLine" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="150" colspan="6">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" BorderColor="#dcdcdc" BorderWidth="1" CssClass="AA" Width="850px"></aspxform:XSignTrace>
                        </td>
                    </tr>
                    <tr>
                        <td height="41" width="150" colspan="6">
                            <table width="850">
                                <tbody>
                                    <tr>
                                        <td width="240" align="right">
                                            <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress="Global.StepName =='开始'" Width="80px" Height="20px" PageHeaderFormat="\t" PageFooterFormat="提交人:________部门负责人:________初审人:________电子流检查:________总裁审批:________"></aspxform:XPrintButton>
                                        </td>
                                        <td>
                                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->SWR_Applicant.Dept" ProcessBtnCssClass="a" SystemBtnCssClass="a" DorpDownListCssClass="b"></aspxform:XProcessButtonList>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" width="150" colspan="6">
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
            
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850">
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
