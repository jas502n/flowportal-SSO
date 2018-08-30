<%@ Application Language="C#" ClassName="BPMApplication"%>
<%@ Import namespace="BPM" %>
<%@ Import namespace="BPM.Client" %>
<%@ Import namespace="System.Web.Configuration" %>
<%@ Import namespace="System.IO" %>
<%@ Import namespace="System.Collections.Generic" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
    }
    
    void Application_End(object sender, EventArgs e) 
    {
    }

    void Application_Error(object sender, EventArgs e)
    {
        // 获得BPMException 或顶层Exception(最原始的Exception)
        Exception exp = Server.GetLastError();

        while (exp != null)
        {
            if (exp is BPMException)
                break;

            if (exp.InnerException == null)
                break;

            exp = exp.InnerException;
        }

        if (Request.Url.LocalPath.EndsWith(".aspx", true, null))
        {
            if (exp != null)
                WriteAspxException(exp.Message, exp.StackTrace);
            else
                WriteAspxException(Resources.YZStrings.All_Global_UnknowException, null);
        }
        else
        {
            if (exp != null)
                WriteJsonException(exp.Message, null);
            else
                WriteJsonException(Resources.YZStrings.All_Global_UnknowException, null);
        }

        Server.ClearError();
        Response.End();
    }

    private void WriteJsonException(string errmsg, string stacktrace)
    {
        Response.StatusCode = 200;
        
        JsonItem rv = new JsonItem();
        rv.Attributes.Add("success", false);
        rv.Attributes.Add("errorMessage",errmsg);
        rv.Attributes.Add("stackTrace",stacktrace);

        Response.Clear();
        Response.Write(rv.ToString());
        Response.End();
    }

    private void WriteAspxException(string errmsg, string stacktrace)
    {
        StringBuilder sb = new StringBuilder();
        
        errmsg = this.Server.HtmlEncode(errmsg);
        sb.AppendLine("<body style=\"overflow-y:hidden\">");
        sb.AppendLine("<table style=\"height:100%;width:100%;text-align:center;vertical-align:middle;\"><tr><td>");
        sb.AppendLine("<table cellspacing=\"0px\" style=\"border:solid 1px #ded0c8;vertical-align:middle;background-color:#f8f8ff;margin:auto;\">");
        sb.AppendLine(String.Format("<tr><td colspan=2 style=\"border-bottom:solid 1px #ded0c8;background-color:#eee8aa;color:#9900ff;padding-left:6px;padding-top:2px;padding-bottom:2px;font-family:Tahoma;font-size:12px;letter-spacing:2px\">{0}</td></tr>", Resources.YZStrings.All_Global_ErrorTitle));
        sb.AppendLine("<tr>");
        sb.AppendLine(String.Format("<td style=\"padding:12px;\"><img src=\"{0}\" /></td>", VirtualPathUtility.ToAbsolute("~/YZSoft/Frame/Images/com_stop.gif")));
        sb.AppendLine("<td style=\"padding-top:8px;padding-bottom:8px;padding-left:0px;padding-right:8px;color:#660000;font-family:Tahoma;font-size:12px;letter-spacing:0px\">" + errmsg.Replace("\n", "<br>") + "</td>");
        sb.AppendLine("</tr>");
        sb.AppendLine("</table>");
        sb.AppendLine("</td></tr></table>");
        sb.AppendLine(String.Format("<span style='display:none'>{0}</span>", HttpUtility.HtmlEncode(stacktrace)));
        sb.AppendLine("</body>");

        Response.Clear();
        Response.Write(sb.ToString());
        Response.End();
    }

    void Session_Start(object sender, EventArgs e) 
    {
    }

    void Session_End(object sender, EventArgs e) 
    {
    }
       
</script>
