<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform= "xmlns:xform" xmlns:aspxform= "xmlns:aspxform">
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
        <!-- Insert content here -->
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" width="288">
                        <font face="微软雅黑" color="#004080" size="4"><strong>Grid动态表</strong></font></td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="68">
                        <p align="center">
                            <strong><font face="微软雅黑" color="#004080">日期</font></strong> 
                        </p>
                    </td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="96">
                        <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" Width="100%" XDataBind="DemoTable2.Time1" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="69">
                        <p align="center">
                            <font face="微软雅黑" color="#004080"><strong>流水号</strong></font> 
                        </p>
                    </td>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="111">
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
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0" dynamicarea="2,1">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" bgcolor="#2a9dd4" colspan="4" height="21">
                        <strong><font face="微软雅黑" color="white">普通Grid表</font></strong></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" width="159" height="20">
                        <font face="微软雅黑" color="#004080"><strong>物品编号</strong></font></td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="156">
                        <strong><font face="微软雅黑" color="#004080">物品名称</font></strong></td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="156">
                        <strong><font face="微软雅黑" color="#004080">需要数量</font></strong></td>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="156">
                        <strong><font face="微软雅黑" color="#004080">库存数量</font></strong></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" height="24">
                        <aspxform:XDropDownList id="XDropDownList1" runat="server" Width="100%" XDataBind="DemoDetailTable3.Str1" XDataSource="TableName:DemoSrcProduct" DisplayColumn="GoodsItem" ValueColumn="GoodsItem" DataMap="Goods->DemoDetailTable3.Str2;Store->DemoDetailTable3.Qty2">
                            <asp:ListItem>未绑定</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="DemoDetailTable3.Str2" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                        <strong><font face="微软雅黑" color="#004080">
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="DemoDetailTable3.Qty1" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                        </font></strong></td>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="DemoDetailTable3.Qty2" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td height="15">
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
        <p>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0" dynamicarea="1,3">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" bgcolor="#2a9dd4" colspan="4" height="21">
                            <strong><font face="微软雅黑" color="white">Grid表二重嵌套</font></strong></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" colspan="2" height="20">
                            <strong><font face="微软雅黑" color="#004080">产品类别</font></strong></td>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" colspan="2">
                            <aspxform:XDropDownList id="XDropDownList6" runat="server" Width="100%" XDataBind="DemoDetailTable8.Str1" XDataSource="TableName:DemoSrcType" DisplayColumn="Type" ValueColumn="Type" DataMap="Type->DemoDetailTable2.Str1">
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
                        <td class="NoPadding" style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" colspan="4" height="55">
                            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="615" align="center" border="0" dynamicarea="2,1" xdatasource="TableName:DemoDetailTable2;Filter:Str1->DemoDetailTable8.Str1">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" width="102" bgcolor="#2a9dd4" colspan="6">
                                            <strong><font face="微软雅黑" color="white">明细</font></strong></td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" width="102">
                                            <strong><font face="微软雅黑" color="#004080">种类</font></strong></td>
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
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" width="102">
                                            <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="DemoDetailTable2.Str1" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" height="23">
                                            <aspxform:XDropDownList id="XDropDownList7" runat="server" Width="100%" XDataBind="DemoDetailTable2.Str2" XDataSource="TableName:DemoSrcGroup;Filter:Type->DemoDetailTable2.Str1" DisplayColumn="ID" ValueColumn="ID" DataMap="Name->DemoDetailTable2.Str3;UnitPrice->DemoDetailTable2.Money1">
                                                <asp:ListItem>未绑定</asp:ListItem>
                                            </aspxform:XDropDownList>
                                        </td>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                                            <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="DemoDetailTable2.Str3" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                                            <aspxform:XTextBox id="XTextBox16" runat="server" XDataBind="DemoDetailTable2.Money1" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="184">
                                            <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="DemoDetailTable2.Qty1" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                                        </td>
                                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="126">
                                            <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="DemoDetailTable2.Sum1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Express="DemoDetailTable2.Money1*DemoDetailTable2.Qty1"></aspxform:XTextBox>
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
                        <td style="BORDER-TOP: medium none" width="254">
                        </td>
                        <td style="BORDER-TOP: medium none" width="145">
                            <p align="right">
                                &nbsp;<font face="微软雅黑" color="#004080"><strong>总计</strong></font> 
                            </p>
                        </td>
                        <td style="BORDER-TOP: medium none" width="150">
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
            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
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
            <font color="#ff0000">1、将鼠标移到“普通Grid表”表格的右边，点击出现的三角箭头，选择添加行的位置，就可在指定位置添加一行。</font> 
        </p>
        <p>
            <font color="#ff0000">2、选择物品编号，物品名称和库存数量就会根据所选的物品编号自动填入数据，再根据需求填入需要数量。</font> 
        </p>
        <p align="left">
            <font color="red">3、选中产品类别下拉框中的一个类别，在明细表中产品编号下拉框中的数据已经通过过滤，选中一个产品编号，产品名称和单价自动填入数据。</font> 
        </p>
        <p align="left">
            <font color="red">4、将鼠标移到“Grid表二重嵌套”表格的右边，点击三角箭头，选择添加位置，就可添加一个大类。</font> 
        </p>
        <p align="left">
            <font color="red">5、将鼠标移到“明细”表的右边，点击三角箭头，选择添加位置，就可添加一行数据。</font> 
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
            <font color="#ff0000">功能实现：</font> 
        </p>
        <p align="left">
            <font color="red">1、选择要设置的表，设置属性"DynamicArea"中的"StarRowIndex"和"RowCount"属性，其中前者是从第几行开始，后者是需要增加的行数</font> 
        </p>
        <p align="left">
            <font color="red">2、选择产品类别下拉框，设置属性"XDataSource"。</font> 
        </p>
        <p align="left">
            <font color="red">3、选中产品编号下拉框，设置属性"XDataSource"中的"Filter"属性。设置属性"DataMap"。</font> 
        </p>
        <p align="left">
        </p>
    </form>
</body>
</html>
