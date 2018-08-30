<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
       protected void Page_Load(object sender, EventArgs e)
        {
    
           XTextBox4.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox5.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox9.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
    
        }

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
.TextBox {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: silver 1px solid
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

function ClientValidate2(sender,args)
{
     var str = document.getElementById("XDateTimePicker2").value;

      //str = "2010-09-30 09:02";

     array1 = str.split(" ");
     array2 = array1[0].split("-");
     array3 = array1[1].split(":");

     var yr = array2[0];
     var mo = array2[1];
     var da = array2[2];
     var th = array3[0];
     var tm = array3[1];

     if(th =="11"||th == "17")
     {
          args.IsValid = true;
     }
     else
     {
           args.IsValid = false;
     }

}
function ClientValidate1(sender,args)
{
     var str = document.getElementById("XDateTimePicker1").value;

      //str = "2010-09-30 09:02";

     array1 = str.split(" ");
     array2 = array1[0].split("-");
     array3 = array1[1].split(":");

     var yr = array2[0];
     var mo = array2[1];
     var da = array2[2];
     var th = array3[0];
     var tm = array3[1];

     if(th =="11"||th == "17")
     {
          args.IsValid = true;
     }
     else
     {
           args.IsValid = false;
     }

}

</script>
</head>
<body>
    <form runat="server">
        <div align="center">
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="203">
                                <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                                &nbsp;</td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="377" align="middle">
                                <aspxform:XLabel id="XLabel1" runat="server" Font-Size="Medium" Font-Names="Tahoma" Font-Bold="True" text="深圳创维数字技术股份有限公司"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="210">
                                <aspxform:XLabel id="XLabel11" runat="server" XDataBind="HD_Applicant.SN"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="58" colspan="3" align="middle">
                                <asp:Label id="Label1" runat="server" text="BOM变更需求(申请)提交表" font-size="Medium" font-names="Tahoma" font-bold="True"></asp:Label></td>
                        </tr>
                    </tbody>
                </table>
                <!-- Insert content here -->
            </p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="120" align="right">
                            <aspxform:XLabel id="XLabel2" runat="server" text="编&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="387">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="HD_Applicant.SN" DisableCssClass="TextBox" CssClass="TextBox" width="166px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="58" align="right">
                            <aspxform:XLabel id="XLabel3" runat="server" text="编制日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="322">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="HD_Applicant.AppDate" DisableCssClass="TextBox" CssClass="TextBox" width="166px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="HD_Applicant.HRID" BorderColor="#DCDCDC" HiddenInput="True" Width="1px" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" align="right">
                            <aspxform:XLabel id="XLabel4" runat="server" text="产品型号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="HD_Applicant.ProductMode" DisableCssClass="TextBox" CssClass="TextBox" width="166px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="HD_Applicant.Dept" BorderColor="#DCDCDC" HiddenInput="True" Width="5px" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XLabel id="XLabel5" runat="server" text="订单编号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox4" runat="server" XDataBind="HD_Applicant.OrderFormSN" DisableCssClass="TextBox" CssClass="TextBox" width="166px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" TextMode="MultiLine" Height="23px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="HD_Applicant.Name" BorderColor="#DCDCDC" HiddenInput="True" Width="1px" BorderWidth="1"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel21" runat="server" text="输入多个订单用/来间隔" ForeColor="Red"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" align="right">
                            <aspxform:XLabel id="XLabel6" runat="server" text="变更模块:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="3">
                            <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="HD_Applicant.ModifyModule" Width="264px" Height="21px" RepeatDirection="Horizontal">
                                <asp:ListItem>硬件</asp:ListItem>
                                <asp:ListItem>软件</asp:ListItem>
                                <asp:ListItem>结构</asp:ListItem>
                                <asp:ListItem>工艺</asp:ListItem>
                                <asp:ListItem>物料</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900" hiddenexpress='HD_Applicant.ModifyModule =="工艺"  || HD_Applicant.ModifyModule =="软件"  || HD_Applicant.ModifyModule =="" '>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="896" align="middle">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="HD_Applicant.OrderformRelation" Width="336px" RepeatDirection="Horizontal">
                                <asp:ListItem>与订单相关</asp:ListItem>
                                <asp:ListItem>不与订单相关</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" Display="None" ErrorMessage="执行数量必选其一" ControlToValidate="XRadioButtonList5">执行数量</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请填写执行数量" ControlToValidate="XTextBox20" DisableExpress='HD_Applicant.Number != "订单数量（含备机）" &amp;&amp;  HD_Applicant.Number != "指定数量"'>执行数量值</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900" hiddenexpress='HD_Applicant.OrderformRelation =="不与订单相关" ||  HD_Applicant.OrderformRelation ==""'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="896" align="middle">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="是否与订单相关必选" ControlToValidate="XRadioButtonList7" DisableExpress='HD_Applicant.ModifyModule =="工艺"  || HD_Applicant.ModifyModule =="软件"  || HD_Applicant.ModifyModule =="" '>是否与订单相关</aspxform:XRequiredFieldValidator>
                            <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="HD_Applicant.RemandOrApp" Width="320px" RepeatDirection="Horizontal">
                                <asp:ListItem>变更需求</asp:ListItem>
                                <asp:ListItem>变更申请</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" Display="None" ErrorMessage="变更需求或申请必选" ControlToValidate="XRadioButtonList8" DisableExpress='HD_Applicant.ModifyModule =="工艺" ||HD_Applicant.ModifyModule =="软件" ||HD_Applicant.ModifyModule ==""  || HD_Applicant.OrderformRelation =="不与订单相关"'>变更需求或申请</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28" width="120" align="right">
                            <aspxform:XLabel id="XLabel7" runat="server" text="执行数量:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none" width="452" colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="HD_Applicant.Number" Width="447px" RepeatDirection="Horizontal">
                                <asp:ListItem>订单数量（含备机）</asp:ListItem>
                                <asp:ListItem>备损散件数量</asp:ListItem>
                                <asp:ListItem Value="指定数量">指定数量</asp:ListItem>
                                <asp:ListItem>见变更内容</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="322">
                            <aspxform:XLabel id="XLabel20" runat="server" HiddenExpress='HD_Applicant.Number !="订单数量（含备机）"' Text="约"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="HD_Applicant.NumberValue" DisableCssClass="TextBox" CssClass="TextBox" width="113px" BorderColor="Pink" Max="0" Min="0" HiddenInput="False" HiddenExpress='HD_Applicant.Number != "订单数量（含备机）" &amp;&amp;  HD_Applicant.Number != "指定数量"'></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="83">
                            <aspxform:XLabel id="XLabel9" runat="server" text="变更内容"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="810">
                            <aspxform:XLabel id="XLabel8" runat="server" text="关键物料标识:"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Width="78px" Display="None" ErrorMessage="产品型号必填" ControlToValidate="XTextBox3">产品型号验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="变更模块至少要选其一" ControlToValidate="XRadioButtonList9">变更模块验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="key" width="109px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1" Express="HD_Applicant.KeyMateriel"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" Display="None" ErrorMessage="关键物料不能为空,若没有请勾选“非关键物料”！" ControlToValidate="XTextBox15">关键物料</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="HD_Applicant.Code" width="45px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" HiddenExpress="1" Express='if(HD_Applicant.FactoryForm  ==  1&amp;&amp; HD_Applicant.RemoveForm  == 1,"qq","")'></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XCheckBoxList id="XCheckBoxList3" runat="server" XDataBind="HD_Applicant.KeyMateriel" Width="790px" RepeatDirection="Horizontal">
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox5" runat="server" XDataBind="HD_Applicant.MaterielTemplate" width="100%" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" BorderWidth="1px" TextMode="MultiLine" Height="160px">物料变更参考模板：
编号1：在XXXX组件下
DEL XXX ?PC ?位号 （指定销单）（指定数量）（关键物料标识）
ADD XXX ?PC ?位号 （指定销单）（指定数量）（关键物料标识）
编号2：XXX

软件变更模板：
暂略

工艺变更没有模板。</aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="83">
                            <aspxform:XLabel id="XLabel10" runat="server" text="更改对象"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="48">
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="HD_Applicant.FactoryForm" Text="工单" ValidationGroup="cb1"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="110">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="HD_Applicant.FactorySN" DisableCssClass="TextBox" CssClass="TextBox" width="100px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" ValidationGroup="t1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="108">
                            <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="HD_Applicant.VCBOMForm" Text="VC BOM ECN" ValidationGroup="cb1"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="115">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="HD_Applicant.VCBOMSN" DisableCssClass="TextBox" CssClass="TextBox" width="100px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="85">
                            <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="HD_Applicant.RemoveForm" Text="销单 ECN" ValidationGroup="cb1"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="118">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="HD_Applicant.RemoveSN" DisableCssClass="TextBox" CssClass="TextBox" width="100px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="91">
                            <aspxform:XCheckBox id="XCheckBox4" runat="server" XDataBind="HD_Applicant.ReturnECO" Text="返工 ECO" ValidationGroup="cb1"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="114">
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="HD_Applicant.ReturnECOSN" DisableCssClass="TextBox" CssClass="TextBox" width="100px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900" hiddenexpress='f1 ==""||HD_Applicant.ReturnECO != 0'>
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="83">
                            <aspxform:XLabel id="XLabel19" runat="server" text="更改时限"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="167">
                            <aspxform:XLabel id="XLabel17" runat="server" text="工单销单时限截止" HiddenExpress="HD_Applicant.FactoryForm == 0 &amp;&amp;  HD_Applicant.RemoveForm == 0"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="202">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" Font-Bold="True" XDataBind="HD_Applicant.StopTime" CssClass="TextBox" BorderColor="Gainsboro" ReadOnly="True" Width="164px" HiddenExpress="HD_Applicant.FactoryForm == 0 &amp;&amp;  HD_Applicant.RemoveForm == 0" onchange="javascript:XFormOnChange(this);" XType="datetime" XSubType="timeminutes" Type="TimeMinutes"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="175">
                            <aspxform:XLabel id="XLabel18" runat="server" text="VCBOM时限截止" HiddenExpress="HD_Applicant.VCBOMForm == 0"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="257">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" Font-Bold="True" XDataBind="HD_Applicant.StopTime_VCBOM" CssClass="TextBox" BorderColor="Gainsboro" ReadOnly="True" Width="164px" HiddenExpress="HD_Applicant.VCBOMForm == 0" onchange="javascript:XFormOnChange(this);" XType="datetime" XSubType="timeminutes" Type="TimeMinutes"></aspxform:XDateTimePicker>
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="f1" width="25px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderWidth="1px" Express='if(HD_Applicant.FactoryForm  ==  0,if(HD_Applicant.VCBOMForm  == 0,if(HD_Applicant.RemoveForm  == 0,if(HD_Applicant.ReturnECO == 0,"","aa"),"aa"),"aa"),"aa")'></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="4" width="83">
                            <aspxform:XLabel id="XLabel13" runat="server" text="变更原因"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28" width="709" colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" Font-Bold="False" XDataBind="HD_Applicant.ModifyType" BorderColor="White" RepeatDirection="Horizontal" Font-Italic="False" BackColor="White">
                                <asp:ListItem>物料变更</asp:ListItem>
                                <asp:ListItem>设计变更</asp:ListItem>
                                <asp:ListItem>工艺变更</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="va4" width="10px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1" Express="HD_Applicant.ModifyType"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="va5" width="100px" BorderColor="#DCDCDC" HiddenInput="True" BorderWidth="1" Express="HD_Applicant.ModifyReason"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" Display="None" ErrorMessage="返工ECO必填！" ControlToValidate="XTextBox21" DisableExpress="HD_Applicant.ReturnECO == 0">返工ECO</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <p>
                                <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="HD_Applicant.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant.ModifyType !="物料变更"'>
                                    <asp:ListItem Value="物料变更-新物料试产">新物料试产</asp:ListItem>
                                    <asp:ListItem Value="物料变更-物料代用">物料代用</asp:ListItem>
                                    <asp:ListItem Value="物料变更-增加、删除物料">增加、删除物料</asp:ListItem>
                                    <asp:ListItem Value="物料变更-修改用量">修改用量</asp:ListItem>
                                    <asp:ListItem Value="物料变更-其它">其它</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p>
                                <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="HD_Applicant.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant.ModifyType !="设计变更"'>
                                    <asp:ListItem Value="设计变更-功能优化">功能优化</asp:ListItem>
                                    <asp:ListItem Value="设计变更-选择条件">选择条件</asp:ListItem>
                                    <asp:ListItem Value="设计变更-性能优化">性能优化</asp:ListItem>
                                    <asp:ListItem Value="设计变更-客户化更改">客户化更改</asp:ListItem>
                                    <asp:ListItem Value="设计变更-其它">其它</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p>
                                <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="HD_Applicant.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant.ModifyType !="工艺变更"'>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="19" colspan="2">
                            <span style="FONT-FAMILY: 新宋体; FONT-SIZE: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-weight: bold">
                            <aspxform:XLabel id="XLabel12" runat="server" Font-Size="X-Small" Text="更改说明:"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="工单号必填" ControlToValidate="XTextBox6" DisableExpress="HD_Applicant.FactoryForm == 0">工单号验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="VCBOM单号必填" ControlToValidate="XTextBox7" DisableExpress="HD_Applicant.VCBOMForm == 0">VCBOM单验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="销单号必填" ControlToValidate="XTextBox8" DisableExpress="HD_Applicant.RemoveForm == 0">销单单号验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="工单销单时限必填" ControlToValidate="XDateTimePicker2" DisableExpress="HD_Applicant.FactoryForm == 0 &amp;&amp;  HD_Applicant.RemoveForm == 0">工单销单时限验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="VCBOM时限截止必填" ControlToValidate="XDateTimePicker1" DisableExpress="HD_Applicant.VCBOMForm == 0">VCBOM时限截止验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" Display="None" ErrorMessage="请选择变更原因类型" ControlToValidate="XTextBox16">变更原因类型验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" Display="None" ErrorMessage="请选择变更原因" ControlToValidate="XTextBox17">变更原因验证</aspxform:XRequiredFieldValidator>
                            </span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox9" runat="server" XDataBind="HD_Applicant.ModifyInstruction" DisableCssClass="TextBox" CssClass="TextBox" width="787px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" NormalCssClass="TextBox" TextMode="MultiLine" Height="28px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="69">
                            <aspxform:XLabel id="XLabel15" runat="server" text="变更依据"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="17" width="681" colspan="2">
                            <aspxform:XLabel id="XLabel14" runat="server" text="审核建议携带的附件:"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" Display="None" ErrorMessage="变更依据为其它时，请填写内容" ControlToValidate="XTextBox10" DisableExpress='HD_Applicant.AttachmentType  !="其它"'>变更依据为其它时验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" Display="None" ErrorMessage="更改对象要选择其一" ControlToValidate="XTextBox18">更改对象验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" Display="None" ErrorMessage="变更依据必选其一" ControlToValidate="XTextBox19">变更依据验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XCustomValidator id="XCustomValidator1" runat="server" Display="None" ErrorMessage="工单销单截止时间只能选11点或者17点！" ControlToValidate="XDateTimePicker2" DisableExpress="HD_Applicant.FactoryForm == 0 &amp;&amp;  HD_Applicant.RemoveForm == 0" ClientValidationFunction="ClientValidate2">工单截止时间</aspxform:XCustomValidator>
                            <aspxform:XCustomValidator id="XCustomValidator2" runat="server" Display="None" ErrorMessage="VCBOM截止时间只能选11点或者17点！" ControlToValidate="XDateTimePicker1" DisableExpress="HD_Applicant.VCBOMForm == 0" ClientValidationFunction="ClientValidate1">VCBOM截止时间</aspxform:XCustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22" colspan="2">
                            <aspxform:XCheckBoxList id="XCheckBoxList4" runat="server" XDataBind="HD_Applicant.AttachmentType" Width="518px" RepeatDirection="Horizontal">
                                <asp:ListItem>硬件变更测评报告</asp:ListItem>
                                <asp:ListItem>新物料试产报告</asp:ListItem>
                                <asp:ListItem>软件变更测试报告</asp:ListItem>
                                <asp:ListItem>市场需求变更表号</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XCheckBoxList>
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="va5" width="10px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" BorderWidth="1px" Express="HD_Applicant.AttachmentType" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28" colspan="2">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="HD_Applicant.Attachment" StorePathExpress="0" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="HD_Applicant.AttachmentOther" DisableCssClass="TextBox" CssClass="TextBox" width="594px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" HiddenExpress='HD_Applicant.AttachmentType  !="其它"'></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23" colspan="2">
                            <aspxform:XLabel id="XLabel16" runat="server" text="审批信息" ForeColor="Black" PrintOut="False"></aspxform:XLabel>
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
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" Display="None" ErrorMessage="退回请填写原因" ControlToValidate="XCommentsTextBox1" ValidationGroup="Return">退回重填验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" Display="None" ErrorMessage="请填写拒绝原因" ControlToValidate="XCommentsTextBox1" ValidationGroup="Reject">拒绝验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XProcessButtonList id="XProcessButtonList2" runat="server"></aspxform:XProcessButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="900">
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
