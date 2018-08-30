<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sign.aspx.cs" Inherits="FormSupport_Sign" %>
<%@ Register Assembly="BPM.WebControls" Namespace="BPM.WebControls" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <cc1:CSSLink ID="CSSLink1" CSSPath="../Style/Main.css" runat="server" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <script type="text/javascript">
    <!--
        var JS_ServicePath = '<%=this.ResolveUrl("../XMLService")%>';
        var JS_RFC_ResponseStatus = "<%=Resources.BPMResource.JS_RFC_ResponseStatus%>";
        var JS_RFC_XMLHttpReqFailed = "<%=Resources.BPMResource.JS_RFC_XMLHttpReqFailed%>";
        
        var JS_Sign_IncorrentPwd = "<%=Resources.BPMResource.JS_Sign_IncorrentPwd%>"; 
    //-->
</script>

</head>
<!--<body onload="javascript:document.forms[0]._edtPwd.focus();document.forms[0]._edtPwd.select();">-->
<body>
    <form id="form1" runat="server">
    <table class="Dlg1">
        <tr class="Top">
            <td>
                <table>
                    <tr><td><asp:Label ID="_labCaption" runat="server" Text="Label"></asp:Label></td></tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align:center">
                <asp:Label ID="_labPwd" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="_edtPwd" runat="server" CssClass="PWD" TextMode="Password"></asp:TextBox>
            </td>
        </tr>      
        <tr class="Bottom">
            <td>
                <table>
                    <tr><td><asp:Button ID="_btnOK" runat="server" Text="Button" /></td></tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
