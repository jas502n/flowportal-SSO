<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuthPage1.aspx.cs" Inherits="SSO.SiteE.AuthPage1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <a href="http://www.a.com/authPage1.aspx">分站A授权页</a><br /><br />
    <a href="http://www.b.com/authPage1.aspx">分站B授权页</a><br /><br />
    <a href="http://www.c.com/authPage1.aspx">分站C授权页</a><br /><br />
    <a href="http://www.d.com/authPage1.aspx">分站D授权页</a><br /><br />
    <a href="http://www.e.com/authPage1.aspx">分站E授权页</a><br /><br />

    <a href="http://www.josons.com/SSOLogin">分站MVC授权页SSOLogin</a><br /><br />
    </div>
    <br />
    <a href="http://www.e.com/authPage2.aspx?GoURL=http://www.e.com/authPage1.aspx">E站授权页有参数的页面</a><br /><br />
    <a href="http://www.e.com/authPage2.aspx">E站授权页</a><br /><br />

    <br />
    <div>
    <a href="Quit.aspx">退出【E站点】的登录并清空主站凭证与令牌</a>
    </div>
    </form>
</body>
</html>
