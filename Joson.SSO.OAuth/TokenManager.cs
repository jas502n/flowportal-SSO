using System;
using System.Data;
using System.Configuration;
using System.Web;

using System.Web.Security;


namespace Joson.SSO.OAuth
{
    /// <summary>
    /// 缓存管理
    /// 将用户凭证、令牌的关系数据存放于Cache中
    /// </summary>
    public class TokenCache
    {
        /// <summary>
        /// 获取缓存中的DataTable
        /// </summary>
        /// <returns></returns>
        public static DataTable GetCacheTable()
        {
            DataTable dt = null;
            if (HttpContext.Current.Cache["Token"] != null)
            {
                dt = (DataTable)HttpContext.Current.Cache["Token"];
            }
            return dt;
        }

        /// <summary>
        /// 初始化数据结构
        /// </summary>
        /// <remarks>
        /// ----------------------------------------------------
        /// | token(令牌) | info(用户凭证) | timeout(过期时间) |
        /// |--------------------------------------------------|
        /// </remarks>
        private static void CacheInit()
        {
            if (HttpContext.Current.Cache["Token"] == null)
            {
                double CacheTimeout = double.Parse(System.Configuration.ConfigurationManager.AppSettings["Timeout"]);

                DataTable dt = new DataTable();

                dt.Columns.Add("token", Type.GetType("System.String"));
                dt.Columns["token"].Unique = true;

                dt.Columns.Add("info", Type.GetType("System.Object"));
                dt.Columns["info"].DefaultValue = null;

                dt.Columns.Add("timeout", Type.GetType("System.DateTime"));
                dt.Columns["timeout"].DefaultValue = DateTime.Now.AddMinutes(CacheTimeout);

                DataColumn[] keys = new DataColumn[1];
                keys[0] = dt.Columns["token"];
                dt.PrimaryKey = keys;

                //Cache的过期时间为 令牌过期时间*2
                HttpContext.Current.Cache.Insert("Token", dt, null, DateTime.MaxValue , TimeSpan.FromMinutes(CacheTimeout * 2));
            }
        }

        /// <summary>
        /// 判断令牌是否存在
        /// TokenIsExist
        /// </summary>
        /// <param name="token">令牌</param>
        /// <returns></returns>
        public static bool IsExist(string token)
        {
            CacheInit();

            DataTable dt = (DataTable)HttpContext.Current.Cache["Token"];

            return dt.Select("token = '" + token + "'").Length != 0;

            //if (dt.Select("token = '" + token + "'").Length == 0)
            //    return false;
            //else
            //    return true;
        }

        /// <summary>
        /// 更新令牌过期时间
        /// TokenTimeUpdate
        /// </summary>
        /// <param name="token">令牌</param>
        /// <param name="time">过期时间</param>
        public static void TimeUpdate(string token, DateTime time)
        {
            CacheInit();

            DataTable dt = (DataTable)HttpContext.Current.Cache["Token"];
            DataRow[] dr = dt.Select("token = '" + token + "'");
            if (dr.Length > 0)
            {
                dr[0]["timeout"] = time;
            }
        }

        /// <summary>
        /// 添加令牌
        /// TokenInsert
        /// </summary>
        /// <param name="token">令牌</param>
        /// <param name="info">凭证</param>
        /// <param name="timeout">过期时间</param>
        public static void Insert(string token, object info, DateTime timeout)
        {
            CacheInit();

            if (!TokenCache.IsExist(token))
            {
                DataTable dt = (DataTable)HttpContext.Current.Cache["Token"];
                DataRow dr = dt.NewRow();
                dr["token"] = token;
                dr["info"] = info;
                dr["timeout"] = timeout;
                dt.Rows.Add(dr);
                HttpContext.Current.Cache["Token"] = dt;
            }
            else
            {
                TimeUpdate(token, timeout);
            }
        }

    }

}
