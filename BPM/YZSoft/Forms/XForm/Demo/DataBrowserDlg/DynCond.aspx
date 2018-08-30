<%@ Page Language="C#" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<%@ Register TagPrefix="myxfromctrl" Namespace="XXSoft.WebControls.Web.UI" Assembly="XXSoft.WebControls" %>
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
                                <aspxform:XCustomBrowserButton id="XCustomBrowserButton1" runat="server" BrowserWindowType="AjaxPanel" NavigateUrl="Demo/CustomDataBrowser.aspx" Width="21px"></aspxform:XCustomBrowserButton>
                                <aspxform:XSelectUserButton id="XSelectUserButton1" runat="server" Width="21px"></aspxform:XSelectUserButton>
                                <aspxform:XCustomBrowserButton id="XCustomBrowserButton2" runat="server" BrowserWindowType="AjaxPanel" NavigateUrl="Demo/DataBrowserDlg/DynCond/DynCondDlg.js" MultiSelect="true" DataMap="ProdName->PurchaseDetail.ProdName;Price->PurchaseDetail.Price" Text="点击打开自定义开窗" PopupWndWidth="-1" PopupWndHeight="-1"></aspxform:XCustomBrowserButton>
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
                        <aspxform:XTextBox id="XTextBox1" runat="server" Value ValueToDisplayText HiddenInput="False" XDataBind="PurchaseDetail.ProdName" Min="0" Max="0" width="100%" BorderWidth="1px" BorderColor="Gainsboro"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="PurchaseDetail.Price" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Format="type:currency;pfx:￥;.2" TextAlign="Right"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="PurchaseDetail.Qty" width="100%" BorderWidth="1" BorderColor="#DCDCDC" TextAlign="Right"></aspxform:XTextBox>
                    </td>
                    <td style="BORDER-BOTTOM: black 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: black 1px solid">
                        <aspxform:XTextBox id="XTextBox4" runat="server" XDataBind="PurchaseDetail.SubTotal" width="100%" BorderWidth="1" BorderColor="#DCDCDC" Format="type:currency;pfx:￥;.2" TextAlign="Right" Express="PurchaseDetail.Price*PurchaseDetail.Qty"></aspxform:XTextBox>
                    </td>
                </tr>
            </tbody>
        </table>
        <p>
            <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
            <myxfromctrl:XMyDataBrowserButton id="XMyDataBrowserButton1" runat="server" Width="21px" DataMap="ProdName->PurchaseDetail.ProdName;Price->PurchaseDetail.Price"></myxfromctrl:XMyDataBrowserButton>
            <myxfromctrl:XMyDataBrowserButton id="XMyDataBrowserButton2" runat="server" Width="21px" MultiSelect="False"></myxfromctrl:XMyDataBrowserButton>
            <myxfromctrl:XMyDataBrowserButton id="XMyDataBrowserButton3" runat="server" Width="21px" DataMap="ProdName->PurchaseDetail.ProdName;Price->PurchaseDetail.Price"></myxfromctrl:XMyDataBrowserButton>
        </p>
        <p>
            <myxfromctrl:XMySignTrace id="XMySignTrace1" runat="server" Width="650px" BorderWidth="1" BorderColor="#dcdcdc"></myxfromctrl:XMySignTrace>
            <aspxform:XSignTrace id="XSignTrace1" runat="server" Width="650px" BorderWidth="1" BorderColor="#dcdcdc"></aspxform:XSignTrace>
        </p>
    </form>
</body>
</html>
