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
    <form runat="server">
        <!-- Insert content here -->
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="38" width="20%">
                        <div align="center">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                        </div>
                    </td>
                    <td width="60%">
                        <div align="center">
                            <aspxform:XLabel id="XLabel11" runat="server" Font-Bold="True" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium"></aspxform:XLabel>
                        </div>
                    </td>
                    <td width="20%">
                        <aspxform:XLabel id="XLabel59" runat="server" Font-Names="Arial Black" Font-Size="Small" XDataBind="Fin_Applicant.SN"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="33" colspan="3">
                        <div align="center">
                            <aspxform:XLabel id="XLabel13" runat="server" Font-Bold="True" Font-Names="Tahoma" text="差旅报销单" Font-Size="Medium"></aspxform:XLabel>
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
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" width="15%">
                        <aspxform:XLabel id="_Location" runat="server" text="申请日期" ForeColor="Gray"></aspxform:XLabel>
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial"></font></span></span></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="35%">
                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="Fin_Applicant.AppDate" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="15%">
                        <aspxform:XLabel id="XLabel1" runat="server" text="申请单号" ForeColor="Gray"></aspxform:XLabel>
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="35%">
                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="Fin_Applicant.SN" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#e0efe6" height="24" colspan="2">
                        <aspxform:XLabel id="PerInfo" runat="server" text="申请人"></aspxform:XLabel>
                        <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#e0efe6" colspan="2">
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><font color="black">
                        <aspxform:XLabel id="XLabel2" runat="server" text="代理人"></aspxform:XLabel>
                        </font></span></td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                        <aspxform:XLabel id="XLabel24" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="Fin_Applicant.Applicant" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <aspxform:XLabel id="XLabel26" runat="server" text="姓名" ForeColor="Gray"></aspxform:XLabel>
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="Fin_Applicant.Sub_Name" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                        <aspxform:XLabel id="XLabel25" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="Fin_Applicant.Dept" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <aspxform:XLabel id="XLabel27" runat="server" text="部门" ForeColor="Gray"></aspxform:XLabel>
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="Fin_Applicant.Sub_Dept" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#ffffff" height="36" colspan="4">
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="Fin_Applicant.HRID" BorderColor="Gainsboro" BorderWidth="1px" width="39px" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="Fin_Applicant.Sub_HRID" BorderColor="Gainsboro" BorderWidth="1px" width="41px" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True" Height="22px"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="Fin_ClaimingExpenses.PersonType" BorderColor="Gainsboro" BorderWidth="1px" width="45px" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True" Height="22px"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="Fin_ClaimingExpenses.Bank_Name" BorderColor="Gainsboro" BorderWidth="1px" width="52px" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="Fin_ClaimingExpenses.NR" BorderColor="Gainsboro" BorderWidth="1px" width="68px" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="15%">
                        <aspxform:XLabel id="XLabel22" runat="server" text="出差国家" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="85%">
                        <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="Fin_ClaimingExpenses.Country" RepeatDirection="Horizontal" Width="334px">
                            <asp:ListItem Selected="True">境内</asp:ListItem>
                            <asp:ListItem>境外</asp:ListItem>
                        </aspxform:XRadioButtonList>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764" hiddenexpress="Fin_ClaimingExpenses.Country=='境外'" dynamicarea="1,4">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" width="112">
                        <aspxform:XLabel id="XLabel17" runat="server" text="差旅报销明细" ForeColor="Black"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="3">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="250">
                        <div align="right">
                            <aspxform:XAddBlockButton id="XAddBlockButton3" runat="server" Height="20px" Width="80px" PrintOut="False" Text="添加行" TableName="Fin_CE_TE_Info"></aspxform:XAddBlockButton>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2">
                        <div align="right">
                            <div align="center">
                                <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Font-Size="X-Large" XDataBind="var" BorderColor="Gainsboro" BorderWidth="1px" BorderStyle="None" Height="100%" Width="85px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                            </div>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" width="77">
                        <div align="right">
                            <aspxform:XLabel id="XLabel15" runat="server" text="出发日期" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="232">
                        <aspxform:XDateTimePicker id="XDateTimePicker4" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE_Info.StarDate" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" Width="120px" XType="datetime" XSubType="date" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                        <aspxform:XTextBox id="XTextBox89" runat="server" XDataBind="Fin_CE_TE_Info.ZS_Per" BorderColor="Gainsboro" BorderWidth="1px" width="60px" ReadOnly="True" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True" TextAlign="Right"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="77">
                        <p align="right">
                            <aspxform:XLabel id="XLabel35" runat="server" text="离开日期" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </p>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE_Info.EndDate" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" Width="120px" XType="datetime" XSubType="date" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                        <p align="right">
                            &nbsp;&nbsp;<aspxform:XLabel id="XLabel41" runat="server" text="出发地点" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </p>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="Fin_CE_TE_Info.City_Star" BorderColor="Gainsboro" BorderWidth="1px" width="120px" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        <aspxform:XCustomBrowserButton id="XCustomBrowserButton1" runat="server" Width="21px" PrintOut="False" DataMap="Col1->Fin_CE_TE_Info.City_Star" NavigateUrl="~\FormSupport\SelCity.aspx?cname=2" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                        <aspxform:XTextBox id="XTextBox34" runat="server" XDataBind="Fin_CE_TE_Info.C_Star" BorderColor="Gainsboro" BorderWidth="1px" width="82px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="right">
                            <aspxform:XLabel id="XLabel4" runat="server" text="到达地点" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="Fin_CE_TE_Info.City_End" BorderColor="Gainsboro" BorderWidth="1px" width="120px" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        <aspxform:XCustomBrowserButton id="XCustomBrowserButton2" runat="server" Width="21px" PrintOut="False" DataMap="Col1->Fin_CE_TE_Info.City_End;Col2->Fin_CE_TE_Info.ZS_Per;Col3->Fin_CE_TE_Info.BZ_Per" NavigateUrl="~\FormSupport\SelCity.aspx?cname=2" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                        <aspxform:XTextBox id="XTextBox38" runat="server" XDataBind="Fin_CE_TE_Info.C_End" BorderColor="Gainsboro" BorderWidth="1px" width="85px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" colspan="5">
                        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%" hiddenexpress="Fin_ClaimingExpenses.Country=='境外'">
                            <tbody>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="66">
                                        <div align="center">
                                            <div align="center">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel78" runat="server" text="市内交通费" ForeColor="Gray"></aspxform:XLabel>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="64">
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
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="74">
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
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="42">
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
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="86">
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
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="60">
                                        <div align="center">
                                            <div align="center">
                                                <div align="center">
                                                    <div align="center">
                                                        <aspxform:XLabel id="XLabel83" runat="server" text="出差补助" ForeColor="Gray"></aspxform:XLabel>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="57">
                                        <p align="center">
                                            <aspxform:XLabel id="XLabel84" runat="server" text="超标金额" ForeColor="Gray"></aspxform:XLabel>
                                        </p>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="200">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel85" runat="server" text="超额理由" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="87">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel9" runat="server" text="小计" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                                        <div align="center">
                                            <div align="center">
                                                <aspxform:XTextBox id="XTextBox91" runat="server" XDataBind="Fin_CE_TE_Info.Transportation" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                            </div>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <div align="center">
                                            <div align="center">
                                                <div align="center">
                                                    <aspxform:XTextBox id="XTextBox92" runat="server" XDataBind="Fin_CE_TE_Info.Airfare" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <div align="center">
                                            <aspxform:XTextBox id="XTextBox93" runat="server" XDataBind="Fin_CE_TE_Info.Fare" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
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
                                        <aspxform:XTextBox id="XTextBox94" runat="server" XDataBind="Fin_CE_TE_Info.Accommodation" BorderColor="#DCDCDC" BorderWidth="1" width="100%" HiddenExpress="Fin_ClaimingExpenses.PersonType!=1||Fin_CE_TE_Info.ZS_B!=1"></aspxform:XTextBox>
                                        <aspxform:XTextBox id="XTextBox95" runat="server" XDataBind="Fin_CE_TE_Info.ZS" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" HiddenInput="False" HiddenExpress="Fin_ClaimingExpenses.PersonType=='1'||Fin_CE_TE_Info.ZS_B!=1" Express="javascript('DateDiff',Fin_CE_TE_Info.EndDate,Fin_CE_TE_Info.StarDate)*Fin_CE_TE_Info.ZS_Per"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox96" runat="server" XDataBind="Fin_CE_TE_Info.BZ" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" HiddenInput="False" HiddenExpress="Fin_CE_TE_Info.ZS_B!=1" Express="javascript('DateDiff',Fin_CE_TE_Info.EndDate,Fin_CE_TE_Info.StarDate)*Fin_CE_TE_Info.BZ_Per"></aspxform:XTextBox>
                                        <div align="center">
                                            <aspxform:XTextBox id="XTextBox90" runat="server" XDataBind="Fin_CE_TE_Info.BZ_Per" BorderColor="Gainsboro" BorderWidth="1px" width="40px" ReadOnly="True" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox97" runat="server" XDataBind="Fin_CE_TE_Info.OverAmount" ForeColor="Red" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox98" runat="server" XDataBind="Fin_CE_TE_Info.Reason" ForeColor="Red" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="Fin_CE_TE_Info.Total" BorderColor="Gainsboro" BorderWidth="1px" width="100%" Max="0" Min="0" HiddenInput="False" Express="if(Fin_CE_TE_Info.Airfare=='',0,Fin_CE_TE_Info.Airfare)+if(Fin_CE_TE_Info.Fare=='',0,Fin_CE_TE_Info.Fare)+ if(Fin_CE_TE_Info.Transportation=='',0,Fin_CE_TE_Info.Transportation)+if(Fin_CE_TE_Info.OverAmount=='',0,Fin_CE_TE_Info.OverAmount)+if(Fin_CE_TE_Info.BZ=='',0,Fin_CE_TE_Info.BZ)+if(Fin_CE_TE_Info.ZS_B==1,if(Fin_ClaimingExpenses.PersonType=='1',if(Fin_CE_TE_Info.Accommodation=='',0,Fin_CE_TE_Info.Accommodation),Fin_CE_TE_Info.ZS),0)">0</aspxform:XTextBox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d1dedf" height="24">
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
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764" hiddenexpress="Fin_ClaimingExpenses.Country=='境外'">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="112">
                        <div align="center">
                            <aspxform:XLabel id="XLabel3" runat="server" text="终点" Font-Size="Medium" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" width="77">
                        <p align="right">
                            &nbsp;&nbsp;<aspxform:XLabel id="XLabel16" runat="server" text="出发日期" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </p>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="232">
                        <aspxform:XDateTimePicker id="XDateTimePicker9" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE.StarDate" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" Width="120px" XType="datetime" XSubType="date" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="77">
                        <p align="right">
                            <aspxform:XLabel id="XLabel10" runat="server" text="到达日期" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </p>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="250">
                        <aspxform:XDateTimePicker id="XDateTimePicker10" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE.EndDate" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" Width="120px" XType="datetime" XSubType="date" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                        <p align="right">
                            &nbsp;<aspxform:XLabel id="XLabel31" runat="server" text="出发地点" ForeColor="Gray" Width="57px"></aspxform:XLabel>
                            &nbsp;
                        </p>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="Fin_CE_TE.City_Star" BorderColor="Gainsboro" BorderWidth="1px" width="120px" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        <aspxform:XCustomBrowserButton id="XCustomBrowserButton9" runat="server" Width="21px" PrintOut="False" DataMap="Col1->Fin_CE_TE_Info.City_Star" NavigateUrl="~\FormSupport\SelCity.aspx?cname=2" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                        <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="Fin_CE_TE.C_Star" BorderColor="Gainsboro" BorderWidth="1px" width="82px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="right">
                            <aspxform:XLabel id="XLabel36" runat="server" text="到达地点" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="Fin_CE_TE.City_End" BorderColor="Gainsboro" BorderWidth="1px" width="120px" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        <aspxform:XCustomBrowserButton id="XCustomBrowserButton11" runat="server" Width="21px" PrintOut="False" DataMap="Col1->Fin_CE_TE_Info.City_End;Col2->Fin_CE_TE_Info.ZS_Per;Col3->Fin_CE_TE_Info.BZ_Per" NavigateUrl="~\FormSupport\SelCity.aspx?cname=2" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                        <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="Fin_CE_TE.C_End" BorderColor="Gainsboro" BorderWidth="1px" width="85px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" colspan="5">
                        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%" hiddenexpress="Fin_ClaimingExpenses.Country=='境外'">
                            <tbody>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="105">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel5" runat="server" text="市内交通费" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="92">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel14" runat="server" text="机票费" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="149">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel44" runat="server" text="车船费" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="159">
                                        <div align="center">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel45" runat="server" text="住宿费" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="118">
                                        <div align="center">
                                            <div align="center">
                                                <div align="center">
                                                    <aspxform:XLabel id="XLabel46" runat="server" text="出差补助" ForeColor="Gray"></aspxform:XLabel>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="118">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel40" runat="server" text="小计" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                                        <aspxform:XTextBox id="XTextBox53" runat="server" XDataBind="Fin_CE_TE.Transportation" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="Fin_CE_TE.Airfare" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox99" runat="server" XDataBind="Fin_CE_TE.Fare" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox100" runat="server" XDataBind="Fin_CE_TE.Accommodation" BorderColor="#DCDCDC" BorderWidth="1" width="100%" HiddenExpress="Fin_ClaimingExpenses.PersonType!=1"></aspxform:XTextBox>
                                        <aspxform:XTextBox id="XTextBox101" runat="server" XDataBind="Fin_CE_TE.ZS" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" HiddenInput="False" HiddenExpress="Fin_ClaimingExpenses.PersonType=='1'" Express="(javascript('DateDiff',Fin_CE_TE.EndDate,Fin_CE_TE.StarDate)+0.5)*Fin_CE_TE.ZS_per"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox102" runat="server" XDataBind="Fin_CE_TE.BZ" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" HiddenInput="False" Express="(javascript('DateDiff',Fin_CE_TE.EndDate,Fin_CE_TE.StarDate)+0.5)*Fin_CE_TE.BZ_per"></aspxform:XTextBox>
                                        <aspxform:XTextBox id="XTextBox46" runat="server" XDataBind="Fin_CE_TE.BZ_per" BorderColor="Gainsboro" BorderWidth="1px" width="14px" ReadOnly="True" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                        <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="Fin_CE_TE.ZS_per" BorderColor="Gainsboro" BorderWidth="1px" width="40px" ReadOnly="True" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="Fin_CE_TE.Total" BorderColor="Gainsboro" BorderWidth="1px" width="100%" Max="0" Min="0" HiddenInput="False">0</aspxform:XTextBox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764" hiddenexpress="Fin_ClaimingExpenses.Country=='境内'" dynamicarea="1,6">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" width="112">
                        <aspxform:XLabel id="XLabel12" runat="server" text="差旅报销明细" ForeColor="Black"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="77">
                        <font style="BACKGROUND-COLOR: #ffffff"></font></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="232">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="77">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="250" colspan="2">
                        <div align="right">
                            <div align="right">
                                <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Height="20px" Width="80px" PrintOut="False" Text="添加行" TableName="Fin_CE_TE_JW_Info"></aspxform:XAddBlockButton>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2">
                        <div align="right">
                            <div align="center">
                                <aspxform:XGridLineNo id="XGridLineNo3" runat="server" Font-Size="X-Large" XDataBind="var" BorderColor="Gainsboro" BorderWidth="1px" BorderStyle="None" Height="100%" Width="85px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                            </div>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24">
                        <div align="right">
                            <aspxform:XLabel id="XLabel18" runat="server" text="出发日期" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XDateTimePicker id="XDateTimePicker5" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE_JW_Info.StarDate" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" Width="120px" XType="datetime" XSubType="date" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <p align="right">
                            <aspxform:XLabel id="XLabel19" runat="server" text="离开日期" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </p>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                        <aspxform:XDateTimePicker id="XDateTimePicker6" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="Fin_CE_TE_JW_Info.EndDate" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" Width="120px" XType="datetime" XSubType="date" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="26">
                        <p align="right">
                            &nbsp;&nbsp;<aspxform:XLabel id="XLabel20" runat="server" text="出发地点" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </p>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="Fin_CE_TE_JW_Info.City_Star" BorderColor="Gainsboro" BorderWidth="1px" width="120px" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        <aspxform:XCustomBrowserButton id="XCustomBrowserButton5" runat="server" Width="21px" PrintOut="False" DataMap="Col1->Fin_CE_TE_JW_Info.City_Star" NavigateUrl="~\FormSupport\SelCity.aspx?cname=3" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                        <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="Fin_CE_TE_JW_Info.C_Star" BorderColor="Gainsboro" BorderWidth="1px" width="82px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="right">
                            <aspxform:XLabel id="XLabel47" runat="server" text="到达地点" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                        <aspxform:XTextBox id="XTextBox58" runat="server" XDataBind="Fin_CE_TE_JW_Info.City_End" BorderColor="Gainsboro" BorderWidth="1px" width="120px" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        <aspxform:XCustomBrowserButton id="XCustomBrowserButton6" runat="server" Width="21px" PrintOut="False" DataMap="Col1->Fin_CE_TE_JW_Info.City_End;Col2->Fin_CE_TE_JW_Info.ZS_Per;Col3->Fin_CE_TE_JW_Info.BZ_Per" NavigateUrl="~\FormSupport\SelCity.aspx?cname=1" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                        <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="Fin_CE_TE_JW_Info.C_End" BorderColor="Gainsboro" BorderWidth="1px" width="85px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="6">
                        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%">
                            <tbody>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" colspan="3">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel74" runat="server" text="机票费" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel86" runat="server" text="车船费" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="39">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel87" runat="server" text="住宿" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel88" runat="server" text="住宿费" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" colspan="3">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel89" runat="server" text="出差补助" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24" width="63">
                                        <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="Fin_CE_TE_JW_Info.Airfare" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                        <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="Fin_CE_TE_JW_Info.ZS" BorderColor="Gainsboro" BorderWidth="1px" width="6px" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                        <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="Fin_CE_TE_JW_Info.ZS_Per" BorderColor="Gainsboro" BorderWidth="1px" width="20px" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                        <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="Fin_CE_TE_JW_Info.BZ_Per" BorderColor="Gainsboro" BorderWidth="1px" width="16px" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                        <aspxform:XTextBox id="XTextBox39" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate" BorderColor="Gainsboro" BorderWidth="1px" width="14px" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="76">
                                        <aspxform:XDropDownList id="XDropDownList12" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_Air">
                                            <asp:ListItem>人民币</asp:ListItem>
                                            <asp:ListItem>美元</asp:ListItem>
                                            <asp:ListItem>欧元</asp:ListItem>
                                            <asp:ListItem>港币</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="44">
                                        <aspxform:XTextBox id="XTextBox56" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_Air" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Express="if(Fin_CE_TE_JW_Info.Unit_Air=='美元',Fin_CE_TE_JW_Info.Rate,0)"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="52">
                                        <aspxform:XTextBox id="XTextBox57" runat="server" XDataBind="Fin_CE_TE_JW_Info.Fare" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="68">
                                        <aspxform:XDropDownList id="XDropDownList13" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_Fare">
                                            <asp:ListItem>人民币</asp:ListItem>
                                            <asp:ListItem>美元</asp:ListItem>
                                            <asp:ListItem>欧元</asp:ListItem>
                                            <asp:ListItem>港币</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="45">
                                        <aspxform:XTextBox id="XTextBox103" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_Fare" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Express="if(Fin_CE_TE_JW_Info.Unit_Fare=='美元',Fin_CE_TE_JW_Info.Rate,0)"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <div align="center">
                                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="Fin_CE_TE_JW_Info.ZS_B" Text=" "></aspxform:XCheckBox>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="63">
                                        <aspxform:XTextBox id="XTextBox104" runat="server" XDataBind="Fin_CE_TE_JW_Info.Accommodation" BorderColor="#DCDCDC" BorderWidth="1" width="100%" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0"></aspxform:XTextBox>
                                        <aspxform:XTextBox id="XTextBox105" runat="server" XDataBind="Fin_CE_TE_JW_Info.ZS" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" HiddenInput="True" Express="(javascript('DateDiff',Fin_CE_TE_JW_Info.EndDate,Fin_CE_TE_JW_Info.StarDate)*Fin_CE_TE_JW_Info.ZS_Per*Fin_CE_TE_JW_Info.Rate)/Fin_CE_TE_JW_Info.Rate_ZS"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="69">
                                        <aspxform:XDropDownList id="XDropDownList14" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_ZS" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0">
                                            <asp:ListItem>人民币</asp:ListItem>
                                            <asp:ListItem>美元</asp:ListItem>
                                            <asp:ListItem>欧元</asp:ListItem>
                                            <asp:ListItem>港币</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="44">
                                        <aspxform:XTextBox id="XTextBox106" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_ZS" BorderColor="#DCDCDC" BorderWidth="1" width="100%" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0" Express="if(Fin_CE_TE_JW_Info.Unit_ZS=='美元',Fin_CE_TE_JW_Info.Rate,0)"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="46">
                                        <aspxform:XTextBox id="XTextBox107" runat="server" XDataBind="Fin_CE_TE_JW_Info.BZ" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B!=1" Express="javascript('DateDiff',Fin_CE_TE_JW_Info.EndDate,Fin_CE_TE_JW_Info.StarDate)*Fin_CE_TE_JW_Info.BZ_Per"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="68">
                                        <aspxform:XDropDownList id="XDropDownList15" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_BZ" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0" Express="if(Fin_CE_TE_JW_Info.City_End=='香港'||Fin_CE_TE_JW_Info.City_End=='澳门','港币','美元')">
                                            <asp:ListItem>人民币</asp:ListItem>
                                            <asp:ListItem Selected="True">美元</asp:ListItem>
                                            <asp:ListItem>欧元</asp:ListItem>
                                            <asp:ListItem>港币</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#f0f0f0" width="45">
                                        <aspxform:XTextBox id="XTextBox108" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_BZ" BorderColor="#DCDCDC" BorderWidth="1" width="100%" HiddenExpress="Fin_CE_TE_JW_Info.ZS_B==0" Express="if(Fin_CE_TE_JW_Info.Unit_BZ=='美元',Fin_CE_TE_JW_Info.Rate,0)"></aspxform:XTextBox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23">
                        <div align="center">
                            <aspxform:XLabel id="XLabel72" runat="server" text="超标金额" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#f0f0f0" colspan="3">
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="Fin_CE_TE_JW_Info.OverAmount" ForeColor="Red" BorderColor="Gainsboro" BorderWidth="1px" width="71px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="Fin_CE_TE_JW_Info.Unit_Over">
                            <asp:ListItem>人民币</asp:ListItem>
                            <asp:ListItem>美元</asp:ListItem>
                            <asp:ListItem>欧元</asp:ListItem>
                            <asp:ListItem>港币</asp:ListItem>
                        </aspxform:XDropDownList>
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="Fin_CE_TE_JW_Info.Rate_Over" BorderColor="Gainsboro" BorderWidth="1px" width="76px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="134">
                        <div align="right">
                            <div align="center">
                            </div>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="116">
                        <div align="right">
                            <div align="center">
                                <aspxform:XLabel id="XLabel23" runat="server" text="小计" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="39">
                        <div align="center">
                            <aspxform:XLabel id="XLabel75" runat="server" text="超额理由" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#f0f0f0" colspan="3">
                        <div align="center">
                            <aspxform:XTextBox id="XTextBox70" runat="server" XDataBind="Fin_CE_TE_JW_Info.Reason" ForeColor="Red" BorderColor="#DCDCDC" BorderWidth="1" width="100%" TextMode="MultiLine"></aspxform:XTextBox>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <div align="right">
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <div align="right">
                            <aspxform:XTextBox id="XTextBox59" runat="server" XDataBind="Fin_CE_TE_JW_Info.Total" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Express="if(Fin_CE_TE_JW_Info.Airfare=='',0,Fin_CE_TE_JW_Info.Airfare)*if(Fin_CE_TE_JW_Info.Airfare=='',0,Fin_CE_TE_JW_Info.Rate_Air)+if(Fin_CE_TE_JW_Info.Fare=='',0,Fin_CE_TE_JW_Info.Fare)*if(Fin_CE_TE_JW_Info.Fare=='',0,Fin_CE_TE_JW_Info.Rate_Fare)+if(Fin_CE_TE_JW_Info.ZS_B==1,if(Fin_CE_TE_JW_Info.Accommodation=='',0,Fin_CE_TE_JW_Info.Accommodation),0)*if(Fin_CE_TE_JW_Info.ZS_B==1,if(Fin_CE_TE_JW_Info.Accommodation=='',0,Fin_CE_TE_JW_Info.Rate_ZS),0)+if(Fin_CE_TE_JW_Info.ZS_B==1,Fin_CE_TE_JW_Info.BZ*Fin_CE_TE_JW_Info.Rate_BZ,0)+if(Fin_CE_TE_JW_Info.OverAmount=='',0,Fin_CE_TE_JW_Info.OverAmount)*if(Fin_CE_TE_JW_Info.OverAmount=='',0,Fin_CE_TE_JW_Info.Rate_Over)">0</aspxform:XTextBox>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf">
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
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764" hiddenexpress="Fin_ClaimingExpenses.Country=='境内'">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="111">
                        <div align="right">
                            <div align="center">
                                <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="Fin_CE_TE_JW.Rate" BorderColor="Gainsboro" BorderWidth="1px" width="21px" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                <aspxform:XLabel id="XLabel6" runat="server" text="终点" Font-Size="Medium" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" width="82">
                        <div align="right">
                            <aspxform:XLabel id="XLabel58" runat="server" text="出发日期" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="232">
                        <aspxform:XDateTimePicker id="XDateTimePicker7" runat="server" XDataBind="Fin_CE_TE_JW.StarDate" BorderColor="#DCDCDC" BorderWidth="1" Width="120px"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="76">
                        <p align="right">
                            <aspxform:XLabel id="XLabel62" runat="server" text="到达日期" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </p>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="251">
                        <aspxform:XDateTimePicker id="XDateTimePicker8" runat="server" XDataBind="Fin_CE_TE_JW.EndDate" BorderColor="#DCDCDC" BorderWidth="1" Width="120px"></aspxform:XDateTimePicker>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="26">
                        <p align="right">
                            &nbsp;&nbsp;<aspxform:XLabel id="XLabel65" runat="server" text="出发地点" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </p>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="Fin_CE_TE_JW.City_Star" BorderColor="Gainsboro" BorderWidth="1px" width="120px" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        <aspxform:XCustomBrowserButton id="XCustomBrowserButton8" runat="server" Width="21px" PrintOut="False" DataMap="Col1->Fin_CE_TE_JW.City_Star;Col2->Fin_CE_TE_JW.ZS_Per;Col3->Fin_CE_TE_JW.BZ_Per" NavigateUrl="~\FormSupport\SelCity.aspx?cname=1" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                        <aspxform:XTextBox id="XTextBox36" runat="server" XDataBind="Fin_CE_TE_JW.C_Star" BorderColor="Gainsboro" BorderWidth="1px" width="82px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="right">
                            <aspxform:XLabel id="XLabel66" runat="server" text="到达地点" ForeColor="Gray"></aspxform:XLabel>
                            &nbsp;
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox71" runat="server" XDataBind="Fin_CE_TE_JW.City_End" BorderColor="Gainsboro" BorderWidth="1px" width="120px" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        <aspxform:XCustomBrowserButton id="XCustomBrowserButton7" runat="server" Width="21px" PrintOut="False" DataMap="Col1->Fin_CE_TE_JW.City_End" NavigateUrl="~\FormSupport\SelCity.aspx?cname=3" Filter="Col4->Fin_ClaimingExpenses.PersonType"></aspxform:XCustomBrowserButton>
                        <aspxform:XTextBox id="XTextBox72" runat="server" XDataBind="Fin_CE_TE_JW.C_End" BorderColor="Gainsboro" BorderWidth="1px" width="85px" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" colspan="5">
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
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel95" runat="server" text="住宿费" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel96" runat="server" text="出差补助" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="46">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel70" runat="server" text="小计" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24" width="64">
                                        <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="Fin_CE_TE_JW.Airfare" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                        <aspxform:XTextBox id="XTextBox82" runat="server" XDataBind="Fin_CE_TE_JW.ZS" BorderColor="Gainsboro" BorderWidth="1px" width="14px" ReadOnly="True" BorderStyle="Dotted" BackColor="#F0F0F0" Max="0" Min="0" HiddenInput="True" Express="(javascript('DateDiff',Fin_CE_TE_JW.EndDate,Fin_CE_TE_JW.StarDate)*Fin_CE_TE_JW.ZS_Per*Fin_CE_TE_JW.Rate)/Fin_CE_TE_JW.Rate_ZS"></aspxform:XTextBox>
                                        <aspxform:XTextBox id="XTextBox85" runat="server" XDataBind="Fin_CE_TE_JW.ZS_Per" BorderColor="Gainsboro" BorderWidth="1px" width="17px" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                        <aspxform:XTextBox id="XTextBox86" runat="server" XDataBind="Fin_CE_TE_JW.BZ_Per" BorderColor="Gainsboro" BorderWidth="1px" width="19px" BorderStyle="Dotted" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="77">
                                        <aspxform:XDropDownList id="XDropDownList8" runat="server" XDataBind="Fin_CE_TE_JW.Unit_Air">
                                            <asp:ListItem>人民币</asp:ListItem>
                                            <asp:ListItem>美元</asp:ListItem>
                                            <asp:ListItem>欧元</asp:ListItem>
                                            <asp:ListItem>港币</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="44">
                                        <aspxform:XTextBox id="XTextBox77" runat="server" XDataBind="Fin_CE_TE_JW.Rate_Air" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Express="if(Fin_CE_TE_JW.Unit_Air=='美元',Fin_CE_TE_JW.Rate,0)"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="54">
                                        <aspxform:XTextBox id="XTextBox79" runat="server" XDataBind="Fin_CE_TE_JW.Fare" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="68">
                                        <div align="center">
                                            <aspxform:XDropDownList id="XDropDownList9" runat="server" XDataBind="Fin_CE_TE_JW.Unit_Fare">
                                                <asp:ListItem>人民币</asp:ListItem>
                                                <asp:ListItem>美元</asp:ListItem>
                                                <asp:ListItem>欧元</asp:ListItem>
                                                <asp:ListItem>港币</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="45">
                                        <aspxform:XTextBox id="XTextBox80" runat="server" XDataBind="Fin_CE_TE_JW.Rate_Fare" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Express="if(Fin_CE_TE_JW.Unit_Fare=='美元',Fin_CE_TE_JW.Rate,0)"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="63">
                                        <aspxform:XTextBox id="XTextBox81" runat="server" XDataBind="Fin_CE_TE_JW.Accommodation" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="69">
                                        <aspxform:XDropDownList id="XDropDownList10" runat="server" XDataBind="Fin_CE_TE_JW.Unit_ZS">
                                            <asp:ListItem>人民币</asp:ListItem>
                                            <asp:ListItem>美元</asp:ListItem>
                                            <asp:ListItem>欧元</asp:ListItem>
                                            <asp:ListItem>港币</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="44">
                                        <aspxform:XTextBox id="XTextBox84" runat="server" XDataBind="Fin_CE_TE_JW.Rate_ZS" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Express="if(Fin_CE_TE_JW.Unit_ZS=='美元',Fin_CE_TE_JW.Rate,0)"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="46">
                                        <aspxform:XTextBox id="XTextBox87" runat="server" XDataBind="Fin_CE_TE_JW.BZ" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" Express="javascript('DateDiff',Fin_CE_TE_JW.EndDate,Fin_CE_TE_JW.StarDate)*Fin_CE_TE_JW.BZ_Per"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="68">
                                        <aspxform:XDropDownList id="XDropDownList11" runat="server" XDataBind="Fin_CE_TE_JW.Unit_BZ" Express="if(Fin_CE_TE_JW.City_Star=='香港'||Fin_CE_TE_JW.City_Star=='澳门'||Fin_CE_TE_JW.City_Star=='台湾','港币','美元')">
                                            <asp:ListItem>人民币</asp:ListItem>
                                            <asp:ListItem Selected="True">美元</asp:ListItem>
                                            <asp:ListItem>欧元</asp:ListItem>
                                            <asp:ListItem>港币</asp:ListItem>
                                        </aspxform:XDropDownList>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="45">
                                        <aspxform:XTextBox id="XTextBox88" runat="server" XDataBind="Fin_CE_TE_JW.Rate_BZ" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Express="if(Fin_CE_TE_JW.Unit_BZ=='美元',Fin_CE_TE_JW.Rate,0)"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#f0f0f0" width="46">
                                        <aspxform:XTextBox id="XTextBox75" runat="server" XDataBind="Fin_CE_TE_JW.Total" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Express="if(Fin_CE_TE_JW.Airfare=='',0,Fin_CE_TE_JW.Airfare)*if(Fin_CE_TE_JW.Airfare=='',0,Fin_CE_TE_JW.Rate_Air)+if(Fin_CE_TE_JW.Fare=='',0,Fin_CE_TE_JW.Fare)*if(Fin_CE_TE_JW.Fare=='',0,Fin_CE_TE_JW.Rate_Fare)+if(Fin_CE_TE_JW.Accommodation=='',0,Fin_CE_TE_JW.Accommodation)*if(Fin_CE_TE_JW.Accommodation=='',0,Fin_CE_TE_JW.Rate_ZS)+Fin_CE_TE_JW.BZ*Fin_CE_TE_JW.Rate_BZ">0</aspxform:XTextBox>
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
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="635">
                        <div align="right">
                            <aspxform:XLabel id="XLabel28" runat="server" text="合计" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="125">
                        <div align="right">
                            <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="Fin_ClaimingExpenses.PayTotal" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" Express="if(Fin_ClaimingExpenses.Country=='境内',sum(Fin_CE_TE_Info.Total)+Fin_CE_TE.Total,sum(Fin_CE_TE_JW_Info.Total)+Fin_CE_TE_JW.Total)"></aspxform:XTextBox>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764" hiddenexpress="Global.StepName!='打款'">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="112">
                        <aspxform:XLabel id="XLabel53" runat="server" text="收款人账号" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="645">
                        <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="Fin_ClaimingExpenses.App_Account" XDataSource="TableName:Fin_R_Account_PB;Filter:HRID->Fin_Applicant.HRID" DisplayColumn="Account" ValueColumn="Account">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                        <aspxform:XLabel id="XLabel54" runat="server" text="付款银行" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="Fin_ClaimingExpenses.Bank_Account" DataMap="Name->Fin_ClaimingExpenses.Bank_Name" XDataSource="TableName:Fin_R_Cash" DisplayColumn="Name" ValueColumn="No">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="white" height="24" width="114">
                        <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font size="2" face="Arial"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                        <aspxform:XLabel id="XLabel56" runat="server" text="附件" ForeColor="Gray"></aspxform:XLabel>
                        </span></font></span></span></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="643">
                        <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                        <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="Fin_ClaimingExpenses.Attachment"></aspxform:XMSNAttachments>
                        </span></span></span></span></td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#ffffff" height="36" colspan="2">
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764" dynamicarea="2,1" xdatasource="TableName:V_Fin_Loan_Info;Filter:Applicant->Fin_Applicant.Applicant" datamap="SN->Fin_ClaimingExpenses_LoanInfo.LoanSN;Amount->Fin_ClaimingExpenses_LoanInfo.LoanAmount;Remain->Fin_ClaimingExpenses_LoanInfo.Remain;Reason->Fin_ClaimingExpenses_LoanInfo.Reason;Date->Fin_ClaimingExpenses_LoanInfo.Date;RunningAmount->Fin_ClaimingExpenses_LoanInfo.RunningAmount">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="7">
                        <font color="black" face="Arial">借款明细</font></td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="76">
                        <div align="right">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="26" width="44">
                        <div align="center">
                            <aspxform:XLabel id="XLabel30" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="111">
                        <div align="center">
                            <aspxform:XLabel id="XLabel37" runat="server" text="借款单号" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="67">
                        <div align="center">
                            <aspxform:XLabel id="XLabel38" runat="server" text="借款金额" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="87">
                        <div align="center">
                            <aspxform:XLabel id="XLabel39" runat="server" text="剩余借款" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="105">
                        <div align="center">
                            <aspxform:XLabel id="XLabel29" runat="server" text="在途审批金额" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="141">
                        <div align="center">
                            <aspxform:XLabel id="XLabel49" runat="server" text="事由" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="108">
                        <div align="center">
                            <aspxform:XLabel id="XLabel34" runat="server" text="预计还款报销日期" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel50" runat="server" text="本次冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                        <aspxform:XGridLineNo id="XGridLineNo5" runat="server" BorderColor="#DCDCDC" BorderWidth="1" Width="100%">1</aspxform:XGridLineNo>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanSN" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox41" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanAmount" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox42" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Remain" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.RunningAmount" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox43" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Reason" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Date" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.OffsetAmount" BorderColor="#DCDCDC" BorderWidth="1" width="100%" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="transparent" height="24">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" colspan="2">
                        <div align="right">
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="Fin_ClaimingExpenses.LoanAmount" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" Express="sum(Fin_ClaimingExpenses_LoanInfo.Remain)"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox49" runat="server" XDataBind="Fin_ClaimingExpenses.Amount_Running" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" DisableBehavior="ReadOnly" Express="sum(Fin_ClaimingExpenses_LoanInfo.RunningAmount)"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="right">
                            <aspxform:XLabel id="XLabel51" runat="server" text="合计" ForeColor="Gray"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox76" runat="server" XDataBind="Fin_ClaimingExpenses.LoanTotal" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BorderStyle="None" BackColor="#F0F0F0" DisableBehavior="ReadOnly" Express="sum(Fin_ClaimingExpenses_LoanInfo.OffsetAmount)"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="36" colspan="2">
                        <div align="right">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23" colspan="2">
                        <aspxform:XLabel id="XLabel43" runat="server" text="审批信息" ForeColor="Black"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                        <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                        <aspxform:XSignTrace id="XSignTrace1" runat="server" BorderColor="#dcdcdc" BorderWidth="1" Width="100%" CssClass="AA"></aspxform:XSignTrace>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="24" valign="bottom" width="149" align="right">
                        <aspxform:XPrintButton id="XPrintButton1" runat="server" Height="20px" Width="80px"></aspxform:XPrintButton>
                    </td>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="611" align="middle">
                        <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->Fin_ClaimingExpenses.Dept" DorpDownListCssClass="b" SystemBtnCssClass="a" ProcessBtnCssClass="a"></aspxform:XProcessButtonList>
                    </td>
                </tr>
            </tbody>
        </table>
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
