<%@ WebHandler Language="C#" Class="YZSoft.BPM.StoreDataService.ListUser" %>

using System;
using System.Web;
using BPM;
using BPM.Client;

namespace YZSoft.BPM.StoreDataService
{
    public class ListUser : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            GridPageInfo gridPageInfo = new GridPageInfo(context);
            string loadType = context.Request.Params["LoadType"];

            //将数据转化为Json集合
            JsonItem rv = new JsonItem();

            JsonItemCollection children = new JsonItemCollection();
            rv.Attributes.Add("children", children);

            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                MemberCollection members = new MemberCollection();
                if (loadType == "Search") //搜索
                {
                    string keyword = context.Request.Params["keyword"];

                    if (!String.IsNullOrEmpty(keyword))
                    {
                        UserCollection users = OrgSvr.SearchUser(cn, keyword);

                        foreach (User user in users)
                        {
                            MemberCollection mbs = OrgSvr.GetUserPositions(cn, user.Account);
                            if (mbs.Count != 0)
                                members.Add(mbs[0]);
                        }
                    }
                }
                if (loadType == "FromAccountList")
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);

                    for (int i = 0; i < count; i++)
                    {
                        string account = context.Request.Params["Account" + i.ToString()];

                        Member member = new Member();
                        member.UserAccount = account;
                        members.Add(member);
                    }
                }
                else //获得特定组织下的用户
                {
                    string path = context.Request.Params["path"];

                    //获得数据
                    if (!String.IsNullOrEmpty(path))
                        members = OU.GetMembers(cn, path);
                }

                foreach (Member member in members)
                {
                    User user = User.TryGetUser(cn, member.UserAccount);

                    //已删除和禁用的用户不显示
                    if (user == null || user.Disabled)
                        continue;

                    if (loadType == "FromAccountList")
                    {
                        JsonItem item = new JsonItem();
                        children.Add(item);

                        item.Attributes.Add("Account", member.UserAccount);

                        JsonItem userItem = this.JsonItemFromMember(member, user);
                        item.Attributes.Add("User", userItem);
                    }
                    else
                    {
                        JsonItem item = this.JsonItemFromMember(member, user);
                        children.Add(item);
                    }
                }
            }

            //输出数据
            context.Response.Write(rv.ToString());
        }

        private JsonItem JsonItemFromMember(Member member,User user)
        {
            JsonItem item = new JsonItem();
            item.Attributes.Add("Account", member.UserAccount);
            item.Attributes.Add("SID", user.SID);
            item.Attributes.Add("DisplayName", user.DisplayName);
            item.Attributes.Add("MemberFullName", member.FullName);
            item.Attributes.Add("LeaderTitle", member.LeaderTitle);
            item.Attributes.Add("Department", member.Department);
            item.Attributes.Add("Description", user.Description);
            item.Attributes.Add("Birthday", YZStringHelper.DateToStringL(user.Birthday));
            item.Attributes.Add("HRID", user.HRID);
            item.Attributes.Add("DateHired", YZStringHelper.DateToStringL(user.DateHired));
            item.Attributes.Add("Office", user.Office);
            item.Attributes.Add("CostCenter", user.CostCenter);
            item.Attributes.Add("OfficePhone", user.OfficePhone);
            item.Attributes.Add("HomePhone", user.HomePhone);
            item.Attributes.Add("Mobile", user.Mobile);
            item.Attributes.Add("EMail", user.EMail);
            item.Attributes.Add("WWWHomePage", user.WWWHomePage);

            JsonItem extAttrs = new JsonItem();
            item.Attributes.Add("ExtAttrs", extAttrs);

            foreach (string attrName in user.ExtAttrNames)
                extAttrs.Attributes.Add(attrName, user[attrName]);

            return item;
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
