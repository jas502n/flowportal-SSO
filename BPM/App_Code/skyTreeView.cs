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
using System.Collections.Specialized;

/// <summary>
/// VoithTree 的摘要说明
/// </summary>
public abstract class skyTreeView : UserControl
{
    public skyTreeView()
    {
    }

    public abstract string GetSubItemSQL(string parentid);
    public abstract TreeView TreeView { get;}

    public virtual string RootNodeName
    {
        get
        {
            return null;
        }
    }

    public virtual void PrepareTreeNode(TreeNode node,string parentID)
    {
    }

    public void GenerateTree(SqlConnection cn)
    {
        if (this.TreeView.Nodes.Count != 0)
            return;

        //TreeNode node = new TreeNode("&nbsp;" + this.RootNodeName, String.Empty);
        //this.TreeView.Nodes.Add(node);

        Expand(cn, this.TreeView.Nodes,null);
    }

    protected void Expand(SqlConnection cn, TreeNodeCollection nodes,string parentid)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = this.GetSubItemSQL(parentid);

        SqlDataReader reader = cmd.ExecuteReader();
        try
        {
            while (reader.Read())
            {
                string id = reader.GetValue(0).ToString();
                string name = reader.GetValue(1).ToString();
                String parentID = reader.GetValue(2).ToString();
                TreeNode node = new TreeNode(name, id);
                PrepareTreeNode(node,parentID);
                nodes.Add(node);
            }
        }
        finally
        {
            if(reader != null)
                reader.Close();
        }

        foreach (TreeNode node in nodes)
        {
            Expand(cn, node.ChildNodes, node.Value);
        }
    }
}
