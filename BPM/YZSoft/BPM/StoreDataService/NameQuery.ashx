<%@ WebHandler Language="C#" Class="NameQuery" %>

using System;
using System.Web;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public class NameQuery : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string action = context.Request.QueryString["action"];
        if (action == "spell")
        {
            string result = "";
            string key = context.Request.Params["key"];
            string id = context.Request.Params["id"];
            if (!String.IsNullOrEmpty(key) || !String.IsNullOrEmpty(id))
            {

                using (SqlConnection DBConnection = new SqlConnection())
                {
                    DBConnection.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BPMDB"].ConnectionString;
                    DBConnection.Open();

                    ArrayList where = new ArrayList();
                    if (!String.IsNullOrEmpty(key) && key.Length >= 2)
                    {
                        Regex r = new Regex("^[A-Z]+$", RegexOptions.IgnoreCase);
                        if (r.IsMatch(key))
                        {
                            where.Add(" ','+NameSpell+',' LIKE N'%,{0},%' ");
                            if (key.Length > 2) where.Add(" ( FirstNameSpellLength<" + key.Length + " AND ','+FullSpell LIKE N'%,{0}%' ) ");
                        }
                        else
                        {
                            where.Add(" DisplayName = N'{0}' ");
                        }
                    }
                    if (!String.IsNullOrEmpty(id) && id.Length == 5)
                    {
                        if (id.Length == 5) where.Add(" Account = '{1}' ");
                    }

                    if (where.Count > 0)
                    {
                        string sql = "SELECT Account, DisplayName FROM BPMSysUsers WHERE ";
                        sql += string.Join(" OR ", (string[])where.ToArray(typeof(string))) + " order by Account desc";
                        sql = String.Format(sql, key.Replace("'", "''"), id.Replace("'", "''"));
                        using (SqlCommand cmd = new SqlCommand())
                        {
                            cmd.Connection = DBConnection;
                            cmd.CommandText = sql;
                            using (SqlDataReader reader = cmd.ExecuteReader())
                            {
                                while (reader.Read())
                                {
                                    result += reader.GetString(1) + "(" + reader.GetString(0).TrimEnd() + ")|";
                                }
                            }
                        }
                    }
                }
            }
            context.Response.Write(result == "" ? result : result.Substring(0, result.Length - 1));
            //context.Response.Write(sql);
        }
        else
        {
            string result = "";
            string id = context.Request.Params["id"];
            if (!String.IsNullOrEmpty(id))
            {
                using (SqlConnection DBConnection = new SqlConnection())
                {
                    DBConnection.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BPMDB"].ConnectionString;
                    DBConnection.Open();
                    string sql = "SELECT Top 10 Account, DisplayName FROM BPMSysUsers WHERE Account='" + string.Join("' OR Account='", id.Replace("'", "''").Split(',')) + "'";
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = DBConnection;
                        cmd.CommandText = sql;
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                result += reader.GetString(0) + "," + reader.GetString(1).TrimEnd() + ";";
                            }
                        }
                    }

                }
            }
            context.Response.Write(result == "" ? result : result.Substring(0, result.Length - 1));
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
