using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using Net.MobileHelper;
using BPM.Client;
using BPM;
using Net.MobileHelper.YZSoft.Resources;

namespace iAnywhere.YZSoft.services
{
    /// <summary>
    /// UserInfo 的摘要说明
    /// </summary>
    public class UserInfo : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            try
            {
                YZAuthHelper.OAuth();

                //YZAuthHelper.AshxAuthCheck();

                string method = context.Request.Params["Method"];
                JsonItem rv = new JsonItem();

                if (YZStringHelper.EquName(method, "GET"))
                {
                    string uid = YZAuthHelper.LoginUserAccount;
                    using (BPMConnection cn = new BPMConnection())
                    {
                        JsonItem data = new JsonItem();
                        rv.Attributes.Add("data", data);

                        cn.WebOpen();

                        User user = User.FromAccount(cn, uid);
                        UserInfoSelfMantSetting setting = new UserInfoSelfMantSetting();
                        setting.Load(cn);

                        data.Attributes["Account"] = user.Account;
                        data.Attributes["HRID"] = user.HRID;
                        data.Attributes["DisplayName"] = user.DisplayName;
                        data.Attributes["Mobile"] = user.Mobile;
                        data.Attributes["OfficePhone"] = user.OfficePhone;
                        data.Attributes["HomePhone"] = user.HomePhone;
                        data.Attributes["EMail"] = user.EMail;
                        data.Attributes["Office"] = user.Office;
                        data.Attributes["Birthday"] = YZStringHelper.DateToString(user.Birthday);
                        data.Attributes["DateHired"] = YZStringHelper.DateToString(user.DateHired);

                        data.Attributes["editableFields"] = "DisplayName,HRID,Mobile,OfficePhone,HomePhone,EMail,Office,Birthday,DateHired";
                        //data.Attributes["editableFields"] = "Mobile,OfficePhone,HomePhone,EMail,Office";

                        //获得所有主管
                        BPMObjectNameCollection depts = new BPMObjectNameCollection();
                        BPMObjectNameCollection supervisors = new BPMObjectNameCollection();
                        MemberCollection members = OrgSvr.GetUserPositions(cn, uid);
                        foreach (Member member in members)
                        {
                            OU ou = member.GetParentOU(cn);
                            depts.Add(ou.Name);

                            SupervisorCollection spvs = Member.GetSupervisors(cn, member.FullName);
                            foreach (Supervisor spv in spvs)
                            {
                                if (!supervisors.Contains(spv.UserFriendlyName))
                                    supervisors.Add(spv.UserFriendlyName);
                            }
                        }

                        data.Attributes["Supervisor"] = String.Join(",", supervisors.ToArray());
                        data.Attributes["Dept"] = String.Join(",", depts.ToArray());
                    }
                }
                else if (YZStringHelper.EquName(method, "UPDATE"))
                {
                    string uid = YZAuthHelper.LoginUserAccount;
                    string fieldName = context.Request.Params["fieldName"];
                    string strValue = context.Request.Params["value"];
                    DateTime date;
                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        User user = User.FromAccount(cn, uid);
                        
                        switch(fieldName)
                        {
                            case "DisplayName":
                                user.DisplayName = strValue;
                                break;
                            case "HRID":
                                user.HRID = strValue;
                                break;
                            case "Mobile":
                                user.Mobile = strValue;
                                break;
                            case "OfficePhone":
                                user.OfficePhone = strValue;
                                break;
                            case "HomePhone":
                                user.HomePhone = strValue;
                                break;
                            case "EMail":
                                user.EMail = strValue;
                                break;
                            case "Office":
                                user.Office = strValue;
                                break;
                            case "Birthday":
                                if (DateTime.TryParse(strValue, out date))
                                    user.Birthday = date;
                                else
                                    user.Birthday = DateTime.MinValue;
                                break;
                            case "DateHired":
                                if (DateTime.TryParse(strValue, out date))
                                    user.DateHired = date;
                                else
                                    user.DateHired = DateTime.MinValue;
                                break;
                        }
                        
                        User.Update(cn, uid, user);
                    }
                }
                else
                {
                    throw new Exception(String.Format(JosonStrings.Aspx_UnknowCommand, method));
                }

                //System.Threading.Thread.Sleep(500);

                rv.Attributes.Add("success", true);
                context.Response.Write(rv.ToString());
            }
            catch (Exception e)
            {
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", e.Message);
                context.Response.Write(rv.ToString());
            }

            context.Response.AppendHeader("Access-Control-Allow-Origin", "*");      // 响应类型 
            context.Response.AppendHeader("Access-Control-Allow-Methods", "POST");  // 响应头设置 
            context.Response.AppendHeader("Access-Control-Allow-Headers", "x-requested-with,content-type");

            context.Response.Charset = "gb2312"; //设置字符集类型  
            context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
            context.Response.ContentType = "application/json;charset=gb2312";
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