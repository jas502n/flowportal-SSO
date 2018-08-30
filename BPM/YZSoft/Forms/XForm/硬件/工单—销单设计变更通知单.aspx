<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
       protected void Page_Load(object sender, EventArgs e)
        {
    
           XTextBox58.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox27.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox28.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox12.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
           XTextBox14.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox16.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
           XTextBox30.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
           XTextBox31.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox4.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");;
    
    
           XTextBox2.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox22.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
    
    
    
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
           XTextBox47.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox53.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox56.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox43.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox44.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox57.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
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
	BACKGROUND-COLOR: white
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

var str = document.getElementById("XTextBox48").value;

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


var futurestring=montharray[mo-1]+" "+da+", "+yr+" "+th+":"+tm+":"+ts ;

dd=Date.parse(futurestring)-Date.parse(todaystring);
dday=Math.floor(dd/(60*60*1000*24)*1);
dhour=Math.floor((dd%(60*60*1000*24))/(60*60*1000)*1);
dmin=Math.floor(((dd%(60*60*1000*24))%(60*60*1000))/(60*1000)*1);
dsec=Math.floor((((dd%(60*60*1000*24))%(60*60*1000))%(60*1000))/1000*1);
if(dday<=0&&dhour<=0&&dmin<=0&&dsec<=1)
{
    if (document.layers)
     {
        // document.countdownnsmain.document.countdownnssub.document.write(opentags+message_on_occasion+closetags);
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
        document.getElementById("XLabel10").innerHTML = "距离时限截止还有"+opentags+dday+ " 天, "+dhour+" 小时, "+dmin+" 分,"+dsec+" 秒 ";
        document.countdownnsmain.document.countdownnssub.document.close();
     }
    else if (document.all)

     document.getElementById("XLabel10").innerHTML = "距离时限截止还有"+opentags+dday+ " 天, "+dhour+" 小时, "+dmin+" 分,"+dsec+" 秒 ";

}
setTimeout("countdown()",1000)
}
</script>
    <script language="JavaScript">
    function　Toggle(pButton,pDiv)
     {
        var button=document.getElementById(pButton);
        var div=document.getElementById(pDiv);

　　　　if(div.style.display=='none')
　　　　{
                div.style.display = "";
　　　　　　　　button.value="隐藏";
　　　　}
　　　　else
　　　　{
                div.style.display = "none";
　　　　　　　　button.value='展开';
　　　　}
     }
    </script>
