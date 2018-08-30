<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

</script>
<html xmlns:xform= "xmlns:xform">
<head runat="Server">
    <title>BPM Form</title> <script language="javascript">
function checkallchk(chk)
{
    var table = GetParentTable(chk);

    var inputs = table.all.tags("INPUT");
    var length = inputs.length;


    for(var i = 0 ; i < length ; i++)
    {
        var input = inputs[i];
        if( input.type.toLowerCase() == "checkbox" && input != chk)
        {
            input.checked = chk.checked;
            XFormOnChange(input);
        }
    }
}
function checkallchkr(chk)
{
    var table = GetParentTable(chk);

    var inputs = table.all.tags("INPUT");
    var length = inputs.length;


    for(var i = 1 ; i < length ; i++)
    {
        var input = inputs[i];
        if( input.type.toLowerCase() == "checkbox" && input != chk)
        {
            input.checked = !input.checked;
            XFormOnChange(input);
        }
    }
}

</script>
    <style>BODY {
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
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
            <tbody>
                <tr>
                    <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="NoPadding" height="49" width="764" colspan="2">
                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                            <tbody>
                                <tr>
                                    <td rowspan="2" width="20%">
                                        <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                                    </td>
                                    <td rowspan="2">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel12" runat="server" Height="25px" Font-Bold="True" Font-Size="Medium" text="深圳创维数字技术股份有限公司" Font-Names="Tahoma"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td height="24" rowspan="2" width="20%">
                                        <aspxform:XLabel id="XLabel16" runat="server" Font-Size="X-Small" Font-Names="Arial Black" XDataBind="Fin_PL.SN"></aspxform:XLabel>
                                    </td>
                                </tr>
                                <tr>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="33" colspan="2">
                        <div align="center">
                            <aspxform:XLabel id="XLabel14" runat="server" Font-Bold="True" Font-Size="Medium" text="借款到期汇总" Font-Names="Tahoma"></aspxform:XLabel>
                        </div>
                    </td>
                </tr>
                <tr>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="766" height="145">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" width="764" colspan="2">
                        <div align="right">
                            <div align="right">
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" height="85" colspan="2">
                        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%" datamap="SAP编号->test.v1;姓名->test.v2;单号->test.v3;工号->test.v4;将要逾期金额->test.v5;到期日期->test.v6" dynamicarea="1,1" xdatasource="TableName:V_Fin_JKSendMessage">
                            <tbody>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="45">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel8" runat="server" text="编号" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="125">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel6" runat="server" text="SAP编号"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="157">
                                        <div align="center">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel1" runat="server" text="借款申请单号" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="154">
                                        <div align="center">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel2" runat="server" text="借款人" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="153">
                                        <div align="center">
                                            <div align="center">
                                                <aspxform:XLabel id="XLabel3" runat="server" text="将要逾期金额" ForeColor="Gray"></aspxform:XLabel>
                                            </div>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="110">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel4" runat="server" text="到期日期" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                                        <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="23px" BorderWidth="1px" BorderColor="Gainsboro" XType="gridlineno" Enabled="False">1</aspxform:XGridLineNo>
                                        <aspxform:XTextBox id="XTextBox6" runat="server" XDataBind="test.v1" BorderWidth="1px" BorderColor="Gainsboro" HiddenInput="False" width="11px" Max="0" Min="0"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="test.v2" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="test.v3" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="test.v4" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="test.v5" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="test.v6" BorderWidth="1" BorderColor="#DCDCDC" width="100%"></aspxform:XTextBox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="764">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid" height="35" width="116">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid" width="644">
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="26" colspan="2" align="middle">
                        <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                    </td>
                </tr>
            </tbody>
        </table>
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
    </form>
</body>
</html>
