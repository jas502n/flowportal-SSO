<%@ WebHandler Language="C#" Class="YZSoft.BPM.HandlingTimeStep" %>

using System;
using System.Web;
using System.Data;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class HandlingTimeStep : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
                        
            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);
            IDbCommand cmd = queryProvider.HandlingTimeStepCommand;
            int workdayHours = Convert.ToInt32(context.Request.Params["WorkDayHours"]);

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
                        item.Attributes.Add("NodeNameOrg", reader.ReadString("NodeName"));
                        item.Attributes.Add("NodeName", BPMProcStep.GetStepDisplayName(reader.ReadString("NodeName")));
                        item.Attributes.Add("UsedMinutesWork", YZStringHelper.MinutesToStringDHM(reader.ReadInt32("UsedMinutesWork"), workdayHours));
                        item.Attributes.Add("UsedMinutesWorkMax", YZStringHelper.MinutesToStringDHM(reader.ReadInt32("UsedMinutesWorkMax"),workdayHours));
                        item.Attributes.Add("UsedMinutes", YZStringHelper.MinutesToStringDHM(reader.ReadInt32("UsedMinutes"),24));
                        item.Attributes.Add("UsedMinutesMax", YZStringHelper.MinutesToStringDHM(reader.ReadInt32("UsedMinutesMax"),24));
                        item.Attributes.Add("Counts", reader.ReadInt32("Counts"));
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
