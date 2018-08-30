<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //
    
    void Page_Load(object sender, EventArgs e) {
        this.XTextBox1.Value = Request.QueryString["id"];
    }

</script>
<html xmlns:xform="xmlns:xform">
<head runat="server">
    <title>BPM Form</title> <style>
    BODY {FONT-SIZE: 12px; FONT-FAMILY: verdana}
    TABLE {border-collapse: collapse; FONT-SIZE: 12px; FONT-FAMILY: verdana}
    P {PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; FONT-SIZE: 12px; FONT-FAMILY: verdana}
    TD {PADDING-RIGHT: 0px; PADDING-LEFT: 2px; PADDING-BOTTOM: 0px}
    TD.NoPadding {PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px}
    INPUT {HEIGHT: 20px}
    INPUT.UL {BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #33ff33 1px solid}
    TEXTAREA {FONT-SIZE:12px}
    </style>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="436">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" height="22" colspan="2">
                        <strong>设备维修登记</strong></td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="23" width="140">
                        设备编号</td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" width="293">
                        <aspxform:XTextBox id="XTextBox1" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="iDemoDeviceRepair.DeviceID" ValueToDisplayText="TableName:v_iDemoDevice;FilterColumn:ID;DisplayColumn:Number" DataMap="Name->_deviceName;Standard->_deviceStandard"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="23">
                        设备名称</td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:XTextBox id="XTextBox2" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="_deviceName"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="23">
                        规格</td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:XTextBox id="XTextBox3" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="_deviceStandard"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="21" colspan="2">
                        维修说明</td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="108" colspan="2">
                        <aspxform:XTextBox id="XTextBox4" runat="server" BorderColor="Gainsboro" BorderWidth="1px" width="100%" XDataBind="iDemoDeviceRepair.Note" ValueToDisplayText Max="0" Min="0" TextMode="MultiLine" Height="105px" HiddenInput="False" Value></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="21" colspan="2">
                        <p>
                            附件 
                        </p>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="72" valign="top" colspan="2">
                        <p>
                            <aspxform:XAttachments id="XAttachments1" runat="server" width="434px" MaximumFileSize FileTypesDescription="Word,Excel" FileTypes="*.doc;*.docx;*.xls;*.xlsx"></aspxform:XAttachments>
                        </p>
                    </td>
                </tr>
            </tbody>
        </table>
        <p>
            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
        </p>
    </form>
</body>
</html>
