using System;
using System.Collections.Generic;

using System.Web;
using System.Text;

namespace Net.Common
{
    public class HttpCookies
    {

        //public static string GetCookie(string strName)
        //{
        //    if ((HttpContext.Current.Request.Cookies != null) && (HttpContext.Current.Request.Cookies[strName] != null))
        //    {
        //        return HttpContext.Current.Request.Cookies[strName].Value.ToString();
        //    }
        //    return "";
        //}

        //public static string GetCookie(string strName, string key)
        //{
        //    if (((HttpContext.Current.Request.Cookies != null) && (HttpContext.Current.Request.Cookies[strName] != null)) && (HttpContext.Current.Request.Cookies[strName][key] != null))
        //    {
        //        return HttpContext.Current.Request.Cookies[strName][key].ToString();
        //    }
        //    return "";
        //}


        #region 读取或写入cookie
        /// <summary>
        /// 写cookie值
        /// 加密方式
        /// </summary>
        /// <param name="strName">名称</param>
        /// <param name="strValue">值</param>
        public static void WriteCookie(string strName, string strValue)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[strName];
            if (cookie == null)
            {
                cookie = new HttpCookie(strName);
            }
            cookie.Value = DESEncrypt.UrlEncode(strValue);
            HttpContext.Current.Response.AppendCookie(cookie);
        }

