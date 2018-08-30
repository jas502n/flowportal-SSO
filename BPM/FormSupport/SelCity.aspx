<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SelCity.aspx.cs" Inherits="VoithFormSupport_SelMaterial" %>

<%@ Register Src="CityList.ascx" TagName="MaterialList" TagPrefix="uc2" %>
<%@ Register Src="CountryTree.ascx" TagName="MaterialTree" TagPrefix="uc1" %>
<%@ Register Assembly="BPM.WebControls" Namespace="BPM.WebControls" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>选择城市</title>
    <cc1:CSSLink ID="CSSLink1" CSSPath="../Style/Main.css" runat="server" />

    <script src="../Scripts/NewWid.js" type="text/javascript"></script>
    
    <script src="../YZSoft/Forms/Scripts/XFormCore.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="DPnl">
        <span class="Caption">选择城市</span>
        <input type="button" value="确定" class="Btn2" onclick='ok(mlist)' />
        <input type="button" value="取消" class="Btn1" onclick="window.close();return false;" />
    </div>
    <table class="MainBody">
        <tr>
            <td class="LPnl2">
                <div class="WC">
                    <uc1:MaterialTree ID="_tree" runat="server"></uc1:MaterialTree>
                </div>
            </td>
            <td class="RPnl2" id="mlist">
                <uc2:MaterialList ID="_list" runat="server"></uc2:MaterialList>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
