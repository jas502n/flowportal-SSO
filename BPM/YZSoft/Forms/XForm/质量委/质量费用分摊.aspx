<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
        {
           XTextBox2.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox11.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox13.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox14.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
         }

</script>
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <title>BPM Form</title><style>BODY {
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
.TextBox {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: silver 1px solid
}
TEXTAREA {
	BORDER-RIGHT: #ffffff 0px solid; BORDER-TOP: #ffffff 0px solid; OVERFLOW-Y: visible; BACKGROUND: #ffffff; OVERFLOW: hidden; BORDER-LEFT: #ffffff 0px solid; BORDER-BOTTOM: #ffb3a7 0px solid
}
</style>
</head>
<body>
    <form runat="server">
        <p align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" rowspan="3" width="150">
                            <asp:Image id="Image2" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" rowspan="3" width="600" align="middle">
                            <aspxform:XLabel id="XLabel18" runat="server" Font-Bold="True" Font-Size="Medium" text="深圳创维数字技术股份有限公司" Font-Names="Tahoma"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" bgcolor="white" height="19" width="68" align="right">
                            <p>
                                <aspxform:XLabel id="XLabel47" runat="server" text="版本:" Value ValueToDisplayText></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" width="98">
                            <aspxform:XLabel id="XLabel49" runat="server" text="V2.01" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" height="18" align="right">
                            <p>
                                <aspxform:XLabel id="XLabel46" runat="server" text="发布日期:" Value ValueToDisplayText></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
                            <aspxform:XLabel id="XLabel48" runat="server" text="2014/1/18" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="22" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel19" runat="server" Value ValueToDisplayText XDataBind="QS_Applicant.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="49" width="20%" colspan="4">
                            <div align="center">
                            </div>
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel13" runat="server" Font-Bold="True" Font-Size="Medium" text="质量成本单" Font-Names="Tahoma"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="33" colspan="4">
                            <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;
                                <aspxform:XLabel id="XLabel52" runat="server" text="附件共"></aspxform:XLabel>
                                <aspxform:XLabel id="XLabel55" runat="server" Width="30px"></aspxform:XLabel>
                                <aspxform:XLabel id="XLabel54" runat="server" text="页"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                </tbody>
            </table>
        </p>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900" align="center">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="25" width="108">
                            <aspxform:XLabel id="_Location" runat="server" text="申请日期" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial"></font></span></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="255">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="QS_Applicant.AppDate" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="108">
                            <aspxform:XLabel id="XLabel1" runat="server" text="申请单号" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="254">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="QS_Applicant.SN" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Height="22px" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="26" colspan="2">
                            <aspxform:XLabel id="PerInfo" runat="server" text="申请人"></aspxform:XLabel>
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><font color="black">
                            <aspxform:XLabel id="XLabel2" runat="server" text="代理人"></aspxform:XLabel>
                            </font></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel24" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="QS_Applicant.Applicant" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel26" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="QS_Applicant.Sub_Name" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel25" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="QS_Applicant.Dept" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" align="Justify">
                            <aspxform:XLabel id="XLabel27" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="QS_Applicant.Sub_Dept" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900" align="center">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="33" colspan="7">
                            <aspxform:XLabel id="XLabel3" runat="server" text="费用"></aspxform:XLabel>
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="29" width="78">
                            <aspxform:XLabel id="XLabel5" runat="server" text="费用额度" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="155">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox6" runat="server" XDataBind="QS_Applicant.PayTotal" DisableBehavior="ReadOnly" width="100px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Height="20px" HiddenInput="False" NormalCssClass="TextBox" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="78" align="Justify">
                            <aspxform:XLabel id="XLabel6" runat="server" text="费用单据详情" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="4">
                            <aspxform:XHistoryFormLink id="XHistoryFormLink1" runat="server" XDataBind="QS_Applicant.DetailTaskID" Text="详情"></aspxform:XHistoryFormLink>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                            <aspxform:XLabel id="XLabel12" runat="server" text="订单/项目" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="QS_Applicant.QualityProject" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel14" runat="server" text="事故时间" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="125" colspan="2">
                            <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" XDataBind="QS_Applicant.QualityTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="60">
                            <aspxform:XLabel id="XLabel17" runat="server" text="产品线" Value ValueToDisplayText ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="355">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="QS_Applicant.QualityPL" XDataSource="TableName:QS_ProductLine" DisplayColumn="ProductLine" ValueColumn="pd_id">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                            <aspxform:XLabel id="XLabel15" runat="server" text="事故原因" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="6">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="QS_Applicant.QualityReason" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                            <aspxform:XLabel id="XLabel16" runat="server" text="事故简述" Value ValueToDisplayText ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="6">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="QS_Applicant.QualityOutline" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Height="24px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                            <aspxform:XLabel id="XLabel75" runat="server" text="凭证" Value ValueToDisplayText ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="6">
                            <aspxform:XAttachments id="XAttachments2" runat="server" XDataBind="QS_Applicant.QualityAttachments" width="100%"></aspxform:XAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900" align="center" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="26" colspan="8">
                            <aspxform:XLabel id="XLabel4" runat="server" text="责任归属判定"></aspxform:XLabel>
                            <aspxform:XTextBox id="tbxGN" runat="server" XDataBind="QS_Applicant.GN" width="10px" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="tbxKD" runat="server" XDataBind="QS_Applicant.KD" width="10px" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="tbxWX" runat="server" XDataBind="QS_Applicant.WX" width="10px" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="tbxHWYY" runat="server" XDataBind="QS_Applicant.HWYY" width="10px" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="tbxHWLS" runat="server" XDataBind="QS_Applicant.HWLS" width="10px" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1"></aspxform:XTextBox>
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="38" width="21">
                            <div align="center">
                                <aspxform:XLabel id="XLabel7" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" colspan="2">
                            <div align="center">
                                <aspxform:XLabel id="XLabel8" runat="server" text="责任部门" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" width="133">
                            <div align="center">
                                <aspxform:XLabel id="XLabel20" runat="server" text="质量费用分类" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                            <aspxform:XLabel id="XLabel10" runat="server" text="原因调查" Value ValueToDisplayText ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                            <aspxform:XLabel id="XLabel9" runat="server" text="责任划分" Value ValueToDisplayText ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                            <aspxform:XLabel id="XLabel11" runat="server" text="附件" Value ValueToDisplayText ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" width="77">
                            <div align="center">
                                <aspxform:XLabel id="XLabel21" runat="server" text="承担额度" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="21">
                            <div align="center">
                                <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="19px" BorderWidth="1px" BorderColor="Gainsboro" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" colspan="2">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox10" runat="server" Value ValueToDisplayText XDataBind="QS_Applicant_Body.DutyDept" Width="100px" DisableBehavior="ReadOnly" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Height="20px" HiddenInput="False" NormalCssClass="TextBox" Express="QS_Applicant.Dept"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <div align="center">
                                <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="QS_Applicant_Body.QC_Type" Width="100px" XDataSource="TableName:QS_QualityType" DisplayColumn="QC_Type" ValueColumn="id" onchange="javascript:XFormOnChange(this);">
                                    <asp:ListItem>未绑定</asp:ListItem>
                                </aspxform:XDropDownList>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox11" runat="server" Value ValueToDisplayText XDataBind="QS_Applicant_Body.Reason" Width="200px" DisableBehavior="ReadOnly" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Height="20px" HiddenInput="False" NormalCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox2" runat="server" Value ValueToDisplayText XDataBind="QS_Applicant_Body.Responsibility" Width="150px" DisableBehavior="ReadOnly" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Height="20px" HiddenInput="False" NormalCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XAttachments id="XAttachments1" runat="server" XDataBind="QS_Applicant_Body.Attachments" width="132px" MaximumFileSize></aspxform:XAttachments>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <div align="center">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox3" runat="server" Value ValueToDisplayText XDataBind="QS_Applicant_Body.Limit" DisableBehavior="ReadOnly" width="60px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Height="20px" HiddenInput="False" NormalCssClass="TextBox" Format="type:currency;.2" Express="QS_Applicant.PayTotal"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" height="24">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XLabel id="XLabel58" runat="server" text="是否需供方/外协厂索赔" Value ValueToDisplayText Width="137px" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td width="166">
                            <p>
                                <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="QS_Applicant.ThirdPartyClaimYN" RepeatDirection="Horizontal">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem>否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                        </td>
                        <td colspan="4">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="QS_Applicant.ThirdPartyClaim" HiddenExpress='QS_Applicant.ThirdPartyClaimYN!="是"' RepeatDirection="Horizontal">
                                <asp:ListItem>供方</asp:ListItem>
                                <asp:ListItem>外协厂</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox4" runat="server" Value ValueToDisplayText BackColor="AntiqueWhite" width="60px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Format="type:currency;.2" Express="sum(QS_Applicant_Body.Limit)"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="26" colspan="2">
                            <aspxform:XLabel id="XLabel23" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="承担额度不能为空" ControlToValidate="XTextBox3">承担额度不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="费用额度不能为空" ControlToValidate="XTextBox6">费用额度不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请选择是否需向第三方索赔" ControlToValidate="XRadioButtonList2" ValidationGroup="ZLW">请选择是否需向第三方索赔</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="请填写退回意见！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Return">退回重填验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator1" runat="server" Display="None" ErrorMessage="额度总和不能大于费用额度！" ControlToValidate="XTextBox4" ValueToCompareExpress="QS_Applicant.PayTotal" Operator="LessThanEqual" Type="Double">额度总和不能大于费用额度！</aspxform:XCompareValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="责任部门不能为空" ControlToValidate="XTextBox10">责任部门不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请选择质量费用分类" ControlToValidate="XDropDownList1">请选择质量费用分类</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="原因调查不能为空" ControlToValidate="XTextBox11">原因调查不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="责任划分不能为空" ControlToValidate="XTextBox2">责任划分不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="请提交附件" ControlToValidate="XAttachments1" ValidationGroup="SP">请提交附件</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" Display="None" ErrorMessage="订单项目不能为空" ControlToValidate="XTextBox12" ValidationGroup="Star">订单项目不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" Display="None" ErrorMessage="事故时间不能为空" ControlToValidate="XDateTimePicker8" ValidationGroup="Star">事故时间不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" Display="None" ErrorMessage="请选择产品线" ControlToValidate="XDropDownList3" ValidationGroup="Star">请选择产品线</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" Display="None" ErrorMessage="事故原因不能为空" ControlToValidate="XTextBox13" ValidationGroup="Star">事故原因不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" Display="None" ErrorMessage="事故简述不能为空" ControlToValidate="XTextBox14" ValidationGroup="Star">事故简述不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" Display="None" ErrorMessage="请选择供方或外协厂" ControlToValidate="XRadioButtonList1" ValidationGroup="ZLW" DisableExpress='QS_Applicant.ThirdPartyClaimYN!="是"'>请选择供方或外协厂</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Height="60px" TextMode="MultiLine" PrintOut="False" ValidationGroup="退回" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="100%" BorderWidth="1" BorderColor="#dcdcdc" CssClass="AA"></aspxform:XSignTrace>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="26" valign="bottom" width="50" align="right">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" Width="80px" Height="20px" HiddenExpress="Global.StepName =='开始'" PageHeaderFormat="\t" PageFooterFormat="提交人:________部门负责人:________初审人:________电子流检查:________总裁审批:________"></aspxform:XPrintButton>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="850" align="left">
                            <table cellspacing="0" cellpadding="0" hiddenexpress="Global.StepName =='财务记账'">
                                <tbody>
                                    <tr>
                                        <td>
                                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" Width="809px" Height="25px" DataMap="Department->Fin_Applicant.Dept" PositionDisplayType="FullName" ProcessBtnCssClass="a" SystemBtnCssClass="a" DorpDownListCssClass="b"></aspxform:XProcessButtonList>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <aspxform:XTextBox id="XTextBox1" runat="server" Value ValueToDisplayText XDataBind="Fin_Applicant.Dept" width="89px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="900">
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
