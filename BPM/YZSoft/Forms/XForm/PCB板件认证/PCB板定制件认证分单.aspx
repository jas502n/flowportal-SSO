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
	PADDING-RIGHT: 0px; PADDING-LEFT: 2px; BORDER-LEFT-COLOR: #d1dedf; BORDER-BOTTOM-COLOR: #d1dedf; PADDING-BOTTOM: 0px; BORDER-TOP-COLOR: #d1dedf; BORDER-RIGHT-COLOR: #d1dedf
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
.BOXCSS {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #ffb3a7 1px solid
}
.MYHEAD {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #d1dedf 1px solid; BACKGROUND-COLOR: #d1dedf
}
.MYTABLE {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 0px solid
}
.MYTABLE2 {
	BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 0px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid
}
TABLE.AA {
	BORDER-COLLAPSE: separate; BACKGROUND-COLOR: #d1dedf
}
TABLE.AA TD {
	BORDER-TOP: white 0px solid; BORDER-LEFT: white 0px solid; HEIGHT: 15px
}
TABLE.AA TR.HeaderRow {
	BACKGROUND-COLOR: #f0f0f0
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
	BACKGROUND-COLOR: #ffffff
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
TEXTAREA {
	BORDER-RIGHT: #ffffff 0px solid; BORDER-TOP: #ffffff 0px solid; OVERFLOW-Y: visible; BACKGROUND: #ffffff; OVERFLOW: hidden; BORDER-LEFT: #ffffff 0px solid; BORDER-BOTTOM: #ffb3a7 0px solid
}
</style>
</head>
<body topmargin="9">
    <form runat="server">
        <div align="center">
            <!-- Insert content here -->
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="217">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="403" align="middle">
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="224">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="47" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="PCB板定制件认证" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="27" width="80">
                            <p align="right">
                                <aspxform:XLabel id="XLabel43" runat="server" text="申  请  人："></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="139">
                            <aspxform:XLabel id="XLblName" runat="server" XDataBind="PCB_Applicant_Fen.AppHRName"></aspxform:XLabel>
                        </td>
                        <td width="80">
                            <p align="right">
                                <aspxform:XLabel id="XLabel45" runat="server" text="申请日期："></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="493">
                            <aspxform:XLabel id="XLblDate" runat="server" XDataBind="PCB_Applicant_Fen.AppDate"></aspxform:XLabel>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="8">
                            <aspxform:XLabel id="XLabel4" runat="server" text="PCB申请" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td height="29" width="100">
                            <p align="right">
                                申请板类型：
                            </p>
                        </td>
                        <td colspan="7">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="PCB_Applicant_Fen.BoardType" Width="189px" onchange="javascript:XFormOnChange(this);" PromptText="请选择" XDataSource="XDataSource">
                                <asp:ListItem>主板</asp:ListItem>
                                <asp:ListItem>键控板</asp:ListItem>
                                <asp:ListItem>电源板</asp:ListItem>
                                <asp:ListItem>SMART板</asp:ListItem>
                                <asp:ListItem>TUNER板</asp:ListItem>
                                <asp:ListItem>转接板</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                <aspxform:XLabel id="XLabel5" runat="server" text="产品名称："></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="162">
                            <p align="left">
                                <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="PCB_Applicant_Fen.ProName" width="100px" CssClass="BOXCSS" Font-Overline="False" Font-Underline="False"></aspxform:XTextBox>
                            </p>
                        </td>
                        <td width="74">
                            <p align="center">
                                <aspxform:XLabel id="XLabel7" runat="server" text="PCB编号："></aspxform:XLabel>
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="PCB_Applicant_Fen.PCB_NO" width="98%" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td width="70">
                            <p align="center">
                                <aspxform:XLabel id="XLabel9" runat="server" text="项目经理："></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="117">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="PCB_Applicant_Fen.AssistantName" width="80px" CssClass="BOXCSS" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="PCB_Applicant_Fen.AssistantID" Width="20px" HiddenInput="True" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                需求数量：
                            </p>
                        </td>
                        <td class="NoPadding" colspan="3">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="69">
                                            需求数量：</td>
                                        <td width="57">
                                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="PCB_Applicant_Fen.NeedCount1" width="55px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Max="0" Min="0" HiddenInput="False" TextAlign="Right"></aspxform:XTextBox>
                                        </td>
                                        <td width="46">
                                            &nbsp;PCS ，</td>
                                        <td width="57">
                                            <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="PCB_Applicant_Fen.NeedCount2" Width="55px" CssClass="BOXCSS" ReadOnly="True"></aspxform:XTextBox>
                                        </td>
                                        <td width="93">
                                            &nbsp;拼板</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <td colspan="2">
                            <p align="right">
                                是否已建立VSS目录：
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="PCB_Applicant_Fen.isVSS" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td height="31">
                            <p align="right">
                                参考版本号：
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="PCB_Applicant_Fen.VersionNO" Width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p align="center">
                                SVN存放路径
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="PCB_Applicant_Fen.VSS_Path" Width="423px" CssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="38">
                            <p align="right">
                                <aspxform:XLabel id="XLabel6" runat="server" text="是否扩点："></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <p align="left">
                                <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="PCB_Applicant_Fen.KuoDian" Width="80px" RepeatDirection="Horizontal">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem Selected="True">否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                        </td>
                        <td>
                            <p align="center">
                                <aspxform:XLabel id="XLabel8" runat="server" text="是否需要PCB设计" Width="60px" HiddenExpress="PCB_Applicant_Fen.KuoDian!='否'"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="89">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="PCB_Applicant_Fen.PCB_Design" Width="80px" RepeatDirection="Horizontal" HiddenExpress="PCB_Applicant_Fen.KuoDian!='否'">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td width="82">
                            <div align="center">
                                <aspxform:XLabel id="XLabel10" runat="server" text="是否全新LAYOUT" Width="75px" HiddenExpress="PCB_Applicant_Fen.KuoDian!='否' || PCB_Applicant_Fen.PCB_Design!='是'"></aspxform:XLabel>
                            </div>
                        </td>
                        <td width="84">
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="PCB_Applicant_Fen.NewLayout" Width="80px" RepeatDirection="Horizontal" HiddenExpress="PCB_Applicant_Fen.KuoDian!='否' ||   PCB_Applicant_Fen.PCB_Design!='是'">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td>
                            <div align="center">
                                <aspxform:XLabel id="XLabel11" runat="server" text="是否需要结构定位图纸" Width="65px" HiddenExpress="PCB_Applicant_Fen.KuoDian!='否' ||   PCB_Applicant_Fen.PCB_Design!='是'"></aspxform:XLabel>
                            </div>
                        </td>
                        <td>
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="PCB_Applicant_Fen.BluePrint" Width="80px" RepeatDirection="Horizontal" HiddenExpress="PCB_Applicant_Fen.KuoDian!='否' ||   PCB_Applicant_Fen.PCB_Design!='是'">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr hiddenexpress="PCB_Applicant_Fen.KuoDian!='否' ||  PCB_Applicant_Fen.PCB_Design!='是'">
                        <td height="30">
                            <p align="right">
                                <aspxform:XLabel id="XLabel14" runat="server" text="打样阶段："></aspxform:XLabel>
                            </p>
                        </td>
                        <td colspan="7">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="PCB_Applicant_Fen.DrawDesign" Width="150px">
                                <asp:ListItem>平台开发</asp:ListItem>
                                <asp:ListItem>产品开发</asp:ListItem>
                                <asp:ListItem>订单维护</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr hiddenexpress="PCB_Applicant_Fen.KuoDian!='否' ||  PCB_Applicant_Fen.PCB_Design!='是'">
                        <td height="30">
                            <p align="right">
                                <aspxform:XLabel id="XLabel13" runat="server" text="打样原因："></aspxform:XLabel>
                            </p>
                        </td>
                        <td colspan="7">
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="PCB_Applicant_Fen.DrawDReason" Width="150px">
                                <asp:ListItem>性能验证</asp:ListItem>
                                <asp:ListItem>工艺改善</asp:ListItem>
                                <asp:ListItem>性能优化</asp:ListItem>
                                <asp:ListItem>降低成本</asp:ListItem>
                                <asp:ListItem>OEM</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XDropDownList>
                            &nbsp;
                            <aspxform:XLabel id="XLabel44" runat="server" text="其它：" HiddenExpress="PCB_Applicant_Fen.DrawDReason != '其它'"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox43" runat="server" XDataBind="PCB_Applicant_Fen.OtherDReason" Width="250px" CssClass="BOXCSS" HiddenExpress="PCB_Applicant_Fen.DrawDReason != '其它'"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="PCB_Applicant_Fen.KuoDian!='否' ||   PCB_Applicant_Fen.PCB_Design!='是'">
                        <td height="31">
                            <p align="right">
                                <aspxform:XLabel id="XLabel12" runat="server" text="原理图提交时间：" Width="60px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="PCB_Applicant_Fen.ChartDate" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                        </td>
                        <td>
                            <p align="center">
                            </p>
                        </td>
                        <td colspan="5">
                        </td>
                    </tr>
                    <tr hiddenexpress="PCB_Applicant_Fen.KuoDian!='否' ||   PCB_Applicant_Fen.PCB_Design!='是' || PCB_Applicant_Fen.BluePrint!='是'">
                        <td height="30">
                            <p align="right">
                                <aspxform:XLabel id="XLabel15" runat="server" text="结构设计师："></aspxform:XLabel>
                            </p>
                        </td>
                        <td colspan="7">
                            <aspxform:XTextBox id="XTextBox41" runat="server" XDataBind="PCB_Applicant_Fen.JDesignerName" width="125px" CssClass="BOXCSS" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="21px" HiddenExpress='Global.StepName!="开始"' PrintOut="False" DataMap="Account->PCB_Applicant_Fen.JDesignerID;DisplayName->PCB_Applicant_Fen.JDesignerName"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox42" runat="server" XDataBind="PCB_Applicant_Fen.JDesignerID" Width="50px" HiddenInput="True" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="PCB_Applicant_Fen.KuoDian!='否' || PCB_Applicant_Fen.BluePrint!='是'">
                        <td height="37" colspan="8">
                            <table border="0" cellspacing="0" cellpadding="0" width="780" height="18">
                                <tbody>
                                    <tr>
                                        <td width="170">
                                            <aspxform:XLabel id="XLabel48" runat="server" text="提供结构定位和丝印图(附件)：" Width="168px"></aspxform:XLabel>
                                        </td>
                                        <td width="597">
                                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="PCB_Applicant_Fen.ChartFile" StorePathExpress="PCB" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr hiddenexpress="PCB_Applicant_Fen.KuoDian!='否' ||  PCB_Applicant_Fen.PCB_Design!='否'">
                        <td height="31">
                            <aspxform:XLabel id="XLabel16" runat="server" text="参考PCB板号："></aspxform:XLabel>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="PCB_Applicant_Fen.CheckPCB" Width="99%" CssClass="BOXCSS" NormalCssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p align="center">
                                PCB层数
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XDropDownList id="XDropDownList9" runat="server" XDataBind="PCB_Applicant_Fen.PCBLayers" Width="80px" onchange="javascript:XFormOnChange(this);" PromptText="请选择" XDataSource="XDataSource">
                                <asp:ListItem>单层</asp:ListItem>
                                <asp:ListItem>双层</asp:ListItem>
                                <asp:ListItem>4层</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr hiddenexpress="PCB_Applicant_Fen.KuoDian!='否' ||  PCB_Applicant_Fen.PCB_Design!='否'">
                        <td height="29">
                            <aspxform:XLabel id="XLabel24" runat="server" text="更改内容描述："></aspxform:XLabel>
                        </td>
                        <td colspan="7">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="PCB_Applicant_Fen.ChangeNote" Width="98%" CssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="NoPadding" height="32" colspan="8" hiddenexpress="PCB_Applicant_Fen.KuoDian=='否' &amp;&amp; Global.StepName=='开始'">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="164">
                                            <aspxform:XLabel id="XLabel26" runat="server" text="期望发出PCB生产资料时间："></aspxform:XLabel>
                                        </td>
                                        <td width="630">
                                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="PCB_Applicant_Fen.SendDate" Width="201px" onchange="javascript:XFormOnChange(this);" CssClass="BOXCSS" ReadOnly="True" XSubType="date" Height="24px" Type="TimeMinutes30" XType="datetime"></aspxform:XDateTimePicker>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="NoPadding" height="30" colspan="8">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="116">
                                            <aspxform:XLabel id="XLabel46" runat="server" text="选择layout工程师："></aspxform:XLabel>
                                        </td>
                                        <td width="102">
                                            <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="PCB_Applicant_Fen.LDesignerName" width="100px" CssClass="BOXCSS" ReadOnly="True"></aspxform:XTextBox>
                                        </td>
                                        <td width="23">
                                            <aspxform:XSelectUserButton id="XSelectUserButton3" runat="server" Width="21px" HiddenExpress='Global.StepName!="EDA助理1" &amp;&amp; Global.StepName!="SQE"' PrintOut="False" DataMap="Account->PCB_Applicant_Fen.LDesignerID;DisplayName->PCB_Applicant_Fen.LDesignerName"></aspxform:XSelectUserButton>
                                        </td>
                                        <td width="55">
                                            <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="PCB_Applicant_Fen.LDesignerID" Width="50px" HiddenInput="True" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                                        </td>
                                        <td width="492">
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XTextBox44" ErrorMessage="请选择Layout工程师！" Display="None" DisableExpress="Global.StepName!='EDA助理1'">layout工程师</aspxform:XRequiredFieldValidator>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="开始" || Global.StepName =="结构人员" || Global.StepName =="EDA经理" || Global.StepName =="助理人员" || Global.StepName =="SQE2" || Global.StepName =="采购代表2" ||  Global.StepName =="硬件部总监" || Global.StepName =="基础技术组经理"'>
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="2">
                            <aspxform:XLabel id="XLabel38" runat="server" text="PCB layout完成情况" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2" width="30">
                        </td>
                        <td height="21" width="763">
                            <aspxform:XLabel id="XLabel34" runat="server" text="是否完成layout："></aspxform:XLabel>
                            <aspxform:XRadioButtonList id="XRadioButtonList13" runat="server" XDataBind="PCB_Applicant_Fen.FinishLayout" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td height="22">
                            <aspxform:XLabel id="XLabel36" runat="server" text="是否个人调整丝印图："></aspxform:XLabel>
                            <aspxform:XRadioButtonList id="XRadioButtonList14" runat="server" XDataBind="PCB_Applicant_Fen.SiYinAdjust" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="6">
                            <aspxform:XLabel id="XLabel52" runat="server" text="PCB 工艺要求" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="14" width="30">
                            <p align="right">
                            </p>
                            <p align="right">
                            </p>
                            <p align="right">
                            </p>
                            <p align="right">
                            </p>
                            <p align="right">
                            </p>
                            <p align="right">
                            </p>
                            <p align="right">
                            </p>
                            <p align="right">
                            </p>
                            <p align="right">
                            </p>
                            <p align="right">
                            </p>
                            <p align="right">
                            </p>
                        </td>
                        <td height="25" width="97">
                            交货方式：</td>
                        <td width="159">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="PCB_Applicant_Fen.DeliveryType" width="61px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                            PCS/拼板</td>
                        <td width="66">
                            <p align="right">
                                交货日期：
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XDateTimePicker id="XDateTimePicker6" runat="server" XDataBind="PCB_Applicant_Fen.G_DeliveryDate" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            层&nbsp; 数：</td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList10" runat="server" XDataBind="PCB_Applicant_Fen.G_LayersNB" Width="82px" onchange="javascript:XFormOnChange(this);" XDataSource="XDataSource" Height="22px">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>单面板</asp:ListItem>
                                <asp:ListItem>双面板</asp:ListItem>
                                <asp:ListItem>四层板</asp:ListItem>
                                <asp:ListItem>六层板</asp:ListItem>
                                <asp:ListItem>八层板</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td>
                            <p align="right">
                                板&nbsp; 厚：
                            </p>
                        </td>
                        <td width="109">
                            <aspxform:XDropDownList id="XDropDownList11" runat="server" XDataBind="PCB_Applicant_Fen.G_Thickness">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>0.6mm</asp:ListItem>
                                <asp:ListItem>0.8mm</asp:ListItem>
                                <asp:ListItem>1.0mm</asp:ListItem>
                                <asp:ListItem>1.2mm</asp:ListItem>
                                <asp:ListItem>1.6mm</asp:ListItem>
                                <asp:ListItem>2.0mm</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td width="320">
                            其&nbsp; 他:<aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="PCB_Applicant_Fen.G_LayersOther" Width="187px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="NoPadding" height="28" colspan="5">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="50">
                                            最小线宽</td>
                                        <td width="63">
                                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="PCB_Applicant_Fen.G_LineWidth" width="61px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                        </td>
                                        <td width="88">
                                            &nbsp;MM、最小线距</td>
                                        <td width="63">
                                            <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="PCB_Applicant_Fen.G_LineSpacing" width="61px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                        </td>
                                        <td width="88">
                                            &nbsp;MM、最小孔径</td>
                                        <td width="63">
                                            <aspxform:XTextBox id="XTextBox56" runat="server" XDataBind="PCB_Applicant_Fen.G_PoreSize" width="61px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                        </td>
                                        <td width="336">
                                            MM</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            测&nbsp; 试：</td>
                        <td colspan="4">
                            <aspxform:XCheckBoxList id="XCheckBoxList1" runat="server" XDataBind="PCB_Applicant_Fen.G_TestItem" RepeatDirection="Horizontal">
                                <asp:ListItem>成品检测报告</asp:ListItem>
                                <asp:ListItem>阻抗检测报告</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            材&nbsp; 料：</td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList12" runat="server" XDataBind="PCB_Applicant_Fen.G_Material" Width="80px">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>FR4</asp:ListItem>
                                <asp:ListItem>CEM-1</asp:ListItem>
                                <asp:ListItem>94V0</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td>
                            <p align="right">
                                其他材料：
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XTextBox id="XTextBox53" runat="server" XDataBind="PCB_Applicant_Fen.G_MaterialOther" Width="338px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            表面涂层：</td>
                        <td colspan="4">
                            表面工艺:<aspxform:XDropDownList id="XDropDownList13" runat="server" XDataBind="PCB_Applicant_Fen.G_Coat">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>松香</asp:ListItem>
                                <asp:ListItem>OSP</asp:ListItem>
                                <asp:ListItem>有铅喷锡</asp:ListItem>
                                <asp:ListItem>无铅喷锡</asp:ListItem>
                                <asp:ListItem>渡金</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            是否加MARK点：</td>
                        <td colspan="4">
                            <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="PCB_Applicant_Fen.G_MARK" Width="136px" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            过孔阻焊、塞油：</td>
                        <td colspan="4">
                            <aspxform:XCheckBoxList id="XCheckBoxList2" runat="server" XDataBind="PCB_Applicant_Fen.G_ViaHole" Width="135px" RepeatDirection="Horizontal">
                                <asp:ListItem>阻焊</asp:ListItem>
                                <asp:ListItem>塞油</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            环保要求：</td>
                        <td colspan="4">
                            <aspxform:XRadioButtonList id="XRadioButtonList21" runat="server" XDataBind="PCB_Applicant_Fen.G_HuanBao" Width="150px" RepeatDirection="Horizontal">
                                <asp:ListItem>ROHS</asp:ListItem>
                                <asp:ListItem>非ROHS</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" colspan="5">
                            标记要求：加供应商标记</td>
                    </tr>
                    <tr>
                        <td height="25" colspan="5">
                            尺寸要求：外形尺寸公差：+/-0.13mm;&nbsp; 孔径公差：+/- 0.075mm</td>
                    </tr>
                    <tr>
                        <td height="25" colspan="5">
                            安规要求：满足UL-94V0要求</td>
                    </tr>
                    <tr>
                        <td height="45" colspan="5">
                            <p>
                                叠层要求：
                            </p>
                            <p>
                                <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="PCB_Applicant_Fen.G_DieCeng" Width="99%" CssClass="BOXCSS" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td height="45" colspan="5">
                            <p>
                                其他特殊说明：比如，阻抗、参考层等
                            </p>
                            <p>
                                <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="PCB_Applicant_Fen.G_Other" Width="99%" CssClass="BOXCSS" Height="20px" TextMode="MultiLine"></aspxform:XTextBox>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="4">
                            <aspxform:XLabel id="XLabel33" runat="server" text="申请人确认" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td height="23" width="30">
                        </td>
                        <td width="108">
                            1、确认PCB文件：</td>
                        <td width="124">
                            <aspxform:XRadioButtonList id="XRadioButtonList22" runat="server" XDataBind="PCB_Applicant_Fen.AcceptFile" Width="120px" RepeatDirection="Horizontal">
                                <asp:ListItem>同意</asp:ListItem>
                                <asp:ListItem>不同意</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td class="NoPadding" width="528">
                            &nbsp;
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="53">
                                            &nbsp;，意见：</td>
                                        <td width="471">
                                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="PCB_Applicant_Fen.AcceptFileNote" width="448px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="21">
                        </td>
                        <td>
                            2、</td>
                        <td colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList23" runat="server" XDataBind="PCB_Applicant_Fen.FastDrowDesign" Width="210px" RepeatDirection="Horizontal">
                                <asp:ListItem Value="快速打样">快速打样(付费打样)</asp:ListItem>
                                <asp:ListItem>加急打样</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="开始" || Global.StepName =="结构人员" || Global.StepName =="EDA经理" || Global.StepName =="Layout工程师" || Global.StepName =="助理人员" || Global.StepName =="硬件设计师" || Global.StepName =="SQE" || Global.StepName =="采购代表" || Global.StepName =="SQE2" || Global.StepName =="采购代表2" || Global.StepName =="硬件部总监" || Global.StepName =="基础技术组经理"'>
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="2">
                            <aspxform:XLabel id="XLabel40" runat="server" text="生 产 工 艺" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="3" width="30">
                        </td>
                        <td height="21" width="766">
                            1、是否已制作工艺指导说明：<aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="PCB_Applicant_Fen.MakeExplain" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="NoPadding" height="23">
                            &nbsp;
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="50%">
                                            2、工艺建议：</td>
                                        <td width="50%">
                                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="PCB_Applicant_Fen.DesignNote" width="665px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="15">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYHEAD" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="20" width="673">
                            <aspxform:XLabel id="XLabel41" runat="server" text="打样厂家信息" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" ControlToValidate="XTextBox9" ErrorMessage="请填写快递单号！" Display="None" DisableExpress="Global.StepName!='PCB厂家(快递)'">快递单号</aspxform:XRequiredFieldValidator>
                        </td>
                        <td width="121">
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td rowspan="4" width="30">
                            <p align="right">
                            </p>
                        </td>
                        <td height="25" width="113">
                            <p align="left">
                                &nbsp;确 认 厂 家：
                            </p>
                        </td>
                        <td width="250">
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="PCB_Applicant_Fen_Sup.SupName" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="PCB_Applicant_Fen_Sup.SupHRID" Width="50px" HiddenInput="True" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td width="124">
                            <p align="right">
                                供应商类型：
                            </p>
                        </td>
                        <td width="267">
                            <aspxform:XDropDownList id="XDropDownList7" runat="server" XDataBind="PCB_Applicant_Fen_Sup.SupType" Width="150px" PromptText="请选择">
                                <asp:ListItem>现有合格供应商</asp:ListItem>
                                <asp:ListItem>新供应商</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td height="31">
                            <p align="left">
                                &nbsp;厂家技术工艺能力：
                            </p>
                        </td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="PCB_Applicant_Fen_Sup.SupAbility" Width="150px" PromptText="请选择">
                                <asp:ListItem>强</asp:ListItem>
                                <asp:ListItem>较强</asp:ListItem>
                                <asp:ListItem>一般</asp:ListItem>
                                <asp:ListItem>较差</asp:ListItem>
                                <asp:ListItem>差</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td>
                            <p align="right">
                                最近3月份质量状况：
                            </p>
                        </td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList6" runat="server" XDataBind="PCB_Applicant_Fen_Sup.SupStatus" Width="150px" PromptText="请选择">
                                <asp:ListItem>良好</asp:ListItem>
                                <asp:ListItem>较好</asp:ListItem>
                                <asp:ListItem>一般</asp:ListItem>
                                <asp:ListItem>较差</asp:ListItem>
                                <asp:ListItem>差</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td height="23">
                            <p align="left">
                                &nbsp;期望样板收到时间：
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" XDataBind="PCB_Applicant_Fen_Sup.ReceiveDate" Width="200px" CssClass="BOXCSS" Type="TimeMinutes30"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <fieldset style="WIDTH: 700px" hiddenexpress='Global.StepName == "PCB厂家" || Global.StepName == "PCB厂家(快递)"'>
                                <legend><strong>商务信息：</strong>
                                </legend>
                                <table border="0" cellspacing="0" cellpadding="0" width="650">
                                    <tbody>
                                        <tr>
                                            <td width="66">
                                                采购周期：</td>
                                            <td width="262">
                                                <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="PCB_Applicant_Fen_Sup.BuyCycle" width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                                                天</td>
                                            <td width="63">
                                                服&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：</td>
                                            <td width="255">
                                                <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="PCB_Applicant_Fen_Sup.BuyService" width="90%" CssClass="BOXCSS"></aspxform:XTextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="21">
                                                价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 格：</td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="PCB_Applicant_Fen_Sup.BuyPrice" width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                                                元</td>
                                            <td>
                                                月度产能：</td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="PCB_Applicant_Fen_Sup.MonthCapacity" width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                                                PCS</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                账期评估：</td>
                                            <td>
                                                <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="PCB_Applicant_Fen_Sup.EstimateZQ" width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                                                天</td>
                                            <td>
                                                商务评估：</td>
                                            <td>
                                                <aspxform:XDropDownList id="XDropDownList8" runat="server" XDataBind="PCB_Applicant_Fen_Sup.EstimateSW" PromptText="请选择">
                                                    <asp:ListItem>商务合格</asp:ListItem>
                                                    <asp:ListItem>商务不合格</asp:ListItem>
                                                </aspxform:XDropDownList>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </fieldset>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="14" colspan="2">
                            <aspxform:XLabel id="XLabel51" runat="server" text="PCB生产资料" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td height="30" width="97">
                            上传附件：</td>
                        <td width="698">
                            <aspxform:XMSNAttachments id="XMSNAttachments4" runat="server" XDataBind="PCB_Applicant_Fen.PCB_ProductFile" StorePathExpress="1001" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td rowspan="3" width="30">
                        </td>
                        <td height="17" width="763">
                            <strong>PCB厂家确认资料</strong></td>
                    </tr>
                    <tr>
                        <td class="NoPadding" height="30">
                            &nbsp;
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="166">
                                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="PCB_Applicant_Fen_Sup.isVerifySup" Text="资料已确认，已开始打样；"></aspxform:XCheckBox>
                                        </td>
                                        <td width="88">
                                            样品完成时间：</td>
                                        <td width="504">
                                            <aspxform:XDateTimePicker id="XDateTimePicker5" runat="server" XDataBind="PCB_Applicant_Fen_Sup.FilishSupDate" Width="120px" CssClass="BOXCSS" Type="TimeMinutes30"></aspxform:XDateTimePicker>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="NoPadding">
                            &nbsp;
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="66">
                                            快递单号：</td>
                                        <td width="696">
                                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="PCB_Applicant_Fen_Sup.PostNO" Width="180px" CssClass="BOXCSS"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
            <!---->
            <div hiddenexpress='Global.StepName == "PCB厂家" || Global.StepName == "PCB厂家(快递)"'>
                <table class="MYHEAD" border="0" cellspacing="0" cellpadding="0" width="800">
                    <tbody>
                        <tr>
                            <td style="BORDER-RIGHT: medium none" class="MYHEAD" height="20" width="673">
                                <aspxform:XLabel id="XLabel2" runat="server" text="收集样板" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ControlToValidate="XRadioButtonList6" ErrorMessage="请选择是否收到样品！" Display="None" DisableExpress='Global.StepName!="EDA助理1"'>是否收到样品</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XRadioButtonList10" ErrorMessage="请选择是否需要设计验证！" Display="None" DisableExpress='Global.StepName!="EDA助理1"'>是否需要设计验证</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XRadioButtonList16" ErrorMessage="请选择是否需要封样！" Display="None" DisableExpress='Global.StepName != "硬件设计师" &amp;&amp; Global.StepName != "SQE"'>是否需要封样</aspxform:XRequiredFieldValidator>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XRadioButtonList15" ErrorMessage="请选择是否第一次封样!" Display="None" DisableExpress='Global.StepName != "硬件设计师" '>是否第一次封样</aspxform:XRequiredFieldValidator>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800">
                    <tbody>
                        <tr>
                            <td height="22" width="30">
                            </td>
                            <td width="110">
                                <p align="left">
                                    <aspxform:XLabel id="XLabel3" runat="server" text="是否收到样品："></aspxform:XLabel>
                                </p>
                            </td>
                            <td class="NoPadding" width="653">
                                <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                    <tbody>
                                        <tr>
                                            <td width="154">
                                                <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="PCB_Applicant_Fen_Sup.isGetSample" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                                    <asp:ListItem>收到样品</asp:ListItem>
                                                    <asp:ListItem>未收到样品</asp:ListItem>
                                                </aspxform:XRadioButtonList>
                                            </td>
                                            <td width="38">
                                                <aspxform:XLabel id="XLabel18" runat="server" text="数量："></aspxform:XLabel>
                                            </td>
                                            <td width="66">
                                                <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="PCB_Applicant_Fen_Sup.SampleCount1" Width="54px" CssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                                *</td>
                                            <td width="57">
                                                <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="PCB_Applicant_Fen_Sup.SampleCount2" Width="54px" CssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                            </td>
                                            <td width="321">
                                                PCS</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <p align="left">
                                    <aspxform:XLabel id="XLabel17" runat="server" text="是否需要设计验证："></aspxform:XLabel>
                                </p>
                            </td>
                            <td>
                                <aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" XDataBind="PCB_Applicant_Fen_Sup.isVerifyDesign" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                    <asp:ListItem>需要</asp:ListItem>
                                    <asp:ListItem>不需要</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <aspxform:XLabel id="XLabel22" runat="server" text="是否需要封样：" Width="115px"></aspxform:XLabel>
                            </td>
                            <td>
                                <aspxform:XRadioButtonList id="XRadioButtonList16" runat="server" XDataBind="PCB_Applicant_Fen_Sup.isSealedSample" RepeatLayout="Flow" RepeatDirection="Horizontal" Express="PCB_Applicant_Fen_Sup.isSealedSample">
                                    <asp:ListItem>需要</asp:ListItem>
                                    <asp:ListItem>不需要</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName=="EDA助理1" || Global.StepName=="Layout 工程师" || Global.StepName=="SQE1" || Global.StepName=="SQE"'>
                    <tbody>
                        <tr>
                            <td height="16" colspan="3">
                                <aspxform:XLabel id="XLabel25" runat="server" text="【硬件设计师&nbsp;&nbsp;&nbsp;&nbsp;】" Font-Bold="True"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" width="30">
                            </td>
                            <td colspan="2">
                                <aspxform:XLabel id="XLabel20" runat="server" text="1、PCB板电气性能、结构装配符合是否要求："></aspxform:XLabel>
                                <aspxform:XRadioButtonList id="XRadioButtonList12" runat="server" XDataBind="PCB_Applicant_Fen_Sup.isPCB_Good" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                    <asp:ListItem>符合</asp:ListItem>
                                    <asp:ListItem>不符合</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td height="20">
                            </td>
                            <td class="NoPadding" colspan="2">
                                &nbsp;
                                <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                    <tbody>
                                        <tr>
                                            <td width="127">
                                                <aspxform:XLabel id="XLabel21" runat="server" text="2、是否第一次封样："></aspxform:XLabel>
                                            </td>
                                            <td width="101">
                                                <aspxform:XRadioButtonList id="XRadioButtonList15" runat="server" XDataBind="PCB_Applicant_Fen_Sup.isFirst" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                                    <asp:ListItem Value="是">是&#160;&#160;&#160;</asp:ListItem>
                                                    <asp:ListItem Value="否">否&#160;&#160;&#160;&#160;&#160;</asp:ListItem>
                                                </aspxform:XRadioButtonList>
                                            </td>
                                            <td width="74">
                                                参考版本号：</td>
                                            <td width="456">
                                                <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="PCB_Applicant_Fen_Sup.FirstNO" width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td height="25">
                            </td>
                            <td width="116">
                                <aspxform:XLabel id="XLabel23" runat="server" text="期望上传EDE时间："></aspxform:XLabel>
                            </td>
                            <td class="NoPadding" width="648">
                                <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="PCB_Applicant_Fen_Sup.UpEDEDate" Width="200px" BorderWidth="1" BorderColor="#DCDCDC" Type="TimeMinutes30"></aspxform:XDateTimePicker>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName=="EDA助理1" || Global.StepName=="Layout 工程师" || Global.StepName=="硬件设计师" || Global.StepName=="工程部"'>
                    <tbody>
                        <tr>
                            <td height="16" colspan="3">
                                <aspxform:XLabel id="XLabel27" runat="server" text="【SQE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;】" Font-Bold="True"></aspxform:XLabel>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ControlToValidate="XRadioButtonList11" ErrorMessage="请选择样板无异常！" Display="None" DisableExpress='Global.StepName!="Layout 工程师"'>样板无异常</aspxform:XRequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" width="29">
                            </td>
                            <td width="117">
                                <aspxform:XLabel id="XLabel29" runat="server" text="样板无异常："></aspxform:XLabel>
                            </td>
                            <td width="646">
                                <aspxform:XRadioButtonList id="XRadioButtonList17" runat="server" XDataBind="PCB_Applicant_Fen_Sup.isSampleError_S" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                    <asp:ListItem>无异常</asp:ListItem>
                                    <asp:ListItem>异常</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td height="20">
                            </td>
                            <td>
                                <aspxform:XLabel id="XLabel42" runat="server" text="是否同意封样："></aspxform:XLabel>
                            </td>
                            <td>
                                <aspxform:XRadioButtonList id="XRadioButtonList20" runat="server" XDataBind="PCB_Applicant_Fen_Sup.isVerifySampleS" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                    <asp:ListItem>同意</asp:ListItem>
                                    <asp:ListItem>不同意</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                质量状态：</td>
                            <td>
                                <aspxform:XDropDownList id="XDropDownList14" runat="server" XDataBind="PCB_Applicant_Fen_Sup.QualityStatus" Width="100px" onchange="javascript:XFormOnChange(this);" PromptText="请选择" XDataSource="XDataSource">
                                    <asp:ListItem>试用</asp:ListItem>
                                    <asp:ListItem>采购限选</asp:ListItem>
                                    <asp:ListItem>设计限选</asp:ListItem>
                                </aspxform:XDropDownList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" height="42" hiddenexpress='Global.StepName=="EDA助理1"  || Global.StepName=="硬件设计师" || Global.StepName=="SQE"'>
                    <tbody>
                        <tr>
                            <td height="15" colspan="2">
                                <aspxform:XLabel id="XLabel32" runat="server" text="【layout设计师】" Font-Bold="True"></aspxform:XLabel>
                                <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ControlToValidate="XRadioButtonList11" ErrorMessage="请选择样板无异常！" Display="None" DisableExpress='Global.StepName!="Layout 工程师"'>样板无异常</aspxform:XRequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <p align="left">
                                    <aspxform:XLabel id="XLabel19" runat="server" text="样板无异常："></aspxform:XLabel>
                                    <aspxform:XRadioButtonList id="XRadioButtonList11" runat="server" XDataBind="PCB_Applicant_Fen_Sup.isSampleError_L" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                        <asp:ListItem>无异常</asp:ListItem>
                                        <asp:ListItem>异常</asp:ListItem>
                                    </aspxform:XRadioButtonList>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td height="14">
                            </td>
                            <td>
                                <aspxform:XLabel id="XLabel37" runat="server" text="是否同意封样："></aspxform:XLabel>
                                <aspxform:XRadioButtonList id="XRadioButtonList19" runat="server" XDataBind="PCB_Applicant_Fen_Sup.isVerifySampleL" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                    <asp:ListItem>同意</asp:ListItem>
                                    <asp:ListItem>不同意</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td width="30">
                            </td>
                            <td class="NoPadding" width="764">
                                <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                    <tbody>
                                        <tr>
                                            <td width="87">
                                                <aspxform:XLabel id="XLabel31" runat="server" text="PCB封样权值："></aspxform:XLabel>
                                            </td>
                                            <td width="673">
                                                <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="PCB_Applicant_Fen_Sup.SampleWeight" width="125px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName=="EDA助理1" || Global.StepName=="Layout 工程师" || Global.StepName=="硬件设计师" || Global.StepName=="SQE1" || Global.StepName=="EDA助理2" || Global.StepName=="SQE"'>
                    <tbody>
                        <tr>
                            <td height="16" colspan="2">
                                <aspxform:XLabel id="XLabel28" runat="server" text="【工程部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;】" Font-Bold="True"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" width="30">
                            </td>
                            <td width="762">
                                &nbsp;<aspxform:XLabel id="XLabel30" runat="server" text="套膜确认："></aspxform:XLabel>
                                <aspxform:XRadioButtonList id="XRadioButtonList18" runat="server" XDataBind="PCB_Applicant_Fen_Sup.VerfyTaoMo" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                    <asp:ListItem>符合</asp:ListItem>
                                    <asp:ListItem>不符合</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName=="EDA助理1" || Global.StepName=="Layout 工程师" || Global.StepName=="硬件设计师" || Global.StepName=="工程部" || Global.StepName=="SQE1" || Global.StepName=="SQE"'>
                    <tbody>
                        <tr>
                            <td height="16" colspan="2">
                                <aspxform:XLabel id="XLabel35" runat="server" text="【EDA助理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;】" Font-Bold="True"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td width="30">
                            </td>
                            <td class="NoPadding" width="764">
                                <p>
                                </p>
                                <p>
                                    &nbsp;
                                    <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                        <tbody>
                                            <tr>
                                                <td width="176">
                                                    <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="PCB_Applicant_Fen_Sup.isEnter" Text="已录入SAP，专用编号："></aspxform:XCheckBox>
                                                </td>
                                                <td width="584">
                                                    <p>
                                                        <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="PCB_Applicant_Fen_Sup.SpecialNO" width="160px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Max="0" Min="0" HiddenInput="False"></aspxform:XTextBox>
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    物料描述:</td>
                                                <td>
                                                    <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="PCB_Applicant_Fen.MaterielNote" Width="500px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Max="0" Min="0" HiddenInput="False" Rows="1"></aspxform:XTextBox>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td height="20">
                            </td>
                            <td>
                                上传PCB物料规格书：<aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="PCB_Applicant_Fen.MaterielFile"></aspxform:XMSNAttachments>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName=="EDA助理1" || Global.StepName=="Layout 工程师" || Global.StepName=="硬件设计师" || Global.StepName=="工程部" || Global.StepName=="SQE1" || Global.StepName=="SQE"'>
                    <tbody>
                        <tr>
                            <td height="16" colspan="2">
                                <aspxform:XLabel id="XLabel39" runat="server" text="【EDE专员&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;】" Font-Bold="True"></aspxform:XLabel>
                            </td>
                        </tr>
                        <tr>
                            <td height="20" width="30">
                            </td>
                            <td width="764">
                                上传EDE附件：<aspxform:XMSNAttachments id="XMSNAttachments3" runat="server" XDataBind="PCB_Applicant_Fen.EDEFile"></aspxform:XMSNAttachments>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <table class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="800">
                            审批意见</td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" Width="100%" BorderWidth="1" BorderColor="#DCDCDC" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="100%" CssClass="AA" BorderWidth="0px" BorderColor="Transparent"></aspxform:XSignTrace>
                        </td>
                    </tr>
                </tbody>
            </table>
            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="800">
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
        <script language="javascript" defer>
                var u=document.getElementsByTagName("input");
                for(var i=0;i<u.length;i++)
                {
                    if(u[i].type=="text")
                    {
                        u[i].style.borderTop = "0 solid #ffb3a7";
                        u[i].style.borderLeft = "0 solid #ffb3a7";
                        u[i].style.borderRight = "0 solid #ffb3a7";
                    }
                }
     </script>
    </form>
</body>
</html>
