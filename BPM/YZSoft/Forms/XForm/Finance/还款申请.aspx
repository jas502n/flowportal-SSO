<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
        {
           XTextBox43.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
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
.TextBox {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: silver 1px solid
}
TEXTAREA {
	BORDER-RIGHT: #ffffff 0px solid; BORDER-TOP: #ffffff 0px solid; OVERFLOW-Y: visible; BACKGROUND: #ffffff; OVERFLOW: hidden; BORDER-LEFT: #ffffff 0px solid; BORDER-BOTTOM: #ffb3a7 0px solid
}
</style>
    <script language="javascript" type="text/javascript">
function CorporationDiff(fullname)
{
    var Corporation,company;
    Corporation=fullname.toString().split("/");
    company=Corporation[2].toString();
    return company;
}
    </script>
</head>
<body>
    <form runat="server">
        <div align="center">
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="38" width="20%">
                            <div align="center">
                                <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                            </div>
                        </td>
                        <td width="60%">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel13" runat="server" Font-Bold="True" Font-Size="Medium" text="还款申请单" Font-Names="Tahoma"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                        <td width="20%">
                            <aspxform:XLabel id="XLabel59" runat="server" Font-Size="Small" Font-Names="Arial Black" XDataBind="Fin_Applicant.SN"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="33" colspan="3" align="middle">
                            <aspxform:XTextBox id="tbxCorporation" runat="server" XDataBind="Fin_Repayment.Corporation" BorderWidth="0px" BorderColor="GhostWhite" Max="0" Min="0" HiddenInput="False" Width="207px" Express="javascript('CorporationDiff',Company)" Value ValueToDisplayText TextAlign="Center"></aspxform:XTextBox>
                            <div align="center">
                            </div>
                        </td>
                    </tr>
                    <tr>
                    </tr>
                </tbody>
            </table>
            <!-- Insert content here -->
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="4">
                            <aspxform:XLabel id="XLabel16" runat="server" text="还款明细" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="112">
                            <aspxform:XLabel id="XLabel4" runat="server" text="还款人姓名" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="266">
                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="Fin_Repayment.Name" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" width="133px"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="80px" Text="选择还款人" DataMap="DisplayName->Fin_Repayment.Name;HRID->Fin_Repayment.HRID"></aspxform:XSelectUserButton>
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="Fin_Repayment.HRID" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" width="35px" BorderStyle="Dotted"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="112">
                            <aspxform:XLabel id="XLabel15" runat="server" text="还款金额" ForeColor="Gray"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="265">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="Fin_Repayment.Amount" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" Express="var2" width="100%" BorderStyle="Groove"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#ffffff" height="36" width="649" colspan="2">
                            <aspxform:XTextBox id="XTextBox33" runat="server" XDataBind="var" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="sum(if(Fin_CE_Pay_C_Info.State==1,if(Fin_CE_Pay_C_Info.Amount=='',0,Fin_CE_Pay_C_Info.Amount),0))" width="47px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox36" runat="server" XDataBind="var1" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="sum(if(Fin_CE_Pay_Info.State==1,if(Fin_CE_Pay_Info.Amount=='',0,Fin_CE_Pay_Info.Amount),0))" width="47px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="var2" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Express="if(var=='',0,var)+if(var1=='',0,var1)+if(Fin_Repayment.Total=='',0,Fin_Repayment.Total)" width="47px"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764" dynamicarea="2,1" xdatasource="TableName:V_Fin_Loan_Info_ForHuanKuanFushu;Filter:HRID->Fin_Repayment.HRID" datamap="SN->Fin_ClaimingExpenses_LoanInfo.LoanSN;Amount->Fin_ClaimingExpenses_LoanInfo.LoanAmount;Remain->Fin_ClaimingExpenses_LoanInfo.Remain;Reason->Fin_ClaimingExpenses_LoanInfo.Reason;Date->Fin_ClaimingExpenses_LoanInfo.Date;RunningAmount->Fin_ClaimingExpenses_LoanInfo.RunningAmount">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="7">
                            <font color="black" face="Arial">借款明细</font></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="95">
                            <div align="right">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="27" width="43">
                            <div align="center">
                                <aspxform:XLabel id="XLabel30" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="126">
                            <div align="center">
                                <aspxform:XLabel id="XLabel37" runat="server" text="借款单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="77">
                            <div align="center">
                                <aspxform:XLabel id="XLabel38" runat="server" text="借款金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="87">
                            <div align="center">
                                <aspxform:XLabel id="XLabel39" runat="server" text="剩余借款" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="100">
                            <div align="center">
                                <aspxform:XLabel id="XLabel6" runat="server" text="在途审批金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="101">
                            <div align="center">
                                <aspxform:XLabel id="XLabel49" runat="server" text="事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="110">
                            <div align="center">
                                <aspxform:XLabel id="XLabel5" runat="server" text="预计还款报销日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel50" runat="server" text="本次冲抵金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo5" runat="server" BorderWidth="1" BorderColor="#DCDCDC" Width="100%">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox40" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanSN" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox41" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.LoanAmount" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox42" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Remain" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.RunningAmount" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="False" DisableBehavior="ReadOnly" width="98px" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="varloan" BorderWidth="1" BorderColor="#DCDCDC" HiddenInput="True" Express="(Fin_ClaimingExpenses_LoanInfo.Remain-Fin_ClaimingExpenses_LoanInfo.RunningAmount)" width="100%" Format="type:currency;.2"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox43" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Reason" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True" TextMode="MultiLine"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.Date" BorderWidth="1" BorderColor="#DCDCDC" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox44" runat="server" XDataBind="Fin_ClaimingExpenses_LoanInfo.OffsetAmount" BorderWidth="1" BorderColor="#DCDCDC" DisableBehavior="ReadOnly" width="100%" BorderStyle="Groove"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="transparent" height="24">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" colspan="2">
                            <div align="right">
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="Fin_Repayment.Amount_Loan" BorderWidth="1" BorderColor="#DCDCDC" Express="sum(Fin_ClaimingExpenses_LoanInfo.Remain)" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="Fin_Repayment.Amount_Running" BorderWidth="1" BorderColor="#DCDCDC" Express="sum(Fin_ClaimingExpenses_LoanInfo.RunningAmount)" DisableBehavior="ReadOnly" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid">
                            <div align="right">
                                <aspxform:XLabel id="XLabel51" runat="server" text="合计" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox45" runat="server" XDataBind="Fin_Repayment.Total" BorderWidth="1" BorderColor="#DCDCDC" Express="sum(Fin_ClaimingExpenses_LoanInfo.OffsetAmount)" DisableBehavior="ReadOnly" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764" dynamicarea="2,1" xdatasource="TableName:V_Fin_Pay_Info_CE;Filter:HRID->Fin_Repayment.HRID" datamap="SN->Fin_CE_Pay_Info.PaySN;Payee->Fin_CE_Pay_Info.Payee;Amount_GZ->Fin_CE_Pay_Info.Amount;Date->Fin_CE_Pay_Info.Date;Reason->Fin_CE_Pay_Info.Reason">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="5">
                            <font color="black" face="Arial">
                            <aspxform:XLabel id="XLabel8" runat="server" text="个人挂账费用明细"></aspxform:XLabel>
                            </font></td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="109">
                            <div align="right">
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="71">
                            <div align="right">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="24" width="40">
                            <div align="center">
                                <aspxform:XLabel id="XLabel29" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="116">
                            <div align="center">
                                <aspxform:XLabel id="XLabel31" runat="server" text="付费单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="119">
                            <div align="center">
                                <aspxform:XLabel id="XLabel32" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="135">
                            <div align="center">
                                <aspxform:XLabel id="XLabel33" runat="server" text="预计取回发票日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" width="152">
                            <div align="center">
                                <aspxform:XLabel id="XLabel34" runat="server" text="付款事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <div align="center">
                                <aspxform:XLabel id="XLabel35" runat="server" text="金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                            <div align="center">
                                <div align="center">
                                    <aspxform:XLabel id="XLabel40" runat="server" text="本次冲抵" ForeColor="Gray"></aspxform:XLabel>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo2" runat="server" BorderWidth="1" BorderColor="#DCDCDC" Width="100%">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox27" runat="server" XDataBind="Fin_CE_Pay_Info.PaySN" BorderWidth="1" BorderColor="#DCDCDC" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox28" runat="server" XDataBind="Fin_CE_Pay_Info.Payee" BorderWidth="1" BorderColor="#DCDCDC" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox29" runat="server" XDataBind="Fin_CE_Pay_Info.Date" BorderWidth="1" BorderColor="#DCDCDC" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox30" runat="server" XDataBind="Fin_CE_Pay_Info.Reason" BorderWidth="1" BorderColor="#DCDCDC" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox31" runat="server" XDataBind="Fin_CE_Pay_Info.Amount" BorderWidth="1" BorderColor="#DCDCDC" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <div align="center">
                                <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="Fin_CE_Pay_Info.State" Text=" "></aspxform:XCheckBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764" dynamicarea="2,1" xdatasource="TableName:V_Fin_Pay_C_Info_CE;Filter:HRID->Fin_Repayment.HRID" datamap="SN->Fin_CE_Pay_C_Info.PaySN;Payee->Fin_CE_Pay_C_Info.Payee;Amount_GZ->Fin_CE_Pay_C_Info.Amount;Date->Fin_CE_Pay_C_Info.Date;Reason->Fin_CE_Pay_C_Info.Reason">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="7">
                            <aspxform:XLabel id="XLabel9" runat="server" text="公司挂账费用明细"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="41">
                            <div align="center">
                                <aspxform:XLabel id="XLabel10" runat="server" text="序号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="117">
                            <div align="center">
                                <aspxform:XLabel id="XLabel12" runat="server" text="付费单号" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="120">
                            <div align="center">
                                <aspxform:XLabel id="XLabel14" runat="server" text="收款单位" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="136">
                            <div align="center">
                                <aspxform:XLabel id="XLabel28" runat="server" text="预计取回发票日期" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="153">
                            <div align="center">
                                <aspxform:XLabel id="XLabel36" runat="server" text="付款事由" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="110">
                            <div align="center">
                                <aspxform:XLabel id="XLabel41" runat="server" text="金额" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="73">
                            <div align="center">
                                <aspxform:XLabel id="XLabel42" runat="server" text="本次冲抵" ForeColor="Gray"></aspxform:XLabel>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                            <aspxform:XGridLineNo id="XGridLineNo3" runat="server" BorderWidth="1" BorderColor="#DCDCDC" Width="100%">1</aspxform:XGridLineNo>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox21" runat="server" XDataBind="Fin_CE_Pay_C_Info.PaySN" BorderWidth="1" BorderColor="#DCDCDC" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="Fin_CE_Pay_C_Info.Payee" BorderWidth="1" BorderColor="#DCDCDC" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="Fin_CE_Pay_C_Info.Date" BorderWidth="1" BorderColor="#DCDCDC" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox24" runat="server" XDataBind="Fin_CE_Pay_C_Info.Reason" BorderWidth="1" BorderColor="#DCDCDC" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <aspxform:XTextBox id="XTextBox25" runat="server" XDataBind="Fin_CE_Pay_C_Info.Amount" BorderWidth="1" BorderColor="#DCDCDC" width="100%" BorderStyle="None" BackColor="#F0F0F0" ReadOnly="True"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                            <div align="center">
                                <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="Fin_CE_Pay_C_Info.State" Text=" "></aspxform:XCheckBox>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
                <tbody>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="36" colspan="2">
                            <div align="right">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="23" colspan="2">
                            <aspxform:XLabel id="XLabel23" runat="server" text="审批信息" ForeColor="Black"></aspxform:XLabel>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderWidth="1" BorderColor="#DCDCDC" width="100%" BorderStyle="Groove" TextMode="MultiLine" Rows="3"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                            <aspxform:XSignTrace id="XSignTrace1" runat="server" BorderWidth="1" BorderColor="#dcdcdc" Width="100%" CssClass="AA"></aspxform:XSignTrace>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: white 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="24" valign="bottom" width="50" align="right">
                            <aspxform:XPrintButton id="XPrintButton1" runat="server" Width="80px" Height="20px"></aspxform:XPrintButton>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" valign="bottom" width="750" align="middle">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="MemberFullName->Company;Department->Fin_Repayment.Corporation" DorpDownListCssClass="b" SystemBtnCssClass="a" ProcessBtnCssClass="a" PositionDisplayType="FullName"></aspxform:XProcessButtonList>
                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="Fin_Applicant.Dept" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" HiddenInput="True" Value ValueToDisplayText width="131px"></aspxform:XTextBox>
                            <aspxform:XTextBox id="XTextBox126" runat="server" XDataBind="Company" BorderWidth="1" BorderColor="#DCDCDC" width="10px" HiddenExpress="1"></aspxform:XTextBox>
                        </td>
                    </tr>
                </tbody>
            </table>
            <aspxform:XCompareValidator id="XCompareValidator1" runat="server" Display="None" ErrorMessage="还款总额和冲抵总额不相等！" ControlToValidate="XTextBox11" ControlToCompare="XTextBox1" ValidationGroup="Star" Type="Double">还款金额</aspxform:XCompareValidator>
            <aspxform:XCompareValidator id="XCompareValidator2" runat="server" Display="None" ErrorMessage="冲抵金额超出了借款！" ControlToValidate="XTextBox44" ValidationGroup="Star" Type="Double" ValueToCompareExpress="varloan" Operator="LessThanEqual">每单冲抵额验证</aspxform:XCompareValidator>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="764">
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
