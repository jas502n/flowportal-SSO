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
                    <td style="BORDER-RIGHT: #204890 1px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #204890 2px solid" width="263" bgcolor="transparent" height="37">
                        <p align="left">
                            <font face="微软雅黑" color="#004080" size="4"><strong>初始值</strong></font> 
                        </p>
                    </td>
                    <td style="BORDER-RIGHT: #204890 1px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #204890 2px solid" width="74">
                        <p align="center">
                            <font face="微软雅黑" color="#00407e"><strong>日期</strong></font> 
                        </p>
                    </td>
                    <td style="BORDER-RIGHT: #204890 1px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #204890 2px solid" width="112">
                        <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="DemoTable2.Time1" Width="100%"></aspxform:XDateTimePicker>
                    </td>
                    <td style="BORDER-RIGHT: #204890 1px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #204890 2px solid" width="80">
                        <p align="center">
                            <font face="微软雅黑" color="#004080"><strong>流水号</strong></font> 
                        </p>
                    </td>
                    <td style="BORDER-RIGHT: #204890 2px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #204890 2px solid" width="96">
                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="DemoTable2.Str1" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none">
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
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" bgcolor="#2a9dd4" colspan="4" height="21">
                        <strong><font face="微软雅黑" color="white">基本信息</font></strong></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" width="96" bgcolor="#fafaff" height="23">
                        <font face="微软雅黑" color="#004080"><strong>申请人</strong></font></td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="217" bgcolor="#fafaff">
                        <font face="微软雅黑" color="#666699">
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="DemoTable4.Str1" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                        </font></td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="97" bgcolor="#fafaff">
                        <font face="微软雅黑" color="#004080"><strong>职位</strong></font></td>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="217" bgcolor="#fafaff">
                        <font face="微软雅黑" color="#666699">
                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="DemoTable4.Str2" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                        </font></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" bgcolor="#fafaff" height="24">
                        <font face="微软雅黑" color="#004080"><strong>工号</strong></font></td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" bgcolor="#fafaff">
                        <font face="微软雅黑" color="#666699">
                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="DemoTable4.Str3" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                        </font></td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" bgcolor="#fafaff">
                        <font face="微软雅黑" color="#004080"><strong>部门</strong></font></td>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" bgcolor="#fafaff">
                        <font face="微软雅黑" color="#666699">
                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="DemoTable4.Str4" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                        </font></td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none" height="15">
                        &nbsp;</td>
                    <td style="BORDER-TOP: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" bgcolor="#2a9dd4" colspan="4" height="24">
                        <font face="微软雅黑" color="white" size="2"><strong>扩展信息</strong></font></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" width="96" bgcolor="#fafaff" height="23">
                        <p align="left">
                            <font face="微软雅黑" color="#666699"><strong><font color="#004080">家庭电话</font></strong></font> 
                        </p>
                    </td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="215" bgcolor="#fafaff">
                        <p align="left">
                            <font face="微软雅黑" color="#666699">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="DemoTable4.Str5" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                            </font>
                        </p>
                    </td>
                    <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="97">
                        <strong><font face="微软雅黑" color="#004080">年龄</font></strong></td>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="219">
                        <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="DemoTable4.Str6" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none" height="15">
                        &nbsp;</td>
                    <td style="BORDER-TOP: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none">
                    </td>
                    <td style="BORDER-TOP: medium none">
                    </td>
                </tr>
            </tbody>
        </table>
        <p>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" bgcolor="#2a9dd4" colspan="4" height="19">
                            <strong><font face="微软雅黑" color="white">复杂信息</font></strong></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" width="96" height="14">
                            <font face="微软雅黑" color="#004080"><strong>操作系统版本号</strong></font></td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" width="217">
                            <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="DemoTable4.Str7" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 1px solid" colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" height="23">
                            <strong><font face="微软雅黑" color="#004080">主机名</font></strong></td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid">
                            <aspxform:XTextBox id="XTextBox11" runat="server" XDataBind="DemoTable4.Str8" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                        </td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="97">
                            <strong><font face="微软雅黑" color="#004080">CPU数目</font></strong></td>
                        <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="217">
                            <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="DemoTable2.Str2" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
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
        </p>
        <p>
            <font color="red">使用说明：</font> 
        </p>
        <p>
            <font color="#ff0000">1、表格中的信息都不需要填写，在打开表格，数据信息自动填写。</font> 
        </p>
        <p>
            <font color="#ff0000">2、如果选择代填，代填人的信息会自动填入到代填人表中。</font> 
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
        </p>
        <p>
            <font color="#ff0000">功能实现：</font> 
        </p>
        <p>
            <font color="#ff0000">1、打开“初始值”流程，右击开始节点，选择属性，点击数据控制。选择流程数据对应的初始值，也可书写代码实现特殊要求。设置好后单击确定，保存退出。</font> 
        </p>
    </form>
</body>
</html>
