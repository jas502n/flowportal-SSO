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
        <!-- Insert content here -->
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" width="286" height="32">
                        <font face="微软雅黑" color="#004080" size="4"><strong>自动计算</strong></font></td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="67">
                        <p align="center">
                            <strong><font color="#004080">日期</font></strong> 
                        </p>
                    </td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="95">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" Width="100%" XDataBind="DemoTable2.Time1"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="67">
                        <p align="center">
                            <strong><font color="#004080">流水号</font></strong> 
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
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0" dynamicarea="2,1">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" bgcolor="#2a9dd4" colspan="4" height="21">
                        <strong><font face="微软雅黑" color="white">总价计算、Sum计算</font></strong></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" width="157" height="22">
                        <font face="微软雅黑" color="#004080"><strong>产品编号</strong></font></td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="156">
                        <strong><font face="微软雅黑" color="#004080">单价</font></strong></td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="154">
                        <strong><font face="微软雅黑" color="#004080">数量</font></strong></td>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="158">
                        <strong><font face="微软雅黑" color="#004080">小计</font></strong></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" height="23">
                        <aspxform:XDropDownList id="XDropDownList2" runat="server" Width="100%" XDataBind="DemoDetailTable1.Str1">
                            <asp:ListItem>T0001</asp:ListItem>
                            <asp:ListItem>T0002</asp:ListItem>
                            <asp:ListItem>T0003</asp:ListItem>
                        </aspxform:XDropDownList>
                    </td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="DemoDetailTable1.Money1" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="DemoDetailTable1.Qty1" BorderColor="#DCDCDC" BorderWidth="1" width="100%"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="DemoDetailTable1.Sum1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Express="DemoDetailTable1.Money1*DemoDetailTable1.Qty1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" height="15">
                    </td>
                    <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none">
                    </td>
                    <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none">
                    </td>
                    <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
        <p>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" height="48" cellspacing="0" cellpadding="0" width="642" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="480" height="23">
                            <strong><font face="微软雅黑" color="#004080"><strong><font face="微软雅黑" color="#004080"> 
                            <p align="right">
                                <font face="微软雅黑">&nbsp;币种</font> 
                            </p>
                            </font></strong></font></strong></td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" width="158">
                            <strong><font face="微软雅黑" color="#004080"><strong><font face="微软雅黑" color="#004080"> 
                            <p align="right">
                                <aspxform:XDropDownList id="XDropDownList1" runat="server" Width="100%" XDataBind="DemoTable2.Str2" ValueColumn="Price" DisplayColumn="Type" XDataSource="TableName:DemoSrcPrice">
                                    <asp:ListItem>未绑定</asp:ListItem>
                                </aspxform:XDropDownList>
                            </p>
                            </font></strong></font></strong></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" height="25">
                            <p align="right">
                                <strong><font face="微软雅黑" color="#004080"><strong><font face="微软雅黑" color="#004080"><strong><font face="微软雅黑" color="#004080"><strong><font face="微软雅黑" color="#004080">总计</font></strong> </font></strong></font></strong></font></strong>
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none">
                            <strong><font face="微软雅黑" color="#004080"><strong><font face="微软雅黑" color="#004080"><strong><font face="微软雅黑" color="#004080"> 
                            <p align="right">
                                <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="DemoTable2.Sum1" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Express="sum(DemoDetailTable1.Sum1)*DemoTable2.Str2"></aspxform:XTextBox>
                            </p>
                            </font></strong></font></strong></font></strong></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
        </p>
        <p>
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
            <font color="red">1、选择一个产品的编号，输入这个产品的单价以及数量</font> 
        </p>
        <p>
            <font color="red">2、如果需要多个产品，可将鼠标移到表格右边，点击表格右边出现的三角箭头，选择添加一行。</font> 
        </p>
        <p>
            <font color="red">3、小计是自动根据每条记录中的单价和数量计算出一个金额。</font> 
        </p>
        <p>
            <font color="red">4、总计是每行小计的总和。</font> 
        </p>
        <p>
            <font color="red">5、通过选择一种币种，总计的金额会自动进行换算。</font> 
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
            <font color="red">功能实现：</font> 
        </p>
        <p>
            <font color="red">1、所有表中数据与数据库表中数据的连接都通过属性中"XDataBind"来设置。</font> 
        </p>
        <p>
            <font color="red">2、动态表达的设置：选中表格，设置属性"DynamicArea"中的"StarRowIndex"和"RowCount"属性,其中前者是从第几行开始，后者是需要增加的行数。</font> 
        </p>
        <p>
            <font color="red">3、自动计算小计的设置：选中文本框，设置属性"Express"，点击…弹出一个表达式窗口，点击插入表单变量，选择单价，选择运算符号乘号，再点击插入表单变量，选择数量字段，最后点击确定。</font> 
        </p>
        <p>
            <font color="red">4、自动计算总计的设置：选择总计文本框，设置属性"Express"，点击…弹出一个表达式窗口，选择Sum函数，点击插入表单变量，选择小计字段，再乘上表单中的汇率字段。</font> 
        </p>
    </form>
</body>
</html>
