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
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ControlToValidate="XTextBox3" ErrorMessage="请选择研发助理！" Display="None">--研发助理--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ControlToValidate="XRadioButtonList2" ErrorMessage="请选择是否需要PCB设计！" Display="None" DisableExpress="PCB_Applicant.KuoDian=='是'">--是否需要PCB设计--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" ControlToValidate="XRadioButtonList3" ErrorMessage="请选择是否全新LAYOUT" Display="None" DisableExpress="PCB_Applicant.KuoDian=='是' || PCB_Applicant.PCB_Design!='是'">--是否全新LAYOUT--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" ControlToValidate="XRadioButtonList4" ErrorMessage="请选择是否需要结构定位图纸" Display="None" DisableExpress="PCB_Applicant.KuoDian=='是' || PCB_Applicant.PCB_Design!='是'">--是否需要结构定位图纸--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" ControlToValidate="XTextBox41" ErrorMessage="请选择结构设计师！" Display="None" DisableExpress="PCB_Applicant.KuoDian=='是' || PCB_Applicant.PCB_Design!='是' || PCB_Applicant.BluePrint != '是'">--结构设计师--</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ControlToValidate="XTextBox44" ErrorMessage="请选择layout工程师" Display="None" DisableExpress="Global.StepName!='EDA经理' &amp;&amp; Global.StepName!='EDA助理'">--选择layout工程师--</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td height="29" width="73">
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
                        <td width="170">
                            <p align="left">
                                <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="PCB_Applicant.ProName" width="100px" CssClass="BOXCSS" Font-Overline="False" Font-Underline="False"></aspxform:XTextBox>
                            </p>
                        </td>
                        <td width="65">
                            <p align="center">
                                <aspxform:XLabel id="XLabel7" runat="server" text="PCB编号："></aspxform:XLabel>
                            </p>
                        </td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="PCB_Applicant.PCB_NO" Max="0" Min="0" HiddenInput="False" Height="23px" width="152px" CssClass="BOXCSS" Value ValueToDisplayText></aspxform:XTextBox>
                            颜色：<aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="PCB_Applicant.PCB_Color" CssClass="BOXCSS">
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
                        <td>
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="PCB_Applicant.AssistantName" ReadOnly="True" width="80px" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" PrintOut="False" DataMap="Account->PCB_Applicant.AssistantID;DisplayName->PCB_Applicant.AssistantName" HiddenExpress='Global.StepName!="开始" &amp;&amp; Global.StepName!="EDA经理2"'></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="PCB_Applicant.AssistantID" Width="20px" BorderWidth="1" BorderColor="#DCDCDC" HiddenInput="True"></aspxform:XTextBox>
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
                                        <td width="67">
                                            需求数量：</td>
                                        <td width="57">
                                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="PCB_Applicant.NeedCount1" Max="0" Min="0" HiddenInput="False" width="55px" CssClass="BOXCSS" NormalCssClass="BOXCSS" TextAlign="Right"></aspxform:XTextBox>
                                        </td>
                                        <td width="44">
                                            PCS ，</td>
                                        <td width="57">
                                            <aspxform:XTextBox id="XTextBox51" runat="server" XDataBind="PCB_Applicant.NeedCount2" Width="55px" ReadOnly="True" CssClass="BOXCSS" Express="if(PCB_Applicant.DeliveryType>0,PCB_Applicant.NeedCount1/PCB_Applicant.DeliveryType,'')"></aspxform:XTextBox>
                                        </td>
                                        <td width="129">
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
                            <aspxform:XRequiredFieldValidator id="XRH2" runat="server" ControlToValidate="XTextBox32" ErrorMessage="请填写vss存放路径！" Display="None" DisableExpress="Global.StepName!='开始'"></aspxform:XRequiredFieldValidator>
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
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" XDataBind="PCB_Applicant.PCB_Design" Width="80px" HiddenExpress="PCB_Applicant.KuoDian!='否'" RepeatDirection="Horizontal">
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
                            <aspxform:XRadioButtonList id="XRadioButtonList3" runat="server" XDataBind="PCB_Applicant.NewLayout" Width="80px" HiddenExpress="PCB_Applicant.KuoDian!='否' ||   PCB_Applicant.PCB_Design!='是'" RepeatDirection="Horizontal">
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
                            <aspxform:XRadioButtonList id="XRadioButtonList4" runat="server" XDataBind="PCB_Applicant.BluePrint" Width="80px" HiddenExpress="PCB_Applicant.KuoDian!='否' ||   PCB_Applicant.PCB_Design!='是'" RepeatDirection="Horizontal">
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
                            <aspxform:XRequiredFieldValidator id="XR1" runat="server" ControlToValidate="XMSNAttachments4" ErrorMessage="请上传电源拓扑图！" Display="None" DisableExpress="Global.StepName!='开始' || PCB_Applicant.PCB_Design!='是'"></aspxform:XRequiredFieldValidator>
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
                            <aspxform:XTextBox id="XTextBox43" runat="server" XDataBind="PCB_Applicant.OtherDReason" Width="100px" CssClass="BOXCSS" HiddenExpress="PCB_Applicant.DrawDReason != '其它'"></aspxform:XTextBox>
                        </td>
                        <td colspan="2">
                            <p align="right">
                                上传LAYOUT要求： 
                            </p>
                        </td>
                        <td colspan="4">
                            <aspxform:XMSNAttachments id="XMSNAttachments5" runat="server" XDataBind="PCB_Applicant.LayoutRequireAtt" Width="99%"></aspxform:XMSNAttachments>
                            <aspxform:XRequiredFieldValidator id="XR2" runat="server" ControlToValidate="XMSNAttachments5" ErrorMessage="请上传LAYOUT要求！" Display="None" DisableExpress="Global.StepName!='开始' || PCB_Applicant.PCB_Design!='是'"></aspxform:XRequiredFieldValidator>
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
                            <aspxform:XMSNAttachments id="XMSNAttachments3" runat="server" XDataBind="PCB_Applicant.YuanliFile" Width="99%"></aspxform:XMSNAttachments>
                            <aspxform:XRequiredFieldValidator id="XR3" runat="server" ControlToValidate="XMSNAttachments3" ErrorMessage="请上传原理图！" Display="None" DisableExpress="Global.StepName!='开始' || PCB_Applicant.PCB_Design!='是'"></aspxform:XRequiredFieldValidator>
                        </td>
                        <td>
                            上传项目备忘录</td>
                        <td colspan="2">
                            <aspxform:XMSNAttachments id="XMSNAttachments6" runat="server" XDataBind="PCB_Applicant.MemoAtt" Width="99%"></aspxform:XMSNAttachments>
                            <aspxform:XRequiredFieldValidator id="XR4" runat="server" ControlToValidate="XMSNAttachments6" ErrorMessage="请上传项目备忘录！" Display="None" DisableExpress="Global.StepName!='开始' || PCB_Applicant.PCB_Design!='是'"></aspxform:XRequiredFieldValidator>
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
                            <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="21px" PrintOut="False" DataMap="Account->PCB_Applicant.JDesignerID;DisplayName->PCB_Applicant.JDesignerName" HiddenExpress='Global.StepName!="开始"'></aspxform:XSelectUserButton>
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
                                        <td>
                                            <aspxform:XMSNAttachments id="XMSNAttachments1" runat="server" XDataBind="PCB_Applicant.ChartFile" StorePathExpress="PCB" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" ControlToValidate="XMSNAttachments1" ErrorMessage="请上传结构定位图！" Display="None" DisableExpress="Global.StepName!='结构人员'">结构定位图</aspxform:XRequiredFieldValidator>
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
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="PCB_Applicant.CheckPCB" Width="99%" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
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
                                <asp:ListItem>6层</asp:ListItem>
                                <asp:ListItem>8层</asp:ListItem>
                                <asp:ListItem>10层</asp:ListItem>
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
                        <td class="NoPadding" height="32" colspan="8" hiddenexpress="PCB_Applicant.KuoDian=='否' &amp;&amp; Global.StepName=='开始'">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="175">
                                            <aspxform:XLabel id="XLabel12" runat="server" text="期望发出PCB生产资料时间："></aspxform:XLabel>
                                        </td>
                                        <td width="202">
                                            <aspxform:XDateTimePicker id="XDateTimePicker1" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" XDataBind="PCB_Applicant.SendDate" Width="200px" ReadOnly="True" onchange="javascript:XFormOnChange(this);" CssClass="BOXCSS" XSubType="date" XType="datetime" Type="TimeMinutes30"></aspxform:XDateTimePicker>
                                        </td>
                                        <td width="414">
                                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="PCB_Applicant.ExpirationTime" Width="200px" CssClass="BOXCSS" HiddenExpress="1" Express="if(Global.StepName!='开始',PCB_Applicant.SendDate,PCB_Applicant.ExpirationTime)" Type="TimeMinutes30"></aspxform:XDateTimePicker>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr hiddenexpress="Global.StepName!='EDA经理' &amp;&amp; Global.StepName!='EDA助理'">
                        <td class="NoPadding" height="30" colspan="8">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="114">
                                            <aspxform:XLabel id="XLabel46" runat="server" text="选择layout工程师："></aspxform:XLabel>
                                        </td>
                                        <td width="102">
                                            <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="PCB_Applicant.LDesignerName" ReadOnly="True" width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                                        </td>
                                        <td width="23">
                                            <aspxform:XSelectUserButton id="XSelectUserButton3" runat="server" Width="21px" PrintOut="False" DataMap="Account->PCB_Applicant.LDesignerID;DisplayName->PCB_Applicant.LDesignerName"></aspxform:XSelectUserButton>
                                        </td>
                                        <td width="550">
                                            <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="PCB_Applicant.LDesignerID" Width="50px" BorderWidth="1" BorderColor="#DCDCDC" HiddenInput="True"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            ~</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td>
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
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="开始" || Global.StepName =="结构人员" || Global.StepName =="EDA经理" || Global.StepName =="助理人员" || Global.StepName =="SQE2" || Global.StepName =="采购代表2" ||  Global.StepName =="硬件部总监" || Global.StepName =="基础技术组经理"'>
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
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="开始" || Global.StepName =="结构人员" || Global.StepName =="EDA经理" || Global.StepName =="助理人员" || Global.StepName =="SQE2" || Global.StepName =="采购代表2" ||  Global.StepName =="硬件部总监" || Global.StepName =="基础技术组经理"'>
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
                            <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="PCB_Applicant.DeliveryType" Max="0" Min="0" HiddenInput="False" width="61px" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                            PCS/拼板</td>
                        <td width="66">
                            <p align="right">
                                交货日期： 
                            </p>
                        </td>
                        <td colspan="2">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" runat="server" XDataBind="PCB_Applicant.G_DeliveryDate" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XDateTimePicker>
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
                        <td class="NoPadding" width="320">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="46">
                                            其&nbsp; 他: 
                                        </td>
                                        <td width="270">
                                            <aspxform:XTextBox id="XTextBox52" runat="server" XDataBind="PCB_Applicant.G_LayersOther" Width="187px" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="NoPadding" height="28" colspan="5">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="53">
                                            最小线宽</td>
                                        <td width="64">
                                            <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="PCB_Applicant.G_LineWidth" Max="0" Min="0" HiddenInput="False" width="61px" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                                        </td>
                                        <td width="83">
                                            MM、最小线距</td>
                                        <td width="65">
                                            <aspxform:XTextBox id="XTextBox35" runat="server" XDataBind="PCB_Applicant.G_LineSpacing" Max="0" Min="0" HiddenInput="False" width="61px" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                                        </td>
                                        <td width="89">
                                            &nbsp; MM、最小孔径</td>
                                        <td width="64">
                                            <aspxform:XTextBox id="XTextBox56" runat="server" XDataBind="PCB_Applicant.G_PoreSize" Max="0" Min="0" HiddenInput="False" width="61px" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                                        </td>
                                        <td width="333">
                                            &nbsp;MM</td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
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
                            <aspxform:XTextBox id="XTextBox53" runat="server" XDataBind="PCB_Applicant.G_MaterialOther" Width="338px" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
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
                            <aspxform:XLabel id="XLabel44" runat="server" text="防焊文字颜色：" Value ValueToDisplayText></aspxform:XLabel>
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
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="开始" || Global.StepName =="结构人员" || Global.StepName =="EDA经理" || Global.StepName =="Layout工程师" || Global.StepName =="助理人员" || Global.StepName =="SQE2" || Global.StepName =="采购代表2" || Global.StepName =="硬件部总监" || Global.StepName =="基础技术组经理"'>
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
                        <td class="NoPadding" width="124">
                            <aspxform:XRadioButtonList id="XRadioButtonList7" runat="server" XDataBind="PCB_Applicant.AcceptFile" Width="120px" RepeatDirection="Horizontal">
                                <asp:ListItem>同意</asp:ListItem>
                                <asp:ListItem>不同意</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                        <td class="NoPadding" width="528">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="54">
                                            &nbsp;，意见： 
                                        </td>
                                        <td width="470">
                                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="PCB_Applicant.AcceptFileNote" Max="0" Min="0" HiddenInput="False" width="448px" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
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
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="开始" || Global.StepName =="结构人员" || Global.StepName =="EDA经理" || Global.StepName =="Layout工程师" || Global.StepName =="助理人员" || Global.StepName =="硬件设计师" || Global.StepName =="SQE" || Global.StepName =="采购代表" || Global.StepName =="SQE2" || Global.StepName =="采购代表2" || Global.StepName =="硬件部总监" || Global.StepName =="基础技术组经理"'>
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" colspan="2">
                            <aspxform:XLabel id="XLabel40" runat="server" text="生产工艺" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td height="14">
                        </td>
                        <td width="766">
                            1、是否已制作工艺指导说明：<aspxform:XRadioButtonList id="XRadioButtonList9" runat="server" XDataBind="PCB_Applicant.MakeExplain" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td class="NoPadding">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="50%">
                                            2、工艺建议： 
                                        </td>
                                        <td width="50%">
                                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="PCB_Applicant.DesignNote" Max="0" Min="0" HiddenInput="False" width="665px" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="10">
                        </td>
                        <td>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="开始" || Global.StepName =="结构人员" || Global.StepName =="EDA经理" || Global.StepName =="基础技术组经理"'>
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
                            <aspxform:XMSNAttachments id="XMSNAttachments2" runat="server" XDataBind="PCB_Applicant.PCB_ProductFile" StorePathExpress="1001" StorePathBasicFolder="SystemAttachmentsRoot"></aspxform:XMSNAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--打样厂家信息-->
        <div align="center" hiddenexpress='Global.StepName =="开始" || Global.StepName =="结构人员" || Global.StepName =="EDA经理" || Global.StepName =="Layout工程师" || Global.StepName =="助理人员" || Global.StepName =="硬件设计师" || Global.StepName =="硬件部总监" || Global.StepName =="基础技术组经理"'>
            <table class="MYHEAD" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="20" width="673">
                            <aspxform:XLabel id="XLabel41" runat="server" text="打样厂家信息" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ControlToValidate="XTextBox57" ErrorMessage="请选择厂家！" Display="None" DisableExpress="Global.StepName!='SQE2' &amp;&amp; Global.StepName!='工艺工程师'">选择厂家</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" ControlToValidate="XTextBox57" ErrorMessage="没有选择厂家，请退回！" Display="None" ValidationGroup="SendPCB">选择厂家2</aspxform:XRequiredFieldValidator>
                        </td>
                        <td width="121">
                            <aspxform:XAddBlockButton id="XAddBlockButton1" runat="server" PrintOut="False" HiddenExpress="Global.StepName!='SQE' &amp;&amp; Global.StepName!='SQE2' " Text="添加厂家信息" TableName="PCB_Applicant_Sup"></aspxform:XAddBlockButton>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE2" border="1" cellspacing="0" cellpadding="0" width="800" dynamicarea="0,5">
                <tbody>
                    <tr>
                        <td rowspan="5" width="30">
                            <p align="right">
                                <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Font-Size="Large" XDataBind="PCB_Applicant_Sup.SerialNO" Width="25px" BorderWidth="0px" ReadOnly="True" Height="30px" XType="gridlineno" BorderStyle="None" Enabled="False">1</aspxform:XGridLineNo>
                            </p>
                        </td>
                        <td height="25" width="113">
                            <p align="left">
                                &nbsp;确 认 厂 家： 
                            </p>
                        </td>
                        <td width="250">
                            <aspxform:XTextBox id="XTextBox57" runat="server" XDataBind="PCB_Applicant_Sup.SupName" BorderWidth="1" ReadOnly="True" BorderColor="#DCDCDC"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox47" runat="server" XDataBind="PCB_Applicant_Sup.SupHRID" Width="50px" BorderWidth="1" ReadOnly="True" BorderColor="#DCDCDC" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XDataBrowserButton id="XDataBrowserButton1" runat="server" Width="21px" XDataSource="TableName:PCB_Supplier" DataMap="SupplierName->PCB_Applicant_Sup.SupName;SupHRID->PCB_Applicant_Sup.SupHRID" HiddenExpress='Global.StepName!="工艺工程师"&amp;&amp;Global.StepName!="SQE2"' DisplayColumns="SupplierName:,;SupHRID:,"></aspxform:XDataBrowserButton>
                        </td>
                        <td width="124">
                            <p align="right">
                                供应商类型： 
                            </p>
                        </td>
                        <td width="267">
                            <aspxform:XDropDownList id="XDropDownList7" runat="server" XDataBind="PCB_Applicant_Sup.SupType" Width="150px" PromptText="请选择">
                                <asp:ListItem>现有合格供应商</asp:ListItem>
                                <asp:ListItem>新供应商</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <p align="left">
                                &nbsp;厂家技术工艺能力： 
                            </p>
                        </td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="PCB_Applicant_Sup.SupAbility" Width="150px" PromptText="请选择">
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
                            <aspxform:XDropDownList id="XDropDownList6" runat="server" XDataBind="PCB_Applicant_Sup.SupStatus" Width="150px" PromptText="请选择">
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
                            <aspxform:XDateTimePicker id="XDateTimePicker4" runat="server" XDataBind="PCB_Applicant_Sup.ReceiveDate" Width="120px" CssClass="BOXCSS"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <table border="0" cellspacing="0" cellpadding="0" width="650" hiddenexpress="1">
                                <tbody>
                                    <tr>
                                        <td width="66">
                                            采购周期：</td>
                                        <td width="262">
                                            <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="PCB_Applicant_Sup.BuyCycle" width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                                            天</td>
                                        <td width="63">
                                            服&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：</td>
                                        <td width="255">
                                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="PCB_Applicant_Sup.BuyService" width="90%" CssClass="BOXCSS"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="21">
                                            价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 格：</td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="PCB_Applicant_Sup.BuyPrice" width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                                            元</td>
                                        <td>
                                            月度产能：</td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="PCB_Applicant_Sup.MonthCapacity" width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                                            PCS</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            账期评估：</td>
                                        <td>
                                            <aspxform:XTextBox id="XTextBox37" runat="server" XDataBind="PCB_Applicant_Sup.EstimateZQ" width="100px" CssClass="BOXCSS"></aspxform:XTextBox>
                                            天</td>
                                        <td>
                                            商务评估：</td>
                                        <td>
                                            <aspxform:XDropDownList id="XDropDownList8" runat="server" XDataBind="PCB_Applicant_Sup.EstimateSW" PromptText="请选择">
                                                <asp:ListItem>商务合格</asp:ListItem>
                                                <asp:ListItem>商务不合格</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="25" colspan="4">
                            &nbsp;<aspxform:XHistoryFormLink id="XHistoryFormLink1" runat="server" XDataBind="PCB_Applicant_Sup.ChildTastID" Text="查看认证信息"></aspxform:XHistoryFormLink>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!--绩效考核-->
        <div align="center" hiddenexpress='Global.StepName !="EDA经理" &amp;&amp; Global.StepName !="EDA经理2" &amp;&amp; Global.StepName !="Layout工程师" &amp;&amp; Global.StepName !="助理人员" &amp;&amp; Global.StepName !="硬件设计师" &amp;&amp; Global.StepName !="SQE" &amp;&amp; Global.StepName !="采购代表"'>
            <table class="MYHEAD" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="20" width="800">
                            <aspxform:XLabel id="XLabel35" runat="server" text="绩效考核" Font-Size="10pt" Font-Bold="True" ForeColor="Desktop"></aspxform:XLabel>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" ControlToValidate="XTextBox34" ErrorMessage="请填写实际的Layout完成天数B！" Display="None" DisableExpress="Global.StepName!='Layout工程师'">实际的Layout完成天数B</aspxform:XRequiredFieldValidator>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ControlToValidate="XTextBox17" ErrorMessage="完成layout电子设计师返工的工时C" Display="None" DisableExpress="Global.StepName!='Layout工程师'">填写完成layout电子设计师返工的工时C</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="1" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="助理人员" || Global.StepName =="硬件设计师"'>
                <tbody>
                    <tr>
                        <td height="18" colspan="8">
                            <strong>Layout工作量</strong></td>
                    </tr>
                    <tr>
                        <td height="30" width="97">
                            <p align="left">
                                <aspxform:XLabel id="XLabel47" runat="server" text="网络PIN点数P"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="97">
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="PCB_Applicant_Assess.PIN_P" width="60px" CssClass="BOXCSS"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator13" runat="server" ControlToValidate="XTextBox4" ErrorMessage="请填写PIN点数！" Display="None" DisableExpress="Global.StepName!='EDA经理'">*</aspxform:XRequiredFieldValidator>
                        </td>
                        <td width="92">
                            <p align="left">
                                <aspxform:XLabel id="XLabel18" runat="server" text="PCB面积S"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="102">
                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="PCB_Applicant_Assess.PCB_S" Width="50px" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                            c<span style="FONT-FAMILY: 'Times New Roman'; FONT-SIZE: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA" lang="EN-US">m</span><sup><span style="FONT-FAMILY: 宋体; FONT-SIZE: 10.5pt; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-bidi-font-family: 'Times New Roman'"><font size="1">２<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator14" runat="server" ControlToValidate="XTextBox8" ErrorMessage="请填写PCB面积！" Display="None" DisableExpress="Global.StepName!='EDA经理'">*</aspxform:XRequiredFieldValidator>
                            </font></span></sup></td>
                        <td width="97">
                            <p align="left">
                                <aspxform:XLabel id="XLabel19" runat="server" text="PCB更改比例M"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="97">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="PCB_Applicant_Assess.PCB_M" Max="0" width="60px" CssClass="BOXCSS" Format="type:number;.2"></aspxform:XTextBox>
                        </td>
                        <td width="97">
                            <p align="left">
                                <aspxform:XLabel id="XLabel20" runat="server" text="PCB层数L"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="96">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="PCB_Applicant_Assess.PCB_L" width="60px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="31">
                            <p align="left">
                                <aspxform:XLabel id="XLabel21" runat="server" text="难度系数Y"></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="PCB_Applicant_Assess.PCB_Y" width="60px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                            <p align="left">
                                <aspxform:XLabel id="XLabel2" runat="server" text="提前启动时间E"></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="PCB_Applicant_Assess.PCB_E" width="60px" CssClass="BOXCSS"></aspxform:XTextBox>
                            H</td>
                        <td>
                            <p align="left">
                                <aspxform:XLabel id="XLabel3" runat="server" text="正常完成评时间A" Width="60px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="PCB_Applicant_Assess.PCB_A" width="60px" CssClass="BOXCSS"></aspxform:XTextBox>
                            H</td>
                        <td>
                            <p align="left">
                                <aspxform:XLabel id="XLabel22" runat="server" text="压缩正常评估时间D" Width="75px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="PCB_Applicant_Assess.PCB_D" width="60px" CssClass="BOXCSS"></aspxform:XTextBox>
                            H</td>
                    </tr>
                    <tr>
                        <td height="31">
                            <p align="left">
                                <aspxform:XLabel id="XLabel23" runat="server" text="设计原因延误启动的时间H" Width="80px" Height="30px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="PCB_Applicant_Assess.PCB_H" width="60px" CssClass="BOXCSS"></aspxform:XTextBox>
                            H</td>
                        <td>
                            <p align="left">
                                <aspxform:XLabel id="XLabel25" runat="server" text="元器件个数X"></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="PCB_Applicant_Assess.PCB_X" width="60px" CssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td height="31" colspan="8">
                            <aspxform:XLabel id="XLabel26" runat="server" text="Layout工作量:"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox36" runat="server" XDataBind="PCB_Applicant_Assess.LayoutSum" width="100px" CssClass="BOXCSS" Express="(PCB_Applicant_Assess.PIN_P/PCB_Applicant_Assess.PCB_S)*(PCB_Applicant_Assess.PCB_L/(PCB_Applicant_Assess.PCB_L-0.5))*PCB_Applicant_Assess.PCB_M*PCB_Applicant_Assess.PCB_Y" Enabled="False" Format="type:number;.4"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="硬件设计师" || Global.StepName =="SQE" || Global.StepName =="采购代表" || Global.StepName =="Layout工程师" '>
                <tbody>
                    <tr>
                        <td height="18" colspan="2">
                            <strong>加急系数α</strong></td>
                    </tr>
                    <tr>
                        <td height="30" width="98">
                            <aspxform:XLabel id="XLabel24" runat="server" text="加急的进度系数："></aspxform:XLabel>
                        </td>
                        <td width="696">
                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="PCB_Applicant_Assess.PCB_α" Max="0" Min="0" HiddenInput="False" Height="22px" width="101px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Express="1+PCB_Applicant_Assess.PCB_D/PCB_Applicant_Assess.PCB_A+PCB_Applicant_Assess.PCB_E*0.1" Enabled="False" Format="type:number;.4"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="助理人员" || Global.StepName =="硬件设计师"|| Global.StepName =="SQE" || Global.StepName =="采购代表" || Global.StepName =="Layout工程师"'>
                <tbody>
                    <tr>
                        <td height="18" colspan="2">
                            <strong>丝印工作量系数</strong></td>
                    </tr>
                    <tr>
                        <td height="25" width="98">
                            <aspxform:XLabel id="XLabel50" runat="server" text="丝印图工作权值："></aspxform:XLabel>
                        </td>
                        <td width="696">
                            <aspxform:XTextBox id="XTextBox49" runat="server" XDataBind="PCB_Applicant_Assess.SiYinWeight" width="80px" CssClass="BOXCSS" Express="PCB_Applicant_Assess.PCB_X*0.0012" Enabled="False" Format="type:number;.4"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="助理人员" || Global.StepName =="硬件设计师" || Global.StepName =="SQE" || Global.StepName =="采购代表" || Global.StepName =="助理人员"'>
                <tbody>
                    <tr>
                        <td height="16" width="796">
                            <strong>进度系数β</strong></td>
                    </tr>
                    <tr>
                        <td height="30">
                            <aspxform:XLabel id="XLabel42" runat="server" text="实际的Layout完成时间B"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox34" runat="server" XDataBind="PCB_Applicant_Assess.Days_B" Max="0" Min="0" HiddenInput="False" Height="22px" width="101px" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                            H</td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="助理人员" || Global.StepName =="SQE" || Global.StepName =="采购代表" '>
                <tbody>
                    <tr>
                        <td height="18" width="796">
                            <strong>返工系数γ</strong></td>
                    </tr>
                    <tr>
                        <td height="24">
                            <aspxform:XLabel id="XLabel27" runat="server" text="完成layout过程中电子设计师返工的工时C："></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="PCB_Applicant_Assess.WorkHours_C" Max="0" Min="0" HiddenInput="False" Height="22px" width="101px" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                            H 
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <aspxform:XLabel id="XLabel29" runat="server" text="电子设计师确认返工时C："></aspxform:XLabel>
                            <aspxform:XRadioButtonList id="XRadioButtonList6" runat="server" XDataBind="PCB_Applicant_Assess.VerifyHours" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem>同意</asp:ListItem>
                                <asp:ListItem>不同意</asp:ListItem>
                            </aspxform:XRadioButtonList>
                            ，意见：<aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="PCB_Applicant_Assess.VerifyNote" Max="0" Min="0" HiddenInput="False" Height="22px" width="450px" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="助理人员" || Global.StepName =="SQE" || Global.StepName =="采购代表" || Global.StepName =="Layout工程师"'>
                <tbody>
                    <tr>
                        <td height="16" width="798">
                            <strong>质量系数Q </strong></td>
                    </tr>
                    <tr>
                        <td height="22">
                            <p>
                                <aspxform:XLabel id="XLabel37" runat="server" text="PCB质量系数Q："></aspxform:XLabel>
                                <aspxform:XRadioButtonList id="XRadioButtonList5" runat="server" XDataBind="PCB_Applicant_Assess.PCB_Quality_Q" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1.2">非常好</asp:ListItem>
                                    <asp:ListItem Value="1.1">很好</asp:ListItem>
                                    <asp:ListItem Value="1.0">一般符合要求</asp:ListItem>
                                    <asp:ListItem Value="0.8">差</asp:ListItem>
                                    <asp:ListItem Value="0.6">非常差</asp:ListItem>
                                </aspxform:XRadioButtonList>
                            </p>
                            <p>
                                <aspxform:XLabel id="XLabel49" runat="server" text="需要改善点："></aspxform:XLabel>
                                <aspxform:XTextBox id="XTextBox48" runat="server" XDataBind="PCB_Applicant_Assess.PCB_Q_Note" Width="450px" Max="0" Min="0" HiddenInput="False" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="助理人员" || Global.StepName =="硬件设计师" || Global.StepName =="SQE" || Global.StepName =="采购代表" || Global.StepName =="Layout工程师"'>
                <tbody>
                    <tr>
                        <td height="18" width="800">
                            <strong>总工作量确认<aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ControlToValidate="XRadioButtonList8" ErrorMessage="请确认质量系数Q！" Display="None" DisableExpress="Global.StepName!='EDA经理2'">确认质量系数Q</aspxform:XRequiredFieldValidator>
                            </strong></td>
                    </tr>
                    <tr>
                        <td height="30">
                            <aspxform:XLabel id="XLabel31" runat="server" text="确认质量系数Q："></aspxform:XLabel>
                            <aspxform:XRadioButtonList id="XRadioButtonList8" runat="server" XDataBind="PCB_Applicant_Assess.VerifyQ" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Value="1.2">非常好</asp:ListItem>
                                <asp:ListItem Value="1.1">很好</asp:ListItem>
                                <asp:ListItem Value="1.0">一般符合要求</asp:ListItem>
                                <asp:ListItem Value="0.8">差</asp:ListItem>
                                <asp:ListItem Value="0.6">非常差</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XLabel id="XLabel30" runat="server" text="确认LAYOUT权值："></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="PCB_Applicant_Assess.VerifyWeight" Max="0" Min="0" HiddenInput="False" Height="22px" width="101px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Express="PCB_Applicant_Assess.LayoutSum*PCB_Applicant_Assess.VerifyQ*(1+PCB_Applicant_Assess.PCB_D/PCB_Applicant_Assess.PCB_A+PCB_Applicant_Assess.PCB_E*0.1)*(1+PCB_Applicant_Assess.PCB_H*0.1)*(1+(PCB_Applicant_Assess.PCB_A-PCB_Applicant_Assess.Days_B)/PCB_Applicant_Assess.PCB_A)*(1+PCB_Applicant_Assess.WorkHours_C/PCB_Applicant_Assess.Days_B+PCB_Applicant_Assess.WorkHours_C)" Enabled="False"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="MYTABLE" border="0" cellspacing="0" cellpadding="0" width="800" hiddenexpress='Global.StepName =="助理人员" || Global.StepName =="硬件设计师" || Global.StepName =="SQE" || Global.StepName =="采购代表" || Global.StepName =="Layout工程师"'>
                <tbody>
                    <tr>
                        <td height="18">
                            <strong>封样工作量</strong></td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XLabel id="XLabel32" runat="server" text="PCB封样权值："></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="PCB_Applicant_Assess.FY_Weight" Max="0" Min="0" HiddenInput="False" Height="22px" width="100px" CssClass="BOXCSS" NormalCssClass="BOXCSS" Express="(PCB_Applicant_Assess.PIN_P/PCB_Applicant_Assess.PCB_S)*PCB_Applicant_Assess.PCB_L/(PCB_Applicant_Assess.PCB_L-0.5)*0.05" Enabled="False" Format="type:number;.4"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                            <aspxform:XLabel id="XLabel33" runat="server" text="质量需要改善点："></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="PCB_Applicant_Assess.ImproveNote" Max="0" Min="0" HiddenInput="False" Height="22px" width="680px" CssClass="BOXCSS" NormalCssClass="BOXCSS"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!---->
        <div align="center">
            <table class="MYTABLE2" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="MYHEAD" height="20" width="800">
                            审批意见</td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" Width="100%" BorderWidth="1px" BorderColor="Gainsboro" Height="35px" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="100%" BorderWidth="0px" BorderColor="Transparent" CssClass="AA"></aspxform:XSignTrace>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td width="286">
                            <p align="right">
                                <aspxform:XChildFormLink id="XChildFormLink1" runat="server" XDataBind="PCB_Applicant.TaskID" HiddenExpress='Global.StepName!="EDA经理" &amp;&amp;  Global.StepName!="Layout工程师" ' Text="打印" FormApplication="PCB板定制件打印" PopupWndWidth="-1" PopupWndHeight="-1"></aspxform:XChildFormLink>
                                &nbsp; 
                            </p>
                        </td>
                        <td width="448">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" Width="476px" ConsignAreaHeaderBackColor="245, 245, 220" ConsignAreaBorderColor="Gainsboro"></aspxform:XProcessButtonList>
                        </td>
                        <td width="60">
                            <p align="center">
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
