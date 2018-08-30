<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
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
function tocapital(source)
{
     if(!source) source = 0;
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
            aDate = sDate1.split("-") ;
            oDate1 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0]); //转换为12-18-2002格式
            aDate = sDate2.split("-") ;
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
TD.header {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BACKGROUND: url(~/image/logo.gif) no-repeat
}
INPUT {
	HEIGHT: 20px
}
INPUT.UL {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #33ff33 1px solid
}
.B {
	WIDTH: 80px; hight: 20px:
}
.D {
	hight: 18px
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
    <style type="text/css" href="~/Style/Skyworth.css" rel="stylesheet"></style>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <table style="BORDER-LEFT: medium none; BORDER-TOP: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
            <tbody>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
            <tbody>
                <tr>
                    <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="NoPadding" height="49" width="764" colspan="2">
                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                            <tbody>
                                <tr>
                                    <td rowspan="2" width="20%">
                                        <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                                    </td>
                                    <td rowspan="2">
                                        <div align="center">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel14" runat="server" Font-Names="Tahoma" text="补借款申请单" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                                            </div>
                                        </div>
                                    </td>
                                    <td height="24" width="20%">
                                        <aspxform:XLabel id="XLabel16" runat="server" Font-Names="Arial Black" Font-Size="X-Small" XDataBind="Fin_Applicant.SN"></aspxform:XLabel>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="25">
                                        <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="Fin_Applicant.SAP_SN" BorderColor="#DCDCDC" BorderWidth="1" width="100%" HiddenInput="True"></aspxform:XTextBox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="33" colspan="2">
                        <div align="center">
                        </div>
                    </td>
                </tr>
                <tr>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="23" width="112">
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial">
                        <aspxform:XLabel id="_Location" runat="server" text="申请日期" ForeColor="Gray"></aspxform:XLabel>
                        </font></span></span></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="264">
                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="Fin_Applicant.AppDate" BorderColor="#DCDCDC" BorderWidth="1" width="100%" DisableBehavior="ReadOnly" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="112">
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                        <aspxform:XLabel id="XLabel1" runat="server" text="申请单号" ForeColor="Gray"></aspxform:XLabel>
                        </span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="263">
                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="Fin_Applicant.SN" BorderColor="#DCDCDC" BorderWidth="1" width="100%" DisableBehavior="ReadOnly" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#e0efe6" height="24" colspan="2">
                        <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                        <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" DataMap="DisplayName->Fin_Applicant.Applicant;Department->Fin_Applicant.Dept;HRID->Fin_Applicant.HRID" Width="80px" Text="选择借款人"></aspxform:XSelectUserButton>
                        </font></span></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#e0efe6" colspan="2">
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><font color="black">
                        <aspxform:XLabel id="XLabel2" runat="server" text="代理人"></aspxform:XLabel>
                        </font></span></td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                        <aspxform:XLabel id="XLabel3" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                        </span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="Fin_Applicant.Applicant" BorderColor="#DCDCDC" BorderWidth="1" width="100%" DisableBehavior="ReadOnly" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                        <aspxform:XLabel id="XLabel4" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                        </span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="Fin_Applicant.Sub_Name" BorderColor="#DCDCDC" BorderWidth="1" width="100%" DisableBehavior="ReadOnly" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                        <aspxform:XLabel id="XLabel5" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="Fin_Applicant.Dept" BorderColor="#DCDCDC" BorderWidth="1" width="100%" DisableBehavior="ReadOnly" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <aspxform:XLabel id="XLabel6" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="Fin_Applicant.Sub_Dept" BorderColor="#DCDCDC" BorderWidth="1" width="100%" DisableBehavior="ReadOnly" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" height="36" colspan="4">
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="Fin_Applicant.HRID" BorderColor="Gainsboro" BorderWidth="1px" width="44px" HiddenInput="True" Max="0" Min="0"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="Fin_Applicant.Sub_HRID" BorderColor="Gainsboro" BorderWidth="1px" width="44px" HiddenInput="True" Max="0" Min="0"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="Fin_Loan.Pay_HRID" BorderColor="Gainsboro" BorderWidth="1px" width="44px" HiddenInput="True" Max="0" Min="0" Express="Fin_Applicant.HRID"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="Fin_Loan.Cash_Name" BorderColor="Gainsboro" BorderWidth="1px" width="69px" HiddenInput="True" Max="0" Min="0"></aspxform:XTextBox>
                        <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_Applicant.AppDate" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" Width="24px" XSubType="date" XType="datetime" onchange="javascript:XFormOnChange(this);" HiddenExpress="1"></aspxform:XDateTimePicker>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="4">
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                        <aspxform:XLabel id="XLabel7" runat="server" text="借款明细"></aspxform:XLabel>
                        </font></span></span></span></td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" width="112">
                        <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial">
                        <aspxform:XLabel id="XLabel8" runat="server" text="借款金额" ForeColor="Gray"></aspxform:XLabel>
                        </font></span></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="264">
                        <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="Fin_Loan.Amount" BorderColor="Gainsboro" BorderWidth="1px" width="200px" HiddenInput="False" DisableBehavior="ReadOnly" Max="0" Min="0" BorderStyle="Groove"></aspxform:XTextBox>
                        <aspxform:XLabel id="XLabel13" runat="server" text="*" ForeColor="Red"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="110">
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                        <aspxform:XLabel id="XLabel10" runat="server" text="预计还款报销日期" ForeColor="Gray"></aspxform:XLabel>
                        </span></span></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="265">
                        <aspxform:XDateTimePicker id="XDateTimePicker4" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_Loan.Date" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" BorderStyle="Groove" Width="200px" XSubType="date" XType="datetime" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                        <aspxform:XLabel id="XLabel15" runat="server" text="*" ForeColor="Red"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="25">
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                        <aspxform:XLabel id="XLabel9" runat="server" text="借款金额(中文大写)" ForeColor="Gray"></aspxform:XLabel>
                        </span></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" valign="bottom">
                        <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="Fin_Loan.Amount_EN" BorderColor="#DCDCDC" BorderWidth="1" width="100%" DisableBehavior="ReadOnly" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" Express="javascript('tocapital',Fin_Loan.Amount)"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <aspxform:XLabel id="XLabel17" runat="server" text="领款人" ForeColor="Gray"></aspxform:XLabel>
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="Fin_Loan.Pay_Name" BorderColor="Gainsboro" BorderWidth="1px" width="200px" HiddenInput="False" DisableBehavior="ReadOnly" Max="0" Min="0" ReadOnly="True" BorderStyle="None" Express="Fin_Applicant.Applicant"></aspxform:XTextBox>
                        <aspxform:XLabel id="XLabel18" runat="server" text="*" ForeColor="Red"></aspxform:XLabel>
                        <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" DataMap="DisplayName->Fin_Loan.Pay_Name;HRID->Fin_Loan.Pay_HRID" Width="21px" PrintOut="False"></aspxform:XSelectUserButton>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                        <aspxform:XLabel id="XLabel22" runat="server" text="超出一个月报销事由" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="3">
                        <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="Fin_Loan.Date_Reason" BorderColor="#DCDCDC" BorderWidth="1" width="100%" BorderStyle="Groove"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" colspan="4">
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                        <aspxform:XLabel id="XLabel11" runat="server" text="借款事由" ForeColor="Gray"></aspxform:XLabel>
                        </span><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="71" colspan="4">
                        <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="Fin_Loan.Reason" BorderColor="#DCDCDC" BorderWidth="1" width="100%" DisableBehavior="ReadOnly" BorderStyle="Groove" Rows="4" TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#ffffff" height="36" colspan="4">
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764" hiddenexpress="!(Global.StepName=='登记'||Global.StepName=='复核'||Global.StepName=='财务记账')">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="113">
                        <aspxform:XLabel id="XLabel21" runat="server" text="所属公司" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="644">
                        <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="Fin_Applicant.Company">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                        <aspxform:XLabel id="XLabel19" runat="server" text="付款银行" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="Fin_Loan.Cash_No" DataMap="Name->Fin_Loan.Cash_Name" XDataSource="TableName:Fin_R_Cash" DisplayColumn="Name" ValueColumn="No">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                        <aspxform:XLabel id="XLabel20" runat="server" text="*" ForeColor="Red"></aspxform:XLabel>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764" hiddenexpress="!(Global.StepName=='单据填写'||Global.StepName=='登记')">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="113">
                        <aspxform:XLabel id="XLabel23" runat="server" text="领款人账号" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="644">
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="Fin_Loan.Bank_Personal" XDataSource="TableName:Fin_R_Account_PB;Filter:HRID->Fin_Loan.Pay_HRID" DisplayColumn="Account" ValueColumn="Account">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="764">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23" colspan="2">
                        <font color="black">审批信息</font></td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="16" colspan="2">
                        <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" BorderStyle="Groove" Rows="3" TextMode="MultiLine"></aspxform:XCommentsTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                        <aspxform:XSignTrace id="XSignTrace1" runat="server" BorderColor="Gainsboro" BorderWidth="1" CssClass="AA"></aspxform:XSignTrace>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="27" valign="bottom" width="153" align="right">
                        <aspxform:XPrintButton id="XPrintButton2" runat="server" Width="80px" Height="20px"></aspxform:XPrintButton>
                    </td>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="607" align="middle">
                        <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->Fin_Applicant.Dept" ProcessBtnCssClass="B" SystemBtnCssClass="B" DorpDownListCssClass="D" CloseBtnCssClass="B" ConsignAreaBorderStyle="NotSet"></aspxform:XProcessButtonList>
                    </td>
                </tr>
            </tbody>
        </table>
        <p>
        </p>
        <p>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请填写退回意见！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Return">退回重填验证</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请填写拒绝理由！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Reject">拒绝验证</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage=" 请填写借款金额！" ControlToValidate="XTextBox12" ValidationGroup="Star">借款金额空验证</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage=" 请填写预计还款日期！" ControlToValidate="XDateTimePicker4" ValidationGroup="Star">预计还款日期空验证</aspxform:XRequiredFieldValidator>
            <aspxform:XCompareValidator id="XCompareValidator1" runat="server" Display="None" ErrorMessage="借款金额必须大于0！" ControlToValidate="XTextBox12" ValidationGroup="Star" Type="Double" Operator="GreaterThan" ValueToCompare="0">借款小于0验证</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator2" runat="server" Display="None" ErrorMessage="借款金额必须小于100万！" ControlToValidate="XTextBox12" ValidationGroup="Star" Type="Double" Operator="LessThan" ValueToCompare="1000000">借款大于100万验证</aspxform:XCompareValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请填写借款事由！" ControlToValidate="XTextBox15" ValidationGroup="Star">借款事由</aspxform:XRequiredFieldValidator>
            <aspxform:XCompareValidator id="XCompareValidator3" runat="server" Display="None" ErrorMessage="预计还款报销日期不能小于申请日期！" ControlToValidate="XDateTimePicker4" ValidationGroup="Star" Operator="GreaterThan" ControlToCompare="XDateTimePicker1">预计还款日期不能小于当前时期</aspxform:XCompareValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="请填写预计还款报销日期超出一个月的事由！" ControlToValidate="XTextBox13" ValidationGroup="Star" DisableExpress="javascript('DateDiff',Fin_Loan.Date,Fin_Applicant.AppDate)<32">超期事由</aspxform:XRequiredFieldValidator>
        </p>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="764">
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
    </form>
</body>
</html>
