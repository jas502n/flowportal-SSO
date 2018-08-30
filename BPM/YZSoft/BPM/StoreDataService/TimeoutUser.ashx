<%@ WebHandler Language="C#" Class="YZSoft.BPM.TimeoutUser" %>

using System;
using System.Web;
using System.Data;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class TimeoutUser : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);
            IDbCommand cmd = queryProvider.TimeoutUserCommand;

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

                        item.Attributes.Add("OwnerAccount", reader.ReadString("OwnerAccount"));
                        item.Attributes.Add("ProcessName", reader.ReadString("ProcessName"));
                        item.Attributes.Add("NodeNameOrg", reader.ReadString("NodeName"));
                        item.Attributes.Add("NodeName", BPMProcStep.GetStepDisplayName(reader.ReadString("NodeName")));
                        item.Attributes.Add("TimeoutCount", reader.ReadInt32("TimeoutCount"));
                        item.Attributes.Add("TimeoutPercent", reader.ReadInt32("TimeoutPercent") / 10.0);
                        item.Attributes.Add("Counts", reader.ReadInt32("Counts"));
                    }

                    rv.Attributes.Add(JsonItem.TotalRows, totalRows);
                }
            }

            //获得附加信息
            using (BPMConnection bpmcn = new BPMConnection())
            {
                bpmcn.WebOpen();

                foreach (JsonItem item in rv.Attributes["children"] as JsonItemCollection)
                {
                    string account = (string)item.Attributes["OwnerAccount"];
                    User user = User.TryGetUser(bpmcn, account);
                    item.Attributes.Add("OwnerDisplayName", user != null ? user.DisplayName : "");
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
