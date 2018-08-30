<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

      protected void Page_Load(object sender, EventArgs e)
        {

            XTextBox115.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+60)");
            XTextBox76.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
            XTextBox127.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
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
	 var Cnum=new Array("元","拾","佰","仟","万","拾");
	 money=source;
	 x=Math.floor(money);
	 y=Math.round((money-x)*100);
	 if (x>999999)
     result="金额不能大于999999！";
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

        function DateDiff(sDate1, sDate2)
        {
            var aDate, oDate1, oDate2, iDays;
            aDate = sDate1.toString().split("-") ;
            oDate1 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0]); //转换为12-18-2002格式
            aDate = sDate2.toString().split("-") ;
            oDate2 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0]) ;
            iDays = parseInt(Math.abs(oDate1 - oDate2) / 1000 / 60 / 60 /24); //把相差的毫秒数转换为天数
            return iDays ;
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
                            <aspxform:XTextBox id="tbxCorporation" runat="server" XDataBind="Fin_Applicant.Corporation" TextAlign="Center" Express="javascript('CorporationDiff',Company)" BorderWidth="0px" BorderColor="GhostWhite" Max="0" Min="0" Width="258px" HiddenInput="False" Value ValueToDisplayText></aspxform:XTextBox>
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
                                    <aspxform:XLabel id="XLabel13" runat="server" text="差旅费用报销" Font-Size="Medium" Font-Names="Tahoma" Font-Bold="True"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="33" colspan="4">
                            <div align="center">
                                <aspxform:XTextBox id="tbxSupperDept" runat="server" XDataBind="Fin_Applicant.SupperDept" Express="javascript('SupperDeptDiff',Company)" BorderWidth="1" BorderColor="#DCDCDC" Width="10px" HiddenExpress="1"></aspxform:XTextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XLabel id="XLabel67" runat="server" text="附件共"></aspxform:XLabel>
                                <aspxform:XLabel id="XLabel68" runat="server" Width="30px"></aspxform:XLabel>
                                <aspxform:XLabel id="XLabel69" runat="server" text="页"></aspxform:XLabel>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="26" width="108">
                            <aspxform:XLabel id="_Location" runat="server" text="申请日期" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial"></font></span></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="255">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="Fin_Applicant.AppDate" BorderWidth="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="108">
                            <aspxform:XLabel id="XLabel2" runat="server" text="申请单号" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="254">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="Fin_Applicant.SN" BorderWidth="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="19" colspan="2">
                            <aspxform:XLabel id="PerInfo" runat="server" text="申请人"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator26" runat="server" DisableExpress='Fin_Applicant.HRIDLevel ==80 || Fin_Applicant.Dept=="总裁办" ||Fin_Applicant.Corporation=="深圳微普特信息技术有限公司"||Fin_Applicant.HRID=="SDT03739"' Display="None" ErrorMessage="根据财务差旅费用报销规定，请选择出差申请已批准单据，谢谢!" ControlToValidate="XTextBox113" ValidationGroup="Star">差旅预审批</aspxform:XRequiredFieldValidator>
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><font color="black">
                            <aspxform:XLabel id="XLabel3" runat="server" text="代理人"></aspxform:XLabel>
                            </font></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel24" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox121" runat="server" XDataBind="Fin_Applicant.HRIDLevel" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="43px" Height="23px"></aspxform:XTextBox>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="Fin_Applicant.Applicant" BorderWidth="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel26" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="Fin_Applicant.Sub_Name" BorderWidth="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel4" runat="server" text="工号" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox111" runat="server" XDataBind="Fin_Applicant.HRID" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel5" runat="server" text="工号" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox211" runat="server" XDataBind="Fin_Applicant.Sub_HRID" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel25" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="Fin_Applicant.Dept" Express="Fin_Applicant.SupperDept" BorderWidth="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel27" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="Fin_Applicant.Sub_Dept" BorderWidth="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#ffffff" height="25" colspan="2" align="middle">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="Fin_Applicant.HRID" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderStyle="Dotted" width="21px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="Fin_Applicant.Sub_HRID" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderStyle="Dotted" width="29px" Height="22px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="Fin_ClaimingExpenses.PersonType" Express='if(Fin_Applicant.Corporation=="微普特公司",5,Fin_ClaimingExpenses.PersonType)' BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" BorderStyle="Dotted" width="27px" Height="22px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="Fin_ClaimingExpenses.Bank_Name" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderStyle="Dotted" width="23px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="Fin_ClaimingExpenses.NR" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderStyle="Dotted" width="21px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox65" runat="server" XDataBind="Fin_ClaimingExpenses.PayTotal" TextAlign="Right" Express="if(Fin_ClaimingExpenses.Country=='中国大陆',sum(Fin_CE_TE_Info.Total)+Fin_CE_TE.Total,sum(Fin_CE_TE_JW_Info.Total)+Fin_CE_TE_JW.Total)" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BackColor="Bisque" BorderStyle="None" ReadOnly="True" width="25px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox74" runat="server" XDataBind="Fin_ClaimingExpenses.PermanentCity" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" width="29px" Height="22px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" DisableExpress='Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' Display="None" ErrorMessage="请选择是否为质量费用报销！" ControlToValidate="XRadioButtonList4" ValidationGroup="Star">质量费用</aspxform:XRequiredFieldValidator>
                            <aspxform:XRangeValidator id="XRangeValidator1" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="市内交通费不能大于160！" ControlToValidate="XTextBox91" ValidationGroup="Star" Type="Double" MaximumValue="160" MinimumValue="0">市内交通费</aspxform:XRangeValidator>
                            <aspxform:XRangeValidator id="XRangeValidator2" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="市内交通费不能大于160！" ControlToValidate="XTextBox53" ValidationGroup="Star" Type="Double" MaximumValue="160" MinimumValue="0">市内交通费</aspxform:XRangeValidator>
                        </td>
                        <td>
                            <aspxform:XCompareValidator id="XCompareValidator8" runat="server" DisableExpress="!(Fin_ClaimingExpenses.PersonType=='1'||Fin_ClaimingExpenses.PersonType=='5'||Fin_ClaimingExpenses.PersonType=='6')&amp;&amp;Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="行程中住宿费超标了" ControlToValidate="XTextBox94" ValidationGroup="Star" Type="Double" Operator="LessThanEqual" ValueToCompareExpress="Fin_CE_TE_Info.ZS">住宿费超标验证</aspxform:XCompareValidator>
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" DisableExpress="Fin_CE_TE_Info.OverAmount==''||Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="请填写超标的理由！" ControlToValidate="XTextBox29" ValidationGroup="Star">超额理由</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator10" runat="server" DisableExpress="Fin_ClaimingExpenses.PersonType!='1'||Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="行程终点住宿费超标了！" ControlToValidate="XTextBox100" ValidationGroup="Star" Type="Double" Operator="LessThanEqual" ValueToCompareExpress="Fin_CE_TE.ZS">住宿费超标验证</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator5" runat="server" Display="None" ErrorMessage="出发日期不能大于申请日期！" ControlToValidate="XDateTimePicker4" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">出发日期</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator6" runat="server" Display="None" ErrorMessage="到达日期不能大于申请日期！" ControlToValidate="XDateTimePicker1" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">到达日期</aspxform:XCompareValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="593" align="left">
                            <aspxform:XLabel id="XLabel101" runat="server" text="差旅申请信息" Font-Size="X-Small" Font-Bold="True" ForeColor="Navy"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox112" runat="server" XDataBind="IsFinish" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" width="22px">1</aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox116" runat="server" XDataBind="IsType" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" width="21px">1</aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox117" runat="server" XDataBind="IsState" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" width="20px">1</aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox122" runat="server" XDataBind="Fin_Applicant.Travel_Total" Express="Fin_CE_TE_Total.Total" BorderWidth="1" BorderColor="#DCDCDC" HiddenInput="True" HiddenExpress="1" width="20px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="138">
                            <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="150px" HiddenExpress="Global.StepName!='开始'" DisplayColumns="AppSN:申请单号;TaskID:电子流ID;EmpName:发起人;FromDate:开始日期;ToDate:结束日期;Note:原因" PopupWndHeight="500" PopupWndY="100" PopupWndX="100" PopupWndWidth="800" UseSubmitBehavior="False" XDataSource="DataSource:DigitalHR;TableName:V_HR_GongGan_Chailv1;Filter:AppHRID->Fin_Applicant.HRID,Type->IsType,isFinish->IsFinish,State->IsState" NavigateUrl="~\FormSupport\DataBrowser.aspx" DataMap="AppSN->Fin_ChaiLv_YuShenQing.ChaiLv_SN;AppDate->Fin_ChaiLv_YuShenQing.ChaiLv_AppDate;TaskID->Fin_ChaiLv_YuShenQing.ChaiLv_taskid;Address->Fin_ChaiLv_YuShenQing.ChaiLv_Address;FromDate->Fin_ChaiLv_YuShenQing.ChaiLv_FromDate;ToDate->Fin_ChaiLv_YuShenQing.ChaiLv_ToDate;Note->Fin_ChaiLv_YuShenQing.ChaiLv_Note;Cost->Fin_ChaiLv_YuShenQing.ChaiLv_Cost" Text="导入出差申请单据信息"></aspxform:XDataBrowserButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="41" width="105">
                            <div align="center">
                                <aspxform:XLabel id="XLabel107" runat="server" text="申请单号" Font-Bold="True"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox119" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_AppDate" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" width="5px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="82">
                            <div align="center">
                                <aspxform:XLabel id="XLabel108" runat="server" text="出差地点" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="172">
                            <div align="center">
                                <aspxform:XLabel id="XLabel109" runat="server" text="出差原因" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="120">
                            <div align="center">
                                <aspxform:XLabel id="XLabel110" runat="server" text="出差开始日期" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="120">
                            <div align="center">
                                <aspxform:XLabel id="XLabel111" runat="server" text="出差结束日期" Font-Bold="True"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_taskid" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" width="5px"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="62" align="middle">
                            <aspxform:XLabel id="XLabel100" runat="server" text="交通工具" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="54">
                            <div align="center">
                                <aspxform:XLabel id="XLabel112" runat="server" text="预计费用" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox113" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_SN" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="97px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox114" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_Address" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="80px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox115" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_Note" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XDateTimePicker id="XDateTimePicker10" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_FromDate" BorderWidth="1px" BorderColor="Gainsboro" Width="118px" BackColor="#F0F0F0" ReadOnly="True" DisableExpress="1" onchange="javascript:XFormOnChange(this);" XSubType="timeminutes" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XDateTimePicker id="XDateTimePicker11" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_ToDate" BorderWidth="1px" BorderColor="Gainsboro" Width="118px" BackColor="#F0F0F0" ReadOnly="True" DisableExpress="1" onchange="javascript:XFormOnChange(this);" XSubType="timeminutes" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox120" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_Vehicle" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="60px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox118" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_Cost" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="50px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="105">
                            <aspxform:XLabel id="XLabel1" runat="server" text="是否需要打款" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="257">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="Fin_ClaimingExpenses.DK_State" Express='if(Fin_ClaimingExpenses.DK_Amount==0,"","需要")' Width="100%" RepeatDirection="Horizontal">
                                <asp:ListItem>需要</asp:ListItem>
                                <asp:ListItem>不需要</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" background="#F0F0F0" width="120" align="middle">
                            <aspxform:XLabel id="XLabel28" runat="server" text="打款金额" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="243">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="Fin_ClaimingExpenses.DK_Amount" Express="if(Fin_CE_TE_Total.Total=='',0.00,Fin_CE_TE_Total.Total)-if(Fin_ClaimingExpenses.LoanTotal=='',0.00,Fin_ClaimingExpenses.LoanTotal)" BorderWidth="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="(Fin_Applicant.Corporation=='深圳创维数字技术股份有限公司'&amp;&amp;Global.StepName!='准备打款'&amp;&amp;Global.StepName!='财务审核')||(Fin_Applicant.Corporation=='创维无线技术有限公司'&amp;&amp;!(Global.StepName=='无线财务审核\初审'||Global.StepName=='无线财务审核\复审'||Global.StepName=='准备打款'))">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="105">
                            <aspxform:XLabel id="XLabel29" runat="server" text="所属公司" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="626">
                            <aspxform:XDropDownList id="XDropDownList12" runat="server" XDataBind="Fin_Applicant.Company" XDataSource="TableName:Fin_R_Company;Filter:Name->Fin_Applicant.Corporation" ValueColumn="Code" DisplayColumn="Name">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XCompareValidator id="XCompareValidator9" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="离开日期不能小于出发日期" ControlToValidate="XDateTimePicker9" ValidationGroup="Star" Operator="GreaterThanEqual" ControlToCompare="XDateTimePicker7">离开日期大于开始日期</aspxform:XCompareValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="请选择出发日期" ControlToValidate="XDateTimePicker7" ValidationGroup="Star">出发日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="请选择离开日期！" ControlToValidate="XDateTimePicker9" ValidationGroup="Star">离开日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'&amp;&amp;Fin_CE_TE_JW_Info.Airfare==''" Display="None" ErrorMessage="请填写机票汇率" ControlToValidate="XTextBox56" ValidationGroup="Star">汇率</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'&amp;&amp;Fin_CE_TE_JW_Info.Fare==''" Display="None" ErrorMessage="请填写车船汇率" ControlToValidate="XTextBox103" ValidationGroup="Star">汇率</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'&amp;&amp;Fin_CE_TE_JW_Info.ZS_B==0" Display="None" ErrorMessage="请填写住宿费汇率" ControlToValidate="XTextBox106" ValidationGroup="Star">汇率</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'&amp;&amp;Fin_CE_TE_JW_Info.ZS_B==0" Display="None" ErrorMessage="请填写补助汇率" ControlToValidate="XTextBox108" ValidationGroup="Star">汇率</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'&amp;&amp;Fin_CE_TE_JW_Info.OverAmount==''" Display="None" ErrorMessage="请填写超标金额汇率" ControlToValidate="XTextBox24" ValidationGroup="Star">汇率</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator14" runat="server" Display="None" ErrorMessage="出发日期不能大于申请日期！" ControlToValidate="XDateTimePicker5" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">出发日期</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator12" runat="server" Display="None" ErrorMessage="离开日期不能大于申请日期！" ControlToValidate="XDateTimePicker6" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">到达日期</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator15" runat="server" Display="None" ErrorMessage="行程终点出发日期不能大于申请日期！" ControlToValidate="XDateTimePicker7" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">出发日期</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator13" runat="server" Display="None" ErrorMessage="行程终点到达日期不能大于申请日期！" ControlToValidate="XDateTimePicker8" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">到达日期</aspxform:XCompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel54" runat="server" text="付款银行" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="Fin_ClaimingExpenses.Bank_Account" XDataSource="TableName:Fin_R_Cash;Filter:Company->Fin_Applicant.Company" DataMap="Name->Fin_ClaimingExpenses.Bank_Name" ValueColumn="No" DisplayColumn="Name">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" DisableExpress="Fin_CE_TE_JW_Info.OverAmount==''||Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="请填写超额理由！" ControlToValidate="XTextBox70" ValidationGroup="Star">超额理由</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="请选择出发日期" ControlToValidate="XDateTimePicker5" ValidationGroup="Star">出发日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="请选择离开日期！" ControlToValidate="XDateTimePicker6" ValidationGroup="Star">离开日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator1" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="离开日期不能小于出发日期" ControlToValidate="XDateTimePicker6" ValidationGroup="Star" Operator="GreaterThanEqual" ValueToCompareExpress="Fin_CE_TE_JW_Info.StarDate">离开日期大于开始日期</aspxform:XCompareValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="请选择出发地点！" ControlToValidate="XTextBox15" ValidationGroup="Star">出发地点</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="请选择到达地点" ControlToValidate="XTextBox58" ValidationGroup="Star">到达地点</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator19" runat="server" Display="None" ErrorMessage="超标金额不能小于零" ControlToValidate="XTextBox13" ValidationGroup="Star" Operator="GreaterThanEqual" ValueToCompare="0.01">超标金额大于零</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator2" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'&amp;&amp;Fin_CE_TE_JW_Info.ZS_B==0" Display="None" ErrorMessage="住宿费超标了" ControlToValidate="XTextBox104" ValidationGroup="Star" Type="Double" Operator="LessThanEqual" ValueToCompareExpress="Fin_CE_TE_JW_Info.ZS">住宿费超标</aspxform:XCompareValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" width="105">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel53" runat="server" text="收款人账号" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="140">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XTextBox id="tbxAppAccount" runat="server" XDataBind="Fin_ClaimingExpenses.App_Account" BorderWidth="1" BorderColor="#DCDCDC" Width="135px"></aspxform:XTextBox>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="41">
                            <aspxform:XLabel id="XLabel97" runat="server" text="开户行"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="127">
                            <aspxform:XTextBox id="XTextBox83" runat="server" XDataBind="Fin_ClaimingExpenses.App_Bank_Name" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Width="180px" HiddenInput="False">招商银行</aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="65">
                            <aspxform:XLabel id="XLabel98" runat="server" text="账号所属省"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="50">
                            <aspxform:XTextBox id="XTextBox109" runat="server" XDataBind="Fin_ClaimingExpenses.App_Bank_Province" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Width="50px" HiddenInput="False">广东省</aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="65">
                            <aspxform:XLabel id="XLabel99" runat="server" text="账号所属市"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="50">
                            <aspxform:XTextBox id="XTextBox110" runat="server" XDataBind="Fin_ClaimingExpenses.App_Bank_City" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" width="50px">深圳市</aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="105">
                            <aspxform:XLabel id="XLabel90" runat="server" text="出差国家地区" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid" bgcolor="#f0f0f0" width="203">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="Fin_ClaimingExpenses.Country" Width="200px" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True" Value="中国大陆">大陆地区</asp:ListItem>
                                <asp:ListItem Value="大陆以外地区">大陆以外地区</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid" bgcolor="#f0f0f0" width="51">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="121" align="middle">
                            <aspxform:XLabel id="XLabel91" runat="server" Value ValueToDisplayText text="是否为质量费用" HiddenExpress='Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid" bgcolor="#f0f0f0" width="79" align="right">
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="Fin_Applicant.QualityYN" HiddenExpress='Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' DisableExpress='Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="162">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator27" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' Display="None" ErrorMessage="请选择产品线" ControlToValidate="XDropDownList3">请选择产品线</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" colspan="6" align="middle">
                            <table border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="Fin_Applicant.QualityYN!='是'">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="28" width="64">
                                            <aspxform:XLabel id="XLabel6" runat="server" text="订单/项目" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="180">
                                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="Fin_Applicant.QualityProject" BorderWidth="1" BorderColor="Gainsboro"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="58">
                                            <aspxform:XLabel id="XLabel8" runat="server" text="事故时间" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="80">
                                            <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" XDataBind="Fin_Applicant.QualityTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XLabel id="XLabel115" runat="server" Value ValueToDisplayText text="产品线" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="Fin_Applicant.QualityPL" XDataSource="TableName:QS_ProductLine" ValueColumn="pd_id" DisplayColumn="ProductLine">
                                                <asp:ListItem>未绑定</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                                            <aspxform:XLabel id="XLabel9" runat="server" text="事故原因" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
                                            <aspxform:XTextBox id="XTextBox76" runat="server" XDataBind="Fin_Applicant.QualityReason" BorderWidth="1" BorderColor="Gainsboro" Width="100%" Height="22px" TextMode="MultiLine"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                                            <aspxform:XLabel id="XLabel7" runat="server" Value ValueToDisplayText text="事故简述" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
                                            <aspxform:XTextBox id="XTextBox127" runat="server" XDataBind="Fin_Applicant.QualityOutline" BorderWidth="1" BorderColor="Gainsboro" Width="100%" Height="22px" TextMode="MultiLine"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28">
                                            <aspxform:XLabel id="XLabel114" runat="server" Value ValueToDisplayText text="凭证" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="5">
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="18" colspan="7">
                            <aspxform:XLabel id="XLabel10" runat="server" text="差旅各项合计" ForeColor="Black"></aspxform:XLabel>
                            <aspxform:XCompareValidator id="XCompareValidator7" runat="server" Display="None" ErrorMessage="日期不能大于申请日期！" ControlToValidate="XDateTimePicker2" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">出发日期</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator11" runat="server" Display="None" ErrorMessage="日期不能大于申请日期！" ControlToValidate="XDateTimePicker3" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">到达日期</aspxform:XCompareValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator28" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' Display="None" ErrorMessage="订单项目不能为空" ControlToValidate="XTextBox4">订单项目不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator29" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' Display="None" ErrorMessage="事故时间不能为空" ControlToValidate="XDateTimePicker8">事故时间不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator30" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' Display="None" ErrorMessage="事故原因不能为空" ControlToValidate="XTextBox76">事故原因不能为空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator31" runat="server" DisableExpress='Fin_Applicant.QualityYN!="是"||Fin_Applicant.Corporation!="深圳创维数字技术股份有限公司"' Display="None" ErrorMessage="事故简述不能为空" ControlToValidate="XTextBox127">事故简述不能为空</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="107">
                            <div align="center">
                                <aspxform:XLabel id="XLabel21" runat="server" text="市内交通费" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="107">
                            <div align="center">
                                <aspxform:XLabel id="XLabel31" runat="server" text="机票费" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="107">
                            <div align="center">
                                <aspxform:XLabel id="XLabel32" runat="server" text="车船费" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="107">
                            <div align="center">
                                <aspxform:XLabel id="XLabel33" runat="server" text="住宿费" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="107">
                            <div align="center">
                                <aspxform:XLabel id="XLabel42" runat="server" text="出差补助" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="107">
                            <div align="center">
                                <aspxform:XLabel id="XLabel11" runat="server" text="超标金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="88">
                            <div align="center">
                                <aspxform:XLabel id="XLabel52" runat="server" text="合计" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                            <aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="Fin_CE_TE_Total.Transportation" TextAlign="Right" Express="if(Fin_ClaimingExpenses.Country=='中国大陆',sum(if(Fin_CE_TE_Info.Transportation=='',0,Fin_CE_TE_Info.Transportation))+if(Fin_CE_TE.Transportation=='',0,Fin_CE_TE.Transportation),0)" BorderWidth="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox60" runat="server" XDataBind="Fin_CE_TE_Total.Airfare" TextAlign="Right" Express="if(Fin_ClaimingExpenses.Country=='中国大陆',sum(if(Fin_CE_TE_Info.Airfare=='',0,Fin_CE_TE_Info.Airfare))+if(Fin_CE_TE.Airfare=='',0,Fin_CE_TE.Airfare),sum(if(Fin_CE_TE_JW_Info.Airfare=='',0,Fin_CE_TE_JW_Info.Airfare)*Fin_CE_TE_JW_Info.Rate_Air)+if(Fin_CE_TE_JW.Airfare=='',0,Fin_CE_TE_JW.Airfare)*Fin_CE_TE_JW.Rate_Air)" BorderWidth="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox61" runat="server" XDataBind="Fin_CE_TE_Total.Fare" TextAlign="Right" Express="if(Fin_ClaimingExpenses.Country=='中国大陆',sum(if(Fin_CE_TE_Info.Fare=='',0,Fin_CE_TE_Info.Fare))+if(Fin_CE_TE.Fare=='',0,Fin_CE_TE.Fare),sum(if(Fin_CE_TE_JW_Info.Fare=='',0,Fin_CE_TE_JW_Info.Fare)*Fin_CE_TE_JW_Info.Rate_Fare)+if(Fin_CE_TE_JW.Fare=='',0,Fin_CE_TE_JW.Fare)*Fin_CE_TE_JW.Rate_Fare)" BorderWidth="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox62" runat="server" XDataBind="Fin_CE_TE_Total.Accommodation" TextAlign="Right" Express="if(Fin_ClaimingExpenses.Country=='中国大陆',sum(if(Fin_CE_TE_Info.ZS_B==1,if(Fin_CE_TE_Info.Accommodation=='',0,Fin_CE_TE_Info.Accommodation),0))+if(Fin_CE_TE.Accommodation=='',0,Fin_CE_TE.Accommodation),sum(if(Fin_CE_TE_JW_Info.ZS_B==1,if(Fin_CE_TE_JW_Info.Accommodation=='',0,Fin_CE_TE_JW_Info.Accommodation)*Fin_CE_TE_JW_Info.Rate_ZS,0))+if(Fin_CE_TE_JW.Accommodation=='',0,Fin_CE_TE_JW.Accommodation)*Fin_CE_TE_JW.Rate_ZS)" BorderWidth="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox63" runat="server" XDataBind="Fin_CE_TE_Total.BZ" TextAlign="Right" Express="if(Fin_ClaimingExpenses.Country=='中国大陆',sum(if(Fin_CE_TE_Info.ZS_B==1,Fin_CE_TE_Info.BZ,0))+Fin_CE_TE.BZ,sum(if(Fin_CE_TE_JW_Info.ZS_B==1,if(Fin_CE_TE_JW_Info.BZ=='',0,Fin_CE_TE_JW_Info.BZ*Fin_CE_TE_JW_Info.Rate_BZ),0))+if(Fin_CE_TE_JW.BZ=='',0,Fin_CE_TE_JW.BZ)*Fin_CE_TE_JW.Rate_BZ)" BorderWidth="1" BorderColor="#DCDCDC" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="antiquewhite">
                            <aspxform:XTextBox id="XTextBox64" runat="server" XDataBind="Fin_CE_TE_Total.OverAmount" TextAlign="Right" Express="if(Fin_ClaimingExpenses.Country=='中国大陆',sum(if(Fin_CE_TE_Info.OverAmount=='',0,Fin_CE_TE_Info.OverAmount)),sum(if(Fin_CE_TE_JW_Info.OverAmount=='',0,Fin_CE_TE_JW_Info.OverAmount)*Fin_CE_TE_JW_Info.Rate_Over))" BorderWidth="1" BorderColor="#DCDCDC" ForeColor="Red" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" Format="type:currency;.2">0</aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="antiquewhite">
                            <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="Fin_CE_TE_Total.Total" TextAlign="Right" Express='if(Fin_CE_TE_Total.Airfare=="",0,Fin_CE_TE_Total.Airfare)+if(Fin_CE_TE_Total.Fare=="",0,Fin_CE_TE_Total.Fare)+if(Fin_CE_TE_Total.Transportation=="",0,Fin_CE_TE_Total.Transportation)+if(Fin_CE_TE_Total.Accommodation=="",0,Fin_CE_TE_Total.Accommodation)+if(Fin_CE_TE_Total.BZ=="",0,Fin_CE_TE_Total.BZ)+if(Fin_CE_TE_Total.OverAmount=="",0,Fin_CE_TE_Total.OverAmount)' BorderWidth="1" BorderColor="#DCDCDC" BackColor="AntiqueWhite" BorderStyle="None" ReadOnly="True" width="100%" Format="type:currency;.2">0</aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" dynamicarea="1,4">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="21" width="130">
                            <aspxform:XLabel id="XLabel17" runat="server" text="差旅报销明细" ForeColor="Black"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="3">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="236">
                            <div align="right">
                                <aspxform:XAddBlockButton id="XAddBlockButton3" runat="server" Width="80px" HiddenExpress="Global.StepName!='开始'" Height="20px" Text="添加行程" TableName="Fin_CE_TE_Info" PrintOut="False"></aspxform:XAddBlockButton>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2">
                            <div align="right">
                                <div align="center">
                                    <aspxform:XGridLineNo id="XGridLineNo2" runat="server" XDataBind="var" BorderWidth="1px" BorderColor="Gainsboro" Width="85px" Font-Size="X-Large" BorderStyle="None" Height="100%" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="23" width="63">
                            <div align="right">
                                <aspxform:XLabel id="XLabel15" runat="server" text="出发日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" width="216">
                            <aspxform:XDateTimePicker id="XDateTimePicker4" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE_Info.StarDate" BorderWidth="1px" BorderColor="Gainsboro" Width="120px" BackColor="White" ReadOnly="True" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XTextBox id="XTextBox89" runat="server" XDataBind="Fin_CE_TE_Info.ZS_Per" TextAlign="Right" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" HiddenExpress="1" BorderStyle="Dotted" ReadOnly="True" width="60px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" width="77">
                            <p align="right">
                                <aspxform:XLabel id="XLabel41" runat="server" text="出发地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" bgcolor="#f0f0f0">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="102">
                                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="Fin_CE_TE_Info.City_Star" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="100px"></aspxform:XTextBox>
                                        </td>
                                        <td width="24">
                                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton1" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=2" DataMap="Col1->Fin_CE_TE_Info.City_Star" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType,Col5->Fin_Applicant.Corporation"></aspxform:XCustomBrowserButton>
                                        </td>
                                        <td width="106">
                                            <aspxform:XTextBox id="XTextBox34" runat="server" XDataBind="Fin_CE_TE_Info.C_Star" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" width="77px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="23">
                            <p align="right">
                                &nbsp;<aspxform:XLabel id="XLabel35" runat="server" text="离开日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE_Info.EndDate" BorderWidth="1px" BorderColor="Gainsboro" Width="120px" BackColor="White" ReadOnly="True" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <div align="right">
                                <aspxform:XLabel id="XLabel12" runat="server" text="到达地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" bgcolor="#f0f0f0">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="102">
                                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="Fin_CE_TE_Info.City_End" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="100px"></aspxform:XTextBox>
                                        </td>
                                        <td width="24">
                                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton2" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=2" DataMap="Col1->Fin_CE_TE_Info.City_End;Col2->Fin_CE_TE_Info.ZS_Per;Col3->Fin_CE_TE_Info.BZ_Per" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType,Col5->Fin_Applicant.Corporation"></aspxform:XCustomBrowserButton>
                                        </td>
                                        <td width="106">
                                            <aspxform:XTextBox id="XTextBox38" runat="server" XDataBind="Fin_CE_TE_Info.C_End" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" width="78px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="65" colspan="5">
                            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%" hiddenexpress="Fin_ClaimingExpenses.Country=='大陆以外地区'">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="68">
                                            <div align="center">
                                                <div align="center">
                                                    <div align="center">
                                                        <aspxform:XLabel id="XLabel78" runat="server" text="市内交通费" ForeColor="Gray"></aspxform:XLabel>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="58">
                                            <div align="center">
                                                <div align="center">
                                                    <div align="center">
                                                        <div align="center">
                                                            <div align="center">
                                                                <div align="center">
                                                                    <div align="center">
                                                                        <aspxform:XLabel id="XLabel79" runat="server" text="机票费" ForeColor="Gray"></aspxform:XLabel>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="66">
                                            <div align="center">
                                                <div align="center">
                                                    <div align="center">
                                                        <div align="center">
                                                            <div align="center">
                                                                <aspxform:XLabel id="XLabel80" runat="server" text="车船费" ForeColor="Gray"></aspxform:XLabel>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="33">
                                            <div align="center">
                                                <div align="center">
                                                    <div align="center">
                                                        <div align="center">
                                                            <div align="center">
                                                                <div align="center">
                                                                    <div align="center">
                                                                        <aspxform:XLabel id="XLabel81" runat="server" text="住宿" ForeColor="Gray"></aspxform:XLabel>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="90">
                                            <div align="center">
                                                <div align="center">
                                                    <div align="center">
                                                        <div align="center">
                                                            <div align="center">
                                                                <div align="center">
                                                                    <aspxform:XLabel id="XLabel82" runat="server" text="住宿费" ForeColor="Gray"></aspxform:XLabel>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="59">
                                            <div align="center">
                                                <div align="center">
                                                    <div align="center">
                                                        <div align="center">
                                                            <div align="center">
                                                                <aspxform:XLabel id="XLabel83" runat="server" text="出差补助" ForeColor="Gray"></aspxform:XLabel>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="54">
                                            <p align="center">
                                                <aspxform:XLabel id="XLabel84" runat="server" text="超标金额" ForeColor="Gray"></aspxform:XLabel>
                                            </p>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="193">
                                            <div align="center">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel85" runat="server" text="超额理由" ForeColor="Gray"></aspxform:XLabel>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="87">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel14" runat="server" text="小计" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <div align="center">
                                                <div align="center">
                                                    <aspxform:XTextBox id="XTextBox91" runat="server" XDataBind="Fin_CE_TE_Info.Transportation" TextAlign="Right" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="100%"></aspxform:XTextBox>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <div align="center">
                                                <div align="center">
                                                    <div align="center">
                                                        <aspxform:XTextBox id="XTextBox92" runat="server" XDataBind="Fin_CE_TE_Info.Airfare" TextAlign="Right" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="100%"></aspxform:XTextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <div align="center">
                                                <aspxform:XTextBox id="XTextBox93" runat="server" XDataBind="Fin_CE_TE_Info.Fare" TextAlign="Right" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="100%"></aspxform:XTextBox>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <div align="center">
                                                <div align="center">
                                                    <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="Fin_CE_TE_Info.ZS_B" Text=" "></aspxform:XCheckBox>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox94" runat="server" XDataBind="Fin_CE_TE_Info.Accommodation" TextAlign="Right" Express="if(Fin_ClaimingExpenses.PersonType!='1',Fin_CE_TE_Info.ZS,'')" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" HiddenExpress="Fin_CE_TE_Info.ZS_B!=1" width="74px" Height="22px"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox95" runat="server" XDataBind="Fin_CE_TE_Info.ZS" TextAlign="Right" Express="javascript('DateDiff',Fin_CE_TE_Info.EndDate,Fin_CE_TE_Info.StarDate)*Fin_CE_TE_Info.ZS_Per" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" HiddenExpress="1" BackColor="#F0F0F0" BorderStyle="Dotted" ReadOnly="True" width="11px" Height="22px"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox96" runat="server" XDataBind="Fin_CE_TE_Info.BZ" TextAlign="Right" Express="javascript('DateDiff',Fin_CE_TE_Info.EndDate,Fin_CE_TE_Info.StarDate)*Fin_CE_TE_Info.BZ_Per" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="Fin_CE_TE_Info.ZS_B!=1" BackColor="#F0F0F0" BorderStyle="None" width="38px" DisableExpress="Global.StepName !='财务审核'"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox90" runat="server" XDataBind="Fin_CE_TE_Info.BZ_Per" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderStyle="Dotted" ReadOnly="True" width="9px"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox97" runat="server" XDataBind="Fin_CE_TE_Info.OverAmount" TextAlign="Right" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" ForeColor="Red" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox98" runat="server" XDataBind="Fin_CE_TE_Info.Reason" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" ForeColor="Red" width="185px"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="antiquewhite">
                                            <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="Fin_CE_TE_Info.Total" TextAlign="Right" Express="if(Fin_CE_TE_Info.Airfare=='',0,Fin_CE_TE_Info.Airfare)+if(Fin_CE_TE_Info.Fare=='',0,Fin_CE_TE_Info.Fare)+if(Fin_CE_TE_Info.OverAmount=='',0,Fin_CE_TE_Info.OverAmount)+if(Fin_CE_TE_Info.ZS_B==1,if(Fin_CE_TE_Info.BZ=='',0,Fin_CE_TE_Info.BZ),0)+if(Fin_CE_TE_Info.ZS_B==1,if(Fin_CE_TE_Info.Accommodation=='',0,Fin_CE_TE_Info.Accommodation),0)+if(Fin_CE_TE_Info.Transportation=='',0,Fin_CE_TE_Info.Transportation)" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="AntiqueWhite" BorderStyle="None" ReadOnly="True" width="100%" Format="type:currency;.2">0</aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d1dedf" height="23">
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d1dedf">
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d1dedf">
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d1dedf">
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d1dedf">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="Fin_ClaimingExpenses.Country=='大陆以外地区'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="132">
                            <div align="center">
                                <aspxform:XLabel id="XLabel16" runat="server" text="行程终点" Font-Size="Medium" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="23" width="67">
                            <p align="right">
                                &nbsp;&nbsp;<aspxform:XLabel id="XLabel18" runat="server" text="出发日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" width="209">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE.StarDate" BorderWidth="1px" BorderColor="Gainsboro" Width="120px" BackColor="White" ReadOnly="True" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" width="78">
                            <p align="right">
                                <aspxform:XLabel id="XLabel20" runat="server" text="出发地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" bgcolor="#f0f0f0" width="236">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="102">
                                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="Fin_CE_TE.City_Star" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="100px"></aspxform:XTextBox>
                                        </td>
                                        <td width="24">
                                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton3" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=2" DataMap="Col1->Fin_CE_TE.City_Star;Col2->Fin_CE_TE.ZS_per;Col3->Fin_CE_TE.BZ_per" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType,Col5->Fin_Applicant.Corporation"></aspxform:XCustomBrowserButton>
                                        </td>
                                        <td width="104">
                                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="Fin_CE_TE.C_Star" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" width="85px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="21">
                            <p align="right">
                                <aspxform:XLabel id="XLabel22" runat="server" text="到达日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE.EndDate" BorderWidth="1px" BorderColor="Gainsboro" Width="120px" BackColor="White" ReadOnly="True" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <div align="right">
                                <aspxform:XLabel id="XLabel36" runat="server" text="到达地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" bgcolor="#f0f0f0">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="102">
                                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="Fin_CE_TE.City_End" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="100px"></aspxform:XTextBox>
                                        </td>
                                        <td width="24">
                                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton4" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=2" DataMap="Col1->Fin_CE_TE.City_End" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType,Col5->Fin_Applicant.Corporation"></aspxform:XCustomBrowserButton>
                                        </td>
                                        <td width="105">
                                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="Fin_CE_TE.C_End" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" width="85px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="5">
                            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%" hiddenexpress="Fin_ClaimingExpenses.Country=='大陆以外地区'">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="62">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel23" runat="server" text="市内交通费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="64">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel30" runat="server" text="机票费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="70">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel44" runat="server" text="车船费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="32">
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="94">
                                            <div align="center">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel45" runat="server" text="住宿费" ForeColor="Gray"></aspxform:XLabel>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="58">
                                            <div align="center">
                                                <div align="center">
                                                    <div align="center">
                                                        <aspxform:XLabel id="XLabel34" runat="server" text="出差补助" ForeColor="Gray"></aspxform:XLabel>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="246">
                                            <div align="center">
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="85">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel40" runat="server" text="小计" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                                            <aspxform:XTextBox id="XTextBox53" runat="server" XDataBind="Fin_CE_TE.Transportation" TextAlign="Right" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="Fin_CE_TE.Airfare" TextAlign="Right" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox99" runat="server" XDataBind="Fin_CE_TE.Fare" TextAlign="Right" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="Fin_CE_TE.ZS_per" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderStyle="Dotted" ReadOnly="True" width="13px"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox100" runat="server" XDataBind="Fin_CE_TE.Accommodation" TextAlign="Right" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" Font-Bold="False" width="79px" DisableExpress="Fin_ClaimingExpenses.PersonType=='2'"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox101" runat="server" XDataBind="Fin_CE_TE.ZS" TextAlign="Right" Express="(javascript('DateDiff',Fin_CE_TE.EndDate,Fin_CE_TE.StarDate)+0.5)*Fin_CE_TE.ZS_per" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="11px"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox102" runat="server" XDataBind="Fin_CE_TE.BZ" TextAlign="Right" Express="if(Fin_ClaimingExpenses.PersonType=='1'||Fin_ClaimingExpenses.PersonType=='4'||Fin_ClaimingExpenses.PersonType=='5'||Fin_ClaimingExpenses.PersonType=='6'||Fin_ClaimingExpenses.PersonType=='7',(javascript('DateDiff',Fin_CE_TE.EndDate,Fin_CE_TE.StarDate)+0.5)*Fin_CE_TE.BZ_per,if(Fin_CE_TE.City_End==Fin_ClaimingExpenses.PermanentCity,(javascript('DateDiff',Fin_CE_TE.EndDate,Fin_CE_TE.StarDate)+0.5)*(Fin_CE_TE.ZS_per+Fin_CE_TE.BZ_per),0))" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Value ValueToDisplayText BackColor="#F0F0F0" BorderStyle="None" width="38px" DisableExpress="Global.StepName !='财务审核'"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox46" runat="server" XDataBind="Fin_CE_TE.BZ_per" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderStyle="Dotted" ReadOnly="True" width="7px" Height="22px"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="antiquewhite">
                                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="Fin_CE_TE.Total" TextAlign="Right" Express="if(Fin_CE_TE.Airfare=='',0,Fin_CE_TE.Airfare)+if(Fin_CE_TE.Fare=='',0,Fin_CE_TE.Fare)+if(Fin_CE_TE.Transportation=='',0,Fin_CE_TE.Transportation)+if(Fin_CE_TE.Accommodation=='',0,Fin_CE_TE.Accommodation)+if(Fin_CE_TE.BZ=='',0,Fin_CE_TE.BZ)" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="AntiqueWhite" BorderStyle="None" ReadOnly="True" width="100%" Format="type:currency;.2">0</aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="Fin_ClaimingExpenses.Country=='中国大陆'" dynamicarea="1,5">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="110">
                            <aspxform:XLabel id="XLabel37" runat="server" text="差旅报销明细" ForeColor="Black"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="71">
                            <font style="BACKGROUND-COLOR: #ffffff"></font></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="235">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="73">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="238" colspan="2">
                            <div align="right">
                                <div align="right">
                                    <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Width="80px" HiddenExpress="Global.StepName!='开始'" Height="20px" Text="添加行程" TableName="Fin_CE_TE_JW_Info" PrintOut="False"></aspxform:XAddBlockButton>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2">
                            <div align="right">
                                <div align="center">
                                    <aspxform:XGridLineNo id="XGridLineNo3" runat="server" XDataBind="var" BorderWidth="1px" BorderColor="Gainsboro" Width="85px" Font-Size="X-Large" BorderStyle="None" Height="100%" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24">
                            <div align="right">
                                <aspxform:XLabel id="XLabel38" runat="server" text="出发日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE_JW_Info.StarDate" BorderWidth="1px" BorderColor="Gainsboro" Width="120px" BackColor="White" ReadOnly="True" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator24" runat="server" DisableExpress="Fin_ClaimingExpenses.Country!='大陆以外地区'" Display="None" ErrorMessage="请填写出发国家的城市！" ControlToValidate="XTextBox23" ValidationGroup="Star">出发城市</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <p align="right">
                                <aspxform:XLabel id="XLabel39" runat="server" text="出发地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" bgcolor="#f0f0f0" colspan="2">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="33%">
                                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="Fin_CE_TE_JW_Info.City_Star" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="120px"></aspxform:XTextBox>
                                        </td>
                                        <td width="33%">
                                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton5" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=3" DataMap="Col1->Fin_CE_TE_JW_Info.City_Star" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType,Col5->Fin_Applicant.Corporation"></aspxform:XCustomBrowserButton>
                                        </td>
                                        <td width="34%">
                                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="Fin_CE_TE_JW_Info.C_Star" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" width="85px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="25">
                            <p align="right">
                                &nbsp;&nbsp;<aspxform:XLabel id="XLabel43" runat="server" text="离开日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker6" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE_JW_Info.EndDate" BorderWidth="1px" BorderColor="Gainsboro" Width="120px" BackColor="White" ReadOnly="True" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator25" runat="server" DisableExpress="Fin_ClaimingExpenses.Country!='大陆以外地区'" Display="None" ErrorMessage="请填写出发国家的城市！" ControlToValidate="XTextBox55" ValidationGroup="Star">到达城市</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator22" runat="server" DisableExpress="Fin_ClaimingExpenses.Country!='大陆以外地区'" Display="None" ErrorMessage="到达城市不能和出发城市相同！" ControlToValidate="XTextBox55" ValidationGroup="Star" Operator="NotEqual" ValueToCompareExpress="Fin_CE_TE_JW_Info.C_Star">城市相同</aspxform:XCompareValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <div align="right">
                                <aspxform:XLabel id="XLabel50" runat="server" text="到达地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" bgcolor="#f0f0f0" colspan="2">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="33%">
                                            <aspxform:XTextBox id="XTextBox58" runat="server" XDataBind="Fin_CE_TE_JW_Info.City_End" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="120px"></aspxform:XTextBox>
                                        </td>
                                        <td width="33%">
                                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton6" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=3" DataMap="Col1->Fin_CE_TE_JW_Info.City_End;Col2->Fin_CE_TE_JW_Info.ZS_Per;Col3->Fin_CE_TE_JW_Info.BZ_Per" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType,Col5->Fin_Applicant.Corporation"></aspxform:XCustomBrowserButton>
                                        </td>
                                        <td width="34%">
                                            <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="Fin_CE_TE_JW_Info.C_End" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" width="85px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="75" colspan="6">
                            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%" height="100%">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="39" colspan="3">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel74" runat="server" text="机票费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel86" runat="server" text="车船费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="24">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel87" runat="server" Width="13px" text="住宿" ForeColor="Gray" Height="28px"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel88" runat="server" text="住宿费" ForeColor="Gray"></aspxform:XLabel>
                                                <aspxform:XDropDownList id="XDropDownList13" runat="server" XDataBind="Fin_CE_TE_JW_Info.PersonNum" XDataSource>
                                                    <asp:ListItem Selected="True">单人</asp:ListItem>
                                                    <asp:ListItem>双人</asp:ListItem>
                                                </aspxform:XDropDownList>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" colspan="3">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel89" runat="server" text="出差补助" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24" width="47">
                                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="Fin_CE_TE_JW_Info.Airfare" TextAlign="Right" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="45px"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="Fin_CE_TE_JW_Info.ZS_Per" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" BorderStyle="Dotted" width="22px"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="Fin_CE_TE_JW_Info.BZ_Per" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" BorderStyle="Dotted" width="16px"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="101">
                                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_Air" Width="99px" Height="22px" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var1" onchange="javascript:XFormOnChange(this);" ValueColumn="Unit" DisplayColumn="Unit">
                                                <asp:ListItem>人民币</asp:ListItem>
                                                <asp:ListItem>美元</asp:ListItem>
                                                <asp:ListItem>欧元</asp:ListItem>
                                                <asp:ListItem>港币</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="47">
                                            <aspxform:XTextBox id="XTextBox56" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_Air" Express="var1" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" ReadOnly="True" width="45px" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox78" runat="server" XDataBind="ZS_Per_Person" Express='if(Fin_CE_TE_JW_Info.PersonNum =="双人",if(Fin_CE_TE_JW_Info.ZS_Per == 800.00,1200,if(Fin_CE_TE_JW_Info.ZS_Per == 1000.00,1600,if(Fin_CE_TE_JW_Info.ZS_Per == 600.00,1100,0))),Fin_CE_TE_JW_Info.ZS_Per)' BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" BorderStyle="Dotted" width="27px" Format="type:number;.2"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="var1" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderStyle="Dotted" width="7px" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="47">
                                            <aspxform:XTextBox id="XTextBox57" runat="server" XDataBind="Fin_CE_TE_JW_Info.Fare" TextAlign="Right" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="45px"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="92">
                                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_Fare" Width="90px" Height="22px" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var2" onchange="javascript:XFormOnChange(this);" ValueColumn="Unit" DisplayColumn="Unit">
                                                <asp:ListItem>未绑定</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="47">
                                            <aspxform:XTextBox id="XTextBox103" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_Fare" Express="var2" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" ReadOnly="True" width="45px" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="var2" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="18px" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <div align="center">
                                                <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="Fin_CE_TE_JW_Info.ZS_B" Text=" "></aspxform:XCheckBox>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="47">
                                            <aspxform:XTextBox id="XTextBox104" runat="server" XDataBind="Fin_CE_TE_JW_Info.Accommodation" TextAlign="Right" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0" width="45px" Format="type:currency;.2"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox105" runat="server" XDataBind="Fin_CE_TE_JW_Info.ZS" TextAlign="Right" Express="(javascript('DateDiff',Fin_CE_TE_JW_Info.EndDate,Fin_CE_TE_JW_Info.StarDate))*if(Fin_CE_TE_JW_Info.Unit_ZS=='人民币',ZS_Per_Person,ZS_Per_Person/Fin_CE_TE_JW_Info.Rate_ZS)" BorderWidth="1" BorderColor="Gainsboro" HiddenInput="False" HiddenExpress="1" BackColor="White" width="40px" Format="type:currency;.2"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="92">
                                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_ZS" Width="90px" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var3" onchange="javascript:XFormOnChange(this);" ValueColumn="Unit" DisplayColumn="Unit">
                                                <asp:ListItem>人民币</asp:ListItem>
                                                <asp:ListItem>美元</asp:ListItem>
                                                <asp:ListItem>欧元</asp:ListItem>
                                                <asp:ListItem>港币</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="47">
                                            <aspxform:XTextBox id="XTextBox106" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_ZS" Express="var3" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0" ReadOnly="True" width="45px" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="var3" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="18px" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox107" runat="server" XDataBind="Fin_CE_TE_JW_Info.BZ" TextAlign="Right" Express="(javascript('DateDiff',Fin_CE_TE_JW_Info.EndDate,Fin_CE_TE_JW_Info.StarDate))*Fin_CE_TE_JW_Info.BZ_Per" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B!=1" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="5px" Height="22px"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="11">
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="54">
                                            <aspxform:XDropDownList id="XDropDownList7" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_BZ" Express='if(Fin_Applicant.Corporation=="深圳微普特信息技术有限公司","美元","人民币")' Width="52px" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var8" onchange="javascript:XFormOnChange(this);" ValueColumn="Unit" DisplayColumn="Unit" Enabled="False">
                                                <asp:ListItem Selected="True">人民币</asp:ListItem>
                                                <asp:ListItem>美元</asp:ListItem>
                                                <asp:ListItem>欧元</asp:ListItem>
                                                <asp:ListItem>港币</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#f0f0f0" width="41">
                                            <aspxform:XTextBox id="XTextBox108" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_BZ" Express="var8" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0" ReadOnly="True" width="39px" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox66" runat="server" XDataBind="var8" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="18px" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" height="45" colspan="6">
                            <div align="center">
                                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%" height="100%">
                                    <tbody>
                                        <tr>
                                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="17" colspan="3">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel72" runat="server" text="超标金额" ForeColor="Gray"></aspxform:XLabel>
                                                </div>
                                            </td>
                                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="392">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel75" runat="server" text="超额理由" ForeColor="Gray"></aspxform:XLabel>
                                                </div>
                                            </td>
                                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="86">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel51" runat="server" text="小计" ForeColor="Gray"></aspxform:XLabel>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="87">
                                                <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="Fin_CE_TE_JW_Info.OverAmount" TextAlign="Right" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" ForeColor="Red" BorderStyle="None" width="82px"></aspxform:XTextBox>
                                            </td>
                                            <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="106">
                                                <aspxform:XDropDownList id="XDropDownList6" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_Over" Width="100%" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var4" onchange="javascript:XFormOnChange(this);" ValueColumn="Unit" DisplayColumn="Unit">
                                                    <asp:ListItem>人民币</asp:ListItem>
                                                    <asp:ListItem>美元</asp:ListItem>
                                                    <asp:ListItem>欧元</asp:ListItem>
                                                    <asp:ListItem>港币</asp:ListItem>
                                                </aspxform:XDropDownList>
                                            </td>
                                            <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="52">
                                                <div align="left">
                                                    <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_Over" Express="var4" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" width="45px" Format="type:number;.4"></aspxform:XTextBox>
                                                    <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="var4" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="1px" Format="type:number;.4"></aspxform:XTextBox>
                                                </div>
                                            </td>
                                            <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                                <div align="center">
                                                    <aspxform:XTextBox id="XTextBox70" runat="server" XDataBind="Fin_CE_TE_JW_Info.Reason" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" ForeColor="Red" width="100%"></aspxform:XTextBox>
                                                </div>
                                            </td>
                                            <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="antiquewhite">
                                                <div align="right">
                                                    <aspxform:XTextBox id="XTextBox59" runat="server" XDataBind="Fin_CE_TE_JW_Info.Total" TextAlign="Right" Express="if(Fin_CE_TE_JW_Info.Airfare=='',0,Fin_CE_TE_JW_Info.Airfare)*if(Fin_CE_TE_JW_Info.Airfare=='',0,Fin_CE_TE_JW_Info.Rate_Air)+if(Fin_CE_TE_JW_Info.Fare=='',0,Fin_CE_TE_JW_Info.Fare)*if(Fin_CE_TE_JW_Info.Fare=='',0,Fin_CE_TE_JW_Info.Rate_Fare)+if(Fin_CE_TE_JW_Info.ZS_B==1,if(Fin_CE_TE_JW_Info.Accommodation=='',0,Fin_CE_TE_JW_Info.Accommodation),0)*if(Fin_CE_TE_JW_Info.ZS_B==1,if(Fin_CE_TE_JW_Info.Accommodation=='',0,Fin_CE_TE_JW_Info.Rate_ZS),0)+if(Fin_CE_TE_JW_Info.ZS_B==1,Fin_CE_TE_JW_Info.BZ*Fin_CE_TE_JW_Info.Rate_BZ,0)+if(Fin_CE_TE_JW_Info.OverAmount=='',0,Fin_CE_TE_JW_Info.OverAmount)*if(Fin_CE_TE_JW_Info.OverAmount=='',0,Fin_CE_TE_JW_Info.Rate_Over)" BorderWidth="1" BorderColor="#DCDCDC" BackColor="AntiqueWhite" BorderStyle="None" ReadOnly="True" width="100%" Format="type:currency;.2">0</aspxform:XTextBox>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="2">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="Fin_ClaimingExpenses.Country=='中国大陆'">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="102">
                            <div align="right">
                                <div align="center">
                                    <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="Fin_CE_TE_JW.Rate" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="21px"></aspxform:XTextBox>
                                    <aspxform:XLabel id="XLabel55" runat="server" text="行程终点" Font-Size="Medium" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" width="71">
                            <div align="right">
                                <aspxform:XLabel id="XLabel58" runat="server" text="出发日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" width="238">
                            <aspxform:XDateTimePicker id="XDateTimePicker7" runat="server" XDataBind="Fin_CE_TE_JW.StarDate" BorderWidth="1" BorderColor="#DCDCDC" Width="120px" BackColor="White" BorderStyle="Groove"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" width="71">
                            <p align="right">
                                <aspxform:XLabel id="XLabel65" runat="server" text="出发地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" bgcolor="#f0f0f0" width="240">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="122">
                                            <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="Fin_CE_TE_JW.City_Star" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BackColor="White" BorderStyle="None" ReadOnly="True" width="120px"></aspxform:XTextBox>
                                        </td>
                                        <td width="24">
                                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton8" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=3" DataMap="Col1->Fin_CE_TE_JW.City_Star;Col2->Fin_CE_TE_JW.ZS_Per;Col3->Fin_CE_TE_JW.BZ_Per" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType,Col5->Fin_Applicant.Corporation"></aspxform:XCustomBrowserButton>
                                        </td>
                                        <td width="88">
                                            <aspxform:XTextBox id="XTextBox36" runat="server" XDataBind="Fin_CE_TE_JW.C_Star" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BackColor="White" width="85px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="26">
                            <p align="right">
                                <aspxform:XLabel id="XLabel62" runat="server" text="到达日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker9" runat="server" XDataBind="Fin_CE_TE_JW.EndDate" BorderWidth="1" BorderColor="#DCDCDC" Width="120px" BackColor="White" BorderStyle="Groove"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <div align="right">
                                <aspxform:XLabel id="XLabel66" runat="server" text="到达地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp;
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" bgcolor="#f0f0f0">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="122">
                                            <aspxform:XTextBox id="XTextBox71" runat="server" XDataBind="Fin_CE_TE_JW.City_End" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BackColor="White" BorderStyle="None" ReadOnly="True" width="120px"></aspxform:XTextBox>
                                        </td>
                                        <td width="24">
                                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton7" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=3" DataMap="Col1->Fin_CE_TE_JW.City_End" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType,Col5->Fin_Applicant.Corporation"></aspxform:XCustomBrowserButton>
                                        </td>
                                        <td width="107">
                                            <aspxform:XTextBox id="XTextBox72" runat="server" XDataBind="Fin_CE_TE_JW.C_End" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BackColor="White" width="85px"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="5">
                            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" colspan="3">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel92" runat="server" text="机票费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel93" runat="server" text="车船费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="4">
                                            <div align="center">
                                                <div align="center">
                                                </div>
                                            </div>
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel95" runat="server" text="住宿费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" colspan="3">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel96" runat="server" text="出差补助" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24" width="90">
                                            <aspxform:XTextBox id="XTextBox39" runat="server" XDataBind="Fin_CE_TE_JW.Airfare" TextAlign="Right" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BorderStyle="None" width="45px"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox85" runat="server" XDataBind="Fin_CE_TE_JW.ZS_Per" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderStyle="Dotted" width="11px"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox82" runat="server" XDataBind="Fin_CE_TE_JW.ZS" Express="(javascript('DateDiff',Fin_CE_TE_JW.EndDate,Fin_CE_TE_JW.StarDate)*Fin_CE_TE_JW.ZS_Per*Fin_CE_TE_JW.Rate)/Fin_CE_TE_JW.Rate_ZS" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BackColor="#F0F0F0" BorderStyle="Dotted" ReadOnly="True" width="14px"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox86" runat="server" XDataBind="Fin_CE_TE_JW.BZ_Per" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderStyle="Dotted" width="19px"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="67">
                                            <aspxform:XDropDownList id="XDropDownList8" runat="server" XDataBind="Fin_CE_TE_JW.Unit_Air" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var5" ValueColumn="Unit" DisplayColumn="Unit">
                                                <asp:ListItem>人民币</asp:ListItem>
                                                <asp:ListItem>美元</asp:ListItem>
                                                <asp:ListItem>欧元</asp:ListItem>
                                                <asp:ListItem>港币</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="63">
                                            <aspxform:XTextBox id="XTextBox77" runat="server" XDataBind="Fin_CE_TE_JW.Rate_Air" Express="var5" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" ReadOnly="True" width="45px" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="var5" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="18px" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="47">
                                            <aspxform:XTextBox id="XTextBox79" runat="server" XDataBind="Fin_CE_TE_JW.Fare" TextAlign="Right" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="45px"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="69">
                                            <div align="center">
                                                <aspxform:XDropDownList id="XDropDownList9" runat="server" XDataBind="Fin_CE_TE_JW.Unit_Fare" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var6" ValueColumn="Unit" DisplayColumn="Unit">
                                                    <asp:ListItem>人民币</asp:ListItem>
                                                    <asp:ListItem>美元</asp:ListItem>
                                                    <asp:ListItem>欧元</asp:ListItem>
                                                    <asp:ListItem>港币</asp:ListItem>
                                                </aspxform:XDropDownList>
                                            </div>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="63">
                                            <aspxform:XTextBox id="XTextBox80" runat="server" XDataBind="Fin_CE_TE_JW.Rate_Fare" Express="var6" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" ReadOnly="True" width="45px" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox41" runat="server" XDataBind="var6" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="18px" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="50" colspan="2">
                                            <div align="center">
                                            </div>
                                            <aspxform:XTextBox id="XTextBox81" runat="server" XDataBind="Fin_CE_TE_JW.Accommodation" TextAlign="Right" BorderWidth="1" BorderColor="#DCDCDC" Width="45px" DisableBehavior="ReadOnly" Format="type:currency;.2"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="81">
                                            <aspxform:XDropDownList id="XDropDownList10" runat="server" XDataBind="Fin_CE_TE_JW.Unit_ZS" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var7" ValueColumn="Unit" DisplayColumn="Unit">
                                                <asp:ListItem>人民币</asp:ListItem>
                                                <asp:ListItem>美元</asp:ListItem>
                                                <asp:ListItem>欧元</asp:ListItem>
                                                <asp:ListItem>港币</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="60">
                                            <aspxform:XTextBox id="XTextBox84" runat="server" XDataBind="Fin_CE_TE_JW.Rate_ZS" Express="var7" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Width="45px" HiddenInput="False" DisableBehavior="ReadOnly" BorderStyle="None" ReadOnly="True" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="var7" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="1px" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="16">
                                            <aspxform:XTextBox id="XTextBox87" runat="server" XDataBind="Fin_CE_TE_JW.BZ" TextAlign="Right" Express="(javascript('DateDiff',Fin_CE_TE_JW.EndDate,Fin_CE_TE_JW.StarDate)+1)*Fin_CE_TE_JW.BZ_Per" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress='Global.StepName  !="财务审核"' BackColor="#F0F0F0" BorderStyle="None" width="11px"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="58">
                                            <aspxform:XDropDownList id="XDropDownList11" runat="server" XDataBind="Fin_CE_TE_JW.Unit_BZ" Express='if(Fin_Applicant.Corporation=="深圳微普特信息技术有限公司","美元","人民币")' Width="52px" Height="21px" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var9" onchange="javascript:XFormOnChange(this);" ValueColumn="Unit" DisplayColumn="Unit" Enabled="False">
                                                <asp:ListItem Selected="True">人民币</asp:ListItem>
                                                <asp:ListItem>美元</asp:ListItem>
                                                <asp:ListItem>欧元</asp:ListItem>
                                                <asp:ListItem>港币</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#f0f0f0" width="38">
                                            <aspxform:XTextBox id="XTextBox88" runat="server" XDataBind="Fin_CE_TE_JW.Rate_BZ" Express="var9" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" ReadOnly="True" width="100%" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox67" runat="server" XDataBind="var9" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="18px" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" rowspan="2" colspan="10">
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="24" colspan="3">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel70" runat="server" text="小计" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="antiquewhite" height="24" colspan="3">
                                            <div align="center">
                                                <aspxform:XTextBox id="XTextBox75" runat="server" XDataBind="Fin_CE_TE_JW.Total" TextAlign="Right" Express="if(Fin_CE_TE_JW.Airfare=='',0,Fin_CE_TE_JW.Airfare)*if(Fin_CE_TE_JW.Airfare=='',0,Fin_CE_TE_JW.Rate_Air)+if(Fin_CE_TE_JW.Fare=='',0,Fin_CE_TE_JW.Fare)*if(Fin_CE_TE_JW.Fare=='',0,Fin_CE_TE_JW.Rate_Fare)+if(Fin_CE_TE_JW.Accommodation=='',0,Fin_CE_TE_JW.Accommodation)*if(Fin_CE_TE_JW.Accommodation=='',0,Fin_CE_TE_JW.Rate_ZS)+Fin_CE_TE_JW.BZ*Fin_CE_TE_JW.Rate_BZ" BorderWidth="1" BorderColor="#DCDCDC" BackColor="AntiqueWhite" BorderStyle="None" width="100%" Format="type:currency;.2">0</aspxform:XTextBox>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
                <tbody>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" width="110">
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel56" runat="server" text="附件" ForeColor="Gray"></aspxform:XLabel>
                            </span></font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="623">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="Fin_ClaimingExpenses.Attachment"></aspxform:XMSNAttachments>
                            <aspxform:XCompareValidator id="XCompareValidator20" runat="server" Display="None" ErrorMessage="超标金额不能小于零" ControlToValidate="XTextBox97" ValidationGroup="Star" Operator="GreaterThanEqual" ValueToCompare="0.01">超标金额大于零</aspxform:XCompareValidator>
                            </span></span></span></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" dynamicarea="2,1" datamap="SN->Fin_ClaimingExpenses_LoanInfo.LoanSN;Amount->Fin_ClaimingExpenses_LoanInfo.LoanAmount;Remain->Fin_ClaimingExpenses_LoanInfo.Remain;Reason->Fin_ClaimingExpenses_LoanInfo.Reason;Date->Fin_ClaimingExpenses_LoanInfo.Date;RunningAmount->Fin_ClaimingExpenses_LoanInfo.RunningAmount">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" colspan="7">
                            <font color="black" face="Arial">
                            <aspxform:XLabel id="XLabel64" runat="server" text="个人借款明细"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="vardakuan" Express="if(Fin_CE_TE_Total.Total=='',0.00,Fin_CE_TE_Total.Total)-if(Fin_ClaimingExpenses.LoanTotal=='',0.00,Fin_ClaimingExpenses.LoanTotal)" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BackColor="White" BorderStyle="None" ReadOnly="True" width="141px" Format="type:number;.2"></aspxform:XTextBox>
                            <div align="center">
                            </div>
                            </font></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="83">
                            <div align="right">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" width="30">
                            <div align="center">
                                <aspxform:XLabel id="XLabel57" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="105">
                            <div align="center">
                                <aspxform:XLabel id="XLabel59" runat="server" text="借款单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="80">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel60" runat="server" text="剩余借款" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="84">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel61" runat="server" text="在途审批金额" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="91">
                            <div align="center">
                                <aspxform:XLabel id="XLabel63" runat="server" text="剩余需冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="140">
                            <div align="center">
                                <aspxform:XLabel id="XLabel71" runat="server" text="事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="100">
                            <div align="center">
                                <aspxform:XLabel id="XLabel73" runat="server" text="预计还款报销日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel76" runat="server" text="本次冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="29">
                            <aspxform:XGridLineNo id="XGridLineNo5" runat="server" BorderWidth="1" BorderColor="#DCDCDC" Width="15px" Font-Bold="True">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox42" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanSN" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox43" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Remain" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.RunningAmount" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="88px" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox69" runat="server" XDataBind="varloan" Express="(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount)" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BackColor="White" BorderStyle="None" width="73px" Format="type:currency;.2"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanAmount" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Width="15px" HiddenInput="False" DisableBehavior="ReadOnly" HiddenExpress="1" BackColor="White" BorderStyle="None" ReadOnly="True" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox49" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Reason" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker12" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Date" BorderWidth="1" BorderColor="#DCDCDC" Width="96px" DisableExpress="1"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox68" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.OffsetAmount" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="100%" DisableExpress="(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount) ==0.00 " Format="type:currency;.2"></aspxform:XTextBox>
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
                            <aspxform:XTextBox id="XTextBox73" runat="server" XDataBind="Fin_ClaimingExpenses.LoanAmount" Express="sum(Fin_ClaimingExpenses_LoanInfo.Remain)" BorderWidth="1" BorderColor="#DCDCDC" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox123" runat="server" XDataBind="Fin_ClaimingExpenses.Amount_Running" Express="sum(Fin_ClaimingExpenses_LoanInfo.RunningAmount)" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <div align="center">
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                            <aspxform:XTextBox id="XTextBox124" runat="server" XDataBind="qq" Express="Fin_ClaimingExpenses.LoanAmount - Fin_ClaimingExpenses.Amount_Running" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <div align="right">
                                <aspxform:XLabel id="XLabel77" runat="server" text="合计" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="antiquewhite">
                            <aspxform:XTextBox id="XTextBox125" runat="server" XDataBind="Fin_ClaimingExpenses.LoanTotal" Express="sum(Fin_ClaimingExpenses_LoanInfo.OffsetAmount)" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="AntiqueWhite" BorderStyle="None" ReadOnly="True" width="100%" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="qq == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" height="24" width="145">
                            <aspxform:XLabel id="XLabel94" runat="server" Width="137px" text="请选择是否冲抵个人借款" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="587">
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="Fin_Applicant.PersonalLoan" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" DisableExpress="qq == 0" Display="None" ErrorMessage="您个人借款明细中有待冲抵的款项，请选择是否冲抵！" ControlToValidate="XRadioButtonList3" ValidationGroup="Star">请选择是否冲抵个人借款</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator21" runat="server" DisableExpress='Fin_Applicant.PersonalLoan !="是"' Display="None" ErrorMessage="您选择了冲抵个人借款,请填写冲抵金额" ControlToValidate="XTextBox125" ValidationGroup="Star" Height="11px" Type="Double" Operator="GreaterThan" ValueToCompare="0.01">本次冲抵金额</aspxform:XCompareValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress='Global.StepName !=""&amp;&amp;Global.StepName !="开始"'>
                <tbody>
                    <tr>
                        <td height="25" width="91" align="right">
                            <aspxform:XLabel id="XLabel102" runat="server" text="注意:" Font-Bold="True" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td width="643">
                            <aspxform:XLabel id="XLabel103" runat="server" Width="588px" text="①销售代理费单据②1万元以上的业务招待费单据③金额在2万元以上的其它单据需要总裁书面签批" Font-Size="Larger"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23" colspan="2">
                            <aspxform:XLabel id="XLabel104" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" Height="48px" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" BorderWidth="1" BorderColor="#dcdcdc" Width="100%" PrintOut="False" CssClass="AA"></aspxform:XSignTrace>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="26" valign="bottom" width="50" align="right">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" Width="80px" HiddenExpress="Global.StepName =='开始'" Height="20px" PageFooterFormat="提交人:________部门负责人:________初审人:________电子流检查:________总裁审批:________" PageHeaderFormat="\t"></aspxform:XPrintButton>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="NoPadding" valign="bottom" width="734" align="left">
                            <table border="0" cellspacing="0" cellpadding="0">
                                <tbody>
                                    <tr>
                                        <td height="24" width="406">
                                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" Width="618px" Height="24px" DataMap="MemberFullName->Company;Department->Fin_Applicant.Dept" ProcessBtnCssClass="a" SystemBtnCssClass="a" DorpDownListCssClass="b" PositionDisplayType="FullName"></aspxform:XProcessButtonList>
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
                            <aspxform:XLabel id="XLabel105" runat="server" text="是否邮件通知提交人" ForeColor="Red"></aspxform:XLabel>
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
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="开始时间不能为空！" ControlToValidate="XDateTimePicker4" ValidationGroup="Star">开始时间为空验证</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="结束日期不能为空！" ControlToValidate="XDateTimePicker1" ValidationGroup="Star">结束日期为空验证</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="开始时间不能为空！" ControlToValidate="XDateTimePicker2" ValidationGroup="Star">开始时间为空验证</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="结束日期不能为空！" ControlToValidate="XDateTimePicker3" ValidationGroup="Star">结束日期为空验证</aspxform:XRequiredFieldValidator>
            <aspxform:XCompareValidator id="XCompareValidator3" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="结束日期不能小于开始日期" ControlToValidate="XDateTimePicker1" ValidationGroup="Star" Operator="GreaterThanEqual" ValueToCompareExpress="Fin_CE_TE_Info.StarDate">结束日期不能小于开始日期</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator4" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="结束日期不能小于开始日期" ControlToValidate="XDateTimePicker3" ValidationGroup="Star" Operator="GreaterThanEqual" ControlToCompare="XDateTimePicker2">结束日期大于开始日期</aspxform:XCompareValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="开始地点不能为空！" ControlToValidate="XTextBox6" ValidationGroup="Star">开始地点验证</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" tabIndex="1" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="到达地点不能为空！" ControlToValidate="XTextBox10" ValidationGroup="Star">到达地点验证</aspxform:XRequiredFieldValidator>
            <aspxform:XRangeValidator id="XRangeValidator12" runat="server" Display="None" ErrorMessage="总金额必须大于0小于100万" ControlToValidate="XTextBox33" ValidationGroup="Star" Type="Double" MaximumValue="999999.99" MinimumValue="0.01">合计金额出错</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator11" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox88" ValidationGroup="Star" Type="Double" MaxValueExpress="var9+var9*0.05" MinValueExpress="var9-var9*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator10" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox84" ValidationGroup="Star" Type="Double" MaxValueExpress="var7+var7*0.05" MinValueExpress="var7-var7*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator9" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox80" ValidationGroup="Star" Type="Double" MaxValueExpress="var6+var6*0.05" MinValueExpress="var6-var6*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator8" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox77" ValidationGroup="Star" Type="Double" MaxValueExpress="var5+var5*0.05" MinValueExpress="var5-var5*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator7" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox24" ValidationGroup="Star" Type="Double" MaxValueExpress="var4+var4*0.05" MinValueExpress="var4-var4*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator6" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox108" ValidationGroup="Star" Type="Double" MaxValueExpress="var8+var8*0.05" MinValueExpress="var8-var8*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator5" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox106" ValidationGroup="Star" Type="Double" MaxValueExpress="var3+var3*0.05" MinValueExpress="var3-var3*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator4" runat="server" Width="26px" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox103" ValidationGroup="Star" Type="Double" MaxValueExpress="var2+var2*0.05" MinValueExpress="var2-var2*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator3" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox56" ValidationGroup="Star" Type="Double" MaxValueExpress="var1+var1*0.05" MinValueExpress="var1-var1*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XCompareValidator id="XCompareValidator16" runat="server" Display="None" ErrorMessage="冲抵金额超出了可冲抵的借款金额！" ControlToValidate="XTextBox68" ValidationGroup="Star" Type="Double" Operator="LessThanEqual" ValueToCompareExpress="varloan">每单冲抵验证</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator17" runat="server" Display="None" ErrorMessage="冲抵总额不能大于报销总额！" ControlToValidate="XTextBox125" ValidationGroup="Star" Type="Double" Operator="LessThanEqual" ControlToCompare="XTextBox33">冲抵总额大于报销总额</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator18" runat="server" Display="None" ErrorMessage="打款金额和冲账金额相加必须等于报销金额" ControlToValidate="XTextBox26" ValidationGroup="Dakuan" Type="Double" ValueToCompareExpress="vardakuan">打款冲账报销检验</aspxform:XCompareValidator>
            <table border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td height="14" width="234">
                        </td>
                        <td width="450">
                        </td>
                        <td width="48">
                        </td>
                    </tr>
                    <tr>
                        <td height="136" colspan="3">
                            <p>
                                <aspxform:XLabel id="XLabel106" runat="server" Font-Size="Medium" ForeColor="Red" Text="差旅报销注意事项:" PrintOut="False"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox126" runat="server" XDataBind="Company" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1" width="10px"></aspxform:XTextBox>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel113" runat="server" text="1. 提交后请在系统的“历史申请”中将此单打印作为报销单封面附于原始单据前转交至财务部审核。" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel116" runat="server" text="2. “代理人”为此次报销事项的经办人；“申请人”为最终责任人；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel117" runat="server" text="3. 若“个人借款明细”中的“剩余借款”大于0，请选择“预计还款/报销日期”最早的项目来进行冲抵；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XLabel id="XLabel118" runat="server" text="在“本次冲抵金额”中填写冲抵金额，此金额应小于或等于本次报销的金额；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;
                                <aspxform:XLabel id="XLabel119" runat="server" text="如不冲抵则无法报销；" PrintOut="False"></aspxform:XLabel>
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
