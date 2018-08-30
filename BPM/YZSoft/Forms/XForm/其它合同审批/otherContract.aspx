<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<%@ Register TagPrefix="n0" Namespace="XFormDesigner.Framework.Web.UI" Assembly="JieControls" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform="xmlns:xform">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <title>BPM Form</title> 
    <link href="../bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style>

body {FONT-SIZE: 12px; FONT-FAMILY: 微软雅黑}
table {border-collapse: collapse; FONT-SIZE: 12px; FONT-FAMILY: 微软雅黑}
p {PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; FONT-SIZE: 12px; FONT-FAMILY: 微软雅黑}


.demotable{
border:1px solid #DDDDDD;
color:#333;
table-layout:fixed;
empty-cells:show;
border-collapse: collapse;
margin:0 auto;
}
.demotable th {
background-repeat:repeat-x;
height:30px;
}
.demotable td,.demotable th{
border:1px solid #DDDDDD;
padding:0 4px 0 2px;
min-height:30px;
}
.demotable tr.alter{
background-color:#f5fafe;
}
.demotable .td_label {
background-color:#f4f8ff;text-align:right;
}
.demotable .td_header {
background-color:#f4f8ff;padding:2px 4px 2px 4px; font-weight:bold; font-family:微软雅黑; color:#333333; font-size:15px;  text-align:left;
}

.textbox_red {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #ffb3a7 1px solid
}

.textbox_gray {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #CCCCCC 1px solid
}








