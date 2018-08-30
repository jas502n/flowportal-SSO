<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataBrowser.aspx.cs" Inherits="FormSupport_DataBrowser" %>

<%@ Register Assembly="BPM.WebControls" Namespace="BPM.WebControls" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="../Style/Main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="DPnl">
            <div class="Left"><asp:DropDownList ID="_schType" runat="server" CssClass=""></asp:DropDownList><asp:TextBox ID="_schBox" runat="server" CssClass="SchBox"></asp:TextBox><asp:Button ID="_btnSch" runat="server" Text="<%$ Resources:BPMResource, Com_Search %>" CssClass="SchBtn" OnClick="_btnSch_Click"/></div>
            <asp:Button ID="_bs" runat="server" Text="<% $Resources:BPMResource, Com_OK %>" CssClass="Btn2"/>
            <asp:Button ID="_bc" runat="server" Text="<% $Resources:BPMResource, Com_Close %>" CssClass="Btn1" OnClientClick="window.close();return false;"/>
        </div>
        <table class="TaskList">
            <tr class="PageNavBar">
                <td style="text-align:left">
                    <cc1:NavigateBar ID="_navigateBar" runat="server" PageSize="10" CssClass="PageNavBar" />
                </td>
                <td style="text-align:right;font-size:10pt;">
                    [<%=Resources.BPMResource.Com_NavPageTotal1%> <asp:Label ID="_labCount" runat="server" Text="Label"></asp:Label> <%=Resources.BPMResource.Com_NavPageTotal2%>]
                </td>
            </tr>
            <tr><td class="Sp1" colspan="2"></td></tr>
            <tr><td class="Sp2" colspan="2"></td></tr>
            <tr>
                <td id="mlist" colspan="2">
                    <asp:Table ID="_table" runat="server" Width="100%">
                    </asp:Table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
