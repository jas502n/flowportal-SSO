<%@ WebHandler Language="C#" Class="LoginoutHandler" %>

using System;
using System.Web;

public class LoginoutHandler : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {

        try
        {
            context.Session.Clear();
            context.Response.Cookies.Clear();
            context.Response.Write("<msg>1</msg>");
        }
        catch( Exception  ex)
        {
            context.Response.Write("<msg>0</msg>");
            context.Response.Write(ex.Message);
        }


    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}