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
    <form runat="server" style="padding-right: 2px; padding-bottom: inherit; padding-left: 55px; padding-top: 2px">
        <!-- Insert content here -->
        <div align="center">
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
                                    <aspxform:XLabel id="XLabel11" runat="server" Font-Size="Medium" text="差旅费用报销单" Font-Names="Tahoma" Font-Bold="True"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td width="20%">
                            <aspxform:XLabel id="XLabel59" runat="server" Font-Size="Small" Font-Names="Arial Black" XDataBind="Fin_Applicant.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" colspan="3" height="33">
                            <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XLabel id="XLabel67" runat="server" text="附件共"></aspxform:XLabel>
                                <aspxform:XLabel id="XLabel68" runat="server" Width="30px"></aspxform:XLabel>
                                <aspxform:XLabel id="XLabel69" runat="server" text="页"></aspxform:XLabel>
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
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="108" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="_Location" runat="server" text="申请日期" ForeColor="Gray"></aspxform:XLabel>
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" size="2"></font></span></span></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="255" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="Fin_Applicant.AppDate" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="108" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel1" runat="server" text="申请单号" ForeColor="Gray"></aspxform:XLabel>
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="254" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="Fin_Applicant.SN" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2" height="19">
                            <aspxform:XLabel id="PerInfo" runat="server" text="申请人"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator26" runat="server" DisableExpress='Fin_Applicant.HRIDLevel ==80 || Fin_Applicant.Dept=="总裁办" || Fin_Applicant.HRID =="SDT00275"' Display="None" ErrorMessage="根据财务差旅费用报销规定，请选择出差申请已批准单据，谢谢!" ControlToValidate="XTextBox113" ValidationGroup="Star">差旅预审批</aspxform:XRequiredFieldValidator>
                            <span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" color="black" size="2"></font></span></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2">
                            <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><font color="black">
                            <aspxform:XLabel id="XLabel2" runat="server" text="代理人"></aspxform:XLabel>
                            </font></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel24" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox121" runat="server" XDataBind="Fin_Applicant.HRIDLevel" width="43px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenExpress="0" Height="23px" HiddenInput="True"></aspxform:XTextBox>
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="Fin_Applicant.Applicant" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel26" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                            <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="Fin_Applicant.Sub_Name" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel25" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="Fin_Applicant.Dept" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel27" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="Fin_Applicant.Sub_Dept" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" align="middle" bgcolor="#ffffff" colspan="2" height="25">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="Fin_Applicant.HRID" BorderStyle="Dotted" width="21px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="Fin_Applicant.Sub_HRID" BorderStyle="Dotted" width="29px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Height="22px" HiddenInput="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="Fin_ClaimingExpenses.PersonType" BorderStyle="Dotted" width="27px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenExpress="1" Height="22px" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="Fin_ClaimingExpenses.Bank_Name" BorderStyle="Dotted" width="23px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="Fin_ClaimingExpenses.NR" BorderStyle="Dotted" width="21px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox65" runat="server" XDataBind="Fin_ClaimingExpenses.PayTotal" BackColor="Bisque" BorderStyle="None" ReadOnly="True" width="25px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="if(Fin_ClaimingExpenses.Country=='中国大陆',sum(Fin_CE_TE_Info.Total)+Fin_CE_TE.Total,sum(Fin_CE_TE_JW_Info.Total)+Fin_CE_TE_JW.Total)" TextAlign="Right"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox74" runat="server" XDataBind="Fin_ClaimingExpenses.PermanentCity" width="29px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenExpress="1" Height="22px" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator23" runat="server" Display="None" ErrorMessage="请选择是否为质量费用报销！" ControlToValidate="XRadioButtonList4" ValidationGroup="Star">质量费用</aspxform:XRequiredFieldValidator>
                            <aspxform:XRangeValidator id="XRangeValidator1" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="市内交通费不能大于160！" ControlToValidate="XTextBox91" ValidationGroup="Star" Type="Double" MaximumValue="160" MinimumValue="0">市内交通费</aspxform:XRangeValidator>
                            <aspxform:XRangeValidator id="XRangeValidator2" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="市内交通费不能大于160！" ControlToValidate="XTextBox53" ValidationGroup="Star" Type="Double" MaximumValue="160" MinimumValue="0">市内交通费</aspxform:XRangeValidator>
                        </td>
                        <td>
                            <aspxform:XCompareValidator id="XCompareValidator8" runat="server" DisableExpress="Fin_ClaimingExpenses.PersonType!='1'&amp;&amp;Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="行程中住宿费超标了" ControlToValidate="XTextBox94" ValidationGroup="Star" Type="Double" Operator="LessThanEqual" ValueToCompareExpress="Fin_CE_TE_Info.ZS">住宿费超标验证</aspxform:XCompareValidator>
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" DisableExpress="Fin_CE_TE_Info.OverAmount==''||Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="请填写超标的理由！" ControlToValidate="XTextBox29" ValidationGroup="Star">超额理由</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator10" runat="server" DisableExpress="Fin_ClaimingExpenses.PersonType!='1'&amp;&amp;Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="行程终点住宿费超标了！" ControlToValidate="XTextBox100" ValidationGroup="Star" Type="Double" Operator="LessThanEqual" ValueToCompareExpress="Fin_CE_TE.ZS">住宿费超标验证</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator5" runat="server" Display="None" ErrorMessage="日期不能大于申请日期！" ControlToValidate="XDateTimePicker4" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">出发日期</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator6" runat="server" Display="None" ErrorMessage="日期不能大于申请日期！" ControlToValidate="XDateTimePicker1" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">到达日期</aspxform:XCompareValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table cellspacing="0" cellpadding="0" width="738" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: black 1px solid" align="left" width="593" bgcolor="#d1dedf" height="20">
                            <aspxform:XLabel id="XLabel101" runat="server" Font-Size="X-Small" text="差旅申请信息" Font-Bold="True" ForeColor="Navy"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox112" runat="server" XDataBind="IsFinish" width="22px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenExpress="1" HiddenInput="False">1</aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox116" runat="server" XDataBind="IsType" width="21px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenExpress="1" HiddenInput="False">1</aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox117" runat="server" XDataBind="IsState" width="20px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenExpress="1" HiddenInput="False">1</aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox122" runat="server" XDataBind="Fin_Applicant.Travel_Total" width="20px" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1" HiddenInput="True" Express="Fin_CE_TE_Total.Total"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: black 1px solid" width="138" bgcolor="#d1dedf">
                            <aspxform:XDataBrowserButton id="XDataBrowserButton2" runat="server" Width="150px" HiddenExpress="Global.StepName!='开始'" DisplayColumns="AppSN:申请单号;TaskID:电子流ID;EmpName:发起人;FromDate:开始日期;ToDate:结束日期;Note:原因" PopupWndHeight="500" PopupWndY="100" PopupWndX="100" PopupWndWidth="800" UseSubmitBehavior="False" XDataSource="DataSource:DigitalHR;TableName:V_HR_GongGan_Chailv;Filter:EmpID->Fin_Applicant.HRID,Type->IsType,isFinish->IsFinish,State->IsState" NavigateUrl="~\FormSupport\DataBrowser.aspx" DataMap="AppSN->Fin_ChaiLv_YuShenQing.ChaiLv_SN;Note->Fin_ChaiLv_YuShenQing.ChaiLv_Note;TaskID->Fin_ChaiLv_YuShenQing.ChaiLv_taskid;Cost->Fin_ChaiLv_YuShenQing.ChaiLv_Cost;Address->Fin_ChaiLv_YuShenQing.ChaiLv_Address;AppDate->Fin_ChaiLv_YuShenQing.ChaiLv_AppDate;ToDate->Fin_ChaiLv_YuShenQing.ChaiLv_ToDate;FromDate->Fin_ChaiLv_YuShenQing.ChaiLv_FromDate;Vehicle->Fin_ChaiLv_YuShenQing.ChaiLv_Vehicle" Text="导入出差申请单据信息"></aspxform:XDataBrowserButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="105" height="39">
                            <div align="center">
                                <aspxform:XLabel id="XLabel107" runat="server" text="申请单号" Font-Bold="True"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox119" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_AppDate" width="5px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenExpress="1" HiddenInput="False"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="82">
                            <div align="center">
                                <aspxform:XLabel id="XLabel108" runat="server" text="出差地点" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="172">
                            <div align="center">
                                <aspxform:XLabel id="XLabel109" runat="server" text="出差原因" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="120">
                            <div align="center">
                                <aspxform:XLabel id="XLabel110" runat="server" text="出差开始日期" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="120">
                            <div align="center">
                                <aspxform:XLabel id="XLabel111" runat="server" text="出差结束日期" Font-Bold="True"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox111" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_taskid" width="5px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenExpress="1" HiddenInput="False"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" align="middle" width="62">
                            <aspxform:XLabel id="XLabel100" runat="server" text="交通工具" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="54">
                            <div align="center">
                                <aspxform:XLabel id="XLabel112" runat="server" text="预计费用" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                            <aspxform:XTextBox id="XTextBox113" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_SN" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="97px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox114" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_Address" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="80px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox115" style="OVERFLOW: hidden" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_Note" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="170px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Height="18px" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XDateTimePicker id="XDateTimePicker10" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_FromDate" Width="118px" BackColor="#F0F0F0" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" DisableExpress="1" Type="TimeMinutes" onchange="javascript:XFormOnChange(this);" XSubType="timeminutes" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XDateTimePicker id="XDateTimePicker11" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_ToDate" Width="118px" BackColor="#F0F0F0" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" DisableExpress="1" Type="TimeMinutes" onchange="javascript:XFormOnChange(this);" XSubType="timeminutes" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox120" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_Vehicle" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="60px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox118" runat="server" XDataBind="Fin_ChaiLv_YuShenQing.ChaiLv_Cost" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="50px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="105" height="24">
                            <aspxform:XLabel id="XLabel13" runat="server" text="是否需要打款" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="257" bgcolor="#f0f0f0">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="Fin_ClaimingExpenses.DK_State" Width="100%" RepeatDirection="Horizontal">
                                <asp:ListItem>需要</asp:ListItem>
                                <asp:ListItem>不需要</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" align="middle" width="120" background="#F0F0F0">
                            <aspxform:XLabel id="XLabel28" runat="server" text="打款金额" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="243" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="Fin_ClaimingExpenses.DK_Amount" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="if(Fin_CE_TE_Total.Total=='',0.00,Fin_CE_TE_Total.Total)-if(Fin_ClaimingExpenses.LoanTotal=='',0.00,Fin_ClaimingExpenses.LoanTotal)" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress="Global.StepName!='准备打款'&amp;&amp;Global.StepName!='财务审核'">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="105" height="22">
                            <aspxform:XLabel id="XLabel29" runat="server" text="所属公司" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="626" bgcolor="#f0f0f0">
                            <aspxform:XDropDownList id="XDropDownList12" runat="server" XDataBind="Fin_Applicant.Company" XDataSource="TableName:Fin_R_Company" ValueColumn="Code" DisplayColumn="Name">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XCompareValidator id="XCompareValidator9" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="离开日期不能小于出发日期" ControlToValidate="XDateTimePicker9" ValidationGroup="Star" Type="Date" Operator="GreaterThanEqual" ControlToCompare="XDateTimePicker7">离开日期大于开始日期</aspxform:XCompareValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="请选择出发日期" ControlToValidate="XDateTimePicker7" ValidationGroup="Star">出发日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="请选择离开日期！" ControlToValidate="XDateTimePicker9" ValidationGroup="Star">离开日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'&amp;&amp;Fin_CE_TE_JW_Info.Airfare==''" Display="None" ErrorMessage="请填写机票汇率" ControlToValidate="XTextBox56" ValidationGroup="Star">汇率</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'&amp;&amp;Fin_CE_TE_JW_Info.Fare==''" Display="None" ErrorMessage="请填写车船汇率" ControlToValidate="XTextBox103" ValidationGroup="Star">汇率</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'&amp;&amp;Fin_CE_TE_JW_Info.ZS_B==0" Display="None" ErrorMessage="请填写住宿费汇率" ControlToValidate="XTextBox106" ValidationGroup="Star">汇率</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'&amp;&amp;Fin_CE_TE_JW_Info.ZS_B==0" Display="None" ErrorMessage="请填写补助汇率" ControlToValidate="XTextBox108" ValidationGroup="Star">汇率</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'&amp;&amp;Fin_CE_TE_JW_Info.OverAmount==''" Display="None" ErrorMessage="请填写超标金额汇率" ControlToValidate="XTextBox13" ValidationGroup="Star">汇率</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator14" runat="server" Display="None" ErrorMessage="出发日期不能大于申请日期！" ControlToValidate="XDateTimePicker5" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">出发日期</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator12" runat="server" Display="None" ErrorMessage="离开日期不能大于申请日期！" ControlToValidate="XDateTimePicker6" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">到达日期</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator15" runat="server" Display="None" ErrorMessage="行程终点出发日期不能大于申请日期！" ControlToValidate="XDateTimePicker7" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">出发日期</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator13" runat="server" Display="None" ErrorMessage="行程终点到达日期不能大于申请日期！" ControlToValidate="XDateTimePicker8" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">到达日期</aspxform:XCompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: medium none" height="24">
                            <aspxform:XLabel id="XLabel54" runat="server" text="付款银行" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="Fin_ClaimingExpenses.Bank_Account" XDataSource="TableName:Fin_R_Cash" DataMap="Name->Fin_ClaimingExpenses.Bank_Name" ValueColumn="No" DisplayColumn="Name">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" DisableExpress="Fin_CE_TE_JW_Info.OverAmount==''||Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="请填写超额理由！" ControlToValidate="XTextBox70" ValidationGroup="Star">超额理由</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="请选择出发日期" ControlToValidate="XDateTimePicker5" ValidationGroup="Star">出发日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="请选择离开日期！" ControlToValidate="XDateTimePicker6" ValidationGroup="Star">离开日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator1" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="离开日期不能小于出发日期" ControlToValidate="XDateTimePicker6" ValidationGroup="Star" Operator="GreaterThanEqual" ValueToCompareExpress="Fin_CE_TE_JW_Info.StarDate">离开日期大于开始日期</aspxform:XCompareValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="请选择出发地点！" ControlToValidate="XTextBox15" ValidationGroup="Star">出发地点</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'" Display="None" ErrorMessage="请选择到达地点" ControlToValidate="XTextBox58" ValidationGroup="Star">到达地点</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator2" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='中国大陆'&amp;&amp;Fin_CE_TE_JW_Info.ZS_B==0" Display="None" ErrorMessage="住宿费超标了" ControlToValidate="XTextBox104" ValidationGroup="Star" Type="Double" Operator="LessThanEqual" ValueToCompareExpress="Fin_CE_TE_JW_Info.ZS">住宿费超标</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator19" runat="server" Display="None" ErrorMessage="超标金额不能小于零" ControlToValidate="XTextBox4" ValidationGroup="Star" Operator="GreaterThanEqual" ValueToCompare="0.01">超标金额大于零</aspxform:XCompareValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: medium none" width="105" bgcolor="white" height="24">
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                            <aspxform:XLabel id="XLabel53" runat="server" text="收款人账号" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="151">
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="Fin_ClaimingExpenses.App_Account" XDataSource="TableName:Fin_R_Account_PB;Filter:HRID->Fin_Applicant.HRID" ValueColumn="Account" DisplayColumn="Account">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            </span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="41">
                            <aspxform:XLabel id="XLabel97" runat="server" text="开户行"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="127">
                            <aspxform:XTextBox id="XTextBox83" runat="server" XDataBind="Fin_ClaimingExpenses.App_Bank_Name" Width="119px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False">招商银行</aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="65">
                            <aspxform:XLabel id="XLabel98" runat="server" text="账号所属省"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="79">
                            <aspxform:XTextBox id="XTextBox109" runat="server" XDataBind="Fin_ClaimingExpenses.App_Bank_Province" Width="70px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False">广东省</aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="65">
                            <aspxform:XLabel id="XLabel99" runat="server" text="账号所属市"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="79">
                            <aspxform:XTextBox id="XTextBox110" runat="server" XDataBind="Fin_ClaimingExpenses.App_Bank_City" width="70px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False">深圳市</aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="105" height="23">
                            <aspxform:XLabel id="XLabel90" runat="server" text="出差国家地区" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="203" bgcolor="#f0f0f0">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="Fin_ClaimingExpenses.Country" Width="200px" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True" Value="中国大陆">大陆地区</asp:ListItem>
                                <asp:ListItem Value="大陆以外地区">大陆以外地区</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="51" bgcolor="#f0f0f0">
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" align="middle" width="121" bgcolor="#f0f0f0">
                            <aspxform:XLabel id="XLabel91" runat="server" text="是否为质量费用" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" align="right" width="79" bgcolor="#f0f0f0">
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="Fin_Applicant.QualityYN" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="162" bgcolor="#f0f0f0">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" align="middle" bgcolor="white" colspan="6">
                            <table cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress="Fin_Applicant.QualityYN!='是'" dynamicarea="1,1">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                                            <aspxform:XLabel id="XLabel3" runat="server" text="订单/项目" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="Fin_Applicant.QualityProject" BorderWidth="1" BorderColor="#F0F0F0"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                                            <aspxform:XLabel id="XLabel8" runat="server" text="事故时间" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" XDataBind="Fin_Applicant.QualityTime" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                                            <aspxform:XLabel id="XLabel9" runat="server" text="事故原因" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox76" runat="server" XDataBind="Fin_Applicant.QualityReason" BorderWidth="1" BorderColor="#F0F0F0"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="7" height="18">
                            <aspxform:XLabel id="XLabel4" runat="server" text="差旅各项合计" ForeColor="Black"></aspxform:XLabel>
                            <aspxform:XCompareValidator id="XCompareValidator7" runat="server" Display="None" ErrorMessage="日期不能大于申请日期！" ControlToValidate="XDateTimePicker2" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">出发日期</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator11" runat="server" Display="None" ErrorMessage="日期不能大于申请日期！" ControlToValidate="XDateTimePicker3" ValidationGroup="Star" Operator="LessThanEqual" ValueToCompareExpress="Fin_Applicant.AppDate">到达日期</aspxform:XCompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="107" height="23">
                            <div align="center">
                                <aspxform:XLabel id="XLabel21" runat="server" text="市内交通费" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="107">
                            <div align="center">
                                <aspxform:XLabel id="XLabel31" runat="server" text="机票费" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="107">
                            <div align="center">
                                <aspxform:XLabel id="XLabel32" runat="server" text="车船费" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="107">
                            <div align="center">
                                <aspxform:XLabel id="XLabel33" runat="server" text="住宿费" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="107">
                            <div align="center">
                                <aspxform:XLabel id="XLabel42" runat="server" text="出差补助" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="107">
                            <div align="center">
                                <aspxform:XLabel id="XLabel48" runat="server" text="超标金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="88">
                            <div align="center">
                                <aspxform:XLabel id="XLabel52" runat="server" text="合计" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                            <aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="Fin_CE_TE_Total.Transportation" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="if(Fin_ClaimingExpenses.Country=='中国大陆',sum(if(Fin_CE_TE_Info.Transportation=='',0,Fin_CE_TE_Info.Transportation))+if(Fin_CE_TE.Transportation=='',0,Fin_CE_TE.Transportation),0)" TextAlign="Right" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox60" runat="server" XDataBind="Fin_CE_TE_Total.Airfare" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="if(Fin_ClaimingExpenses.Country=='中国大陆',sum(if(Fin_CE_TE_Info.Airfare=='',0,Fin_CE_TE_Info.Airfare))+if(Fin_CE_TE.Airfare=='',0,Fin_CE_TE.Airfare),sum(if(Fin_CE_TE_JW_Info.Airfare=='',0,Fin_CE_TE_JW_Info.Airfare)*Fin_CE_TE_JW_Info.Rate_Air)+if(Fin_CE_TE_JW.Airfare=='',0,Fin_CE_TE_JW.Airfare)*Fin_CE_TE_JW.Rate_Air)" TextAlign="Right" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox61" runat="server" XDataBind="Fin_CE_TE_Total.Fare" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="if(Fin_ClaimingExpenses.Country=='中国大陆',sum(if(Fin_CE_TE_Info.Fare=='',0,Fin_CE_TE_Info.Fare))+if(Fin_CE_TE.Fare=='',0,Fin_CE_TE.Fare),sum(if(Fin_CE_TE_JW_Info.Fare=='',0,Fin_CE_TE_JW_Info.Fare)*Fin_CE_TE_JW_Info.Rate_Fare)+if(Fin_CE_TE_JW.Fare=='',0,Fin_CE_TE_JW.Fare)*Fin_CE_TE_JW.Rate_Fare)" TextAlign="Right" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox62" runat="server" XDataBind="Fin_CE_TE_Total.Accommodation" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="if(Fin_ClaimingExpenses.Country=='中国大陆',sum(if(Fin_CE_TE_Info.ZS_B==1,if(Fin_CE_TE_Info.Accommodation=='',0,Fin_CE_TE_Info.Accommodation),0))+if(Fin_CE_TE.Accommodation=='',0,Fin_CE_TE.Accommodation),sum(if(Fin_CE_TE_JW_Info.ZS_B==1,if(Fin_CE_TE_JW_Info.Accommodation=='',0,Fin_CE_TE_JW_Info.Accommodation)*Fin_CE_TE_JW_Info.Rate_ZS,0))+if(Fin_CE_TE_JW.Accommodation=='',0,Fin_CE_TE_JW.Accommodation)*Fin_CE_TE_JW.Rate_ZS)" TextAlign="Right" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox63" runat="server" XDataBind="Fin_CE_TE_Total.BZ" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="if(Fin_ClaimingExpenses.Country=='中国大陆',sum(if(Fin_CE_TE_Info.ZS_B==1,Fin_CE_TE_Info.BZ,0))+Fin_CE_TE.BZ,sum(if(Fin_CE_TE_JW_Info.ZS_B==1,if(Fin_CE_TE_JW_Info.BZ=='',0,Fin_CE_TE_JW_Info.BZ*Fin_CE_TE_JW_Info.Rate_BZ),0))+if(Fin_CE_TE_JW.BZ=='',0,Fin_CE_TE_JW.BZ)*Fin_CE_TE_JW.Rate_BZ)" TextAlign="Right" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="antiquewhite">
                            <aspxform:XTextBox id="XTextBox64" runat="server" XDataBind="Fin_CE_TE_Total.OverAmount" ForeColor="Red" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="if(Fin_ClaimingExpenses.Country=='中国大陆',sum(if(Fin_CE_TE_Info.OverAmount=='',0,Fin_CE_TE_Info.OverAmount)),sum(if(Fin_CE_TE_JW_Info.OverAmount=='',0,Fin_CE_TE_JW_Info.OverAmount)*Fin_CE_TE_JW_Info.Rate_Over))" TextAlign="Right" Format="type:currency;.2">0</aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="antiquewhite">
                            <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="Fin_CE_TE_Total.Total" BackColor="AntiqueWhite" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express='if(Fin_CE_TE_Total.Airfare=="",0,Fin_CE_TE_Total.Airfare)+if(Fin_CE_TE_Total.Fare=="",0,Fin_CE_TE_Total.Fare)+if(Fin_CE_TE_Total.Transportation=="",0,Fin_CE_TE_Total.Transportation)+if(Fin_CE_TE_Total.Accommodation=="",0,Fin_CE_TE_Total.Accommodation)+if(Fin_CE_TE_Total.BZ=="",0,Fin_CE_TE_Total.BZ)+if(Fin_CE_TE_Total.OverAmount=="",0,Fin_CE_TE_Total.OverAmount)' TextAlign="Right" Format="type:currency;.2">0</aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" dynamicarea="1,4">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="130" bgcolor="#d1dedf" height="21">
                            <aspxform:XLabel id="XLabel17" runat="server" text="差旅报销明细" ForeColor="Black"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="3">
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="236" bgcolor="#d1dedf">
                            <div align="right">
                                <aspxform:XAddBlockButton id="XAddBlockButton3" runat="server" Width="80px" HiddenExpress="Global.StepName!='开始'" Height="20px" Text="添加行程" TableName="Fin_CE_TE_Info" PrintOut="False"></aspxform:XAddBlockButton>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" rowspan="2">
                            <div align="right">
                                <div align="center">
                                    <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Font-Size="X-Large" XDataBind="var" Width="85px" BorderStyle="None" BorderWidth="1px" BorderColor="Gainsboro" Height="100%" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="63" bgcolor="white" height="23">
                            <div align="right">
                                <aspxform:XLabel id="XLabel15" runat="server" text="出发日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="216" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker4" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE_Info.StarDate" Width="120px" BackColor="White" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XTextBox id="XTextBox89" runat="server" XDataBind="Fin_CE_TE_Info.ZS_Per" BorderStyle="Dotted" ReadOnly="True" width="60px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" TextAlign="Right"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="77" bgcolor="white">
                            <p align="right">
                                <aspxform:XLabel id="XLabel41" runat="server" text="出发地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="Fin_CE_TE_Info.City_Star" BackColor="White" BorderStyle="None" ReadOnly="True" width="100px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton1" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=2" DataMap="Col1->Fin_CE_TE_Info.City_Star" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                            <aspxform:XTextBox id="XTextBox34" runat="server" XDataBind="Fin_CE_TE_Info.C_Star" BackColor="White" width="77px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="23">
                            <p align="right">
                                &nbsp;<aspxform:XLabel id="XLabel35" runat="server" text="离开日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE_Info.EndDate" Width="120px" BackColor="White" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <div align="right">
                                <aspxform:XLabel id="XLabel5" runat="server" text="到达地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="Fin_CE_TE_Info.City_End" BackColor="White" BorderStyle="None" ReadOnly="True" width="100px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton2" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=2" DataMap="Col1->Fin_CE_TE_Info.City_End;Col2->Fin_CE_TE_Info.ZS_Per;Col3->Fin_CE_TE_Info.BZ_Per" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                            <aspxform:XTextBox id="XTextBox38" runat="server" XDataBind="Fin_CE_TE_Info.C_End" BackColor="White" width="78px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="5" height="65">
                            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="100%" border="0" hiddenexpress="Fin_ClaimingExpenses.Country=='大陆以外地区'">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="68" height="25">
                                            <div align="center">
                                                <div align="center">
                                                    <div align="center">
                                                        <aspxform:XLabel id="XLabel78" runat="server" text="市内交通费" ForeColor="Gray"></aspxform:XLabel>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="58">
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
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="66">
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
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="33">
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
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="90">
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
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="59">
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
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="54">
                                            <p align="center">
                                                <aspxform:XLabel id="XLabel84" runat="server" text="超标金额" ForeColor="Gray"></aspxform:XLabel>
                                            </p>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="193">
                                            <div align="center">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel85" runat="server" text="超额理由" ForeColor="Gray"></aspxform:XLabel>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="87">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel6" runat="server" text="小计" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                            <div align="center">
                                                <div align="center">
                                                    <aspxform:XTextBox id="XTextBox91" runat="server" XDataBind="Fin_CE_TE_Info.Transportation" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" TextAlign="Right"></aspxform:XTextBox>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                            <div align="center">
                                                <div align="center">
                                                    <div align="center">
                                                        <aspxform:XTextBox id="XTextBox92" runat="server" XDataBind="Fin_CE_TE_Info.Airfare" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" TextAlign="Right"></aspxform:XTextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                            <div align="center">
                                                <aspxform:XTextBox id="XTextBox93" runat="server" XDataBind="Fin_CE_TE_Info.Fare" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" TextAlign="Right"></aspxform:XTextBox>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                            <div align="center">
                                                <div align="center">
                                                    <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="Fin_CE_TE_Info.ZS_B" Text=" "></aspxform:XCheckBox>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox94" runat="server" XDataBind="Fin_CE_TE_Info.Accommodation" width="74px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenExpress="Fin_CE_TE_Info.ZS_B!=1" Height="22px" HiddenInput="False" Express="if(Fin_ClaimingExpenses.PersonType!='1',Fin_CE_TE_Info.ZS,'')" TextAlign="Right"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox95" runat="server" XDataBind="Fin_CE_TE_Info.ZS" BackColor="#F0F0F0" BorderStyle="Dotted" ReadOnly="True" width="11px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenExpress="1" Height="22px" HiddenInput="False" Express="javascript('DateDiff',Fin_CE_TE_Info.EndDate,Fin_CE_TE_Info.StarDate)*Fin_CE_TE_Info.ZS_Per" TextAlign="Right"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox96" runat="server" XDataBind="Fin_CE_TE_Info.BZ" BackColor="#F0F0F0" BorderStyle="None" width="38px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" DisableExpress="Global.StepName !='财务审核'" HiddenExpress="Fin_CE_TE_Info.ZS_B!=1" HiddenInput="False" Express="javascript('DateDiff',Fin_CE_TE_Info.EndDate,Fin_CE_TE_Info.StarDate)*Fin_CE_TE_Info.BZ_Per" TextAlign="Right"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox90" runat="server" XDataBind="Fin_CE_TE_Info.BZ_Per" BorderStyle="Dotted" ReadOnly="True" width="6px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox97" runat="server" XDataBind="Fin_CE_TE_Info.OverAmount" ForeColor="Red" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" TextAlign="Right"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox98" runat="server" XDataBind="Fin_CE_TE_Info.Reason" ForeColor="Red" width="185px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="antiquewhite">
                                            <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="Fin_CE_TE_Info.Total" BackColor="AntiqueWhite" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" Express="if(Fin_CE_TE_Info.Airfare=='',0,Fin_CE_TE_Info.Airfare)+if(Fin_CE_TE_Info.Fare=='',0,Fin_CE_TE_Info.Fare)+if(Fin_CE_TE_Info.OverAmount=='',0,Fin_CE_TE_Info.OverAmount)+if(Fin_CE_TE_Info.ZS_B==1,if(Fin_CE_TE_Info.BZ=='',0,Fin_CE_TE_Info.BZ),0)+if(Fin_CE_TE_Info.ZS_B==1,if(Fin_CE_TE_Info.Accommodation=='',0,Fin_CE_TE_Info.Accommodation),0)+if(Fin_CE_TE_Info.Transportation=='',0,Fin_CE_TE_Info.Transportation)" TextAlign="Right" Format="type:currency;.2">0</aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#d1dedf" height="23">
                        </td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#d1dedf">
                        </td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#d1dedf">
                        </td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#d1dedf">
                        </td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#d1dedf">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress="Fin_ClaimingExpenses.Country=='大陆以外地区'">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="132" rowspan="2">
                            <div align="center">
                                <aspxform:XLabel id="XLabel7" runat="server" Font-Size="Medium" text="行程终点" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="67" bgcolor="white" height="23">
                            <p align="right">
                                &nbsp;&nbsp;<aspxform:XLabel id="XLabel16" runat="server" text="出发日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="209" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE.StarDate" Width="120px" BackColor="White" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="78" bgcolor="white">
                            <p align="right">
                                <aspxform:XLabel id="XLabel10" runat="server" text="出发地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="236" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="Fin_CE_TE.City_Star" BackColor="White" BorderStyle="None" ReadOnly="True" width="100px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton3" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=2" DataMap="Col1->Fin_CE_TE.City_Star;Col2->Fin_CE_TE.ZS_per;Col3->Fin_CE_TE.BZ_per" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="Fin_CE_TE.C_Star" BackColor="White" width="85px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="23">
                            <p align="right">
                                <aspxform:XLabel id="XLabel12" runat="server" text="到达日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE.EndDate" Width="120px" BackColor="White" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <div align="right">
                                <aspxform:XLabel id="XLabel36" runat="server" text="到达地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="Fin_CE_TE.City_End" BackColor="White" BorderStyle="None" ReadOnly="True" width="100px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton4" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=2" DataMap="Col1->Fin_CE_TE.City_End" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="Fin_CE_TE.C_End" BackColor="White" width="85px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="5">
                            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="100%" border="0" hiddenexpress="Fin_ClaimingExpenses.Country=='大陆以外地区'">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="62" height="22">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel14" runat="server" text="市内交通费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="64">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel18" runat="server" text="机票费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="70">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel44" runat="server" text="车船费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="32">
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="94">
                                            <div align="center">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel45" runat="server" text="住宿费" ForeColor="Gray"></aspxform:XLabel>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="58">
                                            <div align="center">
                                                <div align="center">
                                                    <div align="center">
                                                        <aspxform:XLabel id="XLabel46" runat="server" text="出差补助" ForeColor="Gray"></aspxform:XLabel>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="246">
                                            <div align="center">
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="85">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel40" runat="server" text="小计" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0" height="24">
                                            <aspxform:XTextBox id="XTextBox53" runat="server" XDataBind="Fin_CE_TE.Transportation" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" TextAlign="Right"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="Fin_CE_TE.Airfare" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" TextAlign="Right"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox99" runat="server" XDataBind="Fin_CE_TE.Fare" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" TextAlign="Right"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="Fin_CE_TE.ZS_per" BorderStyle="Dotted" ReadOnly="True" width="13px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox100" runat="server" Font-Bold="False" XDataBind="Fin_CE_TE.Accommodation" width="79px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" DisableExpress="Fin_ClaimingExpenses.PersonType=='2'" HiddenInput="False" TextAlign="Right"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox101" runat="server" XDataBind="Fin_CE_TE.ZS" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="11px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="(javascript('DateDiff',Fin_CE_TE.EndDate,Fin_CE_TE.StarDate)+0.5)*Fin_CE_TE.ZS_per" TextAlign="Right"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox102" runat="server" XDataBind="Fin_CE_TE.BZ" BackColor="#F0F0F0" BorderStyle="None" width="38px" BorderWidth="1" BorderColor="#DCDCDC" DisableExpress="Global.StepName !='财务审核'" HiddenInput="False" Express="if(Fin_ClaimingExpenses.PersonType=='1'||Fin_ClaimingExpenses.PersonType=='4',(javascript('DateDiff',Fin_CE_TE.EndDate,Fin_CE_TE.StarDate)+0.5)*Fin_CE_TE.BZ_per,if(Fin_CE_TE.City_End==Fin_ClaimingExpenses.PermanentCity,(javascript('DateDiff',Fin_CE_TE.EndDate,Fin_CE_TE.StarDate)+0.5)*(Fin_CE_TE.ZS_per+Fin_CE_TE.BZ_per),0))" TextAlign="Right"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox46" runat="server" XDataBind="Fin_CE_TE.BZ_per" BorderStyle="Dotted" ReadOnly="True" width="7px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" Height="22px" HiddenInput="True"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                        </td>
                                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="antiquewhite">
                                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="Fin_CE_TE.Total" BackColor="AntiqueWhite" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" Express="if(Fin_CE_TE.Airfare=='',0,Fin_CE_TE.Airfare)+if(Fin_CE_TE.Fare=='',0,Fin_CE_TE.Fare)+if(Fin_CE_TE.Transportation=='',0,Fin_CE_TE.Transportation)+if(Fin_CE_TE.Accommodation=='',0,Fin_CE_TE.Accommodation)+if(Fin_CE_TE.BZ=='',0,Fin_CE_TE.BZ)" TextAlign="Right" Format="type:currency;.2">0</aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress="Fin_ClaimingExpenses.Country=='中国大陆'" dynamicarea="1,5">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="110" bgcolor="#d1dedf" height="20">
                            <aspxform:XLabel id="XLabel19" runat="server" text="差旅报销明细" ForeColor="Black"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="71" bgcolor="#d1dedf">
                            <font style="BACKGROUND-COLOR: #ffffff"></font></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="235" bgcolor="#d1dedf">
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="73" bgcolor="#d1dedf">
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="238" bgcolor="#d1dedf" colspan="2">
                            <div align="right">
                                <div align="right">
                                    <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Width="80px" HiddenExpress="Global.StepName!='开始'" Height="20px" Text="添加行程" TableName="Fin_CE_TE_JW_Info" PrintOut="False"></aspxform:XAddBlockButton>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" rowspan="2">
                            <div align="right">
                                <div align="center">
                                    <aspxform:XGridLineNo id="XGridLineNo3" runat="server" Font-Size="X-Large" XDataBind="var" Width="85px" BorderStyle="None" BorderWidth="1px" BorderColor="Gainsboro" Height="100%" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="24">
                            <div align="right">
                                <aspxform:XLabel id="XLabel20" runat="server" text="出发日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE_JW_Info.StarDate" Width="120px" BackColor="White" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator24" runat="server" DisableExpress="Fin_ClaimingExpenses.Country!='大陆以外地区'" Display="None" ErrorMessage="请填写出发国家的城市！" ControlToValidate="XTextBox23" ValidationGroup="Star">出发城市</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <p align="right">
                                <aspxform:XLabel id="XLabel22" runat="server" text="出发地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="Fin_CE_TE_JW_Info.City_Star" BackColor="White" BorderStyle="None" ReadOnly="True" width="120px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton5" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=3" DataMap="Col1->Fin_CE_TE_JW_Info.City_Star" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="Fin_CE_TE_JW_Info.C_Star" BackColor="White" width="85px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="25">
                            <p align="right">
                                &nbsp;&nbsp;<aspxform:XLabel id="XLabel23" runat="server" text="离开日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker6" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE_JW_Info.EndDate" Width="120px" BackColor="White" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" onchange="javascript:XFormOnChange(this);" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator25" runat="server" DisableExpress="Fin_ClaimingExpenses.Country!='大陆以外地区'" Display="None" ErrorMessage="请填写出发国家的城市！" ControlToValidate="XTextBox55" ValidationGroup="Star">到达城市</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator22" runat="server" DisableExpress="Fin_ClaimingExpenses.Country!='大陆以外地区'" Display="None" ErrorMessage="到达城市不能和出发城市相同！" ControlToValidate="XTextBox55" ValidationGroup="Star" Operator="NotEqual" ValueToCompareExpress="Fin_CE_TE_JW_Info.C_Star">城市相同</aspxform:XCompareValidator>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <div align="right">
                                <aspxform:XLabel id="XLabel47" runat="server" text="到达地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox58" runat="server" XDataBind="Fin_CE_TE_JW_Info.City_End" BackColor="White" BorderStyle="None" ReadOnly="True" width="120px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton6" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=3" DataMap="Col1->Fin_CE_TE_JW_Info.City_End;Col2->Fin_CE_TE_JW_Info.ZS_Per;Col3->Fin_CE_TE_JW_Info.BZ_Per" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                            <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="Fin_CE_TE_JW_Info.C_End" BackColor="White" width="85px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="6" height="75">
                            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" colspan="3" height="25">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel74" runat="server" text="机票费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" colspan="3">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel86" runat="server" text="车船费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="25">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel87" runat="server" text="住宿" Width="13px" ForeColor="Gray" Height="28px"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" colspan="3">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel88" runat="server" text="住宿费" ForeColor="Gray"></aspxform:XLabel>
                                                <aspxform:XDropDownList id="XDropDownList13" runat="server" XDataBind="Fin_CE_TE_JW_Info.PersonNum">
                                                    <asp:ListItem Selected="True">单人</asp:ListItem>
                                                    <asp:ListItem>双人</asp:ListItem>
                                                </aspxform:XDropDownList>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" colspan="3">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel89" runat="server" text="出差补助" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="47" bgcolor="#f0f0f0" height="24">
                                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="Fin_CE_TE_JW_Info.Airfare" width="45px" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" TextAlign="Right"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="Fin_CE_TE_JW_Info.ZS_Per" BorderStyle="Dotted" width="22px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenExpress="1" HiddenInput="False"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="Fin_CE_TE_JW_Info.BZ_Per" BorderStyle="Dotted" width="16px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenExpress="1" HiddenInput="False"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="101" bgcolor="#f0f0f0">
                                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_Air" Width="99px" Height="22px" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var1" onchange="javascript:XFormOnChange(this);" ValueColumn="Unit" DisplayColumn="Unit">
                                                <asp:ListItem>人民币</asp:ListItem>
                                                <asp:ListItem>美元</asp:ListItem>
                                                <asp:ListItem>欧元</asp:ListItem>
                                                <asp:ListItem>港币</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="47" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox56" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_Air" width="45px" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" Express="var1" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox78" runat="server" XDataBind="ZS_Per_Person" BorderStyle="Dotted" width="27px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenExpress="1" HiddenInput="False" Express='if(Fin_CE_TE_JW_Info.PersonNum =="双人",if(Fin_CE_TE_JW_Info.ZS_Per == 800.00,1200,if(Fin_CE_TE_JW_Info.ZS_Per == 1000.00,1600,if(Fin_CE_TE_JW_Info.ZS_Per == 600.00,1100,0))),Fin_CE_TE_JW_Info.ZS_Per)' Format="type:number;.2"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="var1" BorderStyle="Dotted" width="7px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="47" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox57" runat="server" XDataBind="Fin_CE_TE_JW_Info.Fare" width="45px" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" TextAlign="Right"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="92" bgcolor="#f0f0f0">
                                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_Fare" Width="90px" Height="22px" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var2" onchange="javascript:XFormOnChange(this);" ValueColumn="Unit" DisplayColumn="Unit">
                                                <asp:ListItem>未绑定</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="47" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox103" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_Fare" width="45px" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" Express="var2" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="var2" width="18px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                            <div align="center">
                                                <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="Fin_CE_TE_JW_Info.ZS_B" Text=" "></aspxform:XCheckBox>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="47" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox104" runat="server" XDataBind="Fin_CE_TE_JW_Info.Accommodation" width="45px" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0" TextAlign="Right" Format="type:currency;.2"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox105" runat="server" XDataBind="Fin_CE_TE_JW_Info.ZS" BackColor="#F0F0F0" BorderStyle="None" width="40px" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1" HiddenInput="False" Express="(javascript('DateDiff',Fin_CE_TE_JW_Info.EndDate,Fin_CE_TE_JW_Info.StarDate))*if(Fin_CE_TE_JW_Info.Unit_ZS=='人民币',ZS_Per_Person,ZS_Per_Person/Fin_CE_TE_JW_Info.Rate_ZS)" TextAlign="Right" Format="type:currency;.2"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="92" bgcolor="#f0f0f0">
                                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_ZS" Width="90px" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var3" onchange="javascript:XFormOnChange(this);" ValueColumn="Unit" DisplayColumn="Unit">
                                                <asp:ListItem>人民币</asp:ListItem>
                                                <asp:ListItem>美元</asp:ListItem>
                                                <asp:ListItem>欧元</asp:ListItem>
                                                <asp:ListItem>港币</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="47" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox106" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_ZS" width="45px" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0" Express="var3" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="var3" width="18px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="13" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox107" runat="server" XDataBind="Fin_CE_TE_JW_Info.BZ" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="1px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B!=1" Height="22px" HiddenInput="False" Express="(javascript('DateDiff',Fin_CE_TE_JW_Info.EndDate,Fin_CE_TE_JW_Info.StarDate))*Fin_CE_TE_JW_Info.BZ_Per" TextAlign="Right"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="54" bgcolor="#f0f0f0">
                                            <aspxform:XDropDownList id="XDropDownList7" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_BZ" Width="52px" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var8" onchange="javascript:XFormOnChange(this);" ValueColumn="Unit" DisplayColumn="Unit" Enabled="False">
                                                <asp:ListItem Selected="True">人民币</asp:ListItem>
                                                <asp:ListItem>美元</asp:ListItem>
                                                <asp:ListItem>欧元</asp:ListItem>
                                                <asp:ListItem>港币</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="41" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox108" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_BZ" width="39px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0" HiddenInput="False" Express="var8" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox66" runat="server" XDataBind="var8" width="18px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="NoPadding" style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="6" height="45">
                            <div align="center">
                                <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" height="100%" cellspacing="0" cellpadding="0" width="100%" border="0">
                                    <tbody>
                                        <tr>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" colspan="3" height="17">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel72" runat="server" text="超标金额" ForeColor="Gray"></aspxform:XLabel>
                                                </div>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="392">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel75" runat="server" text="超额理由" ForeColor="Gray"></aspxform:XLabel>
                                                </div>
                                            </td>
                                            <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="86">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel30" runat="server" text="小计" ForeColor="Gray"></aspxform:XLabel>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="87" bgcolor="#f0f0f0">
                                                <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="Fin_CE_TE_JW_Info.OverAmount" ForeColor="Red" BorderStyle="None" width="82px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" TextAlign="Right"></aspxform:XTextBox>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="106" bgcolor="#f0f0f0">
                                                <aspxform:XDropDownList id="XDropDownList6" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_Over" Width="100%" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var4" onchange="javascript:XFormOnChange(this);" ValueColumn="Unit" DisplayColumn="Unit">
                                                    <asp:ListItem>人民币</asp:ListItem>
                                                    <asp:ListItem>美元</asp:ListItem>
                                                    <asp:ListItem>欧元</asp:ListItem>
                                                    <asp:ListItem>港币</asp:ListItem>
                                                </aspxform:XDropDownList>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="52" bgcolor="#f0f0f0">
                                                <div align="left">
                                                    <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_Over" width="45px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Express="var4" Format="type:number;.4"></aspxform:XTextBox>
                                                    <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="var4" width="1px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Format="type:number;.4"></aspxform:XTextBox>
                                                </div>
                                            </td>
                                            <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#f0f0f0">
                                                <div align="center">
                                                    <aspxform:XTextBox id="XTextBox70" runat="server" XDataBind="Fin_CE_TE_JW_Info.Reason" ForeColor="Red" width="100%" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                                </div>
                                            </td>
                                            <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="antiquewhite">
                                                <div align="right">
                                                    <aspxform:XTextBox id="XTextBox59" runat="server" XDataBind="Fin_CE_TE_JW_Info.Total" BackColor="AntiqueWhite" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="if(Fin_CE_TE_JW_Info.Airfare=='',0,Fin_CE_TE_JW_Info.Airfare)*if(Fin_CE_TE_JW_Info.Airfare=='',0,Fin_CE_TE_JW_Info.Rate_Air)+if(Fin_CE_TE_JW_Info.Fare=='',0,Fin_CE_TE_JW_Info.Fare)*if(Fin_CE_TE_JW_Info.Fare=='',0,Fin_CE_TE_JW_Info.Rate_Fare)+if(Fin_CE_TE_JW_Info.ZS_B==1,if(Fin_CE_TE_JW_Info.Accommodation=='',0,Fin_CE_TE_JW_Info.Accommodation),0)*if(Fin_CE_TE_JW_Info.ZS_B==1,if(Fin_CE_TE_JW_Info.Accommodation=='',0,Fin_CE_TE_JW_Info.Rate_ZS),0)+if(Fin_CE_TE_JW_Info.ZS_B==1,Fin_CE_TE_JW_Info.BZ*Fin_CE_TE_JW_Info.Rate_BZ,0)+if(Fin_CE_TE_JW_Info.OverAmount=='',0,Fin_CE_TE_JW_Info.OverAmount)*if(Fin_CE_TE_JW_Info.OverAmount=='',0,Fin_CE_TE_JW_Info.Rate_Over)" TextAlign="Right" Format="type:currency;.2">0</aspxform:XTextBox>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2" height="24">
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf">
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf">
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress="Fin_ClaimingExpenses.Country=='中国大陆'">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="102" rowspan="2">
                            <div align="right">
                                <div align="center">
                                    <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="Fin_CE_TE_JW.Rate" width="21px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                    <aspxform:XLabel id="XLabel34" runat="server" Font-Size="Medium" text="行程终点" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="71" bgcolor="white" height="24">
                            <div align="right">
                                <aspxform:XLabel id="XLabel58" runat="server" text="出发日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="238" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker7" runat="server" XDataBind="Fin_CE_TE_JW.StarDate" Width="120px" BackColor="White" BorderStyle="Groove" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="71" bgcolor="white">
                            <p align="right">
                                <aspxform:XLabel id="XLabel65" runat="server" text="出发地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="240" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="Fin_CE_TE_JW.City_Star" BackColor="White" BorderStyle="None" ReadOnly="True" width="120px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton8" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=3" DataMap="Col1->Fin_CE_TE_JW.City_Star;Col2->Fin_CE_TE_JW.ZS_Per;Col3->Fin_CE_TE_JW.BZ_Per" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                            <aspxform:XTextBox id="XTextBox36" runat="server" XDataBind="Fin_CE_TE_JW.C_Star" BackColor="White" width="85px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="26">
                            <p align="right">
                                <aspxform:XLabel id="XLabel62" runat="server" text="到达日期" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker9" runat="server" XDataBind="Fin_CE_TE_JW.EndDate" Width="120px" BackColor="White" BorderStyle="Groove" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <div align="right">
                                <aspxform:XLabel id="XLabel66" runat="server" text="到达地点" ForeColor="Gray"></aspxform:XLabel>
                                &nbsp; 
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox71" runat="server" XDataBind="Fin_CE_TE_JW.City_End" BackColor="White" BorderStyle="None" ReadOnly="True" width="120px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XCustomBrowserButton id="XCustomBrowserButton7" runat="server" Width="21px" NavigateUrl="~\FormSupport\SelCity.aspx?cname=3" DataMap="Col1->Fin_CE_TE_JW.City_End" PrintOut="False" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                            <aspxform:XTextBox id="XTextBox72" runat="server" XDataBind="Fin_CE_TE_JW.C_End" BackColor="White" width="85px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="5">
                            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="100%" border="0">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" colspan="3" height="24">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel92" runat="server" text="机票费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" colspan="3">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel93" runat="server" text="车船费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" colspan="4">
                                            <div align="center">
                                                <div align="center">
                                                </div>
                                            </div>
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel95" runat="server" text="住宿费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" colspan="3">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel96" runat="server" text="出差补助" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="90" bgcolor="#f0f0f0" height="24">
                                            <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="Fin_CE_TE_JW.Airfare" BorderStyle="None" width="45px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" TextAlign="Right"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox85" runat="server" XDataBind="Fin_CE_TE_JW.ZS_Per" BorderStyle="Dotted" width="11px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox82" runat="server" XDataBind="Fin_CE_TE_JW.ZS" BackColor="#F0F0F0" BorderStyle="Dotted" ReadOnly="True" width="14px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="(javascript('DateDiff',Fin_CE_TE_JW.EndDate,Fin_CE_TE_JW.StarDate)*Fin_CE_TE_JW.ZS_Per*Fin_CE_TE_JW.Rate)/Fin_CE_TE_JW.Rate_ZS"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox86" runat="server" XDataBind="Fin_CE_TE_JW.BZ_Per" BorderStyle="Dotted" width="19px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="67" bgcolor="#f0f0f0">
                                            <aspxform:XDropDownList id="XDropDownList8" runat="server" XDataBind="Fin_CE_TE_JW.Unit_Air" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var5" ValueColumn="Unit" DisplayColumn="Unit">
                                                <asp:ListItem>人民币</asp:ListItem>
                                                <asp:ListItem>美元</asp:ListItem>
                                                <asp:ListItem>欧元</asp:ListItem>
                                                <asp:ListItem>港币</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="63" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox77" runat="server" XDataBind="Fin_CE_TE_JW.Rate_Air" width="45px" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" Express="var5" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox39" runat="server" XDataBind="var5" width="18px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="47" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox79" runat="server" XDataBind="Fin_CE_TE_JW.Fare" width="45px" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" TextAlign="Right"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="69" bgcolor="#f0f0f0">
                                            <div align="center">
                                                <aspxform:XDropDownList id="XDropDownList9" runat="server" XDataBind="Fin_CE_TE_JW.Unit_Fare" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var6" ValueColumn="Unit" DisplayColumn="Unit">
                                                    <asp:ListItem>人民币</asp:ListItem>
                                                    <asp:ListItem>美元</asp:ListItem>
                                                    <asp:ListItem>欧元</asp:ListItem>
                                                    <asp:ListItem>港币</asp:ListItem>
                                                </aspxform:XDropDownList>
                                            </div>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="63" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox80" runat="server" XDataBind="Fin_CE_TE_JW.Rate_Fare" width="45px" BorderWidth="1" BorderColor="#DCDCDC" Express="var6" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="var6" width="18px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="50" bgcolor="#f0f0f0" colspan="2">
                                            <div align="center">
                                            </div>
                                            <aspxform:XTextBox id="XTextBox81" runat="server" XDataBind="Fin_CE_TE_JW.Accommodation" Width="45px" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" TextAlign="Right" Format="type:currency;.2"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="81" bgcolor="#f0f0f0">
                                            <aspxform:XDropDownList id="XDropDownList10" runat="server" XDataBind="Fin_CE_TE_JW.Unit_ZS" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var7" ValueColumn="Unit" DisplayColumn="Unit">
                                                <asp:ListItem>人民币</asp:ListItem>
                                                <asp:ListItem>美元</asp:ListItem>
                                                <asp:ListItem>欧元</asp:ListItem>
                                                <asp:ListItem>港币</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="60" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox84" runat="server" XDataBind="Fin_CE_TE_JW.Rate_ZS" Width="45px" BorderStyle="None" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" Express="var7" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="var7" width="1px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="16" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox87" runat="server" XDataBind="Fin_CE_TE_JW.BZ" BackColor="#F0F0F0" BorderStyle="None" width="11px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenExpress='Global.StepName  !="财务审核"' HiddenInput="False" Express="(javascript('DateDiff',Fin_CE_TE_JW.EndDate,Fin_CE_TE_JW.StarDate)+1)*Fin_CE_TE_JW.BZ_Per" TextAlign="Right"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="58" bgcolor="#f0f0f0">
                                            <aspxform:XDropDownList id="XDropDownList11" runat="server" XDataBind="Fin_CE_TE_JW.Unit_BZ" Width="52px" Height="21px" XDataSource="TableName:Fin_R_Rate" DataMap="Rate->var9" onchange="javascript:XFormOnChange(this);" ValueColumn="Unit" DisplayColumn="Unit" Enabled="False">
                                                <asp:ListItem Selected="True">人民币</asp:ListItem>
                                                <asp:ListItem>美元</asp:ListItem>
                                                <asp:ListItem>欧元</asp:ListItem>
                                                <asp:ListItem>港币</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="38" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox88" runat="server" XDataBind="Fin_CE_TE_JW.Rate_BZ" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="var9" Format="type:number;.4"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox67" runat="server" XDataBind="var9" width="18px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Format="type:number;.4"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" colspan="10" rowspan="2">
                                        </td>
                                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" colspan="3" height="24">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel70" runat="server" text="小计" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="antiquewhite" colspan="3" height="24">
                                            <div align="center">
                                                <aspxform:XTextBox id="XTextBox75" runat="server" XDataBind="Fin_CE_TE_JW.Total" BackColor="AntiqueWhite" BorderStyle="None" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="if(Fin_CE_TE_JW.Airfare=='',0,Fin_CE_TE_JW.Airfare)*if(Fin_CE_TE_JW.Airfare=='',0,Fin_CE_TE_JW.Rate_Air)+if(Fin_CE_TE_JW.Fare=='',0,Fin_CE_TE_JW.Fare)*if(Fin_CE_TE_JW.Fare=='',0,Fin_CE_TE_JW.Rate_Fare)+if(Fin_CE_TE_JW.Accommodation=='',0,Fin_CE_TE_JW.Accommodation)*if(Fin_CE_TE_JW.Accommodation=='',0,Fin_CE_TE_JW.Rate_ZS)+Fin_CE_TE_JW.BZ*Fin_CE_TE_JW.Rate_BZ" TextAlign="Right" Format="type:currency;.2">0</aspxform:XTextBox>
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
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="764" border="0">
                <tbody>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="110" bgcolor="white" height="24">
                            <span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" size="2"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                            <aspxform:XLabel id="XLabel56" runat="server" text="附件" ForeColor="Gray"></aspxform:XLabel>
                            </span></font></span></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="623" bgcolor="#f0f0f0">
                            <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="Fin_ClaimingExpenses.Attachment"></aspxform:XMSNAttachments>
                            <aspxform:XCompareValidator id="XCompareValidator20" runat="server" Display="None" ErrorMessage="超标金额不能小于零" ControlToValidate="XTextBox97" ValidationGroup="Star" Operator="GreaterThanEqual" ValueToCompare="0.01">超标金额大于零</aspxform:XCompareValidator>
                            </span></span></span></span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" dynamicarea="2,1" datamap="SN->Fin_ClaimingExpenses_LoanInfo.LoanSN;Amount->Fin_ClaimingExpenses_LoanInfo.LoanAmount;Remain->Fin_ClaimingExpenses_LoanInfo.Remain;Reason->Fin_ClaimingExpenses_LoanInfo.Reason;Date->Fin_ClaimingExpenses_LoanInfo.Date;RunningAmount->Fin_ClaimingExpenses_LoanInfo.RunningAmount">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="7" height="20">
                            <font face="Arial" color="black">
                            <aspxform:XLabel id="XLabel64" runat="server" text="个人借款明细"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="vardakuan" BackColor="White" BorderStyle="None" ReadOnly="True" width="141px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="if(Fin_CE_TE_Total.Total=='',0.00,Fin_CE_TE_Total.Total)-if(Fin_ClaimingExpenses.LoanTotal=='',0.00,Fin_ClaimingExpenses.LoanTotal)" Format="type:number;.2"></aspxform:XTextBox>
                            <div align="center">
                            </div>
                            </font></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="83" bgcolor="#d1dedf">
                            <div align="right">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="30" bgcolor="transparent" height="24">
                            <div align="center">
                                <aspxform:XLabel id="XLabel37" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="105" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel38" runat="server" text="借款单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="80" bgcolor="transparent">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel39" runat="server" text="剩余借款" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="84" bgcolor="transparent">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel43" runat="server" text="在途审批金额" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="91" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel49" runat="server" text="剩余需冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="140">
                            <div align="center">
                                <aspxform:XLabel id="XLabel50" runat="server" text="事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="100" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel51" runat="server" text="预计还款报销日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel55" runat="server" text="本次冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="29">
                            <aspxform:XGridLineNo id="XGridLineNo5" runat="server" Font-Bold="True" Width="15px" BorderWidth="1" BorderColor="#DCDCDC">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox41" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanSN" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox42" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Remain" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox43" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.RunningAmount" BackColor="White" BorderStyle="None" ReadOnly="True" width="88px" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenInput="False" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox69" runat="server" XDataBind="varloan" BackColor="White" BorderStyle="None" width="73px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Express="(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount)" Format="type:currency;.2"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanAmount" Width="15px" BackColor="White" BorderStyle="None" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" DisableBehavior="ReadOnly" Max="0" Min="0" HiddenExpress="1" HiddenInput="False" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Reason" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker12" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Date" Width="96px" BorderWidth="1" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox49" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.OffsetAmount" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" DisableExpress="(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount) ==0.00 " Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                            <div align="right">
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox68" runat="server" XDataBind="Fin_ClaimingExpenses.LoanAmount" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="sum(Fin_ClaimingExpenses_LoanInfo.Remain)"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox73" runat="server" XDataBind="Fin_ClaimingExpenses.Amount_Running" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" Express="sum(Fin_ClaimingExpenses_LoanInfo.RunningAmount)"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <div align="center">
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox123" runat="server" XDataBind="qq" width="100%" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1" Express="Fin_ClaimingExpenses.LoanAmount - Fin_ClaimingExpenses.Amount_Running"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid">
                            <div align="right">
                                <aspxform:XLabel id="XLabel57" runat="server" text="合计" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="antiquewhite">
                            <aspxform:XTextBox id="XTextBox124" runat="server" XDataBind="Fin_ClaimingExpenses.LoanTotal" BackColor="AntiqueWhite" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" Express="sum(Fin_ClaimingExpenses_LoanInfo.OffsetAmount)" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress="qq == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="145" height="24">
                            <aspxform:XLabel id="XLabel76" runat="server" text="请选择是否冲抵个人借款" Width="137px" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="587">
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="Fin_Applicant.PersonalLoan" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" DisableExpress="qq == 0" Display="None" ErrorMessage="您个人借款明细中有待冲抵的款项，请选择是否冲抵！" ControlToValidate="XRadioButtonList3" ValidationGroup="Star">请选择是否冲抵个人借款</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator21" runat="server" DisableExpress='Fin_Applicant.PersonalLoan !="是"' Display="None" ErrorMessage="您选择了冲抵个人借款,请填写冲抵金额" ControlToValidate="XTextBox124" ValidationGroup="Star" Height="11px" Type="Double" Operator="GreaterThan" ValueToCompare="0.01">本次冲抵金额</aspxform:XCompareValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress='Global.StepName !=""&amp;&amp;Global.StepName !="开始"'>
                <tbody>
                    <tr>
                        <td align="right" width="91" height="25">
                            <aspxform:XLabel id="XLabel77" runat="server" text="注意:" Font-Bold="True" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td width="643">
                            <aspxform:XLabel id="XLabel94" runat="server" Font-Size="Larger" text="①销售代理费单据②1万元以上的业务招待费单据③金额在2万元以上的其它单据需要总裁书面签批" Width="588px"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2" height="23">
                            <aspxform:XLabel id="XLabel60" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="2" height="55">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="2" height="32">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="100%" BorderWidth="1" BorderColor="#dcdcdc" PrintOut="False" CssClass="AA"></aspxform:XSignTrace>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: white 1px solid" valign="bottom" align="right" width="200" height="26">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" Width="80px" HiddenExpress="Global.StepName =='开始'" Height="20px" PageFooterFormat="提交人:________部门负责人:________初审人:________电子流检查:________总裁审批:________" PageHeaderFormat="\t"></aspxform:XPrintButton>
                        </td>
                        <td class="NoPadding" style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" valign="bottom" align="left" width="534">
                            <table cellspacing="0" cellpadding="0" border="0">
                                <tbody>
                                    <tr>
                                        <td width="406" height="24">
                                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->Fin_Applicant.Dept" ProcessBtnCssClass="a" SystemBtnCssClass="a" DorpDownListCssClass="b"></aspxform:XProcessButtonList>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress='Global.StepName !="财务审核"'>
                <tbody>
                    <tr>
                        <td align="right" width="655" height="25">
                            <aspxform:XLabel id="XLabel61" runat="server" text="是否邮件通知提交人" ForeColor="Red"></aspxform:XLabel>
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
            <aspxform:XCompareValidator id="XCompareValidator4" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="结束日期不能小于开始日期" ControlToValidate="XDateTimePicker3" ValidationGroup="Star" Type="Date" Operator="GreaterThanEqual" ControlToCompare="XDateTimePicker2">结束日期大于开始日期</aspxform:XCompareValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="开始地点不能为空！" ControlToValidate="XTextBox6" ValidationGroup="Star">开始地点验证</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" tabIndex="1" runat="server" DisableExpress="Fin_ClaimingExpenses.Country=='大陆以外地区'" Display="None" ErrorMessage="到达地点不能为空！" ControlToValidate="XTextBox10" ValidationGroup="Star">到达地点验证</aspxform:XRequiredFieldValidator>
            <aspxform:XRangeValidator id="XRangeValidator12" runat="server" Display="None" ErrorMessage="总金额必须大于0小于100万" ControlToValidate="XTextBox33" ValidationGroup="Star" Type="Double" MaximumValue="999999.99" MinimumValue="0.01">合计金额出错</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator11" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox88" ValidationGroup="Star" Type="Double" MaxValueExpress="var9+var9*0.05" MinValueExpress="var9-var9*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator10" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox84" ValidationGroup="Star" Type="Double" MaxValueExpress="var7+var7*0.05" MinValueExpress="var7-var7*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator9" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox80" ValidationGroup="Star" Type="Double" MaxValueExpress="var6+var6*0.05" MinValueExpress="var6-var6*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator8" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox77" ValidationGroup="Star" Type="Double" MaxValueExpress="var5+var5*0.05" MinValueExpress="var5-var5*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator7" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox13" ValidationGroup="Star" Type="Double" MaxValueExpress="var4+var4*0.05" MinValueExpress="var4-var4*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator6" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox108" ValidationGroup="Star" Type="Double" MaxValueExpress="var8+var8*0.05" MinValueExpress="var8-var8*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator5" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox106" ValidationGroup="Star" Type="Double" MaxValueExpress="var3+var3*0.05" MinValueExpress="var3-var3*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator4" runat="server" Width="26px" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox103" ValidationGroup="Star" Type="Double" MaxValueExpress="var2+var2*0.05" MinValueExpress="var2-var2*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XRangeValidator id="XRangeValidator3" runat="server" Display="None" ErrorMessage="汇率超出范围了！" ControlToValidate="XTextBox56" ValidationGroup="Star" Type="Double" MaxValueExpress="var1+var1*0.05" MinValueExpress="var1-var1*0.05">汇率</aspxform:XRangeValidator>
            <aspxform:XCompareValidator id="XCompareValidator16" runat="server" Display="None" ErrorMessage="冲抵金额超出了可冲抵的借款金额！" ControlToValidate="XTextBox49" ValidationGroup="Star" Type="Double" Operator="LessThanEqual" ValueToCompareExpress="varloan">每单冲抵验证</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator17" runat="server" Display="None" ErrorMessage="冲抵总额不能大于报销总额！" ControlToValidate="XTextBox124" ValidationGroup="Star" Type="Double" Operator="LessThanEqual" ControlToCompare="XTextBox33">冲抵总额大于报销总额</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator18" runat="server" Display="None" ErrorMessage="打款金额和冲账金额相加必须等于报销金额" ControlToValidate="XTextBox26" ValidationGroup="Dakuan" Type="Double" ValueToCompareExpress="vardakuan">打款冲账报销检验</aspxform:XCompareValidator>
            <table cellspacing="0" cellpadding="0" width="738" border="0">
                <tbody>
                    <tr>
                        <td width="234" height="14">
                        </td>
                        <td width="450">
                        </td>
                        <td width="48">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" height="136">
                            <p>
                                <aspxform:XLabel id="XLabel63" runat="server" Font-Size="Medium" ForeColor="Red" Text="差旅报销注意事项:" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel71" runat="server" text="1. 提交后请在系统的“历史申请”中将此单打印作为报销单封面附于原始单据前转交至财务部审核。" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel73" runat="server" text="2. “代理人”为此次报销事项的经办人；“申请人”为最终责任人；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel102" runat="server" text="3. 若“个人借款明细”中的“剩余借款”大于0，请选择“预计还款/报销日期”最早的项目来进行冲抵；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XLabel id="XLabel103" runat="server" text="在“本次冲抵金额”中填写冲抵金额，此金额应小于或等于本次报销的金额；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp; 
                                <aspxform:XLabel id="XLabel104" runat="server" text="如不冲抵则无法报销；" PrintOut="False"></aspxform:XLabel>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
