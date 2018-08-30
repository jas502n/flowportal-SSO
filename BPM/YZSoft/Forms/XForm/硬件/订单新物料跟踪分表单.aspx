<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform= "xmlns:xform">
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
TD.NoPadding {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px
}
INPUT {
	HEIGHT: 20px
}
INPUT.UL {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #33ff33 1px solid
}
</style>
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
TD.NoPadding {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px
}
.TextBox {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: silver 1px solid
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
</style>
</head>
<body>
    <form runat="server">
        <div align="center">
            <!-- Insert content here -->
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="217">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="403" align="middle">
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Bold="True" Font-Size="Medium" text="深圳创维数字技术股份有限公司" Font-Names="Tahoma"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="224">
                            <aspxform:XLabel id="XLabel11" runat="server" XDataBind="OF_Applicant_Fen.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="58" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="订单新物料跟踪单(分表)" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="193" align="middle">
                            <aspxform:XLabel id="XLabel42" runat="server" text="申请人:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="259">
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="OF_Applicant_Fen.Name" DisableCssClass="TextBox" ReadOnly="True" Min="0" Max="0" width="166px" BorderColor="Gainsboro" HiddenInput="False" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="OF_Applicant_Fen.HRID" Min="0" Max="0" width="39px" BorderColor="Gainsboro" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="88" align="middle">
                            <aspxform:XLabel id="XLabel43" runat="server" text="申请日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="301" colspan="2">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="OF_Applicant_Fen.AppDate" DisableCssClass="TextBox" ReadOnly="True" Min="0" Max="0" width="166px" BorderColor="Gainsboro" HiddenInput="False" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="OF_Applicant_Fen.Dept" Min="0" Max="0" width="30px" BorderColor="Gainsboro" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="193" align="middle">
                            <aspxform:XLabel id="XLabel2" runat="server" text="表单编号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="259">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="OF_Applicant_Fen.SN" DisableCssClass="TextBox" ReadOnly="True" Min="0" Max="0" width="166px" BorderColor="Gainsboro" HiddenInput="False" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="88" align="middle">
                            <aspxform:XLabel id="XLabel3" runat="server" text="对应需求号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="301" colspan="2">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="OF_Applicant_Fen.SN_HD" DisableCssClass="TextBox" ReadOnly="True" Min="0" Max="0" width="166px" BorderColor="Gainsboro" HiddenInput="False" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="OF_Applicant_Fen.SN_All" Min="0" Max="0" width="32px" BorderColor="Gainsboro" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="145">
                            <aspxform:XLabel id="XLabel4" runat="server" text="物料类型:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="669">
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="OF_Applicant_Fen.MaterialModel" ReadOnly="True" Min="0" Max="0" width="166px" BorderColor="Gainsboro" HiddenInput="False" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="OF_Applicant_Fen.MaterialType" Min="0" Max="0" width="272px" BorderColor="Gainsboro" HiddenInput="False" CssClass="TextBox" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="30" rowspan="2" width="44" align="middle">
                            <aspxform:XLabel id="XLabel21" runat="server" text="订单号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="103" align="middle">
                            <aspxform:XLabel id="XLabel38" runat="server" text="客户名称"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="87" align="middle">
                            <aspxform:XLabel id="XLabel5" runat="server" text="客户品牌"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="98" align="middle">
                            <aspxform:XLabel id="XLabel6" runat="server" text="客户型号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="65" align="middle">
                            <aspxform:XLabel id="XLabel22" runat="server" text="内部型号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="80" align="middle">
                            <aspxform:XLabel id="XLabel24" runat="server" text="销售人员"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="104" align="middle">
                            <aspxform:XLabel id="XLabel44" runat="server" text="下单日期"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="123" align="middle">
                            <aspxform:XLabel id="XLabel45" runat="server" text="出货日期"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="57" align="middle">
                            <aspxform:XLabel id="XLabel46" runat="server" text="订单数量"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="58">
                            <aspxform:XLabel id="XLabel7" runat="server" text="物料编号"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="29">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="OF_Applicant_Fen.OrderFormCode" DisableCssClass="TextBox" width="100%" BorderColor="#DCDCDC" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="OF_Applicant_Fen.CustomerName" DisableCssClass="TextBox" width="100%" BorderColor="#DCDCDC" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="OF_Applicant_Fen.CustomerBrands" DisableCssClass="TextBox" width="100%" BorderColor="#DCDCDC" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="OF_Applicant_Fen.CustomerModel" DisableCssClass="TextBox" width="100%" BorderColor="#DCDCDC" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="OF_Applicant_Fen.InsideModel" DisableCssClass="TextBox" width="100%" BorderColor="#DCDCDC" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="OF_Applicant_Fen.Saleman" DisableCssClass="TextBox" width="100%" BorderColor="#DCDCDC" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker11" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OF_Applicant_Fen.OrderDate" ReadOnly="True" BorderColor="Gainsboro" CssClass="TextBox" onchange="javascript:XFormOnChange(this);" Width="102px" XType="datetime" XSubType="date"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker12" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OF_Applicant_Fen.DateOfDispatch" ReadOnly="True" BorderColor="Gainsboro" CssClass="TextBox" onchange="javascript:XFormOnChange(this);" Width="121px" XType="datetime" XSubType="date"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="OF_Applicant_Fen.OrderNum" DisableCssClass="TextBox" Min="0" Max="0" width="55px" BorderColor="Gainsboro" HiddenInput="False" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="OF_Applicant_Fen.MaterialCode" DisableCssClass="TextBox" width="100%" BorderColor="#DCDCDC" CssClass="TextBox"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="29" width="84" align="middle">
                            <aspxform:XLabel id="XLabel8" runat="server" text="跟踪点"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="266" align="middle">
                            <aspxform:XLabel id="XLabel9" runat="server" text="责任人"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="241" align="middle">
                            <aspxform:XLabel id="XLabel10" runat="server" text="计划时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="247" align="middle">
                            <aspxform:XLabel id="XLabel12" runat="server" text="实际时间"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                            <aspxform:XLabel id="XLabel13" runat="server" text="设计确认"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="OF_Applicant_Fen.Design_Name" DisableCssClass="TextBox" Min="0" Max="0" width="162px" BorderColor="Gainsboro" HiddenInput="False" CssClass="TextBox" Height="23px" ValueToDisplayText Value></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="OF_Applicant_Fen.Design_Owner" Min="0" Max="0" width="55px" BorderColor="Gainsboro" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" DataMap="DisplayName->OF_Applicant_Fen.Design_Name;HRID->OF_Applicant_Fen.Design_Owner"></aspxform:XSelectUserButton>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="OF_Applicant_Fen.Design_Plan" BorderColor="#DCDCDC" CssClass="TextBox" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" BorderColor="#DCDCDC" CssClass="TextBox" Width="230px" Type="TimeMinutes" Express="OF_Applicant_Fen.Design_Fact"></aspxform:XDateTimePicker>
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="OF_Applicant_Fen.Design_Fact" width="100%" BorderColor="#DCDCDC" CssClass="TextBox" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" align="middle">
                            <aspxform:XLabel id="XLabel14" runat="server" text="发出打样"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="OF_Applicant_Fen.Proofing_Name" DisableCssClass="TextBox" Min="0" Max="0" width="162px" BorderColor="Gainsboro" HiddenInput="False" CssClass="TextBox" Height="23px" ValueToDisplayText Value></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="OF_Applicant_Fen.Proofing_Owner" Min="0" Max="0" width="55px" BorderColor="Gainsboro" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="21px" DataMap="DisplayName->OF_Applicant_Fen.Proofing_Name;HRID->OF_Applicant_Fen.Proofing_Owner"></aspxform:XSelectUserButton>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="OF_Applicant_Fen.Proofing_Plan" BorderColor="#DCDCDC" CssClass="TextBox" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker13" runat="server" BorderColor="#DCDCDC" CssClass="TextBox" Width="230px" Type="TimeMinutes" Express="OF_Applicant_Fen.Proofing_Fact"></aspxform:XDateTimePicker>
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="OF_Applicant_Fen.Proofing_Fact" width="100%" BorderColor="#DCDCDC" CssClass="TextBox" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="33" align="middle">
                            <aspxform:XLabel id="XLabel15" runat="server" text="封样完成"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="OF_Applicant_Fen.SealedSample_Name" DisableCssClass="TextBox" Min="0" Max="0" width="162px" BorderColor="Gainsboro" HiddenInput="False" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="OF_Applicant_Fen.SealedSample_Owner" Min="0" Max="0" width="55px" BorderColor="Gainsboro" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton3" runat="server" Width="21px" DataMap="DisplayName->OF_Applicant_Fen.SealedSample_Name;HRID->OF_Applicant_Fen.SealedSample_Owner"></aspxform:XSelectUserButton>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" runat="server" XDataBind="OF_Applicant_Fen.SealedSample_Plan" BorderColor="#DCDCDC" CssClass="TextBox" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker6" runat="server" BorderColor="#DCDCDC" CssClass="TextBox" Width="230px" Type="TimeMinutes" Express="OF_Applicant_Fen.SealedSample_Fact"></aspxform:XDateTimePicker>
                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="OF_Applicant_Fen.SealedSample_Fact" width="100%" BorderColor="#DCDCDC" BorderWidth="1" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="29" align="middle">
                            <aspxform:XLabel id="XLabel16" runat="server" text="启动采购"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="OF_Applicant_Fen.Purchase_Name" DisableCssClass="TextBox" Min="0" Max="0" width="162px" BorderColor="Gainsboro" HiddenInput="False" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="OF_Applicant_Fen.Purchase_Owner" Min="0" Max="0" width="55px" BorderColor="Gainsboro" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton4" runat="server" Width="21px" DataMap="DisplayName->OF_Applicant_Fen.Purchase_Name;HRID->OF_Applicant_Fen.Purchase_Owner"></aspxform:XSelectUserButton>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker7" runat="server" XDataBind="OF_Applicant_Fen.Purchase_Plan" BorderColor="#DCDCDC" CssClass="TextBox" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" BorderColor="#DCDCDC" CssClass="TextBox" Width="230px" Type="TimeMinutes" Express="OF_Applicant_Fen.Purchase_Fact"></aspxform:XDateTimePicker>
                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="OF_Applicant_Fen.Purchase_Fact" width="100%" BorderColor="#DCDCDC" BorderWidth="1" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="30" align="middle">
                            <aspxform:XLabel id="XLabel17" runat="server" text="到货时间"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="OF_Applicant_Fen.Receive_Name" DisableCssClass="TextBox" Min="0" Max="0" width="162px" BorderColor="Gainsboro" HiddenInput="False" CssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="OF_Applicant_Fen.Receive_Owner" Min="0" Max="0" width="55px" BorderColor="Gainsboro" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton5" runat="server" Width="21px" DataMap="DisplayName->OF_Applicant_Fen.Receive_Name;HRID->OF_Applicant_Fen.Receive_Owner"></aspxform:XSelectUserButton>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker9" runat="server" XDataBind="OF_Applicant_Fen.Receive_Plan" BorderColor="#DCDCDC" CssClass="TextBox" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker10" runat="server" BorderColor="#DCDCDC" CssClass="TextBox" Width="230px" Type="TimeMinutes" Express="OF_Applicant_Fen.Receive_Fact"></aspxform:XDateTimePicker>
                            <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="OF_Applicant_Fen.Receive_Fact" Min="0" Max="0" BorderColor="Gainsboro" HiddenInput="False" BorderWidth="1px" HiddenExpress="1" Width="11px" Height="27px" ValueToDisplayText Value></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="174">
                            <aspxform:XLabel id="XLabel18" runat="server" text="附件携带栏"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="669">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="OF_Applicant_Fen.Attachments"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName!='提交人'&amp;&amp; Global.StepName!='时间确认'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel49" runat="server" text="超时关联评审" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress="Global.StepName!='提交人'&amp;&amp; Global.StepName!='时间确认'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="30" rowspan="2" width="89" align="middle">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="96" align="middle">
                            <aspxform:XLabel id="XLabel20" runat="server" text="设计确认"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="68" align="middle">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="101" align="middle">
                            <aspxform:XLabel id="XLabel23" runat="server" text="发出打样"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="56" align="middle">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="87" align="middle">
                            <aspxform:XLabel id="XLabel25" runat="server" text="封样完成"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="84" align="middle">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="84" align="middle">
                            <aspxform:XLabel id="XLabel26" runat="server" text="启动采购"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="74" align="middle">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="80">
                            <aspxform:XLabel id="XLabel27" runat="server" text="到货时间"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="29">
                            <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="OF_Applicant_Fen.TaskID" width="100%" BorderColor="#DCDCDC" BorderWidth="1" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="OF_OverTime_Relation.Design_Owner" PromptText="请选择" ValueColumn="Design_Owner" DisplayColumn="Design_Name" XDataSource="TableName:OF_Applicant_Fen;Filter:TaskID->OF_Applicant_Fen.TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="OF_OverTime_Relation.Proofing_Owner" PromptText="请选择" ValueColumn="Proofing_Owner" DisplayColumn="Proofing_Name" XDataSource="TableName:OF_Applicant_Fen;Filter:TaskID->OF_Applicant_Fen.TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="OF_OverTime_Relation.SealedSample_Owner" PromptText="请选择" ValueColumn="SealedSample_Owner" DisplayColumn="SealedSample_Name" XDataSource="TableName:OF_Applicant_Fen;Filter:TaskID->OF_Applicant_Fen.TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="OF_OverTime_Relation.Purchase_Owner" PromptText="请选择" ValueColumn="Purchase_Owner" DisplayColumn="Purchase_Name" XDataSource="TableName:OF_Applicant_Fen;Filter:TaskID->OF_Applicant_Fen.TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="OF_OverTime_Relation.Receive_Owner" PromptText="请选择" ValueColumn="Receive_Owner" DisplayColumn="Receive_Name" XDataSource="TableName:OF_Applicant_Fen;Filter:TaskID->OF_Applicant_Fen.TaskID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel19" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" width="100%" BorderColor="#DCDCDC" BorderWidth="1" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="16" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" BorderColor="Gainsboro" CssClass="AA" BorderWidth="1px" Width="100%" Height="25px"></aspxform:XSignTrace>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="请填写审批信息！" ControlToValidate="XCommentsTextBox1" ValidationGroup="设计师" DisableExpress="OF_Applicant_Fen.MaterialType =='结构'">设计师意见</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="退回请填写原因！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Return">退回重填验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请填写拒绝原因！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Reject">拒绝验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请填写对重新分配时间的意见或建议！" ControlToValidate="XCommentsTextBox1" ValidationGroup="guanliantijiao">关联提交</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请填写审批信息" ControlToValidate="XCommentsTextBox1" ValidationGroup="封样完成2" DisableExpress='OF_Applicant_Fen.MaterialType =="结构"'>封样完成意见</aspxform:XRequiredFieldValidator>
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
