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
using BPM.Client.Security;

public partial class FormSupport_SelUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!AspxHelper.IsAuthenticated)
            FormsAuthentication.RedirectToLoginPage();

        this.Page.ClientScript.RegisterClientScriptInclude("FormScript", this.ResolveClientUrl("../Scripts/XForm.js"));

        BPMConnection cn = new BPMConnection();

        if (this._treeView.Nodes.Count != 0)
            return;

        try
        {
            cn.WebOpen(this.Page);

            OUCollection ous = cn.GetRootOUs();
            
            SecurityToken token = cn.Token;
            foreach (OU ou in ous)
            {
                TreeNode node = CreateNode(ou);
                this._treeView.Nodes.Add(node);

                TreeNode firstDeptNode = null;
                OnNodeCreated(cn, ou, node, token, ref firstDeptNode);
                if (firstDeptNode != null)
                    firstDeptNode.Selected = true;
            }
        }
        finally
        {
            cn.Close();
        }
    }

    private void OnNodeCreated(BPMConnection cn, OU ou, TreeNode node, SecurityToken token, ref TreeNode firstDeptNode)
    {
        if (token.ContainsSID(ou.SID))
        {
            OUCollection ous = OU.GetChildren(cn, node.Value);

            //用户是否在一个子部门内
            bool userInChildOU = false;
            foreach (OU cou in ous)
            {
                if (token.ContainsSID(cou.SID))
                {
                    userInChildOU = true;
                    break;
                }
            }

            //不在子级部门则返回
            if (!userInChildOU)
            {
                if (firstDeptNode == null)
                    firstDeptNode = node;

                return;
            }

            node.PopulateOnDemand = false;
            node.Expand();

            foreach (OU cou in ous)
            {
                TreeNode subNode = CreateNode(cou);
                node.ChildNodes.Add(subNode);

                OnNodeCreated(cn, cou, subNode, token, ref firstDeptNode);
            }
        }
    }

    protected void _treeView_TreeNodePopulate(object sender, TreeNodeEventArgs e)
    {
        if (this.Page.IsCallback)
        {
            if (e.Node.ChildNodes.Count == 0)
            {
                BPMConnection cn = new BPMConnection();
                try
                {
                    cn.WebOpen(this.Page);
                    LoadChildNode(cn, e.Node);
                }
                finally
                {
                    cn.Close();
                }
            }
        }
    }

    protected void LoadChildNode(BPMConnection cn, TreeNode node)
    {
        OUCollection ous = OU.GetChildren(cn, node.Value);

        foreach (OU cou in ous)
        {
            TreeNode subNode = CreateNode(cou);
            node.ChildNodes.Add(subNode);
        }
    }

    private TreeNode CreateNode(OU ou)
    {
        TreeNode node = new TreeNode("&nbsp;" + ou.Name, ou.FullName);
        node.Value = ou.FullName;

        node.SelectAction = TreeNodeSelectAction.Select;
        node.PopulateOnDemand = true;

        string mapvalue;
        mapvalue = "OUName=" + ou.Name + ";";
        mapvalue += "OUFullName=" + ou.FullName + ";";
        mapvalue += "OULevel=" + ou.OULevel + ";";
        mapvalue += "OUCode=" + ou.Code + ";";

        foreach (string attrName in ou.ExtAttrNames)
        {
            object extValue = ou[attrName];
            if (extValue is DateTime)
                extValue = AspxHelper.DateToString((DateTime)extValue);

            mapvalue += attrName + "=" + extValue + ";";
        }

        node.NavigateUrl = String.Format("javascript:SetOwnerBtnValue({0},'{1}');",
            Request.QueryString["idx"],
            mapvalue);

        return node;
    }
}
