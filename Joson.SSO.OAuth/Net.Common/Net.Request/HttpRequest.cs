namespace Net.Common
{
    using System;
    using System.Web;

    using System.Net;
    using System.IO;
    using System.Text;
    using System.Collections.Generic;

    public static partial class GetRequest
    {


        /// <summary>
        /// 通过HttpWebRequest 发送请求(表单)
        /// </summary>
        /// <param name="url">请求地址</param>
        /// <param name="requestParameter">请求参数para1=value1&para2=value2</param>
        /// <param name="method">post get</param>
        /// <param name="encoding">GB2312 UTF-8...</param>
        /// <returns>响应回返字符串</returns>
        public static string SubmitRequest(string url, string requestParameter, string requestMethod, Encoding encoding)
        {
            string result = String.Empty;
            #region Request部分
            HttpWebRequest myHttpWebRequest = (HttpWebRequest)WebRequest.Create(url);//新建一个HttpWebRequest
            myHttpWebRequest.ContentType = "application/x-www-form-urlencoded";
            myHttpWebRequest.ContentLength = requestParameter.Length;
            myHttpWebRequest.Method = requestMethod;
            Stream myRequestStream = myHttpWebRequest.GetRequestStream();//获取Request流
            StreamWriter myStreamWriter = new StreamWriter(myRequestStream, encoding);
            myStreamWriter.Write(requestParameter);  //把参数写入HttpWebRequest的Request流 
            myStreamWriter.Close();
            myRequestStream.Close();  //关闭打开对象 
            #endregion
            HttpWebResponse myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse(); //提交获得响应
            #region Response部分
            Stream myResponseStream = myHttpWebResponse.GetResponseStream();//获取Response流
            StreamReader myStreamReader = new StreamReader(myResponseStream, encoding);
            result = myStreamReader.ReadToEnd();//把数据从HttpWebResponse的Response流中读出 
            myStreamReader.Close();
            myResponseStream.Close();
            #endregion
            return result;

        }


        /// <summary>
        /// 请求并获得cookie(表单)
        /// </summary>
        /// <param name="url">请求地址</param>
        /// <param name="requestParameter">请求参数para1=value1&para2=value2</param>
        /// <param name="requestMethod">post get</param>
        /// <param name="encoding">GB2312 UTF-8...</param>
        /// <param name="response">响应回返字符串</param>
        /// <returns>CookieContainer</returns>
        public static CookieContainer SubmitRequest(string url, string requestParameter, string requestMethod, Encoding encoding, out string response)
        {

            CookieContainer cookie = new CookieContainer(); //新建一个CookieContainer来存放Cookie集合 
            #region Request部分
            HttpWebRequest myHttpWebRequest = (HttpWebRequest)WebRequest.Create(url);//新建一个HttpWebRequest
            myHttpWebRequest.ContentType = "application/x-www-form-urlencoded";
            myHttpWebRequest.ContentLength = requestParameter.Length;
            myHttpWebRequest.Method = requestMethod;
            myHttpWebRequest.CookieContainer = cookie; //设置HttpWebRequest的CookieContainer///////
            Stream myRequestStream = myHttpWebRequest.GetRequestStream();//获取Request流
            StreamWriter myStreamWriter = new StreamWriter(myRequestStream, encoding);
            myStreamWriter.Write(requestParameter);  //把参数写入HttpWebRequest的Request流 
            myStreamWriter.Close();
            myRequestStream.Close();  //关闭打开对象 
            #endregion
            HttpWebResponse myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse(); //提交获得响应
            #region Response部分
            Stream myResponseStream = myHttpWebResponse.GetResponseStream();//获取Response流
            StreamReader myStreamReader = new StreamReader(myResponseStream, encoding);
            response = myStreamReader.ReadToEnd();//把数据从HttpWebResponse的Response流中读出 
            myStreamReader.Close();
            myResponseStream.Close();
            #endregion

            return cookie;

        }




        #region GetQuery
        /// <summary>
        /// GetQuery
        /// </summary>
        /// <param name="strName"></param>
        /// <returns></returns>
        public static string GetQuery(string strName)
        {
            strName = HttpContext.Current.Request.QueryString[strName];
            return ((strName == null) ? "" : strName.Trim());
        }
        #endregion

        #region GetQuerys
        /// <summary>
        /// GetQuery
        /// </summary>
        /// <param name="strName"></param>
        /// <returns></returns>
        public static string[] GetQuerys(string strName)
        {
            string ids = GetString(strName);

            List<string> result = new List<string>();

            var array = ids.Split(',');

            foreach (var a in array)
            {
                if (JosonValidate.NotIsNullOrEmpty(a))
                    result.Add(a);
                else
                    result.Add("Null");
            }
            return result.ToArray();
        }

        #endregion


        #region 获得指定Url或表单参数的int类型值

        /// <summary>
        /// 获得指定Url或表单参数的int类型值, 先判断Url参数是否为缺省值, 如为True则返回表单参数的值
        /// </summary>
        /// <param name="strName">Url或表单参数</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>Url或表单参数的int类型值</returns>
        public static int GetInt(string strName, int defValue = 0)
        {
            if (GetQueryInt(strName, defValue) == defValue)
            {
                return GetFormInt(strName, defValue);
            }
            return GetQueryInt(strName, defValue);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="strName"></param>
        /// <param name="defValue"></param>
        /// <param name="ContentPlaceHolder"></param>
        /// <returns></returns>
        public static int GetIntFrom(string strName, int defValue = 0, string ContentPlaceHolder = "JosonJiang")
        {
            if ("JosonJiang" != ContentPlaceHolder)
                strName = "ctl00$" + ContentPlaceHolder + "$" + strName;

            if (GetQueryInt(strName, defValue) == defValue)
            {
                return GetFormInt(strName, defValue);
            }
            return GetQueryInt(strName, defValue);
        }


        #endregion

        #region 获得指定表单参数的int类型值

        /// <summary>
        /// 获得指定表单参数的int类型值
        /// </summary>
        /// <param name="strName">表单参数</param>
        /// <returns>表单参数的int类型值</returns>
        //public static int GetFormInt(string strName)
        //{
        //    return GetFormInt(strName, 0);
        //}

        /// <summary>
        /// 获得指定表单参数的int类型值
        /// </summary>
        /// <param name="strName">表单参数</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>表单参数的int类型值</returns>
        public static int GetFormInt(string strName, int defValue = 0)
        {
            // return JosonConvert.strToInt(HttpContext.Current.Request.Form[strName], defValue);
            return Convert.ToInt32(HttpContext.Current.Request.Form[strName], defValue);
        }

        #endregion

        #region 获得指定Url参数的int类型值
        /// <summary>
        /// 获得指定Url参数的int类型值
        /// </summary>
        /// <param name="strName">Url参数</param>
        /// <returns>Url参数的int类型值</returns>
        public static int GetQueryInt(string strName)
        {
            //return JosonConvert.strToInt(HttpContext.Current.Request.QueryString[strName], 0);
            return Convert.ToInt32(HttpContext.Current.Request.QueryString[strName], 0);
        }

        /// <summary>
        /// 获得指定Url参数的int类型值
        /// </summary>
        /// <param name="strName">Url参数</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>Url参数的int类型值</returns>
        public static int GetQueryInt(string strName, int defValue = 0)
        {
            return Convert.ToInt32(HttpContext.Current.Request.QueryString[strName], defValue);
            //return JosonConvert.strToInt(HttpContext.Current.Request.QueryString[strName], defValue);
        }

        #endregion


        #region 获得指定Url或表单参数的float类型值

        /// <summary>
        /// 获得指定Url或表单参数的float类型值, 先判断Url参数是否为缺省值, 如为True则返回表单参数的值
        /// </summary>
        /// <param name="strName">Url或表单参数</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>Url或表单参数的int类型值</returns>
        public static float GetFloat(string strName, float defValue = 0)
        {
            if (GetQueryFloat(strName, defValue) == defValue)
            {
                return GetFormFloat(strName, defValue);
            }
            return GetQueryFloat(strName, defValue);
        }

        #endregion

        #region 获得指定Url参数的float类型值

        /// <summary>
        /// 获得指定Url参数的float类型值
        /// </summary>
        /// <param name="strName">Url参数</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>Url参数的int类型值</returns>
        public static float GetQueryFloat(string strName, float defValue = 0)
        {
            return (float)(Convert.ToDouble(HttpContext.Current.Request.QueryString[strName]));
        }

        #endregion

        #region 获得指定表单参数的float类型值

        /// <summary>
        /// 获得指定表单参数的float类型值
        /// </summary>
        /// <param name="strName">表单参数</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>表单参数的float类型值</returns>
        public static float GetFormFloat(string strName, float defValue = 0)
        {
            return (float)(Convert.ToDouble(HttpContext.Current.Request.Form[strName]));
            //return JosonConvert.strToFloat(HttpContext.Current.Request.Form[strName], defValue);

        }

        #endregion


        #region 获得指定Url或表单参数的decimal类型值

        /// <summary>
        /// 获得指定Url或表单参数的float类型值, 先判断Url参数是否为缺省值, 如为True则返回表单参数的值
        /// </summary>
        /// <param name="strName">Url或表单参数</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>Url或表单参数的int类型值</returns>
        public static decimal GetDecimal(string strName, decimal defValue = 0)
        {
            if (GetQueryDecimal(strName, defValue) == defValue)
            {
                return GetFormDecimal(strName, defValue);
            }
            return GetQueryDecimal(strName, defValue);
        }

        #endregion

        #region  获得指定Url参数的decimal类型值
        /// <summary>
        /// 获得指定Url参数的decimal类型值
        /// </summary>
        /// <param name="strName">Url参数</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>Url参数的decimal类型值</returns>
        public static decimal GetQueryDecimal(string strName, decimal defValue = 0)
        {
            return Convert.ToDecimal(HttpContext.Current.Request.QueryString[strName]);

        }

        #endregion

        #region 获得指定表单参数的decimal类型值
        /// <summary>
        /// 获得指定表单参数的decimal类型值
        /// </summary>
        /// <param name="strName">表单参数</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>表单参数的decimal类型值</returns>
        public static decimal GetFormDecimal(string strName, decimal defValue = 0)
        {
            return Convert.ToDecimal(HttpContext.Current.Request.Form[strName]);
        }

        #endregion


        #region 返回0和1
        /// <summary>
        /// 返回0和1
        /// </summary>
        /// <param name="strvalue"></param>
        /// <returns></returns>
        public static int Get0or1(string strvalue)
        {
            int ints;
            if (HttpContext.Current.Request.QueryString[strvalue] == "1")
            {
                ints = 1;
            }
            else
            {
                ints = 0;
            }
            return ints;
        }
        #endregion

        #region 返回true和false

        /// <summary>
        /// 返回true和false
        /// </summary>
        /// <param name="strvalue"></param>
        /// <returns></returns>
        public static bool GetTrueFalse(string strvalue)
        {
            bool GetVal;
            if (HttpContext.Current.Request.QueryString[strvalue].ToLower() == "true")
            {
                GetVal = true;
            }
            else
            {
                GetVal = false;
            }
            return GetVal;
        }
        #endregion

        #region 获取表单提交参数值

        /// <summary>
        /// 获得指定表单参数的值
        /// </summary>
        /// <param name="strName">表单参数</param>
        /// <param name="sqlSafeCheck">是否进行SQL安全检查</param>
        /// <returns>表单参数的值</returns>
        public static string GetFormString(string strName, bool sqlSafeCheck = false)
        {
            if (HttpContext.Current.Request.Form[strName] == null)
                return "";

            if (sqlSafeCheck && !JosonValidate.IsSafeSqlString(HttpContext.Current.Request.Form[strName]))
                return "unsafe string";

            return HttpContext.Current.Request.Form[strName];
        }

        #endregion

        #region 获得指定Url参数的值

        /// <summary>
        /// 获得指定Url参数的值
        /// </summary> 
        /// <param name="strName">Url参数</param>
        /// <param name="sqlSafeCheck">是否进行SQL安全检查</param>
        /// <returns>Url参数的值</returns>
        public static string GetQueryString(string strName, bool sqlSafeCheck = false)
        {
            if (HttpContext.Current.Request.QueryString[strName] == null)
                return "";

            if (sqlSafeCheck && !JosonValidate.IsSafeSqlString(HttpContext.Current.Request.QueryString[strName]))
                return "unsafe string";

            return HttpContext.Current.Request.QueryString[strName];
        }

        #endregion

        #region 返回表单Url参数的总个数
        /// <summary>
        /// 返回表单或Url参数的总个数
        /// </summary>
        /// <returns></returns>
        public static int GetParamCount(bool isForm = false)
        {
            return isForm ? HttpContext.Current.Request.Form.Count : HttpContext.Current.Request.QueryString.Count;

        }

        /// <summary>
        /// 返回表单和Url参数的总个数
        /// </summary>
        /// <returns></returns>
        public static int GetParamCount()
        {
            return (HttpContext.Current.Request.Form.Count + HttpContext.Current.Request.QueryString.Count);
        }

        #endregion

        #region 获得Url或表单参数的值
        /// <summary>
        /// 获得Url或表单参数的值, 先判断Url参数是否为空字符串, 如为True则返回表单参数的值
        /// </summary>
        /// <param name="strName">参数</param>
        /// <param name="sqlSafeCheck">是否进行SQL安全检查</param>
        /// <returns>Url或表单参数的值</returns>
        public static string GetString(string strName, bool sqlSafeCheck = false)
        {
            if ("".Equals(GetQueryString(strName)))
                return GetFormString(strName, sqlSafeCheck);
            else
                return GetQueryString(strName, sqlSafeCheck);
        }

        /// <summary>
        /// 获得Url或表单参数的值 
        /// 多用用于母版页面获取参数
        /// ContentPlaceHolder
        /// </summary>
        /// <param name="strName"></param>
        /// <param name="sqlSafeCheck"></param>
        /// <param name="ContentPlaceHolder"></param>
        /// <returns></returns>
        public static string GetStringFrom(string strName, string ContentPlaceHolder = "JosonJiang", bool sqlSafeCheck = false)
        {
            if ("JosonJiang" != ContentPlaceHolder)
                strName = "ctl00$" + ContentPlaceHolder + "$" + strName;

            if ("".Equals(GetQueryString(strName)))
                return GetFormString(strName, sqlSafeCheck);
            else
                return GetQueryString(strName, sqlSafeCheck);
        }


        #endregion

        #region 获得当前页面的名称

        /// <summary>
        /// 获得当前页面的名称
        /// </summary>
        /// <returns>当前页面的名称</returns>
        public static string GetPageName()
        {
            string[] strArray = HttpContext.Current.Request.Url.AbsolutePath.Split(new char[] { '/' });
            return strArray[strArray.Length - 1].ToLower();
        }

        #endregion

        #region 组合URL参数
        /// <summary>
        /// 组合URL参数
        /// </summary>
        /// <param name="_url">页面地址</param>
        /// <param name="_keys">参数名称</param>
        /// <param name="_values">参数值</param>
        /// <returns>String</returns>
        public static string CombUrlTxt(string _url, string _keys, params string[] _values)
        {
            StringBuilder urlParams = new StringBuilder();
            try
            {
                string[] keyArr = _keys.Split(new char[] { '&' });
                for (int i = 0; i < keyArr.Length; i++)
                {
                    if (!string.IsNullOrEmpty(_values[i]) && _values[i] != "0")
                    {
                        _values[i] = DESEncrypt.UrlEncode(_values[i]);
                        urlParams.Append(string.Format(keyArr[i], _values) + "&");
                    }
                }
                if (!string.IsNullOrEmpty(urlParams.ToString()) && _url.IndexOf("?") == -1)
                    urlParams.Insert(0, "?");
            }
            catch
            {
                return _url;
            }

            //return _url + JosonString.DelLastChar(urlParams.ToString(), "&");
            return _url + urlParams.ToString().Substring(0, urlParams.Length - 1);
        }

        #endregion

        #region 判断是否为当前页面
        /// <summary>
        /// 判断是否为当前页面
        /// </summary>
        /// <param name="Pages">页面URL（全小写）</param>
        /// <returns></returns>
        public static bool IsCurrentURL(string Pages)
        {
            return (HttpContext.Current.Request.ServerVariables["SCRIPT_NAME"].ToLower().IndexOf(Pages) > 0);
        }

        public static bool IsRequestPage(string Page)
        {
            return PageIsRequest(Page);
        }

        /// <summary>
        /// 判断是否为Page
        /// </summary>
        /// <param name="Page">Page (ToLower) </param>
        /// <returns></returns>
        public static bool PageIsRequest(string Page)
        {
            if (string.IsNullOrEmpty(Page))
            {
                return System.Web.HttpContext.Current.Request.ServerVariables["SCRIPT_NAME"].ToLower().IndexOf(Page) > 0;
            }
            return false;
        }


        #endregion

        #region 保存用户上传的文件


        /// <summary>
        /// 保存用户上传的文件
        /// </summary>
        /// <param name="path">保存路径</param>
        public static void SaveRequestFile(string path)
        {
            if (HttpContext.Current.Request.Files.Count > 0)
            {
                HttpContext.Current.Request.Files[0].SaveAs(path);
            }
        }

        #endregion

        #region 中日文转换

        #region 当有日文时,转换并输出日文


        /// <summary>
        /// 当有日文时,转换并输出日文
        /// </summary>
        /// <param name="strName"></param>
        /// <returns></returns>
        public static string OutString(string strName)
        {
            //当是中文或韩文时直接返回,否则转换..(注:中文的范围:\u4e00 - \u9fa5, 日文在\u0800 - \u4e00, 韩文为\xAC00-\xD7A3)
            //if (System.Text.RegularExpressions.Regex.IsMatch(strName, "[\u4e00 - \u9fa5]+") || System.Text.RegularExpressions.Regex.IsMatch(strName, "[\xAC00-\xD7A3]+"))
            if (System.Text.RegularExpressions.Regex.IsMatch(strName, "[\u0800 - \u4e00]+"))
            {
                return JAPDecode(strName);
            }
            else
            {
                return strName;
            }
        }
        #endregion

        #region 当有日文时,得到转换后的日文

        /// <summary>
        /// 当有日文时,得到转换后的日文
        /// </summary>
        /// <param name="strName"></param>
        /// <returns></returns>
        public static string InString(string strName)
        {
            //当是中文或韩文时直接返回,否则转换...(注:中文的范围:\u4e00 - \u9fa5, 日文在\u0800 - \u4e00, 韩文为\xAC00-\xD7A3)
            return JAPEncode(strName);

        }

        #endregion


        #region 日文编码
        /// <summary>
        /// 日文编码
        /// </summary>
        /// <param name="txt"></param>
        /// <returns></returns>
        public static string JAPEncode(string txt)
        {
            int[] ascLists = {92, 304, 305, 430, 431, 437, 438, 12460, 12461, 12462, 12463, 12464, 12465, 
                                 12466, 12467, 12468, 12469, 12470, 12471, 12472, 12473, 12474, 12475, 12476, 
                                 12477, 12478, 12479, 12480, 12481, 12482, 12483, 12485, 12486, 12487, 12488, 
                                 12489, 12490, 12496, 12497, 12498, 12499, 12500, 12501, 12502, 12503, 12504, 
                                 12505, 12506, 12507, 12508, 12509, 12510, 12521, 12532, 12533, 65340};

            string key = string.Empty;
            for (int i = 0; i < ascLists.Length; i++)
            {
                key = ((char)ascLists[i]).ToString();
                if (txt.IndexOf(key) >= 0)
                {
                    txt = txt.Replace(key, "&#" + ascLists[i].ToString() + ";");
                }
            }

            return txt;
        }

        #endregion

        #region 日文解码

        /// <summary>
        /// 日文解码
        /// </summary>
        /// <param name="txt"></param>
        /// <returns></returns>
        public static string JAPDecode(string txt)
        {
            int[] ascLists = {92, 304, 305, 430, 431, 437, 438, 12460, 12461, 12462, 12463, 12464, 12465, 
                                 12466, 12467, 12468, 12469, 12470, 12471, 12472, 12473, 12474, 12475, 12476, 
                                 12477, 12478, 12479, 12480, 12481, 12482, 12483, 12485, 12486, 12487, 12488, 
                                 12489, 12490, 12496, 12497, 12498, 12499, 12500, 12501, 12502, 12503, 12504, 
                                 12505, 12506, 12507, 12508, 12509, 12510, 12521, 12532, 12533, 65340};

            string key = string.Empty;
            for (int i = 0; i < ascLists.Length; i++)
            {
                key = "&#" + ascLists[i].ToString() + ";";
                if (txt.IndexOf(key) >= 0)
                {
                    txt = txt.Replace(key, ((char)ascLists[i]).ToString());
                }
            }

            return txt;
        }

        #endregion

        #endregion

        public static string GetFileExtName(string filename)
        {
            string[] array = filename.Trim().Split(new char[] { '.' });
            Array.Reverse(array);
            return array[0].ToString();
        }

        public static string GetFilename(string url)
        {
            if (url == null)
            {
                return "";
            }
            string[] strArray = url.Split(new char[] { '/' });
            return strArray[strArray.Length - 1].Split(new char[] { '?' })[0];
        }


        #region 输出Html代码
        /// <summary>
        ///  输出Html代码
        /// </summary>
        /// <param name="HTML">Html代码</param>
        public static void AppendHTML(string strHTML)
        {
            System.Web.HttpContext.Current.Response.Write(strHTML);
        }

        #endregion

        #region HttpContext.Current.Response
        /// <summary>
        /// 返回HTML
        /// </summary>
        /// <param name="strHTML"></param>
        public static void ResponseHTML(string strHTML)
        {
            System.Web.HttpContext.Current.Response.Clear();
            System.Web.HttpContext.Current.Response.Write(strHTML);
            System.Web.HttpContext.Current.Response.End();
        }

        ///// <summary>
        ///// 返回Json
        ///// </summary>
        ///// <param name="obj"></param>
        //public static void ResponseJson(this object obj)
        //{
        //    System.Web.HttpContext.Current.Response.Clear();
        //    System.Web.HttpContext.Current.Response.Write(obj.ToJson());
        //    System.Web.HttpContext.Current.Response.End();
        //}

        #endregion

    }
}

