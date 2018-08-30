using System;
using System.Collections.Generic;
using System.Web;
using BPM;
using BPM.Client;

/// <summary>
///FormApplicationHelper 的摘要说明

/// </summary>
public class YZFormApplicationHelper
{
    public static int GetTaskIDFromKey(string tableName,string key)
    {
        using(BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();

            SqlServerProvider provider = new SqlServerProvider(null);

            string query = String.Format("SELECT TOP 1 TaskID FROM BPMInstTasks LEFT JOIN BPMInstFormDataSetLinks ON BPMInstTasks.FormDataSetID=BPMInstFormDataSetLinks.FormDataSetID WHERE BPMInstFormDataSetLinks.TableName=N'{0}' AND BPMInstFormDataSetLinks.KeyValue=N'{1}'",
                provider.EncodeText(tableName),
                provider.EncodeText(key));

            int count;
            FlowDataTable table = DataSourceManager.Load(cn, null, BPMCommandType.Query, query, null, false, 0, 1, out count);

            if (count > 0)
                return Convert.ToInt32(table.Rows[0]["TaskID"]);
            else
                return -1;
        }
    }
}
