<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<script runat="server">

    // Insert page code here
    //

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
        <p>
            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
        </p>
        <p>
            <aspxform:XImageAttachment id="XImageAttachment1" runat="server" Height="128px" BorderStyle="Solid" XDataBind="test.ConfigTablesImage1" BorderColor="Gainsboro" BorderWidth="3px" Width="112px"></aspxform:XImageAttachment>
            <aspxform:XSignHistory id="XSignHistory1" runat="server" BorderColor="#dcdcdc" BorderWidth="1" Width="415px"></aspxform:XSignHistory>
            <aspxform:XImageAttachment id="XImageAttachment2" runat="server" Height="128px" BorderStyle="Solid" XDataBind="test.ConfigTablesImage2" BorderColor="Gainsboro" BorderWidth="3px" Width="112px"></aspxform:XImageAttachment>
            <aspxform:XDateTimePicker id="XDateTimePicker6" runat="server" XDataBind="test.time" BorderColor="Gainsboro" BorderWidth="1px" Width="230px" Type="TimeMinutes"></aspxform:XDateTimePicker>
            <aspxform:XImageAttachment id="XImageAttachment3" runat="server" Height="128px" BorderStyle="Solid" XDataBind="test.ConfigTablesImage3" BorderColor="Gainsboro" BorderWidth="3px" Width="112px"></aspxform:XImageAttachment>
            <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="test.v1" BorderColor="#DCDCDC" BorderWidth="1"></aspxform:XTextBox>
        </p>
    </form>
</body>
</html>
