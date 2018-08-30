using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using BPM;
using BPM.Client;
using System.Collections.Specialized;
using System.Collections.Generic;
using BPM.WebControls;
using BPM.Client.Data.Common;
using BPM.Data.Common;

public partial class FormSupport_DataBrowser : System.Web.UI.Page
{
    MyColumnInfoCollection _columnInfos = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            ClientScriptManager cs = this.Page.ClientScript;

            if (!cs.IsClientScriptIncludeRegistered("MyScript"))
                cs.RegisterClientScriptInclude("MyScript", this.ResolveClientUrl("../Scripts/Main.js"));

            if (!cs.IsClientScriptIncludeRegistered("FormScript"))
                cs.RegisterClientScriptInclude("FormScript", this.Page.ResolveClientUrl("../Scripts/Form.js"));

            if (!cs.IsClientScriptIncludeRegistered("XFormScript"))
                cs.RegisterClientScriptInclude("XFormScript", this.Page.ResolveClientUrl("../Scripts/XForm.js"));

            //获得ColumnInfo
            string datasourceName = this.Request.QueryString["ds"];
            string tableName = this.Request.QueryString["table"];
            string orderBy = this.Request.QueryString["orderby"];
            this._columnInfos = this.ParseColumnInfos(this.Request.QueryString["cinfs"]);
            this._columnInfos.ParseFixFilter(this.Page, this.Request.QueryString["fcols"]);
            bool ms = this.Request.QueryString["ms"] == "1" ? true : false;
            bool hiddenlink = this.Request.QueryString["hl"] == "1" ? true : false;

            if (ms)
            {
                this._bs.Visible = true;
                this._bs.OnClientClick = String.Format("F_CloseDialogNBat(mlist,{0},'{1}','');return false;",
                    this.Request.QueryString["idx"],
                    Resources.BPMResource.DataBrowser_Msg_AtleastSelOne);
            }
            else
            {
                this._bs.Visible = false;
            }

            //初始化页导航条
            this.Page.Header.Title = tableName;
            this._navigateBar.InitState();

            //获得数据
            TableRow row;
            TableCell cell;

            BPMConnection cn = new BPMConnection();
            FlowDataTable schema = null;
            FlowDataTable table = null;
            int rowcount = 0;
            try
            {
                cn.WebOpen(Page);

                //获得表的Schema
                schema = DataSourceManager.LoadTableSchema(cn, datasourceName, tableName);

                //规则化显示行
                if (this._columnInfos.DisplayColumnCount == 0) //没有显示行
                {
                    //有map则显示map列
                    if (this._columnInfos.MapColumnCount != 0)
                    {
                        foreach (MyColumnInfo column in this._columnInfos)
                        {
                            if (column.Map)
                                column.Display = true;
                        }
                    }
                    else //没有则显示所有列
                    {
                        foreach (FlowDataColumn column in schema.Columns)
                        {
                            MyColumnInfo columnInfo = this._columnInfos.TryGetColumn(column.ColumnName);
                            if (columnInfo == null)
                                columnInfo = new MyColumnInfo(column.ColumnName, true, false, column.ColumnName);

                            columnInfo.Display = true;
                            this._columnInfos.Add(columnInfo);
                        }
                    }
                }

                foreach (MyColumnInfo column in this._columnInfos)
                {
                    FlowDataColumn dbcolumn = schema.Columns.TryGetItem(column.ColumnName);
                    if (dbcolumn != null)
                        column.AllowSearch = dbcolumn.AllowSearch;
                }

                BPMDBParameterCollection parameters = GetSelectParameters(this._columnInfos);

                //获得数据
                table = DataSourceManager.LoadTableDataPaged(cn, datasourceName, tableName, this._columnInfos.AllOutputColumnNames, parameters, orderBy, (this._navigateBar.CurPage - 1) * this._navigateBar.PageSize, this._navigateBar.PageSize, out rowcount);
                this._navigateBar.ItemCount = rowcount;
            }
            finally
            {
                cn.Close();
            }

            //建立ComboBox
            this._schType.Items.Add(new ListItem(Resources.BPMResource.Com_All, "all"));
            foreach (MyColumnInfo column in this._columnInfos)
            {
                if (!column.Display || column.FixFilter || !column.AllowSearch)
                    continue;

                this._schType.Items.Add(new ListItem(column.DisplayName, column.ColumnName));
            }

            //设置状态值
            this._schBox.Text = this.Request.QueryString["sch"];
            this._schType.SelectedValue = this.Request.QueryString["schtype"];

            //建立List的Header
            row = CreateHeaderRow();
            this._table.Rows.Add(row);

