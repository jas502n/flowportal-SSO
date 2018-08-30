<%@ WebHandler Language="C#" Class="YZSoft.BPM.WebSpoorService" %>

using System;
using System.Web;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class WebSpoorService : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
            string method = context.Request.Params["Method"];
            if (method != null)
                method = method.Trim();

            if (method == "GetFieldModifies")
            {
                try
                {
                    string DataSource = context.Request.Params["DataSource"];
                    string TableName = context.Request.Params["TableName"];
                    string ColumnName = context.Request.Params["ColumnName"];
                    string CKeyName = context.Request.Params["CKeyName"];
                    string CKeyValue = context.Request.Params["CKeyValue"];
                    ModifyRecordCollection modifies;

                    JsonItem rv = new JsonItem();
                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        modifies = SpoorService.GetFieldSpoor(cn, DataSource, TableName, ColumnName, CKeyValue);

                        //将数据转化为Json集合
                        rv.Attributes.Add("success", true);

                        JsonItemCollection children = new JsonItemCollection();
                        rv.Attributes.Add("children", children);

                        foreach (ModifyRecord modify in modifies)
                        {
                            JsonItem item = new JsonItem();
                            children.Add(item);

                            string userName = modify.Account;
                            User user = User.TryGetUser(cn,modify.Account);
                            if(user != null)
                                userName = YZStringHelper.GetUserShortName(user.Account,user.DisplayName);
                            
                            item.Attributes.Add("Account", userName);
                            item.Attributes.Add("UserSortName", userName);
                            item.Attributes.Add("Value", modify.Value);
                            item.Attributes.Add("ModifyDate", YZStringHelper.DateToStringL(modify.ModifyDate));
                        }
                    }

                    //输出数据
                    context.Response.Write(rv.ToString());
                }
                catch (Exception exp)
                {
                    JsonItem rv = new JsonItem();
                    rv.Attributes.Add("success", false);
                    rv.Attributes.Add("errorMessage", exp.Message);

                    context.Response.Write(rv.ToString());
                }
            }
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
