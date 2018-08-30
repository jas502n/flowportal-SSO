<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform="xmlns:xform">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
    <title>BPM Form</title> <script language="javascript" type="text/javascript">

     window.onbeforeunload = function() {
         return "是否离开当前页面";  //返回提示页面显示的信息
 }</script><style>BODY {
	FONT-SIZE: 13px; FONT-FAMILY: verdana
}
TABLE {
	FONT-SIZE: 13px; FONT-FAMILY: verdana; BORDER-COLLAPSE: collapse
}
P {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 13px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; FONT-FAMILY: verdana
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
	BORDER-TOP: #d1dedf 1px solid; FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: #004e98; BACKGROUND-COLOR: #dde6f4
}
.MYTABLE {
	BACKGROUND-COLOR: #fbfdff
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
	COLOR: #e0efe6
}
TEXTAREA {
	BORDER-RIGHT: #ffffff 0px solid; BORDER-TOP: #ffffff 0px solid; OVERFLOW-Y: visible; BACKGROUND: #ffffff; OVERFLOW: hidden; BORDER-LEFT: #ffffff 0px solid; BORDER-BOTTOM: #ffb3a7 0px solid
}
</style>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="58" rowspan="3" width="159">
                        <div align="center">
                            <asp:Image id="Image2" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                        </div>
                        &nbsp;</td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" rowspan="3" width="644" colspan="3" align="middle">
                        <p align="center">
                            <aspxform:XLabel id="XLabel1" runat="server" Font-Bold="True" Font-Size="Medium" text="深圳创维数字技术股份有限公司" ValueToDisplayText Value></aspxform:XLabel>
                        </p>
                    </td>
                </tr>
                <tr>
                </tr>
                <tr>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="48" colspan="4">
                        <div align="center">
                        </div>
                        <div align="center">
                            <div align="center">
                                <div align="center">
                                </div>
                                <div align="center">
                                </div>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <aspxform:XLabel id="XLabel13" runat="server" Font-Bold="True" Font-Size="Medium" text="供应商货款冻结解冻" ValueToDisplayText Value Font-Names="Tahoma"></aspxform:XLabel>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="34" width="125">
                        <div align="center">
                            <aspxform:XLabel id="XLabel2" runat="server" Font-Size="X-Small" text="申请日期:" ValueToDisplayText Value></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="272" colspan="3">
                        <aspxform:XTextBox id="XTextBox11" runat="server" ValueToDisplayText Value BorderWidth="0px" BorderColor="Gainsboro" width="100px" Max="0" Min="0" HiddenInput="False" Height="25px" CssClass="BOXCSS" XDataBind="Fin_Freeze_Payment.AppDate"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="103">
                        <div align="left">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel6" runat="server" Font-Size="X-Small" text="申请单号:" ValueToDisplayText Value></aspxform:XLabel>
                                </div>
                            </div>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="290">
                        <div align="left">
                            <aspxform:XTextBox id="XTextBox4" runat="server" ValueToDisplayText Value BorderWidth="0px" BorderColor="Gainsboro" width="100px" Max="0" Min="0" HiddenInput="False" Height="25px" XDataBind="Fin_Freeze_Payment.APPSN"></aspxform:XTextBox>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="802" align="center">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="31" width="129">
                            <div align="center">
                                <aspxform:XLabel id="XLabel3" runat="server" Font-Size="X-Small" text="申请人:" ValueToDisplayText Value></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="269" colspan="3">
                            <div align="left">
                                <aspxform:XTextBox id="XTextBox1" runat="server" ValueToDisplayText Value BorderWidth="0px" BorderColor="Gainsboro" width="100px" Max="0" Min="0" HiddenInput="False" Height="25px" CssClass="BOXCSS" XDataBind="Fin_Freeze_Payment.AppName"></aspxform:XTextBox>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="104">
                            <div align="center">
                                <aspxform:XLabel id="XLabel5" runat="server" Font-Size="X-Small" text="部门:" ValueToDisplayText Value></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="290">
                            <div align="left">
                                <aspxform:XTextBox id="XTextBox3" runat="server" ValueToDisplayText Value BorderWidth="0px" BorderColor="Gainsboro" width="102px" Max="0" Min="0" HiddenInput="False" Height="25px" XDataBind="Fin_Freeze_Payment.AppDept"></aspxform:XTextBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" align="center" height="368">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="28" background="#F0F0F0" colspan="4">
                        &nbsp;&nbsp; 
                        <aspxform:XLabel id="XLabel8" runat="server" Font-Size="X-Small" text="冻结解冻明细:" ValueToDisplayText Value></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="38" width="126">
                        <div align="center">
                            <aspxform:XLabel id="XLabel9" runat="server" Font-Size="X-Small" text="供应商代码:" ValueToDisplayText Value></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="269">
                        <aspxform:XTextBox id="XTextBox6" runat="server" ValueToDisplayText Value width="252px" Max="0" Min="0" HiddenInput="False" Height="31px" CssClass="BOXCSS" XDataBind="Fin_Freeze_Payment.SupplierCode" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="106">
                        <div align="center">
                            <aspxform:XLabel id="XLabel10" runat="server" Font-Size="X-Small" text="供应商名称:" ValueToDisplayText Value></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="287">
                        <aspxform:XTextBox id="XTextBox7" runat="server" ValueToDisplayText Value width="201px" Max="0" Min="0" HiddenInput="False" Height="27px" CssClass="BOXCSS" XDataBind="Fin_Freeze_Payment.SupplierName" ReadOnly="True"></aspxform:XTextBox>
                        <aspxform:XCustomBrowserButton id="XCustomBrowserButton1" runat="server" Width="21px" HiddenExpress="Global.StepName!='开始'" NavigateUrl="~\FormSupport\SelSupplier.aspx" ColumnCount="2" DataMap="Col1->Fin_Freeze_Payment.SupplierName;Col2->Fin_Freeze_Payment.SupplierCode"></aspxform:XCustomBrowserButton>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="45">
                        <div align="center">
                            <aspxform:XLabel id="XLabel16" runat="server" Font-Size="X-Small" text="冻结内容:" ValueToDisplayText Value></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XTextBox id="XTextBox10" runat="server" ValueToDisplayText Value width="262px" Max="0" Min="0" HiddenInput="False" Height="42px" CssClass="BOXCSS" XDataBind="Fin_Freeze_Payment.FreezeContent" TextMode="MultiLine"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator1" runat="server" ValidationGroup="VG1" ControlToValidate="XTextBox10" ErrorMessage="写入冻结内容" Display="None">冻结内容</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator2" runat="server" ValidationGroup="VG1" ControlToValidate="XTextBox8" ErrorMessage="输入冻结事由" Display="None">冻结事由</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator3" runat="server" ValidationGroup="VG2" ControlToValidate="XTextBox12" ErrorMessage="请输入解冻事由" Display="None">解冻事由</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator4" runat="server" ValidationGroup="VG2" ControlToValidate="XAttachments1" ErrorMessage="解冻必须上传处罚函" Display="None">上传附件</aspxform:XRequiredFieldValidator>
                        <aspxform:XTextBox id="XTextBox5" runat="server" ValueToDisplayText Value BorderWidth="0px" BorderColor="Gainsboro" width="1px" Max="0" Min="0" HiddenInput="False" Height="25px" XDataBind="Fin_Freeze_Payment.AppAccount"></aspxform:XTextBox>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator5" runat="server" ValidationGroup="VG1" ControlToValidate="XTextBox6" ErrorMessage="供应商代码不能为空" Display="None">供应商</aspxform:XRequiredFieldValidator>
                        <aspxform:XRequiredFieldValidator id="XRequiredFieldValidator6" runat="server" ValidationGroup="VG1" ControlToValidate="XDropDownList1" ErrorMessage="选择币种" Display="None">币种</aspxform:XRequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="32">
                        <div align="center">
                            <aspxform:XLabel id="XLabel12" runat="server" Font-Size="X-Small" text="涉及金额:" ValueToDisplayText Value></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <aspxform:XTextBox id="XTextBox9" runat="server" ValueToDisplayText Value width="260px" Max="0" Min="0" HiddenInput="False" Height="25px" CssClass="BOXCSS" XDataBind="Fin_Freeze_Payment.FreezeMoney"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="center">
                            <aspxform:XLabel id="XLabel20" runat="server" Font-Size="X-Small" text="币种:" ValueToDisplayText Value></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                        <div align="left">
                            <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="Fin_Freeze_Payment.Unit" PromptText="请选择" ValueColumn="Unit" DisplayColumn="Unit" XDataSource="TableName:Fin_R_Rate;BufferType:RuntimeUpdate">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23">
                        <div align="center">
                            <aspxform:XLabel id="XLabel11" runat="server" Font-Size="X-Small" text="冻结事由:" ValueToDisplayText Value></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf">
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="62" colspan="4">
                        <div align="center">
                            <aspxform:XTextBox id="XTextBox8" runat="server" ValueToDisplayText Value BorderWidth="1px" width="795px" Max="0" Min="0" HiddenInput="False" Height="59px" XDataBind="Fin_Freeze_Payment.FreezeReason" TextMode="MultiLine"></aspxform:XTextBox>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="28">
                        <div align="center">
                            <aspxform:XLabel id="XLabel17" runat="server" Font-Size="X-Small" text="解结事由:" ValueToDisplayText Value></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf">
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="68" colspan="4">
                        <div align="center">
                            <aspxform:XTextBox id="XTextBox12" runat="server" ValueToDisplayText Value BorderWidth="1px" width="791px" Max="0" Min="0" HiddenInput="False" Height="64px" CssClass="BOXCSS" XDataBind="Fin_Freeze_Payment.UnfreezeReason" TextMode="MultiLine"></aspxform:XTextBox>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                        <div align="center">
                            <aspxform:XLabel id="XLabel14" runat="server" Font-Size="X-Small" text="上传处罚函附件:" ValueToDisplayText Value Width="99px"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="4">
                        <aspxform:XAttachments id="XAttachments1" runat="server" BorderColor="#D1DEDF" width="100%" XDataBind="Fin_Freeze_Payment.Attachment" BackColor="#F0F0F0"></aspxform:XAttachments>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="806" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" colspan="2">
                        &nbsp;&nbsp;<aspxform:XLabel id="XLabel15" runat="server" Font-Size="X-Small" text="审批信息" ValueToDisplayText Value></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="72" colspan="2">
                        <div align="center">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderWidth="1px" BorderColor="Gainsboro" width="797px" Height="70px" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="75" colspan="2">
                        <div align="left">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" BorderWidth="1" BorderColor="#dcdcdc" CssClass="AA" Width="800px"></aspxform:XSignTrace>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="25" width="638">
                        <div align="center">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                        </div>
                    </td>
                    <td width="162">
                        <aspxform:XPrintButton id="XPrintButton1" runat="server" HiddenExpress='Global.StepName=="开始"'></aspxform:XPrintButton>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="800" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="18" width="806">
                        <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.9.1.min.js"></script>
                        <script type="text/javascript">
          document.write('<script type="text/javascript" charset="gb2312"   src="' + rootUrl + 'MyApp/Demo/TaskComment/taskcomment.js"><\/script>');
           </script>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
