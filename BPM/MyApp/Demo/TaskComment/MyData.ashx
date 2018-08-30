<%@ WebHandler Language="C#" Class="YZSoft_MyApp_Task_MyData" %>

using System;
using System.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Generic;
using BPM;
using BPM.Client;

public class YZSoft_MyApp_Task_MyData : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        GridPageInfo gridPageInfo = new GridPageInfo(context);
        SqlServerProvider queryProvider = new SqlServerProvider(context);

        string searchType = context.Request.Params["SearchType"];
        string keyword = context.Request.Params["Keyword"];
        int taskid = Convert.ToInt32(context.Request.Params["TaskId"]);
        string appname = context.Request.Params["AppName"];
        int appkey = Convert.ToInt32(context.Request.Params["AppKey"]);
        int curindex = Convert.ToInt32(context.Request.Params["curindex"]);
        //获得查询条件
        string filter = null;

        //获得TaskId
        if (taskid != 0)
        {
            filter = queryProvider.CombinCond(filter, String.Format("TaskId = {0}", taskid));

        }

        //获得AppKey
        if (appkey != 0)
        {
            filter = queryProvider.CombinCond(filter, String.Format("AppKey = {0} AND AppName = N'{1}'", appkey, appname));

        }

        if (searchType == "QuickSearch")
        {
            //应用关键字过滤
            if (!string.IsNullOrEmpty(keyword))
                filter = queryProvider.CombinCond(filter, String.Format("AND Comment LIKE N'%{0}%' OR CreationUser LIKE N'%{0}%'", queryProvider.EncodeText(keyword)));
        }

        //应用记录权限-只显示有权查看的记录
        //using (BPMConnection cn = new BPMConnection())
        //{
        //    cn.WebOpen();
        //    string permFilter = YZSecurityManager.GetPermisionFilterString("MyAppDB:RefTask","ID","RecordRead",cn.Token);
        //    if (!String.IsNullOrEmpty(permFilter))
        //        filter = queryProvider.CombinCond(filter, permFilter);
        //}

        if (!String.IsNullOrEmpty(filter))
            filter = " WHERE " + filter;

        //获得排序子句
        string order = queryProvider.GetSortString("id");

        //获得Query
        string query = "WITH X AS(SELECT ROW_NUMBER() OVER(ORDER BY {0} DESC) AS RowNum,* FROM FormTaskComment {1})," +
            "Y AS(SELECT count(*) AS TotalRows FROM X)," +
            "Z AS(SELECT Y.TotalRows,X.* FROM Y,X)" +
            "SELECT * FROM Z WHERE RowNum BETWEEN {2} AND {3}";


        //query = String.Format(query, order, filter, 1, 1000);
        query = String.Format(query, order, filter, (curindex - 1) * 8 + 1, curindex * 8);

        //context.Response.Write(query);

        //执行查询
        JsonItem rv = new JsonItem();
        using (SqlConnection cn = new SqlConnection())
        {
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BPMDB"].ConnectionString;
            cn.Open();

            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = cn;
                cmd.CommandText = query;

                using (YZReader reader = new YZReader(cmd.ExecuteReader()))
                {
                    //将数据转化为Json集合
                    JsonItemCollection children = new JsonItemCollection();
                    rv.Attributes.Add("comments", children);
                    int totalRows = 0;

                    string AppName = string.Empty;
                    string UID = string.Empty;

                    //{audioFile:201409040004}
                    //{imageFile:201409040003}


                    BPMConnection Cn = new BPMConnection();
                    User user = null;


                    while (reader.Read())
                    {
                        JsonItem item = new JsonItem();
                        children.Add(item);



                        if (totalRows == 0)
                            totalRows = reader.ReadInt32("TotalRows");

                        UID = Convert.ToString(reader.ReadInt32("id"));
                        AppName = reader.ReadString("AppName");

                        if (Cn != null)
                            user = User.TryGetUser(Cn, UID);

                        if (string.IsNullOrEmpty(AppName))
                            AppName = user.ShortName;


                        item.Attributes.Add("Id", reader.ReadInt32("id"));
                        item.Attributes.Add("RowNum", reader.ReadInt32("RowNum"));
                        // MyApp Start

                        item.Attributes.Add("AppName", AppName);
                        // item.Attributes.Add("AppName", reader.ReadString("AppName"));

                        item.Attributes.Add("ParentId", reader.ReadString("ParentId"));
                        item.Attributes.Add("TaskId", reader.ReadString("TaskId"));
                        item.Attributes.Add("Comment", reader.ReadString("Comment"));
                        item.Attributes.Add("TransDate", YZStringHelper.DateToStringL(reader.ReadDateTime("TransDate")));
                        item.Attributes.Add("LastUpdateDate", YZStringHelper.DateToStringL(reader.ReadDateTime("LastUpdateDate")));
                        //item.Attributes.Add("Status", reader.ReadString("Status") == "1" ? "Active" : "Inactive");
                        item.Attributes.Add("Status", reader.ReadString("Status"));
                        item.Attributes.Add("CreationUser", reader.ReadString("CreationUser"));
                        item.Attributes.Add("LastUpdateUser", reader.ReadString("LastUpdateUser"));
                        // MyApp End
                    }

                    rv.Attributes.Add(JsonItem.TotalRows, totalRows);
                }
            }
        }

        //应用记录权限 - 如记录是否可以编辑，删除
        //using (BPMConnection cn = new BPMConnection())
        //{
        //    cn.WebOpen();
        //    YZSecurityManager.ApplayRecordPermision(cn, rv.Attributes["children"] as JsonItemCollection, "56fd4c5e-6964-4fe4-a599-e5932ae47ca3", "MyAppDB:RefTask", "ID");
        //}

        /* 自定义业务规则
        foreach (JsonItem item in (JsonItemCollection)rv.Attributes["children"])
        {
            int RowNum = (int)item.Attributes["RowNum"];
            if (RowNum != 1)
            {
                JsonItem jsonPerm = (JsonItem)item.Attributes["perm"];
                jsonPerm.Attributes["Edit"] = false;
            }
        }*/

        //输出数据
        context.Response.Write(rv.ToString());

        //Format JSON fix 4.5 bug
        //Please change the code of FlowPortal\WEB\App_Code\YZSoft\Json\Json.item.cs
        //StringBuilder sb = new StringBuilder();
        //sb.Append(rv.ToString());
        //sb.Replace("'","\"");
        //context.Response.Write(sb.ToString());
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}
