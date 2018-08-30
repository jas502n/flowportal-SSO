<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <title>BPM Form</title> <style>BODY {
	FONT-FAMILY: verdana; FONT-SIZE: 12px
}
TABLE {
	BORDER-COLLAPSE: collapse; FONT-FAMILY: verdana; FONT-SIZE: 12px
}
P {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; FONT-FAMILY: verdana; FONT-SIZE: 12px; PADDING-TOP: 0px
}
TD {
	PADDING-BOTTOM: 0px; PADDING-LEFT: 2px; PADDING-RIGHT: 0px
}
TD.NoPadding {
	PADDING-BOTTOM: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
INPUT {
	HEIGHT: 20px
}
INPUT.UL {
	BORDER-BOTTOM: #33ff33 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none
}
</style>
</head>
<body>
    <form runat="server">
        <p>
            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="804">
                <tbody>
                    <tr>
                        <td height="30" colspan="3">
                            <p align="center">
                                <asp:Label id="Label1" runat="server" font-bold="True" font-size="X-Large" text="条码规范审核"></asp:Label>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none" class="NoPadding" bgcolor="#d9ffff" height="13" width="233">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="58">
                                            <aspxform:XLabel id="XLabel1" runat="server" text="规范名称"></aspxform:XLabel>
                                        </td>
                                        <td width="171">
                                            <aspxform:XTextBox id="XTextBox1" runat="server" BorderColor="Gainsboro" BorderWidth="1px" width="162px" Max="0" Min="0" XDataBind="SnManage:BPM_Sample.sname" HiddenInput="False" ReadOnly="True"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: black 1px solid; BORDER-RIGHT: medium none" class="NoPadding" bgcolor="#d9ffff" width="216">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tbody>
                                    <tr>
                                        <td width="50%">
                                            <aspxform:XLabel id="XLabel2" runat="server" text="客户名称"></aspxform:XLabel>
                                        </td>
                                        <td width="50%">
                                            <aspxform:XTextBox id="XTextBox2" runat="server" BorderColor="Gainsboro" BorderWidth="1px" width="152px" Max="0" Min="0" XDataBind="SnManage:BPM_Sample.scustomer" HiddenInput="False" ReadOnly="True"></aspxform:XTextBox>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" bgcolor="#d9ffff" width="350">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d9ffff" height="7">
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d9ffff">
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" bgcolor="#d9ffff">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" class="NoPadding" bgcolor="#d9ffff" height="87" colspan="3">
                            <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="804" xdatasource="DataSource:SnManage" dynamicarea="1,1" datamap="TaskID->SnManage:BPM_Sampledetail.TaskID;id->SnManage:BPM_Sampledetail.id;codebit->SnManage:BPM_Sampledetail.codebit;p_content->SnManage:BPM_Sampledetail.p_content;sampletxt->SnManage:BPM_Sampledetail.sampletxt;pindex->SnManage:BPM_Sampledetail.pindex">
                                <tbody>
                                    <tr>
                                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" height="18" width="198">
                                            <aspxform:XLabel id="XLabel3" runat="server" text="数位号"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" width="197">
                                            <aspxform:XLabel id="XLabel4" runat="server" text="内容"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" width="197">
                                            <aspxform:XLabel id="XLabel5" runat="server" text="示例"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" width="196">
                                            <aspxform:XLabel id="XLabel6" runat="server" text="序号"></aspxform:XLabel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="37">
                                            <aspxform:XLabel id="XLabel9" runat="server" text="Label" XDataBind="SnManage:BPM_Sampledetail.codebit"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                                            <aspxform:XLabel id="XLabel10" runat="server" text="Label" XDataBind="SnManage:BPM_Sampledetail.p_content"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                                            <aspxform:XLabel id="XLabel11" runat="server" text="Label" XDataBind="SnManage:BPM_Sampledetail.sampletxt"></aspxform:XLabel>
                                        </td>
                                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                                            <aspxform:XLabel id="XLabel12" runat="server" text="Label" XDataBind="SnManage:BPM_Sampledetail.pindex"></aspxform:XLabel>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d9ffff" height="42">
                            <aspxform:XLabel id="XLabel7" runat="server" text="产品工程师"></aspxform:XLabel>
                            <aspxform:XTextBox id="XTextBox7" runat="server" BorderColor="Gainsboro" BorderWidth="1px" width="150px" Max="0" Min="0" XDataBind="SnManage:BPM_Sample.approver" HiddenInput="False"></aspxform:XTextBox>
                            <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px" DataMap="Account->SnManage:BPM_Sample.approver"></aspxform:XSelectUserButton>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d9ffff">
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" bgcolor="#d9ffff">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d9ffff" height="14">
                            <aspxform:XLabel id="XLabel8" runat="server" text="审核意见"></aspxform:XLabel>
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d9ffff">
                        </td>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" bgcolor="#d9ffff">
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" bgcolor="#d9ffff" height="54" colspan="3">
                            <aspxform:XCommentsTextBox id="XCommentsTextBox1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" Rows="3" TextMode="MultiLine"></aspxform:XCommentsTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d9ffff" height="40">
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" bgcolor="#d9ffff">
                        </td>
                        <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" bgcolor="#d9ffff">
                            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                        </td>
                    </tr>
                </tbody>
            </table>
        </p>
        <p>
            <aspxform:XSignTrace id="XSignTrace1" runat="server" BorderColor="AliceBlue" BorderWidth="1px" Width="798px" BackColor="#C0FFFF"></aspxform:XSignTrace>
        </p>
        <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="804">
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
        </table>
        <!-- Insert content here -->
    </form>
</body>
</html>
