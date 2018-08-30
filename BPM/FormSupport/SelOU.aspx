<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SelOU.aspx.cs" Inherits="FormSupport_SelUser" %>

<%@ Register Assembly="BPM.WebControls" Namespace="BPM.WebControls" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title><%=Resources.BPMResource.SelOU_Caption%></title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <cc1:CSSLink ID="CSSLink1" CSSPath="../Style/Main.css" runat="server" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="DPnl">
        <span class="Caption"><%=Resources.BPMResource.SelOU_Title%></span>
        <asp:Button ID="_bc" runat="server" Text="<% $Resources:BPMResource, Com_Close %>" CssClass="Btn1" OnClientClick="window.close();return false;"/>
    </div>
    <table class="MainBody">
        <tr>
            <td style="vertical-align: top">
                <asp:TreeView ID="_treeView" runat="server" Width="100%" NodeIndent="16" ExpandDepth="0" OnTreeNodePopulate="_treeView_TreeNodePopulate">
                    <NodeStyle HorizontalPadding="0px" ImageUrl="../Images/com_org.gif" VerticalPadding="0px" ForeColor="#666699" NodeSpacing="0px" BorderStyle="None"/>
                    <HoverNodeStyle Font-Underline="False" ForeColor="#333366" />
                    <SelectedNodeStyle Font-Bold="True" ImageUrl="../Images/com_org.gif" />
                </asp:TreeView>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
