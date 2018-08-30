<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
    protected void Page_Load(object sender, EventArgs e)
        {
            XTextBox4.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox17.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
    
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
.TextBox {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: silver 1px solid
}
TABLE {
	FONT-SIZE: 12px; FONT-FAMILY: verdana; BORDER-COLLAPSE: collapse
}
P {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 12px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; FONT-FAMILY: verdana
}
.TextBox {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: silver 1px solid
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
        <div align="center">
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="203">
                                <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                                &nbsp;</td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="377" align="middle">
                                <aspxform:XLabel id="XLabel1" runat="server" text="深圳创维数字技术股份有限公司" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="210" align="middle">
                                <aspxform:XLabel id="XLabel11" runat="server" XDataBind="HD_Applicant_VCBOM.RealSN"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="58" colspan="3" align="middle">
                                <asp:Label id="Label1" runat="server" text="返工ECO" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label></td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="95" align="middle">
                                <aspxform:XLabel id="XLabel31" runat="server" text="提交人:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="109" align="left">
                                <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="HD_Applicant_VCBOM.Name" CssClass="TextBox" DisableBehavior="ReadOnly" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="100px"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="100">
                                <aspxform:XLabel id="XLabel32" runat="server" text="产品型号:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="135">
                                <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="HD_Applicant_VCBOM.ProductMode" CssClass="TextBox" DisableBehavior="ReadOnly" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="127px"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="54">
                                <aspxform:XLabel id="XLabel36" runat="server" text="订单编号:" Width="68px"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="223">
                                <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="HD_Applicant_VCBOM.OrderFormSN" CssClass="TextBox" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="182px"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="52">
                                <aspxform:XLabel id="XLabel33" runat="server" text="日期:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="208">
                                <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="HD_Applicant_VCBOM.AppDate" CssClass="TextBox" DisableBehavior="ReadOnly" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="150px"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" border="0" cellspacing="0" cellpadding="0" width="850">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="58">
                                <aspxform:XLabel id="XLabel34" runat="server" text="变更模块:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="785">
                                <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyModule" Width="263px" RepeatDirection="Horizontal">
                                    <asp:ListItem>硬件</asp:ListItem>
                                    <asp:ListItem>软件</asp:ListItem>
                                    <asp:ListItem>结构</asp:ListItem>
                                    <asp:ListItem>工艺</asp:ListItem>
                                    <asp:ListItem>物料</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="HD_Applicant_VCBOM.HRID" HiddenInput="True" BorderColor="#DCDCDC" width="20px" BorderWidth="1"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="HD_Applicant_VCBOM.Name" HiddenInput="True" BorderColor="#DCDCDC" width="10px" BorderWidth="1"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="HD_Applicant_VCBOM.Dept" HiddenInput="True" BorderColor="#DCDCDC" width="8px" BorderWidth="1"></aspxform:XTextBox>
                                <aspxform:XLabel id="XLabel35" runat="server" text="序号:" HiddenExpress="1"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="HD_Applicant_VCBOM.SN" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="10px" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                                <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="HD_Applicant_VCBOM.RealSN" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="108px" BorderWidth="1px" HiddenExpress="1"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <!-- Insert content here -->
            </p>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" height="242">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="60">
                                <aspxform:XLabel id="XLabel5" runat="server" text="变更原因:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="792" colspan="7">
                                <p>
                                    <span style="FONT-FAMILY: 新宋体; FONT-SIZE: 10.5pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-weight: bold">
                                    <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyType" RepeatDirection="Horizontal">
                                        <asp:ListItem>设计类变更</asp:ListItem>
                                        <asp:ListItem>物料类变更</asp:ListItem>
                                        <asp:ListItem>客户化变更</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                    </span>
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
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XLabel id="XLabel10" runat="server" text="变更说明:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="7">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox4" runat="server" XDataBind="HD_Applicant_VCBOM.ModifyInstruction" CssClass="TextBox" DisableBehavior="ReadOnly" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="100%" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="25">
                                <aspxform:XLabel id="XLabel19" runat="server" text="关键物料:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="7">
                                <aspxform:XCheckBoxList id="XCheckBoxList3" runat="server" Width="696px" RepeatDirection="Horizontal" HiddenExpress="1">
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
                                <aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="HD_Applicant_VCBOM.KeyMateriel" RepeatDirection="Horizontal">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem>否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="45">
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
                                    <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="HD_Applicant_VCBOM.Attachment" StorePathBasicFolder="SystemAttachmentsRoot" StorePathExpress="0"></aspxform:XMSNAttachments>
                                    <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="HD_Applicant_VCBOM.AttachmentOther" CssClass="TextBox" DisableBehavior="ReadOnly" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="572px" HiddenExpress='HD_Applicant_VCBOM.AttachmentType  !="其它"'></aspxform:XTextBox>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XLabel id="XLabel7" runat="server" text="补充说明:" Width="56px"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="7">
                                <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="HD_Applicant_VCBOM.ReplenishInstruction" CssClass="TextBox" DisableBehavior="ReadOnly" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </p>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="58">
                                <aspxform:XLabel id="XLabel18" runat="server" text="变更内容:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="785">
                                <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox17" runat="server" XDataBind="HD_Applicant_VCBOM.MaterielTemplate" CssClass="TextBox" DisableBehavior="ReadOnly" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="100%" DisableCssClass="TextBox" TextMode="MultiLine"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </p>
            <p>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="30" width="688" colspan="3">
                                <aspxform:XLabel id="XLabel8" runat="server" text="返工ECO:"></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="HD_Applicant_VCBOM.ReturnECOSN" DisableBehavior="ReadOnly" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="500px" BorderWidth="1px"></aspxform:XTextBox>
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
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" dynamicarea="2,1">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="25" colspan="3">
                                <aspxform:XLabel id="XLabel15" runat="server" text="关联评审人:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="669">
                                <div align="right">
                                    <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="请填写每个关联评审人的评审要求！" ControlToValidate="XTextBox18" ValidationGroup="变更确认" DisableExpress='HD_RelationAuditor_VCBOM.Name ==""'>评审要求</aspxform:XRequiredFieldValidator>
                                    <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="105px" HiddenExpress="Global.StepName!='变更确认' " MultiSelect="True" DataMap="Account->HD_RelationAuditor_VCBOM.HRID;DisplayName->HD_RelationAuditor_VCBOM.Name;Department->HD_RelationAuditor_VCBOM.Dept" PopupWndWidth="800" NavigateUrl="~\FormSupport\SelUser.aspx" UseSubmitBehavior="False" PopupWndY="100" PopupWndX="100" PopupWndHeight="500" Text="选择关联审批人" PrintOut="False" Height="20px"></aspxform:XSelectUserButton>
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
                                <aspxform:XGridLineNo id="XGridLineNo3" runat="server" BorderColor="Gainsboro" Width="33px" BorderWidth="1px" Height="22px" Enabled="False" XType="gridlineno" BackColor="#F0F0F0">1</aspxform:XGridLineNo>
                                <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="HD_RelationAuditor_VCBOM.HRID" HiddenInput="True" Min="0" Max="0" BorderColor="Gainsboro" width="18px" BorderWidth="1px" BorderStyle="Dotted"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="HD_RelationAuditor_VCBOM.Name" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" width="100px" BorderWidth="1px" Height="22px" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True"></aspxform:XTextBox>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="HD_RelationAuditor_VCBOM.Dept" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" Width="80px" BorderWidth="1px" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True"></aspxform:XTextBox>
                                &nbsp;
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                                <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="HD_RelationAuditor_VCBOM.Notion" CssClass="TextBox" HiddenInput="False" BorderColor="#DCDCDC" Width="100%"></aspxform:XTextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850" hiddenexpress='HD_RelationAuditor_VCBOM.Name == "" '>
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="129">
                                <aspxform:XLabel id="XLabel39" runat="server" text="签核附件:"></aspxform:XLabel>
                            </td>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="864">
                                <aspxform:XMSNAttachments id="XMSNAttachments11" runat="server" XDataBind="HD_Applicant_VCBOM.RelationAtt" StorePathBasicFolder="SystemAttachmentsRoot" StorePathExpress="0"></aspxform:XMSNAttachments>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="850">
                    <tbody>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23" colspan="2">
                                <aspxform:XLabel id="XLabel25" runat="server" text="审批信息" PrintOut="False" ForeColor="Black"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="55" colspan="2">
                                <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="#DCDCDC" width="100%" BorderWidth="1" TextMode="MultiLine" PrintOut="False" Rows="3"></aspxform:XCommentsTextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32" colspan="2">
                                <aspxform:XSignTrace id="XSignTrace2" runat="server" CssClass="AA" BorderColor="#dcdcdc" Width="100%" BorderWidth="1"></aspxform:XSignTrace>
                            </td>
                        </tr>
                        <tr>
                            <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="26" valign="bottom" width="201" align="right">
                                <aspxform:XPrintButton id="XPrintButton1" runat="server" Zoom="82" MarginLeft="45" MarginRight="45" MarginTop="45" MarginBottom="45"></aspxform:XPrintButton>
                            </td>
                            <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="533" align="left">
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="退回请填写原因" ControlToValidate="XCommentsTextBox1" ValidationGroup="Return">退回重填验证</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="请填写拒绝原因" ControlToValidate="XCommentsTextBox1" ValidationGroup="Reject">拒绝验证</aspxform:XRequiredFieldValidator>
                                <aspxform:XProcessButtonList id="XProcessButtonList2" runat="server"></aspxform:XProcessButtonList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="850">
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
