<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CountryTree.ascx.cs" Inherits="CountryTree" %>
<asp:TreeView ID="_tree" runat="server" Width="100%" NodeIndent="16" ShowLines="True" EnableTheming="True" ExpandDepth="0">
    <NodeStyle HorizontalPadding="0px" ImageUrl="../Images/com_flowfolder.gif" VerticalPadding="0px" ForeColor="#666699" NodeSpacing="0px" BorderStyle="None" />
    <HoverNodeStyle Font-Underline="False" ForeColor="#333366" />
    <SelectedNodeStyle Font-Bold="True" ImageUrl="../Images/com_flowfolder.gif" />
</asp:TreeView>
