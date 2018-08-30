<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
      protected void Page_Load(object sender, EventArgs e)
        {
            XTextBox52.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox34.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox35.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox36.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox37.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox38.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox39.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox40.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox41.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox42.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox27.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox28.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox43.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox44.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox21.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox46.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
        }

</script>
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <title>BPM Form</title> <script language="javascript" type="text/javascript">
      function showtip(event,obj){
        event = event||window.event;
        var ei = document.getElementById("tips");
        ei.style.display = "block";
        ei.style.top  = document.body.scrollTop + event.clientY + 10 + "px";
        ei.style.left = document.body.scrollLeft + event.clientX + 10 + "px";
        ei.innerHTML = '<font size=3>' + obj.value + '</font>';
        }
        function hiddentip(){
        var ei = document.getElementById("tips");
        ei.innerHTML = "";
        ei.style.display = "none";
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
.TextBox {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: silver 1px solid
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

var str = document.getElementById("XTextBox10").value;
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
if(dday<=0&&dhour<=0&&dmin<=0&&dsec<=1)
{
    if (document.layers)
     {
         //document.countdownnsmain.document.countdownnssub.document.write(opentags+message_on_occasion+closetags);
         //document.countdownnsmain.document.countdownnssub.document.close();
     }
     else if (document.all)
    // countdownie.innerHTML=opentags+message_on_occasion+closetags;
     return
}
else
{
    if (document.layers)
     {
        //document.countdownnsmain.document.countdownnssub.document.write(opentags+dday+ " days, "+dhour+" hours, "+dmin+" minutes, and "+dsec+" seconds left until "+occasion+closetags);
        document.getElementById("XLabel12").innerHTML = "距离时限截止还有"+opentags+dday+ " 天, "+dhour+" 小时, "+dmin+" 分,"+dsec+" 秒 ";
        document.countdownnsmain.document.countdownnssub.document.close();
     }
    else if (document.all)
    //countdownie.innerHTML=opentags+dday+ " days, "+dhour+" hours, "+dmin+" minutes, and "+dsec+" seconds left until "+occasion+closetags;
    //document.getElementById("XLabel12").innerHTML = opentags+dday+ " days, "+dhour+" hours, "+dmin+" minutes, and "+dsec+" seconds left until "+occasion+closetags;
    document.getElementById("XLabel12").innerHTML = "距离时限截止还有"+opentags+dday+ " 天, "+dhour+" 小时, "+dmin+" 分,"+dsec+" 秒 ";

}
setTimeout("countdown()",1000)
}
</script>
</head>
<body>
    <form runat="server">
        <div align="center">
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="203">
                                <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                                &nbsp;</td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="377" align="middle">
                                <aspxform:XLabel id="XLabel1" runat="server" Font-Size="Medium" Font-Names="Tahoma" Font-Bold="True" text="深圳创维数字技术股份有限公司"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="210" align="middle">
                                <aspxform:XLabel id="XLabel11" runat="server" XDataBind="HD_Applicant_VCBOM.RealSN"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="58" colspan="3" align="middle">
                                <asp:Label id="Label1" runat="server" text="VC-BOM变更通知单" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="95" align="middle">
                                <aspxform:XLabel id="XLabel31" runat="server" text="提交人:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="192" align="left">
                                <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="HD_Applicant_VCBOM.Name" DisableCssClass="TextBox" CssClass="TextBox" width="160px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="56">
                                <aspxform:XLabel id="XLabel32" runat="server" text="产品型号:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="292" colspan="3">
                                <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="HD_Applicant_VCBOM.ProductMode" DisableCssClass="TextBox" CssClass="TextBox" width="238px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="49">
                                <aspxform:XLabel id="XLabel33" runat="server" text="日期:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="300">
                                <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="HD_Applicant_VCBOM.AppDate" DisableCssClass="TextBox" CssClass="TextBox" width="206px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="95" align="middle">
                                <aspxform:XLabel id="XLabel34" runat="server" text="变更模块:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="898">
                                <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyModule" Width="263px" RepeatDirection="Horizontal">
                                    <asp:ListItem>硬件</asp:ListItem>
                                    <asp:ListItem>软件</asp:ListItem>
                                    <asp:ListItem>结构</asp:ListItem>
                                    <asp:ListItem>工艺</asp:ListItem>
                                    <asp:ListItem>物料</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="HD_Applicant_VCBOM.HRID" width="20px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="HD_Applicant_VCBOM.Name" width="10px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="HD_Applicant_VCBOM.Dept" width="8px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                                <aspxform:XLabel id="XLabel35" runat="server" text="序号:" HiddenExpress="1"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="HD_Applicant_VCBOM.SN" width="10px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="HD_Applicant_VCBOM.RealSN" width="108px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                                <aspxform:XLabel id="XLabel36" runat="server" text="订单编号:" HiddenExpress="1"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="HD_Applicant_VCBOM.OrderFormSN" width="34px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress='HD_Applicant_VCBOM.ModifyModule =="工艺"  || HD_Applicant_VCBOM.ModifyModule=="软件" || HD_Applicant_VCBOM.ModifyModule =="" '>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="996" align="middle">
                                <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="HD_Applicant_VCBOM.OrderformRelation" Width="336px" RepeatDirection="Horizontal">
                                    <asp:ListItem>与订单相关</asp:ListItem>
                                    <asp:ListItem>不与订单相关</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress='HD_Applicant_VCBOM.OrderformRelation =="不与订单相关" ||  HD_Applicant_VCBOM.OrderformRelation ==""'>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="996" align="middle">
                                <aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" XDataBind="HD_Applicant_VCBOM.RemandOrApp" Width="335px" RepeatDirection="Horizontal">
                                    <asp:ListItem>变更需求</asp:ListItem>
                                    <asp:ListItem>变更申请</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <!-- Insert content here -->
            </p>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" height="71">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="97" align="middle">
                                <aspxform:XLabel id="XLabel5" runat="server" text="变更原因:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="902" colspan="7">
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyType" RepeatDirection="Horizontal">
                                        <asp:ListItem>物料变更</asp:ListItem>
                                        <asp:ListItem>设计变更</asp:ListItem>
                                        <asp:ListItem>工艺变更</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                                <p>
                                    <span style="FONT-FAMILY: 新宋体; FONT-SIZE: 10.5pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-weight: bold"></span>
                                    <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyReason" Width="560px" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_VCBOM.ModifyType   !="物料变更"'>
                                        <asp:ListItem Value="物料变更-新物料试产">新物料试产</asp:ListItem>
                                        <asp:ListItem Value="物料变更-物料代用">物料代用</asp:ListItem>
                                        <asp:ListItem Value="物料变更-增加、删除物料">增加、删除物料</asp:ListItem>
                                        <asp:ListItem Value="物料变更-修改用量">修改用量</asp:ListItem>
                                        <asp:ListItem Value="物料变更-其它">其它</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyReason" Width="570px" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_VCBOM.ModifyType !="设计变更"'>
                                        <asp:ListItem Value="设计变更-功能优化">功能优化</asp:ListItem>
                                        <asp:ListItem Value="设计变更-选择条件">选择条件</asp:ListItem>
                                        <asp:ListItem Value="设计变更-性能优化">性能优化</asp:ListItem>
                                        <asp:ListItem Value="设计变更-客户化更改">客户化更改</asp:ListItem>
                                        <asp:ListItem Value="设计变更-其它">其它</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyReason" Width="560px" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_VCBOM.ModifyType !="工艺变更"'>
                                        <asp:ListItem Value="工艺变更-增加、删除辅料">增加、删除辅料</asp:ListItem>
                                        <asp:ListItem Value="工艺变更-辅料用量变更">辅料用量变更</asp:ListItem>
                                        <asp:ListItem Value="工艺变更-辅料代用">辅料代用</asp:ListItem>
                                        <asp:ListItem Value="工艺变更-分层优化">分层优化</asp:ListItem>
                                        <asp:ListItem Value="工艺变更-其它">其它</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="63" align="middle">
                                <aspxform:XLabel id="XLabel10" runat="server" text="变更说明:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="7">
                                <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyInstruction" width="100%" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BorderWidth="1px" Height="60px" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" align="middle">
                                <aspxform:XLabel id="XLabel19" runat="server" text="关键物料:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="7">
                                <aspxform:XCheckBoxList id="XCheckBoxList3" runat="server" XDataBind="HD_Applicant_VCBOM.KeyMateriel" Width="791px" RepeatDirection="Horizontal">
                                    <asp:ListItem>CPU</asp:ListItem>
                                    <asp:ListItem>FLASH</asp:ListItem>
                                    <asp:ListItem>SDRAM/DDR</asp:ListItem>
                                    <asp:ListItem>EEPROM</asp:ListItem>
                                    <asp:ListItem>TUNER</asp:ListItem>
                                    <asp:ListItem>DEMO</asp:ListItem>
                                    <asp:ListItem>DC/DC</asp:ListItem>
                                    <asp:ListItem>PHY</asp:ListItem>
                                    <asp:ListItem>变压器</asp:ListItem>
                                    <asp:ListItem>3C报备物料</asp:ListItem>
                                    <asp:ListItem>非关键物料</asp:ListItem>
                                </aspxform:XCheckBoxList>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="45" align="middle">
                                <aspxform:XLabel id="XLabel20" runat="server" text="变更依据:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="7">
                                <p>
                                    <aspxform:XCheckBoxList id="XCheckBoxList4" runat="server" XDataBind="HD_Applicant_VCBOM.AttachmentType" Width="518px" RepeatDirection="Horizontal">
                                        <asp:ListItem>硬件变更测评报告</asp:ListItem>
                                        <asp:ListItem>新物料试产报告</asp:ListItem>
                                        <asp:ListItem>软件变更测试报告</asp:ListItem>
                                        <asp:ListItem>市场需求变更表号</asp:ListItem>
                                        <asp:ListItem>其它</asp:ListItem>
                                    </aspxform:XCheckBoxList>
                                </p>
                                <p>
                                    <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="HD_Applicant_VCBOM.Attachment" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                                    <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="HD_Applicant_VCBOM.AttachmentOther" DisableCssClass="TextBox" CssClass="TextBox" width="572px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" HiddenExpress='HD_Applicant_VCBOM.AttachmentType  !="其它"'></aspxform:XTextBox>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" align="middle">
                                <aspxform:XLabel id="XLabel7" runat="server" text="补充说明:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="7">
                                <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="HD_Applicant_VCBOM.ReplenishInstruction" DisableCssClass="TextBox" CssClass="TextBox" width="100%" BorderColor="#DCDCDC" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </p>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="160" width="94" align="middle">
                                <aspxform:XLabel id="XLabel18" runat="server" text="变更内容:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="898">
                                <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="HD_Applicant_VCBOM.MaterielTemplate" width="100%" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BorderWidth="1px" Height="160px" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </p>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="30" colspan="3">
                                <aspxform:XLabel id="XLabel8" runat="server" text="VCBOM更改表格:"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="HD_Applicant_VCBOM.VCBOMSN" width="500px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" BorderWidth="1px"></aspxform:XTextBox>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ValidationGroup="BOM维护员同意" ControlToValidate="XTextBox13" ErrorMessage="请选择设计师" Display="None">BOM维护员选择设计师</aspxform:XRequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="360">
                                <aspxform:XLabel id="XLabel9" runat="server" Font-Bold="True" text="ECN变更记录号:"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="HD_Applicant_VCBOM.SAP_ECNSN" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px">XXX（从SAP申请获取）</aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="860" colspan="2">
                                <aspxform:XLabel id="XLabel73" runat="server" text="更改时限截止:"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="time" DisableCssClass="TextBox" CssClass="TextBox" width="140px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" Express="HD_Applicant_VCBOM.StopTime_VCBOM"></aspxform:XTextBox>
                                <aspxform:XLabel id="XLabel12" runat="server" Font-Bold="True" Height="100%" BackColor="Transparent" ForeColor="Red"></aspxform:XLabel>
                                <aspxform:XLabel id="XLabel37" runat="server" text="修改截止时间:" HiddenExpress="Global.StepName!='批准人\批准人1'&amp;&amp;Global.StepName!='订单计划员'"></aspxform:XLabel>
                                <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" Font-Bold="True" XDataBind="HD_Applicant_VCBOM.StopTime_VCBOM" CssClass="TextBox" BorderColor="Gainsboro" HiddenExpress="Global.StepName!='批准人\批准人1'&amp;&amp;Global.StepName!='订单计划员'" Type="TimeMinutes" XSubType="date" ReadOnly="True" XType="datetime"></aspxform:XDateTimePicker>
                                <ILAYER id="countdownnsmain" width="&amp;{countdownwidth};" visibility="hide" height="&amp;{countdownheight};" bgcolor="&amp;{countdownbgcolor};">
                                </ILAYER>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </p>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                    <tbody>
                    </tbody>
                </table>
            </p>
            <p>
                <table border="0" cellspacing="0" cellpadding="0" width="1000" dynamicarea="3,1">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="19" align="middle">
                                <aspxform:XLabel id="XLabel48" runat="server" text="序号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="47" align="middle">
                                <aspxform:XLabel id="XLabel68" runat="server" text="VCBOM号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="129" align="middle">
                                <aspxform:XLabel id="XLabel49" runat="server" text="上介组件号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="27" align="middle">
                                <aspxform:XLabel id="XLabel50" runat="server" text="修改方式"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="125" align="middle">
                                <aspxform:XLabel id="XLabel51" runat="server" text="下介组件号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="15" colspan="8" align="middle">
                                <aspxform:XLabel id="XLabel52" runat="server" text="修改内容"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" colspan="4" align="middle">
                                <aspxform:XLabel id="XLabel53" runat="server" text="质量状态"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="30" align="middle">
                                <aspxform:XLabel id="XLabel26" runat="server" text="主辅关系"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="56">
                                <aspxform:XLabel id="XLabel55" runat="server" text="备注（关键物料标注）"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" colspan="2" align="middle">
                                <aspxform:XLabel id="XLabel59" runat="server" text="选择条件修改/物料替换"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                                <aspxform:XLabel id="XLabel60" runat="server" text="数量"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                                <aspxform:XLabel id="XLabel61" runat="server" text="位号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                                <aspxform:XLabel id="XLabel28" runat="server" text="单位"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="31" width="130" align="middle">
                                <aspxform:XLabel id="XLabel62" runat="server" text="from"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="138" align="middle">
                                <aspxform:XLabel id="XLabel63" runat="server" text="to"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="30" align="middle">
                                <aspxform:XLabel id="XLabel64" runat="server" text="from" Width="26px" Height="16px"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="22" align="middle">
                                <aspxform:XLabel id="XLabel65" runat="server" text="to"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="31" align="middle">
                                <aspxform:XLabel id="XLabel66" runat="server" text="add"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="30">
                                <aspxform:XLabel id="XLabel67" runat="server" text="del"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="31" align="middle">
                                <aspxform:XLabel id="XLabel29" runat="server" text="from"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="22">
                                <aspxform:XLabel id="XLabel30" runat="server" text="to"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="41" align="middle">
                                <aspxform:XLabel id="XLabel57" runat="server" text="变更前"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="43" colspan="3" align="middle">
                                <aspxform:XLabel id="XLabel70" runat="server" text="变更后"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="17">
                                <aspxform:XGridLineNo id="XGridLineNo2" runat="server" BorderColor="Gainsboro" Width="17px" BorderWidth="1px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox52" runat="server" XDataBind="HD_Applicant_VCBOMBody.VCBOMNO" DisableCssClass="TextBox" CssClass="TextBox" width="44px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox34" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_VCBOMBody.UpNO" DisableCssClass="TextBox" CssClass="TextBox" width="127px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox35" runat="server" XDataBind="HD_Applicant_VCBOMBody.ModifyMode" DisableCssClass="TextBox" CssClass="TextBox" width="25px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox36" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_VCBOMBody.DownNO" DisableCssClass="TextBox" CssClass="TextBox" width="123px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox37" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_VCBOMBody.ConditionModify_from" DisableCssClass="TextBox" CssClass="TextBox" width="126px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox38" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_VCBOMBody.ConditionModify_to" DisableCssClass="TextBox" CssClass="TextBox" width="136px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox39" runat="server" XDataBind="HD_Applicant_VCBOMBody.Num_from" DisableCssClass="TextBox" CssClass="TextBox" width="27px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox40" runat="server" XDataBind="HD_Applicant_VCBOMBody.Num_to" DisableCssClass="TextBox" CssClass="TextBox" width="20px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox41" runat="server" XDataBind="HD_Applicant_VCBOMBody.Digitally_add" DisableCssClass="TextBox" CssClass="TextBox" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" Width="29px" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox42" runat="server" XDataBind="HD_Applicant_VCBOMBody.Digitally_del" DisableCssClass="TextBox" CssClass="TextBox" width="28px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox27" runat="server" XDataBind="HD_Applicant_VCBOMBody.Unit_from" DisableCssClass="TextBox" CssClass="TextBox" width="29px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox28" runat="server" XDataBind="HD_Applicant_VCBOMBody.Unit_to" DisableCssClass="TextBox" CssClass="TextBox" width="20px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox43" runat="server" XDataBind="HD_Applicant_VCBOMBody.QualityState_before" DisableCssClass="TextBox" CssClass="TextBox" width="40px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" NormalCssClass="TextBox" Height="37px" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox44" runat="server" XDataBind="HD_Applicant_VCBOMBody.QualityState_after" DisableCssClass="TextBox" CssClass="TextBox" width="38px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox21" runat="server" XDataBind="HD_Applicant_VCBOMBody.CentralRelation" DisableCssClass="TextBox" CssClass="TextBox" width="28px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox46" runat="server" XDataBind="HD_Applicant_VCBOMBody.Remark" DisableCssClass="TextBox" CssClass="TextBox" width="54px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td height="21">
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td colspan="2">
                            </td>
                            <td colspan="2">
                            </td>
                            <td>
                            </td>
                            <td colspan="3">
                            </td>
                            <td colspan="2" align="middle">
                                <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" HiddenExpress="Global.StepName!='BOM维护员'" PrintOut="False" Text="添加行" TableName="HD_Applicant_VCBOMBody"></aspxform:XAddBlockButton>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress="Global.StepName =='BOM维护员'||Global.StepName =='审核人1'||Global.StepName =='开始'">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="800" align="middle">
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ValidationGroup="设计师同意" ControlToValidate="XTextBox3" ErrorMessage="验证意见必填！" Display="None" DisableExpress='HD_Applicant_VCBOM.Test  !="需批量验证"'>验证意见</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ValidationGroup="设计师同意" ControlToValidate="XRadioButtonList2" ErrorMessage="是否批量验证必选" Display="None">是否批量验证必选</aspxform:XRequiredFieldValidator>
                                <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="HD_Applicant_VCBOM.Test" Width="210px" RepeatDirection="Horizontal">
                                    <asp:ListItem>需批量验证</asp:ListItem>
                                    <asp:ListItem>不需批量验证</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ValidationGroup="审批人2同意" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写评审意见,如果选有关联审核人，请填写关联审核人评审内容" Display="None">填写签核意见</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ValidationGroup="关联评审人员" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写评审意见" Display="None">关联评审人员</aspxform:XRequiredFieldValidator>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress='HD_Applicant_VCBOM.Test  !="需批量验证"'>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="84">
                                <aspxform:XLabel id="XLabel2" runat="server" text="验证意见:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="909">
                                <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="HD_Applicant_VCBOM.TestInfo" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Width="866px"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </p>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" width="656" colspan="3">
                                <aspxform:XLabel id="XLabel13" runat="server" text="设计师"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="340">
                                <div align="right">
                                    <aspxform:XCustomBrowserButton id="XCustomBrowserButton1" runat="server" Width="105px" HiddenExpress="Global.StepName!='BOM维护员'" ValidationGroup="BOM维护员同意" PrintOut="False" Text="选择设计师" PopupWndHeight="500" PopupWndX="100" PopupWndY="100" UseSubmitBehavior="False" NavigateUrl="~\FormSupport\Designer.aspx" PopupWndWidth="800" DataMap="Col2->HD_Applicant_Designer_VCBOM.HRID;Col3->HD_Applicant_Designer_VCBOM.Name;Col4->HD_Applicant_Designer_VCBOM.Dept;Col5->HD_Applicant_Designer_VCBOM.FullName"></aspxform:XCustomBrowserButton>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="23" width="129">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel14" runat="server" text="序号"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="521">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel21" runat="server" text="设计师姓名"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel23" runat="server" text="设计师部门"></aspxform:XLabel>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="26">
                                <aspxform:XGridLineNo id="XGridLineNo1" runat="server" BorderColor="Gainsboro" Width="81px" BorderWidth="1px" BackColor="#F0F0F0" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                                <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="HD_Applicant_Designer_VCBOM.HRID" width="30px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderWidth="1px" BorderStyle="Dotted"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="HD_Applicant_Designer_VCBOM.Name" width="100%" BorderColor="#DCDCDC" BorderWidth="1" BackColor="#F0F0F0" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                                <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="HD_Applicant_Designer_VCBOM.Dept" BorderColor="#DCDCDC" BorderWidth="1" BackColor="#F0F0F0" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="HD_Applicant_Designer_VCBOM.FullName" BorderColor="#DCDCDC" BorderWidth="1" HiddenExpress="1" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </p>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" dynamicarea="2,1">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" colspan="3">
                                <aspxform:XLabel id="XLabel15" runat="server" text="关联评审人:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="669">
                                <div align="right">
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ValidationGroup="审批人2同意" ControlToValidate="XTextBox18" ErrorMessage="请填写每个关联评审人的评审要求！" Display="None" DisableExpress='HD_RelationAuditor_VCBOM.Name ==""'>评审要求</aspxform:XRequiredFieldValidator>
                                    <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="105px" HiddenExpress="Global.StepName!='审核人2' &amp;&amp; Global.StepName!='BOM维护员'" Height="20px" PrintOut="False" Text="选择关联审批人" PopupWndHeight="500" PopupWndX="100" PopupWndY="100" UseSubmitBehavior="False" NavigateUrl="~\FormSupport\SelUser.aspx" PopupWndWidth="800" DataMap="Account->HD_RelationAuditor_VCBOM.HRID;DisplayName->HD_RelationAuditor_VCBOM.Name;Department->HD_RelationAuditor_VCBOM.Dept" MultiSelect="True"></aspxform:XSelectUserButton>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="70">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel16" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="127">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel17" runat="server" text="审批人姓名"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="121">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel22" runat="server" text="评审人角色"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                                <aspxform:XLabel id="XLabel3" runat="server" text="评审要求"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                                <aspxform:XGridLineNo id="XGridLineNo3" runat="server" BorderColor="Gainsboro" Width="33px" BorderWidth="1px" Height="22px" BackColor="#F0F0F0" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                                <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="HD_RelationAuditor_VCBOM.HRID" width="30px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderWidth="1px" BorderStyle="Dotted"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="HD_RelationAuditor_VCBOM.Name" width="100px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" Height="22px" BackColor="#F0F0F0" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="HD_RelationAuditor_VCBOM.Dept" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Width="80px" BorderWidth="1px" BackColor="#F0F0F0" ReadOnly="True" BorderStyle="None"></aspxform:XTextBox>
                                &nbsp;
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="HD_RelationAuditor_VCBOM.Notion" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="#DCDCDC" HiddenInput="False" Width="100%"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress='HD_RelationAuditor_VCBOM.Name == "" '>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="70">
                                <aspxform:XLabel id="XLabel39" runat="server" text="签核附件:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="925">
                                <aspxform:XMSNAttachments id="XMSNAttachments11" runat="server" XDataBind="HD_Applicant_VCBOM.RelationAtt" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23" colspan="2">
                                <aspxform:XLabel id="XLabel25" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                                <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" width="100%" BorderColor="#DCDCDC" BorderWidth="1" TextMode="MultiLine" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32" colspan="2">
                                <aspxform:XSignTrace id="XSignTrace2" runat="server" CssClass="AA" BorderColor="#dcdcdc" Width="100%" BorderWidth="1"></aspxform:XSignTrace>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="26" valign="bottom" width="201" align="right">
                                <aspxform:XPrintButton id="XPrintButton1" runat="server"></aspxform:XPrintButton>
                            </td>
                            <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="533" align="left">
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ValidationGroup="Return" ControlToValidate="XCommentsTextBox1" ErrorMessage="退回请填写原因" Display="None">退回重填验证</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ValidationGroup="Reject" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写拒绝原因" Display="None">拒绝验证</aspxform:XRequiredFieldValidator>
                                <aspxform:XProcessButtonList id="XProcessButtonList2" runat="server"></aspxform:XProcessButtonList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="1000" PrintOut="False">
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
            </p>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                    <tbody>
                    </tbody>
                </table>
            </p>
            <p>
            </p>
            <div style="Z-INDEX: 100; POSITION: absolute; BACKGROUND-COLOR: #c0c000; DISPLAY: none" id="tips">
            </div>
        </div>
    </form>
</body>
</html>
