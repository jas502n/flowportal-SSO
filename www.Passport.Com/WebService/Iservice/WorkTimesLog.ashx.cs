using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iAnywhere.YZSoft.services
{
    using BPM;
    using BPM.Client;
    using Net.MobileHelper;
    using System.Data;

    /// <summary>
    /// WorkTimesLog 的摘要说明
    /// </summary>
    public class WorkTimesLog : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.OAuth();

            //YZAuthHelper.AshxAuthCheck();

            //GridPageInfo gridPageInfo = new GridPageInfo(context);
            //IDBProvider dbProvider = YZDBProviderManager.CurrentProvider;

            int Mouth;
            if (context.Request.Params["byMouth"] == "1")
            {
                Mouth = 0;
            }
            else
            {
                string strMouth = context.Request.Params["Mouth"];
                Mouth = String.IsNullOrEmpty(strMouth) ? DateTime.Today.Month : Convert.ToInt32(strMouth);
            }

            //获得数据
            BPMTaskCollection tasks = new BPMTaskCollection();
            int rowcount = 0;
            JsonItem rootItem = new JsonItem();

            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                String UserAccount = context.Request.Params["UserAccount"]; 

                //User user = User.FromAccount(cn, UserID);

                //YZAuthHelper.SetAuthCookie(realAccount);
                //YZAuthHelper.GetCookie();

                DataTable Dt = new SqlServerProvider(context).getWorkTimesLog(UserAccount, Mouth);

                //将数据转化为Json集合
                rootItem.Attributes.Add(JsonItem.TotalRows, rowcount);

                JsonItemCollection children = new JsonItemCollection();
                rootItem.Attributes.Add("children", children);
                rootItem.Attributes.Add("total", Dt.Rows.Count);

                int index = 0;
                foreach (DataRow Dr in Dt.Rows)
                {
                    JsonItem item = new JsonItem();
                    children.Add(item);


                    String StartTime = String.IsNullOrEmpty(Convert.ToString(Dr["StartTime"])) ? null : Convert.ToString(Dr["StartTime"]);
                    String EndTime = String.IsNullOrEmpty(Convert.ToString(Dr["EndTime"])) ? null : Convert.ToString(Dr["EndTime"]);


                    item.Attributes.Add("ID", index);
                    item.Attributes.Add("EmpID", Dr["EmpID"].ToString());
                    item.Attributes.Add("WorkDay", Dr["WorkDay"].ToString());
                    item.Attributes.Add("WeekInt", Dr["WeekInt"].ToString());
                    item.Attributes.Add("ClassID", Dr["ClassID"].ToString());
                    item.Attributes.Add("StartTime", YZStringHelper.DateToStringL(Convert.ToDateTime(StartTime)));
                    item.Attributes.Add("EndTime", YZStringHelper.DateToStringL(Convert.ToDateTime(EndTime)));
                    item.Attributes.Add("NotCard", Convert.ToString(Dr["NotCard"]));
                    item.Attributes.Add("GongGan", Convert.ToString(Dr["GongGan"]));

                    item.Attributes.Add("V1", Convert.ToString(Dr["V1"]));
                    item.Attributes.Add("V2", Convert.ToString(Dr["V2"]));
                    item.Attributes.Add("V3", Convert.ToString(Dr["V3"]));
                    item.Attributes.Add("V4", Convert.ToString(Dr["V4"]));
                    item.Attributes.Add("V5", Convert.ToString(Dr["V5"]));
                    item.Attributes.Add("V6", Convert.ToString(Dr["V6"]));

                    item.Attributes.Add("HDay", Convert.ToString(Dr["HDay"]).Split(',')[0].Replace(" ",""));
                    item.Attributes.Add("Holiday", Convert.ToString(Dr["Holiday"]));

                    item.Attributes.Add("OverTime_H", Convert.ToString(Dr["OverTime_H"]));
                    item.Attributes.Add("OverTime_W", Convert.ToString(Dr["OverTime_W"]));
                    item.Attributes.Add("OverTime", Convert.ToString(Dr["OverTime"]));

                 

                    //item.Attributes.Add("UserShortName", YZStringHelper.GetUserShortName(task.OwnerAccount, task.OwnerDisplayName));

                    index++;

                }
            }

            //System.Threading.Thread.Sleep(500);
            context.Response.AppendHeader("Access-Control-Allow-Origin", "*");      // 响应类型 
            context.Response.AppendHeader("Access-Control-Allow-Methods", "POST");  // 响应头设置 
            context.Response.AppendHeader("Access-Control-Allow-Headers", "x-requested-with,content-type");

            context.Response.Charset = "gb2312"; //设置字符集类型  
            context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
            context.Response.ContentType = "application/json;charset=gb2312";
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