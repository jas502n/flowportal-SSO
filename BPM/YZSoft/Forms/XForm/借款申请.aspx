<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
    
     protected void Page_Load(object sender, EventArgs e)
        {
    
           XTextBox43.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
        }
    void XTextBox17_TextChanged(object sender, EventArgs e) {
    
    }

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
    <form runat="server" style="padding-right: 2px; padding-bottom: inherit; padding-left: 55px; padding-top: 2px">
        <!-- Insert content here -->
        <div align="center">
            <table style="BORDER-LEFT: medium none; BORDER-TOP: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
                <tbody>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
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
                                                    <aspxform:XLabel id="XLabel14" runat="server" Font-Bold="True" Font-Size="Medium" text="借款申请单" Font-Names="Tahoma"></aspxform:XLabel>
                                                </div>
                                            </div>
                                        </td>
                                        <td height="24" width="20%">
                                            <aspxform:XLabel id="XLabel16" runat="server" Font-Size="Small" Font-Names="Arial Black" XDataBind="Fin_Applicant.SN"></aspxform:XLabel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="25">
                                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="Fin_Applicant.SAP_SN" BorderStyle="Dotted" Min="0" Max="0" width="100px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="True"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="33" colspan="2">
                            <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="23" width="112">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial"> 
                            <div align="left">
                                <aspxform:XLabel id="_Location" runat="server" text="申请日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                            </font></span></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="264">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="Fin_Applicant.AppDate" BorderStyle="None" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="112">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel1" runat="server" text="申请单号" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="263">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="Fin_Applicant.SN" BorderStyle="None" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="2">
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="PerInfo" runat="server" text="借款人"></aspxform:XLabel>
                            </font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><font color="black">
                            <aspxform:XLabel id="XLabel2" runat="server" text="代理人"></aspxform:XLabel>
                            </font></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="23">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel3" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="Fin_Applicant.Applicant" BorderStyle="None" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                            <aspxform:XLabel id="XLabel4" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="Fin_Applicant.Sub_Name" BorderStyle="None" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel5" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="Fin_Applicant.Dept" BorderStyle="None" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel6" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="Fin_Applicant.Sub_Dept" BorderStyle="None" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" height="29" colspan="4">
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="Fin_Applicant.HRID" Min="0" Max="0" width="44px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="Fin_Applicant.Sub_HRID" Min="0" Max="0" width="44px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="Fin_Loan.Pay_HRID" Min="0" Max="0" width="44px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="True" Express="Fin_Applicant.HRID"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="Fin_Loan.Cash_Name" Min="0" Max="0" width="69px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="True"></aspxform:XTextBox>
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="v1" BorderWidth="1px" BorderColor="Gainsboro" ReadOnly="True" Express="Fin_Applicant.AppDate" HiddenExpress="1" XSubType="date" XType="datetime" onchange="javascript:XFormOnChange(this);" Width="136px"></aspxform:XDateTimePicker>
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="aa" HiddenExpress="1" XDataSource="TableName:Fin_Loan_Quota;Filter:HRID->Fin_Applicant.HRID" DisplayColumn="Quota" ValueColumn="Quota">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="cc" Min="0" Max="0" width="39px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" Express="aa-bb+dd" HiddenExpress="1" ValueToDisplayText Value></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="740">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" colspan="4">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="XLabel7" runat="server" text="借款明细"></aspxform:XLabel>
                            </font></span></span></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" width="104">
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial">
                            <aspxform:XLabel id="XLabel8" runat="server" text="借款金额" ForeColor="Gray"></aspxform:XLabel>
                            </font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="259">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="Fin_Loan.Amount" Min="0" Max="0" width="200px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel13" runat="server" text="*" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="102">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel10" runat="server" text="预计还款日期" ForeColor="Gray"></aspxform:XLabel>
                            </span></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="260">
                            <aspxform:XDateTimePicker id="XDateTimePicker4" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_Loan.Date" BorderWidth="1px" BorderColor="Gainsboro" ReadOnly="True" XSubType="date" XType="datetime" onchange="javascript:XFormOnChange(this);" Width="200px"></aspxform:XDateTimePicker>
                            <aspxform:XLabel id="XLabel15" runat="server" text="*" ForeColor="Red"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="33">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                            <aspxform:XLabel id="XLabel9" runat="server" text="借款金额(中文大写)" ForeColor="Gray"></aspxform:XLabel>
                            </span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" valign="bottom">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="Fin_Loan.Amount_EN" BorderStyle="None" Min="0" Max="0" width="202px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="#F0F0F0" ReadOnly="True" Express="javascript('tocapital',Fin_Loan.Amount)"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel17" runat="server" text="领款人" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="Fin_Loan.Pay_Name" BorderStyle="None" Min="0" Max="0" width="200px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" DisableBehavior="ReadOnly" ReadOnly="True" Express="Fin_Applicant.Applicant"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel18" runat="server" text="*" ForeColor="Red"></aspxform:XLabel>
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" HiddenExpress="Global.StepName!='单据填写'" Width="21px" DataMap="DisplayName->Fin_Loan.Pay_Name;HRID->Fin_Loan.Pay_HRID" PrintOut="False"></aspxform:XSelectUserButton>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel22" runat="server" text="超期还款事由" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="3">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="Fin_Loan.Date_Reason" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
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
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="Fin_Loan.Reason" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" ForeColor="Crimson" TextMode="MultiLine" Rows="4">出差借款,请填写出差地及出差天数
业务借款,请填写详细的事由</aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" width="109">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel56" runat="server" text="附件" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="622">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="Fin_Loan.Attachment"></aspxform:XMSNAttachments>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="!(Global.StepName=='登记'||Global.StepName=='复核'||Global.StepName=='财务记账')">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="113">
                            <aspxform:XLabel id="XLabel21" runat="server" text="所属公司" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="644">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="Fin_Applicant.Company" XDataSource="TableName:Fin_R_Company" DisplayColumn="Name" ValueColumn="Code">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XLabel id="XLabel19" runat="server" text="付款银行" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="Fin_Loan.Cash_No" XDataSource="TableName:Fin_R_Cash" DisplayColumn="Name" ValueColumn="No" DataMap="Name->Fin_Loan.Cash_Name">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XLabel id="XLabel20" runat="server" text="*" ForeColor="Red"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" width="109">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel23" runat="server" text="领款人账号" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="148">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="Fin_Loan.Bank_Personal" XDataSource="TableName:Fin_R_Account_PB;Filter:HRID->Fin_Loan.Pay_HRID" DisplayColumn="Account" ValueColumn="Account">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="41">
                            <aspxform:XLabel id="XLabel66" runat="server" text="开户行"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="127">
                            <aspxform:XTextBox id="XTextBox39" runat="server" XDataBind="Fin_Loan.App_Bank_Name" Min="0" Max="0" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" Width="119px">招商银行</aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="65">
                            <aspxform:XLabel id="XLabel67" runat="server" text="账号所属省"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79">
                            <aspxform:XTextBox id="XTextBox46" runat="server" XDataBind="Fin_Loan.App_Bank_Province" Min="0" Max="0" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" Width="70px">广东省</aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="65">
                            <aspxform:XLabel id="XLabel68" runat="server" text="账号所属市"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="79">
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="Fin_Loan.App_Bank_City" Min="0" Max="0" width="70px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False">深圳市</aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress="1" dynamicarea="2,1" deletelastrow="Denied">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" colspan="7">
                            <font color="black" face="Arial">
                            <aspxform:XLabel id="XLabel48" runat="server" text="个人借款明细"></aspxform:XLabel>
                            </font></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" width="27">
                            <div align="center">
                                <aspxform:XLabel id="XLabel30" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="100">
                            <div align="center">
                                <aspxform:XLabel id="XLabel37" runat="server" text="借款单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="69">
                            <div align="center">
                                <aspxform:XLabel id="XLabel38" runat="server" text="借款金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="88">
                            <div align="center">
                                <aspxform:XLabel id="XLabel39" runat="server" text="剩余借款" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="83">
                            <div align="center">
                                <aspxform:XLabel id="XLabel32" runat="server" text="在途金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="243">
                            <div align="center">
                                <aspxform:XLabel id="XLabel49" runat="server" text="事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="106">
                            <div align="center">
                                <aspxform:XLabel id="XLabel33" runat="server" text="预计还款报销日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="27">
                            <aspxform:XGridLineNo id="XGridLineNo5" runat="server" BorderWidth="1px" BorderColor="Gainsboro" XType="gridlineno" Width="24px" Enabled="False">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanSN" BorderStyle="None" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="White" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox41" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanAmount" BorderStyle="None" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="White" ReadOnly="True" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox42" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Remain" BorderStyle="None" Min="0" Max="0" width="73px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" ReadOnly="True" Format="type:currency;.2"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="m1" Min="0" Max="0" width="10px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" Express='if(Fin_ClaimingExpenses_LoanInfo.NodeName == "" ,0,Fin_ClaimingExpenses_LoanInfo.RunningAmount)' HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.NodeName" Min="0" Max="0" width="11px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.RunningAmount" BorderStyle="None" Min="0" Max="0" width="69px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" BackColor="White"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox43" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Reason" BorderStyle="None" Min="0" Max="0" width="222px" BorderWidth="1px" HiddenInput="False" DisableBehavior="ReadOnly" ReadOnly="True" TextMode="MultiLine" Height="24px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Date" BorderWidth="1" BorderColor="#DCDCDC" Width="96px"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="transparent" height="24">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" colspan="2">
                            <div align="right">
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="dd" Min="0" Max="0" width="20px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" Express="sum(m1)" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" colspan="2">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <div align="right">
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" dynamicarea="2,1" datamap="SN->Fin_ClaimingExpenses_LoanInfo.LoanSN;Amount->Fin_ClaimingExpenses_LoanInfo.LoanAmount;Remain->Fin_ClaimingExpenses_LoanInfo.Remain;Reason->Fin_ClaimingExpenses_LoanInfo.Reason;Date->Fin_ClaimingExpenses_LoanInfo.Date;RunningAmount->Fin_ClaimingExpenses_LoanInfo.RunningAmount">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" colspan="7">
                            <font color="black" face="Arial">
                            <aspxform:XLabel id="XLabel34" runat="server" text="个人借款明细"></aspxform:XLabel>
                            </font></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="28" width="26">
                            <div align="center">
                                <aspxform:XLabel id="XLabel35" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="98">
                            <div align="center">
                                <aspxform:XLabel id="XLabel36" runat="server" text="借款单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="98" align="center">
                            <aspxform:XLabel id="XLabel42" runat="server" text="借款金额" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="85">
                            <div align="center">
                                <aspxform:XLabel id="XLabel40" runat="server" text="剩余借款" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="92">
                            <div align="center">
                                <div align="center">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel41" runat="server" text="在途审批金额" ForeColor="Gray"></aspxform:XLabel>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="145">
                            <div align="center">
                                <aspxform:XLabel id="XLabel43" runat="server" text="事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="101">
                            <div align="center">
                                <aspxform:XLabel id="XLabel44" runat="server" text="预计还款报销日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="26">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Bold="True" BorderWidth="1" BorderColor="White" Width="15px">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo_ForQuota.LoanSN" BorderStyle="None" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="White" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo_ForQuota.LoanAmount" BorderStyle="None" Min="0" Max="0" width="81px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" BackColor="White" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo_ForQuota.Remain" BorderStyle="None" Min="0" Max="0" width="82px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" ReadOnly="True" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo_ForQuota.RunningAmount" BorderStyle="None" Min="0" Max="0" width="88px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" DisableBehavior="ReadOnly" BackColor="White" ReadOnly="True" Format="type:currency;.2" Height="22px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo_ForQuota.Reason" BorderStyle="None" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BackColor="White" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo_ForQuota.Date" BorderWidth="1" BorderColor="#DCDCDC" Width="96px" DisableExpress="1"></aspxform:XDateTimePicker>
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
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="bb" Min="0" Max="0" width="58px" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" Express="sum(Fin_ClaimingExpenses_LoanInfo_ForQuota.Remain)" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <div align="right">
                                <aspxform:XLabel id="XLabel51" runat="server" text="合计" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738" hiddenexpress='Global.StepName !=""&amp;&amp;Global.StepName !="开始"'>
                <tbody>
                    <tr>
                        <td height="25" width="91" align="right">
                            <aspxform:XLabel id="XLabel77" runat="server" Font-Bold="True" text="注意:" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td width="643">
                            <aspxform:XLabel id="XLabel94" runat="server" Font-Size="Larger" text="①销售代理费单据②1万元以上的业务招待费单据③金额在2万元以上的其它单据需要总裁书面签批" Width="588px"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="738">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23" colspan="2">
                                <aspxform:XLabel id="XLabel31" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                                <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" PrintOut="False" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32" colspan="2">
                                <aspxform:XSignTrace id="XSignTrace2" runat="server" BorderWidth="1" BorderColor="#dcdcdc" Width="100%" CssClass="AA"></aspxform:XSignTrace>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="26" valign="bottom" width="201" align="right">
                                <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress="Global.StepName =='单据填写'" Width="80px" Height="20px" PageHeaderFormat="\t" PageFooterFormat="提交人:________部门负责人:________初审人:________电子流检查:________总裁审批:________"></aspxform:XPrintButton>
                            </td>
                            <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="533" align="left">
                                <table cellspacing="0" cellpadding="0" hiddenexpress="Global.StepName =='财务记账'">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->Fin_Applicant.Dept" ConsignAreaBorderColor="Gainsboro" ConsignAreaHeaderBackColor="245, 245, 220"></aspxform:XProcessButtonList>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </p>
            <p>
                <aspxform:XCompareValidator id="XCompareValidator2" runat="server" ValueToCompareExpress="cc" Type="Double" Operator="LessThanEqual" ValidationGroup="Star" ControlToValidate="XTextBox12" ErrorMessage="借款金额必须小于限额！" Display="None">借款大于限额验证</aspxform:XCompareValidator>
                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ValidationGroup="Return" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写退回意见！" Display="None">退回重填验证</aspxform:XRequiredFieldValidator>
                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ValidationGroup="Reject" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写拒绝理由！" Display="None">拒绝验证</aspxform:XRequiredFieldValidator>
                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox12" ErrorMessage=" 请填写借款金额！" Display="None">借款金额空验证</aspxform:XRequiredFieldValidator>
                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ValidationGroup="Star" ControlToValidate="XDateTimePicker4" ErrorMessage=" 请填写预计还款日期！" Display="None">预计还款日期空验证</aspxform:XRequiredFieldValidator>
                <aspxform:XCompareValidator id="XCompareValidator1" runat="server" Type="Double" Operator="GreaterThan" ValidationGroup="Star" ControlToValidate="XTextBox12" ErrorMessage="借款金额必须大于0！" Display="None" ValueToCompare="0">借款小于0验证</aspxform:XCompareValidator>
                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox15" ErrorMessage="请填写借款事由！" Display="None">借款事由</aspxform:XRequiredFieldValidator>
                <aspxform:XCompareValidator id="XCompareValidator3" runat="server" Operator="GreaterThan" ValidationGroup="Star" ControlToValidate="XDateTimePicker4" ErrorMessage="预计还款报销日期不能小于申请日期！" ControlToCompare="XDateTimePicker1"></aspxform:XCompareValidator>
                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" DisableExpress="javascript('DateDiff',Fin_Loan.Date,Fin_Applicant.AppDate)<30" ValidationGroup="Star" ControlToValidate="XTextBox13" ErrorMessage="请填写预计还款报销日期超出一个月的事由！" Display="None">超期事由</aspxform:XRequiredFieldValidator>
            </p>
            <table border="0" cellspacing="0" cellpadding="0" width="738">
                <tbody>
                    <tr>
                        <td height="16" width="699">
                        </td>
                        <td width="15">
                        </td>
                        <td width="44">
                        </td>
                    </tr>
                    <tr>
                        <td height="162" colspan="3">
                            <p>
                                <aspxform:XLabel id="XLabel12" runat="server" Font-Size="Medium" text="借款注意事项:" ForeColor="Red" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel24" runat="server" text="1. 提交后请在系统的“历史申请”中将此单打印交于财务部出纳处，出纳将以现金或银行付款方式支付您的借款。" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel29" runat="server" text="2.  加“*”项为必填项目，“借款事由”为必填项目；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel25" runat="server" text="3. “代理人”为借款事项的经办人，不作为“借款人”，“借款人”为最终责任人；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel26" runat="server" text="4. “预计还款日期”应为从借款日起一个月内的某一天，该笔借款请在该日期前还款，如超期未还，" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XLabel id="XLabel27" runat="server" text="将被视为逾期借款，按公司制度处理；因客观原因“预计还款日期”将超出一个月的，" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;&nbsp; 
                                <aspxform:XLabel id="XLabel28" runat="server" text="   请在“超期还款事由”填写原因，否则无法借款；" PrintOut="False"></aspxform:XLabel>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
