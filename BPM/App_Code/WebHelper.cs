using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// WebHelper 的摘要说明
/// </summary>
public class WebHelper
{
    private static string CONN_STRING = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BPMDBConnectionString"].ToString();
    private static SqlConnection sqlConn;
	public WebHelper()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    /**
     * 根据sql得到DataSet
     * sql,sql语句
     * tableName,DataTable名
     */
  public static DataSet GetDataSet(string sql,string tableName)
  {
    DataSet ds = new DataSet();

    try
    {
        sqlConn = new SqlConnection(CONN_STRING);
        SqlDataAdapter sqlApt = new SqlDataAdapter(sql, sqlConn);
        sqlApt.Fill(ds, tableName);
        return ds;
    }
    catch (Exception ex)
    {
        throw (ex);
    }
    finally
    {
        sqlConn.Close();
    }
  }

/**
 * 执行SQL语句
 * sql
 */

  public static int ExecuteSQL(string sql)
  {
   try
   {
       sqlConn = new SqlConnection(CONN_STRING);
        SqlCommand sqlCmd =new SqlCommand(sql,sqlConn);
        sqlConn.Open();
        return sqlCmd.ExecuteNonQuery();
   }
   catch (Exception ex)
   {
        throw (ex);
   }
   finally
   {
        sqlConn.Close();
   }
   }
    //language
    public static string GetLocalLanString(string language,string DisplayName) {
        if (language.StartsWith("en"))
            return DisplayName;
        else
            return DisplayName + "-" + language;
    }

    //DataMaintain permission
    public static bool IsHavePermission(string permission, string right)
    {
        string[] array = permission.Split(new char[] { ',' });
        for (int i = 0; i < array.Length; i++)
        { 
            if (array[i].Equals(right))
            {
                return true;
            }  
        }
        return false;
    }

}
