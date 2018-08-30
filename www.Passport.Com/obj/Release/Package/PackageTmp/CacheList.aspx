<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CacheList.aspx.cs" Inherits="Joson.SSO.Passport.CacheList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Passport中令牌/用户凭证集列表</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>Passport中令牌/用户凭证集列表：</div>
    <div>
        <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField HeaderText="token">
					<ItemTemplate>
						<%# Eval("token").ToString() %>
					</ItemTemplate>
				</asp:TemplateField>
				
				<asp:TemplateField HeaderText="info">
					<ItemTemplate>
						<%# Eval("info").ToString() %>
					</ItemTemplate>
				</asp:TemplateField>
				
				<asp:TemplateField HeaderText="timeout">
					<ItemTemplate>
						<%# Eval("timeout").ToString() %>
					</ItemTemplate>
				</asp:TemplateField>
        </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
