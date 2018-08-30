<%@ WebHandler Language="C#" Class="YZSoft.BPM.SystemUsage" %>

using System;
using System.Web;
using System.Data;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class SystemUsage : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);
            IDbCommand cmd = queryProvider.SystemUsageCommand;

            //执行查询
            JsonItem rv = new JsonItem();
            JsonItemCollection children = new JsonItemCollection();
            rv.Attributes.Add("children", children);

            string[,] states =  { 
                { "Approved", Resources.YZStrings.BPMAdmin_ProcessUsage_Approve }, 
                { "Running", Resources.YZStrings.BPMAdmin_ProcessUsage_Running }, 
                { "Rejected", Resources.YZStrings.BPMAdmin_ProcessUsage_Reject }, 
                { "Deleted", Resources.YZStrings.BPMAdmin_ProcessUsage_Delete }, 
                { "Aborted", Resources.YZStrings.BPMAdmin_ProcessUsage_Abort }, 
            };

            for (int k = 0; k < states.GetLength(0); k++)
            {
                JsonItem item = new JsonItem();
                children.Add(item);

                item.Attributes.Add("State", states[k, 0]);
                item.Attributes.Add("StateDisplay", states[k, 1]);
                for (int i = 1; i <= 12; i++)
                    item.Attributes.Add("Month" + i.ToString(), 0);

                item.Attributes.Add("Total", 0);
            }
            
            using (IDbConnection cn = queryProvider.OpenConnection())
            {
                cmd.Connection = cn;

                using (YZReader reader = new YZReader(cmd.ExecuteReader()))
                {
                    //将数据转化为Json集合
                    while (reader.Read())
                    {
                        JsonItem item = new JsonItem();

                        item.Attributes.Add("State", reader.ReadString("State").Trim());
                        for (int i = 1; i <= 12; i++)
                        {
                            string month = "Month" + i.ToString();
                            item.Attributes.Add(month, reader.ReadInt32(month));
                        }
                        item.Attributes.Add("Total", reader.ReadInt32("Total"));

                        children.Applay("State", item);
                    }
                }
            }

            //添加合计行
            JsonItem sumitem = new JsonItem();
            children.Add(sumitem);
            sumitem.Attributes["State"] = "Total";
            sumitem.Attributes["StateDisplay"] = Resources.YZStrings.All_Total;
            children.SumColumn("Month1", sumitem, typeof(int));
            children.SumColumn("Month2", sumitem, typeof(int));
            children.SumColumn("Month3", sumitem, typeof(int));
            children.SumColumn("Month4", sumitem, typeof(int));
            children.SumColumn("Month5", sumitem, typeof(int));
            children.SumColumn("Month6", sumitem, typeof(int));
            children.SumColumn("Month7", sumitem, typeof(int));
            children.SumColumn("Month8", sumitem, typeof(int));
            children.SumColumn("Month9", sumitem, typeof(int));
            children.SumColumn("Month10", sumitem, typeof(int));
            children.SumColumn("Month11", sumitem, typeof(int));
            children.SumColumn("Month12", sumitem, typeof(int));
            children.SumColumn("Total", sumitem, typeof(int));            
            
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
