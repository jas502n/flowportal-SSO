<%@ WebHandler Language="C#" Class="YZSoft.BPM.GetAgentVersion" %>

using System;
using System.Web;
using System.IO;
using System.Diagnostics;

namespace YZSoft.BPM
{
    public class GetAgentVersion : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            try
            {
                string filePath = Path.Combine(Path.GetDirectoryName(context.Request.PhysicalPath), "XFormAgent.cab");
                FileVersionInfo verInfo = FileVersionInfo.GetVersionInfo(filePath);

                context.Response.Clear();
                context.Response.BufferOutput = true;
                if (!String.IsNullOrEmpty(verInfo.FileVersion))
                    context.Response.Write(verInfo.FileVersion);
                else
                    context.Response.Write("Error:" + filePath + " can't be read!");
            }
            catch (Exception exp)
            {
                context.Response.Clear();
                context.Response.BufferOutput = true;
                context.Response.Write("Error:" + exp.Message);
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
}
