<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
       protected void Page_Load(object sender, EventArgs e)
        {
    
           XTextBox4.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
           XTextBox5.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+20)");
           XTextBox9.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
        }
    
    void XRadioButtonList6_SelectedIndexChanged(object sender, EventArgs e) {
    
    }

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
.TextBox {
	BORDER-BOTTOM: silver 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none
}
INPUT {
	HEIGHT: 20px
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

function ClientValidate2(sender,args)
{
     var str = document.getElementById("XTextBox23").value;
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
     var str = document.getElementById("XTextBox24").value;

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
                                <aspxform:XLabel id="XLabel1" runat="server" text="深圳创维数字技术股份有限公司" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="210">
                                <aspxform:XLabel id="XLabel11" runat="server" XDataBind="HD_Applicant.SN"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="58" colspan="3" align="middle">
                                <asp:Label id="Label1" runat="server" text="BOM变更需求(申请)提交表" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label></td>
                        </tr>
                    </tbody>
                </table>
                <!-- Insert content here -->
            </p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="903">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="120" align="right">
                            <aspxform:XLabel id="XLabel2" runat="server" text="编&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="387">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="HD_Applicant.SN" ReadOnly="True" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="166px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="58" align="right">
                            <aspxform:XLabel id="XLabel3" runat="server" text="编制日期:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="322">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="HD_Applicant.AppDate" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="166px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="HD_Applicant.HRID" HiddenInput="True" BorderColor="#DCDCDC" Width="1px" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="26" align="right">
                            <aspxform:XLabel id="XLabel4" runat="server" text="产品型号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="HD_Applicant.ProductMode" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="370px" CssClass="TextBox" DisableCssClass="TextBox" NormalCssClass="TextBox"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="HD_Applicant.Dept" HiddenInput="True" BorderColor="#DCDCDC" Width="5px" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" align="right">
                            <aspxform:XLabel id="XLabel5" runat="server" text="订单编号:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox4" runat="server" XDataBind="HD_Applicant.OrderFormSN" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="166px" CssClass="TextBox" DisableCssClass="TextBox" NormalCssClass="TextBox" Height="23px" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="HD_Applicant.Name" HiddenInput="True" BorderColor="#DCDCDC" Width="1px" BorderWidth="1"></aspxform:XTextBox>
                            <aspxform:XLabel id="XLabel21" runat="server" text="输入多个订单用/来间隔" ForeColor="Red"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900" height="27">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="119" align="right">
                            <aspxform:XLabel id="XLabel22" runat="server" text="产品线:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="774">
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="HD_Applicant.BelongingDept" RepeatDirection="Horizontal" OnSelectedIndexChanged="XRadioButtonList6_SelectedIndexChanged">
                                <asp:ListItem>国内运营产品线</asp:ListItem>
                                <asp:ListItem>海外运营产品线</asp:ListItem>
                                <asp:ListItem>海外零售产品线</asp:ListItem>
                                <asp:ListItem>宽带事业部</asp:ListItem>
                                <asp:ListItem>新产品业务部</asp:ListItem>
                                <asp:ListItem>自动化开发部</asp:ListItem>
                                <asp:ListItem>无线</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="119" align="right">
                            <aspxform:XLabel id="XLabel6" runat="server" text="变更模块:"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="774">
                            <p align="left">
                                <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="HD_Applicant.ModifyModule" RepeatDirection="Horizontal">
                                    <asp:ListItem>硬件</asp:ListItem>
                                    <asp:ListItem>电源</asp:ListItem>
                                    <asp:ListItem>副板</asp:ListItem>
                                    <asp:ListItem>软件</asp:ListItem>
                                    <asp:ListItem>结构</asp:ListItem>
                                    <asp:ListItem>工艺</asp:ListItem>
                                    <asp:ListItem>物料代用</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator15" runat="server" ControlToValidate="XRadioButtonList5" ErrorMessage="执行数量必选其一" Display="None">执行数量</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XTextBox20" ErrorMessage="请填写执行数量" Display="None" DisableExpress='HD_Applicant.Number != "订单数量（含备机）" &amp;&amp;  HD_Applicant.Number != "指定数量"'>执行数量值</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator16" runat="server" ControlToValidate="XTextBox14" ErrorMessage="变更需求或申请必选" Display="None">变更需求或申请</aspxform:XRequiredFieldValidator>
                                <aspxform:XTextBox id="XTextBox14" runat="server" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="27px" BorderWidth="1px" HiddenExpress="1" Express="HD_Applicant.RemandOrApp"></aspxform:XTextBox>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XRadioButtonList6" ErrorMessage="产品线必选其一" Display="None">产品线</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator21" runat="server" ControlToValidate="XRadioButtonList9" ErrorMessage="变更模块必选其一" Display="None">变更模块</aspxform:XRequiredFieldValidator>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="896" align="middle">
                            <aspxform:XCheckBoxList id="XCheckBoxList1" runat="server" XDataBind="HD_Applicant.RemandOrApp" RepeatDirection="Horizontal">
                                <asp:ListItem>有新物料申请</asp:ListItem>
                                <asp:ListItem>有新组件申请</asp:ListItem>
                                <asp:ListItem Selected="True">直接变更申请</asp:ListItem>
                            </aspxform:XCheckBoxList>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none" width="454" colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="HD_Applicant.Number" Width="447px" RepeatDirection="Horizontal">
                                <asp:ListItem>订单数量（含备机）</asp:ListItem>
                                <asp:ListItem>备损散件数量</asp:ListItem>
                                <asp:ListItem Value="指定数量">指定数量</asp:ListItem>
                                <asp:ListItem>见变更内容</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none" width="35">
                            <aspxform:XLabel id="XLabel20" runat="server" HiddenExpress='HD_Applicant.Number !="订单数量（含备机）"' Text="约"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="282">
                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="HD_Applicant.NumberValue" HiddenInput="False" Min="0" Max="0" BorderColor="Pink" width="113px" CssClass="TextBox" DisableCssClass="TextBox" HiddenExpress='HD_Applicant.Number != "订单数量（含备机）" &amp;&amp;  HD_Applicant.Number != "指定数量"'></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="4" width="83">
                            <aspxform:XLabel id="XLabel9" runat="server" text="变更内容"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="810">
                            <aspxform:XLabel id="XLabel8" runat="server" text="关键物料标识:"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Width="78px" ControlToValidate="XTextBox3" ErrorMessage="产品型号必填" Display="None">产品型号验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XRadioButtonList9" ErrorMessage="变更模块至少要选其一" Display="None">变更模块验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="key" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="109px" BorderWidth="1px" HiddenExpress="1" Express="HD_Applicant.KeyMateriel"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator19" runat="server" ControlToValidate="XRadioButtonList7" ErrorMessage="请选择是否为关键物料！" Display="None">关键物料</aspxform:XRequiredFieldValidator>
                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="HD_Applicant.Code" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="45px" BorderWidth="1px" HiddenExpress="1" Express='if(HD_Applicant.FactoryForm  ==  1&amp;&amp; HD_Applicant.RemoveForm  == 1,"qq","")'></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="HD_Applicant.KeyMateriel" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox5" runat="server" XDataBind="HD_Applicant.MaterielTemplate" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="100%" BorderWidth="1px" Height="200px" TextMode="MultiLine">物料变更参考模板：
编号1：在XXXX组件下(是否新组件)
DEL XXX ?PC ?位号 （指定销单）（指定数量）（关键物料标识）(是否新物料)
ADD XXX ?PC ?位号 （指定销单）（指定数量）（关键物料标识）(是否新物料)

编号2：XXX

软件变更模板：
暂略

工艺变更没有模板。
PS:如果变更内容超过3行,请在电子流入口处下载Excel模板填写上传(文件名=标题+日期+流水号)</aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="20">
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="HD_Applicant.MaterielTemplateAtt" StorePathBasicFolder="SystemAttachmentsRoot" StorePathExpress="0"></aspxform:XMSNAttachments>
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
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="HD_Applicant.FactorySN" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="100px" CssClass="TextBox" DisableCssClass="TextBox" ValidationGroup="t1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="108">
                            <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="HD_Applicant.VCBOMForm" Text="VC BOM ECN" ValidationGroup="cb1"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="115">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="HD_Applicant.VCBOMSN" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="100px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="85">
                            <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="HD_Applicant.RemoveForm" Text="销单 ECN" ValidationGroup="cb1"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="118">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="HD_Applicant.RemoveSN" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="100px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="91">
                            <aspxform:XCheckBox id="XCheckBox4" runat="server" XDataBind="HD_Applicant.ReturnECO" Text="返工 ECO" ValidationGroup="cb1"></aspxform:XCheckBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="114">
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="HD_Applicant.ReturnECOSN" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="100px" CssClass="TextBox" DisableCssClass="TextBox"></aspxform:XTextBox>
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
                            <p>
                                <aspxform:XDateTimePicker id="XDateTimePicker2" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" Font-Bold="True" XDataBind="HD_Applicant.StopTime" ReadOnly="True" BorderColor="Gainsboro" CssClass="TextBox" Width="100%" HiddenExpress="HD_Applicant.FactoryForm == 0 &amp;&amp;  HD_Applicant.RemoveForm == 0" Type="TimeMinutes" XSubType="timeminutes" XType="datetime" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                                <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="t1" HiddenInput="True" BorderColor="#DCDCDC" width="100%" BorderWidth="1" Express="HD_Applicant.StopTime"></aspxform:XTextBox>
                            </p>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="175">
                            <aspxform:XLabel id="XLabel18" runat="server" text="VCBOM时限截止" HiddenExpress="HD_Applicant.VCBOMForm == 0"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="257">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" Font-Bold="True" XDataBind="HD_Applicant.StopTime_VCBOM" ReadOnly="True" BorderColor="Gainsboro" CssClass="TextBox" Width="200px" HiddenExpress="HD_Applicant.VCBOMForm == 0" Type="TimeMinutes" XSubType="timeminutes" XType="datetime" onchange="javascript:XFormOnChange(this);"></aspxform:XDateTimePicker>
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="f1" HiddenInput="True" Min="0" Max="0" BorderColor="Gainsboro" width="25px" BorderWidth="1px" Express='if(HD_Applicant.FactoryForm  ==  0,if(HD_Applicant.VCBOMForm  == 0,if(HD_Applicant.RemoveForm  == 0,if(HD_Applicant.ReturnECO == 0,"","aa"),"aa"),"aa"),"aa")'></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="t2" HiddenInput="True" BorderColor="#DCDCDC" width="200px" BorderWidth="1" Express="HD_Applicant.StopTime_VCBOM"></aspxform:XTextBox>
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
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none" height="29" width="356">
                            <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" Font-Bold="False" XDataBind="HD_Applicant.ModifyType" BorderColor="White" RepeatDirection="Horizontal" BackColor="White" Font-Italic="False">
                                <asp:ListItem>设计类变更</asp:ListItem>
                                <asp:ListItem>物料类变更</asp:ListItem>
                                <asp:ListItem>客户化变更</asp:ListItem>
                                <asp:ListItem>清库存(半成品)</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="452">
                            <aspxform:XLabel id="XLabel23" runat="server" text="*清库存为清理半成品库存" ForeColor="Red" Value ValueToDisplayText></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="64" colspan="2">
                            <p>
                                <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="HD_Applicant.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant.ModifyType !="设计类变更"'>
                                    <asp:ListItem>BOM纠错</asp:ListItem>
                                    <asp:ListItem>性能优化</asp:ListItem>
                                    <asp:ListItem>工艺优化</asp:ListItem>
                                    <asp:ListItem Value="其它">其它</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p>
                                <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="HD_Applicant.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant.ModifyType !="物料类变更"'>
                                    <asp:ListItem Value="新物料试产">新物料试产</asp:ListItem>
                                    <asp:ListItem Value="替代物料代用">替代物料代用</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p>
                                <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="HD_Applicant.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant.ModifyType !="客户化变更"'>
                                    <asp:ListItem>市场变更</asp:ListItem>
                                    <asp:ListItem>日常变更</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p>
                                <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="HD_Applicant.ModifyReason" HiddenExpress='HD_Applicant.ModifyType !="清库存(半成品)"'>
                                    <asp:ListItem>清半成品库存</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator20" runat="server" ControlToValidate="XTextBox21" ErrorMessage="返工ECO必填！" Display="None" DisableExpress="HD_Applicant.ReturnECO == 0">返工ECO</aspxform:XRequiredFieldValidator>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="19" colspan="2">
                            <span style="FONT-FAMILY: 新宋体; FONT-SIZE: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-weight: bold">
                            <aspxform:XLabel id="XLabel12" runat="server" Font-Size="X-Small" Text="更改说明:"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XTextBox6" ErrorMessage="工单号必填" Display="None" DisableExpress="HD_Applicant.FactoryForm == 0">工单号验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ControlToValidate="XTextBox7" ErrorMessage="VCBOM单号必填" Display="None" DisableExpress="HD_Applicant.VCBOMForm == 0">VCBOM单验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="XTextBox8" ErrorMessage="销单号必填" Display="None" DisableExpress="HD_Applicant.RemoveForm == 0">销单单号验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XDateTimePicker2" ErrorMessage="工单销单时限必填" Display="None" DisableExpress="HD_Applicant.FactoryForm == 0 &amp;&amp;  HD_Applicant.RemoveForm == 0">工单销单时限验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XDateTimePicker1" ErrorMessage="VCBOM时限截止必填" Display="None" DisableExpress="HD_Applicant.VCBOMForm == 0">VCBOM时限截止验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ControlToValidate="XTextBox16" ErrorMessage="请选择变更原因类型" Display="None">变更原因类型验证</aspxform:XRequiredFieldValidator>
                            </span></td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32" colspan="2">
                            <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox9" runat="server" XDataBind="HD_Applicant.ModifyInstruction" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="787px" CssClass="TextBox" DisableCssClass="TextBox" NormalCssClass="TextBox" Height="28px" TextMode="MultiLine"></aspxform:XTextBox>
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
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ControlToValidate="XTextBox10" ErrorMessage="变更依据为其它时，请填写内容" Display="None" DisableExpress='HD_Applicant.AttachmentType  !="其它"'>变更依据为其它时验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" ControlToValidate="XTextBox18" ErrorMessage="更改对象要选择其一" Display="None">更改对象验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ControlToValidate="XTextBox19" ErrorMessage="变更依据必选其一" Display="None">变更依据验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XCustomValidator id="XCustomValidator1" runat="server" ControlToValidate="XDateTimePicker2" ErrorMessage="工单销单截止时间只能选11点或者17点！" Display="None" DisableExpress="HD_Applicant.FactoryForm == 0 &amp;&amp;  HD_Applicant.RemoveForm == 0" ClientValidationFunction="ClientValidate2">工单截止时间</aspxform:XCustomValidator>
                            <aspxform:XCustomValidator id="XCustomValidator2" runat="server" ControlToValidate="XDateTimePicker1" ErrorMessage="VCBOM截止时间只能选11点或者17点！" Display="None" DisableExpress="HD_Applicant.VCBOMForm == 0" ClientValidationFunction="ClientValidate1">VCBOM截止时间</aspxform:XCustomValidator>
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
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="va5" HiddenInput="True" Min="0" Max="0" BorderColor="Gainsboro" width="10px" BorderWidth="1px" Express="HD_Applicant.AttachmentType" BorderStyle="Dotted"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="va4" HiddenInput="True" BorderColor="#DCDCDC" width="10px" BorderWidth="1" Express="HD_Applicant.ModifyType"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="va5" HiddenInput="True" BorderColor="#DCDCDC" width="100px" BorderWidth="1" Express="HD_Applicant.ModifyReason"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="28" colspan="2">
                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="HD_Applicant.Attachment" StorePathBasicFolder="SystemAttachmentsRoot" StorePathExpress="0"></aspxform:XMSNAttachments>
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="HD_Applicant.AttachmentOther" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="594px" CssClass="TextBox" DisableCssClass="TextBox" HiddenExpress='HD_Applicant.AttachmentType  !="其它"'></aspxform:XTextBox>
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
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="#DCDCDC" width="100%" BorderWidth="1" TextMode="MultiLine" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace2" runat="server" BorderColor="#dcdcdc" CssClass="AA" Width="100%" BorderWidth="1"></aspxform:XSignTrace>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="26" valign="bottom" width="201" align="right">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server"></aspxform:XPrintButton>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="533" align="left">
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator17" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="退回请填写原因" Display="None" ValidationGroup="Return">退回重填验证</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator18" runat="server" ControlToValidate="XCommentsTextBox1" ErrorMessage="请填写拒绝原因" Display="None" ValidationGroup="Reject">拒绝验证</aspxform:XRequiredFieldValidator>
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
