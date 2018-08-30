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
using System.Text;

public partial class CityList : skyListView
{
    private TreeView _tree;

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    public TreeView TreeView
    {
        get
        {
            return this._tree;
        }
        set
        {
            this._tree = value;
        }
    }

    public override Table Table
    {
        get
        {
            return this._table;
        }
    }

    public override string GetSQL()
    {
        if( this._tree == null || this._tree.SelectedNode == null)
            return null;

        string col1 = Request.QueryString["col4"];
        if (String.IsNullOrEmpty(col1))
            return null;

        StringBuilder sb = new StringBuilder();
       // sb.Append("SELECT City,ZS,BZ,CriterionType FROM V_Fin_City_Criterion WHERE ParentID =");
        //sb.Append(this._tree.SelectedNode.Value);
        //Response.Write(sb.ToString()); return null;
       // return sb.ToString();
        return String.Format("SELECT City,ZS,BZ,Country FROM V_Fin_City_Criterion WHERE ParentID = {0} and  CriterionType = '{1}' order by Ord desc", this._tree.SelectedNode.Value, col1.Replace(";", "','"));
    }

    public override ColumnInfoCollection GetHeaderColumns()
    {
        ColumnInfoCollection colInfos = new ColumnInfoCollection();
        colInfos.Add(new ColumnInfo("城市(境外为国家)", -1));
        //colInfos.Add(new ColumnInfo("zs", 100));
        //colInfos.Add(new ColumnInfo("bz", -1));
       // colInfos.Add(new ColumnInfo("id", -1));
        return colInfos;
    }

    public override string FormatColumnValue(int index, object value)
    {
        return value.ToString();
    }
}
