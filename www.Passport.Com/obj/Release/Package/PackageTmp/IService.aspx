<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IService.aspx.cs" Inherits="Joson.SSO.Passport.IService" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="RptData" runat="server">
                <ItemTemplate>
                    <%# Eval("EmployeeID").ToString() %> : <%# Eval("FirstName").ToString() %> <%# Eval("LastName").ToString() %>
                    <br />
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
