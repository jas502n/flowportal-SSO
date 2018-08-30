using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Data;
using System.Xml;
using System.Data.SqlClient;
using System.Reflection;
using BPM;
using BPM.Client;

/// <summary>
/// _Default 的摘要说明
/// </summary>
namespace YZSoft.WebService
{
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]

    public class YZService : System.Web.Services.WebService
    {
        public static string DefaultOU = "BPMOU://未分组员工";
        public static string DefaultOptAccount = "99199";

        public YZService()
        {
            //如果使用设计的组件，请取消注释以下行 
            //InitializeComponent(); 
        }

        #region Web服务

        [WebMethod]
        public Result AddUser(AuthInfo authInfo,UserInfo userInfo)
        {
            try
            {
                YZService.AuthSystem(authInfo);
                YZAuthHelper.SetAuthCookie(authInfo.RealLoginAccount);

                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();
                    OU.AddMember(cn, YZService.LDAPOU2BPMOUPath(userInfo.LDAPOU), null, userInfo.Member, userInfo.User, null, null, null);
                }

                return Result.SuccessResult;
            }
            catch (Exception e)
            {
                return Result.FromException(e);
            }
        }

        [WebMethod]
        public Result UpdateUser(AuthInfo authInfo, UserInfo userInfo,string updateFieldName)
        {
            try
            {
                YZService.AuthSystem(authInfo);
                YZAuthHelper.SetAuthCookie(authInfo.RealLoginAccount);

                //传入值检查
                if (String.Compare(updateFieldName,"Password")==0)
                    throw new Exception(String.Format("属性不支持以更新方式修改：{0}",updateFieldName));

                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();

                    //获得用户原始信息
                    User user = new User();
                    user.Open(cn, userInfo.Account);

                    //粘合新属性
                    PropertyInfo tagProp = typeof(User).GetProperty(updateFieldName);
                    FieldInfo srcProp = typeof(UserInfo).GetField(updateFieldName);
                    if (tagProp == null || srcProp == null)
                        throw new Exception(String.Format("无效的属性：{0}",updateFieldName));

                    tagProp.SetValue(user, srcProp.GetValue(userInfo), null);

                    //执行更新
                    BPM.Client.User.Update(cn, user.Account, user);
                }

                return Result.SuccessResult;
            }
            catch (Exception e)
            {
                return Result.FromException(e);
            }
        }

        [WebMethod]
        public Result ResetPassword(AuthInfo authInfo, string account, string password)
        {
            try
            {
                YZService.AuthSystem(authInfo);
                YZAuthHelper.SetAuthCookie(authInfo.RealLoginAccount);

                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();

                    string oupath;
                    MemberCollection members = OrgSvr.GetUserPositions(cn, account);
                    if (members.Count == 0)
                        oupath = cn.GetRootOUs()[0].FullName;
                    else
                        oupath = members[0].GetParentOU(cn).FullName;

                    BPM.Client.User.ResetPassword(cn, oupath, account, password);
                }

                return Result.SuccessResult;
            }
            catch (Exception e)
            {
                return Result.FromException(e);
            }
        }

        #endregion

        #region 内部方法

        private static void AuthSystem(AuthInfo authInfo)
        {
            using (SqlConnection cn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BPMDB"].ConnectionString))
            {
                cn.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cn;

                cmd.CommandText = "SELECT COUNT(*) FROM iAppSystem WHERE SystemID=@SystemID AND SystemPWD=@SystemPWD";
                cmd.Parameters.Add("@SystemID", SqlDbType.NVarChar).Value = Convert.ToString(authInfo.SystemID);
                cmd.Parameters.Add("@SystemPWD", SqlDbType.NVarChar).Value = Convert.ToString(authInfo.SystemPassword);

                int rv = Convert.ToInt32(cmd.ExecuteScalar());
                if (rv == 0)
                    throw new Exception("系统名或密码有误，WebService拒绝服务。");
            }
        }

        private static string LDAPOU2BPMOUPath(string ldapou)
        {
            if (String.IsNullOrEmpty(ldapou))
                return YZService.DefaultOU;

            using(BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                OU ou = OU.TryGetOUFromCode(cn, ldapou);
                if (ou == null)
                    throw new Exception(String.Format("部门不存在，编码：{0}",ldapou));

                return ou.FullName;
            }

            //using (SqlConnection cn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BPMDB"].ConnectionString))
            //{
            //    cn.Open();

            //    SqlCommand cmd = new SqlCommand();
            //    cmd.Connection = cn;

            //    cmd.CommandText = "SELECT BPMOU FROM iAppLDAPOUMap WHERE LDAPOU=@LDAPOU";
            //    cmd.Parameters.Add("@LDAPOU", SqlDbType.NVarChar).Value = Convert.ToString(ldapou);

            //    string rv = Convert.ToString(cmd.ExecuteScalar());
            //    if (String.IsNullOrEmpty(rv))
            //        rv = YZService.DefaultOU;

            //    return rv;
            //}
        }

        #endregion
    }

    public class UserInfo
    {
        public string Account;
        public string Password;
        public string DisplayName;
        public bool Disabled = false;
        public string HRID;
        public string EMail;

        public string LDAPOU;
        private User _user;
        private Member _member;

        internal User User
        {
            get
            {
                if (this._user == null)
                    this._user = new User();

                this._user.Account = this.Account;
                this._user.Password = this.Password;
                this._user.DisplayName = this.DisplayName;
                this._user.Disabled = this.Disabled;
                this._user.HRID = this.HRID;
                this._user.EMail = this.EMail;

                return this._user;
            }
        }

        internal Member Member
        {
            get
            {
                if (this._member == null)
                    this._member = new Member();

                return this._member;
            }
        }
    }

    public class AuthInfo
    {
        public string SystemID;
        public string SystemPassword;
        public string Account;

        internal string RealLoginAccount
        {
            get
            {
                return String.IsNullOrEmpty(this.Account) ? YZService.DefaultOptAccount : this.Account;
            }
        }
    }

    public class Result
    {
        public bool Success = true;
        public int ErrorCode = 0;
        public string ErrorName = null;
        public string ErrorMessage = null;

        internal static Result SuccessResult
        {
            get
            {
                return new Result();
            }
        }

        internal static Result FromException(Exception exp)
        {
            BPMException bpmexp = exp as BPMException;

            Result result = new Result();
            result.Success = false;

            if (bpmexp != null)
            {
                result.ErrorCode = (int)bpmexp.ExceptionType;
                result.ErrorName = bpmexp.ExceptionType.ToString();
            }
            else
            {
                result.ErrorCode = (int)BPMExceptionType.UnKnowError;
                result.ErrorName = BPMExceptionType.UnKnowError.ToString();
            }
            result.ErrorMessage = exp.Message;

            return result;
        }
    }
}

