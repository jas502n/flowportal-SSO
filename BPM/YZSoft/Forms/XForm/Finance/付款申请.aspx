<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
        {
        XTextBox6.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
        XTextBox53.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
        }

</script>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <title>BPM Form</title> <script language="javascript" type="text/javascript">


 function settime(mytime,hm)
    {
        var date = new Date();
        if(mytime!="")
        {
            var str = mytime.replace(/-/g,"/");
            date = new Date(str);
        }
            date.setMonth(date.getMonth() + 2);
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

function CorporationDiff(fullname)
{
    var Corporation,company;
    Corporation=fullname.toString().split("/");
    company=Corporation[2].toString();
    return company;
}

function SupperDeptDiff(fullname)
{
    var Dept,SupperDept;
    Dept=fullname.toString().split("/");
    SupperDept=Dept[3].toString();
    return SupperDept;
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
    <form runat="server" style="padding-right: 2px; padding-bottom: inherit; padding-left: 55px; padding-top: 2px">
        <!-- Insert content here -->
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" rowspan="3" width="150">
                            <asp:Image id="Image2" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" rowspan="3" width="600" align="middle">
                            <aspxform:XTextBox id="tbxCorporation" runat="server" XDataBind="Fin_Applicant.Corporation" Value ValueToDisplayText Width="258px" BorderWidth="0px" BorderColor="GhostWhite" Max="0" Min="0" HiddenInput="False" Express="javascript('CorporationDiff',Company)" TextAlign="Center"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" bgcolor="white" height="19" width="68" align="right">
                            <p>
                                <aspxform:XLabel id="XLabel47" runat="server" Value ValueToDisplayText text="版本:"></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" width="98">
                            <aspxform:XLabel id="XLabel49" runat="server" Value ValueToDisplayText text="V2.02"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" height="18" align="right">
                            <p>
                                <aspxform:XLabel id="XLabel46" runat="server" Value ValueToDisplayText text="发布日期:"></aspxform:XLabel>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid">
                            <aspxform:XLabel id="XLabel48" runat="server" Value ValueToDisplayText text="2014/1/18"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="22" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel19" runat="server" XDataBind="Fin_Applicant.SN" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="49" width="20%" colspan="4">
                            <div align="center">
                            </div>
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel13" runat="server" text="付款申请" Font-Size="Medium" Font-Names="Tahoma" Font-Bold="True"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="33" colspan="4">
                            <div align="center">&nbsp;&nbsp;<aspxform:XTextBox id="tbxSupperDept" runat="server" XDataBind="Fin_Applicant.SupperDept" Width="10px" BorderWidth="1" BorderColor="#DCDCDC" Express="javascript('SupperDeptDiff',Company)" HiddenExpress="1"></aspxform:XTextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XTextBox id="XTextBox57" runat="server" XDataBind="test" Width="10px" BorderWidth="1" BorderColor="#DCDCDC" Express="Fin_Payee.Invoice_Amount-if(Fin_Payee.Amount_C=='',0,Fin_Payee.Amount_C)-if(Fin_Payee.Amount_P=='',0,Fin_Payee.Amount_P)-if(Fin_Payee.Total=='',0,Fin_Payee.Total)" HiddenExpress="1"></aspxform:XTextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XLabel id="XLabel60" runat="server" text="附件共"></aspxform:XLabel>
                                <aspxform:XLabel id="XLabel61" runat="server" Width="30px"></aspxform:XLabel>
                                <aspxform:XLabel id="XLabel62" runat="server" text="页"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="23" width="75">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial">
                            <aspxform:XLabel id="_Location" runat="server" text="申请日期" ForeColor="Gray"></aspxform:XLabel>
                            </font></span></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="289">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="Fin_Applicant.AppDate" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BorderStyle="None" ReadOnly="True" width="100%" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="83">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel2" runat="server" text="申请单号" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="284">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="Fin_Applicant.SN" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BorderStyle="None" ReadOnly="True" width="240px" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="2">
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="PerInfo" runat="server" text="负责人"></aspxform:XLabel>
                            </font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><font color="black">
                            <aspxform:XLabel id="XLabel3" runat="server" text="代理人"></aspxform:XLabel>
                            </font></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="26">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel4" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="Fin_Applicant.Applicant" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BorderStyle="None" ReadOnly="True" width="100%" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                            <aspxform:XLabel id="XLabel5" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="Fin_Applicant.Sub_Name" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BorderStyle="None" ReadOnly="True" width="100%" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel6" runat="server" text="工号" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox111" runat="server" XDataBind="Fin_Applicant.HRID" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BorderStyle="None" ReadOnly="True" width="100%" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel7" runat="server" text="工号" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox211" runat="server" XDataBind="Fin_Applicant.Sub_HRID" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BorderStyle="None" ReadOnly="True" width="100%" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel8" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="Fin_Applicant.Dept" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BorderStyle="None" ReadOnly="True" width="100%" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel9" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="Fin_Applicant.Sub_Dept" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BorderStyle="None" ReadOnly="True" width="100%" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" height="28" colspan="2" align="middle">
                            <p>
                                <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="Fin_Applicant.HRID" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="14px"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="Fin_Applicant.Sub_HRID" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="14px"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="Fin_Payee.Bank_Name" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="17px"></aspxform:XTextBox>
                                <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="v1" Width="40px" BorderWidth="1" BorderColor="#DCDCDC" Express="Fin_Applicant.AppDate" HiddenExpress="1"></aspxform:XDateTimePicker>
                                <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="var" Width="40px" BorderWidth="1" BorderColor="#DCDCDC" Express='javascript("settime",Fin_Applicant.AppDate,"00:00")' HiddenExpress="1"></aspxform:XDateTimePicker>
                                <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" XDataBind="v2" Width="40px" BorderWidth="1" BorderColor="#DCDCDC" Express="Fin_Applicant.AppDate" HiddenExpress="1"></aspxform:XDateTimePicker>
                                <aspxform:XTextBox id="XTextBox56" runat="server" XDataBind="Fin_Applicant.RecallYN" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="14px"></aspxform:XTextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <aspxform:XLabel id="XLabel77" runat="server" Value ValueToDisplayText text="是否为质量费用" HiddenExpress='Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' ForeColor="Red"></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="Fin_Applicant.QualityYN" HiddenExpress='Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' DisableExpress='Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" DisableExpress='Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' ValidationGroup="Star" ControlToValidate="XRadioButtonList4" ErrorMessage="请选择是否为质量费用报销！" Display="None">质量费用</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' ControlToValidate="XDropDownList9" ErrorMessage="请选择产品线" Display="None">请选择产品线</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" width="744" colspan="6" align="middle">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="Fin_Applicant.QualityYN!='是'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="97">
                            <aspxform:XLabel id="XLabel10" runat="server" text="订单/项目" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="158">
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="Fin_Applicant.QualityProject" BorderWidth="1" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="87">
                            <aspxform:XLabel id="XLabel11" runat="server" text="事故时间" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="76">
                            <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" XDataBind="Fin_Applicant.QualityTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XLabel id="XLabel86" runat="server" Value ValueToDisplayText text="产品线" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XDropDownList id="XDropDownList9" runat="server" XDataBind="Fin_Applicant.QualityPL" ValueColumn="pd_id" DisplayColumn="ProductLine" XDataSource="TableName:QS_ProductLine">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="29">
                            <aspxform:XLabel id="XLabel12" runat="server" text="事故原因" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="Fin_Applicant.QualityReason" Width="100%" BorderWidth="1" BorderColor="Gainsboro" Height="22px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                            <aspxform:XLabel id="XLabel1" runat="server" Value ValueToDisplayText text="事故简述" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
                            <aspxform:XTextBox id="XTextBox53" runat="server" XDataBind="Fin_Applicant.QualityOutline" Width="100%" BorderWidth="1" BorderColor="Gainsboro" Height="22px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                            <aspxform:XLabel id="XLabel85" runat="server" Value ValueToDisplayText text="凭证" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
                            <aspxform:XAttachments id="XAttachments1" runat="server" XDataBind="Fin_Applicant.QualityAttachments" width="100%"></aspxform:XAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="6">
                            <aspxform:XLabel id="XLabel14" runat="server" text="付款明细"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' ControlToValidate="XTextBox4" ErrorMessage="订单项目不能为空" Display="None">订单项目不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' ControlToValidate="XDateTimePicker8" ErrorMessage="事故时间不能为空" Display="None">事故时间不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' ControlToValidate="XTextBox6" ErrorMessage="事故原因不能为空" Display="None">事故原因不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' ControlToValidate="XTextBox53" ErrorMessage="事故简述不能为空" Display="None">事故简述不能为空</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" width="74">
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial">
                            <aspxform:XLabel id="XLabel15" runat="server" text="类型" ForeColor="Gray"></aspxform:XLabel>
                            </font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="Fin_Payee.Invoice" Width="100%" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">有发票付款</asp:ListItem>
                                <asp:ListItem>无发票付款</asp:ListItem>
                                <asp:ListItem>之前有发票付后续款</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            </font></span></span><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial"></font></span></span></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial">
                            <aspxform:XLabel id="XLabel16" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                            </font></span></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="266">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="Fin_Payee.Payee" BorderWidth="1" BorderColor="#DCDCDC" width="240px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="104">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                            <aspxform:XLabel id="XLabel75" runat="server" text="账号所属省"></aspxform:XLabel>
                            </span></span></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="122">
                            <aspxform:XDropDownList id="XDropDownList6" runat="server" XDataBind="Fin_Payee.App_Bank_Province" DisplayColumn="Name" XDataSource="TableName:Fin_R_Country;Filter:ParentID->Province;OrderBy:Ord desc" DataMap="ID->ProvinceID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="ProvinceID" Value BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1" width="10px">1</aspxform:XTextBox>
                        </td>
                        <td width="39">
                            <aspxform:XLabel id="XLabel76" runat="server" text="所属市"></aspxform:XLabel>
                        </td>
                        <td bgcolor="#f0f0f0" width="117">
                            <aspxform:XDropDownList id="XDropDownList7" runat="server" XDataBind="Fin_Payee.App_Bank_City" DisplayColumn="City" XDataSource="TableName:Fin_R_City;Filter:ParentID->ProvinceID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="23">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                            <aspxform:XLabel id="XLabel17" runat="server" text="开户行" ForeColor="Gray"></aspxform:XLabel>
                            </span></span></span></span></span></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" valign="bottom" colspan="5">
                            <aspxform:XDropDownList id="XDropDownList8" runat="server" XDataBind="Fin_Payee.BankName" DisplayColumn="bankName" XDataSource="TableName:Fin_BankName">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="Fin_Payee.BankNameOther" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="Fin_Payee.BankName!='其他'" width="240px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="25">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                            <aspxform:XLabel id="XLabel18" runat="server" text="支行(分行)" ForeColor="Gray"></aspxform:XLabel>
                            </span></span></span></span></span></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="Fin_Payee.BankNameDetail" BorderWidth="1" BorderColor="#DCDCDC" width="240px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                            <aspxform:XLabel id="XLabel20" runat="server" text="账号" ForeColor="Gray"></aspxform:XLabel>
                            </span></span></span></span></span></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="3">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="Fin_Payee.Account" BorderWidth="1" BorderColor="#DCDCDC" width="240px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel21" runat="server" text="付款金额" ForeColor="Gray"></aspxform:XLabel>
                            </span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="Fin_Payee.Amount" BorderWidth="1" BorderColor="#DCDCDC" BorderStyle="None" width="240px" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel22" runat="server" text="发票金额" HiddenExpress="Fin_Payee.Invoice!='有发票付款'" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="3">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="Fin_Payee.Invoice_Amount" BorderWidth="1px" BorderColor="#DCDCDC" Express="if(Fin_Payee.Invoice!='有发票付款',0,sum(Fin_PInvoice_Info.Amount))" HiddenExpress="Fin_Payee.Invoice!='有发票付款'" ReadOnly="True" width="240px" DisableExpress="Fin_Payee.Invoice!='有发票付款'" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="NoPadding" colspan="6">
                            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="Fin_Payee.Invoice!='有发票付款'" dynamicarea="2,1">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="22" colspan="5">
                                            <aspxform:XLabel id="XLabel63" runat="server" text="发票明细"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2">
                                            <div align="right">
                                                <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" HiddenExpress="Global.StepName!='开始'" TableName="Fin_PInvoice_Info" OnClientClick="XFormShell.XFormAgent.AppendBlock(this,'Fin_ClaimingExpenses_Info');return false;" PrintOut="False" Text="增加发票明细"></aspxform:XAddBlockButton>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="39">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel64" runat="server" text="序号"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="166">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel67" runat="server" text="费用类别"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="137">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel65" runat="server" text="发票类型"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="157">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel70" runat="server" text="商品名称"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="87">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel66" runat="server" text="总金额"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel68" runat="server" Text="不含税价"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="55">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel69" runat="server" text="税金"></aspxform:XLabel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="37px" BorderWidth="1px" BorderColor="Gainsboro" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="Fin_PInvoice_Info.Type" Width="150px" ValueColumn="NO" DisplayColumn="Name" XDataSource="TableName:V_Fin_R_KM;Filter:Corporation->Fin_Applicant.Corporation,SuperDept->Fin_Applicant.SupperDept" DataMap="Name->Fin_PInvoice_Info.T_Name;Code->Fin_PInvoice_Info.CashCode" onchange="javascript:XFormOnChange(this);">
                                                <asp:ListItem>未绑定</asp:ListItem>
                                            </aspxform:XDropDownList>
                                            <aspxform:XTextBox id="XTextBox38" runat="server" XDataBind="Fin_PInvoice_Info.T_Name" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="7px"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="Fin_PInvoice_Info.CashCode" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" BorderStyle="Dotted" width="6px" Height="22px"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="Fin_PInvoice_Info.IType" Width="132px" XDataSource="XDataSource" onchange="javascript:XFormOnChange(this);">
                                                <asp:ListItem Value="0">非增值税专用发票</asp:ListItem>
                                                <asp:ListItem Value="1">增值税专用发票</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="Fin_PInvoice_Info.Goods" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" width="153px"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="Fin_PInvoice_Info.Amount" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" width="85px" Format="type:currency;.2"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="Fin_PInvoice_Info.Amount_nt" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Express="if(Fin_PInvoice_Info.IType==0,0,'')" HiddenExpress="Fin_PInvoice_Info.IType==0" width="73px" Format="type:currency;.2"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="Fin_PInvoice_Info.Tax" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Express="if(Fin_PInvoice_Info.IType==0,0,Fin_PInvoice_Info.Amount-Fin_PInvoice_Info.Amount_nt)" HiddenExpress="Fin_PInvoice_Info.IType==0" ReadOnly="True" width="53px" Format="type:currency;.2"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-TOP: medium none" bgcolor="#d1dedf" height="14" colspan="7">
                                            &nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel44" runat="server" text="币种" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="Fin_Payee.Unit" ValueColumn="Unit_EN" DisplayColumn="Unit" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->Fin_Payee.Rate">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel43" runat="server" text="预计取回发票日期" HiddenExpress="Fin_Payee.Invoice!='无发票付款'" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="3">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="Fin_Payee.Date" Width="240px" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="Fin_Payee.Invoice!='无发票付款'" BorderStyle="Groove" DisableExpress="Fin_Payee.Invoice!='无发票付款'"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel23" runat="server" text="附件" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="Fin_Payee.Attachment"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="26">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel24" runat="server" text="付款原因" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="95" colspan="6">
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="Fin_Payee.Reason" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" width="100%" Height="89px" TextMode="MultiLine" Rows="4"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel25" runat="server" text="挂账金额" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="Fin_Payee.Amount_GZ" BorderWidth="1" BorderColor="#DCDCDC" Express="if(Fin_Payee.Invoice=='无发票付款',Fin_Payee.Amount,(if(Fin_Payee.Invoice=='有发票付款',Fin_Payee.Amount+if(Fin_Payee.Total=='',0,Fin_Payee.Total)+if(Fin_Payee.Amount_C==''||Fin_Payee.Amount_C<0,0,Fin_Payee.Amount_C)+if(Fin_Payee.Amount_P==''||Fin_Payee.Amount_P<0,0,Fin_Payee.Amount_P)-Fin_Payee.Invoice_Amount,Fin_Payee.Amount+if(Fin_Payee.Amount_C==''||Fin_Payee.Amount_C>0,0,Fin_Payee.Amount_C)+if(Fin_Payee.Amount_P==''||Fin_Payee.Amount_P>0,0,Fin_Payee.Amount_P))))" width="100%" DisableExpress="Global.StepName!='财务审核'" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="4">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="112">
                            <aspxform:XLabel id="XLabel26" runat="server" Width="48px" text="所属公司" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="3">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="Fin_Applicant.Company" ValueColumn="Code" DisplayColumn="Name" XDataSource="TableName:Fin_R_Company;Filter:Corporation->Fin_Applicant.Corporation">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel27" runat="server" text="挂账" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#f0f0f0" width="254">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="Fin_Payee.GZ" Width="100%" RepeatDirection="Horizontal">
                                <asp:ListItem>挂个人</asp:ListItem>
                                <asp:ListItem Selected="True">挂收款单位</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#f0f0f0" width="180">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="180">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="(Fin_Applicant.Corporation=='深圳创维数字技术股份有限公司'&amp;&amp;Global.StepName!='准备打款'&amp;&amp;Global.StepName!='财务审核')||(Fin_Applicant.Corporation=='创维无线技术有限公司'&amp;&amp;!(Global.StepName=='无线财务审核\初审'||Global.StepName=='无线财务审核\复审'||Global.StepName=='准备打款'))">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="115">
                            <aspxform:XLabel id="XLabel28" runat="server" text="付款银行" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="642">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="Fin_Payee.Bank_Acc" ValueColumn="No" DisplayColumn="Name" XDataSource="TableName:Fin_R_Cash;Filter:Company->Fin_Applicant.Company" DataMap="Name->Fin_Payee.Bank_Name">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel29" runat="server" text="实际付款金额" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="Fin_Payee.Amount_Act" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Express="Fin_Payee.Amount" BorderStyle="Groove" width="122px" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel45" runat="server" text="汇率" ForeColor="Gray" Visible="False"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="Fin_Payee.Rate" BorderWidth="1" BorderColor="#DCDCDC" BorderStyle="Groove" width="122px" Format="type:number;.10"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td bgcolor="#d1dedf" height="31" width="736">
                            <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="Fin_Payee.Amount_C" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="sum(if(Fin_CE_Pay_C_Info.State==1,if(Fin_CE_Pay_C_Info.Amount=='',0,Fin_CE_Pay_C_Info.Amount),0))" HiddenExpress="1" BorderStyle="Dotted" width="47px" Height="15px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox36" runat="server" XDataBind="Fin_Payee.Amount_P" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="sum(if(Fin_CE_Pay_Info.State==1,if(Fin_CE_Pay_Info.Amount=='',0,Fin_CE_Pay_Info.Amount),0))" HiddenExpress="1" BorderStyle="Dotted" width="47px" Height="16px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox5" ErrorMessage="收款单位不能为空" Display="None">收款单位</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox8" ErrorMessage="账号不能为空" Display="None">账号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" DisableExpress="Fin_Payee.Invoice!='无发票付款'" ValidationGroup="Star" ControlToValidate="XDateTimePicker1" ErrorMessage="请填写预计取回发票的日期！" Display="None">预计取回发票日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" DisableExpress="Fin_Payee.Invoice!='有发票付款'" ValidationGroup="Star" ControlToValidate="XTextBox14" ErrorMessage="请填写发票金额！" Display="None">发票金额</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator1" runat="server" DisableExpress="Fin_Payee.Invoice=='无发票付款'" ValidationGroup="Star" ControlToValidate="XTextBox9" ErrorMessage="付款金额不能大于发票金额和冲抵总额的差！" Display="None" Operator="LessThanEqual" ValueToCompareExpress="Fin_Payee.Invoice_Amount-if(Fin_Payee.Amount_C=='',0,Fin_Payee.Amount_C)-if(Fin_Payee.Amount_P=='',0,Fin_Payee.Amount_P)-if(Fin_Payee.Total=='',0,Fin_Payee.Total)" Type="Double">付款金额</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator4" runat="server" ValidationGroup="Star" ControlToValidate="XDateTimePicker1" ErrorMessage="预计取回发票日期不能小于当前日期！" Display="None" Operator="GreaterThan" ControlToCompare="XDateTimePicker2">预计取回发票日期</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator5" runat="server" ValidationGroup="Star" ControlToValidate="XDateTimePicker1" ErrorMessage="预计取回发票日期不能超过两个月！" Display="None" Operator="LessThan" ControlToCompare="XDateTimePicker3">预计取回发票日期</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator6" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox44" ErrorMessage="冲抵金额超出了借款！" Display="None" Operator="LessThanEqual" ValueToCompareExpress="(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount)" Type="Double">每单冲抵额验证</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator7" runat="server" DisableExpress="Fin_Payee.Invoice!='之前有发票付后续款'" ValidationGroup="Star" ControlToValidate="XTextBox32" ErrorMessage="付后续款时，必须有冲抵！" Display="None" Operator="LessThanEqual" Type="Double" ValueToCompare="0">挂账金额</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator8" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox9" ErrorMessage="付款金额必须大于0" Display="None" Operator="GreaterThanEqual" Type="Double" ValueToCompare="0" CultureInvariantValues="True">付款金额必须大于0</aspxform:XCompareValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox9" ErrorMessage="请填写付款金额！" Display="None">请填写付款金额</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox15" ErrorMessage="必须填写付款原因" Display="None">必须填写付款原因</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ValidationGroup="Return" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写退回意见！" Display="None">退回重填验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ValidationGroup="Reject" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写拒绝理由！" Display="None">拒绝验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator2" runat="server" DisableExpress="Fin_Payee.Invoice!='无发票付款'" ValidationGroup="Star" ControlToValidate="XTextBox33" ErrorMessage="无发票付款时，不能有冲抵！" Display="None" Operator="LessThan" Type="Double" ValueToCompare="0.01">冲抵勾选验证</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator3" runat="server" DisableExpress="Fin_Payee.Invoice!='无发票付款'" ValidationGroup="Star" ControlToValidate="XTextBox35" ErrorMessage="无发票付款时，不能有冲抵！" Display="None" Operator="LessThan" ValueToCompare="0.01">冲抵勾选验证</aspxform:XCompareValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox7" ErrorMessage="必须填写支行(分行)" Display="None">必须填写支行(分行)</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" id="table1" border="0" cellspacing="0" cellpadding="0" width="738" dynamicarea="2,1" datamap="SN->Fin_ClaimingExpenses_LoanInfo.LoanSN;Amount->Fin_ClaimingExpenses_LoanInfo.LoanAmount;Remain->Fin_ClaimingExpenses_LoanInfo.Remain;Reason->Fin_ClaimingExpenses_LoanInfo.Reason;Date->Fin_ClaimingExpenses_LoanInfo.Date;RunningAmount->Fin_ClaimingExpenses_LoanInfo.RunningAmount">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" colspan="8">
                            <font color="black" face="Arial">
                            <aspxform:XLabel id="XLabel59" runat="server" text="个人借款明细 "></aspxform:XLabel>
                            </font></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="25" width="27">
                            <div align="center">
                                <aspxform:XLabel id="XLabel30" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="101">
                            <div align="center">
                                <aspxform:XLabel id="XLabel37" runat="server" text="借款单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="71">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel39" runat="server" text="剩余借款" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="79">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel31" runat="server" text="在途审批金额" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="101">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel38" runat="server" text="剩余需冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="155">
                            <div align="center">
                                <aspxform:XLabel id="XLabel32" runat="server" text="事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="101">
                            <div align="center">
                                <aspxform:XLabel id="XLabel33" runat="server" text="预计还款报销日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="78">
                            <div align="center">
                                <aspxform:XLabel id="XLabel50" runat="server" text="本次冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="26">
                            <aspxform:XGridLineNo id="XGridLineNo5" runat="server" Width="15px" BorderWidth="1" BorderColor="#DCDCDC" Font-Bold="True">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanSN" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BorderStyle="None" ReadOnly="True" width="100%" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox42" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Remain" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BorderStyle="None" ReadOnly="True" width="100%" BackColor="White" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.RunningAmount" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BorderStyle="None" ReadOnly="True" width="100%" BackColor="White" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox46" runat="server" XDataBind="varloan" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Express="(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount)" BorderStyle="None" width="83px" BackColor="White" Format="type:currency;.2"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox41" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanAmount" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" HiddenExpress="1" BorderStyle="None" ReadOnly="True" width="13px" BackColor="White" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox43" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Reason" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BorderStyle="None" ReadOnly="True" width="100%" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" onclick="MShowDateSelector(this,event,'CN','http://192.168.0.245:8085/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Date" Width="96px" BorderWidth="1px" BorderColor="Gainsboro" ReadOnly="True" XSubType="date" DisableExpress="1" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.OffsetAmount" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" HiddenExpress="Fin_Payee.Invoice!='有发票付款'" width="100%" DisableExpress="(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount) ==0.00 " Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="transparent" height="24">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <div align="right">
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="Fin_Payee.LoanAmount" BorderWidth="1" BorderColor="#DCDCDC" Express="sum(Fin_ClaimingExpenses_LoanInfo.Remain)" BorderStyle="None" ReadOnly="True" width="100%" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="Fin_Payee.Amount_Running" BorderWidth="1" BorderColor="#DCDCDC" Express="sum(Fin_ClaimingExpenses_LoanInfo.RunningAmount)" DisableBehavior="ReadOnly" BorderStyle="None" ReadOnly="True" width="100%" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                            <aspxform:XTextBox id="XTextBox39" runat="server" XDataBind="qq" BorderWidth="1" BorderColor="#DCDCDC" Express="Fin_Payee.LoanAmount - Fin_Payee.Amount_Running" HiddenExpress="1" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <div align="right">
                                <aspxform:XLabel id="XLabel51" runat="server" text="合计" Font-Bold="False" HiddenExpress="Fin_Payee.Invoice!='有发票付款'" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="antiquewhite">
                            <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="Fin_Payee.Total" BorderWidth="1" BorderColor="#DCDCDC" Express="sum(Fin_ClaimingExpenses_LoanInfo.OffsetAmount)" DisableBehavior="ReadOnly" HiddenExpress="Fin_Payee.Invoice!='有发票付款'" BorderStyle="None" ReadOnly="True" width="100%" BackColor="AntiqueWhite"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="qq == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" height="24" width="145">
                            <aspxform:XLabel id="XLabel71" runat="server" Width="137px" text="请选择是否冲抵个人借款" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="587">
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="Fin_Applicant.PersonalLoan" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" DisableExpress="qq == 0" ValidationGroup="Star" ControlToValidate="XRadioButtonList3" ErrorMessage="您个人借款明细中有待冲抵的款项，请选择是否冲抵！" Display="None">请选择是否冲抵个人借款</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator9" runat="server" DisableExpress='Fin_Applicant.PersonalLoan !="是"' ValidationGroup="Star" ControlToValidate="XTextBox45" ErrorMessage="您选择了冲抵个人借款,请填写冲抵金额" Display="None" Height="11px" Operator="GreaterThanEqual" Type="Double" ValueToCompare="0.01">本次冲抵金额</aspxform:XCompareValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" dynamicarea="2,1" datamap="SN->Fin_CE_Pay_Info.PaySN;Payee->Fin_CE_Pay_Info.Payee;Amount_GZ->Fin_CE_Pay_Info.Amount;Date->Fin_CE_Pay_Info.Date;Reason->Fin_CE_Pay_Info.Reason" xdatasource="TableName:V_Fin_Pay_Info;Filter:HRID->Fin_Applicant.HRID,Type->Fin_Payee.Invoice">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="25" colspan="7">
                            <font color="black" face="Arial">
                            <aspxform:XLabel id="XLabel34" runat="server" text="付公司挂个人往来明细"></aspxform:XLabel>
                            </font></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="25" width="39">
                            <div align="center">
                                <aspxform:XLabel id="XLabel35" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="100">
                            <div align="center">
                                <aspxform:XLabel id="XLabel36" runat="server" text="付费单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="183">
                            <div align="center">
                                <aspxform:XLabel id="XLabel40" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="99">
                            <div align="center">
                                <aspxform:XLabel id="XLabel41" runat="server" text="预计取回发票日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="158">
                            <div align="center">
                                <aspxform:XLabel id="XLabel42" runat="server" text="付款事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="65">
                            <div align="center">
                                <aspxform:XLabel id="XLabel52" runat="server" text="金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="72">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel53" runat="server" text="本次冲抵" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Width="100%" BorderWidth="1" BorderColor="#DCDCDC">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="Fin_CE_Pay_Info.PaySN" BorderWidth="1" BorderColor="#DCDCDC" BorderStyle="None" ReadOnly="True" width="100%" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="Fin_CE_Pay_Info.Payee" BorderWidth="1" BorderColor="#DCDCDC" BorderStyle="None" ReadOnly="True" width="100%" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker6" onclick="MShowDateSelector(this,event,'CN','http://192.168.0.245:8085/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_Pay_Info.Date" Width="96px" BorderWidth="1px" BorderColor="Gainsboro" ReadOnly="True" XSubType="date" DisableExpress="1" XType="datetime" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="Fin_CE_Pay_Info.Reason" BorderWidth="1" BorderColor="#DCDCDC" BorderStyle="None" ReadOnly="True" width="100%" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="Fin_CE_Pay_Info.Amount" BorderWidth="1" BorderColor="#DCDCDC" BorderStyle="None" ReadOnly="True" width="100%" BackColor="White" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <div align="center">
                                <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="Fin_CE_Pay_Info.State" Text=" "></aspxform:XCheckBox>
                                <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="var2" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="Fin_CE_Pay_Info.State" BorderStyle="Dotted" width="16px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" dynamicarea="2,1" datamap="SN->Fin_CE_Pay_C_Info.PaySN;Payee->Fin_CE_Pay_C_Info.Payee;Amount_GZ->Fin_CE_Pay_C_Info.Amount;Date->Fin_CE_Pay_C_Info.Date;Reason->Fin_CE_Pay_C_Info.Reason" xdatasource="TableName:V_Fin_Pay_C_Info;Filter:HRID->Fin_Applicant.HRID,Type->Fin_Payee.Invoice">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="25" colspan="7">
                            <aspxform:XLabel id="XLabel54" runat="server" text="付公司挂单位往来明细"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" width="39">
                            <div align="center">
                                <aspxform:XLabel id="XLabel55" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="99">
                            <div align="center">
                                <aspxform:XLabel id="XLabel56" runat="server" text="付费单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="184">
                            <div align="center">
                                <aspxform:XLabel id="XLabel57" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="98">
                            <div align="center">
                                <aspxform:XLabel id="XLabel58" runat="server" text="预计取回发票日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="154">
                            <div align="center">
                                <aspxform:XLabel id="XLabel72" runat="server" text="付款事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="67">
                            <div align="center">
                                <aspxform:XLabel id="XLabel73" runat="server" text="金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="75">
                            <div align="center">
                                <aspxform:XLabel id="XLabel74" runat="server" text="本次冲抵" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo3" runat="server" Width="100%" BorderWidth="1" BorderColor="#DCDCDC">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="Fin_CE_Pay_C_Info.PaySN" BorderWidth="1" BorderColor="#DCDCDC" BorderStyle="None" ReadOnly="True" width="100%" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="Fin_CE_Pay_C_Info.Payee" BorderWidth="1" BorderColor="#DCDCDC" BorderStyle="None" ReadOnly="True" width="100%" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker7" onclick="MShowDateSelector(this,event,'CN','http://192.168.0.245:8085/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_Pay_C_Info.Date" Width="96px" BorderWidth="1px" BorderColor="Gainsboro" ReadOnly="True" XSubType="date" DisableExpress="1" XType="datetime" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox34" runat="server" XDataBind="Fin_CE_Pay_C_Info.Reason" BorderWidth="1" BorderColor="#DCDCDC" BorderStyle="None" ReadOnly="True" width="100%" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="Fin_CE_Pay_C_Info.Amount" BorderWidth="1" BorderColor="#DCDCDC" BorderStyle="None" ReadOnly="True" width="100%" BackColor="White" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <div align="center">
                                <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="Fin_CE_Pay_C_Info.State" Text=" "></aspxform:XCheckBox>
                                <aspxform:XTextBox id="XTextBox49" runat="server" XDataBind="var1" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="Fin_CE_Pay_C_Info.State" BorderStyle="Dotted" width="16px"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress='Global.StepName !=""&amp;&amp;Global.StepName !="开始"'>
                <tbody>
                    <tr>
                        <td height="25" width="91" align="right">
                            <aspxform:XLabel id="XLabel78" runat="server" text="注意:" Font-Bold="True" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td width="643">
                            <aspxform:XLabel id="XLabel79" runat="server" Width="588px" text="①销售代理费单据②1万元以上的业务招待费单据③金额在2万元以上的其它单据需要总裁书面签批" Font-Size="Larger"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23" colspan="2">
                            <aspxform:XLabel id="XLabel80" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" Height="48px" TextMode="MultiLine" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="100%" BorderWidth="1" BorderColor="#dcdcdc" CssClass="AA"></aspxform:XSignTrace>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="26" valign="bottom" width="50" align="right">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" Width="80px" HiddenExpress="Global.StepName =='开始'" Height="20px" PageFooterFormat="提交人:________部门负责人:________初审人:________电子流检查:________总裁审批:________" PageHeaderFormat="\t"></aspxform:XPrintButton>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="750" align="left">
                            <table cellspacing="0" cellpadding="0" hiddenexpress="Global.StepName =='财务记账'">
                                <tbody>
                                    <tr>
                                        <td>
                                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="MemberFullName->Company;Department->Fin_Applicant.Dept" ProcessBtnCssClass="a" SystemBtnCssClass="a" DorpDownListCssClass="b" PositionDisplayType="FullName"></aspxform:XProcessButtonList>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress='Global.StepName !="财务审核"'>
                <tbody>
                    <tr>
                        <td height="25" width="655" align="right">
                            <aspxform:XLabel id="XLabel81" runat="server" text="是否邮件通知提交人" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td width="79">
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="Fin_Applicant.MessageYN" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem Selected="True">否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td height="17" width="242">
                        </td>
                        <td width="466">
                        </td>
                        <td width="50">
                        </td>
                    </tr>
                    <tr>
                        <td height="162" colspan="3">
                            <p>
                                <aspxform:XLabel id="XLabel82" runat="server" Font-Size="Medium" ForeColor="Red" PrintOut="False" Text="付款注意事项:"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox126" runat="server" XDataBind="Company" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1" width="10px"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="Province" Value BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1" width="10px">1</aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="Province" Value BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1" width="10px">1</aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="aaaa" Value ValueToDisplayText BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Express="Fin_Payee.Invoice_Amount-if(Fin_Payee.Amount_C=='',0,Fin_Payee.Amount_C)-if(Fin_Payee.Amount_P=='',0,Fin_Payee.Amount_P)-if(Fin_Payee.Total=='',0,Fin_Payee.Total)" HiddenExpress="1" width="167px">1</aspxform:XTextBox>
                            </p>
                            <p>
                            </p>
                            <p>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel83" runat="server" text="1. 提交后请在系统的“历史申请”中将此单打印作为报销单封面附于原始单据前转交至财务部审核。" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel84" runat="server" text="2. “代理人”为此次付款申请的经办人；“负责人”为最终责任人；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel87" runat="server" text="3. “付款原因”栏要详细填写付款原因；“付款金额”必须是大于0的数值；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel88" runat="server" text="4. 若“个人借款明细”中的“剩余借款”大于0，请选择“预计还款/报销日期”最早的项目来进行冲抵；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;
                                <aspxform:XLabel id="XLabel89" runat="server" text="在“本次冲抵金额”中填写冲抵金额，此金额应小于或等于本次报销的金额；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;
                                <aspxform:XLabel id="XLabel90" runat="server" PrintOut="False" Text="如不冲抵则无法报销；"></aspxform:XLabel>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="738">
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
