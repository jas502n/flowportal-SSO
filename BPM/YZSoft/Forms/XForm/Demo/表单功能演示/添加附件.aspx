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
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" width="286" height="14">
                            <font face="微软雅黑" color="#004080" size="4"><strong>添加附件</strong></font></td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="67">
                            <font face="微软雅黑" color="#004080"><strong>日期</strong></font></td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="95">
                            <aspxform:XDateTimePicker id="XDateTimePicker1" runat="server" XDataBind="DemoTable2.Time1" Width="100%"></aspxform:XDateTimePicker>
                        </td>
                        <td style="BORDER-RIGHT: #004080 1px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: medium none; BORDER-BOTTOM: #004080 2px solid" width="67">
                            <strong><font face="微软雅黑" color="#004080">流水号</font></strong></td>
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
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: #004080 2px solid; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 1px solid" width="640" bgcolor="#2a9dd4" height="19">
                        <font face="微软雅黑" color="white"><strong>添加附件详情</strong></font></td>
                </tr>
                <tr>
                    <td style="BORDER-RIGHT: #004080 2px solid; BORDER-TOP: medium none; BORDER-LEFT: #004080 2px solid; BORDER-BOTTOM: #004080 2px solid" height="105">
                        <aspxform:XAttachments id="XAttachments1" runat="server"></aspxform:XAttachments>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </tbody>
        </table>
        <p>
            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
        </p>
        <p>
        </p>
        <p>
            <font color="red">使用说明：</font> 
        </p>
        <p>
            <font color="#ff0000">1、点击添加新附件，出现浏览控件，点击浏览，选择要上传的文件。</font> 
        </p>
        <p>
            <font color="#ff0000">2、点击删除将要删除的附件删除。</font> 
        </p>
        <p>
        </p>
        <p>
            <font color="#ff0000">功能实现：</font> 
        </p>
        <p>
            <font color="#ff0000">1、将控件"XProcessButton"拖到指定位置即可，无需对属性设置。</font> 
        </p>
    </form>
</body>
</html>
