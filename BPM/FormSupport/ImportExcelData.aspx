<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ImportExcelData.aspx.cs" Inherits="FormSupport_ImportExcelData" %>

<%@ Register Assembly="BPM.WebControls" Namespace="BPM.WebControls" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="../Style/Main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="DPnl">
            <div class="Left"><asp:FileUpload cssClass="File" ID="_edtFile" runat="server" /><asp:DropDownList ID="_lstSheet" cssClass="Sheet" runat="server"></asp:DropDownList>
            </div>
            <asp:Button ID="_bs" runat="server" Text="OK" CssClass="Btn2"/>
            <asp:Button ID="_bc" runat="server" Text="Close" CssClass="Btn1" OnClientClick="window.close();return false;"/>
        </div>
        <table class="TaskList">
            <tr>
                <td id="mlist" colspan="2">
                    <asp:Table ID="_table" runat="server" style="border-right: #cccccc 1px solid;border-bottom: #cccccc 1px solid;">
                    </asp:Table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
