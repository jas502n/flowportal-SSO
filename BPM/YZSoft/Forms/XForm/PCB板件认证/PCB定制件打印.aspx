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
<body>
    <form runat="server">
        <!-- Insert content here -->
        <div align="center">
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
                            <asp:Label id="Label1" runat="server" text="PCB板定制件申请" font-bold="True" font-names="Tahoma" font-size="Medium"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td width="76">
                            <p align="right">
                                <aspxform:XLabel id="XLabel43" runat="server" text="申  请  人："></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="144">
                            <aspxform:XTextBox id="XTextBox13" runat="server" DisableBehavior="ReadOnly" XDataBind="PCB_Applicant.AppHRName" Width="90px" BorderWidth="1" ReadOnly="True" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox38" runat="server" XDataBind="PCB_Applicant.AppHRID" Width="30px" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True"></aspxform:XTextBox>
                        </td>
                        <td width="79">
                            <p align="right">
                                <aspxform:XLabel id="XLabel45" runat="server" text="申请日期：" Width="66px" Height="14px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="193">
                            <aspxform:XTextBox id="XTextBox39" runat="server" DisableBehavior="ReadOnly" XDataBind="PCB_Applicant.AppDate" BorderWidth="1" ReadOnly="True" BorderColor="#DCDCDC"></aspxform:XTextBox>
                        </td>
                        <td width="68">
                            <p align="right">
                                流水号： 
                            </p>
                        </td>
                        <td width="228">
                            <aspxform:XTextBox id="XTextBox46" runat="server" DisableBehavior="ReadOnly" XDataBind="PCB_Applicant.AppSN" BorderWidth="1" ReadOnly="True" BorderColor="#DCDCDC" HiddenInput="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="8">
                            <aspxform:XLabel id="XLabel4" runat="server" text="PCB申请" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td height="29" width="72">
                            <p align="right">
                                申请板类型： 
                            </p>
                        </td>
                        <td colspan="7">
                            <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="PCB_Applicant.BoardType" Width="189px" PromptText="请选择" XDataSource="XDataSource" onchange="javascript:XFormOnChange(this);">
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
                        <td width="197">
                            <p align="left">
                                <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="PCB_Applicant.ProName" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" width="150px" CssClass="BOXCSS" Font-Overline="False" Font-Underline="False"></aspxform:XTextBox>
                            </p>
                        </td>
                        <td width="65">
                            <p align="center">
                                <aspxform:XLabel id="XLabel7" runat="server" text="PCB编号："></aspxform:XLabel>
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="PCB_Applicant.PCB_NO" Max="0" Min="0" HiddenInput="False" Height="24px" width="130px" CssClass="BOXCSS" ValueToDisplayText Value></aspxform:XTextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 颜色:<aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="PCB_Applicant.PCB_Color" Width="65px" Height="23px" XDataSource CssClass="BOXCSS">
                                <asp:ListItem>绿色</asp:ListItem>
                                <asp:ListItem>蓝色</asp:ListItem>
                                <asp:ListItem>黑色</asp:ListItem>
                                <asp:ListItem>白色</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td width="71">
                            <p align="center">
                                <aspxform:XLabel id="XLabel9" runat="server" text="项目经理："></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="113">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="PCB_Applicant.AssistantName" ReadOnly="True" width="80px" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="PCB_Applicant.AssistantID" Width="20px" BorderWidth="1" BorderColor="#DCDCDC" HiddenInput="True"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                需求数量： 
                            </p>
                        </td>
                        <td colspan="3">
                            需求数量：<aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="PCB_Applicant.NeedCount1" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" width="55px" CssClass="BOXCSS" TextAlign="Right"></aspxform:XTextBox>
                            PCS ，<aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="PCB_Applicant.NeedCount2" Width="55px" ReadOnly="True" CssClass="BOXCSS" Express="if(PCB_Applicant.DeliveryType>0,PCB_Applicant.NeedCount1/PCB_Applicant.DeliveryType,'')"></aspxform:XTextBox>
                            拼板</td>
                        <td colspan="2">
                            <p align="right">
                                是否已建立VSS目录： 
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList15" runat="server" XDataBind="PCB_Applicant.isVSS" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="right">
                                参考版本号： 
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox50" runat="server" XDataBind="PCB_Applicant.VersionNO" Width="150px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p align="center">
                                SVN存放路径 
                            </p>
                        </td>
                        <td colspan="5">
                            <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="PCB_Applicant.VSS_Path" Width="423px" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="35">
                            <p align="right">
                                <aspxform:XLabel id="XLabel6" runat="server" text="是否扩点："></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <p align="left">
                                <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="PCB_Applicant.KuoDian" Width="80px" RepeatDirection="Horizontal">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem Selected="True">否</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                        </td>
                        <td>
                            <p align="center">
                                <aspxform:XLabel id="XLabel8" runat="server" text="是否需要PCB设计" Width="60px" HiddenExpress="PCB_Applicant.KuoDian!='否'"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="90">
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="PCB_Applicant.PCB_Design" Width="80px" RepeatDirection="Horizontal" HiddenExpress="PCB_Applicant.KuoDian!='否'">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td width="82">
                            <div align="center">
                                <aspxform:XLabel id="XLabel10" runat="server" text="是否全新LAYOUT" Width="75px" HiddenExpress="PCB_Applicant.KuoDian!='否' || PCB_Applicant.PCB_Design!='是'"></aspxform:XLabel>
                            </div>
                        </td>
                        <td width="85">
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="PCB_Applicant.NewLayout" Width="80px" RepeatDirection="Horizontal" HiddenExpress="PCB_Applicant.KuoDian!='否' ||   PCB_Applicant.PCB_Design!='是'">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td>
                            <div align="center">
                                <aspxform:XLabel id="XLabel11" runat="server" text="是否需要结构定位图纸" Width="65px" HiddenExpress="PCB_Applicant.KuoDian!='否' ||   PCB_Applicant.PCB_Design!='是'"></aspxform:XLabel>
                            </div>
                        </td>
                        <td>
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="PCB_Applicant.BluePrint" Width="80px" RepeatDirection="Horizontal" HiddenExpress="PCB_Applicant.KuoDian!='否' ||   PCB_Applicant.PCB_Design!='是'">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr hiddenexpress="PCB_Applicant.KuoDian!='否' ||  PCB_Applicant.PCB_Design!='是'">
                        <td height="30">
                            <p align="right">
                                <aspxform:XLabel id="XLabel14" runat="server" text="打样阶段："></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="PCB_Applicant.DrawDesign" Width="150px">
                                <asp:ListItem>平台开发</asp:ListItem>
                                <asp:ListItem>产品开发</asp:ListItem>
                                <asp:ListItem>订单维护</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td colspan="2">
                            <p align="right">
                                上传电源拓扑图： 
                            </p>
                        </td>
                        <td colspan="4">
                            <aspxform:XMSNAttachments id="XMSNAttachments4" runat="server" XDataBind="PCB_Applicant.PowerAtt" Width="99%"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr hiddenexpress="PCB_Applicant.KuoDian!='否' ||  PCB_Applicant.PCB_Design!='是'">
                        <td height="30">
                            <p align="right">
                                <aspxform:XLabel id="XLabel13" runat="server" text="打样原因："></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="PCB_Applicant.DrawDReason" Width="150px">
                                <asp:ListItem>性能验证</asp:ListItem>
                                <asp:ListItem>工艺改善</asp:ListItem>
                                <asp:ListItem>性能优化</asp:ListItem>
                                <asp:ListItem>降低成本</asp:ListItem>
                                <asp:ListItem>OEM</asp:ListItem>
                                <asp:ListItem>其它</asp:ListItem>
                            </aspxform:XDropDownList>
                            &nbsp; 
                            <aspxform:XTextBox id="XTextBox43" runat="server" XDataBind="PCB_Applicant.OtherDReason" Width="100px" CssClass="BOXCSS" HiddenExpress="PCB_Applicant.DrawDReason != '其它'"></aspxform:XTextBox>
                        </td>
                        <td colspan="2">
                            <p align="right">
                                上传LAYOUT要求： 
                            </p>
                        </td>
                        <td colspan="4">
                            <aspxform:XMSNAttachments id="XMSNAttachments5" runat="server" XDataBind="PCB_Applicant.LayoutRequireAtt" Width="99%"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr hiddenexpress="PCB_Applicant.KuoDian!='否' ||   PCB_Applicant.PCB_Design!='是'">
                        <td height="30">
                            <p align="right">
                                <aspxform:XLabel id="XLabel28" runat="server" text="原理图提交时间：" Width="60px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="PCB_Applicant.ChartDate" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                        </td>
                        <td>
                            <p align="center">
                                上传原理图 
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XMSNAttachments id="XMSNAttachments3" runat="server" XDataBind="PCB_Applicant.YuanliFile"></aspxform:XMSNAttachments>
                        </td>
                        <td>
                            上传项目备忘录</td>
                        <td colspan="2">
                            <aspxform:XMSNAttachments id="XMSNAttachments6" runat="server" XDataBind="PCB_Applicant.MemoAtt" Width="99%"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                    <tr hiddenexpress="PCB_Applicant.KuoDian!='否' ||   PCB_Applicant.PCB_Design!='是' || PCB_Applicant.BluePrint!='是'">
                        <td height="30">
                            <p align="right">
                                <aspxform:XLabel id="XLabel17" runat="server" text="结构设计师："></aspxform:XLabel>
                            </p>
                        </td>
                        <td colspan="7">
                            <aspxform:XTextBox id="XTextBox41" runat="server" XDataBind="PCB_Applicant.JDesignerName" ReadOnly="True" width="125px" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox42" runat="server" XDataBind="PCB_Applicant.JDesignerID" Width="50px" BorderWidth="1" BorderColor="#DCDCDC" HiddenInput="True"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr hiddenexpress="PCB_Applicant.KuoDian!='否' || PCB_Applicant.BluePrint!='是'">
                        <td height="37" colspan="8">
                            <table border="0" cellspacing="0" cellpadding="0" width="780" height="18">
                                <tbody>
                                    <tr>
                                        <td width="170">
                                            <aspxform:XLabel id="XLabel48" runat="server" text="提供结构定位和丝印图(附件)：" Width="168px"></aspxform:XLabel>
                                        </td>
                                        <td width="597">
                                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="PCB_Applicant.ChartFile" StorePathExpress="PCB" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr hiddenexpress="PCB_Applicant.KuoDian!='否' ||  PCB_Applicant.PCB_Design!='否'">
                        <td height="31">
                            <aspxform:XLabel id="XLabel15" runat="server" text="参考PCB板号："></aspxform:XLabel>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="PCB_Applicant.CheckPCB" Width="99%" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p align="center">
                                PCB层数 
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XDropDownList id="XDropDownList9" runat="server" XDataBind="PCB_Applicant.PCBLayers" Width="80px" PromptText="请选择" XDataSource="XDataSource" onchange="javascript:XFormOnChange(this);">
                                <asp:ListItem>单层</asp:ListItem>
                                <asp:ListItem>双层</asp:ListItem>
                                <asp:ListItem>4层</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr hiddenexpress="PCB_Applicant.KuoDian!='否' ||  PCB_Applicant.PCB_Design!='否'">
                        <td height="29">
                            <aspxform:XLabel id="XLabel16" runat="server" text="更改内容描述："></aspxform:XLabel>
                        </td>
                        <td colspan="7">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="PCB_Applicant.ChangeNote" Width="98%" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="32" colspan="8" hiddenexpress="PCB_Applicant.KuoDian=='否' &amp;&amp; Global.StepName=='开始'">
                            <aspxform:XLabel id="XLabel12" runat="server" text="期望发出PCB生产资料时间："></aspxform:XLabel>
                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="PCB_Applicant.SendDate" Width="200px" ReadOnly="True" onchange="javascript:XFormOnChange(this);" CssClass="BOXCSS" XSubType="date" XType="datetime" Type="TimeMinutes30"></aspxform:XDateTimePicker>
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="PCB_Applicant.ExpirationTime" Width="200px" CssClass="BOXCSS" Express="if(Global.StepName!='开始',PCB_Applicant.SendDate,PCB_Applicant.ExpirationTime)" HiddenExpress="1" Type="TimeMinutes30"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td height="30" colspan="8">
                            <aspxform:XLabel id="XLabel46" runat="server" text="选择layout工程师："></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="PCB_Applicant.LDesignerName" ReadOnly="True" width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="PCB_Applicant.LDesignerID" Width="50px" BorderWidth="1" BorderColor="#DCDCDC" HiddenInput="True"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="14">
                            <strong>申请说明</strong></td>
                    </tr>
                    <tr>
                        <td width="800">
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="PCB_Applicant.AppNote" Width="100%" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Height="80px" TextMode="MultiLine">LAYOT设计要求，说明如下：