</head>
<body>
    <form runat="server">
        <div align="center">
            <!-- Insert content here -->
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="256">
                                <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                                &nbsp;</td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="474" align="middle">
                                <aspxform:XLabel id="XLabel1" runat="server" Font-Size="Medium" Font-Names="Tahoma" Font-Bold="True" text="深圳创维数字技术股份有限公司"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="264" align="middle">
                                <aspxform:XLabel id="XLabel11" runat="server" XDataBind="HD_Applicant_Factory.RealSN"></aspxform:XLabel>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="58" colspan="3" align="middle">
                                <asp:Label id="Label1" runat="server" text="工单/销单设计变更通知单" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="60" align="middle">
                                <aspxform:XLabel id="XLabel39" runat="server" text="提交人:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="85">
                                <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="HD_Applicant_Factory.Name" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="22px" width="70px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="57">
                                <aspxform:XLabel id="XLabel40" runat="server" text="产品型号:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="126">
                                <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="HD_Applicant_Factory.ProductMode" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" width="120px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="60">
                                <aspxform:XLabel id="XLabel54" runat="server" text="订单编号:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="330">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox47" runat="server" XDataBind="HD_Applicant_Factory.OrderFormSN" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="21px" width="305px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="33">
                                <aspxform:XLabel id="XLabel56" runat="server" text="日期:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="224">
                                <aspxform:XTextBox id="XTextBox62" runat="server" XDataBind="HD_Applicant_Factory.AppDate" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="148px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="60" align="middle">
                                <aspxform:XLabel id="XLabel32" runat="server" text="执行数量:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none" width="500">
                                <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="HD_Applicant_Factory.Number" Width="447px" RepeatDirection="Horizontal">
                                    <asp:ListItem>订单数量（含备机）</asp:ListItem>
                                    <asp:ListItem>备损散件数量</asp:ListItem>
                                    <asp:ListItem Value="指定数量">指定数量</asp:ListItem>
                                    <asp:ListItem>见变更内容</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="430">
                                <aspxform:XLabel id="XLabel71" runat="server" Text="约" HiddenExpress='HD_Applicant_Factory.Number !="订单数量（含备机）"'></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="HD_Applicant_Factory.NumberValue" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" width="162px" BorderColor="Pink" Max="0" Min="0" HiddenInput="False" HiddenExpress='HD_Applicant_Factory.Number == "见变更内容"'></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                                <aspxform:XLabel id="XLabel18" runat="server" text="变更内容:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox16" runat="server" XDataBind="HD_Applicant_Factory.MaterielTemplate" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="160px" width="733px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" TextMode="MultiLine" ForeColor="Blue"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="58" align="middle">
                                <aspxform:XLabel id="XLabel72" runat="server" text="变更原因:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="21" width="909" colspan="2">
                                <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="HD_Applicant_Factory.ModifyType" Width="253px" RepeatDirection="Horizontal">
                                    <asp:ListItem>物料变更</asp:ListItem>
                                    <asp:ListItem>设计变更</asp:ListItem>
                                    <asp:ListItem>工艺变更</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="HD_Applicant_Factory.ModifyReason" Width="556px" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_Factory.ModifyType!="物料变更"'>
                                        <asp:ListItem Value="物料变更-新物料试产">新物料试产</asp:ListItem>
                                        <asp:ListItem Value="物料变更-物料代用">物料代用</asp:ListItem>
                                        <asp:ListItem Value="物料变更-增加、删除物料">增加、删除物料</asp:ListItem>
                                        <asp:ListItem Value="物料变更-修改用量">修改用量</asp:ListItem>
                                        <asp:ListItem Value="物料变更-其它">其它</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="HD_Applicant_Factory.ModifyReason" Width="565px" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_Factory.ModifyType !="设计变更"'>
                                        <asp:ListItem Value="设计变更-功能优化">功能优化</asp:ListItem>
                                        <asp:ListItem Value="设计变更-选择条件">选择条件</asp:ListItem>
                                        <asp:ListItem Value="设计变更-性能优化">性能优化</asp:ListItem>
                                        <asp:ListItem Value="设计变更-客户化更改">客户化更改</asp:ListItem>
                                        <asp:ListItem Value="设计变更-其它">其它</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="HD_Applicant_Factory.ModifyReason" Width="554px" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_Factory.ModifyType  !="工艺变更"'>
                                        <asp:ListItem Value="工艺变更-增加、删除辅料">增加、删除辅料</asp:ListItem>
                                        <asp:ListItem Value="工艺变更-辅料用量变更">辅料用量变更</asp:ListItem>
                                        <asp:ListItem Value="工艺变更-辅料代用">辅料代用</asp:ListItem>
                                        <asp:ListItem Value="工艺变更-分层优化">分层优化</asp:ListItem>
                                        <asp:ListItem Value="工艺变更-其它">其它</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="60" align="middle">
                                <aspxform:XLabel id="XLabel5" runat="server" text="变更说明:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="930">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox4" runat="server" XDataBind="HD_Applicant_Factory.ModifyInstruction" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" width="800px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress='Global.StepName =="批准人"  '>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: black 1px solid; BORDER-TOP: medium none" bgcolor="#d1dedf" height="25" width="998" colspan="2">
                                <aspxform:XLabel id="XLabel160" runat="server" Font-Size="Small" Font-Bold="True" text="打印隐藏" ForeColor="Navy"></aspxform:XLabel>
                                <input id="bt5" onclick="Toggle('bt5','div5')" value="隐藏" type="button" /></td>
                        </tr>
                    </tbody>
                </table>
            </p>
            <div style="VISIBILITY: visible" id="div5">
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="60" align="middle">
                                <aspxform:XLabel id="XLabel58" runat="server" text="变更模块:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="931">
                                <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="HD_Applicant_Factory.ModifyModule" Width="263px" RepeatDirection="Horizontal">
                                    <asp:ListItem>硬件</asp:ListItem>
                                    <asp:ListItem>软件</asp:ListItem>
                                    <asp:ListItem>结构</asp:ListItem>
                                    <asp:ListItem>工艺</asp:ListItem>
                                    <asp:ListItem>物料</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                <aspxform:XLabel id="XLabel69" runat="server" text="序号:" HiddenExpress="1"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox63" runat="server" XDataBind="HD_Applicant_Factory.SN" width="10px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" BorderWidth="1px"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox64" runat="server" XDataBind="HD_Applicant_Factory.RealSN" width="150px" BorderColor="#DCDCDC" HiddenExpress="1" BorderWidth="1"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox65" runat="server" XDataBind="HD_Applicant_Factory.HRID" width="20px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1" BorderStyle="None"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress='HD_Applicant_Factory.ModifyModule =="工艺"  || HD_Applicant_Factory.ModifyModule =="软件" || HD_Applicant_Factory.ModifyModule =="" '>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="996" align="middle">
                                <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="HD_Applicant_Factory.OrderformRelation" Width="336px" RepeatDirection="Horizontal">
                                    <asp:ListItem>与订单相关</asp:ListItem>
                                    <asp:ListItem>不与订单相关</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress='HD_Applicant_Factory.OrderformRelation =="不与订单相关" ||  HD_Applicant_Factory.OrderformRelation ==""'>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="996" align="middle">
                                <aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" XDataBind="HD_Applicant_Factory.RemandOrApp" Width="335px" RepeatDirection="Horizontal">
                                    <asp:ListItem>变更需求</asp:ListItem>
                                    <asp:ListItem>变更申请</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <!-- Insert content here -->
                <p>
                </p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="60" align="middle">
                                <aspxform:XLabel id="XLabel19" runat="server" text="关键物料:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="910" colspan="7">
                                <aspxform:XCheckBoxList id="XCheckBoxList3" runat="server" XDataBind="HD_Applicant_Factory.KeyMateriel" Width="800px" RepeatDirection="Horizontal">
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
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="44" width="60" align="middle">
                                <aspxform:XLabel id="XLabel20" runat="server" text="变更依据:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="7">
                                <p>
                                    <aspxform:XCheckBoxList id="XCheckBoxList4" runat="server" XDataBind="HD_Applicant_Factory.AttachmentType" Width="518px" RepeatDirection="Horizontal">
                                        <asp:ListItem>硬件变更测评报告</asp:ListItem>
                                        <asp:ListItem>新物料试产报告</asp:ListItem>
                                        <asp:ListItem>软件变更测试报告</asp:ListItem>
                                        <asp:ListItem>市场需求变更表号</asp:ListItem>
                                        <asp:ListItem>其它</asp:ListItem>
                                    </aspxform:XCheckBoxList>
                                </p>
                                <p>
                                    <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="HD_Applicant_Factory.Attachment" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                                    <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="HD_Applicant_Factory.AttachmentOther" CssClass="TextBox" DisableBehavior="ReadOnly" width="644px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress='HD_Applicant_Factory.AttachmentType  !="其它"'></aspxform:XTextBox>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="60" align="middle">
                                <aspxform:XLabel id="XLabel7" runat="server" text="补充说明:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="7">
                                <aspxform:XTextBox id="XTextBox61" runat="server" XDataBind="HD_Applicant_Factory.ReplenishInstruction" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" width="879px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" colspan="3">
                                <aspxform:XLabel id="XLabel8" runat="server" text="工单更改表格:"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="HD_Applicant_Factory.FactorySN" width="450px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="360">
                                <aspxform:XLabel id="XLabel9" runat="server" Font-Bold="True" text="DN变更记录号:"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="HD_Applicant_Factory.SAP_DNSN" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Width="103px" BorderWidth="1px">XXX（链接申请表格的编号）</aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="860" colspan="2">
                                <aspxform:XLabel id="XLabel73" runat="server" text="更改时限截止:"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox48" runat="server" Font-Bold="False" XDataBind="time" CssClass="TextBox" width="185px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Express="HD_Applicant_Factory.StopTime_Factory"></aspxform:XTextBox>
                                <aspxform:XLabel id="XLabel10" runat="server" Font-Bold="True" Height="100%" ForeColor="Red" BackColor="Transparent"></aspxform:XLabel>
                                <aspxform:XLabel id="XLabel14" runat="server" text="修改截止时间:" HiddenExpress="Global.StepName!='批准人\批准人1' &amp;&amp; Global.StepName!='批准人1\批准人1'&amp;&amp;Global.StepName!='订单计划员'"></aspxform:XLabel>
                                <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="HD_Applicant_Factory.StopTime_Factory" BorderColor="#DCDCDC" HiddenExpress="Global.StepName!='批准人\批准人1' &amp;&amp; Global.StepName!='批准人1\批准人1'&amp;&amp;Global.StepName!='订单计划员'" BorderWidth="1" Type="TimeMinutes"></aspxform:XDateTimePicker>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress="HD_Applicant_Factory.FactorySN ==''" dynamicarea="2,1">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="43" rowspan="2" width="15" align="middle">
                                <aspxform:XLabel id="XLabel21" runat="server" text="序号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="75" align="middle">
                                <aspxform:XLabel id="XLabel38" runat="server" text="销单号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="42">
                                <aspxform:XLabel id="XLabel25" runat="server" text="行项目"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="128" align="middle">
                                <aspxform:XLabel id="XLabel42" runat="server" text="工单号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="61" align="middle">
                                <aspxform:XLabel id="XLabel43" runat="server" text="工单数量" Height="7px" Width="51px"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="178" align="middle">
                                <aspxform:XLabel id="XLabel22" runat="server" text="上介组件号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="38" align="middle">
                                <aspxform:XLabel id="XLabel23" runat="server" text="修改方式"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="192" align="middle">
                                <aspxform:XLabel id="XLabel24" runat="server" text="下介组件号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="30" align="middle">
                                <aspxform:XLabel id="XLabel45" runat="server" text="用量"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="52" align="middle">
                                <aspxform:XLabel id="XLabel3" runat="server" text="单位"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="53">
                                <aspxform:XLabel id="XLabel46" runat="server" text="工单状态"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="35" align="middle">
                                <aspxform:XLabel id="XLabel4" runat="server" text="主辅关系"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" width="62">
                                <aspxform:XLabel id="XLabel33" runat="server" text="备注（关键物料标注）"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                                <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Bold="True" BorderColor="Gainsboro" Width="13px" ForeColor="Red" BorderWidth="1px" BackColor="Transparent" Enabled="False" Font-Italic="False" XType="gridlineno">1</aspxform:XGridLineNo>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox58" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.RemoveNO" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine" Width="73px"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.RowProject">
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>40</asp:ListItem>
                                    <asp:ListItem>50</asp:ListItem>
                                    <asp:ListItem>60</asp:ListItem>
                                </aspxform:XDropDownList>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox27" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.FactoryNO" DisableCssClass="TextBox" CssClass="TextBox" Height="20px" width="112px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox28" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.FactoryNum" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="22px" width="57px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox12" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.UpNO" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="159px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.ModifyMode">
                                    <asp:ListItem>A</asp:ListItem>
                                    <asp:ListItem>D</asp:ListItem>
                                </aspxform:XDropDownList>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox14" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.DownNO" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="162px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox30" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.Num" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="28px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.Unit">
                                    <asp:ListItem>PC</asp:ListItem>
                                    <asp:ListItem>ST</asp:ListItem>
                                    <asp:ListItem>RL</asp:ListItem>
                                    <asp:ListItem>ML</asp:ListItem>
                                    <asp:ListItem>M</asp:ListItem>
                                    <asp:ListItem>CM</asp:ListItem>
                                    <asp:ListItem>G</asp:ListItem>
                                    <asp:ListItem>KG</asp:ListItem>
                                </aspxform:XDropDownList>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox31" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.OrderFormState" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="48px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox2" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.CentralRelation" DisableCssClass="TextBox" CssClass="TextBox" Height="20px" width="27px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox22" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.Remark" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="51px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" height="23" colspan="2">
                            </td>
                            <td>
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                                <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="v0" width="100%" BorderColor="#DCDCDC" HiddenExpress="1" BorderWidth="1" Express="sum(if(HD_Applicant_FactoryBody_DN.FactoryNum=='',0,HD_Applicant_FactoryBody_DN.FactoryNum)) + sum(if(HD_Applicant_FactoryBody_ECN.RemoveNum=='',0,HD_Applicant_FactoryBody_ECN.RemoveNum)) "></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                            </td>
                            <td style="BORDER-BOTTOM: medium none" colspan="2">
                            </td>
                            <td style="BORDER-BOTTOM: medium none; BORDER-RIGHT: medium none" colspan="2" align="middle">
                                <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="添加行" HiddenExpress="Global.StepName!='BOM维护员'" PrintOut="False" TableName="HD_Applicant_FactoryBody_DN"></aspxform:XAddBlockButton>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23">
                                <aspxform:XLabel id="XLabel47" runat="server" text="销单更改表格:"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="HD_Applicant_Factory.RemoveSN" width="450px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox59" runat="server" XDataBind="HD_Applicant_Factory.MessageDN" width="70px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" BorderWidth="1px" Express="if(HD_Applicant_FactoryBody_DN.FactoryNO=='' ,&quot;&quot;,&quot;工单号已填&quot;)"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox60" runat="server" XDataBind="HD_Applicant_Factory.MessageECN" width="75px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" BorderWidth="1px" Express="if(HD_Applicant_FactoryBody_ECN.RemoveNO=='' ,&quot;&quot;,&quot;销单号已填&quot;)"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="100%">
                                <aspxform:XLabel id="XLabel12" runat="server" Font-Size="X-Small" Font-Bold="True" Text="ECN变更记录号:"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="HD_Applicant_Factory.SAP_ECNSN" width="276px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px">XXXX（从SAP申请获得）</aspxform:XTextBox>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ValidationGroup="BOM维护员同意" ControlToValidate="XTextBox51" ErrorMessage="请选择设计师" Display="None">BOM维护员选择设计师</aspxform:XRequiredFieldValidator>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress="HD_Applicant_Factory.RemoveSN ==''" dynamicarea="3,1">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="17" align="middle">
                                <aspxform:XLabel id="XLabel48" runat="server" text="序号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="45" align="middle">
                                <aspxform:XLabel id="XLabel68" runat="server" text="销单号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="134" align="middle">
                                <aspxform:XLabel id="XLabel49" runat="server" text="上介组件号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="32" rowspan="3" width="28" align="middle">
                                <aspxform:XLabel id="XLabel50" runat="server" text="修改方式"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="124" align="middle">
                                <aspxform:XLabel id="XLabel51" runat="server" text="下介组件号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="8" align="middle">
                                <aspxform:XLabel id="XLabel52" runat="server" text="修改内容"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="4" align="middle">
                                <aspxform:XLabel id="XLabel53" runat="server" text="质量状态"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="28">
                                <aspxform:XLabel id="XLabel37" runat="server" text="主辅关系"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="47">
                                <aspxform:XLabel id="XLabel55" runat="server" text="备注（关键物料标注）"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td height="19" colspan="2" align="middle">
                                <aspxform:XLabel id="XLabel59" runat="server" text="物料替换"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                                <aspxform:XLabel id="XLabel60" runat="server" text="用量"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                                <aspxform:XLabel id="XLabel61" runat="server" text="位号"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                                <aspxform:XLabel id="XLabel34" runat="server" text="单位"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="4" align="middle">
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="16" width="132" align="middle">
                                <aspxform:XLabel id="XLabel62" runat="server" text="from"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="139" align="middle">
                                <aspxform:XLabel id="XLabel63" runat="server" text="to"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="30" align="middle">
                                <aspxform:XLabel id="XLabel64" runat="server" text="from"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="22" align="middle">
                                <aspxform:XLabel id="XLabel65" runat="server" text="to"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="39" align="middle">
                                <aspxform:XLabel id="XLabel66" runat="server" text="add"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="36">
                                <aspxform:XLabel id="XLabel67" runat="server" text="del"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="30" align="middle">
                                <aspxform:XLabel id="XLabel35" runat="server" text="from"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="23" align="middle">
                                <aspxform:XLabel id="XLabel36" runat="server" text="to"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="37" align="middle">
                                <aspxform:XLabel id="XLabel57" runat="server" text="变更前"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="40" colspan="3" align="middle">
                                <aspxform:XLabel id="XLabel70" runat="server" text="变更后" Width="35px"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="4">
                                <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Font-Bold="True" BorderColor="Gainsboro" Width="12px" BorderWidth="1px" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox52" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.RemoveNO" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="43px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox34" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.UpNO" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="112px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.RemoveNum" width="15px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress="1" BorderWidth="1px"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox35" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.ModifyMode" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="26px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox36" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.DownNO" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="122px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox37" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.ConditionModify_from" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="130px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox38" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.ConditionModify_to" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="137px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox39" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.Num_from" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="27px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox40" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.Num_to" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="20px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox41" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.Digitally_add" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="37px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox42" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.Digitally_del" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="34px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox53" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.Unit_from" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="28px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox56" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.Unit_to" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="21px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox43" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.QualityState_before" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="35px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox44" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.QualityState_after" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="32px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox57" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.CentralRelation" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="26px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox46" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.Remark" DisableCssClass="TextBox" CssClass="TextBox" DisableBehavior="ReadOnly" Height="20px" width="45px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" height="21">
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                                <div align="center">
                                </div>
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                                <div align="center">
                                </div>
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                            </td>
                            <td style="BORDER-BOTTOM: medium none" colspan="2">
                            </td>
                            <td style="BORDER-BOTTOM: medium none" colspan="2">
                            </td>
                            <td style="BORDER-BOTTOM: medium none">
                            </td>
                            <td style="BORDER-BOTTOM: medium none" colspan="3">
                                <div align="center">
                                </div>
                            </td>
                            <td style="BORDER-BOTTOM: medium none; BORDER-RIGHT: medium none" colspan="2" align="middle">
                                <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Text="添加行" HiddenExpress="Global.StepName!='BOM维护员'" PrintOut="False" TableName="HD_Applicant_FactoryBody_ECN"></aspxform:XAddBlockButton>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress="Global.StepName =='工单处理人员'||Global.StepName =='BOM维护员'||Global.StepName =='计划部'||Global.StepName =='工程部'||Global.StepName =='开始'||Global.StepName =='采购人员'">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="800" align="middle">
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ValidationGroup="设计师同意" ControlToValidate="XTextBox3" ErrorMessage="验证意见不能为空！" Display="None" DisableExpress='HD_Applicant_Factory.Test  !="需批量验证"'>验证意见</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ValidationGroup="设计师同意" ControlToValidate="XRadioButtonList2" ErrorMessage="是否批量验证必选" Display="None">是否批量验证必选</aspxform:XRequiredFieldValidator>
                                <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="HD_Applicant_Factory.Test" Width="210px" RepeatDirection="Horizontal">
                                    <asp:ListItem>需批量验证</asp:ListItem>
                                    <asp:ListItem>不需批量验证</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ValidationGroup="设计师同意" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写评审意见！" Display="None">设计师同意</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ValidationGroup="审核人同意" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写评审意见,如果选有关联审核人，请填写关联审核人评审内容" Display="None">审核人同意</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ValidationGroup="关联评审人员" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写评审意见" Display="None">关联评审人员</aspxform:XRequiredFieldValidator>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress='HD_Applicant_Factory.Test  !="需批量验证"'>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="84">
                                <aspxform:XLabel id="XLabel26" runat="server" text="验证意见:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="909">
                                <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="HD_Applicant_Factory.TestInfo" DisableCssClass="TextBox" CssClass="TextBox" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Width="866px"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <p>
                    <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                        <tbody>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" width="574" colspan="3">
                                    <aspxform:XLabel id="XLabel41" runat="server" text="设计师:"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="322">
                                    <div align="right">
                                        <aspxform:XCustomBrowserButton id="XCustomBrowserButton1" runat="server" Width="104px" Text="选择设计师" PrintOut="False" DataMap="Col2->HD_Applicant_Designer_Factory.HRID;Col3->HD_Applicant_Designer_Factory.Name;Col4->HD_Applicant_Designer_Factory.Dept;Col5->HD_Applicant_Designer_Factory.FullName" PopupWndWidth="800" NavigateUrl="~\FormSupport\Designer.aspx" UseSubmitBehavior="False" PopupWndY="100" PopupWndX="100" PopupWndHeight="500"></aspxform:XCustomBrowserButton>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="249">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel74" runat="server" text="序号"></aspxform:XLabel>
                                    </div>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="318">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel75" runat="server" text="设计师姓名"></aspxform:XLabel>
                                    </div>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel76" runat="server" text="设计师部门"></aspxform:XLabel>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                                    <aspxform:XGridLineNo id="XGridLineNo6" runat="server" BorderColor="Gainsboro" Width="24px" BorderWidth="1px" BackColor="#F0F0F0" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                                    <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="HD_Applicant_Designer_Factory.HRID" width="30px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderWidth="1px" BorderStyle="Dotted"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                    <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="HD_Applicant_Designer_Factory.Name" width="100%" BorderColor="#DCDCDC" BorderWidth="1" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                                    <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="HD_Applicant_Designer_Factory.Dept" width="51px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                                    <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="HD_Applicant_Designer_Factory.FullName" width="10px" BorderColor="#DCDCDC" HiddenExpress="1" BorderWidth="1" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </p>
                <p>
                    <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" dynamicarea="2,1">
                        <tbody>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="3">
                                    <aspxform:XLabel id="XLabel15" runat="server" text="关联评审人:"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="686">
                                    <div align="right">
                                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ValidationGroup="审核人同意" ControlToValidate="XTextBox18" ErrorMessage="请填写每个关联评审人的评审要求！" Display="None" DisableExpress='HD_RelationAuditor_Factory.Name == ""'>评审要求</aspxform:XRequiredFieldValidator>
                                        <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Height="20px" Width="104px" Text="选择关联审批人" HiddenExpress="Global.StepName!='审核人'&amp;&amp; Global.StepName!='BOM维护员'&amp;&amp; Global.StepName!='设计师'&amp;&amp;Global.StepName!='审核人1'" PrintOut="False" DataMap="Account->HD_RelationAuditor_Factory.HRID;DisplayName->HD_RelationAuditor_Factory.Name;Department->HD_RelationAuditor_Factory.Dept" PopupWndWidth="800" NavigateUrl="~\FormSupport\SelUser.aspx" UseSubmitBehavior="False" PopupWndY="100" PopupWndX="100" PopupWndHeight="500" MultiSelect="True"></aspxform:XSelectUserButton>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="62">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel16" runat="server" text="序号"></aspxform:XLabel>
                                    </div>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="107">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel17" runat="server" text="审批人姓名"></aspxform:XLabel>
                                    </div>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="132">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel13" runat="server" text="评审人角色"></aspxform:XLabel>
                                    </div>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                                    <aspxform:XLabel id="XLabel30" runat="server" text="评审要求"></aspxform:XLabel>
                                </td>
                            </tr>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                                    <aspxform:XGridLineNo id="XGridLineNo3" runat="server" BorderColor="Gainsboro" Width="24px" BorderWidth="1px" BackColor="#F0F0F0" Enabled="False" XType="gridlineno">1</aspxform:XGridLineNo>
                                    <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="HD_RelationAuditor_Factory.HRID" width="30px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderWidth="1px" BorderStyle="Dotted"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                    <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="HD_RelationAuditor_Factory.Name" width="100%" BorderColor="#DCDCDC" BorderWidth="1" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                    <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="HD_RelationAuditor_Factory.Dept" width="129px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="HD_RelationAuditor_Factory.Notion" DisableCssClass="TextBox" CssClass="TextBox" width="100%" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress='HD_RelationAuditor_Factory.Name ==""'>
                        <tbody>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="57">
                                    <aspxform:XLabel id="XLabel6" runat="server" text="签核附件:"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="861">
                                    <aspxform:XMSNAttachments id="XMSNAttachments11" runat="server" XDataBind="HD_Applicant_Factory.RelationAtt" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </p>
            </div>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23" colspan="2">
                            <aspxform:XLabel id="XLabel2" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" width="100%" BorderColor="#DCDCDC" TextMode="MultiLine" BorderWidth="1" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: 1px solid" class="AA" height="32" colspan="2" align="left">
                            <aspxform:XSignTrace id="XSignTrace2" runat="server" CssClass="AA" BorderColor="Gainsboro" Width="900px" BorderWidth="1px" BackColor="Gainsboro"></aspxform:XSignTrace>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="26" valign="bottom" width="201" align="right">
                            <aspxform:XChildFormLink id="XChildFormLink1" runat="server" Font-Bold="False" XDataBind="HD_Applicant_Factory.TaskID" Height="26px" Width="45px" Text="打印" DataMap="Key->HD_Applicant_Factory.TaskID" PopupWndWidth="600" PopupWndY="50" PopupWndX="250" PopupWndHeight="700" Font-Overline="False" FormApplication="工单打印"></aspxform:XChildFormLink>
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress='Global.StepName =="批准人" ' MarginLeft="2" MarginRight="2" MarginTop="2" MarginBottom="2"></aspxform:XPrintButton>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="533" align="left">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ValidationGroup="Return" ControlToValidate="XCommentsTextBox1" ErrorMessage="退回请填写原因" Display="None">退回重填验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ValidationGroup="Reject" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写拒绝原因" Display="None">拒绝验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
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
            <p>
            </p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                </tbody>
            </table>
            <div style="Z-INDEX: 100; POSITION: absolute; BACKGROUND-COLOR: #c0c000; DISPLAY: none" id="tips">
            </div>
        </div>
    </form>
</body>
</html>
