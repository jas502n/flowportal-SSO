using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Text.RegularExpressions;
using System.Text; //Regex

namespace Net.Common
{
    /// <summary>
    /// DataFunction 的数据格式化
    /// </summary>
    /// 
    public static partial class JStringFormat
    {
        #region 过滤特殊字符
        /// <summary>
        /// 过滤SQL语句、关键字等（针对SQL注入过滤）
        /// </summary>
        /// <param name="strKeyWords"></param>
        /// <returns></returns>
        public static string JosonQueryEncode(string strKeyWords)
        {
            if (strKeyWords != string.Empty && strKeyWords != null)
            {

                return SQLQueryEncode(strKeyWords);

            }
            else
            {
                return string.Empty;
            }
        }

        #endregion

        #region 过滤输入信息

        /// <summary>
        /// 针对SQL注入过滤（过滤SQL语句、关键字等）
        /// </summary>
        /// <param name="strContent"></param>
        /// <returns></returns>
        public static string RemoveIncertitude(string strContent)
        {
            return JStringFormat.SQLQueryEncode(strContent);
        }


        /// <summary>
        /// 针对HTML过滤 （过滤简单SQL 单引号注入）
        /// 并返回指定长度
        /// </summary>
        /// <param name="strContent">输入信息内容</param>
        /// <param name="maxLength">最大长度</param>
        /// <returns></returns>
        /// 替换不正常字符
        /// 记得引用 using System.Text.RegularExpressions;
        public static string RemoveUnsafety(string strContent, int maxLength = 65535)
        {
            strContent = strContent.Trim();

            if (string.IsNullOrEmpty(strContent))
                return string.Empty;

            strContent = Regex.Replace(strContent, "[\\s]{2,}", " "); //two or more spaces
            strContent = Regex.Replace(strContent, "(<[b|B][r|R]/*>)+|(<[p|P](.|\\n)*?>)", "\n"); //<br>
            strContent = Regex.Replace(strContent, "(\\s*&[n|N][b|B][s|S][p|P];\\s*)+", " "); //&nbsp;
            strContent = Regex.Replace(strContent, "<(.|\\n)*?>", string.Empty); //any other tags

            strContent = strContent.Replace("'", "''");

            if (strContent.Length > maxLength)
                strContent = strContent.Substring(0, maxLength);

            return strContent;

        }

        #endregion

        #region SQL对查询字符串进行过滤
        /// <summary>
        /// 对查询字符串进行过滤
        /// </summary>
        /// <param name="strKeyWords">要被过滤的查询字符串</param>
        /// <returns>过滤后的字符串</returns>
        public static string SQLQueryEncode(string strKeyWords)
        {
            if (!System.String.IsNullOrEmpty(strKeyWords) && strKeyWords != "")
            {
                strKeyWords = strKeyWords.ToLower();

                strKeyWords = strKeyWords.Replace(";", "");
                strKeyWords = strKeyWords.Replace("'", "");
                strKeyWords = strKeyWords.Replace("&", "");
                strKeyWords = strKeyWords.Replace("%20", "");
                strKeyWords = strKeyWords.Replace("-", "");
                strKeyWords = strKeyWords.Replace("_", "");
                strKeyWords = strKeyWords.Replace("=", "");
                strKeyWords = strKeyWords.Replace("==", "");
                strKeyWords = strKeyWords.Replace("--", "");
                strKeyWords = strKeyWords.Replace("<", "");
                strKeyWords = strKeyWords.Replace(">", "");
                strKeyWords = strKeyWords.Replace("%", "");
                strKeyWords = strKeyWords.Replace("%", "");
                strKeyWords = strKeyWords.Replace("+", "");
                strKeyWords = strKeyWords.Replace(",", "");

                strKeyWords = strKeyWords.Replace(" or", "");
                strKeyWords = strKeyWords.Replace("or ", "");
                strKeyWords = strKeyWords.Replace(" and", "");
                strKeyWords = strKeyWords.Replace("and ", "");
                strKeyWords = strKeyWords.Replace(" not", "");
                strKeyWords = strKeyWords.Replace("not ", "");
                strKeyWords = strKeyWords.Replace("select", "");
                strKeyWords = strKeyWords.Replace("insert", "");
                strKeyWords = strKeyWords.Replace("update", "");
                strKeyWords = strKeyWords.Replace("delete", "");
                strKeyWords = strKeyWords.Replace("create", "");
                strKeyWords = strKeyWords.Replace("drop", "");
                strKeyWords = strKeyWords.Replace("delcare", "");

                strKeyWords = strKeyWords.Replace("   ", "");
                strKeyWords = strKeyWords.Replace("!", "");
                strKeyWords = strKeyWords.Replace("{", "");
                strKeyWords = strKeyWords.Replace("}", "");
                strKeyWords = strKeyWords.Replace("[", "");
                strKeyWords = strKeyWords.Replace("]", "");
                strKeyWords = strKeyWords.Replace("(", "");
                strKeyWords = strKeyWords.Replace(")", "");
                //strKeyWords = strKeyWords.Replace("|", ""); 
                //脏字过滤 分隔符

                strKeyWords = strKeyWords.Replace("'", "");
                strKeyWords = strKeyWords.Replace("[", "[[]");
                strKeyWords = strKeyWords.Replace("_", "[_]");
                strKeyWords = strKeyWords.Replace("&", "[&]");
                strKeyWords = strKeyWords.Replace("#", "[#]");
                strKeyWords = strKeyWords.Replace("%", "[%]");

                //不够可以加 

            }

            return strKeyWords;
        }


