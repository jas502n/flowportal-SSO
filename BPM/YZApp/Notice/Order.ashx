<%@ WebHandler Language="C#" Class="YZSoft_Order" %>

using System;
using System.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Generic;
using BPM;
using BPM.Client;

public class YZSoft_Order : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        string method = context.Request.Params["Method"];
        string type = context.Request.Params["Type"];
        string key = context.Request.Params["Key"];
        StringBuilder sb = new StringBuilder();

        try
        {
            if (method == "MoveUp")
            {
                sb.AppendLine("WITH A AS(");
                sb.AppendLine("SELECT ROW_NUMBER() OVER (ORDER BY ORDER_INDEX) AS RN,* FROM F_NOTICE WHERE TYPE=@TYPE");
                sb.AppendLine(")");
                sb.AppendLine("UPDATE A SET ORDER_INDEX=RN");
                sb.AppendLine("DECLARE @i int");
                sb.AppendLine("SET @i=0");
                sb.AppendLine("SELECT @i=ORDER_INDEX FROM F_NOTICE WHERE ID=@KEY");
                sb.AppendLine("UPDATE F_NOTICE SET ORDER_INDEX=@i WHERE TYPE=@TYPE AND ORDER_INDEX=@i-1");
                sb.AppendLine("UPDATE F_NOTICE SET ORDER_INDEX=@i-1 WHERE ID=@KEY");
            }
            else
            {
                sb.AppendLine("WITH A AS(");
                sb.AppendLine("SELECT ROW_NUMBER() OVER (ORDER BY ORDER_INDEX) AS RN,* FROM F_NOTICE WHERE TYPE=@TYPE");
                sb.AppendLine(")");
                sb.AppendLine("UPDATE A SET ORDER_INDEX=RN");
                sb.AppendLine("DECLARE @i int");
                sb.AppendLine("SET @i=0");
                sb.AppendLine("SELECT @i=ORDER_INDEX FROM F_NOTICE WHERE ID=@KEY");
                sb.AppendLine("UPDATE F_NOTICE SET ORDER_INDEX=@i WHERE TYPE=@TYPE AND ORDER_INDEX=@i+1");
                sb.AppendLine("UPDATE F_NOTICE SET ORDER_INDEX=@i+1 WHERE ID=@KEY");
            }

            //执行查询
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BPMDB"].ConnectionString;
                cn.Open();

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cn;
                    cmd.CommandText = sb.ToString();
                    cmd.Parameters.Add("@TYPE", SqlDbType.NVarChar).Value = type;
                    cmd.Parameters.Add("@KEY", SqlDbType.Int).Value = Int32.Parse(key);
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

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}
