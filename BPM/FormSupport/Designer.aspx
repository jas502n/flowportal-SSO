<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Designer.aspx.cs" Inherits="FormSupport_Designer" %>
<%@ Register Src="~/FormSupport/DesignerList.ascx" TagName="DesignerList" TagPrefix="uc2" %>
<%@ Register Assembly="BPM.WebControls" Namespace="BPM.WebControls" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="DPnl">
        <span class="Caption">选择设计师</span>
        <asp:Button ID="_bs" runat="server" Text="<% $Resources:BPMResource, Com_OK %>" CssClass="Btn2" Height="20px" Width="70px"/>
        <asp:Button ID="_bc" runat="server" Text="<% $Resources:BPMResource, Com_Cancel %>" CssClass="Btn1" OnClientClick="window.close();return false;" Height="20px" Width="70px"/>
    </div>
    <table class="MainBody">
        <tr>
            <td class="RPnl2" id="mlist">
                <uc2:DesignerList id="_list" runat="server">
                </uc2:DesignerList></td>
        </tr>
    </table>
    </form>
</body>
</html>
