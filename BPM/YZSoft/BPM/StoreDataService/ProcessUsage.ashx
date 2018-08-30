<%@ WebHandler Language="C#" Class="YZSoft.BPM.ProcessUsage" %>

using System;
using System.Web;
using System.Data;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class ProcessUsage : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);
            IDbCommand cmd = queryProvider.ProcessUsageCommand;

            //执行查询
            JsonItem rv = new JsonItem();
            using (IDbConnection cn = queryProvider.OpenConnection())
            {
                cmd.Connection = cn;

                using (YZReader reader = new YZReader(cmd.ExecuteReader()))
                {
                    //将数据转化为Json集合
                    JsonItemCollection children = new JsonItemCollection();
                    rv.Attributes.Add("children", children);
                    int totalRows = 0;

                    while (reader.Read())
                    {
                        JsonItem item = new JsonItem();
                        children.Add(item);

                        if (totalRows == 0)
                            totalRows = reader.ReadInt32("TotalRows");

                        item.Attributes.Add("ProcessName", reader.ReadString("ProcessName"));
                        item.Attributes.Add("Approved", reader.ReadInt32("Approved"));
                        item.Attributes.Add("Running", reader.ReadInt32("Running"));
                        item.Attributes.Add("Rejected", reader.ReadInt32("Rejected"));
                        item.Attributes.Add("Aborted", reader.ReadInt32("Aborted"));
                        item.Attributes.Add("Deleted", reader.ReadInt32("Deleted"));
                        item.Attributes.Add("Total", reader.ReadInt32("Total"));
                    }

                    rv.Attributes.Add(JsonItem.TotalRows, totalRows);
                }
            }

            //输出数据
            context.Response.Write(rv.ToString());
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
