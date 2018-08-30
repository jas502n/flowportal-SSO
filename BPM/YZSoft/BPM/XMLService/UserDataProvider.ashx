<%@ WebHandler Language="C#" Class="YZSoft.BPM.UserDataProvider" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Text;
using BPM;
using BPM.Client;
using BPM.Client.Security;

namespace YZSoft.BPM
{
    public class UserDataProvider : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
            string clientMethod = context.Request.Params["Method"];
            string method = clientMethod;
            if (method != null)
                method = method.Trim();

            if (method == "GetTaskInfo")
            {
                try
                {
                    int taskid = Int32.Parse(context.Request.Params["TaskID"]);

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        BPMTask task = new BPMTask();
                        task.Open(cn, taskid);

                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);
                        rv.Attributes.Add("Task",new JsonItem(task));

                        context.Response.Write(rv.ToString());
                    }
                }
                catch (Exception exp)
                {
                    JsonItem rv = new JsonItem();
                    rv.Attributes.Add("success", false);
                    rv.Attributes.Add("errorMessage", exp.Message);

                    context.Response.Write(rv.ToString());
                }
            }
            else
            {
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", String.Format(Resources.YZStrings.Aspx_UnknowCommand, clientMethod));

                context.Response.Write(rv.ToString());
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
