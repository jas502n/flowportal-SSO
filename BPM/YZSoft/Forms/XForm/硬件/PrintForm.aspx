<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
    protected void Page_Load(object sender, EventArgs e)
        {
            XTextBox5.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox7.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
            XTextBox9.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+10)");
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
    <form runat="server" runat="server" style="padding-right: 2px; padding-bottom: inherit; padding-left: 28px; padding-top: 2px">
        <p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="745">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="54" width="203">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="377" align="middle">
                            <aspxform:XLabel id="XLabel1" runat="server" text="深圳创维数字技术股份有限公司" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="210">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="58" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="设计更改通知单（DCN）" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
            <!-- Insert content here -->
        </p>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="745">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="58" align="middle">
                        <aspxform:XLabel id="XLabel2" runat="server" text="编&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;号:"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="182">
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="HD_Applicant_Factory.RealSN" ReadOnly="True" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" BorderWidth="1px" width="100%" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="59">
                        <aspxform:XLabel id="XLabel4" runat="server" text="产品型号:"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="184">
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="HD_Applicant_Factory.ProductMode" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" BorderWidth="1px" width="100%" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="56" align="middle">
                        <aspxform:XLabel id="XLabel3" runat="server" text="编制日期:"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="187">
                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="HD_Applicant_Factory.AppDate" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" BorderWidth="1px" width="100%" DisableBehavior="ReadOnly"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="745">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="27" width="82">
                        <aspxform:XLabel id="XLabel5" runat="server" text="执行数量:"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="656">
                        <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="HD_Applicant_Factory.Number" Width="447px" RepeatDirection="Horizontal">
                            <asp:ListItem>订单数量（含备机）</asp:ListItem>
                            <asp:ListItem>备损散件数量</asp:ListItem>
                            <asp:ListItem Value="指定数量">指定数量</asp:ListItem>
                            <asp:ListItem>见变更内容</asp:ListItem>
                        </aspxform:XRadioButtonList>
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="HD_Applicant_Factory.NumberValue" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" BorderWidth="1px" width="113px" DisableBehavior="ReadOnly" HiddenExpress='HD_Applicant_Factory.Number == "见变更内容" ||HD_Applicant_Factory.Number == "订单数量（含备机）"'></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="745">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="58">
                        <aspxform:XLabel id="XLabel6" runat="server" text="订单编号:"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="680">
                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="HD_Applicant_Factory.OrderFormSN" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" BorderWidth="1px" DisableBehavior="ReadOnly" Width="100%" TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="745">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="137" align="left">
                        <aspxform:XLabel id="XLabel21" runat="server" text="工单更改表格:"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="237">
                        <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="HD_Applicant_Factory.FactorySN" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" BorderWidth="1px" width="166px"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="81" align="left">
                        <aspxform:XLabel id="XLabel22" runat="server" text="销单更改表格:"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="281" colspan="2">
                        <aspxform:XTextBox id="XTextBox38" runat="server" XDataBind="HD_Applicant_Factory.RemoveSN" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" BorderWidth="1px" width="166px"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="745">
            <tbody>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="745">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="4" width="90">
                        <aspxform:XLabel id="XLabel13" runat="server" text="变更申请原因"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="707" colspan="2">
                        <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" Font-Bold="False" XDataBind="HD_Applicant_Factory.ModifyType" BorderColor="White" RepeatDirection="Horizontal" BackColor="White" Font-Italic="False">
                            <asp:ListItem>物料变更</asp:ListItem>
                            <asp:ListItem>设计变更</asp:ListItem>
                            <asp:ListItem>工艺变更</asp:ListItem>
                        </aspxform:XRadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                        <p>
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="HD_Applicant_Factory.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_Factory.ModifyType!="物料变更"'>
                                <asp:ListItem Value="物料变更-新物料试产">新物料试产</asp:ListItem>
                                <asp:ListItem Value="物料变更-物料代用">物料代用</asp:ListItem>
                                <asp:ListItem Value="物料变更-增加、删除物料">增加、删除物料</asp:ListItem>
                                <asp:ListItem Value="物料变更-修改用量">修改用量</asp:ListItem>
                                <asp:ListItem Value="物料变更-其它">其它</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </p>
                        <p>
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="HD_Applicant_Factory.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_Factory.ModifyType !="设计变更"'>
                                <asp:ListItem Value="设计变更-功能优化">功能优化</asp:ListItem>
                                <asp:ListItem Value="设计变更-选择条件">选择条件</asp:ListItem>
                                <asp:ListItem Value="设计变更-性能优化">性能优化</asp:ListItem>
                                <asp:ListItem Value="设计变更-客户化更改">客户化更改</asp:ListItem>
                                <asp:ListItem Value="设计变更-其它">其它</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </p>
                        <p>
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="HD_Applicant_Factory.ModifyReason" RepeatDirection="Horizontal" HiddenExpress='HD_Applicant_Factory.ModifyType  !="工艺变更"'>
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
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                        <span style="FONT-FAMILY: 新宋体; FONT-SIZE: 12pt; mso-bidi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-bidi-font-weight: bold">
                        <aspxform:XLabel id="XLabel12" runat="server" Font-Size="X-Small" Text="更改说明:"></aspxform:XLabel>
                        </span></td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                        <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="HD_Applicant_Factory.ModifyInstruction" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" BorderWidth="1px" width="100%" DisableBehavior="ReadOnly" TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="745" height="39">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="83">
                        <aspxform:XLabel id="XLabel8" runat="server" text="变更内容" Font-Bold="True"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="655">
                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="HD_Applicant_Factory.MaterielTemplate" HiddenInput="False" Min="0" Max="0" BorderColor="Gainsboro" BorderWidth="1px" DisableBehavior="ReadOnly" Width="100%" TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="900">
            <tbody>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="745">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="22" width="796" align="middle">
                        <aspxform:XPrintButton id="XPrintButton1" runat="server"></aspxform:XPrintButton>
                    </td>
                </tr>
            </tbody>
        </table>
        <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="745" PrintOut="False">
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
