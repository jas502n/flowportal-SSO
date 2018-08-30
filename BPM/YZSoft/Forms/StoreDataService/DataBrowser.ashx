<%@ WebHandler Language="C#" Class="YZSoft.XForm.DataBrowser" %>

using System;
using System.Web;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using BPM;
using BPM.Client;
using BPM.Client.Data.Common;
using BPM.Data.Common;

namespace YZSoft.XForm
{
    public class DataBrowser : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            string loadType = context.Request.Params["loadtype"];
            
            if (YZStringHelper.EquName(loadType, "schema"))
                this.ProcessGetDefine(context);
            
            if (YZStringHelper.EquName(loadType, "data"))
                this.ProcessGetData(context);
        }

        private void ProcessGetDefine(HttpContext context)
        {
            try
            {
                string dataSourceName = context.Request.QueryString["ds"];
                string tableName = context.Request.QueryString["table"];
                string orderby = context.Request.QueryString["orderby"];
                MyColumnInfoCollection columnInfos = this.ParseColumnInfos(context.Request.Params["columnInfos"]);
                columnInfos.ParseFixFilter(context, context.Request.QueryString["fcols"]);

                FlowDataTable schema = null;

                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();
                    schema = DataSourceManager.LoadTableSchema(cn, dataSourceName, tableName);
                }

                //规则化显示行
                if (columnInfos.DisplayColumnCount == 0) //没有显示行
                {
                    //有map则显示map列
                    if (columnInfos.MapColumnCount != 0)
                    {
                        foreach (MyColumnInfo column in columnInfos)
                        {
                            if (column.Map)
                                column.Display = true;
                        }
                    }
                    else //没有则显示所有列
                    {
                        foreach (FlowDataColumn column in schema.Columns)
                        {
                            MyColumnInfo columnInfo = columnInfos.TryGetColumn(column.ColumnName);
                            if (columnInfo == null)
                            {
                                columnInfo = new MyColumnInfo(column.ColumnName, true, false, column.ColumnName,100);
                                columnInfo.Display = true;
                                columnInfos.Add(columnInfo);
                            }
                            else
                            {
                                columnInfo.Display = true;
                            }
                        }
                    }
                }
                
                //设置column是否允许搜索
                foreach (MyColumnInfo column in columnInfos)
                {
                    FlowDataColumn dbcolumn = schema.Columns.TryGetItem(column.ColumnName);
                    if (dbcolumn != null)
                        column.AllowSearch = dbcolumn.AllowSearch;
                }

                //按SELECT顺序重新排序
                MyColumnInfoCollection columnInfosOrdered = new MyColumnInfoCollection();
                foreach (FlowDataColumn schemaColumn in schema.Columns)
                {
                    MyColumnInfo columnInfo = columnInfos.TryGetColumn(schemaColumn.ColumnName);
                    if (columnInfo == null)
                        continue;

                    columnInfosOrdered.Add(columnInfo);
                }

                
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", true);
                rv.Attributes.Add("datasource", dataSourceName);
                rv.Attributes.Add("tablename", tableName);
                rv.Attributes.Add("orderby", orderby);

                //设置views
                JsonItemCollection jcolumns = new JsonItemCollection();
                rv.Attributes.Add("columns", jcolumns);

                foreach (MyColumnInfo column in columnInfosOrdered)
                {
                    JsonItem jcolumn = new JsonItem();
                    jcolumns.Add(jcolumn);

                    jcolumn.Attributes.Add("ColumnName", column.ColumnName);
                    jcolumn.Attributes.Add("DisplayName", column.DisplayName);
                    jcolumn.Attributes.Add("Display", column.Display);
                    jcolumn.Attributes.Add("Width", column.Width);
                    jcolumn.Attributes.Add("AllowSearch", column.AllowSearch);
                    jcolumn.Attributes.Add("FixFilter", column.FixFilter);
                    jcolumn.Attributes.Add("FixFilterValue", column.FixFilterValue);
                    jcolumn.Attributes.Add("FixFilterCmp", column.FixFilterCmp);
                }

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

        private void ProcessGetData(HttpContext context)
        {
            GridPageInfo gridPageInfo = new GridPageInfo(context);
            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);

            string dataSourceName = context.Request.Params["datasource"];
            string tableName = context.Request.Params["tablename"];
            string orderby = context.Request.Params["orderby"];
            int outputColumnCount = Int32.Parse(context.Request.Params["outputColumnCount"]);

            MyColumnInfoCollection columnInfos = new MyColumnInfoCollection();

            for (int i = 0; i < outputColumnCount; i++)
            {
                string columnName = context.Request.Params["ColumnName" + i.ToString()];
                bool fixFilter = context.Request.Params["FixFilter" + i.ToString()] == "1" ? true : false;
                string fixFilterValue = context.Request.Params["FixFilterValue" + i.ToString()];
                string fixFilterCmp = context.Request.Params["FixFilterCmp" + i.ToString()];

                MyColumnInfo columnInfo = new MyColumnInfo(columnName, true, true, columnName,100);
                columnInfo.FixFilter = fixFilter;
                columnInfo.FixFilterValue = fixFilterValue;
                columnInfo.FixFilterCmp = fixFilterCmp;

                columnInfos.Add(columnInfo);
            }

            BPMDBParameterCollection parameters = GetSelectParameters(context,columnInfos);

            FlowDataTable table = null;
            int rowcount;
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                table = DataSourceManager.LoadTableDataPaged(cn, dataSourceName, tableName, columnInfos.AllOutputColumnNames, parameters, this.GetSortString(context, orderby), gridPageInfo.Start, gridPageInfo.Limit, out rowcount);
            }

            //将数据转化为Json集合
            JsonItem rv = new JsonItem();

            rv.Attributes.Add(JsonItem.TotalRows, rowcount);
            JsonItemCollection children = new JsonItemCollection();
            rv.Attributes.Add("children", children);

            foreach (FlowDataRow dataRow in table.Rows)
            {
                JsonItem item = new JsonItem();
                children.Add(item);

                foreach (FlowDataColumn column in table.Columns)
                {
                    if (columnInfos.TryGetColumn(column.ColumnName) == null)
                        continue;

                    object value = dataRow[column.ColumnName];
                    if (value is DateTime)
                        value = YZStringHelper.DateToStringL((DateTime)value);
                    
                    item.Attributes.Add(column.ColumnName, value);
                }
            }

            context.Response.Write(rv.ToString());
        }

        private MyColumnInfoCollection ParseColumnInfos(string valueList)
        {
            MyColumnInfoCollection columnInfos = new MyColumnInfoCollection();

            if (String.IsNullOrEmpty(valueList))
                return columnInfos;

            string[] valuePears = valueList.Split(';');
            if (valuePears == null)
                return columnInfos;

            foreach (string valuePeer in valuePears)
            {
                string[] keyvalue = valuePeer.Split(':');
                if (keyvalue == null || keyvalue.Length != 2)
                    continue;

                string key = keyvalue[0];
                string value = keyvalue[1];
                key = key.Trim();
                value = value.Trim();

                MyColumnInfo columnInfo = new MyColumnInfo(key, value);

                columnInfos.Add(columnInfo);
            }

            return columnInfos;
        }

        private BPMDBParameterCollection GetSelectParameters(HttpContext context,MyColumnInfoCollection columnInfos)
        {
            BPMDBParameterCollection selectParameters = new BPMDBParameterCollection();

            //添加过滤条件
            foreach (MyColumnInfo column in columnInfos)
            {
                if (!column.FixFilter)
                    continue;

                BPMDBParameter parameter = new BPMDBParameter(column.ColumnName, TypeCode.String, column.FixFilterValue);
                parameter.ParameterCompareType = ParameterCompareType.FullCompare | ParameterCompareType.NecessaryCondition;
                selectParameters.Add(parameter);
            }

            //添加搜索条件
            string schType = context.Request.Params["SearchType"];
            string keyword = context.Request.Params["Keyword"];
            if (keyword != null)
                keyword = keyword.Trim();

            if (!String.IsNullOrEmpty(schType) && !String.IsNullOrEmpty(keyword))
            {
                string schParam = context.Request.Params["SearchParam"];

                if (String.IsNullOrEmpty(schParam) || schParam == "all")
                {
                    foreach (MyColumnInfo column in columnInfos)
                    {
                        if (!column.Display)
                            continue;

                        BPMDBParameter parameter = new BPMDBParameter(column.ColumnName, TypeCode.String, keyword);
                        parameter.ParameterCompareType = ParameterCompareType.LikeCompare | ParameterCompareType.OptionCondition;
                        selectParameters.Add(parameter);
                    }
                }
                else
                {
                    BPMDBParameter parameter = new BPMDBParameter(schParam, TypeCode.String, keyword);
                    parameter.ParameterCompareType = ParameterCompareType.LikeCompare | ParameterCompareType.OptionCondition;
                    selectParameters.Add(parameter);
                }
            }

            return selectParameters;
        }
        
        private class MyColumnInfo
        {
            private string _columnName;
            private bool _display = false;
            private bool _map = false;
            private int _width;
            private string _displayName;
            private bool _fixfilter = false;
            private string _fixfilterValue = null;
            private string _fixfilterCmp = null;
            private bool _allowSearch = false;

            public MyColumnInfo(string columnName, string valuelist)
            {
                this._columnName = columnName;

                string[] values = valuelist.Split(',');

                if (values.Length >= 1)
                    this._map = (values[0] == "y");

                if (values.Length >= 2)
                    this._display = (values[1] == "y");

                if (values.Length >= 3 && !String.IsNullOrEmpty(values[2]))
                    this._displayName = values[2];

                this._width = 100;
                if (values.Length >= 4 && !String.IsNullOrEmpty(values[3]))
                {
                    Int32.TryParse(values[3],out this._width);
                }
            }

            public MyColumnInfo(string columnName, bool display, bool map, string displayName,int width)
            {
                this._columnName = columnName;
                this._display = display;
                this._map = map;
                this._displayName = displayName;
                this._width = width;
            }

            public string ColumnName
            {
                get
                {
                    return this._columnName;
                }
                set
                {
                    this._columnName = value;
                }
            }

            public bool Display
            {
                get
                {
                    return this._display;
                }
                set
                {
                    this._display = value;
                }
            }

            public bool Map
            {
                get
                {
                    return this._map;
                }
                set
                {
                    this._map = value;
                }
            }

            public string DisplayName
            {
                get
                {
                    if (String.IsNullOrEmpty(this._displayName))
                        return this.ColumnName;
                    else
                        return this._displayName;
                }
                set
                {
                    this._displayName = value;
                }
            }

            public int Width
            {
                get
                {
                    return this._width;
                }
                set
                {
                    this._width = value;
                }
            }

            public bool FixFilter
            {
                get
                {
                    return this._fixfilter;
                }
                set
                {
                    this._fixfilter = value;
                }
            }

            public string FixFilterValue
            {
                get
                {
                    return this._fixfilterValue;
                }
                set
                {
                    this._fixfilterValue = value;
                }
            }

            public string FixFilterCmp
            {
                get
                {
                    return this._fixfilterCmp;
                }
                set
                {
                    this._fixfilterCmp = value;
                }
            }
            
            public bool AllowSearch
            {
                get
                {
                    return this._allowSearch;
                }
                set
                {
                    this._allowSearch = value;
                }
            }
        }

        private class MyColumnInfoCollection : List<MyColumnInfo>
        {
            public StringCollection AllOutputColumnNames
            {
                get
                {
                    StringCollection rv = new StringCollection();
                    foreach (MyColumnInfo columnInfo in this)
                    {
                        if (columnInfo.Display || columnInfo.Map)
                            rv.Add(columnInfo.ColumnName);
                    }

                    return rv;
                }
            }

            public int DisplayColumnCount
            {
                get
                {
                    int count = 0;
                    foreach (MyColumnInfo columnInfo in this)
                    {
                        if (columnInfo.Display)
                            count++;
                    }

                    return count;
                }
            }

            public int MapColumnCount
            {
                get
                {
                    int count = 0;
                    foreach (MyColumnInfo columnInfo in this)
                    {
                        if (columnInfo.Map)
                            count++;
                    }

                    return count;
                }
            }

            public void ParseFixFilter(HttpContext context, string colslist)
            {
                if (String.IsNullOrEmpty(colslist))
                    return;

                string[] colnames = colslist.Split(';');
                if (colnames == null)
                    return;

                foreach (string colname in colnames)
                {
                    MyColumnInfo colInfo = this.TryGetColumn(colname);
                    if (colInfo == null)
                    {
                        colInfo = new MyColumnInfo(colname, false, false, colname,100);
                        colInfo.FixFilter = true;
                        colInfo.FixFilterValue = context.Request.QueryString[colname];
                        colInfo.FixFilterCmp = context.Request.QueryString["_cmp_" + colname];
                        this.Add(colInfo);
                    }
                    else
                    {
                        colInfo.FixFilter = true;
                        colInfo.FixFilterValue = context.Request.QueryString[colname];
                        colInfo.FixFilterCmp = context.Request.QueryString["_cmp_" + colname];
                    }
                }
            }

            internal MyColumnInfo TryGetColumn(string colName)
            {
                foreach (MyColumnInfo columnInfo in this)
                {
                    if (String.Compare(columnInfo.ColumnName, colName, true) == 0)
                        return columnInfo;
                }

                return null;
            }
        }

        private string GetSortString(HttpContext context,string defaultSort)
        {
            string sort = context.Request.Params["sort"];
            string dir = context.Request.Params["dir"];

            //获得Order String
            if (String.IsNullOrEmpty(sort))
                return defaultSort;

            if (String.Compare(dir, "DESC", true) != 0)
                dir = "ASC";

            string rv = sort + " " + dir;
            
            if(String.Compare(QueryManager.DBProviderName,"Oracle",true) == 0)
                rv += ",ROWID";
            
            return rv;
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