TABLE.AA {
	BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-COLLAPSE: separate; BACKGROUND-COLOR: #d1dedf; BORDER-RIGHT-WIDTH: 0px
}
TABLE.AA TD {
	BORDER-RIGHT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-BOTTOM: #d1dedf 1px solid; HEIGHT: 15px
}
TABLE.AA TR.HeaderRow {
	BACKGROUND-COLOR: #f0f0f0
}
TABLE.AA TR.HeaderRow TD {
	HEIGHT: 25px; TEXT-ALIGN: left
}
TABLE.AA TR.HeaderRow TD.NoColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.StepNameColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.SignColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.ActionColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.DateColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 1%; WHITE-SPACE: nowrap
}
TABLE.AA TR.HeaderRow TD.CommentsColumn {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FONT-WEIGHT: bold; WIDTH: 99%
}
TABLE.AA TR.DataRow {
	BACKGROUND-COLOR: #ffffff
}
TABLE.AA TR.DataRow TD {
	HEIGHT: 25px; TEXT-ALIGN: left
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
TABLE.AA TR.DataRow TD.CommentsCell {
	PADDING-RIGHT: 10px; PADDING-LEFT: 10px; COLOR: blue; TEXT-ALIGN: left
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
        <!-- Insert content here -->
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="Mytable" border="1" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="53" width="217">
                            <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            &nbsp;</td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="403" align="middle">
                            <aspxform:XLabel id="XLabel1" runat="server" ValueToDisplayText Value Font-Names="微软雅黑" text="深圳创维数字技术股份有限公司" Font-Size="Small" Font-Bold="True"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="white" width="224">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="35" colspan="3" align="middle">
                            <asp:Label id="Label1" runat="server" text="一般合同审批单" font-bold="True" font-names="微软雅黑" font-size="Medium"></asp:Label></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
        </div>
        <div align="center">
            <table class="demotable" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="td_header" width="800">
                            申请信息 
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="demotable" border="0" cellspacing="0" cellpadding="0" width="802">
                <tbody>
                    <tr>
                        <td class="td_label" height="30" width="116">
                            <p align="right">
                                <aspxform:XLabel id="XLabel43" runat="server" ValueToDisplayText Value text="申请人:" Font-Bold="False" Width="100%"></aspxform:XLabel>
                            </p>
                        </td>
                        <td width="290">
                            <aspxform:XTextBox id="XTextBox44" runat="server" ValueToDisplayText Value Width="133px" CssClass="textbox_gray" HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.AppHRName" DisableBehavior="ReadOnly" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox16" runat="server" ValueToDisplayText Value CssClass="textbox_red" HiddenInput="True" Min="0" Max="0" XDataBind="QTHT_Applicant_All.htzrrHRID" BorderStyle="Dotted" width="57px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox19" runat="server" ValueToDisplayText Value Width="35px" CssClass="textbox_gray" HiddenInput="True" Min="0" Max="0" XDataBind="QTHT_Applicant_All.AppHRID" DisableBehavior="ReadOnly" ReadOnly="True" BorderStyle="Dotted" Visible="False"></aspxform:XTextBox>
                        </td>
                        <td class="td_label" width="114">
                            合同编号:</td>
                        <td width="254">
                            <aspxform:XTextBox id="XTextBox46" runat="server" ValueToDisplayText Value Width="161px" CssClass="textbox_gray" HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.AppSN" DisableBehavior="ReadOnly" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label" height="30">
                            合同责任人:</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox3" runat="server" ValueToDisplayText Value CssClass="textbox_red" HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.htzrr" DisableBehavior="ReadOnly" width="131px"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" Display="None" ErrorMessage="请输入:合同责任人" ControlToValidate="XTextBox3">请输入:合同责任人</aspxform:XRequiredFieldValidator>
                            <aspxform:XSelectUserButton id="XSelectUserButton2" runat="server" Width="21px" DataMap="Account->QTHT_Applicant_All.htzrrHRID;DisplayName->QTHT_Applicant_All.htzrr;Department->QTHT_Applicant_All.AppDept" HiddenExpress='Global.StepName !="开始"'></aspxform:XSelectUserButton>
                        </td>
                        <td class="td_label">
                            <p align="right">
                                <aspxform:XLabel id="XLabel45" runat="server" ValueToDisplayText Value text="申请日期:" Font-Bold="False" Width="66px" Height="14px"></aspxform:XLabel>
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox45" runat="server" ValueToDisplayText Value Width="162px" CssClass="textbox_gray" HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.AppDate" DisableBehavior="ReadOnly" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label" height="30">
                            责任部门:</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox18" runat="server" ValueToDisplayText Value CssClass="textbox_red" HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.AppDept" DisableBehavior="ReadOnly" width="131px"></aspxform:XTextBox>
                        </td>
                        <td class="td_label">
                            紧急程度:</td>
                        <td>
                            <aspxform:XRadioButtonList id="XRadioButtonList2" runat="server" Width="98px" XDataBind="QTHT_Applicant_All.jjcd" Height="23px" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">一般</asp:ListItem>
                                <asp:ListItem>加急</asp:ListItem>
                            </aspxform:XRadioButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table class="demotable" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="td_header" width="800">
                            合同信息 
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
        </div>
        <div align="center">
        </div>
        <div align="center">
        </div>
        <div align="center">
            <table class="demotable" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="td_label" width="120">
                            合同名称:</td>
                        <td width="286">
                            <aspxform:XTextBox id="XTextBox5" runat="server" ValueToDisplayText Value CssClass="textbox_red" HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.htmc" DisableBehavior="ReadOnly" width="259px" Height="23px"></aspxform:XTextBox>
                        </td>
                        <td class="td_label" width="120">
                            合同有效期从:</td>
                        <td width="251">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" Width="142px" CssClass="textbox_red" XDataBind="QTHT_Applicant_All.ksrq" DisableBehavior="ReadOnly"></aspxform:XDateTimePicker>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label">
                            签署公司:</td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList21" runat="server" Width="224px" CssClass="textbox_red" XDataBind="QTHT_Applicant_All.qsgs" XDataSource>
                                <asp:ListItem>深圳创维数字技术股份有限公司</asp:ListItem>
                                <asp:ListItem>深圳市创维软件有限公司</asp:ListItem>
                                <asp:ListItem>深圳微普特信息技术有限公司</asp:ListItem>
                                <asp:ListItem>创维无线技术有限公司</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td class="td_label">
                            有效期至:</td>
                        <td>
                            <aspxform:XDateTimePicker id="XDateTimePicker2" onclick="MShowDateSelector(this,event,'CN','http://192.168.8.248/BPM/Images/DatePicker/',false);this.blur();" runat="server" Width="142px" CssClass="textbox_red" XDataBind="QTHT_Applicant_All.jsrq" DisableBehavior="ReadOnly" ReadOnly="True" HiddenExpress='QTHT_Applicant_All.cqyx=="是"' Height="22px" XSubType="date" Express="if(QTHT_Applicant_All.cqyx==&quot;是&quot;,'9999-12-31','')" onchange="javascript:XFormOnChange(this);" XType="datetime"></aspxform:XDateTimePicker>
                            <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="QTHT_Applicant_All.cqyx" HiddenExpress="(QTHT_Applicant_All.ksrq!='' &amp;&amp; QTHT_Applicant_All.jsrq!='')" Text="长久有效"></aspxform:XCheckBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label">
                            对方单位:</td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox7" runat="server" ValueToDisplayText Value CssClass="textbox_red" HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.htdw" DisableBehavior="ReadOnly" width="625px" Height="22px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label">
                            联系人:</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox8" runat="server" ValueToDisplayText Value CssClass="textbox_red" HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.lxr" DisableBehavior="ReadOnly" width="134px"></aspxform:XTextBox>
                        </td>
                        <td class="td_label">
                            <p align="right">
                                联系方式: 
                            </p>
                        </td>
                        <td>
                            <aspxform:XTextBox id="XTextBox9" runat="server" ValueToDisplayText Value CssClass="textbox_red" HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.lxfs" DisableBehavior="ReadOnly" width="203px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label">
                            联系地址:</td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox10" runat="server" ValueToDisplayText Value CssClass="textbox_red" HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.dz" DisableBehavior="ReadOnly" width="627px" Height="22px"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label">
                            合同金额:</td>
                        <td>
                            <aspxform:XTextBox id="XTextBox15" runat="server" ValueToDisplayText Value CssClass="textbox_red" HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.htje" DisableBehavior="ReadOnly" width="134px" Format="type:number;.2"></aspxform:XTextBox>
                            <aspxform:XDropDownList id="XDropDownList31" runat="server" CssClass="textbox_red" XDataBind="QTHT_Applicant_All.bb">
                                <asp:ListItem>RMB</asp:ListItem>
                                <asp:ListItem>USD</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td class="td_label">
                            发票类型:</td>
                        <td>
                            <aspxform:XDropDownList id="XDropDownList12" runat="server" CssClass="textbox_red" XDataBind="QTHT_Applicant_All.fplx">
                                <asp:ListItem>增值税专票(17%)</asp:ListItem>
                                <asp:ListItem>增值税专票(6%)</asp:ListItem>
                                <asp:ListItem>增值税专票(3%)</asp:ListItem>
                                <asp:ListItem>增值税普票</asp:ListItem>
                                <asp:ListItem>普通发票</asp:ListItem>
                            </aspxform:XDropDownList>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator8" runat="server" Display="None" ErrorMessage="请输入:发票类型" ControlToValidate="XDropDownList12">请输入:发票类型</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label">
                            款项说明:</td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox17" runat="server" ValueToDisplayText Value HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.fksm" DisableBehavior="ReadOnly" width="655px" Height="53px" TextMode="MultiLine"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator9" runat="server" Display="None" ErrorMessage="请输入:付款说明" ControlToValidate="XTextBox17">请输入:付款说明</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator7" runat="server" Display="None" ErrorMessage="请输入:合同金额" ControlToValidate="XTextBox15">请输入:合同金额</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator10" runat="server" Display="None" ErrorMessage="请输入：签署公司" ControlToValidate="XDropDownList21">请输入：签署公司</aspxform:XRequiredFieldValidator>
            <table class="demotable" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="td_header" width="800">
                            合同说明&nbsp;</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
        </div>
        <div align="center">
            <table class="demotable" border="0" cellspacing="0" cellpadding="0" width="801">
                <tbody>
                    <tr>
                        <td class="td_label" height="30" width="120">
                            合同文本:</td>
                        <td width="286">
                            <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="QTHT_Applicant_All.wfbz" Text="我方标准合同"></aspxform:XCheckBox>
                        </td>
                        <td class="td_label" width="120">
                            <p>
                                是否首次合作: 
                            </p>
                        </td>
                        <td width="256">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" Width="92px" CssClass="textbox_red" XDataBind="QTHT_Applicant_All.sfschz" XDataSource>
                                <asp:ListItem>是</asp:ListItem>
                                <asp:ListItem>否</asp:ListItem>
                                <asp:ListItem>不清楚</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label" height="76">
                            合同事由:</td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox1" runat="server" ValueToDisplayText Value HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.sy" DisableBehavior="ReadOnly" width="655px" Height="73px" TextMode="MultiLine" BorderWidth="1px" BorderColor="Gainsboro"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label" height="79">
                            合同摘要或补充条款:</td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox2" runat="server" ValueToDisplayText Value HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.bz" DisableBehavior="ReadOnly" width="655px" Height="218px" TextMode="MultiLine" BorderWidth="1px" BorderColor="Gainsboro"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator11" runat="server" Display="None" ErrorMessage="请输入:合同摘要或补充条款" ControlToValidate="XTextBox2">请输入:合同摘要或补充条款</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label" height="30">
                            我方违约责任/风险:</td>
                        <td colspan="3">
                            <aspxform:XTextBox id="XTextBox13" runat="server" ValueToDisplayText Value HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_All.wyfx" DisableBehavior="ReadOnly" width="655px" Height="73px" TextMode="MultiLine" BorderWidth="1px" BorderColor="Gainsboro"></aspxform:XTextBox>
                            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator12" runat="server" Display="None" ErrorMessage="请输入:我方违约责任/风险" ControlToValidate="XTextBox13">请输入我方违约责任/风险</aspxform:XRequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label" height="64">
                            附件:</td>
                        <td colspan="3">
                            <aspxform:XAttachments id="XAttachments1" runat="server" XDataBind="QTHT_Applicant_All.fj" width="100%" FileTypesDescription="Word,Excel"></aspxform:XAttachments>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_label">
                            盖章后合同扫描件(pdf档):</td>
                        <td colspan="3">
                            <aspxform:XAttachments id="XAttachments2" runat="server" XDataBind="QTHT_Applicant_All.gzhtfj" width="100%" FileTypesDescription="PDF" FileTypes="*.pdf"></aspxform:XAttachments>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
        </div>
        <div align="center">
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" Display="None" ErrorMessage="请输入:合同名称" ControlToValidate="XTextBox5">请输入:合同名称</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" Display="None" ErrorMessage="请输入:合同对接单位" ControlToValidate="XTextBox7">请输入:合同对接单位</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" Display="None" ErrorMessage="请输入:合同编号" ControlToValidate="XTextBox4">请输入:合同编号</aspxform:XRequiredFieldValidator>
        </div>
        <div align="center">
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" Display="None" ErrorMessage="请添加:附件" ControlToValidate="XAttachments1">请添加:附件</aspxform:XRequiredFieldValidator>
            <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" Display="None" ErrorMessage="请输入:事由" ControlToValidate="XTextBox7">请输入:事由</aspxform:XRequiredFieldValidator>
        </div>
        <div align="center">
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="47" width="800">
                            <p>
                                <font color="red"><strong>特别说明：</strong></font>
                            </p>
                            <p>
                                <font color="red"><span style="FONT-FAMILY: '微软雅黑','sans-serif'; COLOR: #333333; FONT-SIZE: 9pt; mso-bidi-font-family: Calibri; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">本流程默认审批节点次序为：直接主管<span lang="EN-US">/</span>部门负责人<span lang="EN-US">-&gt;</span>分管副总裁<span lang="EN-US">-&gt;</span>法务部<span lang="EN-US">-&gt;</span>公司常务副总裁，如需其他业务部门或领导审批，请通过相关业务审批功能添加；如需总裁审批，请审批完成后打印此审批单呈批。</span></font>
                            </p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="demotable" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td class="td_header" height="24" colspan="4">
                            相关业务审批人 
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="101px" DataMap="Account->QTHT_Applicant_Spr.HRID;DisplayName->QTHT_Applicant_Spr.HRName;Department->QTHT_Applicant_Spr.HRDept" HiddenExpress='Global.StepName !="开始"' Text="选择审批人..." MultiSelect="True" PopupWndHeight="-1" UseSubmitBehavior="False" PopupWndWidth="-1"></aspxform:XSelectUserButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table id="t_spr" class="demotable" border="0" cellspacing="0" cellpadding="0" width="800" xdatasource="TableName:QTHT_Applicant_Spr;BufferType:RuntimeUpdate" dynamicarea="0,1" emptygrid="KeepEmpty">
                <tbody>
                    <tr>
                        <td class="td_label" height="34" width="36">
                            <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="20px" ReadOnly="True" BorderStyle="None" BorderWidth="1px" BorderColor="Gainsboro" BackColor="Transparent" TextAlign="Center">1</aspxform:XGridLineNo>
                        </td>
                        <td width="155">
                            <aspxform:XTextBox id="XTextBox4" runat="server" ValueToDisplayText Value CssClass="textbox_red" HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_Spr.HRDept" DisableBehavior="ReadOnly" width="130px"></aspxform:XTextBox>
                        </td>
                        <td width="141">
                            <aspxform:XTextBox id="XTextBox11" runat="server" ValueToDisplayText Value CssClass="textbox_red" HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_Spr.HRID" DisableBehavior="ReadOnly" width="122px"></aspxform:XTextBox>
                        </td>
                        <td width="441">
                            <aspxform:XTextBox id="XTextBox12" runat="server" ValueToDisplayText Value CssClass="textbox_red" HiddenInput="False" Min="0" Max="0" XDataBind="QTHT_Applicant_Spr.HRName" DisableBehavior="ReadOnly" width="169px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="center">
            <table class="demotable" border="0" cellspacing="0" cellpadding="2" width="800">
                <tbody>
                    <tr>
                        <td class="td_header" width="383">
                            填写审批意见</td>
                    </tr>
                    <tr>
                        <td height="49">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" Width="796px" Height="62px" TextMode="MultiLine" BorderWidth="1px" BorderColor="Gainsboro" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <N0:XSIGNTRACEEXT id="XSignTraceExt1" runat="server" Width="800px" CssClass="AA" BorderWidth="1px" BorderColor="Transparent"></N0:XSIGNTRACEEXT>
        </div>
        <div align="center">
            <table class="mytable" border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td width="263" align="right">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server"></aspxform:XPrintButton>
                        </td>
                        <td width="533" align="left">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td height="25" width="800">
                            <font color="red"><strong>填写说明:</strong></font></td>
                    </tr>
                    <tr>
                        <td height="26">
                            1.任何一步审批环节如需合同申请人调整合同请使用加签功能。 
                        </td>
                    </tr>
                    <tr>
                        <td height="27">
                            2.合同申请人：合同终审通过后请打印终审版合同盖章，并在双方盖完章后2个工作日内扫描上传电子档后原件交合同管理员存档。 
                        </td>
                    </tr>
                    <tr>
                        <td height="28">
                            3.合同管理员：收到对方盖章合同后，盖章存档。 
                        </td>
                    </tr>
                </tbody>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" width="800">
                <tbody>
                    <tr>
                        <td>
                            <script type="text/javascript" src="../jquery-1.9.1.min.js"></script>
                            <script type="text/javascript">
                                document.write('<script type="text/javascript" charset="gb2312"   src="' + rootUrl + 'MyApp/Demo/TaskComment/taskcomment.js"><\/script>');
                            </script>
                            &nbsp;</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div align="left">
        </div>
        <div align="center">
        </div>
    </form>
</body>
</html>
