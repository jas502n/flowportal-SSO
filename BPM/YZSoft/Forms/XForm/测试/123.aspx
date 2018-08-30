<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <title>BPM Form</title> <style>BODY {
	FONT-FAMILY: verdana; FONT-SIZE: 12px
}
TABLE {
	BORDER-COLLAPSE: collapse; FONT-FAMILY: verdana; FONT-SIZE: 12px
}
P {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT-FAMILY: verdana; FONT-SIZE: 12px; PADDING-TOP: 0px
}
TD {
	PADDING-BOTTOM: 0px; PADDING-LEFT: 2px; PADDING-RIGHT: 0px
}
TD.NoPadding {
	PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
TD.header {
	BACKGROUND: url(~/image/logo.gif) no-repeat; BORDER-TOP: medium none; BORDER-RIGHT: medium none
}
INPUT {
	HEIGHT: 20px
}
INPUT.UL {
	BORDER-BOTTOM: #33ff33 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none
}
.B {
	WIDTH: 80px; hight: 20px:
}
.D {
	hight: 18px
}
TABLE.AA {
	BACKGROUND-COLOR: #d1dedf; BORDER-COLLAPSE: separate
}
TABLE.AA TD {
	BORDER-LEFT: white 0px solid; BORDER-TOP: white 0px solid
}
TABLE.AA TR.HeaderRow {
	BACKGROUND-COLOR: #ffffff
}
TABLE.AA TR.HeaderRow TD {
	TEXT-ALIGN: center; HEIGHT: 29px
}
TABLE.AA TR.HeaderRow TD.NoColumn {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.StepNameColumn {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.SignColumn {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.ActionColumn {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.DateColumn {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.NoColumn {
	PADDING-LEFT: 8px; PADDING-RIGHT: 8px
}
TABLE.AA TR.HeaderRow TD.CommentsColumn {
	WIDTH: 99%
}
TABLE.AA TR.DataRow {
	BACKGROUND-COLOR: #f0f0f0
}
TABLE.AA TR.DataRow TD {
	TEXT-ALIGN: center; HEIGHT: 41px
}
TABLE.AA TR.DataRow TD.NoCell {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.StepNameCell {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.SignCell {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.ActionCell {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.DateCell {
	PADDING-LEFT: 10px; WIDTH: 1%; PADDING-RIGHT: 10px; WHITE-SPACE: nowrap
}
TABLE.AA TR.DataRow TD.NoCell {
	PADDING-LEFT: 0px; PADDING-RIGHT: 0px
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
.TextBoxPink {
	BORDER-BOTTOM: pink 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none
}
</style>
    <style type="text/css" href="~/Style/Skyworth.css" rel="stylesheet"></style>
    <script language="JavaScript">

//if (document.all)
//window.onload=countdown;

//function  countdown()
//{

//var array1,array2,array3;

//var str = document.getElementById("XDateTimePicker3").value;
//alert(str);
//if(str == "")
//{
   //str = document.getElementById("XDateTimePicker2").value;
   //if(str == "")
  //{
      //str = "2011-02-30";
   //}
//}


//array1 = str.split("-");

//var yr = array1[0];
//var mo = parseInt(array1[1],10)+1;
//var da = array1[2];

//if(parseInt(array1[1],10) ==12)
//{
    //yr = parseInt(array1[0],10)+1;
    //mo = "01";
//}
//var aa = yr+"-"+mo+"-10"+" "+"18:00";

//document.all.XDateTimePicker4.value=aa;

//var yrloan = yr;
//var moloan = parseInt(mo,10)+1;
//var daloan = da;
//if(mo == 12 )
//{
   //yrloan = parseInt(array1[0],10) +1;
   //moloan = "01";
//}
//var aaloan= yrloan+"-"+moloan+"-10"+" "+"10:00";

//document.all.XDateTimePicker5.value=aaloan;


//alert(aa);

//}


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
</head>
<body>
    <form runat="server" style="padding-right: 20px; padding-bottom: inherit; padding-left: 300px; padding-top: 2px">
        <!-- Insert content here -->
        <div align="left">
            <table style="BORDER-LEFT: medium none; BORDER-TOP: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
                <tbody>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="44" width="256">
                            <asp:Image id="Image2" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="474" align="middle">
                            <aspxform:XLabel id="XLabel18" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="264" align="right">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aspxform:XLabel id="XLabel19" runat="server" XDataBind="BM_Applicant.SN"></aspxform:XLabel>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="50" colspan="3" align="middle">
                            <div align="center">
                                <aspxform:XLabel id="XLabel14" runat="server" Font-Names="Tahoma" text="个人借机申请单" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="3" align="middle">
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="PerInfo" runat="server" text="借机人"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="BM_Applicant.SN" BorderColor="#DCDCDC" BorderWidth="1" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                            </font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="2" align="middle">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US"><font color="black">
                            <aspxform:XLabel id="XLabel2" runat="server" text="代理人"></aspxform:XLabel>
                            </font></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="26" width="99" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">
                            <aspxform:XLabel id="XLabel3" runat="server" text="姓名:" ForeColor="Gray"></aspxform:XLabel>
                            </span></span></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="BM_Applicant.Name" BorderColor="#DCDCDC" BorderWidth="1" width="175px" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="BM_Applicant.HRID" BorderColor="#DCDCDC" BorderWidth="1" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="84" align="right">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 10pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-size: 12.0pt" lang="EN-US">
                            <aspxform:XLabel id="XLabel4" runat="server" text="姓名:" ForeColor="Gray"></aspxform:XLabel>
                            </span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="339">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="BM_Applicant.Sub_Name" BorderColor="Gainsboro" BorderWidth="1px" width="175px" Max="0" Min="0" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="BM_Applicant.Sub_HRID" BorderColor="#DCDCDC" BorderWidth="1" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                            <aspxform:XDateTimePicker id="XDateTimePicker5" runat="server" XDataBind="BM_Applicant.LoanChaoshi" BorderColor="#DCDCDC" BorderWidth="1" HiddenExpress='Global.StepName !="成品仓管员(续借)"' Width="95px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" align="right">
                            <aspxform:XLabel id="XLabel5" runat="server" text="部门:" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none" bgcolor="#f0f0f0" width="179">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="BM_Applicant.Dept" BorderColor="Gainsboro" BorderWidth="1px" width="82px" Max="0" Min="0" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="84">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" align="right">
                            <aspxform:XLabel id="XLabel6" runat="server" text="部门:" ForeColor="Gray"></aspxform:XLabel>
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="BM_Applicant.Sub_Dept" BorderColor="Gainsboro" BorderWidth="1px" width="175px" Max="0" Min="0" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XDateTimePicker id="XDateTimePicker4" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="BM_Applicant.Chaoshi" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress='Global.StepName !="成品仓管员(续借)"' ReadOnly="True" Width="95px" Type="TimeMinutes" XSubType="timeminutes" XType="datetime" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="124" align="middle">
                            <aspxform:XLabel id="XLabel1" runat="server" text="申请日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="252">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="BM_Applicant.AppDate" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" Width="101px" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" HiddenExpress="1" DataMap="CostCenter->BM_Applicant.SAP_Code" ValueColumn="CostCenter" DisplayColumn="CostCenter" XDataSource="TableName:Fin_R_CostCenter;Filter:HRID->BM_Applicant.HRID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="126" align="middle">
                            <aspxform:XLabel id="XLabel20" runat="server" text="预计归还日期:" HiddenExpress='Global.StepName =="部门审批(借机转费用)\关卡1" || Global.StepName =="财务总监(借机转费用)" '></aspxform:XLabel>
                            <aspxform:XLabel id="XLabel26" runat="server" text="成本中心:" Font-Bold="True" HiddenExpress='Global.StepName !="部门审批(借机转费用)\关卡1" &amp;&amp; Global.StepName !="财务总监(借机转费用)" '></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="285">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="BM_Applicant.YuJiDate" BorderColor="Gainsboro" BorderWidth="1px" HiddenExpress='Global.StepName =="部门审批(借机转费用)\关卡1" || Global.StepName =="财务总监(借机转费用)" ' ReadOnly="True" Width="117px" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请填写预计归还日期！" ControlToValidate="XDateTimePicker2" ValidationGroup="提交">预计日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator5" runat="server" Display="None" ErrorMessage="预计归还日期要大于申请日期!" ControlToValidate="XDateTimePicker2" ValidationGroup="提交" ValueToCompareExpress="BM_Applicant.AppDate" Operator="GreaterThan">预计归还日期</aspxform:XCompareValidator>
                            <aspxform:XTextBox id="XTextBox19" runat="server" BorderColor="Gainsboro" BorderWidth="1px" width="37px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False" Express="if( BM_Applicant.XuJie_YorN !=&quot;是&quot; ,javascript('DateDiff',BM_Applicant.YuJiDate,BM_Applicant.AppDate),javascript('DateDiff',BM_Applicant.XuJieDate,BM_Applicant.AppDate))"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="BM_Applicant.SAP_Code" BorderColor="Gainsboro" BorderWidth="1px" width="96px" HiddenExpress='Global.StepName !="部门审批(借机转费用)\关卡1" &amp;&amp; Global.StepName !="财务总监(借机转费用)" &amp;&amp; Global.StepName !="成品仓管员(转费用确认)"' Max="0" Min="0" BorderStyle="None" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='if(Global.StepName =="部门审批(借机转费用)\关卡1" || Global.StepName =="财务总监(借机转费用)",1,Global.StepName !="申请人" &amp;&amp; Global.StepName !="成品仓管员(转费用)"&amp;&amp;  BM_Applicant.XuJie_YorN =="" )'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="125" align="middle">
                            <aspxform:XLabel id="XLabel21" runat="server" text="是否续借:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none" width="77">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="BM_Applicant.XuJie_YorN" Width="17px" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: medium none" width="173">
                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="BM_Applicant.Type" HiddenExpress="1" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">个人借机</asp:ListItem>
                                <asp:ListItem>非销售领用</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            </font></span></span></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="126" align="middle">
                            <aspxform:XLabel id="XLabel40" runat="server" text="续借归还日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="285">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="BM_Applicant.XuJieDate" BorderColor="Gainsboro" BorderWidth="1px" ReadOnly="True" Width="118px" XSubType="date" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="您选择了续借,请填写续借归还日期！" ControlToValidate="XDateTimePicker3" ValidationGroup="续借" DisableExpress='BM_Applicant.XuJie_YorN !="是"'>续借</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator1" runat="server" Display="None" ErrorMessage="续借日期要大于预计归还日期!" ControlToValidate="XDateTimePicker3" ValidationGroup="续借" ValueToCompareExpress="BM_Applicant.YuJiDate" Operator="GreaterThan" DisableExpress='BM_Applicant.XuJie_YorN !="是"'>续借</aspxform:XCompareValidator>
                            <aspxform:XRangeValidator id="XRangeValidator1" runat="server" Type="Integer" Display="None" ErrorMessage="归还日期不能超过六个月！" ControlToValidate="XTextBox19" ValidationGroup="提交" MaximumValue="186" MinimumValue="1">归还日期六个月</aspxform:XRangeValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="22" width="746" colspan="4">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="XLabel7" runat="server" text="用途"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="请填写用途！" ControlToValidate="XTextBox11" ValidationGroup="提交" DisableExpress='BM_Applicant.Dept=="宽带事业部"'>借机事由</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="请选择是否续借!" ControlToValidate="XRadioButtonList1" ValidationGroup="续借" DisableExpress='BM_Applicant.Dept=="宽带事业部"'>是否续借</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="请填写机器型号！" ControlToValidate="XTextBox2" ValidationGroup="提交" DisableExpress='BM_Applicant.Dept=="宽带事业部"'>机器型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="请填写借机数量！" ControlToValidate="XTextBox4" ValidationGroup="提交" DisableExpress='BM_Applicant.Dept=="宽带事业部"'>数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRangeValidator id="XRangeValidator2" runat="server" Type="Double" Display="None" ErrorMessage="个人借机累计不能超过50台" ControlToValidate="XTextBox16" ValidationGroup="提交" DisableExpress='BM_Applicant.Dept=="宽带事业部"' MinValueExpress="0" MaxValueExpress="xiane">个人借机不能超过50台</aspxform:XRangeValidator>
                            <aspxform:XCompareValidator id="XCompareValidator2" runat="server" Type="Double" Display="None" ErrorMessage="还机总量不能大于借机数量！" ControlToValidate="XTextBox5" ValidationGroup="提交" ValueToCompareExpress="BM_Applicant_Body.JieJiNum" Operator="LessThanEqual" DisableExpress='BM_Applicant.Dept=="宽带事业部"'>还机总量不能大于借机数量</aspxform:XCompareValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="请选择机型类别！" ControlToValidate="XDropDownList2" ValidationGroup="提交" DisableExpress='BM_Applicant.Dept=="宽带事业部"'>机型类别</aspxform:XRequiredFieldValidator>
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="toal" HiddenExpress="1" ValueColumn="Total" DisplayColumn="Total" XDataSource="TableName:V_BM_JieJiNum;Filter:HRID->BM_Applicant.HRID">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="xiane" BorderColor="Gainsboro" BorderWidth="1px" width="27px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False" Express="50-toal" Format="type:number;.0"></aspxform:XTextBox>
                            <aspxform:XCompareValidator id="XCompareValidator3" runat="server" Type="Double" Display="None" ErrorMessage="借机数量必须大于0！" ControlToValidate="XTextBox4" ValidationGroup="提交" Operator="GreaterThan" DisableExpress='BM_Applicant.Dept=="宽带事业部"' ValueToCompare="0">借机小于0验证</aspxform:XCompareValidator>
                            </font></span></span></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="72" colspan="4">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox11" runat="server" XDataBind="BM_Applicant.Reason" BorderColor="Gainsboro" BorderWidth="1px" width="100%" Max="0" Min="0" HiddenInput="False" Height="57px" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='BM_Applicant.Dept=="宽带事业部"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="22" width="740" colspan="4">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="XLabel8" runat="server" text="借机明细"></aspxform:XLabel>
                            </font></span></span></span></font></span></span></span></font></span></span></span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" colspan="4">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%" dynamicarea="1,1">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="57" width="30">
                                            <aspxform:XLabel id="XLabel10" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="121" align="middle">
                                            <aspxform:XLabel id="XLabel23" runat="server" text="机型类别" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="120" align="middle">
                                            <aspxform:XLabel id="XLabel11" runat="server" text="订单号" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="115" align="middle">
                                            <aspxform:XLabel id="XLabel12" runat="server" text="机器型号" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="128" align="middle">
                                            <aspxform:XLabel id="XLabel13" runat="server" text="整机编号" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="70" align="middle">
                                            <aspxform:XLabel id="XLabel32" runat="server" text="借机数量" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="72" align="middle">
                                            <aspxform:XLabel id="XLabel17" runat="server" text="剩余借机" Font-Bold="True" HiddenExpress='if(Global.StepName=="",1,if(Global.StepName =="成品仓管员(确认)" ,"",BM_Applicant.XuJie_YorN  =="是" || Global.StepName =="开始" || Global.StepName !="部门审批(借机转费用)\部门经理40" || Global.StepName !="部门审批(借机转费用)\部门经理50" || Global.StepName !="部门审批(借机转费用)\部门经理80"  || Global.StepName =="财务总监"||Global.StepName !="部门审批(借机转费用)\部门经理40" ||Global.StepName !="部门审批(借机转费用)\部门经理50" ||Global.StepName !="部门审批(借机转费用)\部门经理80" ||Global.StepName =="财务总监(借机转费用)"))' Height="15px"></aspxform:XLabel>
                                            <aspxform:XLabel id="XLabel22" runat="server" text="续借数量" Font-Bold="True" HiddenExpress='if(Global.StepName != "",if(Global.StepName !="部门审批(借机转费用)\部门经理40" &amp;&amp;Global.StepName !="部门审批(借机转费用)\部门经理50" &amp;&amp;Global.StepName !="部门审批(借机转费用)\部门经理80" &amp;&amp; Global.StepName !="财务总监(借机转费用)"&amp;&amp;Global.StepName !="成品仓管员(确认)",BM_Applicant.XuJie_YorN !="是"&amp;&amp;Global.StepName !="",1),1)' ForeColor="Red"></aspxform:XLabel>
                                            <aspxform:XLabel id="XLabel9" runat="server" text="转费用数量" Font-Bold="True" HiddenExpress='if(Global.StepName =="" ,1,if(BM_Applicant.CBID =="",Global.StepName !="部门审批(借机转费用)\部门经理40" &amp;&amp;Global.StepName !="部门审批(借机转费用)\部门经理50" &amp;&amp; Global.StepName !="部门审批(借机转费用)\部门经理80" &amp;&amp;Global.StepName !="财务总监(借机转费用)"  &amp;&amp; Global.StepName !="",1))' ForeColor="Red"></aspxform:XLabel>
                                            <aspxform:XLabel id="XLabel27" runat="server" Font-Bold="True" HiddenExpress='BM_Applicant.CBID ==""' ForeColor="Red" Text="挂借款"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="56">
                                            <aspxform:XLabel id="XLabel15" runat="server" text="累计还机" Font-Bold="True" HiddenExpress='BM_Applicant.XuJie_YorN  !="是"&amp;&amp;Global.StepName !="申请人" &amp;&amp; Global.StepName !="成品仓管员(确认)" '></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="58">
                                            <aspxform:XLabel id="XLabel16" runat="server" text="本次还机" Font-Bold="True" HiddenExpress='Global.StepName !="申请人" &amp;&amp; Global.StepName !="成品仓管员(确认)"'></aspxform:XLabel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="21" align="middle">
                                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Bold="True" BorderColor="Gainsboro" BorderWidth="1px" BorderStyle="None" Width="22px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="BM_Applicant_Body.ModelType" Width="117px" onchange="javascript:XFormOnChange(this);" DataMap="Price->BM_Applicant_Body.Price" ValueColumn="ModelType" DisplayColumn="ModelType" XDataSource="TableName:BM_Model_Price" PromptText="请选择">
                                                <asp:ListItem>H</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="BM_Applicant_Body.Price" BorderColor="Gainsboro" BorderWidth="1px" width="10px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="BM_Applicant_Body.OrderFormNo" width="99px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="BM_Applicant_Body.MachineType" width="104px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="BM_Applicant_Body.MachineCode" width="100%" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" CssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="BM_Applicant_Body.JieJiNum" width="100%" DisableCssClass="TextBoxPink" Format="type:number;.0" CssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="BM_Applicant_Body.ShengYuNum" BorderColor="Blue" width="70px" HiddenExpress='if(Global.StepName =="" ,1,if(BM_Applicant.XuJie_YorN !="是",Global.StepName =="开始" || Global.StepName =="部门审批\经理审批40"|| Global.StepName =="部门审批\经理审批50"|| Global.StepName =="部门审批\经理审批80"||Global.StepName =="财务审批"|| Global.StepName =="财务总监"|| Global.StepName =="成品仓管员(发货)",BM_Applicant.XuJie_YorN ==""))' Max="0" Min="0" ReadOnly="True" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Express="BM_Applicant_Body.JieJiNum - BM_Applicant_Body.HuanJiNum" Format="type:number;.0" CssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="BM_Applicant_Body.HuanJiNum" width="45px" HiddenExpress='BM_Applicant.XuJie_YorN  !="是"&amp;&amp;Global.StepName !="申请人" &amp;&amp; Global.StepName !="成品仓管员(确认)" ' Max="0" Min="0" ReadOnly="True" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Express="RR" Format="type:number;.0" CssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="BM_Applicant_Body.YuanHuanJiNum" BorderColor="Gainsboro" BorderWidth="1px" width="5px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="RR" BorderColor="Gainsboro" BorderWidth="1px" width="5px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False" Express="BM_Applicant_Body.BenCiHuaJi +BM_Applicant_Body.YuanHuanJiNum"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="BM_Applicant_Body.BenCiHuaJi" width="40px" HiddenExpress='Global.StepName !="申请人" &amp;&amp; Global.StepName !="成品仓管员(确认)" ' Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Format="type:number;.0" CssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="aa" BorderColor="Gainsboro" BorderWidth="1px" width="5px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False" Express="BM_Applicant_Body.ShengYuNum *  BM_Applicant_Body.Price"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="23">
                                        </td>
                                        <td colspan="2">
                                        </td>
                                        <td>
                                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></td>
                                        <td>
                                        </td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="BM_Applicant.JieJiNum" BorderColor="Gainsboro" BorderWidth="1px" width="35px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False" Express="sum(BM_Applicant_Body.JieJiNum)"></aspxform:XTextBox>
                                        </td>
                                        <td align="middle">
                                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="BM_Applicant.ShengYuNum" BorderColor="#DCDCDC" BorderWidth="1" width="35px" HiddenExpress='Global.StepName !="成品仓管员(确认)"' Express="sum(BM_Applicant_Body.ShengYuNum)" Format="type:number;.0"></aspxform:XTextBox>
                                        </td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="BM_Applicant.Jine" BorderColor="Gainsboro" BorderWidth="1px" width="50px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False" Express="sum(aa)" Format="type:number;.2"></aspxform:XTextBox>
                                        </td>
                                        <td>
                                            <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" HiddenExpress='Global.StepName !="开始"' Text="添加行" TableName="BM_Applicant_Body"></aspxform:XAddBlockButton>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="22" width="740" colspan="4">
                            <span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"><span style="FONT-FAMILY: 'Arial','sans-serif'; FONT-SIZE: 9pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial">
                            <aspxform:XLabel id="XLabel43" runat="server" text="借机明细"></aspxform:XLabel>
                            </font></span></span></span></font></span></span></span></font></span></span></span>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" Display="None" ErrorMessage="请填写借机数量！" ControlToValidate="XTextBox27" ValidationGroup="提交" DisableExpress='BM_Applicant.Dept!="宽带事业部"'>数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XCompareValidator id="XCompareValidator4" runat="server" Type="Double" Display="None" ErrorMessage="借机数量必须大于0！" ControlToValidate="XTextBox27" ValidationGroup="提交" Operator="GreaterThan" DisableExpress='BM_Applicant.Dept!="宽带事业部"' ValueToCompare="0">借机小于0验证</aspxform:XCompareValidator>
                            <aspxform:XCompareValidator id="XCompareValidator6" runat="server" Type="Double" Display="None" ErrorMessage="还机总量不能大于借机数量！" ControlToValidate="XTextBox29" ValidationGroup="提交" ValueToCompareExpress="BM_Applicant_Body.JieJiNum" Operator="LessThanEqual" DisableExpress='BM_Applicant.Dept!="宽带事业部"'>还机总量不能大于借机数量</aspxform:XCompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" colspan="4">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%" dynamicarea="1,1">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="130" width="24">
                                            <aspxform:XLabel id="XLabel44" runat="server" text="序号" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="102" align="middle">
                                            <aspxform:XLabel id="XLabel45" runat="server" text="机型类别" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="68" align="middle">
                                            <aspxform:XLabel id="XLabel47" runat="server" text="机器型号" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="102" align="middle">
                                            <aspxform:XLabel id="XLabel46" runat="server" text="订单号" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="68" align="middle">
                                            <aspxform:XLabel id="XLabel48" runat="server" text="整机编号" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="36" align="middle">
                                            <aspxform:XLabel id="XLabel49" runat="server" text="借机数量" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="36" align="middle" hiddenexpress='Global.StepName=="开始"'>
                                            <aspxform:XLabel id="XLabel50" runat="server" text="剩余借机" Font-Bold="True" HiddenExpress='if(Global.StepName=="",1,if(Global.StepName =="成品仓管员(确认)" ,"",BM_Applicant.XuJie_YorN  =="是" || Global.StepName =="开始" || Global.StepName !="部门审批(借机转费用)\部门经理40" || Global.StepName !="部门审批(借机转费用)\部门经理50" || Global.StepName !="部门审批(借机转费用)\部门经理80"  || Global.StepName =="财务总监"||Global.StepName !="部门审批(借机转费用)\部门经理40" ||Global.StepName !="部门审批(借机转费用)\部门经理50" ||Global.StepName !="部门审批(借机转费用)\部门经理80" ||Global.StepName =="财务总监(借机转费用)"))' Height="15px"></aspxform:XLabel>
                                            <aspxform:XLabel id="XLabel51" runat="server" text="续借数量" Font-Bold="True" HiddenExpress='if(Global.StepName != "",if(Global.StepName !="部门审批(借机转费用)\部门经理40" &amp;&amp;Global.StepName !="部门审批(借机转费用)\部门经理50" &amp;&amp;Global.StepName !="部门审批(借机转费用)\部门经理80" &amp;&amp; Global.StepName !="财务总监(借机转费用)"&amp;&amp;Global.StepName !="成品仓管员(确认)",BM_Applicant.XuJie_YorN !="是"&amp;&amp;Global.StepName !="",1),1)' ForeColor="Red"></aspxform:XLabel>
                                            <aspxform:XLabel id="XLabel52" runat="server" text="转费用数量" Font-Bold="True" HiddenExpress='if(Global.StepName =="" ,1,if(BM_Applicant.CBID =="",Global.StepName !="部门审批(借机转费用)\部门经理40" &amp;&amp;Global.StepName !="部门审批(借机转费用)\部门经理50" &amp;&amp; Global.StepName !="部门审批(借机转费用)\部门经理80" &amp;&amp;Global.StepName !="财务总监(借机转费用)"  &amp;&amp; Global.StepName !="",1))' ForeColor="Red"></aspxform:XLabel>
                                            <aspxform:XLabel id="XLabel59" runat="server" Font-Bold="True" HiddenExpress='BM_Applicant.CBID ==""' ForeColor="Red" Text="挂借款"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="51" hiddenexpress='Global.StepName=="开始"'>
                                            <aspxform:XLabel id="XLabel60" runat="server" text="累计还机" Font-Bold="True" HiddenExpress='BM_Applicant.XuJie_YorN  !="是"&amp;&amp;Global.StepName !="申请人" &amp;&amp; Global.StepName !="成品仓管员(确认)" '></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="59" hiddenexpress='Global.StepName=="开始"'>
                                            <aspxform:XLabel id="XLabel61" runat="server" text="本次还机" Font-Bold="True" HiddenExpress='Global.StepName !="申请人" &amp;&amp; Global.StepName !="成品仓管员(确认)"'></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="23" align="middle" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XLabel id="XLabel62" runat="server" text="机器状态" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="112" align="middle" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XLabel id="XLabel63" runat="server" text="包裹" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="112" align="middle" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XLabel id="XLabel64" runat="server" text="外观" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="112" align="middle" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XLabel id="XLabel65" runat="server" text="摇控器" Font-Bold="True"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="112" align="middle" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XLabel id="XLabel66" runat="server" text="电源适配器" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="112" align="middle" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XLabel id="XLabel67" runat="server" text="AV线" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="112" align="middle" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XLabel id="XLabel68" runat="server" text="HDMI线" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="112" align="middle" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XLabel id="XLabel69" runat="server" text="网线" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="112" align="middle" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XLabel id="XLabel70" runat="server" text="说明书" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="112" align="middle" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XLabel id="XLabel71" runat="server" text="保修卡" Font-Bold="True" ValueToDisplayText Value></aspxform:XLabel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="48" align="middle">
                                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Font-Bold="True" BorderColor="Gainsboro" BorderWidth="1px" BorderStyle="None" Width="22px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XDropDownList id="XDropDownList6" runat="server" Font-Size="8pt" XDataBind="BM_Applicant_Body_KD.ModelType" HiddenExpress='BM_Applicant.Dept!="宽带事业部"' Width="100px" onchange="javascript:XFormOnChange(this);" DataMap="Price->BM_Applicant_Body_KD.Price" ValueColumn="ModelType" DisplayColumn="ModelType" XDataSource="TableName:BM_Model_Price" PromptText="请选择">
                                                <asp:ListItem>H</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XDropDownList id="XDropDownList8" runat="server" XDataBind="BM_Applicant_Body_KD.MachineType" HiddenExpress='BM_Applicant.Dept!="宽带事业部"' ValueColumn="MachineType" DisplayColumn="MachineType" XDataSource="TableName:BM_MachineInfo;Filter:ModelType->BM_Applicant_Body_KD.ModelType" PromptText="请选择">
                                                <asp:ListItem>h</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="BM_Applicant_Body_KD.Price" BorderColor="Gainsboro" BorderWidth="1px" width="10px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                            <aspxform:XDropDownList id="XDropDownList7" runat="server" XDataBind="BM_Applicant_Body_KD.OrderFormNo" HiddenExpress='BM_Applicant.Dept!="宽带事业部"' ValueColumn="OrderFormNo" DisplayColumn="OrderFormNo" XDataSource="TableName:BM_MachineInfo;Filter:ModelType->BM_Applicant_Body_KD.ModelType,MachineType->BM_Applicant_Body_KD.MachineType">
                                                <asp:ListItem>未绑定</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XDropDownList id="XDropDownList9" runat="server" XDataBind="BM_Applicant_Body_KD.MachineCode" HiddenExpress='BM_Applicant.Dept!="宽带事业部"' ValueColumn="MachineCode" DisplayColumn="MachineCode" XDataSource="TableName:BM_MachineInfo;Filter:ModelType->BM_Applicant_Body_KD.ModelType,OrderFormNo->BM_Applicant_Body_KD.OrderFormNo,MachineType->BM_Applicant_Body_KD.MachineType" PromptText="请选择">
                                                <asp:ListItem>h</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="BM_Applicant_Body_KD.JieJiNum" width="30px" HiddenExpress='BM_Applicant.Dept!="宽带事业部"' DisableCssClass="TextBoxPink" Format="type:number;.0" CssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="aa_KD" BorderColor="Gainsboro" BorderWidth="1px" width="25px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False" Express="BM_Applicant_Body_KD.ShengYuNum *  BM_Applicant_Body_KD.Price"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" hiddenexpress='Global.StepName=="开始"'>
                                            <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="BM_Applicant_Body_KD.ShengYuNum" BorderColor="Blue" width="30px" HiddenExpress='if(BM_Applicant.Dept!="宽带事业部",1,if(Global.StepName =="" ,1,if(BM_Applicant.XuJie_YorN !="是",Global.StepName =="开始" || Global.StepName =="部门审批\经理审批40"|| Global.StepName =="部门审批\经理审批50"|| Global.StepName =="部门审批\经理审批80"||Global.StepName =="财务审批"|| Global.StepName =="财务总监"|| Global.StepName =="成品仓管员(发货)",BM_Applicant.XuJie_YorN =="")))' Max="0" Min="0" ReadOnly="True" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Express="BM_Applicant_Body_KD.JieJiNum - BM_Applicant_Body_KD.HuanJiNum" Format="type:number;.0" CssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" hiddenexpress='Global.StepName=="开始"'>
                                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="BM_Applicant_Body_KD.HuanJiNum" width="30px" HiddenExpress='if(BM_Applicant.Dept!="宽带事业部",1,BM_Applicant.XuJie_YorN  !="是"&amp;&amp;Global.StepName !="申请人" &amp;&amp; Global.StepName !="成品仓管员(确认)" )' Max="0" Min="0" ReadOnly="True" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Express="RR" Format="type:number;.0" CssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="BM_Applicant_Body_KD.YuanHuanJiNum" BorderColor="Gainsboro" BorderWidth="1px" width="5px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" hiddenexpress='Global.StepName=="开始"'>
                                            <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="RR_KD" BorderColor="Gainsboro" BorderWidth="1px" width="5px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False" Express="BM_Applicant_Body_KD.BenCiHuaJi +BM_Applicant_Body_KD.YuanHuanJiNum" DisableExpress='BM_Applicant.Dept!="宽带事业部"'></aspxform:XTextBox>
                                            <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="BM_Applicant_Body_KD.BenCiHuaJi" width="30px" HiddenExpress='if(BM_Applicant.Dept!="宽带事业部",1,Global.StepName !="申请人" &amp;&amp; Global.StepName !="成品仓管员(确认)" )' Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Format="type:number;.0" CssClass="TextBoxPink"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XTextBox id="XTextBox46" runat="server" XDataBind="BM_Applicant_Body_KD.MachineState" width="20px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Express="State" CssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XDropDownList id="XDropDownList10" runat="server" Font-Size="8pt" XDataBind="State" HiddenExpress="1" Width="20px" ValueColumn="State" DisplayColumn="State" XDataSource="TableName:BM_MachineInfo;Filter:ModelType->BM_Applicant_Body_KD.ModelType,OrderFormNo->BM_Applicant_Body_KD.OrderFormNo,MachineType->BM_Applicant_Body_KD.MachineType,MachineCode->BM_Applicant_Body_KD.MachineCode">
                                                <asp:ListItem>未绑定</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="BM_Applicant_Body_KD.Package" width="100px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Express="Package" CssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XDropDownList id="XDropDownList11" runat="server" Font-Size="8pt" XDataBind="Package" HiddenExpress="1" Width="110px" ValueColumn="Package" DisplayColumn="Package" XDataSource="TableName:BM_MachineInfo;Filter:ModelType->BM_Applicant_Body_KD.ModelType,OrderFormNo->BM_Applicant_Body_KD.OrderFormNo,MachineType->BM_Applicant_Body_KD.MachineType,MachineCode->BM_Applicant_Body_KD.MachineCode">
                                                <asp:ListItem Value="1">不影响二次使用</asp:ListItem>
                                                <asp:ListItem Value="2">用于销售需要更换</asp:ListItem>
                                                <asp:ListItem Value="3">无</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="BM_Applicant_Body_KD.Surface" width="100px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Express="Surface" CssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XDropDownList id="XDropDownList12" runat="server" Font-Size="8pt" XDataBind="Surface" HiddenExpress="1" Width="110px" ValueColumn="Surface" DisplayColumn="Surface" XDataSource="TableName:BM_MachineInfo;Filter:ModelType->BM_Applicant_Body_KD.ModelType,OrderFormNo->BM_Applicant_Body_KD.OrderFormNo,MachineType->BM_Applicant_Body_KD.MachineType,MachineCode->BM_Applicant_Body_KD.MachineCode">
                                                <asp:ListItem Value="1">不影响二次使用</asp:ListItem>
                                                <asp:ListItem Value="2">用于销售需要更换</asp:ListItem>
                                                <asp:ListItem Value="3">无</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XTextBox id="XTextBox49" runat="server" XDataBind="BM_Applicant_Body_KD.Remote" width="100px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Express="Remote" CssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XDropDownList id="XDropDownList16" runat="server" Font-Size="8pt" XDataBind="Remote" HiddenExpress="1" Width="110px" ValueColumn="Remote" DisplayColumn="Remote" XDataSource="TableName:BM_MachineInfo;Filter:ModelType->BM_Applicant_Body_KD.ModelType,OrderFormNo->BM_Applicant_Body_KD.OrderFormNo,MachineType->BM_Applicant_Body_KD.MachineType,MachineCode->BM_Applicant_Body_KD.MachineCode">
                                                <asp:ListItem Value="1">不影响二次使用</asp:ListItem>
                                                <asp:ListItem Value="2">用于销售需要更换</asp:ListItem>
                                                <asp:ListItem Value="3">无</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="BM_Applicant_Body_KD.Adapter" width="100px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Express="Adapter" CssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XDropDownList id="XDropDownList17" runat="server" Font-Size="8pt" XDataBind="Adapter" HiddenExpress="1" Width="110px" ValueColumn="Adapter" DisplayColumn="Adapter" XDataSource="TableName:BM_MachineInfo;Filter:ModelType->BM_Applicant_Body_KD.ModelType,OrderFormNo->BM_Applicant_Body_KD.OrderFormNo,MachineType->BM_Applicant_Body_KD.MachineType,MachineCode->BM_Applicant_Body_KD.MachineCode">
                                                <asp:ListItem Value="1">不影响二次使用</asp:ListItem>
                                                <asp:ListItem Value="2">用于销售需要更换</asp:ListItem>
                                                <asp:ListItem Value="3">无</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="BM_Applicant_Body_KD.AVCable" width="100px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Express="AVCable" CssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XDropDownList id="XDropDownList18" runat="server" Font-Size="8pt" XDataBind="AVCable" HiddenExpress="1" Width="110px" ValueColumn="AVCable" DisplayColumn="AVCable" XDataSource="TableName:BM_MachineInfo;Filter:ModelType->BM_Applicant_Body_KD.ModelType,OrderFormNo->BM_Applicant_Body_KD.OrderFormNo,MachineType->BM_Applicant_Body_KD.MachineType,MachineCode->BM_Applicant_Body_KD.MachineCode">
                                                <asp:ListItem Value="1">不影响二次使用</asp:ListItem>
                                                <asp:ListItem Value="2">用于销售需要更换</asp:ListItem>
                                                <asp:ListItem Value="3">无</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="BM_Applicant_Body_KD.HDMICable" width="100px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Express="HDMICable" CssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XDropDownList id="XDropDownList19" runat="server" Font-Size="8pt" XDataBind="HDMICable" HiddenExpress="1" Width="110px" ValueColumn="HDMICable" DisplayColumn="HDMICable" XDataSource="TableName:BM_MachineInfo;Filter:ModelType->BM_Applicant_Body_KD.ModelType,OrderFormNo->BM_Applicant_Body_KD.OrderFormNo,MachineType->BM_Applicant_Body_KD.MachineType,MachineCode->BM_Applicant_Body_KD.MachineCode">
                                                <asp:ListItem Value="1">不影响二次使用</asp:ListItem>
                                                <asp:ListItem Value="2">用于销售需要更换</asp:ListItem>
                                                <asp:ListItem Value="3">无</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XTextBox id="XTextBox53" runat="server" XDataBind="BM_Applicant_Body_KD.InternetCable" width="100px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Express="InternetCable" CssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XDropDownList id="XDropDownList20" runat="server" Font-Size="8pt" XDataBind="InternetCable" HiddenExpress="1" Width="110px" ValueColumn="InternetCable" DisplayColumn="InternetCable" XDataSource="TableName:BM_MachineInfo;Filter:ModelType->BM_Applicant_Body_KD.ModelType,OrderFormNo->BM_Applicant_Body_KD.OrderFormNo,MachineType->BM_Applicant_Body_KD.MachineType,MachineCode->BM_Applicant_Body_KD.MachineCode">
                                                <asp:ListItem Value="1">不影响二次使用</asp:ListItem>
                                                <asp:ListItem Value="2">用于销售需要更换</asp:ListItem>
                                                <asp:ListItem Value="3">无</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="BM_Applicant_Body_KD.Instruction" width="100px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Express="Instruction" CssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XDropDownList id="XDropDownList21" runat="server" Font-Size="8pt" XDataBind="Instruction" HiddenExpress="1" Width="110px" ValueColumn="Instruction" DisplayColumn="Instruction" XDataSource="TableName:BM_MachineInfo;Filter:ModelType->BM_Applicant_Body_KD.ModelType,OrderFormNo->BM_Applicant_Body_KD.OrderFormNo,MachineType->BM_Applicant_Body_KD.MachineType,MachineCode->BM_Applicant_Body_KD.MachineCode">
                                                <asp:ListItem Value="1">不影响二次使用</asp:ListItem>
                                                <asp:ListItem Value="2">用于销售需要更换</asp:ListItem>
                                                <asp:ListItem Value="3">无</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" hiddenexpress='BM_Applicant.Dept!="宽带事业部"'>
                                            <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="BM_Applicant_Body_KD.WarrantyCard" width="100px" Max="0" Min="0" HiddenInput="False" DisableCssClass="TextBoxPink" NormalCssClass="TextBoxPink" Express="WarrantyCard" CssClass="TextBoxPink"></aspxform:XTextBox>
                                            <aspxform:XDropDownList id="XDropDownList22" runat="server" Font-Size="8pt" XDataBind="WarrantyCard" HiddenExpress="1" Width="110px" ValueColumn="WarrantyCard" DisplayColumn="WarrantyCard" XDataSource="TableName:BM_MachineInfo;Filter:ModelType->BM_Applicant_Body_KD.ModelType,OrderFormNo->BM_Applicant_Body_KD.OrderFormNo,MachineType->BM_Applicant_Body_KD.MachineType,MachineCode->BM_Applicant_Body_KD.MachineCode">
                                                <asp:ListItem Value="1">不影响二次使用</asp:ListItem>
                                                <asp:ListItem Value="2">用于销售需要更换</asp:ListItem>
                                                <asp:ListItem Value="3">无</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="23">
                                        </td>
                                        <td colspan="2">
                                        </td>
                                        <td>
                                            <span class="MsoCommentReference"><span style="FONT-FAMILY: 'Times New Roman','serif'; FONT-SIZE: 10.5pt; mso-fareast-font-family: 宋体; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US"><font color="black" size="2" face="Arial"></font></span></span></td>
                                        <td>
                                        </td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox56" runat="server" XDataBind="BM_Applicant.JieJiNum" BorderColor="Gainsboro" BorderWidth="1px" width="35px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False" Express='if(BM_Applicant.Dept=="宽带事业部",sum(BM_Applicant_Body_KD.JieJiNum),sum(BM_Applicant_Body.JieJiNum))'></aspxform:XTextBox>
                                        </td>
                                        <td align="middle">
                                            <aspxform:XTextBox id="XTextBox57" runat="server" XDataBind="BM_Applicant.ShengYuNum" BorderColor="#DCDCDC" BorderWidth="1" width="35px" HiddenExpress='Global.StepName !="成品仓管员(确认)"' Express='if(BM_Applicant.Dept=="宽带事业部",sum(BM_Applicant_Body_KD.ShengYuNum),sum(BM_Applicant_Body.ShengYuNum))' Format="type:number;.0"></aspxform:XTextBox>
                                        </td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox58" runat="server" XDataBind="BM_Applicant.Jine" BorderColor="Gainsboro" BorderWidth="1px" width="50px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False" Express='if(BM_Applicant.Dept=="宽带事业部",aa_KD,aa)' Format="type:number;.2"></aspxform:XTextBox>
                                        </td>
                                        <td>
                                            <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" HiddenExpress='Global.StepName !="开始"' Text="添加行" TableName="BM_Applicant_Body_KD"></aspxform:XAddBlockButton>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23" colspan="2">
                                <aspxform:XLabel id="XLabel31" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <aspxform:XHistoryFormLink id="XHistoryFormLink2" runat="server" XDataBind="BM_Applicant.CBID" HiddenExpress='BM_Applicant.CBID ==""' Text="查看补借款详情"></aspxform:XHistoryFormLink>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                                <aspxform:XCommentsTextBox style="OVERFLOW: hidden" id="XCommentsTextBox1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" TextMode="MultiLine" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32" colspan="2">
                                <aspxform:XSignTrace id="XSignTrace2" runat="server" BorderColor="#dcdcdc" BorderWidth="1" Width="100%" CssClass="AA"></aspxform:XSignTrace>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="26" valign="bottom" width="201" align="right">
                                <aspxform:XTextBox id="XTextBox34" runat="server" BorderColor="Gainsboro" BorderWidth="1px" width="12px" HiddenExpress="1" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" Display="None" ErrorMessage='对不起,不可以点击"逾期处理"按钮提交！' ControlToValidate="XTextBox26" ValidationGroup="逾期处理不能提交">逾期处理按钮不能提交</aspxform:XRequiredFieldValidator>
                                <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress="Global.StepName =='单据填写'" Width="64px" Height="20px" Text="打 印" OnClientClick="XFormPrint('ori=v;zm=87;ml=48;mt=48;mr=48;mb=48;ph=\t;pf=提交人:________部门负责人:________初审人:________电子流检查:________总裁审批:________',true);return false;" UseSubmitBehavior="False" PageFooterFormat="提交人:________部门负责人:________初审人:________电子流检查:________总裁审批:________" PageHeaderFormat="\t"></aspxform:XPrintButton>
                            </td>
                            <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="533" align="middle">
                                &nbsp;&nbsp;&nbsp;<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请填写拒绝理由！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Reject">拒绝验证</aspxform:XRequiredFieldValidator>
                                &nbsp;&nbsp;<aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="Department->BM_Applicant.Dept" ConsignAreaHeaderBackColor="245, 245, 220" ConsignAreaBorderColor="Gainsboro"></aspxform:XProcessButtonList>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="请填写退回意见！" ControlToValidate="XCommentsTextBox1" ValidationGroup="Return">退回重填验证</aspxform:XRequiredFieldValidator>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table border="0" cellspacing="0" cellpadding="0" width="800" printout="False">
                    <tbody>
                        <tr>
                            <td height="162" width="50" colspan="3">
                                <p>
                                    <aspxform:XLabel id="XLabel24" runat="server" Font-Size="Medium" ForeColor="Red" Width="200px" Text="注意事项:" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    <aspxform:XLabel id="XLabel25" runat="server" text="1、“代理人”为借机事项的经办人，“申请人”为最终责任人；" Width="417px" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    <aspxform:XLabel id="XLabel28" runat="server" text="2、 申请人累计剩余借机数量不得超过50台；" Width="689px" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    <aspxform:XLabel id="XLabel29" runat="server" text="3、 请在“预计归还日期”栏中注明预计归还日期，且借期不得超过六个月；" Width="692px" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    <aspxform:XLabel id="XLabel30" runat="server" text="4、 请在借机到期日次月10号前归还借机，否则视同按标准价格购买此借机，仓库不再接收还借机，系统自动按标准价格挂个人借款。" Width="694px" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    &nbsp;&nbsp;&nbsp;
                                </p>
                                <p>
                                    &nbsp;&nbsp;&nbsp;
                                </p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </p>
        </div>
    </form>
</body>
</html>
