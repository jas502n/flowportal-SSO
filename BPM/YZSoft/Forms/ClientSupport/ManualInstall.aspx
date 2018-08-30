<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManualInstall.aspx.cs" Inherits="ClientSupport_ManualInstall" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>XFormShell Install</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <style>
        BODY {FONT-SIZE: 12px; FONT-FAMILY: verdana}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width:100%;margin-left:8px;margin-top:8px">
    <tr><td>
    <p class="Title1"><asp:Label ID="_labWarnTitle" runat="server"></asp:Label></p>
    <ol class="Warn1">
        <li><asp:Label ID="_labWarn1" runat="server"></asp:Label></li>
        <li><asp:Label ID="_labWarn2" runat="server"></asp:Label></li>
        <li><asp:Label ID="_labWarn3" runat="server" ></asp:Label></li>
        <li><asp:Label ID="_labWarn4" runat="server" ></asp:Label></li>
        <li><asp:Label ID="_labWarn5" runat="server" ></asp:Label></li>
    </ol>
    <p class="Title1"><asp:Label ID="_labStepTitle" runat="server"></asp:Label></p>
    <ol class="Normal1">
        <li><asp:Label ID="_labStep1" runat="server" Font-Bold="True"></asp:Label><br/><a href="../ClientSupport/XFormShell.zip"><asp:Label ID="_labStep1Desc" runat="server"></asp:Label></a></li>
        <li><asp:Label ID="_labStep2" runat="server" Font-Bold="True"></asp:Label><br/><asp:Label ID="_labStep2Desc" runat="server"></asp:Label></li>
        <li><asp:Label ID="_labStep3" runat="server" Font-Bold="True"></asp:Label><br/><asp:Label ID="_labStep3Desc" runat="server"></asp:Label></li>
    </ol>
    <p class="Title1"><asp:Label ID="_labHelpTitle" runat="server"></asp:Label></p>
    <p class="Body1"><asp:Label ID="_labHelp1" runat="server"></asp:Label></p>
    </td></tr>
    </table>
    </form>
</body>
</html>
