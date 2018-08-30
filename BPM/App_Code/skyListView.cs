using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;

using System.Data.SqlClient;
using System.Collections;

/// <summary>
/// VoithListView 的摘要说明
/// </summary>
public abstract class skyListView : ListBase
{
    public skyListView()
    {
    }

    public abstract Table Table { get;}
    public abstract string GetSQL();
    public abstract ColumnInfoCollection GetHeaderColumns();
    public abstract string FormatColumnValue(int index, object value);
    public virtual bool ShowCheckBox{get{return true;}}

    protected virtual void GenerateHeader()
    {
        TableRow row;
        TableCell cell;

        ColumnInfoCollection colInfos = GetHeaderColumns();

        row = CreateHeaderRow();
        this.Table.Rows.Add(row);

        if (this.ShowCheckBox)
        {
            row.Cells.Add(CreateCheckColumn());
            row.Cells.Add(CreateSepratorColumn());
        }

        for (int i = 0; i < colInfos.Count; i++)
        {
            ColumnInfo colInfo = colInfos[i];

            cell = CreateColumn(colInfo.ColumnName, colInfo.Width);
            row.Cells.Add(cell);

            if (i != colInfos.Count - 1)
                row.Cells.Add(CreateSepratorColumn());
        }
    }

    protected virtual ArrayList GetDataRows(SqlConnection cn)
    {
        ArrayList rv = new ArrayList();

        string sql = this.GetSQL();
        if (String.IsNullOrEmpty(sql))
            return null;

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = sql;

        SqlDataReader reader = cmd.ExecuteReader();
        try
        {
            while (reader.Read())
            {
                ArrayList row = new ArrayList();
                rv.Add(row);
                for (int i = 0; i < reader.FieldCount; i++)
                    row.Add(reader.GetValue(i));
            }
        }
        finally
        {
            if (reader != null)
                reader.Close();
        }

        return rv;
    }

    protected virtual void CreateItem(ArrayList datarow)
    {
        TableRow row;
        TableCell cell;

        row = CreateItemRow();
        this.Table.Rows.Add(row);

        TableCell cellChk = null;
        if (this.ShowCheckBox)
        {
            cellChk = new TableCell();
            cellChk.ColumnSpan = 2;
            row.Cells.Add(cellChk);
        }

        string chkid = String.Empty;
        for (int i = 0; i < datarow.Count; i++)
        {
            int colSpan = 2;
            if (i == datarow.Count - 1)
                colSpan = 1;

            string cellValue = FormatColumnValue(i, datarow[i]);
            cell = CreateCell(cellValue, colSpan);
            if (i == 0)
                row.Cells.Add(cell);

            if (i == 0)
                chkid =String.Format("Col{0}={1}", i + 1, cellValue);
            else
                chkid += String.Format(";Col{0}={1}", i + 1, cellValue);
            if(i==datarow.Count-1)
                chkid += String.Format(";Col{0}={1}", i + 1, cellValue);

        }

        if (this.ShowCheckBox)
            cellChk.Text = "<input id=\"" + chkid + "\" type=\"checkbox\" onclick=\"checkrow(this);\">";
    }

    public virtual void GenerateList(SqlConnection cn)
    {
        GenerateHeader();
        ArrayList dataRows = GetDataRows(cn);
        if (dataRows != null)
        {
            foreach (ArrayList dataRow in dataRows)
                CreateItem(dataRow);
        }
    }
}