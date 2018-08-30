<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <title>BPM Form</title> <script language="javascript" type="text/javascript">
    function date2str(sDate1) {
    var s, d, t, t2,aDate;
    aDate = sDate1.split("-") ;
    t = Date.UTC(aDate[0], aDate[1], aDate[2]);
    t2 = 31 * 1000 * 3600 * 24; //加减7天的时间
    t+= t2;
    d = new Date(t);
    s = d.getUTCFullYear() + "-";
    s += ("00"+(d.getUTCMonth()+1)).slice(-2) + "-";
    s += ("00"+d.getUTCDate()).slice(-2);

    return s;
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
TD.NoPadding {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px
}
INPUT {
	HEIGHT: 20px
}
INPUT.UL {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #33ff33 1px solid
}
B {
	BackColor: #f0f0f0
	COLOR: red
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
    <form runat="server" style="padding-right: 2px; padding-bottom: inherit; padding-left: 55px; padding-top: 2px">
        <!-- Insert content here -->
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="20%" height="38">
                        <div align="center">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                        </div>
                    </td>
                    <td width="60%">
                        <div align="center">
                            <div align="center">
                                <aspxform:XLabel id="XLabel18" runat="server" Font-Bold="True" Font-Names="Tahoma" text="付款申请单" Font-Size="Medium"></aspxform:XLabel>
                            </div>
                        </div>
                    </td>
                    <td width="20%">
                        <aspxform:XLabel id="XLabel19" runat="server" Font-Names="Arial Black" Font-Size="Small" XDataBind="Fin_Applicant.SN"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" colspan="3" height="33">
                        <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;<aspxform:XLabel id="XLabel60" runat="server" text="附件共"></aspxform:XLabel>
                            <aspxform:XLabel id="XLabel61" runat="server" Width="30px"></aspxform:XLabel>
                            <aspxform:XLabel id="XLabel62" runat="server" text="页"></aspxform:XLabel>
                        </div>
                    </td>
                </tr>
                <tr>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="110" bgcolor="transparent" height="23">
                        <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" size="2">
                        <aspxform:XLabel id="_Location" runat="server" text="申请日期" ForeColor="Gray"></aspxform:XLabel>
                        </font></span></span></span></td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="264" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox2" runat="server" BackColor="#F0F0F0" XDataBind="Fin_Applicant.AppDate" DisableBehavior="ReadOnly" BorderColor="#DCDCDC" BorderWidth="1" width="240px" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="90" bgcolor="transparent">
                        <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                        <aspxform:XLabel id="XLabel2" runat="server" text="申请单号" ForeColor="Gray"></aspxform:XLabel>
                        </span></td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="259" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox1" runat="server" BackColor="#F0F0F0" XDataBind="Fin_Applicant.SN" DisableBehavior="ReadOnly" BorderColor="Gainsboro" BorderWidth="1px" width="240px" ReadOnly="True" BorderStyle="None" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2" height="24">
                        <span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" color="black" size="2">
                        <aspxform:XLabel id="PerInfo" runat="server" text="负责人"></aspxform:XLabel>
                        </font></span></span></td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2">
                        <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><font color="black">
                        <aspxform:XLabel id="XLabel3" runat="server" text="代理人"></aspxform:XLabel>
                        </font></span></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="26">
                        <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                        <aspxform:XLabel id="XLabel4" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                        </span></td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox3" runat="server" BackColor="#F0F0F0" XDataBind="Fin_Applicant.Applicant" DisableBehavior="ReadOnly" BorderColor="#DCDCDC" BorderWidth="1" width="240px" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                        <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt">
                        <aspxform:XLabel id="XLabel5" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                        </span></td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox16" runat="server" BackColor="#F0F0F0" XDataBind="Fin_Applicant.Sub_Name" DisableBehavior="ReadOnly" BorderColor="#DCDCDC" BorderWidth="1" width="240px" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                        <aspxform:XLabel id="XLabel6" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                        <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox10" runat="server" BackColor="#F0F0F0" XDataBind="Fin_Applicant.Dept" DisableBehavior="ReadOnly" BorderColor="#DCDCDC" BorderWidth="1" width="240px" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                        <aspxform:XLabel id="XLabel7" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                        <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox11" runat="server" BackColor="#F0F0F0" XDataBind="Fin_Applicant.Sub_Dept" DisableBehavior="ReadOnly" BorderColor="#DCDCDC" BorderWidth="1" width="240px" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="white" colspan="4" height="36">
                        <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="Fin_Applicant.HRID" BorderColor="Gainsboro" BorderWidth="1px" width="44px" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="Fin_Applicant.Sub_HRID" BorderColor="Gainsboro" BorderWidth="1px" width="44px" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="Fin_Payee.Bank_Name" BorderColor="Gainsboro" BorderWidth="1px" width="77px" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                        <aspxform:XDateTimePicker id="XDateTimePicker2" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="v1" Width="24px" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" Express="Fin_Applicant.AppDate" onchange="javascript:XFormOnChange(this);" HiddenExpress="1" XType="datetime" XSubType="date"></aspxform:XDateTimePicker>
                        <aspxform:XDateTimePicker id="XDateTimePicker3" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="var" Width="176px" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" Express="javascript('date2str',v2)" onchange="javascript:XFormOnChange(this);" HiddenExpress="1" XType="datetime" XSubType="date"></aspxform:XDateTimePicker>
                        <aspxform:XDateTimePicker id="XDateTimePicker4" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="v2" Width="24px" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" Express="Fin_Applicant.AppDate" onchange="javascript:XFormOnChange(this);" HiddenExpress="1" XType="datetime" XSubType="date"></aspxform:XDateTimePicker>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="4" height="24">
                        <aspxform:XLabel id="XLabel12" runat="server" text="付款明细"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="115" bgcolor="transparent" height="23">
                        <span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" size="2">
                        <aspxform:XLabel id="XLabel1" runat="server" text="类型" ForeColor="Gray"></aspxform:XLabel>
                        </font></span></span></td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="3">
                        <span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" size="2">
                        <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="Fin_Payee.Invoice" Width="100%" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">有发票付款</asp:ListItem>
                            <asp:ListItem>无发票付款</asp:ListItem>
                            <asp:ListItem>之前有发票付后续款</asp:ListItem>
                        </aspxform:XRadioButtonList>
                        </font></span></span><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" size="2"></font></span></span></span></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="24">
                        <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" size="2">
                        <aspxform:XLabel id="XLabel9" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                        </font></span></span></span></td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="262" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="Fin_Payee.Payee" BorderColor="#DCDCDC" BorderWidth="1" width="240px"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="113">
                        <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"></span></span></span></span></td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="265" bgcolor="#f0f0f0">
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                        <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt">
                        <aspxform:XLabel id="XLabel15" runat="server" text="开户行" ForeColor="Gray"></aspxform:XLabel>
                        </span></span></span></span></span></span></span></td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" valign="bottom" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="Fin_Payee.BankName" BorderColor="#DCDCDC" BorderWidth="1" width="240px"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                        <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt">
                        <aspxform:XLabel id="XLabel14" runat="server" text="账号" ForeColor="Gray"></aspxform:XLabel>
                        </span></span></span></span></span></span></span></td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="Fin_Payee.Account" BorderColor="#DCDCDC" BorderWidth="1" width="240px"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                        <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                        <aspxform:XLabel id="XLabel16" runat="server" text="付款金额" ForeColor="Gray"></aspxform:XLabel>
                        </span></span></td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="Fin_Payee.Amount" BorderColor="#DCDCDC" BorderWidth="1" width="240px" BorderStyle="None" Format="type:currency;.2"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                        <aspxform:XLabel id="XLabel13" runat="server" text="发票金额" ForeColor="Gray" HiddenExpress="Fin_Payee.Invoice!='有发票付款'"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="Fin_Payee.Invoice_Amount" BorderColor="#DCDCDC" BorderWidth="1px" width="240px" Express="if(Fin_Payee.Invoice!='有发票付款',0,Fin_Payee.Invoice)" HiddenExpress="Fin_Payee.Invoice!='有发票付款'" Format="type:currency;.2" DisableExpress="Fin_Payee.Invoice!='有发票付款'"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="24">
                        <aspxform:XLabel id="XLabel44" runat="server" text="币种" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="Fin_Payee.Unit" DataMap="Rate->Fin_Payee.Rate" XDataSource="TableName:Fin_R_Rate" DisplayColumn="Unit" ValueColumn="Unit">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                        <aspxform:XLabel id="XLabel43" runat="server" text="预计取回发票日期" ForeColor="Gray" HiddenExpress="Fin_Payee.Invoice!='无发票付款'"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="Fin_Payee.Date" Width="240px" BorderColor="#DCDCDC" BorderWidth="1" BorderStyle="Groove" HiddenExpress="Fin_Payee.Invoice!='无发票付款'" DisableExpress="Fin_Payee.Invoice!='无发票付款'"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                        <aspxform:XLabel id="XLabel10" runat="server" text="附件" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="3">
                        <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="Fin_Payee.Attachment"></aspxform:XMSNAttachments>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="26">
                        <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                        <aspxform:XLabel id="XLabel11" runat="server" text="付款原因" ForeColor="Gray"></aspxform:XLabel>
                        </span></td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="3">
                        <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="4" height="95">
                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="Fin_Payee.Reason" BorderColor="Gainsboro" BorderWidth="1px" width="100%" Max="0" Min="0" HiddenInput="False" Rows="4" TextMode="MultiLine" Height="89px"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="24">
                        <aspxform:XLabel id="XLabel48" runat="server" text="挂账金额" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="Fin_Payee.Amount_GZ" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Express="if(Fin_Payee.Invoice=='无发票付款',Fin_Payee.Amount,(if(Fin_Payee.Invoice=='有发票付款',Fin_Payee.Amount+if(Fin_Payee.Total=='',0,Fin_Payee.Total)+if(Fin_Payee.Amount_C==''||Fin_Payee.Amount_C<0,0,Fin_Payee.Amount_C)+if(Fin_Payee.Amount_P==''||Fin_Payee.Amount_P<0,0,Fin_Payee.Amount_P)-Fin_Payee.Invoice_Amount,Fin_Payee.Amount+if(Fin_Payee.Amount_C==''||Fin_Payee.Amount_C>0,0,Fin_Payee.Amount_C)+if(Fin_Payee.Amount_P==''||Fin_Payee.Amount_P>0,0,Fin_Payee.Amount_P))))" Format="type:currency;.2" DisableExpress="Global.StepName!='财务审核'"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress="Global.StepName!='财务审核'">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="115" height="21">
                        <aspxform:XLabel id="XLabel17" runat="server" text="所属公司" Width="48px" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="3">
                        <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="Fin_Applicant.Company" XDataSource="TableName:Fin_R_Company" DisplayColumn="Name" ValueColumn="Code">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="24">
                        <aspxform:XLabel id="XLabel20" runat="server" text="挂账" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="262" bgcolor="#f0f0f0">
                        <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="Fin_Payee.GZ" Width="100%" RepeatDirection="Horizontal">
                            <asp:ListItem>挂个人</asp:ListItem>
                            <asp:ListItem Selected="True" Value="挂收款单位">挂收款单位</asp:ListItem>
                        </aspxform:XRadioButtonList>
                    </td>
                    <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="188" bgcolor="#f0f0f0">
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="188" bgcolor="#f0f0f0">
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress="Global.StepName!='出纳打款'">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="115" height="24">
                        <aspxform:XLabel id="XLabel47" runat="server" text="付款银行" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="642" bgcolor="#f0f0f0">
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="Fin_Payee.Bank_Acc" DataMap="Name->Fin_Payee.Bank_Name" XDataSource="TableName:Fin_R_Cash" DisplayColumn="Name" ValueColumn="No">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="24">
                        <aspxform:XLabel id="XLabel46" runat="server" text="实际付款金额" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="Fin_Payee.Amount_Act" BorderColor="Gainsboro" BorderWidth="1px" width="122px" BorderStyle="Groove" Max="0" Min="0" HiddenInput="False" Express="Fin_Payee.Amount*Fin_Payee.Rate" Format="type:currency;.2"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" height="24">
                        <aspxform:XLabel id="XLabel45" runat="server" text="汇率" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="Fin_Payee.Rate" BorderColor="Gainsboro" BorderWidth="1px" width="122px" BorderStyle="Groove" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table cellspacing="0" cellpadding="0" width="738" border="0">
            <tbody>
                <tr>
                    <td width="736" bgcolor="#d1dedf" height="31">
                        <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="Fin_Payee.Amount_C" BorderColor="Gainsboro" BorderWidth="1px" width="47px" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True" Express="sum(if(Fin_CE_Pay_C_Info.State==1,if(Fin_CE_Pay_C_Info.Amount=='',0,Fin_CE_Pay_C_Info.Amount),0))" Height="15px"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox36" runat="server" XDataBind="Fin_Payee.Amount_P" BorderColor="Gainsboro" BorderWidth="1px" width="47px" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True" Express="sum(if(Fin_CE_Pay_Info.State==1,if(Fin_CE_Pay_Info.Amount=='',0,Fin_CE_Pay_Info.Amount),0))" Height="16px"></aspxform:XTextBox>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="收款单位不能为空" ControlToValidate="XTextBox4" ValidationGroup="Star">收款单位</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="账号不能为空" ControlToValidate="XTextBox6" ValidationGroup="Star">账号</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" DisableExpress="Fin_Payee.Invoice!='无发票付款'" Display="None" ErrorMessage="请填写预计取回发票的日期！" ControlToValidate="XDateTimePicker1" ValidationGroup="Star">预计取回发票日期</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" DisableExpress="Fin_Payee.Invoice!='有发票付款'" Display="None" ErrorMessage="请填写发票金额！" ControlToValidate="XTextBox9" ValidationGroup="Star">发票金额</aspxform:XRequiredFieldValidator>
                        <aspxform:XCompareValidator id="XCompareValidator1" runat="server" DisableExpress="Fin_Payee.Invoice=='无发票付款'" Display="None" ErrorMessage="付款金额不能大于发票金额和冲抵总额的差！" ControlToValidate="XTextBox8" ValidationGroup="Star" Type="Double" ValueToCompareExpress="Fin_Payee.Invoice_Amount-if(Fin_Payee.Amount_C=='',0,Fin_Payee.Amount_C)-if(Fin_Payee.Amount_P=='',0,Fin_Payee.Amount_P)-if(Fin_Payee.Total=='',0,Fin_Payee.Total)" Operator="LessThanEqual">付款金额</aspxform:XCompareValidator>
                        <aspxform:XCompareValidator id="XCompareValidator4" runat="server" Display="None" ErrorMessage="预计取回发票日期不能小于当前日期！" ControlToValidate="XDateTimePicker1" ValidationGroup="Star" Type="Date" Operator="GreaterThan" ControlToCompare="XDateTimePicker2">预计取回发票日期</aspxform:XCompareValidator>
                        <aspxform:XCompareValidator id="XCompareValidator5" runat="server" Display="None" ErrorMessage="预计取回发票日期不能超过两个月！" ControlToValidate="XDateTimePicker1" ValidationGroup="Star" Type="Date" Operator="LessThan" ControlToCompare="XDateTimePicker3">预计取回发票日期</aspxform:XCompareValidator>
                        <aspxform:XCompareValidator id="XCompareValidator6" runat="server" Display="None" ErrorMessage="冲抵金额超出了借款！" ControlToValidate="XTextBox44" ValidationGroup="Star" Type="Double" ValueToCompareExpress="(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount)" Operator="LessThanEqual">每单冲抵额验证</aspxform:XCompareValidator>
                        <aspxform:XCompareValidator id="XCompareValidator7" runat="server" DisableExpress="Fin_Payee.Invoice!='之前有发票付后续款'" Display="None" ErrorMessage="付后续款时，必须有冲抵！" ControlToValidate="XTextBox32" ValidationGroup="Star" Type="Double" Operator="LessThanEqual" ValueToCompare="0">挂账金额</aspxform:XCompareValidator>
                        <aspxform:XCompareValidator id="XCompareValidator8" runat="server" Display="None" ErrorMessage="付款金额必须大于0" ControlToValidate="XTextBox8" ValidationGroup="Star" Type="Double" Operator="GreaterThan" ValueToCompare="0.01" CultureInvariantValues="True">付款金额必须大于0</aspxform:XCompareValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="请填写付款金额！" ControlToValidate="XTextBox8" ValidationGroup="Star">请填写付款金额</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="请填写开户行" ControlToValidate="XTextBox7" ValidationGroup="Star">请填写开户行</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="必须填写付款原因" ControlToValidate="XTextBox5" ValidationGroup="Star">必须填写付款原因</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请填写退回意见！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Return">退回重填验证</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请填写拒绝理由！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Reject">拒绝验证</aspxform:XRequiredFieldValidator>
                        <aspxform:XCompareValidator id="XCompareValidator2" runat="server" DisableExpress="Fin_Payee.Invoice!='无发票付款'" Display="None" ErrorMessage="无发票付款时，不能有冲抵！" ControlToValidate="XTextBox33" ValidationGroup="Star" Type="Double" Operator="LessThan" ValueToCompare="0.01">冲抵勾选验证</aspxform:XCompareValidator>
                        <aspxform:XCompareValidator id="XCompareValidator3" runat="server" DisableExpress="Fin_Payee.Invoice!='无发票付款'" Display="None" ErrorMessage="无发票付款时，不能有冲抵！" ControlToValidate="XTextBox35" ValidationGroup="Star" Operator="LessThan" ValueToCompare="0.01">冲抵勾选验证</aspxform:XCompareValidator>
                    </td>
                </tr>
            </tbody>
        </table>
        <table id="table1" style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" dynamicarea="2,1" xdatasource="TableName:V_Fin_Loan_Info;Filter:HRID->Fin_Applicant.HRID" datamap="SN->Fin_ClaimingExpenses_LoanInfo.LoanSN;Amount->Fin_ClaimingExpenses_LoanInfo.LoanAmount;Remain->Fin_ClaimingExpenses_LoanInfo.Remain;Reason->Fin_ClaimingExpenses_LoanInfo.Reason;Date->Fin_ClaimingExpenses_LoanInfo.Date;RunningAmount->Fin_ClaimingExpenses_LoanInfo.RunningAmount">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" colspan="8" height="24">
                        <font face="Arial" color="black">
                        <aspxform:XLabel id="XLabel59" runat="server" text="个人借款明细 "></aspxform:XLabel>
                        </font></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="43" bgcolor="transparent" height="25">
                        <div align="center">
                            <aspxform:XLabel id="XLabel30" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="126" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel37" runat="server" text="借款单号" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="77" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel38" runat="server" text="借款金额" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="87" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel39" runat="server" text="剩余借款" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="100" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel21" runat="server" text="在途审批金额" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="101">
                        <div align="center">
                            <aspxform:XLabel id="XLabel49" runat="server" text="事由" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="101" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel22" runat="server" text="预计还款报销日期" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="78" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel50" runat="server" text="本次冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="26">
                        <aspxform:XGridLineNo id="XGridLineNo5" runat="server" Width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XGridLineNo>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox40" runat="server" BackColor="White" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanSN" DisableBehavior="ReadOnly" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox41" runat="server" BackColor="White" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanAmount" DisableBehavior="ReadOnly" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" Format="type:currency;.2"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox42" runat="server" BackColor="White" XDataBind="Fin_ClaimingExpenses_LoanInfo.Remain" DisableBehavior="ReadOnly" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" Format="type:currency;.2"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox14" runat="server" BackColor="White" XDataBind="Fin_ClaimingExpenses_LoanInfo.RunningAmount" DisableBehavior="ReadOnly" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" Format="type:currency;.2"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox43" runat="server" BackColor="White" XDataBind="Fin_ClaimingExpenses_LoanInfo.Reason" DisableBehavior="ReadOnly" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XDateTimePicker id="XDateTimePicker5" onclick="MShowDateSelector(this,event,'CN','http://192.168.0.245:8085/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Date" Width="96px" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" XType="datetime" XSubType="date" DisableExpress="1"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.OffsetAmount" DisableBehavior="ReadOnly" BorderColor="#DCDCDC" BorderWidth="1" width="100%" HiddenExpress="Fin_Payee.Invoice!='有发票付款'" Format="type:currency;.2"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" colspan="2">
                        <div align="right">
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox15" runat="server" BackColor="White" XDataBind="Fin_Payee.LoanAmount" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" Express="sum(Fin_ClaimingExpenses_LoanInfo.Remain)"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox18" runat="server" BackColor="White" XDataBind="Fin_Payee.Amount_Running" DisableBehavior="ReadOnly" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" Express="sum(Fin_ClaimingExpenses_LoanInfo.RunningAmount)"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid">
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid">
                        <div align="right">
                            <aspxform:XLabel id="XLabel51" runat="server" Font-Bold="False" text="合计" ForeColor="Gray" HiddenExpress="Fin_Payee.Invoice!='有发票付款'"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="antiquewhite">
                        <aspxform:XTextBox id="XTextBox45" runat="server" BackColor="AntiqueWhite" XDataBind="Fin_Payee.Total" DisableBehavior="ReadOnly" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" Express="sum(Fin_ClaimingExpenses_LoanInfo.OffsetAmount)" HiddenExpress="Fin_Payee.Invoice!='有发票付款'"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" dynamicarea="2,1" xdatasource="TableName:V_Fin_Pay_Info;Filter:HRID->Fin_Applicant.HRID,Type->Fin_Payee.Invoice" datamap="SN->Fin_CE_Pay_Info.PaySN;Payee->Fin_CE_Pay_Info.Payee;Amount_GZ->Fin_CE_Pay_Info.Amount;Date->Fin_CE_Pay_Info.Date;Reason->Fin_CE_Pay_Info.Reason">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" colspan="7" height="25">
                        <font face="Arial" color="black">
                        <aspxform:XLabel id="XLabel23" runat="server" text="付公司挂个人往来明细"></aspxform:XLabel>
                        </font></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="39" bgcolor="transparent" height="25">
                        <div align="center">
                            <aspxform:XLabel id="XLabel29" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="100" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel31" runat="server" text="付费单号" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="183" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel32" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="99" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel33" runat="server" text="预计取回发票日期" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="158" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel34" runat="server" text="付款事由" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="65" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel35" runat="server" text="金额" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="72" bgcolor="transparent">
                        <div align="center">
                            <div align="center">
                                <aspxform:XLabel id="XLabel40" runat="server" text="本次冲抵" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="24">
                        <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XGridLineNo>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox27" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_Info.PaySN" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox28" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_Info.Payee" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XDateTimePicker id="XDateTimePicker6" onclick="MShowDateSelector(this,event,'CN','http://192.168.0.245:8085/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_Pay_Info.Date" Width="96px" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" onchange="javascript:XFormOnChange(this);" XType="datetime" XSubType="date" DisableExpress="1"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox30" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_Info.Reason" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox31" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_Info.Amount" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" Format="type:currency;.2"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <div align="center">
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="Fin_CE_Pay_Info.State" Text=" "></aspxform:XCheckBox>
                            <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="var2" BorderColor="Gainsboro" BorderWidth="1px" width="16px" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True" Express="Fin_CE_Pay_Info.State"></aspxform:XTextBox>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" dynamicarea="2,1" xdatasource="TableName:V_Fin_Pay_C_Info;Filter:HRID->Fin_Applicant.HRID,Type->Fin_Payee.Invoice" datamap="SN->Fin_CE_Pay_C_Info.PaySN;Payee->Fin_CE_Pay_C_Info.Payee;Amount_GZ->Fin_CE_Pay_C_Info.Amount;Date->Fin_CE_Pay_C_Info.Date;Reason->Fin_CE_Pay_C_Info.Reason">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" colspan="7" height="25">
                        <aspxform:XLabel id="XLabel24" runat="server" text="付公司挂单位往来明细"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="39" height="26">
                        <div align="center">
                            <aspxform:XLabel id="XLabel25" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="99">
                        <div align="center">
                            <aspxform:XLabel id="XLabel26" runat="server" text="付费单号" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="184">
                        <div align="center">
                            <aspxform:XLabel id="XLabel27" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="98">
                        <div align="center">
                            <aspxform:XLabel id="XLabel28" runat="server" text="预计取回发票日期" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="154">
                        <div align="center">
                            <aspxform:XLabel id="XLabel36" runat="server" text="付款事由" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="67">
                        <div align="center">
                            <aspxform:XLabel id="XLabel41" runat="server" text="金额" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="75">
                        <div align="center">
                            <aspxform:XLabel id="XLabel42" runat="server" text="本次冲抵" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="24">
                        <aspxform:XGridLineNo id="XGridLineNo3" runat="server" Width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XGridLineNo>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox21" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_C_Info.PaySN" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox22" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_C_Info.Payee" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XDateTimePicker id="XDateTimePicker7" onclick="MShowDateSelector(this,event,'CN','http://192.168.0.245:8085/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_Pay_C_Info.Date" Width="96px" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" onchange="javascript:XFormOnChange(this);" XType="datetime" XSubType="date" DisableExpress="1"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox24" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_C_Info.Reason" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <aspxform:XTextBox id="XTextBox25" runat="server" BackColor="White" XDataBind="Fin_CE_Pay_C_Info.Amount" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" Format="type:currency;.2"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        <div align="center">
                            <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="Fin_CE_Pay_C_Info.State" Text=" "></aspxform:XCheckBox>
                            <aspxform:XTextBox id="XTextBox34" runat="server" XDataBind="var1" BorderColor="Gainsboro" BorderWidth="1px" width="16px" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True" Express="Fin_CE_Pay_C_Info.State"></aspxform:XTextBox>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2" height="23">
                        <aspxform:XLabel id="XLabel8" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="2" height="55">
                        <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Rows="3" TextMode="MultiLine" PrintOut="False"></aspxform:XCommentsTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="2" height="32">
                        <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="100%" BorderColor="#dcdcdc" BorderWidth="1" CssClass="AA"></aspxform:XSignTrace>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: white 1px solid" valign="bottom" align="right" width="213" height="26">
                        <aspxform:XPrintButton id="XPrintButton1" runat="server" Width="80px" HiddenExpress="Global.StepName =='开始'" Height="20px" PageHeaderFormat="\t" PageFooterFormat="提交人:____________部门负责人:___________初审人:___________复核人:___________"></aspxform:XPrintButton>
                    </td>
                    <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" valign="bottom" align="left" width="547">
                        <table cellspacing="0" cellpadding="0" hiddenexpress="Global.StepName =='财务记账'">
                            <tbody>
                                <tr>
                                    <td>
                                        <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->Fin_Applicant.Dept" DorpDownListCssClass="b" SystemBtnCssClass="a" ProcessBtnCssClass="a"></aspxform:XProcessButtonList>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <table cellspacing="0" cellpadding="0" width="738" border="0">
            <tbody>
                <tr>
                    <td width="242" height="17">
                    </td>
                    <td width="466">
                    </td>
                    <td width="50">
                    </td>
                </tr>
                <tr>
                    <td colspan="3" height="162">
                        <p>
                            <aspxform:XLabel id="XLabel52" runat="server" Font-Size="Medium" ForeColor="Red" Text="付款注意事项:" PrintOut="False"></aspxform:XLabel>
                        </p>
                        <p>
                        </p>
                        <p>
                        </p>
                        <p>
                            <aspxform:XLabel id="XLabel53" runat="server" text="1. 提交后请在系统的“历史申请”中将此单打印作为报销单封面附于原始单据前转交至财务部审核。" PrintOut="False"></aspxform:XLabel>
                        </p>
                        <p>
                            <aspxform:XLabel id="XLabel54" runat="server" text="2. “代理人”为此次付款申请的经办人；“负责人”为最终责任人；" PrintOut="False"></aspxform:XLabel>
                        </p>
                        <p>
                            <aspxform:XLabel id="XLabel55" runat="server" text="3. “付款原因”栏要详细填写付款原因；“付款金额”必须是大于0的数值；" PrintOut="False"></aspxform:XLabel>
                        </p>
                        <p>
                            <aspxform:XLabel id="XLabel56" runat="server" text="4. 若“个人借款明细”中的“剩余借款”大于0，请选择“预计还款/报销日期”最早的项目来进行冲抵；" PrintOut="False"></aspxform:XLabel>
                        </p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 
                            <aspxform:XLabel id="XLabel57" runat="server" text="在“本次冲抵金额”中填写冲抵金额，此金额应小于或等于本次报销的金额；" PrintOut="False"></aspxform:XLabel>
                        </p>
                        <p>
                            &nbsp;&nbsp;&nbsp; 
                            <aspxform:XLabel id="XLabel58" runat="server" Text="如不冲抵则无法报销；" PrintOut="False"></aspxform:XLabel>
                        </p>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