        #region 检查SQL危险字符
        /// <summary>
        /// 检查危险字符
        /// </summary>
        /// <param name="strContent"></param>
        /// <returns></returns>
        public static string FilterSQL(string strContent)
        {
            if (IsSQLKeyWords(strContent))
                return SQLQueryEncode(strContent);
            else
                return strContent;
        }

        #endregion



        #endregion

        #region 检测SQL关键词

        public static bool IsSQLKeyWords( string strContent)
        {
            // 整串字符对比方法
            string badword = ";|'|*|%| and |20%and20%| master |20%master20%|exec|insert|select|delete|count|chr|mid|truncate|char|declare|update|char(|mid(|chr(|'";

            if (Regex.Match(badword, Regex.Escape(badword), RegexOptions.Compiled | RegexOptions.IgnoreCase).Success)
            {
                return true;
                //throw new Exception("字符串中含有非法字符!");
            }
            else
            {
                string[] badwordArry = badword.Split(new char[] { '|' });
                for (int i = 0; i < badwordArry.Length; i++)
                {
                    string tempWord = badwordArry[i].Trim();
                    if (strContent.ToLower().IndexOf(tempWord) >= 1)
                        return true;
                }

            }

            return false;
        }


        #endregion

        #region FormatWith

        /// <summary>
        /// 
        /// </summary>
        /// <param name="arg"></param>
        /// <param name="strText"></param>
        /// <returns></returns>
        public static string FormatWith(string arg, string strContent)
        {
            return string.Format(strContent, arg);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="arg"></param>
        /// <param name="strText"></param>
        /// <returns></returns>
        public static string FormatWith(object arg, string strContent)
        {
            return string.Format(strContent, arg);
        }


        /// <summary>
        /// 可以考虑把参数延长到任意个，
        /// 改写这个扩展方法，
        /// 也只需要一行代码皆可
        /// </summary>
        /// <param name="text">The extension text</param>
        /// <param name="arg0">Argument 0</param>
        /// <param name="arg1">Argument 1</param>
        /// <returns>The formatted string</returns>
        public static string WithFormat(string strContent, object arg0, object arg1)
        {
            return string.Format(strContent, arg0, arg1);
        }


        /// <summary>
        /// FormatWith 
        /// WithFormat
        /// 
        /// string SetPage = "<span class=\"SetPage\"><a href=\"?ID={0}&CID={1}\">WithFormat</a></span>";
        /// string[] SetPageCID = { "PageCID", "CID" };
        /// SetPage = SetPage.WithFormat(SetPageCID);
        /// 
        /// </summary>
        /// <param name="strContent"></param>
        /// <param name="args"></param>
        /// <returns></returns>
        public static string WithFormat(string strContent, params object[] args)
        {
            //string SetPage = "<span class=\"SetPage\"><a href=\"CreateAdvert.aspx?ID={0}&CID={1}\">选择页面</a></span>";
            //string[] SetPageCID = { "PageCID", "CID" };
            //SetPage = SetPage.WithFormat(SetPageCID);

            return string.Format(strContent, args);
        }



        #endregion

        #region 数字扩展

     

        #endregion

    }

 
}

