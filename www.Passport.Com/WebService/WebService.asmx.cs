using Net.LDAPHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Joson.SSO.Passport
{

    using BPM.Client;
    using BPM.Client.Security;
    using Net.ActiveDirectoryHelper;
    using Net.ActiveDirectoryHelper.Model;
    using Net.Common;
    using Net.MobileHelper;
    using SSOSite.OAuth;
    using System.Data;
    using System.Data.SqlClient;

    using XWebManage.Models;

    /// <summary>
    /// WebService 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://58.251.35.132:8000/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]

    [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {


        public String strCookieDomain = String.Empty;
        public String OAuthLDAP = String.Empty;
        public String OAuthDefaultURL = String.Empty;
        public bool OAuthByLDAP = false;
        public bool isValidUser = false;
        public bool OAuthDefault = false;

        static IQueryable<SkyWorth> IQueryableSkyWorth = null;

        String eDomainName = "sznsdc01.skyworth.com";
        String eUserName = "scriptroot";
        String ePassWord = "!qAz.@wSx";

        static String DomainName = "172.28.0.2";
        static String UserName = "scriptroot";
        static String PassWord = "!qAz.@wSx";
        static String RootOU = "创维数字";

        public WebService()
        {
            mContext context = new mContext();
            IQueryableSkyWorth = context.SkyWorth.OrderBy(c => true);
            SkyWorth mSkyWorth = null;

            if (IQueryableSkyWorth.Any(X => X.sType == 1))
            {
                mSkyWorth = IQueryableSkyWorth.FirstOrDefault(X => X.sType == 1);
                eDomainName = mSkyWorth.DomainName;
                eUserName = mSkyWorth.UserName;
                ePassWord = mSkyWorth.PassWord;

            }

            if (IQueryableSkyWorth.Any(X => X.sType == 0))
            {
                mSkyWorth = IQueryableSkyWorth.FirstOrDefault(X => X.sType == 0);
                DomainName = mSkyWorth.DomainName;
                UserName = mSkyWorth.UserName;
                PassWord = mSkyWorth.PassWord;

            }

        }


        [WebMethod]
        public Boolean DisableAccount(String sAMAccountName)
        {
            return Net.ActiveDirectoryHelper.ADUser.DisableAccount(DomainName, UserName, PassWord, sAMAccountName);
        }



        [WebMethod]
        public Boolean EnableAccount(String sAMAccountName)
        {
            return Net.ActiveDirectoryHelper.ADUser.EnableAccount(DomainName, UserName, PassWord, sAMAccountName);
        }


        [WebMethod]
        public Boolean SetPassword(String sAMAccountName, String strPassport)
        {
            return Net.ActiveDirectoryHelper.ADUser.SetPassword(DomainName, UserName, PassWord, sAMAccountName, strPassport);
        }



        [WebMethod]
        public Boolean IsAccountLockedOut(String sAMAccountName)
        {

            return Net.ActiveDirectoryHelper.ADUser.IsAccountLockedOut(DomainName, UserName, PassWord, sAMAccountName);
        }


        [WebMethod]
        public Boolean IsEmailAccountLockedOut(String sAMAccountName)
        {

            //String eDomainName = "sznsdc01.skyworth.com";
            //String eUserName = "scriptroot";
            //String ePassWord = "!qAz.@wSx";

            return Net.ActiveDirectoryHelper.ADUser.IsAccountLockedOut(DomainName, UserName, PassWord, sAMAccountName);
        }



        [WebMethod]
        public Boolean UnLockEmailAccount(String sAMAccountName)
        {
            //String eDomainName = "sznsdc01.skyworth.com";
            //String eUserName = "scriptroot";
            //String ePassWord = "!qAz.@wSx";

            return Net.ActiveDirectoryHelper.ADUser.UnlockUserAccount(eDomainName, eUserName, ePassWord, sAMAccountName);
        }

        [WebMethod]
        public Boolean SetEmailPassword(String sAMAccountName, String strPassport)
        {
            //String eDomainName = "sznsdc01.skyworth.com";
            //String eUserName = "scriptroot";
            //String ePassWord = "!qAz.@wSx";


            return Net.ActiveDirectoryHelper.ADUser.SetPassword(eDomainName, eUserName, ePassWord, sAMAccountName, strPassport);
        }

        [WebMethod]
        public Boolean GetEmailOAuth(String strAccount, out OUser Entity)
        {

            //String eDomainName = "sznsdc01.skyworth.com";
            //String eUserName = "scriptroot";
            //String ePassWord = "!qAz.@wSx";

            Boolean isSucessful = false;
            IEnumerable<OUser> LstEntity = new List<OUser>();

            try
            {
                isSucessful = true;
                Search.TryAuthenticate(eDomainName, eUserName, ePassWord, out LstEntity, strAccount);
                Entity = LstEntity.Where(o => o.sAMAccountName.ToUpper() == strAccount.ToUpper()).ToList()[0];
            }
            catch (Exception ex) { Entity = null; }

            return isSucessful;
        }

        [WebMethod]
        public Boolean GetOAuth(String strAccount, out OUser Entity)
        {
            Boolean isSucessful = false;
            IEnumerable<OUser> LstEntity = new List<OUser>();

            try
            {
                isSucessful = true;
                Search.TryAuthenticate(eDomainName, eUserName, ePassWord, out LstEntity, strAccount);
                Entity = LstEntity.Where(o => o.sAMAccountName.ToUpper() == strAccount.ToUpper()).ToList()[0];
            }
            catch (Exception ex) { Entity = null; }

            return isSucessful;
        }

        [WebMethod]
        public Boolean OAuth(String strAccount, String strPassport, out OUser Entity)
        {
            Entity = null;

            #region OAuth

            //非常重要的配置 如果要配置请保证其正确性！建议不要配置 默认读取域名
            strCookieDomain = System.Configuration.ConfigurationManager.AppSettings["OAuthURL"];

            //是否使用域验证
            OAuthByLDAP = System.Configuration.ConfigurationManager.AppSettings["OAuthByLDAP"] == "true";

            //验证通过后跳转页面 SSO 登录中心导向页面
            OAuthDefaultURL = System.Configuration.ConfigurationManager.AppSettings["OAuthSucessfulURL"];

            if (OAuthByLDAP)
            {

                OAuthLDAP = System.Configuration.ConfigurationManager.AppSettings["OAuthLDAP"];
                //isValidUser = ADHelper.TryAuthenticate(OAuthLDAP, strAccount, strPassport);

                //IdentityImpersonation Login = new IdentityImpersonation(strAccount, strPassport, OAuthLDAP);
                //Login.BeginImpersonate();

                DomainName = System.Configuration.ConfigurationManager.AppSettings["DomainName"];
                IEnumerable<OUser> LstEntity = new List<OUser>();
                isValidUser = Search.TryAuthenticate(DomainName, strAccount, strPassport, out LstEntity, strAccount);

                if (isValidUser && LstEntity != null)
                {
                    Entity = LstEntity.Where(o => o.sAMAccountName.ToUpper() == strAccount.ToUpper()).ToList()[0];
                }

            }
            else
            {

                isValidUser = strAccount == System.Configuration.ConfigurationManager.AppSettings["Acount"]
                              && strPassport == System.Configuration.ConfigurationManager.AppSettings["PassWord"];

            }
            #endregion

            return isValidUser;
        }

        #region OpenConnection

        protected IDbConnection OpenConnection()
        {
            SqlConnection cn = new SqlConnection();

            string strDataServer = System.Web.Configuration.WebConfigurationManager.AppSettings["SQLConnection"];
            cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            cn.Open();
            return cn;
        }


        public DataTable ExecuteDataTable(String strSQL)
        {
            DataTable table = new DataTable();


            using (SqlCommand cmd = new SqlCommand())
            {

                cmd.Connection = OpenConnection() as SqlConnection;
                cmd.CommandText = strSQL;

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table.Load(reader);
                }
                return table;
            }

        }

        #endregion


        [WebMethod]
        public DataSet GetWorkTime(String strAccount, int m)
        {
            DataTable table = new DataTable();
            DataSet ds = new DataSet();


            //V1:年假  V2:事假  V3:病假   V4:婚假  V5:产假  V6:丧假 V7：哺乳假

            using (SqlCommand cmd = new SqlCommand())
            {

                #region 考勤查询

                String strSQL = @" SELECT  [EmpID]
                                    ,[WorkDay]
                                    ,[WeekInt]
                                    ,[ClassID]
                                    ,[StartTime]
                                    ,[EndTime]
                                    ,[A_FromTime]
                                    ,[A_ToTime]
                                    ,[NotCard]
                                    ,[AbsentTime]
                                    ,[GongGan]
                                    ,[OverTime_H]
                                    ,[OverTime_W]
                                    ,[IsAbnormal]
                                    ,[V1]
                                    ,[V2]
                                    ,[V3]
                                    ,[V4]
                                    ,[V5]
                                    ,[V6]
                                    ,[V7]
                                    ,(Select CONVERT(varchar(100), WorkDay, 107)) HDay

                                    ,CASE WHEN [V1] > 0 THEN '年假'+Convert(NVARCHAR(50),V1)+'小时' 
                                    WHEN  [V2] > 0 THEN '事假'+Convert(NVARCHAR(50),V2)+'小时' 
                                    WHEN  [V3] > 0 THEN '病假'+Convert(NVARCHAR(50),V3)+'小时' 
                                    WHEN  [V4] > 0 THEN '婚假'+Convert(NVARCHAR(50),V4)+'小时' 
                                    WHEN  [V5] > 0 THEN '产假'+Convert(NVARCHAR(50),V5)+'小时' 
                                    WHEN  [V6] > 0 THEN '丧假'+Convert(NVARCHAR(50),V6)+'小时' 
                                    WHEN  [V7] > 0 THEN '哺乳假'+Convert(NVARCHAR(50),V7)+'小时' 
                                    ELSE '0' END
                                    as Holiday

                                    ,[OverTime_H]
                                    ,[OverTime_W]

                                   ,CASE WHEN [OverTime_H] >0 then '节假日加班'+Convert(NVARCHAR(50),[OverTime_H])+'小时' 
                                    WHEN  OverTime_W > 0 THEN '周末日加班'+Convert(NVARCHAR(50),[OverTime_W])+'小时'  
                                    ELSE '0'   End as  OverTime 

                                FROM [HR_Digital].[dbo].[Attendance]

                                where EmpID=@UserAccount 
                                      and DATEDIFF(yyyy , WorkDay, getdate()) =0 
                                      and  DATEDIFF(d, WorkDay, getdate()) >@m 
                                      order by WorkDay desc";


                cmd.Connection = OpenConnection() as SqlConnection;
                cmd.CommandText = strSQL;
                cmd.Parameters.Add("@UserAccount", SqlDbType.NVarChar, 50).Value = strAccount;
                cmd.Parameters.Add("@m", SqlDbType.NVarChar, 50).Value = m;

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table.Load(reader);
                }
                #endregion


            }

            ds.Tables.Add(table);

            return ds;
        }


        [WebMethod]
        public DataSet GetContact(String itemvalue)
        {
            DataTable table = new DataTable();
            DataSet ds = new DataSet();


            string sqlString = "sp_AddressBooks";
            SqlParameter[] prams ={
                                  new SqlParameter("@_strTransType",SqlDbType.VarChar,100),
                                  new SqlParameter("@_EmpName",SqlDbType.NVarChar,200)

                              };


            #region 查询条件

            int n;

            if (int.TryParse(itemvalue, out n))
            {
                //为数字            
                if (itemvalue.Length >= 5)
                {
                    prams[0].Value = "ADDRESSBOOK_ALL_SELECTS";
                    prams[1].Value = itemvalue;
                }
                else
                {
                    prams[0].Value = "ADDRESSBOOK_ALL_SELECT";
                    prams[1].Value = itemvalue;
                }
            }

            else
            {
                //非数字

                itemvalue = String.IsNullOrEmpty(itemvalue) ? "总裁办*" : itemvalue.Replace(" ", ",");
                itemvalue = itemvalue.ToUpper() == "HR" ? "人力*" : itemvalue;
                itemvalue = itemvalue.ToUpper() == "IT" ? "信息管理" : itemvalue;
                itemvalue = itemvalue.ToUpper() == "人力" ? "人力*" : itemvalue;
                itemvalue = itemvalue.ToUpper() == "亮亮" || itemvalue.ToUpper() == "攻城狮" ? "SDT12933" : itemvalue;


                prams[0].Value = "ADDRESSBOOK_ALL_SELECT";
                prams[1].Value = itemvalue;

            }

            #endregion


            String strSQL = @"SELECT  
                              Count([EmpID]) Counts
                              ,[DeptName1] [DeptName]
                              ,Company
                              FROM [HR_Digital].[dbo].[AddressBooks]
                              group by Company,  [DeptName1]
                              order by  Count([EmpID]) desc";


            DataTable DtDepartment = Net.DBUtility.SQLHelper.ExecuteDataTable(CommandType.Text, strSQL, null);

            using (SqlDataReader reader = Net.DBUtility.SQLHelper.ExecuteReader(CommandType.StoredProcedure, sqlString, prams))
            {
                String Phone = String.Empty;
                table.Load(reader);

                #region DataTable

                DataTable dtNew = new DataTable();
                dtNew = table.Clone();

                if (table.Rows.Count > 3)
                {
                    foreach (DataRow dataRow in table.Rows)
                    {
                        foreach (DataColumn c in table.Columns)
                        {
                            dataRow["Phone"] = c.ColumnName == "Phone" ? "" : dataRow["Phone"];
                            //dataRow["email"] = c.ColumnName == "EMail" ? "" : dataRow["email"];
                        }
                    }
                }

                #endregion
            }

            ds.Tables.Add(table);
            ds.Tables.Add(DtDepartment);

            return ds;
        }


        [WebMethod]
        public void GetTaskLst(String itemvalue)
        {
            IDictionary<String, Dictionary<String, String>> DictLst = new Dictionary<String, Dictionary<String, String>>();

            // SecurityToken token = null;
            // YZAuthHelper.AuthCheck();

            // string LoginUserAccount = YZAuthHelper.LoginUserAccount;

            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();

                int taskCount = cn.GetMyTaskCount();
                //int ShareTaskCount = cn.GetShareTaskCount();

                int ProcessNameCounts = 0;
                var TaskList = cn.GetMyTaskList();

                foreach (BPM.Client.BPMTaskListItem BPMTaskList in TaskList)
                {

                    int TaskID = BPMTaskList.TaskID;
                    String TaskState = BPMTaskList.TaskState.ToString();
                    String SerialNum = BPMTaskList.SerialNum;
                    String ProcessName = BPMTaskList.ProcessName;
                    String OwnerDisplayName = BPMTaskList.OwnerDisplayName;
                    String StepName = BPMTaskList.StepID + "-" + BPMTaskList.StepName;


                    if (!DictLst.ContainsKey(ProcessName))
                    {

                        ProcessName = String.Format("ProcessName=N'{0}'", ProcessName);

                        TaskList = cn.GetMyTaskList(ProcessName, "StepID DESC", 0, 100, out ProcessNameCounts);
                        Dictionary<String, String> iDict = new Dictionary<String, String>();
                        foreach (BPM.Client.BPMTaskListItem thisTaskList in TaskList)
                        {
                            string stepDisplayName = BPMProcStep.GetStepDisplayName(thisTaskList.StepName);

                            TaskID = thisTaskList.TaskID;
                            TaskState = thisTaskList.TaskState.ToString();
                            SerialNum = thisTaskList.SerialNum;
                            ProcessName = thisTaskList.ProcessName;
                            OwnerDisplayName = thisTaskList.OwnerDisplayName;
                            StepName = thisTaskList.StepID + "-" + stepDisplayName;

                            String Keys = SerialNum + "|" + StepName + "|" + OwnerDisplayName;
                            iDict.Add(Keys, ProcessName);
                        }

                        ProcessName = ProcessName + "|" + ProcessNameCounts;

                        if (!DictLst.ContainsKey(ProcessName))
                            DictLst.Add(ProcessName, iDict);
                    }

                }
            }

            // return DictLst;

        }


        /// <summary>
        /// SSO登录
        /// </summary>
        /// <param name="strAccount"></param>
        /// <param name="strPassport"></param>
        /// <returns></returns>
        [WebMethod]
        public OAuthToken SSOLogin(String strAccount, String strPassport)
        {
            //摸拟用户登录验证(帐号、密码于web.config中)
            //真实环境此处应通过数据库进行验证


            string strWebSiteName = String.Empty;

            OAuthDefault = String.IsNullOrWhiteSpace(System.Configuration.ConfigurationManager.AppSettings["OAuthDefault"]);
            //非常重要的配置 如果要配置请保证其正确性！建议不要配置 默认读取域名
            strCookieDomain = System.Configuration.ConfigurationManager.AppSettings["OAuthURL"];

            //是否使用域验证
            OAuthByLDAP = System.Configuration.ConfigurationManager.AppSettings["OAuthByLDAP"] == "true";

            //验证通过后跳转页面 SSO 登录中心导向页面
            OAuthDefaultURL = System.Configuration.ConfigurationManager.AppSettings["OAuthSucessfulURL"];


            JosonOAuth.OUser Entity = null;

            if (OAuthByLDAP)
            {
                if (OAuthDefault)
                {
                    OAuthLDAP = System.Configuration.ConfigurationManager.AppSettings["OAuthLDAP"];
                    isValidUser = ADHelper.TryAuthenticate(OAuthLDAP, strAccount, strPassport);

                }
                else
                {

                    JosonOAuth.WebServiceSoapClient O = new JosonOAuth.WebServiceSoapClient();

                    isValidUser = O.OAuth(out Entity, strAccount, strPassport);

                }

            }
            else
            {

                isValidUser = strAccount == System.Configuration.ConfigurationManager.AppSettings["Acount"]
                              && strPassport == System.Configuration.ConfigurationManager.AppSettings["PassWord"];

            }

            OAuthToken OAuth = new OAuthToken();

            if (isValidUser)
            {
                //产生令牌
                string tokenValue = Guid.NewGuid().ToString().ToUpper(); //产生绝对唯一字符串，用于令牌
                HttpCookie tokenCookie = new HttpCookie("Token");
                tokenCookie.Values.Add("Value", tokenValue);

                tokenCookie.Domain = strCookieDomain ?? Net.Common.GetRequest.GetCurrentDomain();
                HttpContext.Current.Response.AppendCookie(tokenCookie);

                OAuth = new OAuthToken
                {
                    ID = 0,
                    UserAgent = HttpContext.Current.Request.UserAgent,
                    isLocked = false,
                    AccountID = strAccount,
                    AccountName = strAccount,

                    sn = Entity?.SN,
                    givenName = Entity?.GivenName,
                    displayName = Entity?.DisplayName,
                    initials = Entity?.initials,
                    title = Entity?.Title,
                    company = Entity?.Company,
                    mail = Entity?.Mail,
                    otherMailBox = Entity?.OtherMailBox,
                    homePhone = Entity?.HomePhone,
                    mobile = Entity?.Mobile,
                    otherMobile = Entity?.OtherMobile,
                    whenCreated = Entity.WhenCreated,
                    whenChanged = Entity.WhenChanged,
                    department = Entity?.Department,
                    manager = Entity?.Manager,
                    streetAddress = Entity?.streetAddress,
                    physicalDeliveryOfficeName = Entity?.physicalDeliveryOfficeName,


                    PassWords = strPassport,
                    TokenVal = tokenValue,
                    WebSiteName = strWebSiteName,
                    RedirectURL = "",
                    ReturnURL = "",
                    LogInDtime = DateTime.Now.ToStrings(),
                    LogOutDtime = DateTime.Now.AddMinutes(1).ToStrings(),
                    LogInIP = GetRequest.GetClientIP() // "172.0.0.1" + Request.UserAgent

                };

                //产生主站凭证
                object info = true;

                TokenCache.Insert(tokenValue, OAuth.Serializer(), DateTime.Now.AddMinutes(double.Parse(System.Configuration.ConfigurationManager.AppSettings["Timeout"])));

            }


            return OAuth;

        }

        [WebMethod]
        public Boolean SSOLogOut(string Token)
        {
            return TokenCache.DelToken(Token);
        }


    }
}
