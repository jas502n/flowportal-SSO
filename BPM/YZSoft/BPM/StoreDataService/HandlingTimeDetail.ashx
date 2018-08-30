<%@ WebHandler Language="C#" Class="YZSoft.BPM.HandlingTimeDetail" %>

using System;
using System.Web;
using System.Data;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class HandlingTimeDetail : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);
            IDbCommand cmd = queryProvider.HandlingTimeDetailCommand;
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

                        item.Attributes.Add("TaskID", reader.ReadInt32("TaskID"));
                        item.Attributes.Add("StepID", reader.ReadInt32("StepID"));
                        item.Attributes.Add("OwnerAccount", reader.ReadString("OwnerAccount"));
                        item.Attributes.Add("ProcessName", reader.ReadString("ProcessName"));
                        item.Attributes.Add("NodeNameOrg", reader.ReadString("NodeName"));
                        item.Attributes.Add("NodeName", BPMProcStep.GetStepDisplayName(reader.ReadString("NodeName")));
                        item.Attributes.Add("ReceiveAt", YZStringHelper.DateToStringL(reader.ReadDateTime("ReceiveAt"), Resources.YZStrings.All_None));
                        item.Attributes.Add("FinishAt", YZStringHelper.DateToStringL(reader.ReadDateTime("FinishAt"),Resources.YZStrings.All_None));
                        item.Attributes.Add("UsedMinutesWork", YZStringHelper.MinutesToStringDHM(reader.ReadInt32("UsedMinutesWork"), workdayHours));
                        item.Attributes.Add("UsedMinutes", YZStringHelper.MinutesToStringDHM(reader.ReadInt32("UsedMinutes"), 24));
                        item.Attributes.Add("TimeoutNotifyCount", reader.ReadInt32("TimeoutNotifyCount"));
                        item.Attributes.Add("TimeoutDeadline", YZStringHelper.DateToStringL(reader.ReadDateTime("TimeoutDeadline"),Resources.YZStrings.All_None));
                        item.Attributes.Add("Timeouted", reader.ReadBool("Timeouted",false));
                        item.Attributes.Add("HandlerAccount", reader.ReadString("HandlerAccount"));
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

                    account = (string)item.Attributes["HandlerAccount"];
                    user = User.TryGetUser(bpmcn, account);
                    item.Attributes.Add("HandlerDisplayName", user != null ? user.DisplayName : "");
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
