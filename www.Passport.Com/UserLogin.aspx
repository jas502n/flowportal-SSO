<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Joson.SSO.Passport.UserLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>欢迎来到统一认证中心服务器</title>
</head>
<body>
    <form id="LoginForm" runat="server">
        <div style="text-align: center; margin: 0 auto;">
            <span style="color: #ff0000;">欢迎来到统一认证中心服务器

                <%-- 欢迎来到www.passport.com服务器。--%>
                <br />
            </span>

            </span>


            <br />
            帐号：<asp:TextBox ID="txtAccount" runat="server" Width="180px" Text="SDT*****"></asp:TextBox><br />
            <br />
            密码：<asp:TextBox ID="txtPassport" runat="server" TextMode="Password" Width="180px" Text="*****"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="LabMsg" runat="server" Text=""></asp:Label>
            <br />

            <br />
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="登录认证" Width="89px" />
        </div>
    </form>
</body>
</html>
