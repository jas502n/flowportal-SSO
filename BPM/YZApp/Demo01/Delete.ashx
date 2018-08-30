<%@ WebHandler Language="C#" Class="YZSoft_DeleteCRM" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

public class YZSoft_DeleteCRM : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        string method = context.Request.Params["Method"];
        if (method == "Delete")
        {
            try
            {
                int count = Int32.Parse(context.Request.Params["Count"]);

                using (SqlConnection cn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BPMDB"].ConnectionString))
                {
                    cn.Open();

                    for (int i = 0; i < count; i++)
                    {
                        string id = context.Request.Params["Item" + i.ToString()];

                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = cn;
                        cmd.CommandText = String.Format("DELETE FROM 客户档案 WHERE id={0}", id);

                        cmd.ExecuteNonQuery();
                    }
                }

                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", true);

                context.Response.Write(rv.ToString());
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
            rv.Attributes.Add("errorMessage", String.Format("未知的命令：{0}", method));

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
