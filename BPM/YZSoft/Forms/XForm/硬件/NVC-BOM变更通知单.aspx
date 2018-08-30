<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
    
      protected void Page_Load(object sender, EventArgs e)
        {
            XTextBox4.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox17.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
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
INPUT {
	HEIGHT: 20px
}
.TextBox {
	BORDER-BOTTOM: silver 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none
}
INPUT.UL {
	BORDER-BOTTOM: #33ff33 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none
}
TABLE.SignHistory {
	BORDER-BOTTOM: #dcdcdc 1px solid; BORDER-LEFT: #dcdcdc 1px solid; BORDER-COLLAPSE: collapse; BORDER-TOP: #dcdcdc 1px solid; BORDER-RIGHT: #dcdcdc 1px solid
}
TABLE.SignHistory TD.Col1 {
	TEXT-ALIGN: right; BACKGROUND-COLOR: #ffffff; WIDTH: 30%; PADDING-RIGHT: 3px; COLOR: gray
}
TABLE.SignHistory TD.Col2 {
	TEXT-ALIGN: right; BACKGROUND-COLOR: #f0f0f0; PADDING-LEFT: 3px; WIDTH: 25%; PADDING-RIGHT: 20px; FONT-WEIGHT: bold
}
TABLE.SignHistory TD.Col3 {
	TEXT-ALIGN: right; BACKGROUND-COLOR: #ffffff; WIDTH: 15%; PADDING-RIGHT: 3px; COLOR: gray
}
TABLE.SignHistory TD.Col4 {
	TEXT-ALIGN: right; BACKGROUND-COLOR: #f0f0f0; PADDING-LEFT: 3px; WIDTH: 25%; PADDING-RIGHT: 20px; FONT-WEIGHT: bold
}
TABLE.SignHistory INPUT.Acc {
	BORDER-BOTTOM: #dcdcdc 1px solid; BORDER-LEFT: #dcdcdc 1px solid; PADDING-LEFT: 3px; WIDTH: 100%; PADDING-RIGHT: 3px; BORDER-TOP: #dcdcdc 1px solid; BORDER-RIGHT: #dcdcdc 1px solid
}
TABLE.SignHistory INPUT.Date {
	BORDER-BOTTOM: #dcdcdc 1px solid; BORDER-LEFT: #dcdcdc 1px solid; PADDING-LEFT: 3px; WIDTH: 100%; PADDING-RIGHT: 3px; BORDER-TOP: #dcdcdc 1px solid; BORDER-RIGHT: #dcdcdc 1px solid
}
.a {
	WIDTH: 80px; hight: 20px
}
.b {
	hight: 20px
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
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="96" align="middle">
                                <aspxform:XLabel id="XLabel31" runat="server" text="提交人:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="192" align="left">
                                <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="HD_Applicant_VCBOM.Name" DisableCssClass="TextBox" CssClass="TextBox" width="160px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="56">
                                <aspxform:XLabel id="XLabel32" runat="server" text="产品型号:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="375" colspan="3">
                                <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="HD_Applicant_VCBOM.ProductMode" DisableCssClass="TextBox" CssClass="TextBox" width="348px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" NormalCssClass="TextBox"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="34">
                                <aspxform:XLabel id="XLabel33" runat="server" text="日期:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="232">
                                <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="HD_Applicant_VCBOM.AppDate" DisableCssClass="TextBox" CssClass="TextBox" width="206px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="95" align="middle">
                                <aspxform:XLabel id="XLabel3" runat="server" text="产品线"></aspxform:XLabel>
                            </td>
                            <td width="899">
                                <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="HD_Applicant_VCBOM.BelongingDept" RepeatDirection="Horizontal">
                                    <asp:ListItem>国内运营产品线</asp:ListItem>
                                    <asp:ListItem>海外运营产品线</asp:ListItem>
                                    <asp:ListItem>国内电信运营商</asp:ListItem>
                                    <asp:ListItem>海外零售产品线</asp:ListItem>
                                    <asp:ListItem>新产品业务部</asp:ListItem>
                                    <asp:ListItem>自动化开发部</asp:ListItem>
                                    <asp:ListItem>无线</asp:ListItem>
                                    <asp:ListItem>宽带事业部</asp:ListItem>
                                </aspxform:XRadioButtonList>
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
                                <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyModule" RepeatDirection="Horizontal">
                                    <asp:ListItem>硬件</asp:ListItem>
                                    <asp:ListItem>电源</asp:ListItem>
                                    <asp:ListItem>副板</asp:ListItem>
                                    <asp:ListItem>软件</asp:ListItem>
                                    <asp:ListItem>结构</asp:ListItem>
                                    <asp:ListItem>工艺</asp:ListItem>
                                    <asp:ListItem>物料代用</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="HD_Applicant_VCBOM.HRID" width="20px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="HD_Applicant_VCBOM.Name" width="10px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="HD_Applicant_VCBOM.Dept" width="8px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1"></aspxform:XTextBox>
                                <aspxform:XLabel id="XLabel35" runat="server" text="序号:" HiddenExpress="1"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="HD_Applicant_VCBOM.SN" width="10px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="HD_Applicant_VCBOM.RealSN" width="10px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                                <aspxform:XLabel id="XLabel36" runat="server" text="订单编号:" HiddenExpress="1"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="HD_Applicant_VCBOM.OrderFormSN" width="34px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="996" align="middle">
                                <aspxform:XCheckBoxList id="XCheckBoxList1" runat="server" XDataBind="HD_Applicant_VCBOM.RemandOrApp" RepeatDirection="Horizontal">
                                    <asp:ListItem>有新物料申请</asp:ListItem>
                                    <asp:ListItem>有新组件申请</asp:ListItem>
                                    <asp:ListItem>直接变更申请</asp:ListItem>
                                </aspxform:XCheckBoxList>
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
                                        <asp:ListItem>设计类变更</asp:ListItem>
                                        <asp:ListItem>物料类变更</asp:ListItem>
                                        <asp:ListItem>客户化变更</asp:ListItem>
                                        <asp:ListItem>清库存(半成品)</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_VCBOM.ModifyType !="设计类变更"'>
                                        <asp:ListItem>BOM纠错</asp:ListItem>
                                        <asp:ListItem>性能优化</asp:ListItem>
                                        <asp:ListItem>工艺优化</asp:ListItem>
                                        <asp:ListItem Value="其它">其它</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_VCBOM.ModifyType !="物料类变更"'>
                                        <asp:ListItem Value="新物料试产">新物料试产</asp:ListItem>
                                        <asp:ListItem Value="替代物料代用">替代物料代用</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList11" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_VCBOM.ModifyType !="客户化变更"'>
                                        <asp:ListItem>市场变更</asp:ListItem>
                                        <asp:ListItem>日常变更</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyReason" HiddenExpress='HD_Applicant_VCBOM.ModifyType !="清库存"'>
                                        <asp:ListItem>清半成品库存</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                                <aspxform:XLabel id="XLabel10" runat="server" text="变更说明:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="7">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox4" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyInstruction" DisableCssClass="TextBox" CssClass="TextBox" width="100%" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" align="middle">
                                <aspxform:XLabel id="XLabel19" runat="server" text="关键物料:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="7">
                                <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="HD_Applicant_VCBOM.KeyMateriel" RepeatDirection="Horizontal">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem>否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="45" align="middle">
                                <aspxform:XLabel id="XLabel20" runat="server" text="变更依据:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="7">
                                <p>
                                    <aspxform:XCheckBoxList id="XCheckBoxList4" runat="server" XDataBind="HD_Applicant_VCBOM.AttachmentType" RepeatDirection="Horizontal" Width="518px">
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
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="96" align="middle">
                                <aspxform:XLabel id="XLabel18" runat="server" text="变更内容:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="897">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox17" runat="server" XDataBind="HD_Applicant_VCBOM.MaterielTemplate" DisableCssClass="TextBox" CssClass="TextBox" width="890px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                                <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="HD_Applicant_VCBOM.MaterielTemplateAtt" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
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
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ValidationGroup="录入SAP" ControlToValidate="XTextBox25" ErrorMessage="请填写ECN变更记录号！" Display="None">ECN变更记录号</aspxform:XRequiredFieldValidator>
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
                                <aspxform:XGridLineNo id="XGridLineNo2" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Width="17px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
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
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox41" runat="server" XDataBind="HD_Applicant_VCBOMBody.Digitally_add" DisableCssClass="TextBox" CssClass="TextBox" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" TextMode="MultiLine" Width="29px"></aspxform:XTextBox>
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
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox43" runat="server" XDataBind="HD_Applicant_VCBOMBody.QualityState_before" DisableCssClass="TextBox" CssClass="TextBox" width="40px" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" NormalCssClass="TextBox" TextMode="MultiLine" Height="37px"></aspxform:XTextBox>
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
                                <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="HD_Applicant_VCBOM.Test" RepeatDirection="Horizontal" Width="210px">
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
                                    <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" HiddenExpress="Global.StepName!='BOM维护员'" Width="112px" Text="选择设计师" PopupWndHeight="500" PopupWndX="100" PopupWndY="100" UseSubmitBehavior="False" NavigateUrl="~\FormSupport\SelUser.aspx" PopupWndWidth="800" DataMap="Account->HD_Applicant_Designer_VCBOM.HRID;DisplayName->HD_Applicant_Designer_VCBOM.Name;MemberFullName->HD_Applicant_Designer_VCBOM.FullName;Department->HD_Applicant_Designer_VCBOM.Dept"></aspxform:XSelectUserButton>
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
                                <aspxform:XGridLineNo id="XGridLineNo1" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Width="24px" BackColor="#F0F0F0" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
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
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" colspan="4">
                                <aspxform:XLabel id="XLabel4" runat="server" text="关联评审人:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" colspan="3">
                                <div align="right">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="31" width="25">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel27" runat="server" text="序号"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="128">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel6" runat="server" text="关联模块"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="133">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel24" runat="server" text="业务组"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="187">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel38" runat="server" text="关联确认人"></aspxform:XLabel>
                                </div>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="179" align="middle">
                                <aspxform:XLabel id="XLabel40" runat="server" text="关联审核人"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" valign="center" width="176" align="middle">
                                <aspxform:XLabel id="XLabel41" runat="server" text="关联批准人"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="150" align="middle">
                                <aspxform:XLabel id="XLabel44" runat="server" text="查看详情"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                                <aspxform:XGridLineNo id="XGridLineNo4" runat="server" BorderColor="Gainsboro" BorderWidth="1px" Width="17px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="HD_RelationAuditor_VCBOM.Model" Width="114px" onchange="javascript:XFormOnChange(this);" XDataSource="XDataSource" PromptText="请选择">
                                    <asp:ListItem>供应链</asp:ListItem>
                                    <asp:ListItem>工艺</asp:ListItem>
                                    <asp:ListItem>物料</asp:ListItem>
                                    <asp:ListItem>硬件</asp:ListItem>
                                    <asp:ListItem>结构</asp:ListItem>
                                    <asp:ListItem>测试</asp:ListItem>
                                </aspxform:XDropDownList>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="HD_RelationAuditor_VCBOM.BusinessType" Width="123px" onchange="javascript:XFormOnChange(this);" XDataSource="TableName:V_HD_RelationAuditor;Filter:Model->HD_RelationAuditor_VCBOM.Model" PromptText="请选择" ValueColumn="BusinessType" DisplayColumn="BusinessType">
                                    <asp:ListItem>未绑定</asp:ListItem>
                                </aspxform:XDropDownList>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XDropDownList id="XDropDownList6" runat="server" XDataBind="HD_RelationAuditor_VCBOM.ConfirmationName" Width="127px" DataMap="ConfirmationHRID->HD_RelationAuditor_VCBOM.ConfirmationHRID;AuditName->HD_RelationAuditor_VCBOM.AuditName;AuditHRID->HD_RelationAuditor_VCBOM.AuditHRID;ApprovalName->HD_RelationAuditor_VCBOM.ApprovalName;ApprovalHRID->HD_RelationAuditor_VCBOM.ApprovalHRID" onchange="javascript:XFormOnChange(this);" XDataSource="TableName:HD_RelationAuditor;Filter:Model->HD_RelationAuditor_VCBOM.Model,BusinessType->HD_RelationAuditor_VCBOM.BusinessType" PromptText="请选择" ValueColumn="ConfirmationName" DisplayColumn="ConfirmationName">
                                    <asp:ListItem>未绑定</asp:ListItem>
                                </aspxform:XDropDownList>
                                <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="HD_RelationAuditor_VCBOM.ConfirmationHRID" width="46px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XDropDownList id="XDropDownList7" runat="server" XDataBind="HD_RelationAuditor_VCBOM.AuditName" Width="125px" onchange="javascript:XFormOnChange(this);" XDataSource="TableName:HD_RelationAuditor;Filter:Model->HD_RelationAuditor_VCBOM.Model,BusinessType->HD_RelationAuditor_VCBOM.BusinessType,ConfirmationName->HD_RelationAuditor_VCBOM.ConfirmationName,ConfirmationHRID->HD_RelationAuditor_VCBOM.ConfirmationHRID" PromptText="请选择" ValueColumn="AuditName" DisplayColumn="AuditName">
                                    <asp:ListItem>未绑定</asp:ListItem>
                                </aspxform:XDropDownList>
                                <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="HD_RelationAuditor_VCBOM.AuditHRID" width="47px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XDropDownList id="XDropDownList8" runat="server" XDataBind="HD_RelationAuditor_VCBOM.ApprovalName" Width="100px" onchange="javascript:XFormOnChange(this);" XDataSource="TableName:HD_RelationAuditor;Filter:Model->HD_RelationAuditor_VCBOM.Model,BusinessType->HD_RelationAuditor_VCBOM.BusinessType,ConfirmationName->HD_RelationAuditor_VCBOM.ConfirmationName,ConfirmationHRID->HD_RelationAuditor_VCBOM.ConfirmationHRID" PromptText="请选择" ValueColumn="ApprovalName" DisplayColumn="ApprovalName">
                                    <asp:ListItem>未绑定</asp:ListItem>
                                </aspxform:XDropDownList>
                                <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="HD_RelationAuditor_VCBOM.ApprovalHRID" width="59px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                                <aspxform:XHistoryFormLink id="XHistoryFormLink1" runat="server" XDataBind="HD_RelationAuditor_VCBOM.DetailTaskID" Text="查看关联审核详情"></aspxform:XHistoryFormLink>
                            </td>
                        </tr>
                        <tr>
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
                            <td align="middle">
                                <aspxform:XAddBlockButton id="XAddBlockButton3" runat="server" Width="104px" Text="添加关联审核人" TableName="HD_RelationAuditor_VCBOM" UseSubmitBehavior="False" OnClientClick="XFormShell.XFormAgent.AppendBlock(this,'HD_RelationAuditor_Factory');return false;"></aspxform:XAddBlockButton>
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
                                <aspxform:XSignTrace id="XSignTrace2" runat="server" CssClass="AA" BorderColor="#dcdcdc" BorderWidth="1" Width="100%"></aspxform:XSignTrace>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="26" valign="bottom" width="201" align="right">
                                <aspxform:XPrintButton id="XPrintButton1" runat="server"></aspxform:XPrintButton>
                            </td>
                            <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="533" align="middle">
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ValidationGroup="Return" ControlToValidate="XCommentsTextBox1" ErrorMessage="退回请填写原因" Display="None">退回重填验证</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ValidationGroup="Reject" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写拒绝原因" Display="None">拒绝验证</aspxform:XRequiredFieldValidator>
                                <aspxform:XProcessButtonList id="XProcessButtonList2" runat="server"></aspxform:XProcessButtonList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table border="0" cellspacing="0" cellpadding="0" width="1000" printout="False">
                    <tbody>
                        <tr>
                            <td height="17" width="398">
                            </td>
                            <td width="763">
                            </td>
                            <td width="83">
                            </td>
                        </tr>
                        <tr>
                            <td height="108" colspan="3">
                                <p>
                                    <aspxform:XLabel id="XLabel94" runat="server" Font-Size="Medium" ForeColor="Red" PrintOut="False" Text="关联评审注意事项:"></aspxform:XLabel>
                                </p>
                                <p>
                                    <aspxform:XLabel id="XLabel96" runat="server" text="1. 接口变更可能影响结构背板：高频头，RF头，CM，EOC，WIFI天线，及与立项时端子规格有变化的等；" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    <aspxform:XLabel id="XLabel101" runat="server" text="2. 配件变更可能影响结构包装：SCART线，RF线，HDMI线，AV线，适配器，遥控器，网线，电源线等；" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    <aspxform:XLabel id="XLabel149" runat="server" text="3. 区域限制物料变更可能影响结构装配：电源板高压电容，及与立项装配有变化的副板等；" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    <aspxform:XLabel id="XLabel188" runat="server" text="4. 存储器件变更可能影响软件：Flash，DDR等；" PrintOut="False"></aspxform:XLabel>
                                </p>
                                <p>
                                    &nbsp;&nbsp;&nbsp;
                                </p>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="1000">
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