特殊工艺要求，说明如下：</aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--PCB layout完成情况-->
        <div align="center">
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="2">
                            <aspxform:XLabel id="XLabel38" runat="server" text="PCB layout完成情况" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td height="26" width="30">
                        </td>
                        <td width="767">
                            <aspxform:XLabel id="XLabel34" runat="server" text="是否完成layout："></aspxform:XLabel>
                            <aspxform:XRadioButtonList id="XRadioButtonList13" runat="server" XDataBind="PCB_Applicant.FinishLayout" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                        </td>
                        <td>
                            <aspxform:XLabel id="XLabel36" runat="server" text="是否个人调整丝印图："></aspxform:XLabel>
                            <aspxform:XRadioButtonList id="XRadioButtonList14" runat="server" XDataBind="PCB_Applicant.SiYinAdjust" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
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
                            <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="PCB_Applicant.DeliveryType" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" width="61px" CssClass="BOXCSS"></aspxform:XTextBox>
                            PCS/拼板</td>
                        <td width="66">
                            <p align="right">
                                交货日期： 
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" runat="server" XDataBind="PCB_Applicant.G_DeliveryDate" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            层&nbsp; 数：</td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList10" runat="server" XDataBind="PCB_Applicant.G_LayersNB" Width="82px" Height="22px" XDataSource="XDataSource" onchange="javascript:XFormOnChange(this);">
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
                            <aspxform:XDropDownList id="XDropDownList11" runat="server" XDataBind="PCB_Applicant.G_Thickness">
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
                            其&nbsp; 他:<aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="PCB_Applicant.G_LayersOther" Width="187px" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28" colspan="5">
                            最小线宽<aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="PCB_Applicant.G_LineWidth" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" width="61px" CssClass="BOXCSS"></aspxform:XTextBox>
                            MM、最小线距<aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="PCB_Applicant.G_LineSpacing" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" width="61px" CssClass="BOXCSS"></aspxform:XTextBox>
                            MM、最小孔径<aspxform:XTextBox id="XTextBox56" runat="server" XDataBind="PCB_Applicant.G_PoreSize" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" width="61px" CssClass="BOXCSS"></aspxform:XTextBox>
                            MM</td>
                    </tr>
                    <tr>
                        <td height="28">
                            测&nbsp; 试：</td>
                        <td colspan="4">
                            <aspxform:XCheckBoxList id="XCheckBoxList1" runat="server" XDataBind="PCB_Applicant.G_TestItem" RepeatDirection="Horizontal">
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
                            <aspxform:XDropDownList id="XDropDownList12" runat="server" XDataBind="PCB_Applicant.G_Material" Width="80px">
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
                            <aspxform:XTextBox id="XTextBox53" runat="server" XDataBind="PCB_Applicant.G_MaterialOther" Width="338px" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            表面涂层：</td>
                        <td colspan="4">
                            表面工艺:<aspxform:XDropDownList id="XDropDownList13" runat="server" XDataBind="PCB_Applicant.G_Coat">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>松香</asp:ListItem>
                                <asp:ListItem>OSP</asp:ListItem>
                                <asp:ListItem>有铅喷锡</asp:ListItem>
                                <asp:ListItem>无铅喷锡</asp:ListItem>
                                <asp:ListItem>渡金</asp:ListItem>
                                <asp:ListItem>其他</asp:ListItem>
                            </aspxform:XDropDownList>
                            &nbsp; 
                            <aspxform:XLabel id="XLabel2" runat="server" text="防焊文字颜色:" ValueToDisplayText Value></aspxform:XLabel>
                            <aspxform:XDropDownList id="XDropDownList14" runat="server" XDataBind="PCB_Applicant.G_Color">
                                <asp:ListItem>绿油白字</asp:ListItem>
                                <asp:ListItem>蓝油白字</asp:ListItem>
                                <asp:ListItem>黑油白字</asp:ListItem>
                                <asp:ListItem>白油黑字</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            是否加MARK点：</td>
                        <td colspan="4">
                            <aspxform:XRadioButtonList id="XRadioButtonList10" runat="server" XDataBind="PCB_Applicant.G_MARK" Width="136px" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            过孔阻焊、塞油：</td>
                        <td colspan="4">
                            <aspxform:XCheckBoxList id="XCheckBoxList2" runat="server" XDataBind="PCB_Applicant.G_ViaHole" Width="135px" RepeatDirection="Horizontal">
                                <asp:ListItem>阻焊</asp:ListItem>
                                <asp:ListItem>塞油</asp:ListItem>
                            </aspxform:XCheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            环保要求：</td>
                        <td colspan="4">
                            <aspxform:XRadioButtonList id="XRadioButtonList12" runat="server" XDataBind="PCB_Applicant.G_HuanBao" Width="150px" RepeatDirection="Horizontal">
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
                                <aspxform:XTextBox id="XTextBox54" runat="server" XDataBind="PCB_Applicant.G_DieCeng" Width="99%" Height="20px" CssClass="BOXCSS" TextMode="MultiLine"></aspxform:XTextBox>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td height="45" colspan="5">
                            <p>
                                其他特殊说明：比如，阻抗、参考层等 
                            </p>
                            <p>
                                <aspxform:XTextBox id="XTextBox55" runat="server" XDataBind="PCB_Applicant.G_Other" Width="99%" Height="20px" CssClass="BOXCSS" TextMode="MultiLine"></aspxform:XTextBox>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--申请人确认-->
        <div align="center">
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="4">
                            <aspxform:XLabel id="XLabel39" runat="server" text="申请人确认" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td height="23" width="30">
                        </td>
                        <td width="108">
                            1、确认PCB文件：</td>
                        <td width="124">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="PCB_Applicant.AcceptFile" Width="120px" RepeatDirection="Horizontal">
                                <asp:ListItem>同意</asp:ListItem>
                                <asp:ListItem>不同意</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td width="528">
                            &nbsp;，意见：<aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="PCB_Applicant.AcceptFileNote" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" width="448px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="21">
                        </td>
                        <td>
                            2、</td>
                        <td colspan="2">
                            <aspxform:XRadioButtonList id="XRadioButtonList11" runat="server" XDataBind="PCB_Applicant.FastDrowDesign" Width="210px" RepeatDirection="Horizontal">
                                <asp:ListItem Value="快速打样">快速打样(付费打样)</asp:ListItem>
                                <asp:ListItem>加急打样</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--生 产 工 艺-->
        <div align="center">
            <table class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="2">
                            <aspxform:XLabel id="XLabel40" runat="server" text="生产工艺" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td height="21" width="28">
                        </td>
                        <td width="766">
                            1、是否已制作工艺指导说明：<aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="PCB_Applicant.MakeExplain" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td height="22">
                        </td>
                        <td>
                            2、工艺建议：<aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="PCB_Applicant.DesignNote" Max="0" Min="0" HiddenInput="False" NormalCssClass="BOXCSS" width="665px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td>
                            <p align="center">
                                <aspxform:XPrintButton id="XPrintButton1" runat="server" MarginBottom="0" MarginTop="45" MarginRight="0" MarginLeft="0"></aspxform:XPrintButton>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
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
