<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <title>BPM Form</title> <style>BODY {
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
</style>
    <style>BODY {
	FONT-SIZE: 12px; FONT-FAMILY: verdana
}
TABLE {
	FONT-SIZE: 12px; FONT-FAMILY: verdana; BORDER-COLLAPSE: collapse
}
.TextBox {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: silver 1px solid
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
    <script language="JavaScript">

var occasion="Christmas!";
var message_on_occasion="Merry Christmas!";//样式
var countdownwidth='800px';
var countdownheight='20px';
var countdownbgcolor='lightblue';
var opentags='<font face="Verdana"><small>';
var closetags='</small></font>';
var montharray=new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");

function start_countdown()
{
if (document.layers)
document.countdownnsmain.visibility="show";
countdown(2000,1,1);

}
if (document.all)
//document.write('<span id="countdownie" style="width:'+countdownwidth+'; background-color:'+countdownbgcolor+'"></span>');
window.onload=start_countdown;

function  countdown()
{

var array1, array2,array3;
//alert(str);

var str = document.getElementById("XTextBox48").value;

//var Rstr = document.getElementById("XTextBox45").value;
//if(Rstr=="变更需求")
//{
 //str = document.getElementById("XTextBox11").value;
//}

//alert(str);
if(str == "")
{
 str = "2010-09-30 09:02";
}

array1 = str.split(" ");
array2 = array1[0].split("-");
array3 = array1[1].split(":");

var yr = array2[0];
var mo = array2[1];
var da = array2[2];
var th = array3[0];
var tm = array3[1];
var ts ='00';


var today=new Date();
var todayy=today.getYear();
if (todayy < 1000)
todayy+=1900;
var todaym=today.getMonth();
var todayd=today.getDate();
var todayh=today.getHours();
var todaymin=today.getMinutes();
var todaysec=today.getSeconds();
var todaystring=montharray[todaym]+" "+todayd+", "+todayy+" "+todayh+":"+todaymin+":"+todaysec;

//futurestring=montharray[mo-1]+" "+da+", "+yr;
futurestring=montharray[mo-1]+" "+da+", "+yr+" "+th+":"+tm+":"+ts ;

dd=Date.parse(futurestring)-Date.parse(todaystring);
dday=Math.floor(dd/(60*60*1000*24)*1);
dhour=Math.floor((dd%(60*60*1000*24))/(60*60*1000)*1);
dmin=Math.floor(((dd%(60*60*1000*24))%(60*60*1000))/(60*1000)*1);
dsec=Math.floor((((dd%(60*60*1000*24))%(60*60*1000))%(60*1000))/1000*1);
if(dday<=0&amp;&amp;dhour<=0&amp;&amp;dmin<=0&amp;&amp;dsec<=1)
{
    if (document.layers)
     {
         //document.countdownnsmain.document.countdownnssub.document.write(opentags+message_on_occasion+closetags);
         //document.countdownnsmain.document.countdownnssub.document.close();
     }
     else if (document.all)
     //countdownie.innerHTML=opentags+message_on_occasion+closetags;
     return
}
else
{
    if (document.layers)
     {
        //document.countdownnsmain.document.countdownnssub.document.write(opentags+dday+ " days, "+dhour+" hours, "+dmin+" minutes, and "+dsec+" seconds left until "+occasion+closetags);
        document.getElementById("XLabel10").innerHTML = "距离时限截止还有"+opentags+dday+ " 天, "+dhour+" 小时, "+dmin+" 分,"+dsec+" 秒 ";
        document.countdownnsmain.document.countdownnssub.document.close();
     }
    else if (document.all)
    //countdownie.innerHTML=opentags+dday+ " days, "+dhour+" hours, "+dmin+" minutes, and "+dsec+" seconds left until "+occasion+closetags;
    //document.getElementById("XLabel12").innerHTML = opentags+dday+ " days, "+dhour+" hours, "+dmin+" minutes, and "+dsec+" seconds left until "+occasion+closetags;
     document.getElementById("XLabel10").innerHTML = "距离时限截止还有"+opentags+dday+ " 天, "+dhour+" 小时, "+dmin+" 分,"+dsec+" 秒 ";

}
setTimeout("countdown()",1000)
}
</script>
</head>
<body>
    <form runat="server">
        <div align="center">
            <!-- Insert content here -->
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1118">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="357">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="826" align="middle">
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="211">
                            <aspxform:XLabel id="XLabel11" runat="server" XDataBind="OF_Applicant_All.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="58" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="订单新物料跟踪单(总表)" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1118">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="76" align="middle">
                            <aspxform:XLabel id="XLabel42" runat="server" text="申请人:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="199">
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="OF_Applicant_All.Name" CssClass="TextBox" HiddenInput="False" BorderColor="Gainsboro" width="117px" Max="0" Min="0"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="OF_Applicant_All.HRID" HiddenInput="False" BorderColor="Gainsboro" width="22px" Max="0" Min="0" HiddenExpress="1" BorderWidth="1px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="65" align="middle">
                            <aspxform:XLabel id="XLabel43" runat="server" text="申请日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="199">
                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="OF_Applicant_All.AppDate" CssClass="TextBox" HiddenInput="False" BorderColor="Gainsboro" width="129px" Max="0" Min="0"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="OF_Applicant_All.Dept" HiddenInput="False" BorderColor="Gainsboro" width="27px" Max="0" Min="0" HiddenExpress="1" BorderWidth="1px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="90" align="middle">
                            <aspxform:XLabel id="XLabel2" runat="server" text="表单编号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="185">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="OF_Applicant_All.SN" CssClass="TextBox" HiddenInput="False" BorderColor="Gainsboro" width="126px" Max="0" Min="0"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="83" align="middle">
                            <aspxform:XLabel id="XLabel3" runat="server" text="对应需求号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="200">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="OF_Applicant_All.SN_HD" CssClass="TextBox" HiddenInput="False" BorderColor="Gainsboro" width="140px" Max="0" Min="0"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1118">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="160" width="124" align="middle">
                            <aspxform:XLabel id="XLabel33" runat="server" text="变更内容:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="1269">
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="OF_Applicant_All.MaterialTemplate" HiddenInput="False" BorderColor="Gainsboro" width="100%" Max="0" Min="0" DisableBehavior="ReadOnly" BorderWidth="1px" Value ValueToDisplayText TextMode="MultiLine" ForeColor="Blue" Height="157px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1118">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="177" align="middle">
                            <aspxform:XLabel id="XLabel26" runat="server" text="物料模块"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="934">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="OF_Applicant_All.MaterialType" Width="336px" RepeatDirection="Horizontal">
                                <asp:ListItem>硬件</asp:ListItem>
                                <asp:ListItem>结构</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="XRadioButtonList7" ErrorMessage="物料模块必选！" Display="None">物料模块</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1118">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="123" align="left">
                            <aspxform:XLabel id="XLabel32" runat="server" text="该表单签核超时时间:"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox48" runat="server" Font-Bold="False" XDataBind="time1" HiddenInput="False" BorderColor="Gainsboro" width="5px" Max="0" Min="0" DisableBehavior="ReadOnly" HiddenExpress="1" BorderWidth="1px" Express="OF_Applicant_All.OverTime"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="651">
                            <aspxform:XLabel id="XLabel39" runat="server" text="修改超时时间:" HiddenExpress="Global.StepName !='时间确认'" SkinID="批准人"></aspxform:XLabel>
                            <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" XDataBind="OF_Applicant_All.OverTime" CssClass="TextBox" BorderColor="#DCDCDC" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                            <aspxform:XLabel id="XLabel10" runat="server" Font-Bold="True" ForeColor="Red" BackColor="Transparent"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ControlToValidate="XDateTimePicker4" ErrorMessage="请设置表单签核超时时间" Display="None">超时时间</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1118">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="30" rowspan="2" width="50" align="middle">
                            <aspxform:XLabel id="XLabel21" runat="server" text="订单号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="192" align="middle">
                            <aspxform:XLabel id="XLabel38" runat="server" text="客户名称"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="123" align="middle">
                            <aspxform:XLabel id="XLabel4" runat="server" text="客户品牌"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="137" align="middle">
                            <aspxform:XLabel id="XLabel5" runat="server" text="客户型号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="157" align="middle">
                            <aspxform:XLabel id="XLabel22" runat="server" text="内部型号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="60" align="middle">
                            <aspxform:XLabel id="XLabel24" runat="server" text="销售人员"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="155" align="middle">
                            <aspxform:XLabel id="XLabel44" runat="server" text="下单日期"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="155" align="middle">
                            <aspxform:XLabel id="XLabel45" runat="server" text="出货日期"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="61" align="middle">
                            <aspxform:XLabel id="XLabel46" runat="server" text="订单数量"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="29">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="OF_Applicant_All.OrderFormCode" CssClass="TextBox" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="OF_Applicant_All.CustomerName" CssClass="TextBox" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="OF_Applicant_All.CustomerBrands" CssClass="TextBox" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="OF_Applicant_All.CustomerModel" CssClass="TextBox" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="OF_Applicant_All.InsideModel" CssClass="TextBox" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="OF_Applicant_All.Saleman" CssClass="TextBox" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker11" runat="server" XDataBind="OF_Applicant_All.OrderDate" CssClass="TextBox" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker12" runat="server" XDataBind="OF_Applicant_All.DateOfDispatch" CssClass="TextBox" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="OF_Applicant_All.OrderNum" CssClass="TextBox" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1118" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="14">
                            <aspxform:XLabel id="XLabel31" runat="server" text="序号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="69">
                            <aspxform:XLabel id="XLabel6" runat="server" text="物料类型"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="66">
                            <aspxform:XLabel id="XLabel7" runat="server" text="物料编号"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel13" runat="server" text="设计确认"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel18" runat="server" text="发出打样"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel29" runat="server" text="封样完成"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel28" runat="server" text="启动采购"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                            <aspxform:XLabel id="XLabel30" runat="server" text="到货时间"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="67">
                            <aspxform:XLabel id="XLabel8" runat="server" text="责任人"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="128">
                            <aspxform:XLabel id="XLabel9" runat="server" text="计划"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67">
                            <aspxform:XLabel id="XLabel12" runat="server" text="责任人"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="118">
                            <aspxform:XLabel id="XLabel17" runat="server" text="计划"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67">
                            <aspxform:XLabel id="XLabel14" runat="server" text="责任人"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="118">
                            <aspxform:XLabel id="XLabel19" runat="server" text="计划"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="67">
                            <aspxform:XLabel id="XLabel15" runat="server" text="责任人"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="118">
                            <aspxform:XLabel id="XLabel20" runat="server" text="计划"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="67">
                            <aspxform:XLabel id="XLabel16" runat="server" text="责任人"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="112">
                            <aspxform:XLabel id="XLabel23" runat="server" text="计划"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; HEIGHT: 52px; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" Width="100%" BackColor="Transparent" TextAlign="Center" BorderStyle="None"></aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; HEIGHT: 52px; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="OF_Applicant_All_Body.MaterialModel" Width="100%" ValueColumn="MaterialModel" DisplayColumn="MaterialModel" DataMap="MaterialType->OF_Applicant_All_Body.MaterialType" onchange="javascript:XFormOnChange(this);" XDataSource="TableName:OF_MaterialType;Filter:MaterialType->OF_Applicant_All.MaterialType">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="OF_Applicant_All_Body.MaterialType" HiddenInput="False" BorderColor="Gainsboro" width="60px" Max="0" Min="0" HiddenExpress="1" BorderWidth="1px"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; HEIGHT: 52px; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="OF_Applicant_All_Body.MaterialCode" HiddenInput="False" BorderColor="Gainsboro" Max="0" Min="0" BorderWidth="1px" Width="95px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="OF_Applicant_All_Body.Design_Owner" BorderColor="#DCDCDC" width="55px" HiddenExpress="1" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; HEIGHT: 52px; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="OF_Applicant_All_Body.Design_Name" Width="100%" ValueColumn="Design_Name" DisplayColumn="Design_Name" DataMap="Design_Owner->OF_Applicant_All_Body.Design_Owner" XDataSource="TableName:OF_Design;Filter:MaterialType->OF_Applicant_All_Body.MaterialType">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; HEIGHT: 52px; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OF_Applicant_All_Body.Design_Plan" BorderColor="Gainsboro" BorderWidth="1px" Width="120px" XSubType="timeminutes" onchange="javascript:XFormOnChange(this);" ReadOnly="True" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="OF_Applicant_All_Body.Proofing_Owner" BorderColor="#DCDCDC" width="55px" HiddenExpress="1" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; HEIGHT: 52px; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="OF_Applicant_All_Body.Proofing_Name" Width="100%" ValueColumn="Proofing_Name" DisplayColumn="Proofing_Name" DataMap="Proofing_Owner->OF_Applicant_All_Body.Proofing_Owner" XDataSource="TableName:OF_Proofing;Filter:MaterialType->OF_Applicant_All_Body.MaterialType">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; HEIGHT: 52px; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OF_Applicant_All_Body.Proofing_Plan" BorderColor="Gainsboro" BorderWidth="1px" Width="110px" XSubType="date" ReadOnly="True" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="OF_Applicant_All_Body.SealedSample_Owner" BorderColor="#DCDCDC" width="55px" HiddenExpress="1" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; HEIGHT: 52px; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="OF_Applicant_All_Body.SealedSample_Name" Width="100%" ValueColumn="SealedSample_Name" DisplayColumn="SealedSample_Name" DataMap="SealedSample_Owner->OF_Applicant_All_Body.SealedSample_Owner" XDataSource="TableName:OF_SealedSample;Filter:MaterialType->OF_Applicant_All_Body.MaterialType">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; HEIGHT: 52px; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OF_Applicant_All_Body.SealedSample_Plan" BorderColor="Gainsboro" BorderWidth="1px" Width="110px" XSubType="date" ReadOnly="True" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="OF_Applicant_All_Body.Purchase_Owner" BorderColor="#DCDCDC" width="55px" HiddenExpress="1" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; HEIGHT: 52px; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="OF_Applicant_All_Body.Purchase_Name" Width="100%" ValueColumn="Purchase_Name" DisplayColumn="Purchase_Name" DataMap="Purchase_Owner->OF_Applicant_All_Body.Purchase_Owner" XDataSource="TableName:OF_Purchase;Filter:MaterialType->OF_Applicant_All_Body.MaterialType">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; HEIGHT: 52px; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker7" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OF_Applicant_All_Body.Purchase_Plan" BorderColor="Gainsboro" BorderWidth="1px" Width="110px" XSubType="date" ReadOnly="True" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="OF_Applicant_All_Body.Receive_Owner" BorderColor="#DCDCDC" width="55px" HiddenExpress="1" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; HEIGHT: 52px; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDropDownList id="XDropDownList6" runat="server" XDataBind="OF_Applicant_All_Body.Receive_Name" Width="100%" ValueColumn="Receive_Name" DisplayColumn="Receive_Name" DataMap="Receive_Owner->OF_Applicant_All_Body.Receive_Owner" XDataSource="TableName:OF_Receive;Filter:MaterialType->OF_Applicant_All_Body.MaterialType">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; HEIGHT: 52px; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XDateTimePicker id="XDateTimePicker9" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="OF_Applicant_All_Body.Receive_Plan" BorderColor="Gainsboro" BorderWidth="1px" Width="110px" XSubType="date" ReadOnly="True" XType="datetime"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="21">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" ControlToValidate="XTextBox19" ErrorMessage="请选择设计确认责任人" Display="None" DisableExpress='OF_Applicant_All_Body.Design_Plan == ""'>设计人</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XDateTimePicker1" ErrorMessage="设计确认时间不能为空！" Display="None" DisableExpress='OF_Applicant_All_Body.Design_Name ==  "请选择"'>设计时间空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" ControlToValidate="XTextBox8" ErrorMessage="请选择发出打样责任人" Display="None" DisableExpress='OF_Applicant_All_Body.Proofing_Plan ==""'>打样人</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XCompareValidator id="XCompareValidator1" runat="server" ControlToValidate="XDateTimePicker3" ErrorMessage="打样时间要大于设计确认时间！" Display="None" DisableExpress='OF_Applicant_All_Body.Design_Plan  == "" ||OF_Applicant_All_Body.Proofing_Plan==""' Operator="GreaterThan" ValueToCompareExpress="OF_Applicant_All_Body.Design_Plan">打样时间</aspxform:XCompareValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XDateTimePicker3" ErrorMessage="打样时间不能为空！" Display="None" DisableExpress='OF_Applicant_All_Body.Proofing_Name == "请选择"'>打样时间空</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" ControlToValidate="XTextBox11" ErrorMessage="请选择封样完成责任人" Display="None" DisableExpress='OF_Applicant_All_Body.SealedSample_Plan  == ""'>封样人</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XCompareValidator id="XCompareValidator2" runat="server" ControlToValidate="XDateTimePicker5" ErrorMessage="封样时间要大于打样时间！" Display="None" DisableExpress='OF_Applicant_All_Body.Proofing_Plan == "" || OF_Applicant_All_Body.SealedSample_Plan == ""' Operator="GreaterThan" ValueToCompareExpress="OF_Applicant_All_Body.Proofing_Plan">封样时间</aspxform:XCompareValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XDateTimePicker5" ErrorMessage="封样完成时间不能为空！" Display="None" DisableExpress='OF_Applicant_All_Body.SealedSample_Name == "请选择"'>封样完成空</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XDateTimePicker7" ErrorMessage="启动采购时间不能为空！" Display="None">启动采购空</aspxform:XRequiredFieldValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid">
                            <aspxform:XCompareValidator id="XCompareValidator4" runat="server" ControlToValidate="XDateTimePicker9" ErrorMessage="到货时间要大于启动采购时间！" Display="None" Operator="GreaterThan" ValueToCompareExpress="OF_Applicant_All_Body.Purchase_Plan">到货时间</aspxform:XCompareValidator>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" HiddenExpress="Global.StepName!='开始'" PrintOut="False" TableName="OF_Applicant_All_Body" Text="添加行"></aspxform:XAddBlockButton>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XDateTimePicker9" ErrorMessage="到货时间不能为空！" Display="None">到货空</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1118">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="20" width="850" colspan="2">
                            <aspxform:XLabel id="XLabel25" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1118">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="54" colspan="2">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="#DCDCDC" width="100%" BorderWidth="1" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="16" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" CssClass="AA" BorderColor="Gainsboro" BorderWidth="1px" Height="25px" Width="100%"></aspxform:XSignTrace>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ControlToValidate="XTextBox6" ErrorMessage="订单号不能为空!" Display="None">订单号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ControlToValidate="XTextBox7" ErrorMessage="客户名称不能为空！" Display="None">客户名称</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ControlToValidate="XTextBox12" ErrorMessage="内部型号不能为空！" Display="None">内部型号</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" ControlToValidate="XDateTimePicker12" ErrorMessage="出货日期不能为空!" Display="None">出货日期</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" ControlToValidate="XTextBox15" ErrorMessage="订单数量不能为空！" Display="None">订单数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="退回请填写原因" Display="None" ValidationGroup="Return">退回重填验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="RequiredFieldValidator" Display="None" ValidationGroup="Reject">拒绝验证</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="1118">
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
