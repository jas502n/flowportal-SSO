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
        <p>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #204890 1px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #204890 2px solid" width="286" bgcolor="transparent" height="37">
                            <p align="left">
                                <font face="微软雅黑" color="#004080" size="4"><strong>请假申请单C0001(入门)</strong></font> 
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #204890 1px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #204890 2px solid" width="67">
                            <p align="center">
                                <font face="微软雅黑" color="#00407e"><strong>日期</strong></font> 
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #204890 1px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #204890 2px solid" width="95">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="DemoTable1.Time1" Width="100%"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-RIGHT: #204890 1px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #204890 2px solid" width="67">
                            <p align="center">
                                <font face="微软雅黑" color="#004080"><strong>流水号</strong></font> 
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #204890 2px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #204890 2px solid" width="109">
                            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="DemoTable1.Str1" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
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
        </p>
        <p>
            <font face="微软雅黑" color="#666699"></font>
        </p>
        <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0">
            <tbody>
                <tr>
                    <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: #204890 2px solid; BORDER-BOTTOM: #666699 1px solid" width="96" bgcolor="#fafaff" height="23">
                        <font face="微软雅黑" color="#004080"><strong>申请人</strong></font></td>
                    <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #666699 1px solid" width="217" bgcolor="#fafaff">
                        <font face="微软雅黑" color="#666699">
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="DemoTable1.Str2" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                        </font></td>
                    <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #666699 1px solid" width="97" bgcolor="#fafaff">
                        <font face="微软雅黑" color="#004080"><strong>职位</strong></font></td>
                    <td style="BORDER-RIGHT: #204890 2px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #666699 1px solid" width="217" bgcolor="#fafaff">
                        <font face="微软雅黑" color="#666699">
                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="DemoTable1.Str3" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                        </font></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #204890 2px solid; BORDER-BOTTOM: #204890 2px solid" bgcolor="#fafaff" height="24">
                        <font face="微软雅黑" color="#004080"><strong>工号</strong></font></td>
                    <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #204890 2px solid" bgcolor="#fafaff">
                        <font face="微软雅黑" color="#666699">
                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="DemoTable1.Str4" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                        </font></td>
                    <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #204890 2px solid" bgcolor="#fafaff">
                        <font face="微软雅黑" color="#004080"><strong>部门</strong></font></td>
                    <td style="BORDER-RIGHT: #204890 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #204890 2px solid" bgcolor="#fafaff">
                        <font face="微软雅黑" color="#666699">
                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="DemoTable1.Str5" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                        </font></td>
                </tr>
                <tr>
                    <td style="BORDER-TOP: medium none">
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
            <font face="微软雅黑" color="#666699"></font>
        </p>
        <p>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="642" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #204890 2px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: #204890 2px solid; BORDER-BOTTOM: #666699 1px solid" bgcolor="#2a9dd4" colspan="4" height="23">
                            <font face="微软雅黑" color="white" size="2"><strong>请假详情</strong></font></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #204890 2px solid; BORDER-BOTTOM: #666699 1px solid" width="96" bgcolor="#fafaff" height="22">
                            <p align="left">
                                <font face="微软雅黑" color="#666699"><strong><font color="#004080">请假类型</font></strong> </font>
                            </p>
                        </td>
                        <td style="BORDER-RIGHT: #204890 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #666699 1px solid" bgcolor="#fafaff" colspan="3">
                            <p align="left">
                                <aspxform:XRadioButtonList id="XRadioButtonList1" runat="server" XDataBind="DemoTable1.Str6" Width="100%" Font-Names="Verdana" RepeatDirection="Horizontal">
                                    <asp:ListItem>病假</asp:ListItem>
                                    <asp:ListItem>事假</asp:ListItem>
                                    <asp:ListItem>其它（说明）</asp:ListItem>
                                </aspxform:XRadioButtonList>
                                <font face="微软雅黑" color="#666699"></font>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #204890 2px solid; BORDER-BOTTOM: #666699 1px solid" bgcolor="#fafaff" height="23">
                            <font face="微软雅黑" color="#004080"><strong>开始</strong></font></td>
                        <td style="BORDER-RIGHT: #204890 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #666699 1px solid" width="217" bgcolor="#fafaff">
                            <aspxform:XDateTimePicker id="XDateTimePicker2" runat="server" XDataBind="DemoTable1.Time2" Width="100%"></aspxform:XDateTimePicker>
                            <font face="微软雅黑" color="#666699"></font></td>
                        <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #666699 1px solid" width="97" bgcolor="#fafaff">
                            <font face="微软雅黑" color="#004080"><strong>总计天数</strong></font></td>
                        <td style="BORDER-RIGHT: #204890 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #666699 1px solid" width="217" bgcolor="#fafaff">
                            <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="DemoTable1.Qty1" width="100%" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
                            <font face="微软雅黑" color="#666699"></font></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #204890 2px solid; BORDER-BOTTOM: #666699 1px solid" bgcolor="#fafaff" height="21">
                            <font face="微软雅黑" color="#004080"><strong>结束</strong></font></td>
                        <td style="BORDER-RIGHT: #204890 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #666699 1px solid" bgcolor="#fafaff">
                            <aspxform:XDateTimePicker id="XDateTimePicker5" runat="server" XDataBind="DemoTable1.Time3" Width="100%"></aspxform:XDateTimePicker>
                            <font face="微软雅黑" color="#666699"></font></td>
                        <td style="BORDER-RIGHT: #204890 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #204890 1px solid" colspan="2">
                            <aspxform:XSnapshotList id="XSnapshotList1" runat="server"></aspxform:XSnapshotList>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #204890 2px solid; BORDER-BOTTOM: #204890 2px solid" bgcolor="#fafaff" height="93">
                            <font face="微软雅黑" color="#004080">事由</font></td>
                        <td style="BORDER-RIGHT: #204890 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #204890 2px solid" bgcolor="#fafaff" colspan="3">
                            <div align="left">
                                <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="DemoTable1.Str7" width="100%" BorderColor="Gainsboro" BorderWidth="1px" Max="0" Min="0" Format=".2" Font-Names="微软雅黑" Height="89px" TextMode="MultiLine" Rows="5"></aspxform:XTextBox>
                                <font face="微软雅黑" color="#666699"></font>
                            </div>
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
        </p>
        <p>
            <font face="微软雅黑" color="#666699"></font>
        </p>
        <p>
            <table style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none" cellspacing="0" cellpadding="0" width="643" border="0">
                <tbody>
                    <tr>
                        <td style="BORDER-RIGHT: #204890 2px solid; BORDER-TOP: #204890 2px solid; BORDER-LEFT: #204890 2px solid; BORDER-BOTTOM: #666699 1px solid" bgcolor="#2a9dd4" colspan="4" height="23">
                            <font face="微软雅黑" color="white" size="2"><strong>审核详情</strong></font></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #204890 2px solid; BORDER-BOTTOM: #666699 1px solid" width="96" bgcolor="#fafaff" height="23">
                            <font face="微软雅黑" color="#004080"><strong>部门经理签字</strong></font></td>
                        <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #666699 1px solid" width="217" bgcolor="#fafaff">
                            <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="DemoTable1.Str8" width="100%" BorderColor="#DCDCDC" BorderWidth="1" Font-Overline="False"></aspxform:XTextBox>
                            <font face="微软雅黑" color="#666699"></font></td>
                        <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #666699 1px solid" width="97" bgcolor="#fafaff">
                            <font face="微软雅黑" color="#004080"><strong>日期</strong></font></td>
                        <td style="BORDER-RIGHT: #204890 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #666699 1px solid" width="218" bgcolor="#fafaff">
                            <aspxform:XDateTimePicker id="XDateTimePicker3" runat="server" XDataBind="DemoTable1.Time4" Width="100%" Height="20px" Value="2008-5-8"></aspxform:XDateTimePicker>
                            <font face="微软雅黑" color="#666699"></font></td>
                    </tr>
                    <tr>
                        <td style="BORDER-RIGHT: #666699 1px solid; BORDER-TOP: medium none; BORDER-LEFT: #204890 2px solid; BORDER-BOTTOM: #204890 2px solid" bgcolor="#fafaff" height="38">
                            <font face="微软雅黑" color="#004080"><strong>经理意见</strong></font></td>
                        <td style="BORDER-RIGHT: #204890 2px solid; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #204890 2px solid" bgcolor="#fafaff" colspan="3">
                            <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="DemoTable1.Str9" width="100%" BorderColor="#DCDCDC" BorderWidth="1" TextMode="MultiLine" Rows="2"></aspxform:XTextBox>
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
        <font color="#ff0000"></font> 
        <p>
            <font color="red">使用说明</font> 
        </p>
        <p>
            <font color="red">1、申请人情况一栏数据不需要填写，由系统根据组织结构的成员信息自动填写；</font> 
        </p>
        <p>
            <font color="red">2、请假详情一栏是要申请人填写的；</font> 
        </p>
        <p>
            <font color="#ff0000">3、领导审核由经理填写。</font> 
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
            <font color="#ff0000"></font>
        </p>
        <p>
            <font color="red"></font>
        </p>
        <p>
            <font color="red">功能实现：</font> 
        </p>
        <p>
            <font color="red">1、请参见表单设计器中各</font><font color="red">组件属性； </font>
        </p>
        <p>
            <font color="red"><font color="red">2、属性中加粗字体为设置生效项</font>；</font> 
        </p>
        <p>
            <font color="#ff0000">3、通过"杂项"&gt;"Items"属性来编辑单选列表按钮的选项内容；</font> 
        </p>
        <p>
            <font color="red">4、表单数据与数据表之间的绑定通过属性中的“XDataBind”来编辑；</font> 
        </p>
        <p>
            <font color="red">5、文本框属性“TextMode”改为“MultiLine”，就可以将单行文本框变成多行文本框了，其中行数是由“Rows”属性来控制的。</font> 
        </p>
        <p>
            <font color="#ff0000">6、系统自动填写功能是由流程设计中的初始值来设置的；</font> 
        </p>
        <p>
            <font color="#ff0000">7、流水号的显示在流程属性中的流水号格式中可以设置；</font> 
        </p>
        <p>
        </p>
        <p>
        </p>
    </form>
</body>
</html>
