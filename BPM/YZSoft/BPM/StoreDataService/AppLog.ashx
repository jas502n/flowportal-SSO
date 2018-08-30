<%@ WebHandler Language="C#" Class="YZSoft.BPM.AppLog" %>

using System;
using System.Web;
using System.Data;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class AppLog : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            GridPageInfo gridPageInfo = new GridPageInfo(context);
            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);
            DateTime date = DateTime.Parse(context.Request.Params["Date"]);
            
            //获得数据
            JsonItem rootItem = new JsonItem();
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                DataTable table = new DataTable();
                int rowcount;
                table = cn.GetAppLog(date, queryProvider.FilterStringAppLog, queryProvider.SortStringAppLog, gridPageInfo.Start, gridPageInfo.Limit, out rowcount);

                //将数据转化为Json集合
                rootItem.Attributes.Add(JsonItem.TotalRows, rowcount);

                JsonItemCollection children = new JsonItemCollection();
                rootItem.Attributes.Add("children", children);

                foreach (DataRow row in table.Rows)
                {
                    JsonItem item = new JsonItem();
                    children.Add(item);

                    item.Attributes.Add("ObjectID", Convert.ToString(row["ObjectID"]));
                    item.Attributes.Add("LogDate", YZStringHelper.DateToStringL((DateTime)row["LogDate"]));
                    item.Attributes.Add("ClientIP", Convert.ToString(row["ClientIP"]));
                    item.Attributes.Add("UserAccount", Convert.ToString(row["UserAccount"]));
                    User user = User.TryGetUser(cn, Convert.ToString(row["UserAccount"]));
                    item.Attributes.Add("UserDisplayName", user != null ? user.DisplayName:"");
                    item.Attributes.Add("Action", Convert.ToString(row["Action"]));
                    item.Attributes.Add("ActParam1", Convert.ToString(row["ActParam1"]));
                    item.Attributes.Add("ActParam2", Convert.ToString(row["ActParam2"]));
                    item.Attributes.Add("Succeed", Convert.ToBoolean(row["Succeed"]) ? Resources.YZStrings.BPMAdmin_AppLog_Result_Success : Resources.YZStrings.BPMAdmin_AppLog_Result_Fail);
                    item.Attributes.Add("Error", Convert.ToString(row["Error"]));

                    int tickUsed = System.Convert.ToInt32(row["TickUsed"]);
                    double tickUsedInSeconds = ((double)tickUsed) / 1000;
                    item.Attributes.Add("TickUsed", tickUsedInSeconds.ToString("0.000"));
                }
            }

            //输出数据
            context.Response.Write(rootItem.ToString());
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
