﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AuthPage1.aspx.cs" Inherits="SSO.SiteD.AuthPage1" %>

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
    </div>
    <br />
    <br />
    <div>
    <a href="Quit.aspx">退出【D站点】的登录并清空主站凭证与令牌</a>
    </div>
    </form>
</body>
</html>
