<%@ WebHandler Language="C#" Class="YZSoft_ProductionDevice234Data" %>

using System;
using System.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Generic;
using BPM;
using BPM.Client;

public class YZSoft_ProductionDevice234Data : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        GridPageInfo gridPageInfo = new GridPageInfo(context);
        SqlServerProvider queryProvider = new SqlServerProvider(context);

        string searchType = context.Request.Params["SearchType"];
        string keyword = context.Request.Params["Keyword"];

        //获得查询条件
        string filter = null;

        if (searchType == "QuickSearch")
        {
            //应用关键字过滤
            if (!string.IsNullOrEmpty(keyword))
                filter = queryProvider.CombinCond(filter, String.Format("Name LIKE N'%{0}%'", queryProvider.EncodeText(keyword)));
        }

        //应用记录权限-只显示有权查看的记录
        //using (BPMConnection cn = new BPMConnection())
        //{
        //    cn.WebOpen();
        //    string permFilter = YZSecurityManager.GetPermisionFilterString("iDemoDevice","ID","RecordRead",cn.Token);
        //    if (!String.IsNullOrEmpty(permFilter))
        //        filter = queryProvider.CombinCond(filter, permFilter);
        //}

        if (!String.IsNullOrEmpty(filter))
            filter = " WHERE " + filter;

        //获得排序子句
        string order = queryProvider.GetSortString("id");

        //获得Query
        string query = "WITH X AS(SELECT ROW_NUMBER() OVER(ORDER BY {0}) AS RowNum,* FROM v_iDemoDevice {1})," +
            "Y AS(SELECT count(*) AS TotalRows FROM X)," +
            "Z AS(SELECT Y.TotalRows,X.* FROM Y,X)" +
            "SELECT * FROM Z WHERE RowNum BETWEEN {2} AND {3}";

        query = String.Format(query, order, filter, gridPageInfo.RowNumStart, gridPageInfo.RowNumEnd);

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
                    rv.Attributes.Add("children", children);
                    int totalRows = 0;

                    while (reader.Read())
                    {
                        JsonItem item = new JsonItem();
                        children.Add(item);

                        if (totalRows == 0)
                            totalRows = reader.ReadInt32("TotalRows");

                        item.Attributes.Add("id", reader.ReadInt32("id"));
                        item.Attributes.Add("RowNum", reader.ReadInt32("RowNum"));
                        item.Attributes.Add("Type", reader.ReadString("Type"));
                        item.Attributes.Add("StationName", reader.ReadString("StationName"));
                        item.Attributes.Add("Name", reader.ReadString("Name"));
                        item.Attributes.Add("Number", reader.ReadString("Number"));
                        item.Attributes.Add("Model", reader.ReadString("Model"));
                        item.Attributes.Add("Standard", reader.ReadString("Standard"));
                        item.Attributes.Add("Price", reader.IsDBNull("Price") ? "-" : reader.ReadDecimal("Price").ToString("F2"));
                        item.Attributes.Add("Power", reader.ReadDecimal("Power"));
                        item.Attributes.Add("Manufacture", reader.ReadString("Manufacture"));
                        item.Attributes.Add("Provider", reader.ReadString("Provider"));
                        item.Attributes.Add("DateOfManufacture", YZStringHelper.DateToString(reader.ReadDateTime("DateOfManufacture")));
                        item.Attributes.Add("SystemName", reader.ReadString("SystemName"));
                        item.Attributes.Add("IntendAge", reader.IsDBNull("IntendAge") ? "-" : reader.ReadDecimal("IntendAge").ToString());
                        item.Attributes.Add("StartDate", YZStringHelper.DateToString(reader.ReadDateTime("StartDate")));
                        item.Attributes.Add("Location", reader.ReadString("Location"));
                        item.Attributes.Add("Picture", reader.ReadString("Picture"));
                        item.Attributes.Add("Status", reader.ReadString("Status"));
                    }

                    rv.Attributes.Add(JsonItem.TotalRows, totalRows);
                }
            }
        }

        //应用记录权限 - 如记录是否可以编辑，删除
        using (BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();
            YZSecurityManager.ApplayRecordPermision(cn, rv.Attributes["children"] as JsonItemCollection, "d0ebfcf9-0007-44b3-b218-ef94628de67e", "iDemoDevice", "ID");
        }

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
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}
