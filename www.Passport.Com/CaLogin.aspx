<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CaLogin.aspx.cs" Inherits="Joson.SSO.Passport.CaLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>身份认证</title>
    <script src="Jscript/ACLogon.js" type="text/javascript"></script>  
    <script type="text/javascript">

        $(function () {

            var Actions = "logon";
            var LoginIP = '10.10.10.3';
   
            var userName = $('#userName').val();
            var userGroup = $('#userGroup').val();
            var UserIP = $('#UserIP').val();


            $("#btnSubmit").click(function () {
                sendToAc(LoginIP, Actions, UserIP, userName, userGroup);
            });


            $("#btnLogout").click(function () {

                 Actions = "logon";

                 sendToAc(LoginIP, Actions, UserIP, userName, userGroup);
            });

        })

    </script>

</head>
<body>
    <form id="TheForm" runat="server">
        
 
        <table  align="center">

             <tr><td colspan="3">
                 <asp:Literal ID="LiInfo" runat="server"></asp:Literal></td></tr>

            <tr>
                <td align="right">用户名：</td>
                <td><asp:TextBox ID="userName" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td  align="right">密 码：</td>
                <td ><asp:TextBox ID="Password" runat="server"></asp:TextBox></td>
                <td ></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                   
                    <asp:Button ID="btnSubmit" runat="server" Text="认证登录"  OnClientClick="" OnClick="btnSubmit_Click" />

                    <asp:Button ID="btnLogout" runat="server" Text="注销登录"  OnClientClick="" />

                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    <div>
    
 
    
    </div>

    </form>
</body>
</html>
