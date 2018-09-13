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
    using System.Web.Script.Serialization;
    using XWebManage.Models;

    /// <summary>
    /// WebService 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://oauth.skyworthdigital.com")]
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
        //static String RootOU = "创维数字";

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
        public void GetWorkTime(String strAccount, int m)
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
                                      and  DATEDIFF(yyyy , WorkDay, getdate()) =0 
                                      and  DATEDIFF(m, WorkDay, getdate()) =@m 
                                      --and  DATEDIFF(d, WorkDay, getdate()) >@m 
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

            //return ds;

            if (Context.Request.HttpMethod.ToUpper() == "OPTIONS")
            {
                return;
            }
 
            //var Results = JsonAndXmlSerialization.Serialize(ds.Tables[0]);

            var Results = ds.Tables[0].ToJson();

            Context.Response.AppendHeader("Access-Control-Allow-Origin", "*");      // 响应类型 
            Context.Response.AppendHeader("Access-Control-Allow-Methods", "POST");  // 响应头设置 
            Context.Response.AppendHeader("Access-Control-Allow-Headers", "x-requested-with,content-type");

            Context.Response.ContentType = "application/json;charset=gb2312";
            Context.Response.Charset = "GB2312"; //设置字符集类型  
            Context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
            Context.Response.Write(Results);
            Context.Response.End();


        }



        [WebMethod]
        public void GetContact(String itemvalue)
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

            //return ds;


            if (Context.Request.HttpMethod.ToUpper() == "OPTIONS")
            {
                return;
            }
            Context.Response.AppendHeader("Access-Control-Allow-Origin", "*");      // 响应类型 
            Context.Response.AppendHeader("Access-Control-Allow-Methods", "POST");  // 响应头设置 
            Context.Response.AppendHeader("Access-Control-Allow-Headers", "x-requested-with,content-type");

            Context.Response.Charset = "gb2312"; //设置字符集类型  
            Context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
            Context.Response.ContentType = "application/json;charset=gb2312";
            Context.Response.Write(ds.Tables[0].ToJson());
            Context.Response.End();




        }


        [WebMethod]
        /*查询个人绩效*/
        public void PerformanceSelectByEmpID(string sEmpID)
        {
            DataTable dtPerformance = new DataTable();

            String strSQL = string.Format("SELECT  * FROM (SELECT EmpID,EmpName,YEAR,Quarter,Performance FROM PerformanceData WHERE EmpID='{0}' ) a pivot (MAX(Performance) for Quarter IN ([第一季度],[第二季度],[第三季度],[第四季度])) b", sEmpID);

            dtPerformance = Net.DBUtility.SQLHelper.ExecuteDataTable(CommandType.Text, strSQL, null);
            dtPerformance.TableName = "Json";

            //return dtPerformance;

            ResponseJoson(dtPerformance);

        }


        [WebMethod]
        /*查询所有绩效*/
        public void PerformanceSelectByEmpName(string sEmpName)
        {
            DataTable dtPerformance = new DataTable();

            String strSQL = string.Format("SELECT  c.EmpID,c.EmpName,c.DeptName1,c.DeptName2,c.DeptName3,b.Year,b.第一季度,b.第二季度,b.第三季度,b.第四季度 FROM (SELECT EmpID,EmpName,YEAR,Quarter,Performance FROM PerformanceData WHERE EmpName='{0}' ) a pivot (MAX(Performance) for Quarter IN ([第一季度],[第二季度],[第三季度],[第四季度])) b inner join Employee c on b.EmpID=c.EmpID", sEmpName);

            dtPerformance = Net.DBUtility.SQLHelper.ExecuteDataTable(CommandType.Text, strSQL, null);
            dtPerformance.TableName = "Json";

            // return dtPerformance;

            ResponseJoson(dtPerformance);

        }



        [WebMethod]
        public void YearLeaveSelect(string EmpID, string m)
        {
            m = String.IsNullOrWhiteSpace(m) ? "0" : m;
            DataTable dtPerformance = new DataTable();


            String strSQL = string.Format(@"SELECT[YearNO]
      ,[EmpID]
      ,[SumTime]
      ,[UsedTime]
      ,[UsableTime]
      ,[EffDate]
      ,[ExpDate]
  FROM [YearLeave]

  where EmpID = '{0}'   and  DATEDIFF(yyyy , [YearNO], getdate()) ={1}

  Order By YearNO desc", EmpID, m);

            dtPerformance = Net.DBUtility.SQLHelper.ExecuteDataTable(CommandType.Text, strSQL, null);
            dtPerformance.TableName = "Json";

            //return dtPerformance;
            //return new JavaScriptSerializer().Serialize(dtPerformance.ToJson());

            Context.Response.AppendHeader("Access-Control-Allow-Origin", "*");      // 响应类型 
            Context.Response.AppendHeader("Access-Control-Allow-Methods", "POST");  // 响应头设置 
            Context.Response.AppendHeader("Access-Control-Allow-Headers", "x-requested-with,content-type");

            Context.Response.Charset = "gb2312"; //设置字符集类型  
            Context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
            Context.Response.ContentType = "application/json;charset=gb2312";

            Context.Response.Write(dtPerformance.ToJson());
            Context.Response.End();


        }






        [WebMethod]
        /// <summary>
        /// 考勤明细
        /// </summary>
        /// <param name="EmpID"></param>
        /// <param name="FromDate"></param>
        /// <param name="ToDate"></param>
        /// <returns></returns>
        public void AttendanceSelect(string EmpID, string FromDate, string ToDate)
        {

            DataTable dtPerformance = new DataTable();
            //String strSQL = string.Format("SELECT  PersonNO,PersonName,DeviceName,DoorNO,BrushCardTime FROM MJ.View_NormalRecord WHERE PersonNO='{0}' AND BrushCardTime >='{1}' AND BrushCardTime <='{2}' ORDER BY  BrushCardTime DESC ", EmpID, FromDate, ToDate);

            //dtPerformance = Net.DBUtility.SQLHelper.ExecuteDataTable(CommandType.Text, strSQL, null);

            //return dtPerformance;

            FromDate = String.IsNullOrWhiteSpace(FromDate) ? DateTime.Now.ToShortDateString() : FromDate;
            ToDate = String.IsNullOrWhiteSpace(ToDate) ? DateTime.Now.AddDays(1).ToShortDateString() : ToDate;

            String StrConntion = System.Configuration.ConfigurationManager.AppSettings["SQLConn"];

            using (SqlConnection con = new SqlConnection(StrConntion))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    con.Open();

                    cmd.CommandText = string.Format("SELECT  PersonNO,PersonName,DeviceName,DoorNO,BrushCardTime FROM MJ.View_NormalRecord WHERE (PersonNO='{0}' OR PersonName='{0}') AND BrushCardTime >='{1}' AND BrushCardTime <='{2}' ORDER BY  BrushCardTime DESC ", EmpID, FromDate, ToDate);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd.CommandText, con);

                    dtPerformance.TableName = "Json";
                    sda.Fill(dtPerformance);

                    con.Close();
                    con.Dispose();

                    //return dtPerformance;
                    ResponseJoson(dtPerformance);
                }
            }



        }


        [WebMethod]
        /// <summary>
        ///  考勤查询
        /// </summary>
        /// <param name="LoginEmp"></param>
        /// <param name="FromDate"></param>
        /// <param name="ToDate"></param>
        /// <param name="EmpID"></param>
        /// <param name="EmpName"></param>
        /// <param name="CurrentPage"></param>
        /// <param name="PageSize"></param>
        /// <param name="SumCount"></param>
        /// <returns></returns>
        public void AttendanceResult(string EmpID, string FromDate, string ToDate)
        {
            string EmpName = String.Empty;
            string LoginEmp = EmpID;
            int CurrentPage = 1;
            int PageSize = 200;


            FromDate = String.IsNullOrWhiteSpace(FromDate) ? DateTime.Now.ToShortDateString() : FromDate;
            ToDate = String.IsNullOrWhiteSpace(ToDate) ? DateTime.Now.AddDays(1).ToShortDateString() : ToDate;

            DataTable Dt = new DataTable();

            string sqlString = "AttendSum";

            SqlParameter[] prams =
                           {

                                new SqlParameter("@_strTransType", SqlDbType.VarChar, 100),
                                new SqlParameter("@LoginEmp", SqlDbType.VarChar, 20),

                                new SqlParameter("@FromDate", SqlDbType.DateTime),
                                new SqlParameter("@ToDate", SqlDbType.DateTime),
                                new SqlParameter("@EmpID", SqlDbType.VarChar, 10),
                                new SqlParameter("@EmpName", SqlDbType.NVarChar, 20),
                                new SqlParameter("@CurrentPage", SqlDbType.Int),
                                new SqlParameter("@PageSize", SqlDbType.Int),
                                new SqlParameter("@Counts", SqlDbType.Int)

                            };


            prams[0].Value = "SELECT";
            prams[1].Value = LoginEmp;
            prams[2].Value = FromDate;
            prams[3].Value = ToDate;
            prams[4].Value = EmpID;
            prams[5].Value = EmpName;
            prams[6].Value = CurrentPage;
            prams[7].Value = PageSize;



            Dt = Net.DBUtility.SQLHelper.ExecuteDataTable(CommandType.StoredProcedure, sqlString, prams);

            ///SumCount = Convert.ToInt32(cmd.Parameters["@Counts"].Value);    , ref int SumCount

            // return Dt;


            ResponseJoson(Dt);

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



        private void ResponseJoson(DataTable dtPerformance)
        {

            if (Context.Request.HttpMethod.ToUpper() == "OPTIONS")
            {
                return;
            }

            //Context.Response.Clear();
            Context.Response.AppendHeader("Access-Control-Allow-Origin", "*");

            // 响应类型 
            Context.Response.AppendHeader("Access-Control-Allow-Methods", "POST");
            // 响应头设置 
            Context.Response.AppendHeader("Access-Control-Allow-Headers", "x-requested-with,content-type");
            //Context.Response.Charset = "utf-8"; //设置字符集类型  
            //Context.Response.HeaderEncoding = System.Text.Encoding.GetEncoding("utf-8");
            //Context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");

            var strJoson = dtPerformance.ToJson();
            //strJoson = JosonConvert.ToJson(dtPerformance);

            Context.Response.ContentType = "application/json;charset=gb2312";
            Context.Response.ContentEncoding = System.Text.Encoding.Default;
            Context.Response.Write(strJoson);
            Context.Response.End();

        }

    }
}
