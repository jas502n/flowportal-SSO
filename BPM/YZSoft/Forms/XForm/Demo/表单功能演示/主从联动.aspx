<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <title>XForm Test</title> <style>BODY {
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
</style>
</head>
<body>
    <form runat="server">
        <p>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" width="286" height="16">
                            <font face="微软雅黑" color="#004080" size="4"><strong>数据联动</strong></font></td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="67">
                            <p align="center">
                                <font color="#004080">日期</font> 
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="95">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="DemoTable2.Time1" Width="100%"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="67">
                            <p align="center">
                                <font color="#004080">流水号</font> 
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="109">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="DemoTable2.Str1" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                </tbody>
            </table>
            <!-- Insert content here -->
        </p>
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" bgcolor="#2a9dd4" colspan="4" height="17">
                        <font color="white"><strong>普通联动</strong></font></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" width="96" height="21">
                        <font face="微软雅黑" color="#004080"><strong>国家</strong></font></td>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" colspan="3">
                        <font face="微软雅黑" color="#004080"></font><font face="微软雅黑" color="#004080"></font><font face="微软雅黑" color="#004080">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" XDataBind="DemoTable6.Str1" Width="100%" ValueColumn="Country" DisplayColumn="Country" XDataSource="TableName:DemoSrcCountry">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                        </font></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" height="20">
                        <font face="微软雅黑" color="#004080"><strong>省市</strong></font></td>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" colspan="3">
                        <font face="微软雅黑" color="#004080"></font><font face="微软雅黑" color="#004080"></font><font face="微软雅黑" color="#004080">
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" XDataBind="DemoTable6.Str2" Width="100%" ValueColumn="County" DisplayColumn="County" XDataSource="TableName:DemoSrcCounty;Filter:Country->DemoTable6.Str1">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                        </font></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" height="21">
                        <font face="微软雅黑" color="#004080"><strong>区县</strong></font></td>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" colspan="3">
                        <aspxform:XDropDownList id="XDropDownList3" runat="server" XDataBind="DemoTable6.Str3" Width="100%" ValueColumn="Area" DisplayColumn="Area" XDataSource="TableName:DemoSrcArea;Filter:County->DemoTable6.Str2">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none" height="15">
                        &nbsp;</td>
                    <td style="BORDER-TOP: medium none" width="218">
                    </td>
                    <td style="BORDER-TOP: medium none" width="127">
                    </td>
                    <td style="BORDER-TOP: medium none" width="191">
                    </td>
                </tr>
            </tbody>
        </table>
        <p>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0" dynamicarea="2,1">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" bgcolor="#2a9dd4" colspan="3" height="14">
                            <strong><font face="微软雅黑" color="white">Grid表中的主从联动</font></strong></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" width="212" height="21">
                            <strong><font face="微软雅黑" color="#004080">国家</font></strong></td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="212">
                            <strong><font face="微软雅黑" color="#004080">省市</font></strong></td>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="212">
                            <strong><font face="微软雅黑" color="#004080">区县</font></strong></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" height="23">
                            <aspxform:XDropDownList id="XDropDownList4" runat="server" XDataBind="DemoDetailTable5.Str1" Width="100%" ValueColumn="Country" DisplayColumn="Country" XDataSource="TableName:DemoSrcCountry">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                            <aspxform:XDropDownList id="XDropDownList5" runat="server" XDataBind="DemoDetailTable5.Str2" Width="100%" ValueColumn="County" DisplayColumn="County" XDataSource="TableName:DemoSrcCounty;Filter:Country->DemoDetailTable5.Str1">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                            <aspxform:XDropDownList id="XDropDownList6" runat="server" XDataBind="DemoDetailTable5.Str3" Width="100%" ValueColumn="Area" DisplayColumn="Area" XDataSource="TableName:DemoSrcArea;Filter:County->DemoDetailTable5.Str2">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" bgcolor="#2a9dd4" colspan="3" height="21">
                            <strong><font face="微软雅黑" color="white">按钮联动</font></strong></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" width="224" height="19">
                            <strong><font face="微软雅黑" color="#004080">姓名</font></strong></td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="201">
                            <strong><font face="微软雅黑" color="#004080">部门</font></strong></td>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="205">
                            <strong><font face="微软雅黑" color="#004080">职位</font></strong></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" height="24">
                            <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="DemoTable5.Str1" BorderColor="Gainsboro" BorderWidth="1px" width="187px" Max="0" Min="0" Format=".2"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="32px" Text="..." DataMap="Account->DemoTable5.Str1;LeaderTitle->DemoTable5.Str3;Department->DemoTable5.Str2" NavigateUrl="~\FormSupport\SelUser.aspx" Height="21px" PopupWndY="100" PopupWndX="100" PopupWndWidth="400" PopupWndHeight="500"></aspxform:XSelectUserButton>
                        </td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                            <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="DemoTable5.Str2" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                            <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="DemoTable5.Str3" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-TOP: medium none" height="15">
                        </td>
                        <td style="BORDER-TOP: medium none">
                        </td>
                        <td style="BORDER-TOP: medium none">
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0" dynamicarea="1,3">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" bgcolor="#2a9dd4" colspan="4" height="21">
                            <strong><font face="微软雅黑" color="white">嵌套表数据联动</font></strong></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" colspan="2" height="20">
                            <strong><font face="微软雅黑" color="#004080">产品类别</font></strong></td>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" colspan="2">
                            <aspxform:XDropDownList id="XDropDownList7" runat="server" XDataBind="DemoDetailTable8.Str1" Width="100%" ValueColumn="Type" DisplayColumn="Type" XDataSource="TableName:DemoSrcType" DataMap="Type->DemoDetailTable2.Str1">
                                <asp:ListItem>未绑定</asp:ListItem>
                            </aspxform:XDropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: medium none">
                            &nbsp;</td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none">
                        </td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none">
                        </td>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none">
                        </td>
                    </tr>
                    <tr>
                        <td class="NoPadding" style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" colspan="4" height="33">
                            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="615" align="center" border="0" xdatasource="TableName:DemoDetailTable2;Filter:Str1->DemoDetailTable8.Str1" dynamicarea="2,1">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" width="102" bgcolor="#2a9dd4" colspan="6" height="19">
                                            <strong><font face="微软雅黑" color="white">明细</font></strong></td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" width="102">
                                            <font face="微软雅黑" color="#004080"><strong>种类</strong></font></td>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="179" height="19">
                                            <font face="微软雅黑" color="#004080"><strong>产品编号</strong></font></td>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="189">
                                            <strong><font face="微软雅黑" color="#004080">产品名称</font></strong></td>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="182">
                                            <font face="微软雅黑" color="#004080"><strong>单价</strong></font></td>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="184">
                                            <font face="微软雅黑" color="#004080"><strong>数量</strong></font></td>
                                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="126">
                                            <font face="微软雅黑" color="#004080"><strong>总价格</strong></font></td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" width="102" height="22">
                                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="DemoDetailTable2.Str1" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                                            <aspxform:XDropDownList id="XDropDownList8" runat="server" XDataBind="DemoDetailTable2.Str2" Width="100%" ValueColumn="ID" DisplayColumn="ID" XDataSource="TableName:DemoSrcGroup;Filter:Type->DemoDetailTable2.Str1" DataMap="Name->DemoDetailTable2.Str3;UnitPrice->DemoDetailTable2.Money1">
                                                <asp:ListItem>未绑定</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="DemoDetailTable2.Str3" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                                            <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="DemoDetailTable2.Money1" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="184">
                                            <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="DemoDetailTable2.Qty1" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="126">
                                            <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="DemoDetailTable2.Sum1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Express="DemoDetailTable2.Money1*DemoDetailTable2.Qty1"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-TOP: medium none" width="103">
                                        </td>
                                        <td style="BORDER-TOP: medium none">
                                        </td>
                                        <td style="BORDER-TOP: medium none">
                                        </td>
                                        <td style="BORDER-TOP: medium none">
                                        </td>
                                        <td style="BORDER-TOP: medium none">
                                            <strong><font face="微软雅黑" color="#004080">小计</font></strong></td>
                                        <td style="BORDER-TOP: medium none" width="127">
                                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="DemoDetailTable8.Sum1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Express="sum(DemoDetailTable2.Sum1)"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="86" height="17">
                            <p align="right">
                            </p>
                        </td>
                        <td width="254">
                        </td>
                        <td width="145">
                            <p align="right">
                                &nbsp;<font face="微软雅黑" color="#004080"><strong>总计</strong></font> 
                            </p>
                        </td>
                        <td width="150">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="DemoTable2.Sum1" BorderColor="Gainsboro" BorderWidth="1px" width="100%" Max="0" Min="0" Format=".2" Express="sum(DemoDetailTable8.Sum1)"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp; 
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0" dynamicarea="1,3">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" bgcolor="#2a9dd4" colspan="4" height="19">
                            <strong><font face="微软雅黑" color="white">文本框的数据联动</font></strong></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" colspan="2" height="24">
                            <strong><font face="微软雅黑" color="#004080">产品类别</font></strong></td>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" colspan="2">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="DemoDetailTable7.Str1" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: medium none">
                            &nbsp; 
                        </td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none">
                        </td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none">
                        </td>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none">
                        </td>
                    </tr>
                    <tr>
                        <td class="NoPadding" style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" colspan="4" height="4">
                            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="330" align="center" border="0" dynamicarea="2,1" xdatasource="TableName:DemoSrcGroup;Filter:Type->DemoDetailTable7.Str1" datamap="ID->DemoDetailTable4.Str1;Name->DemoDetailTable4.Str2;UnitPrice->DemoDetailTable4.Money1">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" bgcolor="#2a9dd4" colspan="3" height="21">
                                            <strong><font face="微软雅黑" color="white">明细</font></strong></td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" width="102" height="20">
                                            <font face="微软雅黑" color="#004080"><strong>产品编号</strong></font></td>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="110">
                                            <strong><font face="微软雅黑" color="#004080">产品名称</font></strong></td>
                                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="105">
                                            <font face="微软雅黑" color="#004080"><strong>单价</strong></font></td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" height="25">
                                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="DemoDetailTable4.Str1" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="DemoDetailTable4.Str2" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="DemoDetailTable4.Money1" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-TOP: medium none" width="87" height="14">
                            &nbsp; 
                        </td>
                        <td style="BORDER-TOP: medium none" width="251">
                        </td>
                        <td style="BORDER-TOP: medium none" width="147">
                        </td>
                        <td style="BORDER-TOP: medium none" width="149">
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" bgcolor="#2a9dd4" colspan="4" height="21">
                            <strong><font face="微软雅黑" color="white">多职位信息联动</font></strong></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" width="96" height="23">
                            <strong><font face="微软雅黑" color="#004080">姓名</font></strong></td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="217">
                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="DemoTable3.Str1" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" colspan="2">
                            <font face="微软雅黑" color="#004080"><strong></strong></font></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" height="25">
                            <strong><font face="微软雅黑" color="#004080">职位</font></strong></td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="DemoTable3.Str2" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="97">
                            <strong><font face="微软雅黑" color="#004080">部门</font></strong></td>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="217">
                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="DemoTable3.Str3" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
        </p>
        <p>
            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server" DataMap="MemberFullName->DemoTable3.Str1;LeaderTitle->DemoTable3.Str2;Department->DemoTable3.Str3"></aspxform:XProcessButtonList>
        </p>
        <p>
            <table cellspacing="0" cellpadding="0" width="642" border="0">
                <tbody>
                    <tr>
                        <td width="642">
                            &nbsp;</td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
        </p>
        <p>
            <font color="red">使用说明：</font> 
        </p>
        <p>
            <font color="#ff0000">1、选择一个国家，省市将根据国家改变，在选择一个省市，区县也会改变。</font> 
        </p>
        <p>
            <font color="#ff0000">2、Grid表，鼠标移到表格右边，点击三角箭头，选择添加行的位置。</font> 
        </p>
        <p>
            <font color="#ff0000">3、点击姓名文本框旁边的按钮，弹出公司组织结构，可在其中选中一个员工，单击确定，员工信息将自动填入相应的文本框中。</font> 
        </p>
        <p>
            <font color="#ff0000">4、“嵌套数据联动”表中，选择一个产品类别，其字表“明细”表中的产品编号中的数据就会自动过滤，选择一个编号，其他相应数据自动填入到相应字段中。</font> 
        </p>
        <p>
            <font color="#ff0000">5、“文本框的数据联动”表中，在产品类别文本框中输入一个类别（原材料、成品），其“明细”表中的数据就可自动填入相应的字段中。</font> 
        </p>
        <p>
            <font color="#ff0000">6、“多职位信息联动”表中，在选择职位下拉框中选择一个职位，其表内的数据就可自动填入相应的字段中。</font> 
        </p>
        <p>
            <table cellspacing="0" cellpadding="0" width="642" border="0">
                <tbody>
                    <tr>
                        <td width="642">
                            &nbsp;</td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
            <font color="#ff0000">功能实现：</font> 
        </p>
        <p>
            <font color="#ff0000">1、选中国家下拉框，设置属性"DataSource"。</font> 
        </p>
        <p>
            <font color="#ff0000">2、选中省市下拉框，设置属性"DataSource"中的"Filter"过滤条件为省市数据表中的国家字段等于表单数据表中的国家字段。</font> 
        </p>
        <p>
            <font color="#ff0000">3、选中区县下拉框，设置属性"DataSource"中的"Filter"过滤条件为区县数据表中的省市字段等于表单数据表中的省市字段。</font> 
        </p>
        <p>
            <font color="#ff0000">4、<font color="red">选中控件"XSelectUserButton1 "，设置属性"DataMap"，将数据表中的字段和表单中的字段一一对应。 </font></font>
        </p>
        <p align="left">
            <font color="red">5、“嵌套数据联动”表中，选择产品类别下拉框，设置属性"XDataSource"，选中产品编号下拉框，设置属性"XDataSource"中的"Filter"属性和"DataMap"属性。</font> 
        </p>
        <p align="left">
            <font color="red">6、“文本框的数据联动”表中，选择“明细”表，设置"XDataSource"中的"Filter"属性和"DataMap"属性。</font> 
        </p>
        <p align="left">
            <font color="red">7、选中"XProcessButtonList"控件，设置"DateMap"属性。 </font>
        </p>
        <p align="left">
        </p>
    </form>
</body>
</html>
