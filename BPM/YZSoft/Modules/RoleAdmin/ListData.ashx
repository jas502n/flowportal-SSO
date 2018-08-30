<%@ WebHandler Language="C#" Class="YZSoft_Modules_RoleAdmin_ListData" %>

using System;
using System.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Generic;
using BPM;
using BPM.Client;

public class YZSoft_Modules_RoleAdmin_ListData : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        string roleFullName = context.Request.Params["rolefullname"];

        //执行查询
        JsonItem rv = new JsonItem();
        JsonItemCollection children = new JsonItemCollection();
        rv.Attributes.Add("children", children);
        
        using (BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();

            Role role = new Role();
            role.Open(cn,roleFullName);
            MemberCollection members = Role.GetMembers(cn, roleFullName);

            rv.Attributes.Add("RoleName", role.Name);

            for (int i = 0 ; i < members.Count ; i++)
            {
                Member member = members[i];
                JsonItem item = new JsonItem();
                children.Add(item);

                item.Attributes.Add("RowNum", i+1);
                item.Attributes.Add("Account", member.UserAccount);
                item.Attributes.Add("FullName", member.FullName);
                item.Attributes.Add("DisplayName", member.UserDisplayName);

                User user = User.FromAccount(cn, member.UserAccount);
                item.Attributes.Add("EMail", user.EMail);
                item.Attributes.Add("Mobile", user.Mobile);
                item.Attributes.Add("OfficePhone", user.OfficePhone);
            }
        }
        
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
