<%@ WebHandler Language="C#" Class="YZSoft.Modules.RoleAdmin.Remove" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Text;
using BPM;
using BPM.Client;

namespace YZSoft.Modules.RoleAdmin
{
    public class Remove : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            try
            {
                int count = Int32.Parse(context.Request.Params["Count"]);
                string roleFullName = context.Request.Params["rolefullname"];
                
                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();

                    Role role = new Role();
                    role.Open(cn,roleFullName);
                    MemberCollection members = Role.GetMembers(cn, roleFullName);

                    BPMObjectNameCollection newMembers = new BPMObjectNameCollection();
                    foreach (Member member in members)
                        newMembers.Add(member.FullName);
                    
                    for (int i = 0; i < count; i++)
                    {
                        string newMemberFullName = context.Request.Params["Member" + i.ToString()];
                        if (newMembers.Contains(newMemberFullName))
                            newMembers.Remove(newMemberFullName);
                    }

                    Role.UpdateRole(cn, roleFullName, role, newMembers);

                    JsonItem rv = new JsonItem();
                    rv.Attributes.Add("success", true);

                    context.Response.Write(rv.ToString());
                }
            }
            catch (Exception exp)
            {
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", exp.Message);

                context.Response.Write(rv.ToString());
            }
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
