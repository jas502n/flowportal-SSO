using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// ListColumnInfo 的摘要说明
/// </summary>
public class ColumnInfo
{
    private string _columnName;
    private int _width;

    public ColumnInfo(string columnName, int width)
    {
        this._columnName = columnName;
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
}
