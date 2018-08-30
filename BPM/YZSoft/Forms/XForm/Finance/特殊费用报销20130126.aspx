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
                                    <aspxform:XLabel id="XLabel13" runat="server" Font-Bold="True" Font-Size="Medium" text="特殊费用报销单" Font-Names="Tahoma"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td width="20%">
                            <aspxform:XLabel id="XLabel59" runat="server" Font-Size="Small" Font-Names="Arial Black" XDataBind="Fin_Applicant.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" colspan="3" height="33">
                            <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XLabel id="XLabel60" runat="server" text="附件共"></aspxform:XLabel>
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
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="112" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="_Location" runat="server" text="申请日期" ForeColor="Gray"></aspxform:XLabel>
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font face="Arial" size="2"></font></span></span></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="264" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="Fin_Applicant.AppDate" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="112" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel1" runat="server" text="申请单号" ForeColor="Gray"></aspxform:XLabel>
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="263" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="Fin_Applicant.SN" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2" height="24">
                            <span class="MsoCommentReference"><span lang="EN-US" style="FONT-SIZE: 10.5pt; FONT-FAMILY: 'Times New Roman','serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><font style="BACKGROUND-COLOR: #d1dedf" face="Verdana" color="black" size="2">
                            <aspxform:XLabel id="XLabel66" runat="server" text="申请人"></aspxform:XLabel>
                            </font></span></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2">
                            <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><font color="black">
                            <aspxform:XLabel id="XLabel2" runat="server" text="代理人"></aspxform:XLabel>
                            </font></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel24" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="Fin_Applicant.Applicant" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel26" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                            <span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="Fin_Applicant.Sub_Name" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <aspxform:XLabel id="XLabel25" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="Fin_Applicant.Dept" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                            <aspxform:XLabel id="XLabel27" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="Fin_Applicant.Sub_Dept" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" align="middle" bgcolor="#ffffff" colspan="2" height="23">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="Fin_Applicant.HRID" width="10px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="Fin_Applicant.Sub_HRID" width="10px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="Fin_ClaimingExpenses.Bank_Name" BorderStyle="Dotted" width="12px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="Fin_ClaimingExpenses.NR" width="18px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="Fin_ClaimingExpenses.PayTotal" width="15px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <aspxform:XLabel id="XLabel77" runat="server" text="是否为质量费用" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td>
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="Fin_Applicant.QualityYN" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ValidationGroup="Star" ControlToValidate="XRadioButtonList3" ErrorMessage="请选择是否为质量费用报销！" Display="None">质量费用</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" align="middle" bgcolor="white" colspan="6">
                            <table cellspacing="0" cellpadding="0" width="738" border="0" dynamicarea="1,1" hiddenexpress="Fin_Applicant.QualityYN!='是'">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                                            <aspxform:XLabel id="XLabel3" runat="server" text="订单/项目" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="Fin_Applicant.QualityProject" BorderWidth="1" BorderColor="#F0F0F0"></aspxform:XTextBox>
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
                                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="Fin_Applicant.QualityReason" BorderWidth="1" BorderColor="#F0F0F0"></aspxform:XTextBox>
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
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="3" height="26">
                            <font face="Arial" color="black">
                            <aspxform:XLabel id="XLabel57" runat="server" text="报销明细"></aspxform:XLabel>
                            </font></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="100" bgcolor="#d1dedf">
                            <div align="right">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="155" bgcolor="transparent" height="25">
                            <div align="center">
                            </div>
                            <div align="center">
                                <aspxform:XLabel id="XLabel10" runat="server" text="费用类别" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" colspan="2">
                            <div align="center">
                                <aspxform:XLabel id="XLabel19" runat="server" text="用途" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel20" runat="server" text="金额总计" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="Fin_CE_S_Info.Type" Width="140px" DataMap="Name->Fin_CE_S_Info.T_Name" XDataSource="TableName:Fin_R_KM" DisplayColumn="Name" ValueColumn="NO" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="Fin_CE_S_Info.T_Name" BorderStyle="Dotted" width="10px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="Fin_CE_S_Info.UseFor" DisableBehavior="ReadOnly" width="470px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="antiquewhite">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="Fin_CE_S_Info.Amount" DisableBehavior="ReadOnly" BackColor="AntiqueWhite" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="sum(Fin_CE_MangerInfo.Amount)" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="transparent" height="24">
                            <div align="right"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt">
                                <aspxform:XLabel id="XLabel67" runat="server" text="币种"></aspxform:XLabel>
                                </span></span></span>
                            </div>
                        </td>
                        <td width="252">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="Fin_ClaimingExpenses.Unit" Width="138px" DataMap="Rate->Fin_ClaimingExpenses.Rate" XDataSource="TableName:Fin_R_Rate" DisplayColumn="Unit" ValueColumn="Unit_EN" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td width="220">
                            <div align="right"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 10pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt">
                                <aspxform:XLabel id="XLabel53" runat="server" text="报销金额(中文大写)" ForeColor="Gray"></aspxform:XLabel>
                                </span></span></span>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <div align="right">
                                <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="Fin_ClaimingExpenses.PayAmount_EN" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="javascript('tocapital',Fin_CE_S_Info.Amount)"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="4">
                            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="100%" border="0">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: medium none" width="153">
                                            <aspxform:XLabel id="XLabel63" runat="server" text="收款单位(需要付款时填写)" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-TOP: 1px solid" width="191">
                                            <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="Fin_Payee.Payee" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid" width="187">
                                            <aspxform:XLabel id="XLabel65" runat="server" text="收款单位账号（需要付款时填写）" ForeColor="Gray"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-TOP: 1px solid" width="193">
                                            <aspxform:XTextBox id="XTextBox36" runat="server" XDataBind="Fin_Payee.Account" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-RIGHT: 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none">
                                        </td>
                                        <td style="BORDER-BOTTOM: medium none">
                                        </td>
                                        <td style="BORDER-RIGHT: 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" align="right">
                                            <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="Fin_ClaimingExpenses.Rate" width="31px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1"></aspxform:XTextBox>
                                            <aspxform:XLabel id="XLabel68" runat="server" text="合计(人民币)" Width="76px" HiddenExpress='Fin_ClaimingExpenses.Unit =="RMB"'></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none">
                                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="RenMinBiAll" DisableBehavior="ReadOnly" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="180px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Express="Fin_ClaimingExpenses.Rate * Fin_CE_S_Info.Amount" HiddenExpress='Fin_ClaimingExpenses.Unit =="RMB"' Height="22px"></aspxform:XTextBox>
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
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="106" bgcolor="white" height="24">
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                            <aspxform:XLabel id="XLabel64" runat="server" text="收款单位开户行" Width="86px"></aspxform:XLabel>
                            </span></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="253" bgcolor="#f0f0f0">
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                            <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="Fin_Payee.BankName" width="208px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            </span></span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" align="middle" width="71">
                            <aspxform:XLabel id="XLabel73" runat="server" text="账号所属省"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="98" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="Fin_Payee.App_Bank_Province" Width="96px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False">广东省</aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" align="middle" width="52">
                            <aspxform:XLabel id="XLabel74" runat="server" text="所属市"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="138" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="Fin_Payee.App_Bank_City" width="98px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Height="22px">深圳市</aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="106" height="24">
                            <aspxform:XLabel id="XLabel4" runat="server" text="是否需要打款" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="253" bgcolor="#f0f0f0">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="Fin_ClaimingExpenses.DK_State" Width="100%" RepeatDirection="Horizontal">
                                <asp:ListItem>需要</asp:ListItem>
                                <asp:ListItem>不需要</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" align="right" width="228">
                            <aspxform:XLabel id="XLabel12" runat="server" text="打款金额" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="138" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="Fin_ClaimingExpenses.DK_Amount" width="136px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Express="varvarloan-if(Fin_ClaimingExpenses.LoanTotal=='',0.00,Fin_ClaimingExpenses.LoanTotal)" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress="Global.StepName!='准备打款'&amp;&amp;Global.StepName!='财务审核'">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="106" bgcolor="white" height="24">
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                            <aspxform:XLabel id="XLabel11" runat="server" text="所属公司" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="625" bgcolor="#f0f0f0">
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="Fin_Applicant.Company" XDataSource="TableName:Fin_R_Company" DisplayColumn="Name" ValueColumn="Code">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress="Global.StepName!='准备打款'&amp;&amp;Global.StepName!='财务审核'">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: medium none" width="106" height="24">
                            <aspxform:XLabel id="XLabel5" runat="server" text="付款银行" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="625" bgcolor="#f0f0f0">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="Fin_ClaimingExpenses.Bank_Account" DataMap="Name->Fin_ClaimingExpenses.Bank_Name" XDataSource="TableName:Fin_R_Cash" DisplayColumn="Name" ValueColumn="No" Express="10021400">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="106" bgcolor="white" height="24">
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                            <aspxform:XLabel id="XLabel7" runat="server" text="收款人账号" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="625" bgcolor="#f0f0f0">
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="Fin_ClaimingExpenses.App_Account" XDataSource="TableName:Fin_R_Account_PB;Filter:HRID->Fin_Applicant.HRID" DisplayColumn="Account" ValueColumn="Account">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="106" bgcolor="white" height="24">
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                            <aspxform:XLabel id="XLabel56" runat="server" text="附件" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="625" bgcolor="#f0f0f0">
                            <span lang="EN-US" style="FONT-SIZE: 9pt; FONT-FAMILY: 'Arial','sans-serif'; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="Fin_ClaimingExpenses.Attachment"></aspxform:XMSNAttachments>
                            </span></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="3" height="25">
                            <aspxform:XLabel id="XLabel15" runat="server" text="审批人明细"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="113" bgcolor="#d1dedf">
                            <div align="right">
                                <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="80px" DataMap="Account->Fin_CE_MangerInfo.HRID;DisplayName->Fin_CE_MangerInfo.Name;Department->Fin_CE_MangerInfo.Dept" HiddenExpress="Global.StepName!='开始'" Height="20px" Text="选择审批人" MultiSelect="True" PrintOut="False"></aspxform:XSelectUserButton>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="163" height="24">
                            <div align="center">
                                <aspxform:XLabel id="XLabel16" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="159">
                            <div align="center">
                                <aspxform:XLabel id="XLabel17" runat="server" text="审批人姓名" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="290">
                            <div align="center">
                                <aspxform:XLabel id="XLabel22" runat="server" text="审批人部门" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid">
                            <div align="center">
                                <aspxform:XLabel id="XLabel6" runat="server" text="金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0" height="22">
                            <aspxform:XGridLineNo id="XGridLineNo3" runat="server" Width="122px" BorderWidth="1px" BorderColor="Gainsboro" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="Fin_CE_MangerInfo.HRID" BorderStyle="Dotted" width="30px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="Fin_CE_MangerInfo.Name" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="Fin_CE_MangerInfo.Dept" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="antiquewhite">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="Fin_CE_MangerInfo.Amount" BackColor="AntiqueWhite" BorderStyle="Groove" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" bgcolor="#d1dedf" colspan="4" height="27">
                            <aspxform:XTextBox id="XTextBox39" runat="server" XDataBind="varvarloan" width="115px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="RenMinBiAll -SUM(if(Fin_CE_Pay_Info.State==1,if(Fin_CE_Pay_Info.OffsetAmount=='',0,Fin_CE_Pay_Info.OffsetAmount),0))-SUM(if(Fin_CE_Pay_C_Info.State==1,if(Fin_CE_Pay_C_Info.OffsetAmount=='',0,Fin_CE_Pay_C_Info.OffsetAmount),0))" Format="type:currency;.2" DisableExpress="1"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="vardakuan" width="115px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="varvarloan-if(Fin_ClaimingExpenses.LoanTotal=='',0.00,Fin_ClaimingExpenses.LoanTotal)" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" dynamicarea="2,1" datamap="SN->Fin_ClaimingExpenses_LoanInfo.LoanSN;Amount->Fin_ClaimingExpenses_LoanInfo.LoanAmount;Remain->Fin_ClaimingExpenses_LoanInfo.Remain;Reason->Fin_ClaimingExpenses_LoanInfo.Reason;Date->Fin_ClaimingExpenses_LoanInfo.Date;RunningAmount->Fin_ClaimingExpenses_LoanInfo.RunningAmount">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" colspan="8" height="24">
                            <font face="Arial" color="black">
                            <aspxform:XLabel id="XLabel58" runat="server" text="个人借款明细"></aspxform:XLabel>
                            <div align="center">
                            </div>
                            </font></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="42" bgcolor="transparent" height="26">
                            <div align="center">
                                <aspxform:XLabel id="XLabel30" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="100" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel37" runat="server" text="借款单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="77" bgcolor="transparent">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel39" runat="server" text="剩余借款" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="100" bgcolor="transparent">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel14" runat="server" text="在途审批金额" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="102" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel38" runat="server" text="剩余需冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="115">
                            <div align="center">
                                <aspxform:XLabel id="XLabel49" runat="server" text="事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="99" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel18" runat="server" text="预计还款报销日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="78" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel50" runat="server" text="本次冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo5" runat="server" Width="100%" BorderWidth="1" BorderColor="#DCDCDC">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanSN" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox42" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Remain" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.RunningAmount" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="98px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox38" runat="server" XDataBind="varloan" BorderStyle="None" width="80px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Express="(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount)" Format="type:currency;.2"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox41" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanAmount" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="15px" BorderWidth="1" BorderColor="#DCDCDC" Format="type:currency;.2" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox43" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Reason" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.0.245:8085/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Date" Width="96px" ReadOnly="True" BorderWidth="1px" BorderColor="Gainsboro" XSubType="date" XType="datetime" DisableExpress="1"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.OffsetAmount" DisableBehavior="ReadOnly" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Format="type:currency;.2" DisableExpress='(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount) ==0.00  ||Fin_ClaimingExpenses.Unit!="RMB" '></aspxform:XTextBox>
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
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="Fin_ClaimingExpenses.LoanAmount" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="sum(Fin_ClaimingExpenses_LoanInfo.Remain)" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="Fin_ClaimingExpenses.Amount_Running" DisableBehavior="ReadOnly" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="sum(Fin_ClaimingExpenses_LoanInfo.RunningAmount)" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                        </td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="qq" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="Fin_ClaimingExpenses.LoanAmount - Fin_ClaimingExpenses.Amount_Running" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid">
                            <div align="right">
                                <aspxform:XLabel id="XLabel51" runat="server" text="合计" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="Fin_ClaimingExpenses.LoanTotal" DisableBehavior="ReadOnly" BackColor="AntiqueWhite" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Express="sum(Fin_ClaimingExpenses_LoanInfo.OffsetAmount)" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress="qq == 0">
                <tbody>
                    <tr>
                        <td style="BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="145" height="24">
                            <aspxform:XLabel id="XLabel44" runat="server" text="请选择是否冲抵个人借款" Width="137px" ForeColor="Red"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="587">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="Fin_Applicant.PersonalLoan" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ValidationGroup="Star" ControlToValidate="XRadioButtonList2" ErrorMessage="您个人借款明细中有待冲抵的款项，请选择是否冲抵！" Display="None" DisableExpress="qq == 0">请选择是否冲抵个人借款</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator5" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox45" ErrorMessage="您选择了冲抵个人借款,请填写冲抵金额" Display="None" Height="11px" DisableExpress='Fin_Applicant.PersonalLoan !="是"' Type="Double" ValueToCompareExpress="bb" Operator="GreaterThan" ValueToCompare="0.01">本次冲抵金额</aspxform:XCompareValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" dynamicarea="2,1" datamap="SN->Fin_CE_Pay_Info.PaySN;Payee->Fin_CE_Pay_Info.Payee;Amount_GZ->Fin_CE_Pay_Info.Amount;Date->Fin_CE_Pay_Info.Date;Reason->Fin_CE_Pay_Info.Reason" xdatasource="TableName:V_Fin_Pay_Info_CE;Filter:HRID->Fin_Applicant.HRID,Unit->Fin_ClaimingExpenses.Unit">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" colspan="7" height="24">
                            <font face="Arial" color="black">
                            <aspxform:XLabel id="XLabel21" runat="server" text="付公司挂个人往来明细"></aspxform:XLabel>
                            </font></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="39" bgcolor="transparent" height="24">
                            <div align="center">
                                <aspxform:XLabel id="XLabel29" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="92" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel31" runat="server" text="付费单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="151" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel32" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="100" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel33" runat="server" text="预计取回发票日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="160" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel34" runat="server" text="付款事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="81" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel35" runat="server" text="金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="93" bgcolor="transparent">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel40" runat="server" text="本次冲抵" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Width="100%" BorderWidth="1" BorderColor="#DCDCDC">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="Fin_CE_Pay_Info.PaySN" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="Fin_CE_Pay_Info.Payee" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="Fin_CE_Pay_Info.Date" Width="96px" BorderWidth="1" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="Fin_CE_Pay_Info.Reason" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="Fin_CE_Pay_Info.Amount" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <div align="center">
                                <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="Fin_CE_Pay_Info.State" Text=" "></aspxform:XCheckBox>
                                <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="Fin_CE_Pay_Info.OffsetAmount" width="69px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Format="type:currency;.2" DisableExpress="if(Fin_CE_Pay_Info.State==1,0,1)"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" dynamicarea="2,1" datamap="SN->Fin_CE_Pay_C_Info.PaySN;Payee->Fin_CE_Pay_C_Info.Payee;Amount_GZ->Fin_CE_Pay_C_Info.Amount;Date->Fin_CE_Pay_C_Info.Date;Reason->Fin_CE_Pay_C_Info.Reason" xdatasource="TableName:V_Fin_Pay_C_Info_CE;Filter:HRID->Fin_Applicant.HRID,Unit->Fin_ClaimingExpenses.Unit">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" colspan="7" height="24">
                            <aspxform:XLabel id="XLabel23" runat="server" text="付公司挂单位往来明细"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" width="39" height="27">
                            <div align="center">
                                <aspxform:XLabel id="XLabel28" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="94">
                            <div align="center">
                                <aspxform:XLabel id="XLabel36" runat="server" text="付费单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="149">
                            <div align="center">
                                <aspxform:XLabel id="XLabel41" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="102">
                            <div align="center">
                                <aspxform:XLabel id="XLabel42" runat="server" text="预计取回发票日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="159">
                            <div align="center">
                                <aspxform:XLabel id="XLabel43" runat="server" text="付款事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="80">
                            <div align="center">
                                <aspxform:XLabel id="XLabel45" runat="server" text="金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" width="93">
                            <div align="center">
                                <aspxform:XLabel id="XLabel46" runat="server" text="本次冲抵" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="100%" BorderWidth="1" BorderColor="#DCDCDC">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="Fin_CE_Pay_C_Info.PaySN" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox34" runat="server" XDataBind="Fin_CE_Pay_C_Info.Payee" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="Fin_CE_Pay_C_Info.Date" Width="96px" BorderWidth="1" BorderColor="#DCDCDC" DisableExpress="1"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox46" runat="server" XDataBind="Fin_CE_Pay_C_Info.Reason" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <aspxform:XTextBox id="XTextBox49" runat="server" XDataBind="Fin_CE_Pay_C_Info.Amount" BackColor="White" BorderStyle="None" ReadOnly="True" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #d1dedf 1px solid" bgcolor="white">
                            <div align="center">
                                <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="Fin_CE_Pay_C_Info.State" Text=" "></aspxform:XCheckBox>
                                <aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="Fin_CE_Pay_C_Info.OffsetAmount" width="65px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Format="type:currency;.2" DisableExpress="if(Fin_CE_Pay_C_Info.State==1,0,1)"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress='Global.StepName !=""&amp;&amp;Global.StepName !="开始"'>
                <tbody>
                    <tr>
                        <td align="right" width="91" height="25">
                            <aspxform:XLabel id="XLabel70" runat="server" Font-Bold="True" text="注意:" ForeColor="Red"></aspxform:XLabel>
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
                            <aspxform:XLabel id="XLabel47" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="2" height="55">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" width="100%" BorderWidth="1" BorderColor="#DCDCDC" PrintOut="False" Rows="3" TextMode="MultiLine"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid" colspan="2" height="32">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="100%" BorderWidth="1" BorderColor="#dcdcdc" CssClass="AA"></aspxform:XSignTrace>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: white 1px solid" valign="bottom" align="right" width="200" height="26">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" Width="80px" HiddenExpress="Global.StepName =='开始'" Height="20px" PageHeaderFormat="\t" PageFooterFormat="提交人:________部门负责人:________初审人:________电子流检查:________总裁审批:________"></aspxform:XPrintButton>
                        </td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" valign="bottom" align="left" width="534">
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
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="738" border="0" hiddenexpress='Global.StepName !="财务审核"'>
                <tbody>
                    <tr>
                        <td align="right" width="655" height="25">
                            <aspxform:XLabel id="XLabel69" runat="server" text="是否邮件通知提交人" ForeColor="Red"></aspxform:XLabel>
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
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ValidationGroup="Reject" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写拒绝理由！" Display="None">拒绝验证</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ValidationGroup="Return" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写退回意见！" Display="None">退回重填验证</aspxform:XRequiredFieldValidator>
            <aspxform:XCompareValidator id="XCompareValidator1" runat="server" ControlToValidate="XTextBox45" ErrorMessage="冲抵总额不能大于可冲抵额！" Display="None" Enabled="False" Type="Double" ValueToCompareExpress="Fin_ClaimingExpenses.LoanAmount-Fin_ClaimingExpenses.Amount_Running" Operator="LessThanEqual">冲抵总额验证</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator2" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox44" ErrorMessage="冲抵金额超出了借款！" Display="None" Type="Double" ValueToCompareExpress="varloan" Operator="LessThanEqual">每单冲抵额验证</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator3" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox45" ErrorMessage="冲抵总额不能大于报销总额！" Display="None" Type="Double" ValueToCompareExpress="varvarloan" Operator="LessThanEqual">冲抵总额大于报销总额验证</aspxform:XCompareValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox10" ErrorMessage="用途不能为空" Display="None">用途不能为空</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox18" ErrorMessage="金额不能为空" Display="None">金额不能为空</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox24" ErrorMessage="请选择审批人" Display="None">请选择审批人</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox25" ErrorMessage="请选择审批人" Display="None">请选择审批人</aspxform:XRequiredFieldValidator>
            <aspxform:XCompareValidator id="XCompareValidator4" runat="server" ValidationGroup="Dakuan" ControlToValidate="XTextBox26" ErrorMessage="打款金额和冲账金额相加必须等于报销金额" Display="None" Type="Double" ValueToCompareExpress="vardakuan">打款冲账报销检验</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator6" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox32" ErrorMessage="冲抵金额超出" Display="None" Type="Double" ValueToCompareExpress="Fin_CE_Pay_Info.Amount" Operator="LessThanEqual">冲抵金额超出</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator7" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox52" ErrorMessage="冲抵金额超出" Display="None" Type="Double" ValueToCompareExpress="Fin_CE_Pay_C_Info.Amount" Operator="LessThanEqual">冲抵金额超出</aspxform:XCompareValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox32" ErrorMessage="冲抵金额不能为空" Display="None" DisableExpress="Fin_CE_Pay_Info.State!=1">冲抵金额不能为空</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ValidationGroup="Star" ControlToValidate="XTextBox52" ErrorMessage="冲抵金额不能为空" Display="None" DisableExpress="Fin_CE_Pay_C_Info.State!=1">冲抵金额不能为空</aspxform:XRequiredFieldValidator>
            <table cellspacing="0" cellpadding="0" width="738" border="0">
                <tbody>
                    <tr>
                        <td width="242" height="19">
                        </td>
                        <td width="466">
                        </td>
                        <td width="50">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" height="162">
                            <p>
                                <aspxform:XLabel id="XLabel48" runat="server" Font-Size="Medium" ForeColor="Red" Text="特殊报销注意事项:" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel52" runat="server" text="1. 提交后请在系统的“历史申请”中将此单打印作为报销单封面附于原始单据前转交至财务部审核。" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel54" runat="server" text="2. “代理人”为此次报销事项的经办人；“申请人”为最终责任人；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel55" runat="server" text="3. 请在“用途”栏写明报销事项；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel71" runat="server" text="4. 若“个人借款明细”中的“剩余借款”大于0，请选择“预计还款/报销日期”最早的项目来进行冲抵；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;
                                <aspxform:XLabel id="XLabel72" runat="server" text=" 在“本次冲抵金额”中填写冲抵金额，此金额应小于或等于本次报销的金额；" PrintOut="False"></aspxform:XLabel>
                            </p>
                            <p>
                                &nbsp;&nbsp;&nbsp;
                                <aspxform:XLabel id="XLabel75" runat="server" text="如不冲抵则无法报销；" PrintOut="False"></aspxform:XLabel>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
