using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using Net.MobileHelper;
using BPM.Client;
using BPM;

namespace iAnywhere.YZSoft.services
{
    /// <summary>
    /// AddressBook 的摘要说明
    /// </summary>

    public class AddressBook : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.OAuth();

            //YZAuthHelper.AshxAuthCheck();

            string method = context.Request.Params["method"];

            if (method == "GetUsers")
            {
                string keyword = context.Request.Params["keyword"];

                keyword = string.IsNullOrEmpty(keyword) ? "ASDT" : keyword;

                //获得数据

                UserCollection users = new UserCollection();
                int rowcount;
                JsonItem rootItem = new JsonItem();
                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();
                    users = OrgSvr.SearchUser(cn, keyword);

                    List<User> usersLst = users.Where(s => s.NameSpace == "LDAP").ToList<User>();

                    //usersLst = users.Where(s => s.ExtAttributes["Supplayer"]=="SDT").ToList<User>();
                    //usersLst = users.Select(u => u.ExtAttributes["Supplayer"] == "").ToList<User>();

                    usersLst.Sort(new UserCompare());
                    rowcount = usersLst.Count;

                    //将数据转化为Json集合
                    rootItem.Attributes.Add(JsonItem.TotalRows, rowcount);

                    JsonItemCollection children = new JsonItemCollection();
                    rootItem.Attributes.Add("children", children);
                    rootItem.Attributes.Add("total", rowcount);

                    int i = 0;
                    foreach (User user in usersLst)
                    {
                        i++;

                        //if (i > 8)
                        //    break;

                        if (user.Account == "sa")
                            continue;
                        JsonItem item = new JsonItem();
                        children.Add(item);

                        item.Attributes.Add("Name", user.DisplayName);
                        item.Attributes.Add("Account", user.Account);
                        item.Attributes.Add("HRID", user.HRID);
                        item.Attributes.Add("user", user.ShortName);
                        item.Attributes.Add("group", YZPinYinHelper.GetShortPinyin(user.ShortName.Substring(0, 1)).ToUpper());

                        item.Attributes.Add("Mobile", user.Mobile);
                        item.Attributes.Add("HomePhone", user.HomePhone);
                        item.Attributes.Add("OfficePhone", user.OfficePhone);
                        item.Attributes.Add("Mail", user.EMail);
                    }
                }

                //输出数据
                context.Response.Write(rootItem.ToString());
            }
            else if (method == "GetUser")
            {
                string uid = context.Request.Params["uid"];
                JsonItem rv = new JsonItem();
                if (!String.IsNullOrEmpty(uid))
                {
                    using (BPMConnection cn = new BPMConnection())
                    {
                        JsonItem data = new JsonItem();
                        rv.Attributes.Add("data", data);

                        cn.WebOpen();
                        User user = User.FromAccount(cn, uid);

                        data.Attributes["Account"] = user.Account;
                        data.Attributes["HRID"] = user.HRID;
                        data.Attributes["DisplayName"] = user.ShortName;
                        data.Attributes["Mobile"] = user.Mobile;
                        data.Attributes["OfficePhone"] = user.OfficePhone;
                        data.Attributes["HomePhone"] = user.HomePhone;
                        data.Attributes["EMail"] = user.EMail;
                        data.Attributes["Office"] = user.Office;
                        data.Attributes["Birthday"] = YZStringHelper.DateToString(user.Birthday);
                        data.Attributes["DateHired"] = YZStringHelper.DateToString(user.DateHired);
                        data.Attributes["Desc"] = user.Description;

                        //获得所有主管
                        BPMObjectNameCollection depts = new BPMObjectNameCollection();
                        UserCollection supervisors = new UserCollection();
                        MemberCollection members = OrgSvr.GetUserPositions(cn, uid);
                        foreach (Member member in members)
                        {
                            OU ou = member.GetParentOU(cn);
                            String OULevel = ou.OULevel;
                            String OUName =ou.Name;

                            String FullName = member.GetParentOU(cn).FullName;
                            String mFullName = member.FullName;
                            String mDepartment = member.Department;


                            if (!ou.IsRootOU)
                            {
                                OUName = mFullName.Split(new char[2] { '/', '/' })[2].GetShortName().ToString();
                                depts.Add(OUName);
                            }

                            if (String.IsNullOrEmpty(member.LeaderTitle))
                                depts.Add(ou.Name);
                            else
                                depts.Add(ou.Name);
                                //depts.Add(String.Format("{0}({1})", ou.Name, member.LeaderTitle));



                            SupervisorCollection spvs = Member.GetSupervisors(cn, member.FullName);
                            foreach (Supervisor spv in spvs)
                            {
                                User spvUser = User.TryGetUser(cn, spv.UserAccount);
                                if (spvUser == null)
                                {
                                    spvUser = new User();
                                    spvUser.Account = spv.UserAccount;
                                }

                                spv.UserFullName = YZStringHelper.GetUserShortName(spvUser.Account, spvUser.DisplayName);

                                if (!supervisors.Contains(spvUser.Account))
                                    supervisors.Add(spvUser);
                            }
                        }

                        JsonItemCollection jsonSupervisors = new JsonItemCollection();
                        data.Attributes["Supervisors"] = jsonSupervisors;
                        foreach (User spv in supervisors)
                        {
                            JsonItem jsonSupervisor = new JsonItem();
                            jsonSupervisors.Add(jsonSupervisor);
                            jsonSupervisor.Attributes["uid"] = spv.Account;
                            jsonSupervisor.Attributes["ShortName"] = spv.ShortName;
                        }

                        data.Attributes["Dept"] = String.Join(" > ", depts.ToArray());
                    }
                }
                rv.Attributes.Add("success", true);

                context.Response.AppendHeader("Access-Control-Allow-Origin", "*");      // 响应类型 
                context.Response.AppendHeader("Access-Control-Allow-Methods", "POST");  // 响应头设置 
                context.Response.AppendHeader("Access-Control-Allow-Headers", "x-requested-with,content-type");

                context.Response.Charset = "gb2312"; //设置字符集类型  
                context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
                context.Response.ContentType = "application/json;charset=gb2312";
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

    public class UserCompare : System.Collections.Generic.IComparer<User>
    {
        public int Compare(User x, User y)
        {
            if (x == null)
            {
                if (y == null)
                    return 0;
                else
                    return -1;
            }
            else
            {
                if (y == null)
                {
                    return 1;
                }
                else
                {
                    int value = x.Account.CompareTo(y.Account);
                    return value;
                }
            }
        }
    }


}