using System;
using System.Data;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

using Net.Common;
using Joson.SSOSite.OAuth;

using System.Configuration;

namespace Joson.SSO.Passport
{
    /// <summary>
    /// 主站WEB服务
    /// 正式布署请对接口添加安全验证
    /// </summary>
    [WebService(Namespace = "http://www.passport.com/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    public class TokenService : System.Web.Services.WebService
    {
        /// <summary>
        /// 根据令牌获取用户凭证
        /// </summary>
        /// <param name="tokenValue">令牌</param>
        /// <returns></returns>
        [WebMethod]
        public OAuthToken TokenGetCredences(string tokenValue)
        {
            OAuthToken o = null;

            DataTable dt = TokenCache.GetCacheTable();
            if (dt != null)
            {
                DataRow[] dr = dt.Select("token = '" + tokenValue + "'");
                if (dr.Length > 0)
                {
                    o = (OAuthToken)dr[0]["info"];

                    //o = Convert.ToString(dr[0]["info"]).Deserialize<OAuthToken>();

                }
            }

            return o;
        }


        /// <summary>
        /// 根据令牌获取用户凭证
        /// </summary>
        /// <param name="tokenValue"></param>
        /// <returns></returns>
        [WebMethod]
        public Object TokenGetCredence(string tokenValue)
        {
            Object o = null;

            DataTable dt = TokenCache.GetCacheTable();
            if (dt != null)
            {
                DataRow[] dr = dt.Select("token = '" + tokenValue + "'");
                if (dr.Length > 0)
                {
                    o = (Object)dr[0]["info"];
                }
            }

            return o;
        }


        /// <summary>
        /// 根据令牌获取用户凭证
        /// </summary>
        /// <param name="tokenValue"></param>
        /// <returns></returns>
        [WebMethod]
        public DataTable TokenGetCredencDt(string tokenValue)
        {


            DataTable dt = new DataTable();

            dt.TableName = "Joson";

            #region Columns

            //dt.Columns.Add("TokenVal", Type.GetType("System.String"));
            //dt.Columns["TokenVal"].Unique = true;

            //dt.Columns.Add("ID", Type.GetType("System.String"));
            //dt.Columns["ID"].DefaultValue = null;

            //dt.Columns.Add("AccountID", Type.GetType("System.String"));
            //dt.Columns["AccountID"].DefaultValue = null;

            //dt.Columns.Add("AccountName", Type.GetType("System.String"));
            //dt.Columns["AccountName"].DefaultValue = null;

            //dt.Columns.Add("AccountPassWords", Type.GetType("System.String"));
            //dt.Columns["AccountPassWords"].DefaultValue = null;

            //dt.Columns.Add("isLogin", Type.GetType("System.String"));
            //dt.Columns["isLogin"].DefaultValue = null;

            //DataColumn[] keys = new DataColumn[1];
            //keys[0] = dt.Columns["TokenVal"];
            //dt.PrimaryKey = keys; 

            #endregion

            DataTable CacheTable = TokenCache.GetCacheTable();

            if (dt != null)
            {
                DataRow[] dr = CacheTable.Select("token = '" + tokenValue + "'");

                #region Temp

                //int i = 0;
                //foreach (DataRow dtRow in dr)
                //{
                //    OAuthToken OAuth = (OAuthToken)dr[i]["info"];

                //    DataRow DtNewRow = dt.NewRow();

                //    DtNewRow["TokenVal"] = dr[i]["token"];

                //    DtNewRow["ID"] = OAuth.ID;
                //    DtNewRow["AccountID"] = OAuth.AccountID;
                //    DtNewRow["AccountName"] = OAuth.AccountName;
                //    DtNewRow["AccountPassWords"] = OAuth.AccountPassWords;

                //    DtNewRow["isLogin"] = OAuth.isLogin;

                //    dt.Rows.Add(DtNewRow);

                //    i++;

                //} 

                #endregion

                OAuthToken OAuth = dr[0]["info"].ToStrings().Deserialize<OAuthToken>();

                dt = OAuth.ToDataTable();
                dt.TableName = "OAuth";

            }

            return dt;

            //DataSet DtSet = new DataSet();
            //DtSet.Tables.Add(dt);
            //return DtSet;
        }

        /// <summary>
        /// 清除令牌
        /// </summary>
        /// <param name="tokenValue">令牌</param>
        [WebMethod]
        public void ClearToken(string tokenValue)
        {
            DataTable dt = TokenCache.GetCacheTable();

            if (dt != null)
            {
                DataRow[] dr = dt.Select("token = '" + tokenValue + "'");
                if (dr.Length > 0)
                {
                    dt.Rows.Remove(dr[0]);

                    #region Temp 

                    //OAuthSite=ConfigurationManager.AppSettings["OAuthSite"];

                    // DataSet Ds = DataSetXML.XmlDocumentToDataSet(ConfigurationManager.AppSettings["OAuthSite"]);

                    //if (Ds.Tables[0].Rows.Count > 0)
                    //{
                    //    foreach (DataRow Dr in Ds.Tables[0].Rows)
                    //    {
                    //        String HttpGet = Dr["httpGet"].ToStrings();

                    //        //GetRequest.GetPageResouceCode(HttpGet);
                    //        HttpRequestHander.HttpGet(HttpGet);

                    //    }

                    //} 

                    #endregion

                }
            }
        }

    }
}
