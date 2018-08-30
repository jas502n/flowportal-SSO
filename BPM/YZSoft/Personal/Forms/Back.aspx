<%@ Page Language="C#" autoeventwireup="true" codefile="Back.aspx.cs" Inherits="YZSoft_Personal_Forms_Back" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <meta content="IE=EmulateIE8" http-equiv="X-UA-Compatible" />
    <title></title> 
    <link rel="stylesheet" type="text/css" href="../../Forms/Style/YZFormClassic.css" />
    <script type="text/javascript">        
        function SetLinkText(type,text){
            var link = window.parent.document.getElementById('_sys_leave');
            if (!link)
                return;
                
            if (type == 'leave'){
                if (link.innerText != undefined)
                    link.innerText = text;
                else
                    link.textContent = text;
            }
            
            if (type == 'cancelleave')
                link.innerHTML = "<font style='color:red;font-weight:bold'>" + text  + "</font>";
        }
        
        <asp:Literal ID="_litJS" runat="server"></asp:Literal>
    </script>
</head>
<body class="msg-form">
    <form id="form1" runat="server">
        <div class="form-container">
            <div class="form-header"><asp:Literal ID="_litCaption" runat="server"></asp:Literal><asp:Label id="_labInfo" runat="server" visible="False"></asp:Label></div>
            <table class="form-body">
                <tr><td><asp:Literal ID="_litMsg" runat="server"></asp:Literal></td></tr>
                <tr>
                    <td>
                        <asp:Label id="_labErr" runat="server" visible="False" CssClass='form-label-submit-err'></asp:Label>
                    </td>
                </tr>
            </table>
            <div class="form-footer"><asp:Button id="_btnSubmit" cssClass="form-button form-button-middle" onclick="_btnSubmit_Click" runat="server"></asp:Button></div>
        </div>
    </form>
</body>
</html>