        /// <summary>
        /// 写cookie值
        /// 加密方式
        /// </summary>
        /// <param name="strName">名称</param>
        /// <param name="strValue">值</param>
        public static void WriteCookie(string strName, string key, string strValue)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[strName];
            if (cookie == null)
            {
                cookie = new HttpCookie(strName);
            }
            cookie[key] = DESEncrypt.UrlEncode(strValue);
            HttpContext.Current.Response.AppendCookie(cookie);
        }

        /// <summary>
        /// 写cookie值
        /// 加密方式
        /// </summary>
        /// <param name="strName">名称</param>
        /// <param name="strValue">值</param>
        public static void WriteCookie(string strName, string key, string strValue, int expires)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[strName];
            if (cookie == null)
            {
                cookie = new HttpCookie(strName);
            }
            cookie[key] = DESEncrypt.UrlEncode(strValue);
            cookie.Expires = DateTime.Now.AddMinutes(expires);
            HttpContext.Current.Response.AppendCookie(cookie);
        }

        /// <summary>
        /// 写cookie值 
        /// 加密方式
        /// </summary>
        /// <param name="strName">名称</param>
        /// <param name="strValue">值</param>
        /// <param name="strValue">过期时间(分钟)</param>
        public static void WriteCookie(string strName, string strValue, int expires)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[strName];
            if (cookie == null)
            {
                cookie = new HttpCookie(strName);
            }
            cookie.Value = DESEncrypt.UrlEncode(strValue);
            cookie.Expires = DateTime.Now.AddMinutes(expires);
            HttpContext.Current.Response.AppendCookie(cookie);
        }

        /// <summary>
        /// 读cookie值
        /// </summary>
        /// <param name="strName">名称</param>
        /// <returns>cookie值</returns>
        public static string GetCookie(string strName)
        {
            if (HttpContext.Current.Request.Cookies != null && HttpContext.Current.Request.Cookies[strName] != null)
                return DESEncrypt.UrlDecode(HttpContext.Current.Request.Cookies[strName].Value.ToString());
            return "";
        }

        /// <summary>
        /// 读cookie值
        /// </summary>
        /// <param name="strName">名称</param>
        /// <returns>cookie值</returns>
        public static string GetCookie(string strName, string key)
        {
            if (HttpContext.Current.Request.Cookies != null && HttpContext.Current.Request.Cookies[strName] != null && HttpContext.Current.Request.Cookies[strName][key] != null)
                return DESEncrypt.UrlDecode(HttpContext.Current.Request.Cookies[strName][key].ToString());

            return "";
        }
        #endregion


        #region 获取所有Session
        /// <summary>
        /// 获取所有Session
        /// </summary>
        /// <returns></returns>
        public static Dictionary<string, string> GetSession()
        {
            string Key = string.Empty;
            string Val = string.Empty;

            Dictionary<string, string> Dict = new Dictionary<string, string>();


            foreach (string obj in HttpContext.Current.Session.Contents)
            {
                Key = obj.ToString();
                Val = HttpContext.Current.Session[obj].ToString();

                Dict.Add(Key, Val);
            }

            return Dict;
        }
        #endregion

        #region 获取所有Cookies

        /// <summary>
        /// 获取所有Cookies
        /// </summary>
        /// <returns></returns>
        public static Dictionary<string, string> GetCookies()
        {

            string Key = string.Empty;
            string Val = string.Empty;

            Dictionary<string, string> Dict = new Dictionary<string, string>();

            for (int i = 0; i < HttpContext.Current.Request.Cookies.Count; i++)
            {
                Key = HttpContext.Current.Request.Cookies.Keys[i].ToString();
                Val = HttpContext.Current.Request.Cookies[i].Value.ToString();
                Dict.Add(Key, Val);
            }

            return Dict;
        }
        #endregion

        #region 获取所有Application

        /// <summary>
        /// 获取所有Application
        /// </summary>
        /// <returns></returns>
        public static Dictionary<string, string> GetApplication()
        {
            string Key = string.Empty;
            string Val = string.Empty;

            Dictionary<string, string> Dict = new Dictionary<string, string>();

            for (int i = 0; i < HttpContext.Current.Application.Count; i++)
            {
                Key = HttpContext.Current.Application.Keys[i].ToString();
                Val = HttpContext.Current.Application[i].ToString();

                Dict.Add(Key, Val);
            }

            return Dict;
        }
        #endregion


        #region 返回Session信息
        /// <summary>
        /// 返回Session信息
        /// </summary>
        /// <param name="strName">Session名称</param>
        /// <returns></returns>
        public static string GetSession(string strName)
        {
            if (HttpContext.Current.Session[strName] == null)
            {
                return "";
            }
            return HttpContext.Current.Session[strName].ToString();
        }
        #endregion

        #region 写Session信息
        /// <summary>
        /// 写Session信息
        /// </summary>
        /// <param name="strName">Session名称</param>
        /// <param name="strValue">值</param>
        public static void SetSession(string strName, string strValue)
        {
            if (strName != "" && strValue != "")
            {
                HttpContext.Current.Session[strName] = strValue;
            }
        }
        #endregion

        #region 写Session信息

        /// <summary>
        /// 写cookie值
        /// </summary>
        /// <param name="strName">名称</param>
        /// <param name="strValue">值</param>
        public static void SetCookie(string strName, string strValue)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[strName];
            if (cookie == null)
            {
                cookie = new HttpCookie(strName);
            }
            cookie.Value = strValue;
            HttpContext.Current.Response.AppendCookie(cookie);

        }
        #endregion

        #region  写cookie值 带过期时间
        /// <summary>
        /// 写cookie值 
        /// 非加密方式
        /// </summary>
        /// <param name="strName">名称</param>
        /// <param name="strValue">值</param>
        /// <param name="expires">过期时间(分钟)</param>
        public static void SetCookies(string strName, string strValue, int expires)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[strName];
            if (cookie == null)
            {
                cookie = new HttpCookie(strName);
            }
            cookie.Value = strValue;
            cookie.Expires = DateTime.Now.AddMinutes(expires);
            HttpContext.Current.Response.AppendCookie(cookie);

        }
        #endregion

        #region 读cookie值
        /// <summary>
        /// 读cookie值
        /// </summary>
        /// <param name="strName">名称</param>
        /// <returns>cookie值</returns>
        public static string GetCookies(string strName)
        {
            if (HttpContext.Current.Request.Cookies != null && HttpContext.Current.Request.Cookies[strName] != null)
            {
                return HttpContext.Current.Request.Cookies[strName].Value.ToString();
            }

            return "";
        }

        #endregion



        /// <summary>
        /// 添加/更新 Cookies
        /// </summary>
        /// <param name="_key">Cookies</param>
        /// <param name="_cookiename">CookiesName</param>
        /// <param name="_value">CookiesValue</param>

        public static void SetCookies(string _key, string _cookiename, string _value)
        {

            HttpCookie cookie = HttpContext.Current.Request.Cookies[_key];

            //防止中文乱码
            //_value = System.Web.HttpUtility.UrlEncode(_value);

            //加密
            _value = DESEncrypt.Encrypt(_value);

            if (cookie == null)
            {
                cookie = new HttpCookie(_key);
                cookie.Values.Add(_cookiename, _value);
                HttpContext.Current.Response.AppendCookie(cookie);

            }
            else
            {

                if (cookie.Values[_cookiename] != null)
                {
                    cookie.Values.Set(_cookiename, _value);
                }
                else
                {

                    cookie.Values.Add(_cookiename, _value);
                }
                HttpContext.Current.Response.SetCookie(cookie);

            }

        }

        /// <summary>
        /// 添加/更新 Cookies
        /// </summary>
        /// <param name="_key">Cookies</param>
        /// <param name="_cookiename">CookiesName</param>
        /// <param name="_value">CookiesValue</param>
        /// <param name="_expires">int Expires</param>

        public static void SetCookies(string _key, string _cookiename, string _value, int _expires)
        {

            HttpCookie cookie = HttpContext.Current.Request.Cookies[_key];

            //防止中文乱码
            //_value = System.Web.HttpUtility.UrlEncode(_value);


            //加密
            _value = DESEncrypt.Encrypt(_value);

            if (cookie == null)
            {
                cookie = new HttpCookie(_key);
                cookie.Expires = DateTime.Now.AddMinutes(_expires);
                cookie.Values.Add(_cookiename, _value);
                HttpContext.Current.Response.AppendCookie(cookie);

            }
            else
            {
                cookie.Expires = DateTime.Now.AddMinutes(_expires);

                if (cookie.Values[_cookiename] != null)
                {
                    cookie.Values.Set(_cookiename, _value);
                }
                else
                {

                    cookie.Values.Add(_cookiename, _value);
                }
                HttpContext.Current.Response.SetCookie(cookie);

            }

        }

        /// <summary>
        /// 添加 修改/更新 Cookies
        /// </summary>
        /// <param name="_key">Cookies</param>
        /// <param name="_cookiename">CookiesName</param>
        /// <param name="_value">CookiesValue</param>
        /// <param name="_expires">过期时间值--默认永远不过期 </param>
        /// <param name="_expiresType">时间类型 （1:AddDays  2:AddHours 3:AddMinutes 4:AddSeconds 5:AddYears 6:AddMonths 默认:AddYears(99)）</param>

        public static void SetCookies(string _key, string _cookiename, string _value, int _expires, int _expiresType)
        {

            HttpCookie cookie = HttpContext.Current.Request.Cookies[_key];

            //防止中文乱码
            //_value = System.Web.HttpUtility.UrlEncode(_value);

            //加密
            _value = DESEncrypt.Encrypt(_value);

            DateTime _expiresDate = DateTime.Now;

            #region _expiresDate Cookies 过期时间设置

            switch (_expiresType)
            {
                case 1:
                    //AddDays
                    _expiresDate = DateTime.Now.AddDays(_expires);

                    break;

                case 2:
                    //AddHours
                    _expiresDate = DateTime.Now.AddHours(_expires);

                    break;

                case 3:
                    //AddMinutes
                    _expiresDate = DateTime.Now.AddMinutes(_expires);

                    break;

                case 4:
                    //AddSeconds
                    _expiresDate = DateTime.Now.AddSeconds(_expires);

                    break;
                case 5:
                    //AddYears
                    _expiresDate = DateTime.Now.AddYears(_expires);

                    break;

                case 6:
                    //AddYears
                    _expiresDate = DateTime.Now.AddMonths(_expires);

                    break;

                default:
                    //AddYears（99） 
                    _expiresDate = DateTime.Now.AddYears(99); // 永远不过期
                    break;

            }

            #endregion


            if (cookie == null)
            {
                cookie = new HttpCookie(_key);
                cookie.Expires = _expiresDate;
                cookie.Values.Add(_cookiename, _value);
                HttpContext.Current.Response.AppendCookie(cookie);

            }
            else
            {
                cookie.Expires = _expiresDate;

                if (cookie.Values[_cookiename] != null)
                {
                    cookie.Values.Set(_cookiename, _value);
                }
                else
                {

                    cookie.Values.Add(_cookiename, _value);
                }
                HttpContext.Current.Response.SetCookie(cookie);

            }

        }




        /// <summary>
        /// 添加 修改/更新 Cookies
        /// </summary>
        /// <param name="_key">Cookies</param>
        /// <param name="_cookiename">CookiesName</param>
        /// <param name="_value">CookiesValue</param>
        /// <param name="_expires">过期时间值--默认永远不过期 </param>
        /// <param name="_expiresType">时间类型 （1:AddDays  2:AddHours 3:AddMinutes 4:AddSeconds 5:AddYears 6:AddMonths 默认:AddYears(99)）</param>

        public static void SetCookies(string _domain, string _key, string _cookiename, string _value, int _expires, int _expiresType)
        {

            HttpCookie cookie = HttpContext.Current.Request.Cookies[_key];

            //防止中文乱码
            //_value = System.Web.HttpUtility.UrlEncode(_value);

            //加密
            _value = DESEncrypt.Encrypt(_value);


            DateTime _expiresDate = DateTime.Now;

            #region _expiresDate Cookies 过期时间设置

            switch (_expiresType)
            {
                case 1:
                    //AddDays
                    _expiresDate = DateTime.Now.AddDays(_expires);

                    break;

                case 2:
                    //AddHours
                    _expiresDate = DateTime.Now.AddHours(_expires);

                    break;

                case 3:
                    //AddMinutes
                    _expiresDate = DateTime.Now.AddMinutes(_expires);

                    break;

                case 4:
                    //AddSeconds
                    _expiresDate = DateTime.Now.AddSeconds(_expires);

                    break;
                case 5:
                    //AddYears
                    _expiresDate = DateTime.Now.AddYears(_expires);

                    break;

                case 6:
                    //AddYears
                    _expiresDate = DateTime.Now.AddMonths(_expires);

                    break;

                default:
                    //AddYears（99） 
                    _expiresDate = DateTime.Now.AddYears(99); // 永远不过期
                    break;

            }

            #endregion


            if (cookie == null)
            {
                cookie = new HttpCookie(_key);
                cookie.Domain = _domain;
                cookie.Expires = _expiresDate;
                cookie.Values.Add(_cookiename, _value);
                HttpContext.Current.Response.AppendCookie(cookie);

            }
            else
            {
                cookie.Domain = _domain;
                cookie.Expires = _expiresDate;


                if (cookie.Values[_cookiename] != null)
                {
                    cookie.Values.Set(_cookiename, _value);
                }
                else
                {

                    cookie.Values.Add(_cookiename, _value);
                }
                HttpContext.Current.Response.SetCookie(cookie);

            }

        }


        /// <summary>
        /// 添加/更新 Cookies
        /// </summary>
        /// <param name="_key">Cookies</param>
        /// <param name="_cookiename">CookiesName</param>
        /// <param name="_value">CookiesValue</param>
        /// <param name="_expires">DateTime _expires</param>

        public static void SetCookies(string _key, string _cookiename, string _value, DateTime _expires)
        {

            HttpCookie cookie = HttpContext.Current.Request.Cookies[_key];

            //防止中文乱码
            //_value = System.Web.HttpUtility.UrlEncode(_value);

            //加密
            _value = DESEncrypt.Encrypt(_value);

            if (cookie == null)
            {
                cookie = new HttpCookie(_key);
                cookie.Expires = _expires;

                cookie.Values.Add(_cookiename, _value);
                HttpContext.Current.Response.AppendCookie(cookie);

            }
            else
            {


                cookie.Expires = _expires;

                if (cookie.Values[_cookiename] != null)
                {
                    cookie.Values.Set(_cookiename, _value);
                }
                else
                {

                    cookie.Values.Add(_cookiename, _value);
                }
                HttpContext.Current.Response.SetCookie(cookie);

            }

        }


        /// <summary>
        /// 添加/更新 Cookies
        /// </summary>
        /// <param name="_domain"></param>
        /// <param name="_cookiepath"></param>
        /// <param name="_key"></param>
        /// <param name="_cookiename"></param>
        /// <param name="_value"></param>
        /// <param name="_expires"></param>
        public static void SetCookies(string _domain, string _cookiepath, string _key, string _cookiename, string _value, DateTime _expires)
        {

            HttpCookie cookie = HttpContext.Current.Request.Cookies[_key];

            //防止中文乱码
            //_value = System.Web.HttpUtility.UrlEncode(_value);

            //加密
            _value = DESEncrypt.Encrypt(_value);

            if (cookie == null)
            {
                cookie = new HttpCookie(_key);
                cookie.Domain = _domain;
                cookie.Path = _cookiepath;
                cookie.Expires = _expires;

                cookie.Values.Add(_cookiename, _value);
                HttpContext.Current.Response.AppendCookie(cookie);

            }
            else
            {

                cookie.Domain = _domain;
                cookie.Path = _cookiepath;
                cookie.Expires = _expires;

                if (cookie.Values[_cookiename] != null)
                {
                    cookie.Values.Set(_cookiename, _value);
                }
                else
                {

                    cookie.Values.Add(_cookiename, _value);
                }
                HttpContext.Current.Response.SetCookie(cookie);

            }

        }


        /// <summary>
        /// 添加/更新 Cookies
        /// </summary>
        /// <param name="_domain"></param>
        /// <param name="_cookiepath"></param>
        /// <param name="_key"></param>
        /// <param name="_cookiename"></param>
        /// <param name="_value"></param>
        /// <param name="_expires">过期时间 （几分钟 后过期）</param>
        public static void SetCookies(string _domain, string _cookiepath, string _key, string _cookiename, string _value, int _expires)
        {

            HttpCookie cookie = HttpContext.Current.Request.Cookies[_key];

            //防止中文乱码
            //_value = System.Web.HttpUtility.UrlEncode(_value);

            //加密
            _value = DESEncrypt.Encrypt(_value);

            if (cookie == null)
            {
                cookie = new HttpCookie(_key);
                cookie.Domain = _domain;
                cookie.Path = _cookiepath;

                cookie.Expires = DateTime.Now.AddMinutes(_expires);

                cookie.Values.Add(_cookiename, _value);
                HttpContext.Current.Response.AppendCookie(cookie);

            }
            else
            {

                cookie.Domain = _domain;
                cookie.Path = _cookiepath;
                cookie.Expires = DateTime.Now.AddMinutes(_expires);

                if (cookie.Values[_cookiename] != null)
                {
                    cookie.Values.Set(_cookiename, _value);
                }
                else
                {

                    cookie.Values.Add(_cookiename, _value);
                }
                HttpContext.Current.Response.SetCookie(cookie);

            }

        }

        /// <summary>
        /// 添加/更新 Cookies
        /// </summary>
        /// <param name="_domain"></param>
        /// <param name="_cookiepath"></param>
        /// <param name="_key"></param>
        /// <param name="_cookiename">Cookies</param>
        /// <param name="_value">Value</param>
        /// <param name="_expires">过期时间值--默认永远不过期 </param>
        /// <param name="_expiresType">时间类型 （1:AddDays  2:AddHours 3:AddMinutes 4:AddSeconds 5:AddYears 6:AddMonths 默认:AddYears(99)）</param>
        public static void SetCookies(string _domain, string _cookiepath, string _key, string _cookiename, string _value, int _expires, int _expiresType)
        {

            HttpCookie cookie = HttpContext.Current.Request.Cookies[_key];

            //防止中文乱码
            //_value = System.Web.HttpUtility.UrlEncode(_value);

            //加密

            _value = DESEncrypt.Encrypt(_value);


            DateTime _expiresDate = DateTime.Now;


            #region _expiresDate Cookies 过期时间设置

            switch (_expiresType)
            {
                case 1:
                    //代码部分
                    _expiresDate = DateTime.Now.AddDays(_expires);

                    break;

                case 2:
                    //代码部分
                    _expiresDate = DateTime.Now.AddHours(_expires);

                    break;

                case 3:
                    //代码部分
                    _expiresDate = DateTime.Now.AddMinutes(_expires);

                    break;

                case 4:
                    //代码部分
                    _expiresDate = DateTime.Now.AddSeconds(_expires);

                    break;
                case 5:
                    //代码部分
                    _expiresDate = DateTime.Now.AddYears(_expires);

                    break;

                case 6:
                    //AddYears
                    _expiresDate = DateTime.Now.AddMonths(_expires);

                    break;

                default:
                    //默认代码部分 
                    _expiresDate = DateTime.Now.AddYears(99); // 永远不过期
                    break;

            }

            #endregion


            if (cookie == null)
            {
                cookie = new HttpCookie(_key);
                cookie.Domain = _domain;
                cookie.Path = _cookiepath;

                cookie.Expires = _expiresDate;

                cookie.Values.Add(_cookiename, _value);
                HttpContext.Current.Response.AppendCookie(cookie);

            }
            else
            {

                cookie.Domain = _domain;
                cookie.Path = _cookiepath;

                cookie.Expires = _expiresDate;

                if (cookie.Values[_cookiename] != null)
                {
                    cookie.Values.Set(_cookiename, _value);
                }
                else
                {

                    cookie.Values.Add(_cookiename, _value);
                }
                HttpContext.Current.Response.SetCookie(cookie);

            }

        }


        /// <summary>
        /// 读取Cookies
        /// </summary>
        /// <param name="_key"></param>
        /// <param name="_cookiename"></param>
        /// <returns></returns>
        public static string GetCookies(string _key, string _cookiename)
        {

            HttpCookie cookie = HttpContext.Current.Request.Cookies[_key];

            if (cookie != null)
            {

                string _value = cookie.Values.Get(_cookiename);

                if (!string.IsNullOrEmpty(_value))
                {
                    //防止中文乱码
                    //_value = System.Web.HttpUtility.UrlDecode(_value);

                    //解密

                    _value = DESEncrypt.Decrypt(_value);
                    return _value;
                }
                else
                {
                    return "";
                }
            }
            else
            {
                return "";
            }

        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="_key"></param>
        /// <param name="_cookiename"></param>
        /// <param name="_domain"></param>
        /// <param name="_cookiepat"></param>
        /// <returns></returns>

        public static string GetCookies(string _key, string _cookiename, string _domain, string _cookiepath)
        {

            HttpCookie cookie = HttpContext.Current.Request.Cookies[_key];
            cookie.Path = _cookiepath;
            cookie.Domain = _domain;


            if (cookie != null)
            {

                string _value = cookie.Values.Get(_cookiename);

                if (!string.IsNullOrEmpty(_value))
                {
                    //防止中文乱码
                    //_value = System.Web.HttpUtility.UrlDecode(_value);

                    //解密
                    _value = DESEncrypt.Decrypt(_value);

                    return _value;
                }
                else
                {
                    return "";
                }
            }
            else
            {
                return "";
            }

        }


        #region  清除Cookies

        /// <summary>
        /// 清除Cookies
        /// </summary>
        /// <param name="_domain"></param>
        /// <param name="_cookiepath"></param>
        /// <param name="key"></param>
        public static void ClearCookies(string _key)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[_key];
            if (cookie != null)
            {
                cookie.Values.Clear();
                cookie.Expires = DateTime.Now.AddYears(-100);

                HttpContext.Current.Response.SetCookie(cookie);
            }

        }



        /// <summary>
        /// 清除Cookies
        /// </summary>
        /// <param name="_key"></param>
        public static void RemoveCookies(string _key)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[_key];
            if (cookie != null)
            {
                cookie.Values.Clear();
                cookie.Expires = DateTime.Now.AddYears(-100);
                HttpContext.Current.Response.SetCookie(cookie);

                HttpContext.Current.Response.Cookies.Remove(_key);
                HttpContext.Current.Response.Cookies.Clear();

            }
 

        }



        /// <summary>
        /// 清除所有的 Cookies
        /// </summary>
        public static void ClearCookies()
        {
            string Cookies_value = string.Empty;
            int CookiesCount = HttpContext.Current.Request.Cookies.Count;

            if (CookiesCount > 0)
            {


                //遍历cookies
                for (int i = 0; i < HttpContext.Current.Request.Cookies.Count; i++)
                {

                  string Keys=  HttpContext.Current.Request.Cookies.Keys[i].ToString();
                  string Value = HttpContext.Current.Request.Cookies[i].Value.ToString();

                  HttpCookie cookie = HttpContext.Current.Request.Cookies[Keys];

                  cookie.Expires = DateTime.Now.AddYears(-100);
                  cookie.Value = null;
                  cookie.Values.Clear();
                 

                  HttpContext.Current.Response.SetCookie(cookie);

                  //HttpContext.Current.Response.Cookies.Remove(Keys);
                  //HttpContext.Current.Response.Cookies.Clear();


                }

            }


        }


        /// <summary>
        /// 清除Cookies
        /// </summary>
        /// <param name="_domain"></param>
        /// <param name="_cookiepath"></param>
        /// <param name="key"></param>
        public static void ClearCookies(string _domain, string _cookiepath, string _key)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[_key];
            if (cookie != null)
            {
                cookie.Values.Clear();

                cookie.Domain = _domain;
                cookie.Path = _cookiepath;
                cookie.Expires = DateTime.Now.AddYears(-100);

                HttpContext.Current.Response.SetCookie(cookie);
            }

        }

        #endregion


        //读取当前客户机器的Cookies代码：

        public static string ReadCookies(string CookiesKey)
        {
            string Cookies_value = string.Empty;
            int CookiesCount = HttpContext.Current.Request.Cookies.Count;

            if (CookiesCount > 0)
            {
                HttpCookie key = HttpContext.Current.Request.Cookies[CookiesKey];

                //防止中文乱码
                //Cookies_value = System.Web.HttpUtility.UrlDecode(key.Value);

                //解密
                Cookies_value = DESEncrypt.Decrypt(key.Value);


            }

            return Cookies_value;

        }





        /**********************************************************************************************************************************/

        //读取当前客户机器所有的Cookies代码：

        public static void ReadAllCookies()
        {
            int CookiesCount = HttpContext.Current.Request.Cookies.Count;

            string[] keyArr = HttpContext.Current.Request.Cookies.AllKeys;
            for (int c = 0; c < keyArr.Length; c++)
            {
                HttpContext.Current.Response.Write(HttpContext.Current.Request.Cookies[keyArr[c]].Name);
                HttpContext.Current.Response.Write("<br />");
                HttpContext.Current.Response.Write(HttpContext.Current.Request.Cookies[keyArr[c]].Expires.ToString());
                HttpContext.Current.Response.Write("<br />");
                HttpContext.Current.Response.Write(HttpContext.Current.Request.Cookies[keyArr[c]].Value);
                HttpContext.Current.Response.Write("<br />");
                //HttpContext.Current.Response.Write(Common.Decrypt(HttpContext.Current.Request.Cookies[keyArr[c]].Value));
                HttpContext.Current.Response.Write("<br />");
                HttpContext.Current.Response.Write("<br />");
            }

            HttpContext.Current.Response.Write("<br />共有：" + CookiesCount + "Cookies");

        }




        // 使用或自己写重载方法参考示例：

        //SetCookies(SiteInfo.DomainName, "/", "hnce", name, str, DateTime.Now.AddMinutes(miniute));

        //return GetCookies("hnce", name);

        //ClearCookies(SiteInfo.DomainName, "/", "hnce");



        // 另外提醒一下，cookie.Values.Add(_cookiename, _value); 
        // 跟 cookie.Values[_cookiename] = _value; 这两种方式都可以设置Cookies的值，
        // * 但是Add和Set方法后，读取要使用Get方法，
        // * 而Values[]赋值方式，读取要使用HttpContext.Current.Request.Cookies[_key][_cookiename].ToString() 

        //否则有Cookies读取不了的情况。

        ////下面附参考文章的部分内容说明

        ////------------------------------------------------------------------------
        //Cookie有三个属性需要注意一下：
        //1. Domain  域
        //2. Path       路径
        //3. Expires  过期时间

        //跨域操作需要设置域属性:
        //Response.Cookies("MyCookie").Domain = "xxxx.com"; (这里指的是泛域名)
        //这样在其它二级域名下就都可以访问到了， ASP 和 ASP.NET 测试通过

        //虚拟目录下访问：
        //在ASP端做了下测试，.NET的没试,  如果不指定Path属性， 不同虚拟目录下Cookie无法共享
        //将Response.Cookies("MyCookie").Path = "/" 就可以了

        //总的写法:
        //Response.Cookies("MyCookie").Domain = "xxxx.com";
        //Response.Cookies("MyCookie").Path = "/"
        //Response.Cookies("MyCookie").Expires = Now + 365;
        //Response.Cookies("MyCookie")("Test") = "test";



        public static void WriteCache()
        {

            //遍历缓存
            System.Web.Caching.Cache C = new System.Web.Caching.Cache();
            foreach (System.Collections.DictionaryEntry De in C)
            {
                HttpContext.Current.Response.Write(string.Format("<br>{0}:{1}", De.Key, De.Value));
            }

        }


        public static void WriteSession()
        {
            //遍历session
            for (int i = 0; i < HttpContext.Current.Session.Count; i++)
            {

                HttpContext.Current.Response.Write(HttpContext.Current.Session.Keys[i] + ":" + HttpContext.Current.Session[i].ToString() + "<br>");
            }
        }

        public static void WriteCookies()
        {
            //遍历cookies
            for (int i = 0; i < HttpContext.Current.Request.Cookies.Count; i++)
            {

                HttpContext.Current.Response.Write(HttpContext.Current.Request.Cookies.Keys[i] + ":" + HttpContext.Current.Request.Cookies[i].Value.ToString() + "<br>");
            }
        }


        public static void WriteApplication()
        {
            //遍历application


            for (int i = 0; i < HttpContext.Current.Application.Count; i++)
            {

                HttpContext.Current.Response.Write(HttpContext.Current.Application.Keys[i] + ":" + HttpContext.Current.Application[i].ToString() + "<br>");

            }
        }





    }
}
