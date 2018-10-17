using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Net.MobileHelper;
using BPM.Client;
using System.Data;

namespace iAnywhere.YZSoft.services
{
    /// <summary>
    /// UserLogList 的摘要说明
    /// </summary>
    public class UserLogList : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.OAuth();

            //YZAuthHelper.AshxAuthCheck();

            //GridPageInfo gridPageInfo = new GridPageInfo(context);
            //IDBProvider dbProvider = YZDBProviderManager.CurrentProvider;

            int rowcount = 0;

            //获得数据
            BPMTaskCollection tasks = new BPMTaskCollection();

            JsonItem rootItem = new JsonItem();

            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                String UserID = context.Request.Params["UserID"];
                String Phone = context.Request.Params["Phone"];

                //User user = User.FromAccount(cn, UserID);
                //YZAuthHelper.SetAuthCookie(realAccount);
                //YZAuthHelper.GetCookie();

                //将数据转化为Json集合
                rootItem.Attributes.Add(JsonItem.TotalRows, rowcount);

                JsonItemCollection children = new JsonItemCollection();
                rootItem.Attributes.Add("children", children);

                int index = 0;

                if (Phone == null)
                {
                    DataTable Dt = new SqlServerProvider(context).getUserLogInfo(UserID);
                    rootItem.Attributes.Add("total", Dt.Rows.Count);


                    foreach (DataRow Dr in Dt.Rows)
                    {
                        JsonItem item = new JsonItem();
                        children.Add(item);

                        item.Attributes.Add("ID", index);
                        item.Attributes.Add("UserAccount", Dr["UserAccount"].ToString());
                        item.Attributes.Add("DisplayName", Dr["DisplayName"].ToString());
                        item.Attributes.Add("Company", Dr["Company"].ToString());
                        item.Attributes.Add("Department", Dr["Department"].ToString());

                        item.Attributes.Add("Counts", Convert.ToString(Dr["Counts"]));
                        item.Attributes.Add("Phone", Convert.ToString(Dr["Phone"]));

                        index++;

                    }

                }
                else
                {

                    DataTable Dt = new SqlServerProvider(context).getUserLogInfoDtl(UserID, Phone);
                    rootItem.Attributes.Add("total", Dt.Rows.Count);

                    foreach (DataRow Dr in Dt.Rows)
                    {
                        JsonItem item = new JsonItem();
                        children.Add(item);

                        item.Attributes.Add("ID", index);
                        item.Attributes.Add("UserAccount", Dr["UserAccount"].ToString());
                        item.Attributes.Add("DisplayName", Dr["DisplayName"].ToString());
                        item.Attributes.Add("Company", Dr["Company"].ToString());
                        item.Attributes.Add("Department", Dr["Department"].ToString());

                        item.Attributes.Add("UserEMail", Convert.ToString(Dr["UserEMail"]));

                        item.Attributes.Add("LogDate", Convert.ToString(Dr["LogDate"]));
                        item.Attributes.Add("Phone", Convert.ToString(Dr["Phone"]));
                        item.Attributes.Add("UUID", Convert.ToString(Dr["UUID"]));
                        item.Attributes.Add("DeviceName", Convert.ToString(Dr["DeviceName"]));
                        item.Attributes.Add("NetWork", Convert.ToString(Dr["NetWork"]));
                        item.Attributes.Add("Version", Convert.ToString(Dr["Version"]));

                        item.Attributes.Add("ClientIP", Convert.ToString(Dr["ClientIP"]));
                        item.Attributes.Add("FullName", Convert.ToString(Dr["FullName"]));

                        index++;

                    }

                }
            }


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