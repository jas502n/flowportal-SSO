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
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="475" dynamicarea="2,1">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid" height="21" colspan="4">
                        <div align="right">
                            <div align="right">
                                <aspxform:XCustomBrowserButton id="XCustomBrowserButton2" runat="server" NavigateUrl="Demo/DataBrowserDlg/Simple/SimpleDlg.js" Text="点击打开自定义开窗" BrowserWindowType="AjaxPanel" DataMap="ProdName->PurchaseDetail.ProdName;Price->PurchaseDetail.Price" MultiSelect="true"></aspxform:XCustomBrowserButton>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" height="21" width="117">
                        物品</td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" width="97">
                        单价</td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: black 1px solid; BORDER-RIGHT: black 1px solid" width="111">
                        数量</td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" width="138">
                        小计</td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: black 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid" height="24">
                        <aspxform:XTextBox id="XTextBox1" runat="server" BorderColor="Gainsboro" BorderWidth="1px" width="100%" Max="0" Min="0" XDataBind="PurchaseDetail.ProdName" HiddenInput="False" ValueToDisplayText Value></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:XTextBox id="XTextBox2" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="PurchaseDetail.Price" TextAlign="Right" Format="type:currency;pfx:￥;.2"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:XTextBox id="XTextBox3" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="PurchaseDetail.Qty" TextAlign="Right"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:XTextBox id="XTextBox4" runat="server" BorderColor="#DCDCDC" BorderWidth="1" width="100%" XDataBind="PurchaseDetail.SubTotal" Express="PurchaseDetail.Price*PurchaseDetail.Qty" TextAlign="Right" Format="type:currency;pfx:￥;.2"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
    </form>
</body>
</html>