            //获得按SELECT排序的DisplayColumn
            MyColumnInfoCollection displayColumnsOrdered = new MyColumnInfoCollection();
            foreach (FlowDataColumn tableColumn in schema.Columns)
            {
                MyColumnInfo columnInfo = this._columnInfos.TryGetColumn(tableColumn.ColumnName);
                if (columnInfo == null)
                    continue;

                if (!columnInfo.Display)
                    continue;

                displayColumnsOrdered.Add(columnInfo);
            }

            if (ms)
                row.Cells.Add(CreateCheckColumn());

            foreach (MyColumnInfo column in displayColumnsOrdered)
            {
                if (row.Cells.Count != 0)
                    row.Cells.Add(CreateSepratorColumn());

                cell = CreateColumn(column.DisplayName, -1);
                row.Cells.Add(cell);
            }

            //总记录数
            this._labCount.Text = rowcount.ToString();

            //添加行
            foreach (FlowDataRow dataRow in table.Rows)
            {
                row = CreateItemRow();
                this._table.Rows.Add(row);

                if (ms)
                {
                    cell = new TableCell();
                    cell.Text = "<input id=\"" + GetMapValue(this._columnInfos,dataRow) + "\" type=\"checkbox\" onclick=\"checkrow(this);\">";
                    cell.ColumnSpan = 1;

                    row.Cells.Add(cell);
                }

                foreach (MyColumnInfo column in displayColumnsOrdered)
                {
                    //列分割
                    if (row.Cells.Count != 0)
                        row.Cells.Add(CreateEmptyCell(1));

                    foreach (string key in dataRow.Keys)
                    {
                        object v = dataRow[key];
                    }

                    object value = dataRow[column.ColumnName];
                    if (row.Cells.Count == 0 && !hiddenlink)
                    {
                        HyperLink link = CreateSetValueLink(FormatValue(value), this._columnInfos, dataRow,this._table.Rows.Count-1);
                        cell = CreateCell(String.Empty, 1);
                        cell.Controls.Add(link);
                    }
                    else
                    {
                        cell = CreateCell(FormatValue(value), 1);
                    }

                    //cell.Style.Add("text-align", "center");
                    row.Cells.Add(cell);
                }
            }
        }
    }

    private HyperLink CreateSetValueLink(string value, MyColumnInfoCollection columns, FlowDataRow row,int index)
    {
        HyperLink link = new HyperLink();
        link.Text = value;

        link.ID = "row" + index.ToString();
        link.NavigateUrl = String.Format("javascript:SetOwnerBtnValue({0},document.getElementById('{1}').data);",
            Request.QueryString["idx"],
            link.ID);

        link.Attributes.Add("data",
            GetMapValue(columns,row));

        return link;
    }

    private string GetMapValue(MyColumnInfoCollection columns, FlowDataRow row)
    {
        string mapvalue = String.Empty;
        foreach (MyColumnInfo column in columns)
        {
            if (!column.Map)
                continue;

            string item = column.ColumnName + "=" + FormatSetValue(row[column.ColumnName]);
            if (String.IsNullOrEmpty(mapvalue))
                mapvalue = item;
            else
                mapvalue += ";" + item;
        }

        return mapvalue;
    }

    protected void _btnSch_Click(object sender, EventArgs e)
    {
        UrlBuilder builder = new UrlBuilder(this);

        if (String.IsNullOrEmpty(this._schBox.Text))
            builder.QueryString.Remove("sch");
        else
            builder.QueryString["sch"] = this._schBox.Text;

        if (String.IsNullOrEmpty(this._schType.SelectedValue) || this._schType.SelectedValue == "all")
            builder.QueryString.Remove("schtype");
        else
            builder.QueryString["schtype"] = this._schType.SelectedValue;

        builder.QueryString.Remove("page");

        this.Response.Redirect(builder.ToString());
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

    private BPMDBParameterCollection GetSelectParameters(MyColumnInfoCollection columnInfos)
    {
        BPMDBParameterCollection selectParameters = new BPMDBParameterCollection();

        //添加过滤条件
        foreach (MyColumnInfo column in columnInfos)
        {
            if (!column.FixFilter)
                continue;

            BPMDBParameter parameter = new BPMDBParameter(column.ColumnName,TypeCode.String,column.FixFilterValue);
            parameter.ParameterCompareType = ParameterCompareType.FullCompare | ParameterCompareType.NecessaryCondition;
            selectParameters.Add(parameter);
        }

        //添加搜索条件
        string sch = this.Page.Request.QueryString["sch"];
        if (!String.IsNullOrEmpty(sch))
        {
            sch = sch.Trim();
            string schtype = this.Page.Request.QueryString["schtype"];

            if (String.IsNullOrEmpty(schtype) || schtype == "all")
            {
                foreach (MyColumnInfo column in columnInfos)
                {
                    if (!column.Display)
                        continue;

                    BPMDBParameter parameter = new BPMDBParameter(column.ColumnName, TypeCode.String, sch);
                    parameter.ParameterCompareType = ParameterCompareType.LikeCompare | ParameterCompareType.OptionCondition;
                    selectParameters.Add(parameter);
                }
            }
            else
            {
                BPMDBParameter parameter = new BPMDBParameter(schtype, TypeCode.String, sch);
                parameter.ParameterCompareType = ParameterCompareType.LikeCompare | ParameterCompareType.OptionCondition;
                selectParameters.Add(parameter);
            }
        }

        return selectParameters;
    }

    private Image CreateSepratorImage()
    {
        Image imgSp = new Image();
        imgSp.ImageUrl = "../Images/com_sp1.jpg";

        return imgSp;
    }

    public virtual TableRow CreateHeaderRow()
    {
        TableRow row = new TableRow();
        row.CssClass = "ListHeaderRow";

        return row;
    }

    public TableCell CreateColumn(string text, int minwidth)
    {
        TableCell cell = new TableCell();
        cell.CssClass = "HDM";
        cell.Text = text;

        return cell;
    }

    public TableCell CreateCheckColumn()
    {
        TableCell cell = new TableCell();
        CheckBox checkBox = new CheckBox();
        checkBox.Attributes.Add("OnClick", "checkall(this)");
        cell.Controls.Add(checkBox);
        cell.Width = new Unit(1, UnitType.Percentage);
        cell.CssClass = "CHK";

        return cell;
    }

    public TableCell CreateSepratorColumn()
    {
        TableCell cellSp = new TableCell();
        cellSp.Controls.Add(this.CreateSepratorImage());
        cellSp.Width = new Unit(2, UnitType.Pixel);

        return cellSp;
    }

    public TableRow CreateItemRow()
    {
        TableRow row = new TableRow();
        row.CssClass = "ListItemRow";
        row.Style.Add("line-height", "18px;");

        row.Attributes.Add("onmouseover", "this.style.backgroundColor = '#fffdd7';");
        row.Attributes.Add("onmouseout", "this.style.backgroundColor = 'transparent';");
        return row;
    }

    public string FormatValue(object value)
    {
        string rv;
        if (value == null)
        {
            rv = "-";
        }
        else
        {
            if (value is DateTime)
                rv = AspxHelper.DateToStringL((DateTime)value);
            else if (value is byte[])
                rv = HttpUtility.HtmlEncode("<binary data>");
            else
                rv = value.ToString();
        }

        rv = rv.Trim();
        if (String.IsNullOrEmpty(rv))
            return "-";

        return rv;
    }

    public string FormatSetValue(object value)
    {
        string rv;
        if (value == null)
        {
            rv = "";
        }
        else
        {
            if (value is DateTime)
                rv = AspxHelper.DateToStringL((DateTime)value);
            else if (value is byte[])
                rv = Convert.ToBase64String((byte[])value);
            else
            {
                //rv = value.ToString().Replace(@"\", @"\\");
                //rv = rv.Replace(@"'", @"\'");
                rv = value.ToString();
                rv = rv.Replace("\n", "<br/>");
            }
        }

        rv = rv.Trim();
        return rv;
    }

    public TableCell CreateCell(string text, int span)
    {
        TableCell cell = new TableCell();
        cell.Text = text;

        if (span != 1)
            cell.ColumnSpan = span;

        return cell;
    }

    protected TableCell CreateEmptyCell(int span)
    {
        return CreateCell("", span);
    }

    private class MyColumnInfo
    {
        private string _columnName;
        private bool _display = false;
        private bool _map = false;
        private string _displayName;
        private bool _fixfilter = false;
        private string _fixfilterValue = null;
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
        }

        public MyColumnInfo(string columnName, bool display,bool map,string displayName)
        {
            this._columnName = columnName;
            this._display = display;
            this._map = map;
            this._displayName = displayName;
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
                    if(columnInfo.Display || columnInfo.Map)
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

        public void ParseFixFilter(Page page,string colslist)
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
                    colInfo = new MyColumnInfo(colname, false, false, colname);
                    colInfo.FixFilter = true;
                    colInfo.FixFilterValue = page.Request.QueryString[colname];
                    this.Add(colInfo);
                }
                else
                {
                    colInfo.FixFilter = true;
                    colInfo.FixFilterValue = page.Request.QueryString[colname];
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
}