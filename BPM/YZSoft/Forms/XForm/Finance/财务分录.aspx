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
</style>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <aspxform:XLabel id="XLabel6" runat="server" ForeColor="Gray" text="科目的简短说明"></aspxform:XLabel>
        <aspxform:XTextBox id="XTextBox4" runat="server" HiddenInput="True" XDataBind="Fin_FinanceEntriesHeader.UserAccount" BorderWidth="1" BorderColor="#DCDCDC"></aspxform:XTextBox>
        <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="Fin_FinanceEntriesHeader.Date" BorderWidth="1" BorderColor="#DCDCDC" HiddenExpress="1"></aspxform:XDateTimePicker>
        <table border="0" cellspacing="0" cellpadding="0" width="1500">
            <tbody>
                <tr>
                    <td height="33">
                        <p align="center">
                            <aspxform:XLabel id="XLabel14" runat="server" text="财务分录表" Font-Bold="True" Font-Size="Medium" Font-Names="Tahoma"></aspxform:XLabel>
                        </p>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1708" dynamicarea="3,1">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: medium none" height="36" width="88">
                        <div align="center">
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: medium none" width="53">
                        <div align="center">
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: medium none" width="137">
                        <div align="center">
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: medium none" width="51">
                    </td>
                    <td style="BORDER-BOTTOM: medium none" width="97">
                    </td>
                    <td style="BORDER-BOTTOM: medium none" width="162">
                    </td>
                    <td style="BORDER-BOTTOM: medium none" width="194">
                    </td>
                    <td style="BORDER-BOTTOM: medium none" width="64">
                    </td>
                    <td style="BORDER-BOTTOM: medium none" width="48">
                    </td>
                    <td style="BORDER-BOTTOM: medium none" width="83">
                    </td>
                    <td style="BORDER-BOTTOM: medium none" width="106">
                    </td>
                    <td style="BORDER-BOTTOM: medium none" width="112">
                    </td>
                    <td style="BORDER-BOTTOM: medium none" width="168">
                    </td>
                    <td style="BORDER-BOTTOM: medium none" width="99">
                    </td>
                    <td style="BORDER-BOTTOM: medium none" width="107">
                    </td>
                    <td width="107">
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="23">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                        <aspxform:XLabel id="XLabel5" runat="server" ForeColor="Gray" text="公司"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                        <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="Fin_FinanceEntriesHeader.Company" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" width="107">
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent" height="23">
                        <div align="center">
                            <aspxform:XLabel id="XLabel21" runat="server" ForeColor="Gray" text="编号"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel22" runat="server" ForeColor="Gray" text="凭证类型"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel23" runat="server" ForeColor="Gray" text="抬头文本"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel24" runat="server" ForeColor="Gray" text="记账码"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel25" runat="server" ForeColor="Gray" text="账户"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel26" runat="server" ForeColor="Gray" text="科目的简短说明"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel1" runat="server" ForeColor="Gray" text="总帐特别标志"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel27" runat="server" ForeColor="Gray" text="报销人"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel28" runat="server" ForeColor="Gray" text="币种"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel29" runat="server" ForeColor="Gray" text="金额"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel2" runat="server" ForeColor="Gray" text="成本中心"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel3" runat="server" ForeColor="Gray" text="订单"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel30" runat="server" ForeColor="Gray" text="内容"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel4" runat="server" ForeColor="Gray" text="业务类型"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="transparent">
                        <div align="center">
                            <aspxform:XLabel id="XLabel31" runat="server" ForeColor="Gray" text="凭证日期"></aspxform:XLabel>
                        </div>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" width="107" align="middle">
                        <aspxform:XLabel id="XLabel8" runat="server" ForeColor="Gray" text="现金流量表" Value ValueToDisplayText></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                        <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="Fin_FinanceEntries.NO" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="Fin_FinanceEntries.CertificateType" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox17" runat="server" HiddenInput="False" XDataBind="Fin_FinanceEntries.RiseText" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox18" runat="server" HiddenInput="False" XDataBind="Fin_FinanceEntries.BillingCode" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" width="27px"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox6" runat="server" HiddenInput="False" XDataBind="Fin_FinanceEntries.Flag_Bschl" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" width="11px" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox19" runat="server" HiddenInput="False" XDataBind="Fin_FinanceEntries.Account" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" width="71px"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox8" runat="server" HiddenInput="False" XDataBind="Fin_FinanceEntries.Flag_Xnr" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" width="11px" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="Fin_FinanceEntries.Directions" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox21" runat="server" HiddenInput="False" XDataBind="Fin_FinanceEntries.Mark" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" width="90%"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox11" runat="server" HiddenInput="False" XDataBind="Fin_FinanceEntries.Flag_Zumsk" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" width="11px" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="Fin_FinanceEntries.ClaimsWere" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="Fin_FinanceEntries.Currency" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox24" runat="server" HiddenInput="False" XDataBind="Fin_FinanceEntries.Amount" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" width="59px" Format="type:currency;.2"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox7" runat="server" HiddenInput="False" XDataBind="Fin_FinanceEntries.Flag_Sum" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" width="11px" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox25" runat="server" HiddenInput="False" XDataBind="Fin_FinanceEntries.CostCenter" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" width="83px"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox10" runat="server" HiddenInput="False" XDataBind="Fin_FinanceEntries.Flag_Kst" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" width="11px" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="Fin_FinanceEntries.OrderN" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="Fin_FinanceEntries.ContentN" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox3" runat="server" HiddenInput="False" XDataBind="Fin_FinanceEntries.BusinessType" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" width="68px"></aspxform:XTextBox>
                        <aspxform:XTextBox id="XTextBox12" runat="server" HiddenInput="False" XDataBind="Fin_FinanceEntries.Flag_Bwasl" BorderWidth="1px" BorderColor="Gainsboro" Max="0" Min="0" width="11px" BackColor="#F0F0F0" BorderStyle="None" ReadOnly="True"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="Fin_FinanceEntries.CertificateDate" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" width="107">
                        <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="Fin_FinanceEntries.CashCode" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
            <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="1708">
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
