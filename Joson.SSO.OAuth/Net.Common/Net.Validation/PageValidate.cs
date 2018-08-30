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

namespace Net.Common
{
    /// <summary>
    /// 主要功能：判断页面各个控件的输入
    /// </summary>
    public static partial class JosonValidate
    {

        //private static Regex RegNumber = new Regex("^[0-9]+$");
        //private static Regex RegNumberSign = new Regex("^[+-]?[0-9]+$");
        //private static Regex RegDecimal = new Regex("^[0-9]+[.]?[0-9]+$");
        //private static Regex RegDecimalSign = new Regex("^[+-]?[0-9]+[.]?[0-9]+$"); //等价于^[+-]?\d+[.]?\d+$
        //private static Regex RegEmail = new Regex("^[\\w-]+@[\\w-]+\\.(com|net|org|edu|mil|tv|biz|info)$");//w 英文字母或数字的字符串，和 [a-zA-Z0-9] 语法一样 
        //private static Regex RegCHZN = new Regex("[\u4e00-\u9fa5]");



        #region 日期检查
        /// <summary>
        /// 判断是否为日期型变量
        /// </summary>
        /// <param name="Record">日期变量</param>
        /// <returns>是否为日期</returns>
        public static string IsDateTime( string Record)
        {
            if (Convert.ToDateTime(Record).ToString("yyyy-MM-dd") == DateTime.MaxValue.ToString("yyyy-MM-dd") || Convert.ToDateTime(Record).ToString("yyyy-MM-dd") == DateTime.MinValue.ToString("yyyy-MM-dd") || Record == "" || Convert.ToDateTime(Record).ToString("yyyy-MM-dd") == "1900-01-01")
                return "—";
            else
                return Convert.ToDateTime(Record).ToString("yyyy-M-dd");
        }


        #endregion

        #region 数字字符串检查

        /// <summary>
        /// 是否数字字符串
        /// </summary>
        /// <param name="inputData">输入字符串</param>
        /// <returns></returns>
        public static bool IsNumber( string inputData)
        {
            Match m = RegNumber.Match(inputData);
            return m.Success;
        }
        /// <summary>
        /// 是否数字字符串 可带正负号
        /// </summary>
        /// <param name="inputData">输入字符串</param>
        /// <returns></returns>
        public static bool IsNumberSign( string inputData)
        {
            Match m = RegNumberSign.Match(inputData);
            return m.Success;
        }
        /// <summary>
        /// 是否是浮点数
        /// </summary>
        /// <param name="inputData">输入字符串</param>
        /// <returns></returns>
        public static bool IsDecimal( string inputData)
        {
            Match m = RegDecimal.Match(inputData);
            return m.Success;
        }
        /// <summary>
        /// 是否是浮点数 可带正负号
        /// </summary>
        /// <param name="inputData">输入字符串</param>
        /// <returns></returns>
        public static bool IsDecimalSign( string inputData)
        {
            Match m = RegDecimalSign.Match(inputData);
            return m.Success;
        }

        #endregion

        #region 中文检测

        /// <summary>
        /// 检测是否有中文字符
        /// </summary>
        /// <param name="inputData"></param>
        /// <returns></returns>
        public static bool IsHasCHZN( string inputData)
        {
            Match m = RegCHZN.Match(inputData);
            return m.Success;
        }

        #endregion

        #region 邮件地址
        /// <summary>
        /// 是否是以（com|cn|net|org|edu|mil|tv|biz|info）结尾的邮件地址
        /// </summary>
        /// <param name="inputData">输入字符串</param>
        /// <returns></returns>
        public static bool IsAnMail( string inputData)
        {
            Match m = RegEmail.Match(inputData.ToLower());
            return m.Success;
        }

        #endregion


        #region 邮件地址
        /// <summary>
        /// 是否邮件地址格式字符串
        /// </summary>
        /// <param name="inputData">输入字符串</param>
        /// <returns></returns>
        public static bool IsEmail( string inputData)
        {
            Match m = RegEmails.Match(inputData.ToLower());
            return m.Success;
        }

        #endregion

    }
}
