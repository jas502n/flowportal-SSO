<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SSOWebSite.aspx.cs" Inherits="Joson.SSO.Passport.SSOWebSite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>认证成功，统一认证分站系统 </title>
    <base target="_blank" />
    <style type="text/css">
        .ODD {
            background-color: #b6ff00;
            color: darkred;
            margin: 10px;
            padding: 10px;
            border: 1px dotted groove;
        }

        .DDT {
            background-color: #ff6a00;
            color: darkgreen;
            margin: 10px;
            padding: 10px;
            border: 1px dotted groove;
        }
    </style>
</head>
<body>
    <form id="Forms" runat="server">
        <div>

            <asp:Repeater ID="RptListSSOWebSite" runat="server">

                <AlternatingItemTemplate>
                    <div class="DDT">
                        <a href='<%#Eval("SiteURL") %>'><%#Eval("SiteName") %></a><br />
                        <%#Eval("Description") %>
                    </div>
                </AlternatingItemTemplate>

                <ItemTemplate>
                    <div class="ODD">
                        <a href='<%#Eval("SiteURL") %>'><%#Eval("SiteName") %></a><br />
                        <%#Eval("Description") %>
                    </div>
                </ItemTemplate>

            </asp:Repeater>


        </div>
    </form>
</body>
</html>
