<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
        {
            XTextBox10.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
            XTextBox6.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
            XTextBox53.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
         }

</script>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <title>BPM Form</title> <script language="javascript" type="text/javascript">
    function getCapitalNumber(num)
{
   switch(num)
   {
     case 0:
        return "零";
        break;
     case 1:
        return "壹";
        break;
     case 2:
        return "贰";
        break;
     case 3:
        return "叁";
        break;
     case 4:
        return "肆";
        break;
     case 5:
        return "伍";
        break;
     case 6:
        return "陆";
        break;
     case 7:
        return "柒";
        break;
     case 8:
        return "捌";
        break;
     case 9:
        return "玖";
        break;
     default:
        return "error";
        break;
   }
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

function tocapital(source)
{
    if(!source)
      source = 0;
	 var money,x,i,y,result;
	 var Cnum=new Array("元","拾","佰","仟","万","拾","佰");
	 money=source;
	 x=Math.floor(money);
	 y=Math.round((money-x)*100);
	 if (x>9999999)
     result="金额不能大于9999999！";
     else
     {
       result="";
       i=0;
       while( x!=0)
        {
          result=getCapitalNumber(x%10)+Cnum[i]+result;
          i++;
          x=Math.floor(x/10);
         }
       result=result+getCapitalNumber(Math.floor(y/10%10))+"角";
       result=result+getCapitalNumber(Math.floor(y%10))+"分";
     }
       return result;
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
                            <aspxform:XTextBox id="tbxCorporation" runat="server" Value ValueToDisplayText Width="258px" BorderColor="GhostWhite" BorderWidth="0px" Max="0" Min="0" HiddenInput="False" Express="javascript('CorporationDiff',Company)" TextAlign="Center" XDataBind="Fin_Applicant.Corporation"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel19" runat="server" Value ValueToDisplayText XDataBind="Fin_Applicant.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="49" width="20%" colspan="4">
                            <div align="center">
                            </div>
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel13" runat="server" text="特殊费用报销" Font-Names="Tahoma" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="33" colspan="4">
                            <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XTextBox id="tbxSupperDept" runat="server" Width="10px" BorderColor="#DCDCDC" BorderWidth="1" Express="javascript('SupperDeptDiff',Company)" XDataBind="Fin_Applicant.SupperDept" HiddenExpress="1"></aspxform:XTextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XLabel id="XLabel60" runat="server" text="附件共"></aspxform:XLabel>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" width="112">
                            <aspxform:XLabel id="_Location" runat="server" text="申请日期" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial"></font></span></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="264">
                            <aspxform:XTextBox id="XTextBox5" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_Applicant.AppDate" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="112">
                            <aspxform:XLabel id="XLabel2" runat="server" text="申请单号" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="263">
                            <aspxform:XTextBox id="XTextBox7" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_Applicant.SN" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="2">
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font style="BACKGROUND-COLOR: #d1dedf" color="black" size="2" face="Verdana">
                            <aspxform:XLabel id="XLabel66" runat="server" text="申请人"></aspxform:XLabel>
                            </font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><font color="black">
                            <aspxform:XLabel id="XLabel3" runat="server" text="代理人"></aspxform:XLabel>
                            </font></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel24" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox8" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_Applicant.Applicant" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel26" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox9" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_Applicant.Sub_Name" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel4" runat="server" text="工号" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox111" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_Applicant.HRID" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel5" runat="server" text="工号" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox211" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_Applicant.Sub_HRID" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel25" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox19" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_Applicant.Dept" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel27" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox20" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_Applicant.Sub_Dept" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#ffffff" height="23" colspan="2" align="middle">
                            <aspxform:XTextBox id="XTextBox1" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="True" XDataBind="Fin_Applicant.HRID" width="10px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox2" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="True" XDataBind="Fin_Applicant.Sub_HRID" width="10px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox4" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="True" XDataBind="Fin_ClaimingExpenses.Bank_Name" width="12px" BorderStyle="Dotted"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox16" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="True" XDataBind="Fin_ClaimingExpenses.NR" width="18px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox12" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="True" XDataBind="Fin_ClaimingExpenses.PayTotal" width="15px"></aspxform:XTextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XTextBox id="XTextBox55" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="True" XDataBind="Fin_Applicant.RecallYN" width="10px"></aspxform:XTextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <aspxform:XLabel id="XLabel77" runat="server" Value ValueToDisplayText text="是否为质量费用" HiddenExpress='Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td>
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="Fin_Applicant.QualityYN" HiddenExpress='Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' RepeatDirection="Horizontal" DisableExpress='Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"'>
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" DisableExpress='Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' Display="None" ErrorMessage="请选择是否为质量费用报销！" ControlToValidate="XRadioButtonList3" ValidationGroup="Star">质量费用</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator27" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' Display="None" ErrorMessage="请选择产品线" ControlToValidate="XDropDownList3">请选择产品线</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" colspan="6" align="middle">
                            <table border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="Fin_Applicant.QualityYN!='是'">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="30" width="58">
                                            <aspxform:XLabel id="XLabel6" runat="server" text="订单/项目" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="155">
                                            <aspxform:XTextBox id="XTextBox3" runat="server" Width="100%" BorderColor="Gainsboro" BorderWidth="1" XDataBind="Fin_Applicant.QualityProject"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="51">
                                            <aspxform:XLabel id="XLabel8" runat="server" text="事故时间" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="78">
                                            <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_Applicant.QualityTime"></aspxform:XDateTimePicker>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XLabel id="XLabel81" runat="server" Value ValueToDisplayText text="产品线" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="Fin_Applicant.QualityPL" ValueColumn="pd_id" DisplayColumn="ProductLine" XDataSource="TableName:QS_ProductLine">
                                                <asp:ListItem>未绑定</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                                            <aspxform:XLabel id="XLabel9" runat="server" text="事故原因" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
                                            <aspxform:XTextBox id="XTextBox6" runat="server" Value ValueToDisplayText Width="100%" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="Fin_Applicant.QualityReason" TextMode="MultiLine" Height="20px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                                            <aspxform:XLabel id="XLabel1" runat="server" Value ValueToDisplayText text="事故简述" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
                                            <aspxform:XTextBox id="XTextBox53" runat="server" Value ValueToDisplayText Width="100%" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="Fin_Applicant.QualityOutline" TextMode="MultiLine" Height="20px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                                            <aspxform:XLabel id="XLabel80" runat="server" Value ValueToDisplayText text="凭证" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
                                            <aspxform:XAttachments id="XAttachments1" runat="server" XDataBind="Fin_Applicant.QualityAttachments" width="100%"></aspxform:XAttachments>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="26" colspan="3">
                            <font color="black" face="Arial">
                            <aspxform:XLabel id="XLabel57" runat="server" text="报销明细"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' Display="None" ErrorMessage="订单项目不能为空" ControlToValidate="XTextBox3">订单项目不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' Display="None" ErrorMessage="事故时间不能为空" ControlToValidate="XDateTimePicker8">事故时间不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' Display="None" ErrorMessage="事故原因不能为空" ControlToValidate="XTextBox6">事故原因不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' Display="None" ErrorMessage="事故简述不能为空" ControlToValidate="XTextBox53">事故简述不能为空</aspxform:XRequiredFieldValidator>
                            </font></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="100">
                            <div align="right">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="27" width="155">
                            <div align="center">
                            </div>
                            <div align="center">
                                <aspxform:XLabel id="XLabel10" runat="server" text="费用类别" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" colspan="2">
                            <div align="center">
                                <aspxform:XLabel id="XLabel7" runat="server" text="用途" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel20" runat="server" text="金额总计" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" Width="150px" XDataBind="Fin_CE_S_Info.Type" ValueColumn="NO" DisplayColumn="Name" XDataSource="TableName:V_Fin_R_KM;Filter:Corporation->Fin_Applicant.Corporation,SuperDept->Fin_Applicant.SupperDept" onchange="javascript:XFormOnChange(this);" DataMap="Name->Fin_CE_S_Info.T_Name;Code->Fin_CE_S_Info.CashCode">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox21" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="True" XDataBind="Fin_CE_S_Info.T_Name" width="10px" BorderStyle="Dotted"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox54" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="Fin_CE_S_Info.CashCode" HiddenExpress="1" width="6px" BorderStyle="Dotted" Height="22px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox10" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="Fin_CE_S_Info.UseFor" DisableBehavior="ReadOnly" width="470px" TextMode="MultiLine" Height="20px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="antiquewhite">
                            <aspxform:XTextBox id="XTextBox11" runat="server" BorderColor="#DCDCDC" BorderWidth="1" Express="sum(Fin_CE_MangerInfo.Amount)" XDataBind="Fin_CE_S_Info.Amount" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BackColor="AntiqueWhite" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="transparent" height="24">
                            <div align="right"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                                <aspxform:XLabel id="XLabel67" runat="server" text="币种"></aspxform:XLabel>
                                </span></span></span>
                            </div>
                        </td>
                        <td width="252">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" Width="138px" XDataBind="Fin_ClaimingExpenses.Unit" ValueColumn="Unit_EN" DisplayColumn="Unit" XDataSource="TableName:Fin_R_Rate" onchange="javascript:XFormOnChange(this);" DataMap="Rate->Fin_ClaimingExpenses.Rate">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td width="220">
                            <div align="right"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                                <aspxform:XLabel id="XLabel53" runat="server" text="报销金额(中文大写)" ForeColor="Gray"></aspxform:XLabel>
                                </span></span></span>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <div align="right">
                                <aspxform:XTextBox id="XTextBox13" runat="server" BorderColor="#DCDCDC" BorderWidth="1" Express="javascript('tocapital',Fin_CE_S_Info.Amount)" XDataBind="Fin_ClaimingExpenses.PayAmount_EN" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="4">
                            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-LEFT: medium none; BORDER-TOP: 1px solid; BORDER-RIGHT: 1px solid" width="153">
                                            <aspxform:XLabel id="XLabel63" runat="server" text="收款单位(需要付款时填写)" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-TOP: 1px solid" width="191">
                                            <aspxform:XTextBox id="XTextBox35" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_Payee.Payee" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-TOP: 1px solid; BORDER-RIGHT: 1px solid" width="187">
                                            <aspxform:XLabel id="XLabel65" runat="server" text="收款单位账号（需要付款时填写）" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-TOP: 1px solid" width="193">
                                            <aspxform:XTextBox id="XTextBox36" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_Payee.Account" width="100%"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-RIGHT: 1px solid">
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none">
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-RIGHT: 1px solid" align="right">
                                            <aspxform:XTextBox id="XTextBox48" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="Fin_ClaimingExpenses.Rate" HiddenExpress="1" width="31px"></aspxform:XTextBox>
                                            <aspxform:XLabel id="XLabel68" runat="server" Width="76px" text="合计(人民币)" HiddenExpress='Fin_ClaimingExpenses.Unit =="RMB"'></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-RIGHT: medium none">
                                            <aspxform:XTextBox id="XTextBox47" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" Express="Fin_ClaimingExpenses.Rate * Fin_CE_S_Info.Amount" XDataBind="RenMinBiAll" DisableBehavior="ReadOnly" HiddenExpress='Fin_ClaimingExpenses.Unit =="RMB"' width="180px" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" Height="22px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" width="106">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel64" runat="server" Width="86px" text="收款单位开户行"></aspxform:XLabel>
                            </span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="253">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XTextBox id="XTextBox37" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="Fin_Payee.BankName" width="208px"></aspxform:XTextBox>
                            </span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="71" align="middle">
                            <aspxform:XLabel id="XLabel73" runat="server" text="账号所属省"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="98">
                            <aspxform:XTextBox id="XTextBox50" runat="server" Width="96px" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="Fin_Payee.App_Bank_Province">广东省</aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="52" align="middle">
                            <aspxform:XLabel id="XLabel74" runat="server" text="所属市"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="138">
                            <aspxform:XTextBox id="XTextBox51" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="Fin_Payee.App_Bank_City" width="98px" Height="22px">深圳市</aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="106">
                            <aspxform:XLabel id="XLabel11" runat="server" text="是否需要打款" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="253">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" Width="100%" Express='if(Fin_ClaimingExpenses.DK_Amount==0,"","需要")' XDataBind="Fin_ClaimingExpenses.DK_State" RepeatDirection="Horizontal">
                                <asp:ListItem>需要</asp:ListItem>
                                <asp:ListItem>不需要</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="228" align="right">
                            <aspxform:XLabel id="XLabel12" runat="server" text="打款金额" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="138">
                            <aspxform:XTextBox id="XTextBox26" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" Express="varvarloan-if(Fin_ClaimingExpenses.LoanTotal=='',0.00,Fin_ClaimingExpenses.LoanTotal)" XDataBind="Fin_ClaimingExpenses.DK_Amount" width="136px" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="(Fin_Applicant.Corporation=='深圳创维数字技术股份有限公司'&amp;&amp;Global.StepName!='准备打款'&amp;&amp;Global.StepName!='财务审核')||(Fin_Applicant.Corporation=='创维无线技术有限公司'&amp;&amp;!(Global.StepName=='无线财务审核\初审'||Global.StepName=='无线财务审核\复审'||Global.StepName=='准备打款'))">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" width="106">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel14" runat="server" text="所属公司" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="625">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="Fin_Applicant.Company" ValueColumn="Code" DisplayColumn="Name" XDataSource="TableName:Fin_R_Company;Filter:Name->Fin_Applicant.Corporation">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="(Fin_Applicant.Corporation=='深圳创维数字技术股份有限公司'&amp;&amp;Global.StepName!='准备打款'&amp;&amp;Global.StepName!='财务审核')||(Fin_Applicant.Corporation=='创维无线技术有限公司'&amp;&amp;!(Global.StepName=='无线财务审核\初审'||Global.StepName=='无线财务审核\复审'||Global.StepName=='准备打款'))">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="106">
                            <aspxform:XLabel id="XLabel15" runat="server" text="付款银行" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="625">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" Express="10021400" XDataBind="Fin_ClaimingExpenses.Bank_Account" ValueColumn="No" DisplayColumn="Name" XDataSource="TableName:Fin_R_Cash;Filter:Company->Fin_Applicant.Company" DataMap="Name->Fin_ClaimingExpenses.Bank_Name">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" width="106">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel16" runat="server" text="收款人账号" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="625">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XTextBox id="tbxAppAccount" runat="server" Width="135px" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_ClaimingExpenses.App_Account"></aspxform:XTextBox>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" width="106">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel56" runat="server" text="附件" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="625">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="Fin_ClaimingExpenses.Attachment"></aspxform:XMSNAttachments>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" colspan="3">
                            <aspxform:XLabel id="XLabel17" runat="server" text="审批人明细"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="113">
                            <div align="right">
                                <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="80px" HiddenExpress="Global.StepName!='开始'" Height="20px" DataMap="Account->Fin_CE_MangerInfo.HRID;DisplayName->Fin_CE_MangerInfo.Name;Department->Fin_CE_MangerInfo.Dept" PrintOut="False" MultiSelect="True" Text="选择审批人"></aspxform:XSelectUserButton>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="163">
                            <div align="center">
                                <aspxform:XLabel id="XLabel18" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="159">
                            <div align="center">
                                <aspxform:XLabel id="XLabel21" runat="server" text="审批人姓名" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="290">
                            <div align="center">
                                <aspxform:XLabel id="XLabel22" runat="server" text="审批人部门" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <div align="center">
                                <aspxform:XLabel id="XLabel23" runat="server" text="金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="22">
                            <aspxform:XGridLineNo id="XGridLineNo3" runat="server" Width="122px" BorderColor="Gainsboro" BorderWidth="1px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                            <aspxform:XTextBox id="XTextBox23" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="True" XDataBind="Fin_CE_MangerInfo.HRID" width="30px" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox24" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_CE_MangerInfo.Name" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox25" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_CE_MangerInfo.Dept" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="antiquewhite">
                            <aspxform:XTextBox id="XTextBox18" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_CE_MangerInfo.Amount" width="100%" BorderStyle="Groove" BackColor="AntiqueWhite" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d1dedf" height="27" colspan="4">
                            <aspxform:XTextBox id="XTextBox39" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="True" Express="RenMinBiAll -sum(if(Fin_CE_Pay_Info.State==1,if(Fin_CE_Pay_Info.OffsetAmount=='',0,Fin_CE_Pay_Info.OffsetAmount),0))-sum(if(Fin_CE_Pay_C_Info.State==1,if(Fin_CE_Pay_C_Info.OffsetAmount=='',0,Fin_CE_Pay_C_Info.OffsetAmount),0))" XDataBind="varvarloan" width="115px" DisableExpress="1" Format="type:currency;.2"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox17" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="True" Express="varvarloan-if(Fin_ClaimingExpenses.LoanTotal=='',0.00,Fin_ClaimingExpenses.LoanTotal)" XDataBind="vardakuan" width="115px" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" dynamicarea="2,1" datamap="SN->Fin_ClaimingExpenses_LoanInfo.LoanSN;Amount->Fin_ClaimingExpenses_LoanInfo.LoanAmount;Remain->Fin_ClaimingExpenses_LoanInfo.Remain;Reason->Fin_ClaimingExpenses_LoanInfo.Reason;Date->Fin_ClaimingExpenses_LoanInfo.Date;RunningAmount->Fin_ClaimingExpenses_LoanInfo.RunningAmount">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" colspan="8">
                            <font color="black" face="Arial">
                            <aspxform:XLabel id="XLabel58" runat="server" text="个人借款明细"></aspxform:XLabel>
                            <div align="center">
                            </div>
                            </font></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="26" width="42">
                            <div align="center">
                                <aspxform:XLabel id="XLabel30" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="100">
                            <div align="center">
                                <aspxform:XLabel id="XLabel37" runat="server" text="借款单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="77">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel39" runat="server" text="剩余借款" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="100">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel28" runat="server" text="在途审批金额" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="102">
                            <div align="center">
                                <aspxform:XLabel id="XLabel38" runat="server" text="剩余需冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="115">
                            <div align="center">
                                <aspxform:XLabel id="XLabel29" runat="server" text="事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="99">
                            <div align="center">
                                <aspxform:XLabel id="XLabel31" runat="server" text="预计还款报销日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="78">
                            <div align="center">
                                <aspxform:XLabel id="XLabel50" runat="server" text="本次冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo5" runat="server" Width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox40" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanSN" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BorderStyle="None" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox42" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_ClaimingExpenses_LoanInfo.Remain" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BorderStyle="None" BackColor="White" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox14" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="Fin_ClaimingExpenses_LoanInfo.RunningAmount" DisableBehavior="ReadOnly" width="98px" ReadOnly="True" BorderStyle="None" BackColor="White" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox38" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" Express="(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount)" XDataBind="varloan" width="80px" BorderStyle="None" Format="type:currency;.2"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox41" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanAmount" DisableBehavior="ReadOnly" HiddenExpress="1" width="15px" ReadOnly="True" BorderStyle="None" BackColor="White" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox43" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_ClaimingExpenses_LoanInfo.Reason" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BorderStyle="None" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.0.245:8085/BPM/Images/DatePicker/',false);this.blur();" runat="server" Width="96px" BorderColor="Gainsboro" BorderWidth="1px" XDataBind="Fin_ClaimingExpenses_LoanInfo.Date" ReadOnly="True" DisableExpress="1" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox44" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_ClaimingExpenses_LoanInfo.OffsetAmount" DisableBehavior="ReadOnly" width="100%" DisableExpress='(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount) ==0.00  ||Fin_ClaimingExpenses.Unit!="RMB" ' Format="type:currency;.2"></aspxform:XTextBox>
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
                            <aspxform:XTextBox id="XTextBox15" runat="server" BorderColor="#DCDCDC" BorderWidth="1" Express="sum(Fin_ClaimingExpenses_LoanInfo.Remain)" XDataBind="Fin_ClaimingExpenses.LoanAmount" width="100%" ReadOnly="True" BorderStyle="None" BackColor="White" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox22" runat="server" BorderColor="#DCDCDC" BorderWidth="1" Express="sum(Fin_ClaimingExpenses_LoanInfo.RunningAmount)" XDataBind="Fin_ClaimingExpenses.Amount_Running" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BorderStyle="None" BackColor="White" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                            <aspxform:XTextBox id="XTextBox29" runat="server" BorderColor="#DCDCDC" BorderWidth="1" Express="Fin_ClaimingExpenses.LoanAmount - Fin_ClaimingExpenses.Amount_Running" XDataBind="qq" HiddenExpress="1" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <div align="right">
                                <aspxform:XLabel id="XLabel51" runat="server" text="合计" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox45" runat="server" BorderColor="#DCDCDC" BorderWidth="1" Express="sum(Fin_ClaimingExpenses_LoanInfo.OffsetAmount)" XDataBind="Fin_ClaimingExpenses.LoanTotal" DisableBehavior="ReadOnly" width="100%" ReadOnly="True" BorderStyle="None" BackColor="AntiqueWhite" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="qq == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" height="24" width="145">
                            <aspxform:XLabel id="XLabel44" runat="server" Width="137px" text="请选择是否冲抵个人借款" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="587">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="Fin_Applicant.PersonalLoan" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" DisableExpress="qq == 0" Display="None" ErrorMessage="您个人借款明细中有待冲抵的款项，请选择是否冲抵！" ControlToValidate="XRadioButtonList2" ValidationGroup="Star">请选择是否冲抵个人借款</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator5" runat="server" DisableExpress='Fin_Applicant.PersonalLoan !="是"' Display="None" ErrorMessage="您选择了冲抵个人借款,请填写冲抵金额" ControlToValidate="XTextBox45" ValidationGroup="Star" Height="11px" ValueToCompare="0.01" Operator="GreaterThan" Type="Double">本次冲抵金额</aspxform:XCompareValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" dynamicarea="2,1" datamap="SN->Fin_CE_Pay_Info.PaySN;Payee->Fin_CE_Pay_Info.Payee;Amount_GZ->Fin_CE_Pay_Info.Amount;Date->Fin_CE_Pay_Info.Date;Reason->Fin_CE_Pay_Info.Reason" xdatasource="TableName:V_Fin_Pay_Info_CE;Filter:HRID->Fin_Applicant.HRID">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" colspan="8">
                            <font color="black" face="Arial">
                            <aspxform:XLabel id="XLabel32" runat="server" text="付公司挂个人往来明细"></aspxform:XLabel>
                            </font></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" width="40">
                            <div align="center">
                                <aspxform:XLabel id="XLabel33" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="88">
                            <div align="center">
                                <aspxform:XLabel id="XLabel34" runat="server" text="付费单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="141">
                            <div align="center">
                                <aspxform:XLabel id="XLabel35" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="102">
                            <div align="center">
                                <aspxform:XLabel id="XLabel36" runat="server" text="预计取回发票日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="154">
                            <div align="center">
                                <aspxform:XLabel id="XLabel40" runat="server" text="付款事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="77">
                            <div align="center">
                                <aspxform:XLabel id="XLabel41" runat="server" text="金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" colspan="2">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel42" runat="server" text="本次冲抵" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox27" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_CE_Pay_Info.PaySN" width="100%" ReadOnly="True" BorderStyle="None" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox28" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_CE_Pay_Info.Payee" width="100%" ReadOnly="True" BorderStyle="None" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" Width="96px" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_CE_Pay_Info.Date" DisableExpress="1"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox30" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_CE_Pay_Info.Reason" width="100%" ReadOnly="True" BorderStyle="None" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox31" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_CE_Pay_Info.Amount" width="100%" ReadOnly="True" BorderStyle="None" BackColor="White" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" width="32">
                            <div align="center">
                                <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="Fin_CE_Pay_Info.State" Text=" "></aspxform:XCheckBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="79">
                            <aspxform:XTextBox id="XTextBox32" runat="server" Value ValueToDisplayText BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="Fin_CE_Pay_Info.OffsetAmount" width="80px" DisableExpress="Fin_CE_Pay_Info.State==0" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" dynamicarea="2,1" datamap="SN->Fin_CE_Pay_C_Info.PaySN;Payee->Fin_CE_Pay_C_Info.Payee;Amount_GZ->Fin_CE_Pay_C_Info.Amount;Date->Fin_CE_Pay_C_Info.Date;Reason->Fin_CE_Pay_C_Info.Reason" xdatasource="TableName:V_Fin_Pay_C_Info_CE;Filter:HRID->Fin_Applicant.HRID">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" colspan="8">
                            <aspxform:XLabel id="XLabel43" runat="server" text="付公司挂单位往来明细"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="41">
                            <div align="center">
                                <aspxform:XLabel id="XLabel45" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="88">
                            <div align="center">
                                <aspxform:XLabel id="XLabel52" runat="server" text="付费单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="141">
                            <div align="center">
                                <aspxform:XLabel id="XLabel54" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="102">
                            <div align="center">
                                <aspxform:XLabel id="XLabel55" runat="server" text="预计取回发票日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="154">
                            <div align="center">
                                <aspxform:XLabel id="XLabel59" runat="server" text="付款事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="77">
                            <div align="center">
                                <aspxform:XLabel id="XLabel69" runat="server" text="金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <div align="center">
                                <aspxform:XLabel id="XLabel70" runat="server" text="本次冲抵" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox33" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_CE_Pay_C_Info.PaySN" width="100%" ReadOnly="True" BorderStyle="None" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox34" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_CE_Pay_C_Info.Payee" width="100%" ReadOnly="True" BorderStyle="None" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" Width="96px" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_CE_Pay_C_Info.Date" DisableExpress="1"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox46" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_CE_Pay_C_Info.Reason" width="100%" ReadOnly="True" BorderStyle="None" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox49" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Fin_CE_Pay_C_Info.Amount" width="100%" ReadOnly="True" BorderStyle="None" BackColor="White" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" width="33">
                            <div align="center">
                                <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="Fin_CE_Pay_C_Info.State" Text=" "></aspxform:XCheckBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="78">
                            <aspxform:XTextBox id="XTextBox52" runat="server" Value ValueToDisplayText BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" HiddenInput="False" XDataBind="Fin_CE_Pay_C_Info.OffsetAmount" width="80px" DisableExpress="Fin_CE_Pay_C_Info.State==0" Height="22px" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress='Global.StepName !=""&amp;&amp;Global.StepName !="开始"'>
                <tbody>
                    <tr>
                        <td height="25" width="91" align="right">
                            <aspxform:XLabel id="XLabel71" runat="server" text="注意:" Font-Bold="True" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td width="643">
                            <aspxform:XLabel id="XLabel94" runat="server" Width="588px" text="①销售代理费单据②1万元以上的业务招待费单据③金额在2万元以上的其它单据需要总裁书面签批" Font-Size="Larger"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="17" colspan="2">
                            <aspxform:XLabel id="XLabel72" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="Gainsboro" BorderWidth="1px" width="734px" TextMode="MultiLine" Height="51px" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="100%" BorderColor="#dcdcdc" BorderWidth="1" CssClass="AA"></aspxform:XSignTrace>
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
                            <aspxform:XLabel id="XLabel75" runat="server" text="是否邮件通知提交人" ForeColor="Red"></aspxform:XLabel>
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
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请填写拒绝理由！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Reject">拒绝验证</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请填写退回意见！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Return">退回重填验证</aspxform:XRequiredFieldValidator>
            <aspxform:XCompareValidator id="XCompareValidator1" runat="server" Display="None" ErrorMessage="冲抵总额不能大于可冲抵额！" ControlToValidate="XTextBox45" Enabled="False" Operator="LessThanEqual" Type="Double" ValueToCompareExpress="Fin_ClaimingExpenses.LoanAmount-Fin_ClaimingExpenses.Amount_Running">冲抵总额验证</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator2" runat="server" Display="None" ErrorMessage="冲抵金额超出了借款！" ControlToValidate="XTextBox44" ValidationGroup="Star" Operator="LessThanEqual" Type="Double" ValueToCompareExpress="varloan">每单冲抵额验证</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator3" runat="server" Display="None" ErrorMessage="冲抵总额不能大于报销总额！" ControlToValidate="XTextBox45" ValidationGroup="Star" Operator="LessThanEqual" Type="Double" ValueToCompareExpress="varvarloan">冲抵总额大于报销总额验证</aspxform:XCompareValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="用途不能为空" ControlToValidate="XTextBox10" ValidationGroup="Star">用途不能为空</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="金额不能为空" ControlToValidate="XTextBox18" ValidationGroup="Star">金额不能为空</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请选择审批人" ControlToValidate="XTextBox24" ValidationGroup="Star">请选择审批人</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="请选择审批人" ControlToValidate="XTextBox25" ValidationGroup="Star">请选择审批人</aspxform:XRequiredFieldValidator>
            <aspxform:XCompareValidator id="XCompareValidator4" runat="server" Display="None" ErrorMessage="打款金额和冲账金额相加必须等于报销金额" ControlToValidate="XTextBox26" ValidationGroup="Dakuan" Type="Double" ValueToCompareExpress="vardakuan">打款冲账报销检验</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator6" runat="server" Display="None" ErrorMessage="冲抵金额超出" ControlToValidate="XTextBox32" ValidationGroup="Star" Operator="LessThanEqual" Type="Double" ValueToCompareExpress="Fin_CE_Pay_Info.Amount">冲抵金额超出</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator7" runat="server" Display="None" ErrorMessage="冲抵金额超出" ControlToValidate="XTextBox52" ValidationGroup="Star" Operator="LessThanEqual" Type="Double" ValueToCompareExpress="Fin_CE_Pay_C_Info.Amount">冲抵金额超出</aspxform:XCompareValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" DisableExpress="Fin_CE_Pay_Info.State!=1" Display="None" ErrorMessage="冲抵金额不能为空" ControlToValidate="XTextBox32" ValidationGroup="Star">冲抵金额不能为空</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" DisableExpress="Fin_CE_Pay_C_Info.State!=1" Display="None" ErrorMessage="冲抵金额不能为空" ControlToValidate="XTextBox52" ValidationGroup="Star">冲抵金额不能为空</aspxform:XRequiredFieldValidator>
            <table border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td height="19" width="242">
                        </td>
                        <td width="466">
                        </td>
                        <td width="50">
                        </td>
                    </tr>
                    <tr>
                        <td height="162" colspan="3">
                            <p>
                                <aspxform:XLabel id="XLabel76" runat="server" Font-Size="Medium" ForeColor="Red" PrintOut="False" Text="特殊报销注意事项:"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox126" runat="server" BorderColor="#DCDCDC" BorderWidth="1" XDataBind="Company" HiddenExpress="1" width="10px"></aspxform:XTextBox>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel78" runat="server" text="1. 提交后请在系统的“历史申请”中将此单打印作为报销单封面附于原始单据前转交至财务部审核。" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel79" runat="server" text="2. “代理人”为此次报销事项的经办人；“申请人”为最终责任人；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel82" runat="server" text="3. 请在“用途”栏写明报销事项；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel83" runat="server" text="4. 若“个人借款明细”中的“剩余借款”大于0，请选择“预计还款/报销日期”最早的项目来进行冲抵；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;
                                <aspxform:XLabel id="XLabel84" runat="server" text=" 在“本次冲抵金额”中填写冲抵金额，此金额应小于或等于本次报销的金额；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;
                                <aspxform:XLabel id="XLabel85" runat="server" text="如不冲抵则无法报销；" PrintOut="False"></aspxform:XLabel>
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
