<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
    
       protected void Page_Load(object sender, EventArgs e)
        {
    
           XTextBox8.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox58.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox27.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox28.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox12.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
           XTextBox14.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox16.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox47.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
           XTextBox30.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
           XTextBox31.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox4.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");;
    
    
           XTextBox2.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox22.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox23.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox24.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
    
           XTextBox52.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox34.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
           XTextBox36.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
    
           XTextBox39.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
           XTextBox41.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
    
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
                                <aspxform:XLabel id="XLabel1" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="264" align="middle">
                                <aspxform:XLabel id="XLabel11" runat="server" XDataBind="HD_Applicant_Factory.RealSN"></aspxform:XLabel>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="58" colspan="3" align="middle">
                                <asp:Label id="Label1" runat="server" text="无线工单/销单设计变更通知单" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="60" align="middle">
                                <aspxform:XLabel id="XLabel39" runat="server" text="提交人:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="119">
                                <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="HD_Applicant_Factory.Name" Min="0" Max="0" width="115px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="22px" DisableCssClass="TextBox"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="60">
                                <aspxform:XLabel id="XLabel40" runat="server" text="产品型号:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="166">
                                <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="HD_Applicant_Factory.ProductMode" Min="0" Max="0" width="160px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="56">
                                <aspxform:XLabel id="XLabel54" runat="server" text="订单编号:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="257">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox47" runat="server" XDataBind="HD_Applicant_Factory.OrderFormSN" Min="0" Max="0" width="239px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="23px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="33">
                                <aspxform:XLabel id="XLabel56" runat="server" text="日期:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="224">
                                <aspxform:XTextBox id="XTextBox62" runat="server" XDataBind="HD_Applicant_Factory.AppDate" Min="0" Max="0" width="148px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="60" align="middle">
                                <aspxform:XLabel id="XLabel32" runat="server" text="执行数量:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none" width="502">
                                <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="HD_Applicant_Factory.Number" Width="447px" RepeatDirection="Horizontal">
                                    <asp:ListItem>订单数量（含备机）</asp:ListItem>
                                    <asp:ListItem>备损散件数量</asp:ListItem>
                                    <asp:ListItem Value="指定数量">指定数量</asp:ListItem>
                                    <asp:ListItem>见变更内容</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none" width="29">
                                <aspxform:XLabel id="XLabel71" runat="server" HiddenExpress='HD_Applicant_Factory.Number !="订单数量（含备机）"' Text="约"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="397">
                                <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="HD_Applicant_Factory.NumberValue" Min="0" Max="0" width="162px" HiddenInput="False" BorderColor="Pink" DisableBehavior="ReadOnly" CssClass="TextBox" DisableCssClass="TextBox" HiddenExpress='HD_Applicant_Factory.Number == "见变更内容"'></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" rowspan="2" align="middle">
                                <aspxform:XLabel id="XLabel18" runat="server" text="变更内容:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox16" runat="server" XDataBind="HD_Applicant_Factory.MaterielTemplate" Min="0" Max="0" width="733px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" DisableCssClass="TextBox" TextMode="MultiLine" ForeColor="Blue"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" colspan="3">
                                <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="HD_Applicant_Factory.MaterielTemplateAtt" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
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
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="909" colspan="2">
                                <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="HD_Applicant_Factory.ModifyType" Width="375px" RepeatDirection="Horizontal">
                                    <asp:ListItem>设计类变更</asp:ListItem>
                                    <asp:ListItem>物料类变更</asp:ListItem>
                                    <asp:ListItem>客户化变更</asp:ListItem>
                                    <asp:ListItem>清库存(半成品)</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="65" colspan="2">
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="HD_Applicant_Factory.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_Factory.ModifyType!="设计类变更"'>
                                        <asp:ListItem Value="BOM纠错">BOM纠错</asp:ListItem>
                                        <asp:ListItem>性能优化</asp:ListItem>
                                        <asp:ListItem>工艺优化</asp:ListItem>
                                        <asp:ListItem>其它</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="HD_Applicant_Factory.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_Factory.ModifyType !="物料类变更"'>
                                        <asp:ListItem>新物料试产</asp:ListItem>
                                        <asp:ListItem>替代物料代用</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="HD_Applicant_Factory.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_Factory.ModifyType  !="客户化变更"'>
                                        <asp:ListItem>市场变更</asp:ListItem>
                                        <asp:ListItem>日常变更</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="HD_Applicant_Factory.ModifyReason" HiddenExpress='HD_Applicant_Factory.ModifyType  !="清库存"'>
                                        <asp:ListItem>清半成品库存</asp:ListItem>
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
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox4" runat="server" XDataBind="HD_Applicant_Factory.ModifyInstruction" Min="0" Max="0" width="800px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress='Global.StepName =="批准人"  '>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: black 1px solid; BORDER-TOP: medium none" bgcolor="#d1dedf" height="25" width="998" colspan="2">
                                <aspxform:XLabel id="XLabel160" runat="server" text="打印隐藏" Font-Size="Small" Font-Bold="True" ForeColor="Navy"></aspxform:XLabel>
                                <input id="bt5" onclick="Toggle('bt5','div5')" value="隐藏" type="button" /></td>
                        </tr>
                    </tbody>
                </table>
            </p>
            <div style="VISIBILITY: visible" id="div5">
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="60" align="right">
                                <p>
                                    <aspxform:XLabel id="XLabel66" runat="server" text="产品线:"></aspxform:XLabel>
                                </p>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="934">
                                <p>
                                    <aspxform:XRadioButtonList id="XRadioButtonList12" runat="server" XDataBind="HD_Applicant_Factory.BelongingDept" RepeatDirection="Horizontal">
                                        <asp:ListItem>国内运营产品线</asp:ListItem>
                                        <asp:ListItem>海外运营产品线</asp:ListItem>
                                        <asp:ListItem>海外零售产品线</asp:ListItem>
                                        <asp:ListItem>宽带事业部</asp:ListItem>
                                        <asp:ListItem>新产品业务部</asp:ListItem>
                                        <asp:ListItem>自动化开发部</asp:ListItem>
                                        <asp:ListItem>无线</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="60" align="right">
                                <aspxform:XLabel id="XLabel58" runat="server" text="变更模块:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="933">
                                <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="HD_Applicant_Factory.ModifyModule" RepeatDirection="Horizontal">
                                    <asp:ListItem>硬件</asp:ListItem>
                                    <asp:ListItem>电源</asp:ListItem>
                                    <asp:ListItem>副板</asp:ListItem>
                                    <asp:ListItem>软件</asp:ListItem>
                                    <asp:ListItem>结构</asp:ListItem>
                                    <asp:ListItem>工艺</asp:ListItem>
                                    <asp:ListItem>物料代用</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                <aspxform:XLabel id="XLabel69" runat="server" text="序号:" HiddenExpress="1"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox63" runat="server" XDataBind="HD_Applicant_Factory.SN" Min="0" Max="0" width="10px" HiddenInput="False" BorderColor="Gainsboro" HiddenExpress="1" BorderWidth="1px"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox64" runat="server" XDataBind="HD_Applicant_Factory.RealSN" width="150px" BorderColor="#DCDCDC" HiddenExpress="1" BorderWidth="1"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox65" runat="server" XDataBind="HD_Applicant_Factory.HRID" width="20px" HiddenInput="True" BorderColor="#DCDCDC" BorderWidth="1" BorderStyle="None"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="896" align="middle">
                                <aspxform:XCheckBoxList id="XCheckBoxList1" runat="server" XDataBind="HD_Applicant_Factory.RemandOrApp" RepeatDirection="Horizontal">
                                    <asp:ListItem>有新物料申请</asp:ListItem>
                                    <asp:ListItem>有新组件申请</asp:ListItem>
                                    <asp:ListItem>直接变更申请</asp:ListItem>
                                </aspxform:XCheckBoxList>
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
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="60" align="right">
                                <aspxform:XLabel id="XLabel19" runat="server" text="关键物料:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="910" colspan="7">
                                <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="HD_Applicant_Factory.KeyMateriel" RepeatDirection="Horizontal">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem>否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="44" width="60" align="right">
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
                                    <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="HD_Applicant_Factory.AttachmentOther" Min="0" Max="0" width="644px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" HiddenExpress='HD_Applicant_Factory.AttachmentType  !="其它"'></aspxform:XTextBox>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="60" align="right">
                                <aspxform:XLabel id="XLabel7" runat="server" text="补充说明:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="7">
                                <aspxform:XTextBox id="XTextBox61" runat="server" XDataBind="HD_Applicant_Factory.ReplenishInstruction" Min="0" Max="0" width="879px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" bgcolor="#d1dedf" height="25" width="1000" colspan="3">
                                <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                    <tbody>
                                        <tr>
                                            <td width="83">
                                                <aspxform:XLabel id="XLabel8" runat="server" text="工单更改表格:"></aspxform:XLabel>
                                            </td>
                                            <td width="75">
                                                <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="HD_Applicant_Factory.FactorySN" Min="0" Max="0" width="73px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px"></aspxform:XTextBox>
                                            </td>
                                            <td width="40">
                                                <input id="bt1" onclick="Toggle('bt1','div1')" value="隐藏" type="button" /></td>
                                            <td width="83">
                                                <aspxform:XLabel id="XLabel73" runat="server" text="更改时限截止:"></aspxform:XLabel>
                                            </td>
                                            <td width="189">
                                                <aspxform:XTextBox id="XTextBox48" runat="server" Font-Bold="False" XDataBind="time" Min="0" Max="0" width="185px" HiddenInput="False" BorderColor="Gainsboro" CssClass="TextBox" Express="HD_Applicant_Factory.StopTime_Factory"></aspxform:XTextBox>
                                            </td>
                                            <td width="83">
                                                <aspxform:XLabel id="XLabel14" runat="server" text="修改截止时间:" HiddenExpress="Global.StepName!='批准人\批准人1' &amp;&amp; Global.StepName!='批准人1\批准人1'&amp;&amp;Global.StepName!='订单计划员'"></aspxform:XLabel>
                                            </td>
                                            <td width="233">
                                                <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="HD_Applicant_Factory.StopTime_Factory" BorderColor="Gainsboro" Width="230px" HiddenExpress="Global.StepName!='批准人\批准人1' &amp;&amp; Global.StepName!='批准人1\批准人1'&amp;&amp;Global.StepName!='订单计划员'" BorderWidth="1px" Type="TimeMinutes"></aspxform:XDateTimePicker>
                                            </td>
                                            <td width="196">
                                                <aspxform:XLabel id="XLabel10" runat="server" Font-Bold="True" Height="100%" ForeColor="Red" BackColor="Transparent"></aspxform:XLabel>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div style="VISIBILITY: visible" id="div1">
                    <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress="HD_Applicant_Factory.FactorySN ==''">
                        <tbody>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" height="24" width="346">
                                    <aspxform:XLabel id="XLabel9" runat="server" text="DN变更记录号:" Font-Bold="True"></aspxform:XLabel>
                                    <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="HD_Applicant_Factory.SAP_DNSN" Min="0" Max="0" HiddenInput="False" BorderColor="Gainsboro" Width="125px" BorderWidth="1px" ReadOnly="True">XXX（链接申请表格的编号）</aspxform:XTextBox>
                                    <aspxform:XExcelDataLoadButton id="XExcelDataLoadButton2" runat="server" Text="导入DN数据" DataMap="J->HD_Applicant_FactoryBody_DN.Unit;K->HD_Applicant_FactoryBody_DN.OrderFormState;H->HD_Applicant_FactoryBody_DN.DownNO;I->HD_Applicant_FactoryBody_DN.Num;L->HD_Applicant_FactoryBody_DN.CentralRelation;M->HD_Applicant_FactoryBody_DN.Remark;B->HD_Applicant_FactoryBody_DN.RemoveNO;C->HD_Applicant_FactoryBody_DN.RowProject;F->HD_Applicant_FactoryBody_DN.UpNO;G->HD_Applicant_FactoryBody_DN.ModifyMode;D->HD_Applicant_FactoryBody_DN.FactoryNO;E->HD_Applicant_FactoryBody_DN.FactoryNum" ColumnCount="13"></aspxform:XExcelDataLoadButton>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="560" align="right">
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" DisableExpress='if(HD_Applicant_Factory.FactorySN =="",1,if(HD_Applicant_Factory.Check_DN =="否",1,0))' ControlToValidate="XTextBox58" ErrorMessage="请填写销单号！" Display="None" ValidationGroup="工单处理人员">销单号</aspxform:XRequiredFieldValidator>
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" DisableExpress='if(HD_Applicant_Factory.FactorySN =="",1,if(HD_Applicant_Factory.Check_DN =="否",1,0))' ControlToValidate="XDropDownList1" ErrorMessage="请选择行项目！" Display="None" ValidationGroup="工单处理人员">行项目</aspxform:XRequiredFieldValidator>
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" DisableExpress='if(HD_Applicant_Factory.FactorySN =="",1,if(HD_Applicant_Factory.Check_DN =="否",1,0))' ControlToValidate="XTextBox27" ErrorMessage="请填写工单号！" Display="None" ValidationGroup="工单处理人员"> 工单号</aspxform:XRequiredFieldValidator>
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" DisableExpress='if(HD_Applicant_Factory.FactorySN =="",1,if(HD_Applicant_Factory.Check_DN =="否",1,0))' ControlToValidate="XTextBox28" ErrorMessage="请填写工单数量！" Display="None" ValidationGroup="工单处理人员">工单数量</aspxform:XRequiredFieldValidator>
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" DisableExpress='if(HD_Applicant_Factory.FactorySN =="",1,if(HD_Applicant_Factory.Check_DN =="否",1,0))' ControlToValidate="XTextBox12" ErrorMessage="请填写上介组件号！" Display="None" ValidationGroup="工单处理人员">上介组件号</aspxform:XRequiredFieldValidator>
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" DisableExpress='if(HD_Applicant_Factory.FactorySN =="",1,if(HD_Applicant_Factory.Check_DN =="否",1,0))' ControlToValidate="XDropDownList2" ErrorMessage="请选择修改方式！" Display="None" ValidationGroup="工单处理人员">修改方式</aspxform:XRequiredFieldValidator>
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" DisableExpress='if(HD_Applicant_Factory.FactorySN =="",1,if(HD_Applicant_Factory.Check_DN =="否",1,0))' ControlToValidate="XTextBox14" ErrorMessage="请填写下介组件号！" Display="None" ValidationGroup="工单处理人员">下介组件号</aspxform:XRequiredFieldValidator>
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" DisableExpress='if(HD_Applicant_Factory.FactorySN =="",1,if(HD_Applicant_Factory.Check_DN =="否",1,0))' ControlToValidate="XTextBox30" ErrorMessage="请填写用量！" Display="None" ValidationGroup="工单处理人员">用量</aspxform:XRequiredFieldValidator>
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" DisableExpress='if(HD_Applicant_Factory.FactorySN =="",1,if(HD_Applicant_Factory.Check_DN =="否",1,0))' ControlToValidate="XDropDownList3" ErrorMessage="请选择单位！" Display="None" ValidationGroup="工单处理人员">单位</aspxform:XRequiredFieldValidator>
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" DisableExpress="1" ControlToValidate="XTextBox15" ErrorMessage="请输入SAP账号和密码！" Display="None" ValidationGroup="录入SAP">SAP账号</aspxform:XRequiredFieldValidator>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<aspxform:XLabel id="XLabel36" runat="server" text="是否check:" HiddenExpress='Global.StepName !="工单处理人员"'></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="85">
                                    <aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" XDataBind="HD_Applicant_Factory.Check_DN" RepeatDirection="Horizontal" HiddenExpress='Global.StepName !="工单处理人员"'>
                                        <asp:ListItem Selected="True">是</asp:ListItem>
                                        <asp:ListItem>否</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress="HD_Applicant_Factory.FactorySN ==''" dynamicarea="1,1">
                        <tbody>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="31" width="14" align="middle">
                                    <aspxform:XLabel id="XLabel21" runat="server" text="序号"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="75" align="middle">
                                    <aspxform:XLabel id="XLabel38" runat="server" text="销单号"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="52">
                                    <aspxform:XLabel id="XLabel28" runat="server" text="行项目"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="114">
                                    <aspxform:XLabel id="XLabel42" runat="server" text="工单号"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="42" align="middle">
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="61" align="middle">
                                    <aspxform:XLabel id="XLabel43" runat="server" text="工单数量" Height="7px" Width="51px"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="139" align="middle">
                                    <aspxform:XLabel id="XLabel22" runat="server" text="上介组件号"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="37" align="middle">
                                    <aspxform:XLabel id="XLabel23" runat="server" text="修改方式" Width="32px"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="144" align="middle">
                                    <aspxform:XLabel id="XLabel24" runat="server" text="下介组件号"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="41" align="middle">
                                    <aspxform:XLabel id="XLabel45" runat="server" text="用量"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="48" align="middle">
                                    <aspxform:XLabel id="XLabel3" runat="server" text="单位"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="39" colspan="3" align="middle">
                                    <aspxform:XLabel id="XLabel46" runat="server" text="工单状态" Width="53px"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="29">
                                    <aspxform:XLabel id="XLabel4" runat="server" text="主辅关系"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" colspan="2" align="middle">
                                    <aspxform:XLabel id="XLabel33" runat="server" text="备注" Width="27px"></aspxform:XLabel>
                                </td>
                            </tr>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                                    <aspxform:XGridLineNo id="XGridLineNo4" runat="server" Font-Bold="True" BorderColor="Gainsboro" Width="25px" BorderWidth="1px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox58" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.RemoveNO" Min="0" Max="0" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine" Width="73px"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.RowProject" Width="43px" XDataSource="XDataSource" onchange="javascript:XFormOnChange(this);">
                                        <asp:ListItem Selected="True">10</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                        <asp:ListItem>40</asp:ListItem>
                                        <asp:ListItem>50</asp:ListItem>
                                        <asp:ListItem>60</asp:ListItem>
                                    </aspxform:XDropDownList>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox27" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.FactoryNO" Min="0" Max="0" width="112px" HiddenInput="False" BorderColor="Gainsboro" CssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XCustomBrowserButton id="XCustomBrowserButton2" runat="server" Width="40px" Text="选择" DataMap="Col1->HD_Applicant_FactoryBody_DN.FactoryNO;Col2->HD_Applicant_FactoryBody_DN.FactoryNum;Col3->HD_Applicant_FactoryBody_DN.UpNO" PopupWndWidth="800" NavigateUrl="~\FormSupport\DN_Num.aspx" UseSubmitBehavior="False" PopupWndY="100" PopupWndX="100" PopupWndHeight="500" PrintOut="False" Filter="Col1->HD_Applicant_FactoryBody_DN.RemoveNO,Col2->HD_Applicant_FactoryBody_DN.RowProject"></aspxform:XCustomBrowserButton>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox28" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.FactoryNum" Min="0" Max="0" width="57px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" Height="22px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox12" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.UpNO" Min="0" Max="0" width="134px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.ModifyMode">
                                        <asp:ListItem Selected="True">A</asp:ListItem>
                                        <asp:ListItem>D</asp:ListItem>
                                    </aspxform:XDropDownList>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox14" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.DownNO" Min="0" Max="0" width="130px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox30" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.Num" Min="0" Max="0" width="60px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine" Format="type:number;.4"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.Unit">
                                        <asp:ListItem Selected="True">PC</asp:ListItem>
                                        <asp:ListItem>ST</asp:ListItem>
                                        <asp:ListItem>RL</asp:ListItem>
                                        <asp:ListItem>ML</asp:ListItem>
                                        <asp:ListItem>M</asp:ListItem>
                                        <asp:ListItem>CM</asp:ListItem>
                                        <asp:ListItem>G</asp:ListItem>
                                        <asp:ListItem>KG</asp:ListItem>
                                    </aspxform:XDropDownList>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox31" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.OrderFormState" Min="0" Max="0" width="59px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox2" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.CentralRelation" Min="0" Max="0" width="27px" HiddenInput="False" BorderColor="Gainsboro" CssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="85" colspan="2">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox22" runat="server" XDataBind="HD_Applicant_FactoryBody_DN.Remark" Min="0" Max="0" width="75px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" height="21">
                                </td>
                                <td style="BORDER-BOTTOM: medium none" colspan="3">
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
                                <td style="BORDER-BOTTOM: medium none" colspan="3">
                                    <div align="center">
                                    </div>
                                </td>
                                <td style="BORDER-BOTTOM: medium none; BORDER-RIGHT: medium none" colspan="3" align="middle">
                                    <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" Text="添加行" PrintOut="False" TableName="HD_Applicant_FactoryBody_DN"></aspxform:XAddBlockButton>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" bgcolor="#d1dedf" height="24" width="996">
                                <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                    <tbody>
                                        <tr>
                                            <td width="83">
                                                <aspxform:XLabel id="XLabel47" runat="server" text="销单更改表格:"></aspxform:XLabel>
                                            </td>
                                            <td width="75">
                                                <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="HD_Applicant_Factory.RemoveSN" Min="0" Max="0" width="73px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px"></aspxform:XTextBox>
                                            </td>
                                            <td width="43">
                                                <input id="bt2" onclick="Toggle('bt2','div2')" value="隐藏" type="button" /></td>
                                            <td width="22">
                                                <aspxform:XTextBox id="XTextBox59" runat="server" XDataBind="HD_Applicant_Factory.MessageDN" Min="0" Max="0" width="19px" HiddenInput="False" BorderColor="Gainsboro" HiddenExpress="1" BorderWidth="1px" Express="if(HD_Applicant_FactoryBody_DN.FactoryNO=='' ,&quot;&quot;,&quot;工单号已填&quot;)"></aspxform:XTextBox>
                                            </td>
                                            <td width="19">
                                                <aspxform:XTextBox id="XTextBox60" runat="server" XDataBind="HD_Applicant_Factory.MessageECN" Min="0" Max="0" width="16px" HiddenInput="False" BorderColor="Gainsboro" HiddenExpress="1" BorderWidth="1px" Express="if(HD_Applicant_FactoryBody_ECN.RemoveNO=='' ,&quot;&quot;,&quot;销单号已填&quot;)"></aspxform:XTextBox>
                                            </td>
                                            <td width="55">
                                                <aspxform:XLabel id="XLabel52" runat="server" text="SAP账号" HiddenExpress="1"></aspxform:XLabel>
                                            </td>
                                            <td width="81">
                                                <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="HD_Applicant_Factory.SAPAccount" Min="0" Max="0" width="76px" HiddenInput="False" BorderColor="Gainsboro" HiddenExpress="1" BorderWidth="1px"></aspxform:XTextBox>
                                            </td>
                                            <td width="31">
                                                <aspxform:XLabel id="XLabel53" runat="server" text="密码" HiddenExpress="1"></aspxform:XLabel>
                                            </td>
                                            <td width="569">
                                                <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="HD_Applicant_Factory.SAPPassword" Min="0" Max="0" width="67px" HiddenInput="False" BorderColor="Gainsboro" HiddenExpress="1" BorderWidth="1px"></aspxform:XTextBox>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div style="VISIBILITY: visible" id="div2">
                    <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress="HD_Applicant_Factory.RemoveSN ==''">
                        <tbody>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid" height="24" width="363">
                                    <aspxform:XLabel id="XLabel12" runat="server" Font-Size="X-Small" Font-Bold="True" Text="ECN变更记录号:"></aspxform:XLabel>
                                    <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="HD_Applicant_Factory.SAP_ECNSN" Min="0" Max="0" width="115px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px"></aspxform:XTextBox>
                                    <aspxform:XExcelDataLoadButton id="XExcelDataLoadButton1" runat="server" Text="导入ECN数据" DataMap="J->HD_Applicant_FactoryBody_ECN.Digitally_add;K->HD_Applicant_FactoryBody_ECN.QualityState_before;H->HD_Applicant_FactoryBody_ECN.Num;I->HD_Applicant_FactoryBody_ECN.Unit_from;N->HD_Applicant_FactoryBody_ECN.UsePossibility;O->HD_Applicant_FactoryBody_ECN.Remark;L->HD_Applicant_FactoryBody_ECN.QualityState_after;M->HD_Applicant_FactoryBody_ECN.CentralRelation;B->HD_Applicant_FactoryBody_ECN.Biaoshi;C->HD_Applicant_FactoryBody_ECN.RemoveNO;F->HD_Applicant_FactoryBody_ECN.ModifyMode;G->HD_Applicant_FactoryBody_ECN.DownNO;D->HD_Applicant_FactoryBody_ECN.RowProject;E->HD_Applicant_FactoryBody_ECN.UpNO" ColumnCount="16"></aspxform:XExcelDataLoadButton>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="541" align="right">
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Width="132px" ControlToValidate="XTextBox51" ErrorMessage="请选择设计师" Display="None" ValidationGroup="BOM维护员同意">BOM维护员选择设计师</aspxform:XRequiredFieldValidator>
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" DisableExpress='if(HD_Applicant_Factory.RemoveSN =="",1,0)' ControlToValidate="XTextBox33" ErrorMessage="请填写ECN变更记录号" Display="None" ValidationGroup="销单录入SAP">ECN变更记录号</aspxform:XRequiredFieldValidator>
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" DisableExpress='HD_Applicant_FactoryBody_ECN.ModifyMode !="M"' ControlToValidate="XTextBox8" ErrorMessage="修改方式选M时，请填写新下介组件！ " Display="None" ValidationGroup="BOM维护员同意">新下介组件</aspxform:XRequiredFieldValidator>
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" DisableExpress="1" ControlToValidate="XTextBox15" ErrorMessage="请输入SAP账号和密码！" Display="None" ValidationGroup="销单录入SAP">SAP账号</aspxform:XRequiredFieldValidator>
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator22" runat="server" DisableExpress='if(HD_Applicant_Factory.RemoveSN =="",1,if(HD_Applicant_Factory.Check_ECN =="否",1,0))' ControlToValidate="XTextBox52" ErrorMessage="请填写销单号！" Display="None" ValidationGroup="BOM维护员同意">销单号</aspxform:XRequiredFieldValidator>
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" DisableExpress='if(HD_Applicant_Factory.RemoveSN =="",1,if(HD_Applicant_Factory.Check_ECN =="否",1,0))' ControlToValidate="XTextBox39" ErrorMessage="请填写ECN用量！" Display="None" ValidationGroup="BOM维护员同意">用量</aspxform:XRequiredFieldValidator>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <aspxform:XLabel id="XLabel63" runat="server" text="是否check:" HiddenExpress='Global.StepName !="BOM维护员"'></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="88">
                                    <aspxform:XRadioButtonList id="XRadioButtonList11" runat="server" XDataBind="HD_Applicant_Factory.Check_ECN" RepeatDirection="Horizontal" HiddenExpress='Global.StepName !="BOM维护员"'>
                                        <asp:ListItem Selected="True">是</asp:ListItem>
                                        <asp:ListItem>否</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress="HD_Applicant_Factory.RemoveSN ==''" dynamicarea="1,1">
                        <tbody>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="31" width="14" align="middle">
                                    <aspxform:XLabel id="XLabel48" runat="server" text="序号"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="39" align="middle">
                                    <aspxform:XLabel id="XLabel6" runat="server" text="新增组件" Width="31px"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="58" align="middle">
                                    <aspxform:XLabel id="XLabel68" runat="server" text="销单号"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="44" align="middle">
                                    <aspxform:XLabel id="XLabel17" runat="server" text="行项目"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="141" align="middle">
                                    <aspxform:XLabel id="XLabel49" runat="server" text="上介组件号"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="38" align="middle">
                                    <aspxform:XLabel id="XLabel50" runat="server" text="修改方式" Width="32px"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="156" align="middle">
                                    <aspxform:XLabel id="XLabel51" runat="server" text="下介组件号"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="32" align="middle">
                                    <aspxform:XLabel id="XLabel60" runat="server" text="用量"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="49" align="middle">
                                    <aspxform:XLabel id="XLabel34" runat="server" text="单位"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="162" align="middle">
                                    <aspxform:XLabel id="XLabel61" runat="server" text="位号/位号" Width="63px"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="41" align="middle">
                                    <aspxform:XLabel id="XLabel57" runat="server" text="替代组" Width="40px"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="66" colspan="3" align="middle">
                                    <aspxform:XLabel id="XLabel70" runat="server" text="替代优先级" Width="36px"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="45">
                                    <aspxform:XLabel id="XLabel2" runat="server" text="使用策略"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="40">
                                    <aspxform:XLabel id="XLabel30" runat="server" text="使用可能性" Width="36px"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="32" align="middle">
                                    <aspxform:XLabel id="XLabel37" runat="server" text="备注"></aspxform:XLabel>
                                </td>
                            </tr>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="27">
                                    <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Font-Bold="True" BorderColor="Gainsboro" Width="25px" BorderWidth="1px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XDropDownList id="XDropDownList9" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.Biaoshi" Width="37px" XDataSource="XDataSource" onchange="javascript:XFormOnChange(this);">
                                        <asp:ListItem>是</asp:ListItem>
                                        <asp:ListItem Selected="True">否</asp:ListItem>
                                    </aspxform:XDropDownList>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox52" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.RemoveNO" Min="0" Max="0" width="56px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XDropDownList id="XDropDownList11" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.RowProject" Width="42px" XDataSource="XDataSource" onchange="javascript:XFormOnChange(this);">
                                        <asp:ListItem Selected="True">10</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                        <asp:ListItem>40</asp:ListItem>
                                        <asp:ListItem>50</asp:ListItem>
                                        <asp:ListItem>60</asp:ListItem>
                                        <asp:ListItem>ALL</asp:ListItem>
                                    </aspxform:XDropDownList>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox34" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.UpNO" Min="0" Max="0" width="136px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XDropDownList id="XDropDownList10" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.ModifyMode">
                                        <asp:ListItem Selected="True">A</asp:ListItem>
                                        <asp:ListItem>D</asp:ListItem>
                                    </aspxform:XDropDownList>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox36" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.DownNO" Min="0" Max="0" width="147px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox8" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.NewDownNO" Min="0" Max="0" width="9px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="24px" DisableCssClass="TextBox" TextMode="MultiLine" HiddenExpress="1" DisableExpress='HD_Applicant_FactoryBody_ECN.ModifyMode !="M"'></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox39" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.Num" Min="0" Max="0" width="30px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine" Format="type:number;.3"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XDropDownList id="XDropDownList12" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.Unit_from">
                                        <asp:ListItem Selected="True">PC</asp:ListItem>
                                        <asp:ListItem>ST</asp:ListItem>
                                        <asp:ListItem>RL</asp:ListItem>
                                        <asp:ListItem>ML</asp:ListItem>
                                        <asp:ListItem>M</asp:ListItem>
                                        <asp:ListItem>CM</asp:ListItem>
                                        <asp:ListItem>G</asp:ListItem>
                                        <asp:ListItem>KG</asp:ListItem>
                                    </aspxform:XDropDownList>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox41" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.Digitally_add" Min="0" Max="0" width="160px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox43" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.QualityState_before" Min="0" Max="0" width="36px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox44" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.QualityState_after" Min="0" Max="0" width="36px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox57" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.CentralRelation" Min="0" Max="0" width="35px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox46" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.UsePossibility" Min="0" Max="0" width="38px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" CssClass="TextBox" NormalCssClass="TextBox" Height="20px" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox id="XTextBox13" onmousemove="showtip(event,this)" onmouseout="hiddentip()" runat="server" XDataBind="HD_Applicant_FactoryBody_ECN.Remark" width="100%" BorderColor="#DCDCDC" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" height="21">
                                </td>
                                <td style="BORDER-BOTTOM: medium none" colspan="3">
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
                                <td style="BORDER-BOTTOM: medium none" colspan="3">
                                    <div align="center">
                                    </div>
                                </td>
                                <td style="BORDER-BOTTOM: medium none; BORDER-RIGHT: medium none" align="middle">
                                </td>
                                <td colspan="2">
                                    <div align="center">
                                        <aspxform:XAddBlockButton id="XAddBlockButton2" runat="server" Text="添加行" PrintOut="False" TableName="HD_Applicant_FactoryBody_ECN"></aspxform:XAddBlockButton>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress="Global.StepName =='工单处理人员'||Global.StepName =='BOM维护员'||Global.StepName =='计划部'||Global.StepName =='工程部'||Global.StepName =='开始'||Global.StepName =='采购人员'">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="800" align="middle">
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" DisableExpress='HD_Applicant_Factory.Test  !="需批量验证"' ControlToValidate="XTextBox3" ErrorMessage="验证意见不能为空！" Display="None" ValidationGroup="设计师同意">验证意见</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="XRadioButtonList2" ErrorMessage="是否批量验证必选" Display="None" ValidationGroup="设计师同意">是否批量验证必选</aspxform:XRequiredFieldValidator>
                                <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="HD_Applicant_Factory.Test" Width="210px" RepeatDirection="Horizontal">
                                    <asp:ListItem>需批量验证</asp:ListItem>
                                    <asp:ListItem>不需批量验证</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写评审意见！" Display="None" ValidationGroup="设计师同意">设计师同意</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写评审意见,如果选有关联审核人,请填写关联审核人评审内容" Display="None" ValidationGroup="审核人同意">审核人同意</aspxform:XRequiredFieldValidator>
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
                                <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="HD_Applicant_Factory.TestInfo" Min="0" Max="0" HiddenInput="False" BorderColor="Gainsboro" CssClass="TextBox" DisableCssClass="TextBox" Width="866px"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <p>
                    <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                        <tbody>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" width="731" colspan="3">
                                    <aspxform:XLabel id="XLabel41" runat="server" text="设计师:"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="266">
                                    <div align="right">
                                        <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" HiddenExpress="Global.StepName!='BOM维护员'" Text="选择设计师" DataMap="Account->HD_Applicant_Designer_Factory.HRID;DisplayName->HD_Applicant_Designer_Factory.Name;MemberFullName->HD_Applicant_Designer_Factory.FullName;Department->HD_Applicant_Designer_Factory.Dept" PopupWndWidth="800" NavigateUrl="~\FormSupport\SelUser.aspx" UseSubmitBehavior="False" PopupWndY="100" PopupWndX="100" PopupWndHeight="500"></aspxform:XSelectUserButton>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="95">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel74" runat="server" text="序号"></aspxform:XLabel>
                                    </div>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="629">
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
                                    <aspxform:XGridLineNo id="XGridLineNo6" runat="server" BorderColor="Gainsboro" Width="24px" BorderWidth="1px" BackColor="#F0F0F0" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                                    <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="HD_Applicant_Designer_Factory.HRID" Min="0" Max="0" width="30px" HiddenInput="True" BorderColor="Gainsboro" BorderWidth="1px" BorderStyle="Dotted"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                    <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="HD_Applicant_Designer_Factory.Name" Min="0" Max="0" width="212px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True" ValueToDisplayText Value></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" colspan="2">
                                    <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="HD_Applicant_Designer_Factory.Dept" Min="0" Max="0" width="174px" HiddenInput="False" BorderColor="Gainsboro" BorderWidth="1px" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                                    <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="HD_Applicant_Designer_Factory.FullName" width="10px" BorderColor="#DCDCDC" HiddenExpress="1" BorderWidth="1" BorderStyle="None" BackColor="#F0F0F0"></aspxform:XTextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress='HD_Applicant_Factory.SAPError_DN == ""'>
                        <tbody>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="96">
                                    <aspxform:XLabel id="XLabel59" runat="server" text="SAPError_DN:" ForeColor="Red"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="897">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox23" runat="server" XDataBind="HD_Applicant_Factory.SAPError_DN" Min="0" Max="0" HiddenInput="False" BorderColor="Gainsboro" CssClass="TextBox" NormalCssClass="TextBox" Height="22px" DisableCssClass="TextBox" TextMode="MultiLine" Width="866px" ForeColor="Red"></aspxform:XTextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress='HD_Applicant_Factory.SAPError_ECN ==""'>
                        <tbody>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="84">
                                    <aspxform:XLabel id="XLabel62" runat="server" text="SAPError_ECN:" ForeColor="Red"></aspxform:XLabel>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="909">
                                    <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox24" runat="server" XDataBind="HD_Applicant_Factory.SAPError_ECN" Min="0" Max="0" HiddenInput="False" BorderColor="Gainsboro" CssClass="TextBox" NormalCssClass="TextBox" Height="22px" DisableCssClass="TextBox" TextMode="MultiLine" Width="866px" ForeColor="Red"></aspxform:XTextBox>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress='HD_Applicant_Factory.Check_DN =="是"'>
                        <tbody>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="84" colspan="2">
                                    <aspxform:XLabel id="XLabel64" runat="server" text=" 提示：工单必须进行手动更改！" Width="179px" HiddenExpress='HD_Applicant_Factory.Check_DN =="是"' ForeColor="Red"></aspxform:XLabel>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" hiddenexpress='HD_Applicant_Factory.Check_ECN =="是"'>
                        <tbody>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="84" colspan="2">
                                    <aspxform:XLabel id="XLabel65" runat="server" text=" 提示：销单必须进行手动更改！" Width="182px" HiddenExpress='HD_Applicant_Factory.Check_ECN =="是"' ForeColor="Red"></aspxform:XLabel>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </p>
                <p>
                    <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1001" dynamicarea="2,1" emptygrid="KeepEmpty">
                        <tbody>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" colspan="4">
                                    <aspxform:XLabel id="XLabel25" runat="server" text="关联评审人:"></aspxform:XLabel>
                                    <aspxform:XLabel id="XLabel55" runat="server" text="选择关联评审人时，请及时线下沟通！" ForeColor="Red"></aspxform:XLabel>
                                    <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="116px" HiddenExpress='Global.StepName !="开始" &amp;&amp; Global.StepName !="BOM维护员"&amp;&amp; Global.StepName !="设计师"' Text="添加关联审批人" DataMap="DisplayName->HD_RelationAuditor_Factory.Name;Department->HD_RelationAuditor_Factory.Dept;HRID->HD_RelationAuditor_Factory.HRID" MultiSelect="True" PopupWndWidth="-1" UseSubmitBehavior="False" PopupWndHeight="-1"></aspxform:XSelectUserButton>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="500">
                                    <div align="right">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="30" width="26">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel27" runat="server" text="序号"></aspxform:XLabel>
                                    </div>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="162">
                                    <div align="center">
                                        <aspxform:XLabel id="XLabel13" runat="server" text="部门" ValueToDisplayText Value></aspxform:XLabel>
                                    </div>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="99">
                                    <div align="center">审批人工号
                                    </div>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="198">
                                    <div align="center">
                                        <div align="center">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel16" runat="server" text="审批人姓名" ValueToDisplayText Value></aspxform:XLabel>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                                    <aspxform:XLabel id="XLabel44" runat="server" text="查看详情"></aspxform:XLabel>
                                </td>
                            </tr>
                            <tr>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                                    <aspxform:XGridLineNo id="XGridLineNo3" runat="server" BorderColor="Gainsboro" Width="17px" BorderWidth="1px" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="HD_RelationAuditor_Factory.Dept" width="100%" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" BorderWidth="1"></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                    <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="HD_RelationAuditor_Factory.HRID" Min="0" Max="0" width="97px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" BorderWidth="1px" BorderStyle="Solid" ValueToDisplayText Value></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding">
                                    <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="HD_RelationAuditor_Factory.Name" Min="0" Max="0" width="155px" HiddenInput="False" BorderColor="Gainsboro" DisableBehavior="ReadOnly" BorderWidth="1px" ValueToDisplayText Value></aspxform:XTextBox>
                                </td>
                                <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="middle">
                                    <aspxform:XHistoryFormLink id="XHistoryFormLink1" runat="server" XDataBind="HD_RelationAuditor_Factory.DetailTaskID" Text="查看关联审核详情" PopupWndWidth="-1" PopupWndHeight="-1" EmptyText="尚未关联"></aspxform:XHistoryFormLink>
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
                                <td align="middle">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </p>
            </div>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" colspan="2">
                            <aspxform:XLabel id="XLabel35" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" width="100%" BorderColor="#DCDCDC" TextMode="MultiLine" BorderWidth="1" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: 1px solid; BORDER-LEFT: 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: 1px solid" class="AA" height="32" colspan="2" align="left">
                            <aspxform:XSignTrace id="XSignTrace2" runat="server" BorderColor="Gainsboro" CssClass="AA" Width="900px" BorderWidth="1px" BackColor="Gainsboro"></aspxform:XSignTrace>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="26" valign="bottom" width="201" align="right">
                            <aspxform:XPrintButton id="XPrintButton2" runat="server" Zoom="60" MarginLeft="2" MarginRight="2" MarginTop="20" MarginBottom="10"></aspxform:XPrintButton>
                            <aspxform:XChildFormLink id="XChildFormLink1" runat="server" Font-Bold="False" XDataBind="HD_Applicant_Factory.TaskID" Height="26px" Width="45px" Text="打印" DataMap="Key->HD_Applicant_Factory.TaskID" PopupWndWidth="600" PopupWndY="50" PopupWndX="250" PopupWndHeight="700" Font-Overline="False" FormApplication="工单打印"></aspxform:XChildFormLink>
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress='Global.StepName =="批准人" ' MarginLeft="2" MarginRight="2" MarginTop="2" MarginBottom="2"></aspxform:XPrintButton>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="533" align="middle">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="退回请填写原因" Display="None" ValidationGroup="Return">退回重填验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写拒绝原因" Display="None" ValidationGroup="Reject">拒绝验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <p>
            </p>
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
                                <aspxform:XLabel id="XLabel94" runat="server" Font-Size="Medium" Text="关联评审注意事项:" ForeColor="Red" PrintOut="False"></aspxform:XLabel>
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
