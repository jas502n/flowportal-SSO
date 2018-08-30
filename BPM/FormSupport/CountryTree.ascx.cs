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

public partial class CountryTree : skyTreeView
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    public override TreeView TreeView
    {
        get
        {
            return this._tree;
        }
    }

    public override string GetSubItemSQL(string parentid)
    {
        int pid;
        string cid = this.Request.QueryString["cname"];
        string cname =null;
        if(String.IsNullOrEmpty(parentid))
            pid = 0;
        else
            pid = Int32.Parse(parentid);

        string extFilter = String.Empty;
     /*   if (pid == 0)
        {
            string col1 = this.Request.QueryString["Col1"];
            if (!String.IsNullOrEmpty(col1))
                extFilter = String.Format(" AND ID={0}", col1);
        }*/
        StringBuilder sb = new StringBuilder();
        if (cid=="1")
            sb.AppendFormat("Select ID,Name,ParentID FROM Fin_R_Country WHERE ParentID={0} and Name <>'中国大陆' order by Ord desc", pid);
        if(cid =="2")
            sb.AppendFormat("Select ID,Name,ParentID FROM Fin_R_Country WHERE ParentID={0} and Name <>'大陆以外地区' order by Ord desc", pid);
        if(cid =="3")
            sb.AppendFormat("Select ID,Name,ParentID FROM Fin_R_Country WHERE ParentID={0} order by Ord desc", pid);
      //  sb.Append(extFilter);
        return sb.ToString();
       // return String.Format("SELECT ID,Name,ParentID FROM ZAMaterialClass WHERE ParentID={0}{1}", pid.ToString(), extFilter);
    }
}
