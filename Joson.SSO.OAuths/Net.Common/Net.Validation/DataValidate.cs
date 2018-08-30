using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;

namespace Net.Common
{
    public static partial class JosonValidate
    {

        /*一些常用的正则表达式
         * 
         * 
         * 
            ^\d+$　　//匹配非负整数（正整数 + 0） 
            ^[0-9]*[1-9][0-9]*$　　//匹配正整数 
            ^((-\d+)|(0+))$　　//匹配非正整数（负整数 + 0） 
            ^-[0-9]*[1-9][0-9]*$　　//匹配负整数 
            ^-?\d+$　　　　//匹配整数 
            ^\d+(\.\d+)?$　　//匹配非负浮点数（正浮点数 + 0） 
            ^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$　　//匹配正浮点数 
            ^((-\d+(\.\d+)?)|(0+(\.0+)?))$　　//匹配非正浮点数（负浮点数 + 0） 
            ^(-(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*)))$　　//匹配负浮点数 
            ^(-?\d+)(\.\d+)?$　　//匹配浮点数 
            ^[A-Za-z]+$　　//匹配由26个英文字母组成的字符串 
            ^[A-Z]+$　　//匹配由26个英文字母的大写组成的字符串 
            ^[a-z]+$　　//匹配由26个英文字母的小写组成的字符串 
            ^[A-Za-z0-9]+$　　//匹配由数字和26个英文字母组成的字符串 
            ^\w+$　　//匹配由数字、26个英文字母或者下划线组成的字符串 
            ^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$　　　　//匹配email地址 
            ^[a-zA-z]+://匹配(\w+(-\w+)*)(\.(\w+(-\w+)*))*(\?\S*)?$　　//匹配url 

            匹配中文字符的正则表达式： [\u4e00-\u9fa5] 
            匹配双字节字符(包括汉字在内)：[^\x00-\xff] 
            匹配空行的正则表达式：\n[\s| ]*\r 
            匹配HTML标记的正则表达式：/<(.*)>.*<\/>|<(.*) \/>/ 
            匹配首尾空格的正则表达式：(^\s*)|(\s*$) 
            匹配Email地址的正则表达式：\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)* 
            匹配网址URL的正则表达式：^[a-zA-z]+://(\w+(-\w+)*)(\.(\w+(-\w+)*))*(\?\S*)?$ 
            匹配帐号是否合法(字母开头，允许5-16字节，允许字母数字下划线)：^[a-zA-Z][a-zA-Z0-9_]{4,15}$ 
            匹配国内电话号码：(\d{3}-|\d{4}-)?(\d{8}|\d{7})? 
            匹配腾讯QQ号：^[1-9]*[1-9][0-9]*$ 
         * */


        private static Regex RegNumber = new Regex("^[0-9]+$");
        private static Regex RegNumberSign = new Regex("^[+-]?[0-9]+$");
        private static Regex RegDecimal = new Regex("^[0-9]+[.]?[0-9]+$");
        private static Regex RegDecimalSign = new Regex("^[+-]?[0-9]+[.]?[0-9]+$"); //等价于^[+-]?\d+[.]?\d+$
        private static Regex RegEmail = new Regex("^[\\w-]+@[\\w-]+\\.(com|cn|net|org|edu|mil|tv|biz|info)$");//w 英文字母或数字的字符串，和 [a-zA-Z0-9] 语法一样 
        private static Regex RegCHZN = new Regex("[\u4e00-\u9fa5]");
        private static Regex RegTel = new Regex("(\\d{3}-|\\d{4}-)?(\\d{8}|\\d{7})?");

        private static Regex RegEmails = new Regex("^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$");


        #region 对象是否为NULL
        /// <summary>
        /// 对象是否为NULL
        /// </summary>
        /// <param name="str">对象</param>
        /// <returns>是否为NULL</returns>
        public static bool IsNull( object obj)
        {
            if (obj == null)
            {
                return true;
            }
            //if (obj is DateTime && obj.ToDateTime().Equals(DateTime.MinValue))
            //{
            //    return true;
            //}

            string typeName = obj.GetType().Name;
            switch (typeName)
            {
                case "String[]":
                    string[] list = (string[])obj;
                    if (list.Length == 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                default:
                    string str = obj.ToString();
                    if (str == null || str == "")
                        return true;
                    else
                        return false;
            }
        }
 
 
        /// <summary>
        /// 检查是否为空（null 或是""）
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static bool IsNotNull( object obj)
        {
            return (!IsNull(obj));
        }



        /// <summary>
        /// 判断传入的数字是否为0
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static bool IsNullZero( object obj)
        {
            return !IsNotNullZero(obj);
        }
        /// <summary>
        /// 判断传入的数字是否不为0
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        public static bool IsNotNullZero( object obj)
        {
            if (IsNull(obj))
            {
                return false;
            }
            else
            {
                try
                {
                    double d = Convert.ToDouble(obj);
                    if (d == 0)
                    {
                        return false;
                    }
                    else
                    {
                        return true;
                    }
                }
                catch (Exception)
                {
                    return false;
                }
            }
        }



        #endregion

        #region 字符串为NULL处理
        /// <summary>
        /// 字符串不为NULL,类似 Convert.ToString();
        /// 如果NULL返回 String.Empty，否则 Objects.ToString()
        /// </summary>
        /// <param name="str">字符串</param>
        /// <returns>返回字符串</returns>
        public static string IfNull(  object Objects)
        {
            if (Objects == null)
            {
                return String.Empty;
            }
            return Objects.ToString();
        }


        /// <summary>
        /// 字符串不为NULL
        /// 如果NULL返回 DefaultVal，否则 Objects.ToString()
        /// </summary>
        /// <param name="Objects"></param>
        /// <param name="DefaultVal"></param>
        /// <returns></returns>
        public static string IfNulls(  object Objects, string DefaultVal = "0")
        {
            if (Objects == null || Convert.ToString(Objects) == "" || Objects == string.Empty)
            {
                return DefaultVal;
            }
            return Objects.ToString();
        }

        #endregion

        #region 判断对象是否不空空或NOT NULL
        /// <summary>
        /// 判断对象是否不空空或NOT NULL
        /// </summary>
        /// <param name="Objects"></param>
        /// <returns></returns>
        public static bool NotIsNullOrEmpty( object Objects)
        {
            if (Objects == null)
            {
                return false;
            }
            return !String.IsNullOrEmpty(Objects.ToString());
        }


        public static bool IsNullOrEmpty(  string strObjects)
        {
            return ((strObjects == null) || (strObjects.Trim() == ""));
        }


        #endregion

        #region 判断是否是GUID
        /// <summary>
        /// 判断是否是GUID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public static bool IsGuid(  string ID)
        {
            if (string.IsNullOrEmpty(ID))
            {
                return false;
            }

            if (Regex.IsMatch(ID, @"^[a-z0-9-]{36}$", RegexOptions.IgnoreCase))
            {
                return true;
            }
            return false;
        }

        #endregion

        #region 地区号码
        /// <summary>
        /// 地区号码 IsAreaCode
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        public static bool IsAreaCode(  string input)
        {
            return ((IsNumber(input) && (input.Length >= 3)) && (input.Length <= 5));
        }

        #endregion

        #region 是否整型
        /// <summary>
        /// 验证是否为正整数
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static bool IsInt(  string str)
        {
            return Regex.IsMatch(str, "^[0-9]*$");
        }
 
        #endregion

        #region IsDecimal
        /// <summary>
        /// IsDecimal
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        public static bool IsDecimals(  string input)
        {
            if (string.IsNullOrEmpty(input))
            {
                return false;
            }
            return Regex.IsMatch(input, "^[0-9]+[.]?[0-9]+$");
        }


        public static bool IsDecimalSigns(  string input)
        {
            if (string.IsNullOrEmpty(input))
            {
                return false;
            }
            return Regex.IsMatch(input, "^[+-]?[0-9]+[.]?[0-9]+$");
        }

        #endregion

        #region 是否是数值型
        /// <summary>
        /// 是否正整数
        /// 判断给定的字符串(strNumber)是否是数值型
        /// </summary>
        /// <param name="strNumber">要确认的字符串</param>
        /// <returns>是则返加true 不是则返回 false</returns>
        public static bool IsANumber(  string strNumber)
        {
            return Regex.IsMatch(strNumber, "^[0-9]+$");
        }

        /// <summary>
        /// 是否整数
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        public static bool IsANumberSign(string input)
        {
            if (string.IsNullOrEmpty(input))
            {
                return false;
            }
            return Regex.IsMatch(input, "^[+-]?[0-9]+$");
        }
        #endregion

        #region 是否全是整数
        /// <summary>
        /// 是否全是整数
        /// </summary>
        /// <param name="Input">输入字符串（object类）</param>
        /// <param name="Plus">true表示是否正整数</param>
        /// <returns>返回true或false</returns>

        public static bool IsInteger(  object Input, bool Plus = true)
        {
            if (Input == null) return false;
            if (string.IsNullOrEmpty(Input.ToString()))
            {
                return false;
            }
            else
            {
                string pattern = "^-?[0-9]+$";
                if (Plus) pattern = "^[0-9]+$";
                if (Regex.Match(Input.ToString(), pattern, RegexOptions.Compiled).Success)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
        #endregion

        #region 判断给定的字符串数组(strNumber)中的数据是不是都为数值型

        /// <summary>
        /// 判断给定的字符串数组(strNumber)中的数据是不是都为数值型
        /// </summary>
        /// <param name="strNumber">要确认的字符串数组</param>
        /// <returns>是则返加true 不是则返回 false</returns>
        public static bool IsNumericArray(  string[] strNumber)
        {
            if (strNumber == null)
            {
                return false;
            }
            if (strNumber.Length < 1)
            {
                return false;
            }
            foreach (string str in strNumber)
            {
                if (!IsNumeric(str))
                {
                    return false;
                }
            }
            return true;
        }


        #endregion

        #region 判断对象是否为Int32类型的数字

        public static bool IsNumericList(  string numList)
        {
            if (numList == "")
            {
                return false;
            }
            foreach (string str in numList.Split(new char[] { ',' }))
            {
                if (!IsNumeric(str))
                {
                    return false;
                }
            }
            return true;
        }

        /// <summary>
        /// 判断对象是否为Int32类型的数字
        /// </summary>
        /// <param name="Expression"></param>
        /// <returns></returns>
        public static bool IsNumeric(  object expression)
        {
            if (expression != null)
                return IsNumeric(expression.ToString());

            return false;

        }

        #region 判断对象是否为Int32类型的数字

        /// <summary>
        /// 判断对象是否为Int32类型的数字
        /// </summary>
        /// <param name="Expression"></param>
        /// <returns></returns>
        public static bool IsNumerics(  object expression)
        {
            return ((expression != null) && IsNumeric(expression.ToString()));
        }

        #endregion
 
        /// <summary>
        /// 判断对象是否为Int32类型的数字
        /// </summary>
        /// <param name="Expression"></param>
        /// <returns></returns>
        public static bool IsNumeric(  string expression)
        {
            if (expression != null)
            {
                string str = expression;
                if (str.Length > 0 && str.Length <= 11 && Regex.IsMatch(str, @"^[-]?[0-9]*[.]?[0-9]*$"))
                {
                    if ((str.Length < 10) || (str.Length == 10 && str[0] == '1') || (str.Length == 11 && str[0] == '-' && str[1] == '1'))
                        return true;
                }
            }
            return false;
        }

 

        #region 验证字符串是否由正负号（+-）、数字、小数点构成
        /// <summary>
        /// 验证字符串是否由正负号（+-）、数字、小数点构成
        /// 并且最多只有一个小数点
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static bool IsNumericString(  string str)
        {
            Regex regex = new Regex(@"^[+-]?\d+[.]?\d*$");
            return regex.IsMatch(str);
        } 
        #endregion

        #region 验证字符串是否仅由[0-9]构成
        /// <summary>
        /// 验证字符串是否仅由[0-9]构成
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static bool IsNumericOnly(  string str)
        {
            Regex regex = new Regex("[0-9]");
            return regex.IsMatch(str);
        } 
        #endregion

        #region  验证字符串是否由字母和数字构成
        /// <summary>
        /// 验证字符串是否由字母和数字构成
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static bool IsNumericOrLetters(  string str)
        {
            Regex regex = new Regex("[a-zA-Z0-9]");
            return regex.IsMatch(str);
        } 
        #endregion

 
        #region 判断string是否为Int32类型的数字

        /// <summary>
        /// 判断string是否为Int32类型的数字
        /// </summary>
        /// <param name="Expression"></param>
        /// <returns></returns>
        public static bool IsNumerics(  string expression)
        {
            if (expression != null)
            {
                string input = expression;
                if ((((input.Length > 0) && (input.Length <= 11)) && Regex.IsMatch(input, "^[-]?[0-9]*[.]?[0-9]*$")) && (((input.Length < 10) || ((input.Length == 10) && (input[0] == '1'))) || (((input.Length == 11) && (input[0] == '-')) && (input[1] == '1'))))
                {
                    return true;
                }
            }
            return false;
        }

        #endregion

        #endregion

        #region 是否为Double类型
        /// <summary>
        /// 是否为Double类型
        /// </summary>
        /// <param name="Expression"></param>
        /// <returns></returns>
        public static bool IsDouble(  object Expression)
        {
            if (Expression != null)
            {
                return Regex.IsMatch(Expression.ToString(), @"^([0-9])[0-9]*(\.\w*)?$");
            }

            return false;
        }
 
        #endregion

        #region 是否是Double
        /// <summary>
        /// 判断是否Double
        /// JosonTypeParse.IsDouble(Expression)
        /// </summary>
        /// <param name="Expression"></param>
        /// <returns></returns>
        public static bool IsDoubles(  object expression)
        {
            return ((expression != null) && Regex.IsMatch(expression.ToString(), @"^([0-9])[0-9]*(\.\w*)?$"));
        }
        #endregion
 
        #region 是否日期字符串

        /// <summary>
        /// 是否日期字符串
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static bool IsDateString(  string str)
        {
            return Regex.IsMatch(str, @"(\d{4})-(\d{1,2})-(\d{1,2})");
        }

        #endregion

        #region 是否图片文件
        /// <summary>
        /// 是否图片文件
        /// </summary>
        /// <param name="filename"></param>
        /// <returns></returns>
        public static bool IsImgFile(  string filename)
        {
            filename = filename.Trim();
            if (filename.EndsWith(".") || (filename.IndexOf(".") == -1))
            {
                return false;
            }
            string str = filename.Substring(filename.LastIndexOf(".") + 1).ToLower();
            return ((((str == "jpg") || (str == "jpeg")) || ((str == "png") || (str == "bmp"))) || (str == "gif"));
        }
        #endregion

        #region 检测是否符合Email格式

        ///// <summary>
        ///// 
        ///// </summary>
        ///// <param name="s"></param>
        ///// <returns></returns>
        //public static bool IsEmail(  string s)
        //{
        //    string text1 = @"^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$";
        //    return Regex.IsMatch(s, text1);
        //}


        /// <summary>
        /// 判断是否是电子电子邮件
        /// </summary>
        /// <param name="strEmail">要判断的email字符串</param>
        /// <returns>判断结果</returns>
        public static bool IsAnEmail(  string strEmail)
        {
            if (string.IsNullOrEmpty(strEmail))
            {
                return false;
            }
            string RegStr = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
            return Regex.IsMatch(strEmail, @"^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$") && Regex.IsMatch(strEmail, RegStr);
        }


        /// <summary>
        /// 验证是否为^@ 开头的字符串
        /// 根据电子邮件地址查找电子邮件服务器
        /// </summary>
        /// <param name="strEmail"></param>
        /// <returns></returns>
        public static bool IsValidDoEmail(  string strEmail)
        {
            return Regex.IsMatch(strEmail, @"^@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$");
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="strEmail"></param>
        /// <returns></returns>
        public static bool IsValidEmail(  string strEmail)
        {
            return Regex.IsMatch(strEmail, @"^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$");
        }



        #endregion

        #region 判断是否为IP（IPV4）
        /// <summary>
        /// 判断是否为IP（IPV4）
        /// </summary>
        /// <param name="strIp"></param>
        /// <returns></returns>
        public static bool IsIP(  string strIp)
        {
            // return Regex.IsMatch(ip, @"^((2[0-4]\d|25[0-5]|[01]?\d\d?)\.){3}(2[0-4]\d|25[0-5]|[01]?\d\d?)$");
            return (!string.IsNullOrEmpty(strIp) && Regex.IsMatch(strIp.Trim(), @"^(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])$"));
        }

        //public static bool IsIp(string s)
        //{
        //    string text1 = @"^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$";
        //    return Regex.IsMatch(s, text1);
        //}

        /// <summary>
        /// 
        /// </summary>
        /// <param name="ip"></param>
        /// <returns></returns>
        public static bool IsInertNetIP(  string strIp)
        {
            return Regex.IsMatch(strIp, @"^((2[0-4]\d|25[0-5]|[01]?\d\d?)\.){3}(2[0-4]\d|25[0-5]|[01]?\d\d?)$");
        }

        public static bool IsIPSect(  string strIp)
        {
            return Regex.IsMatch(strIp, @"^((2[0-4]\d|25[0-5]|[01]?\d\d?)\.){2}((2[0-4]\d|25[0-5]|[01]?\d\d?|\*)\.)(2[0-4]\d|25[0-5]|[01]?\d\d?|\*)$");
        }

        #endregion

   

        #region 是否符合邮编格式
        /// <summary>
        /// 检测是否符合邮编格式
        /// </summary>
        /// <param name="postCode"></param>
        /// <returns></returns>
        public static bool IsPostCode(  string postCode)
        {
            return Regex.IsMatch(postCode, @"^\d{6}$");
        }

        #endregion

        #region 是否符合身份证号码格式
        /// <summary>
        /// 检测是否符合身份证号码格式
        /// </summary>
        /// <param name="num"></param>
        /// <returns></returns>
        public static bool IsIdentityNumber(  string num)
        {
            return Regex.IsMatch(num, @"^\d{17}[\d|X]|\d{15}$");
        }

        #endregion

        #region 是否符合时间格式
        /// <summary>
        /// 检测是否符合时间格式
        /// </summary>
        /// <returns></returns>
        public static bool IsTime(  string timeval)
        {
            return Regex.IsMatch(timeval, @"20\d{2}\-[0-1]{1,2}\-[0-3]?[0-9]?(\s*((([0-1]?[0-9])|(2[0-3])):([0-5]?[0-9])(:[0-5]?[0-9])?))?");
        }
        //public static bool IsTime(string timeval)
        //{
        //     return Regex.IsMatch(timeval, @"^((([0-1]?[0-9])|(2[0-3])):([0-5]?[0-9])(:[0-5]?[0-9])?)$");
        //}


        ///// <summary>
        ///// 判断是否为日期型变量
        ///// </summary>
        ///// <param name="str">日期变量</param>
        ///// <returns>是否为日期</returns>
        //public static bool IsDateTime(  string str)
        //{
        //    try
        //    {
        //        Convert.ToDateTime(str);

        //        return true;
        //    }
        //    catch
        //    {
        //        return false;
        //    }
        //}
        /// <summary>
        /// 判断是否为日期型变量
        /// </summary>
        /// <param name="obj">日期变量</param>
        /// <returns>是否为日期</returns>
        public static bool IsDateTime(object obj)
        {
            try
            {
                Convert.ToDateTime(obj.ToString());

                return true;
            }
            catch
            {
                return false;
            }
        }

        #endregion

        #region 是否符合URL格式
        /// <summary>
        /// 检测是否符合URL格式,前面必需含有http://
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        public static bool IsURL(  string url)
        {
            if (string.IsNullOrEmpty(url))
            {
                return false;
            }
            return Regex.IsMatch(url, @"^http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?$");
        }

        //public static bool IsURL(string strUrl)
        //{
        //    return Regex.IsMatch(strUrl, @"^(http|https)\://([a-zA-Z0-9\.\-]+(\:[a-zA-Z0-9\.&%\$\-]+)*@)*((25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9])\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[0-9])|localhost|([a-zA-Z0-9\-]+\.)*[a-zA-Z0-9\-]+\.(com|edu|gov|int|mil|net|org|biz|arpa|info|name|pro|aero|coop|museum|[a-zA-Z]{1,10}))(\:[0-9]+)*(/($|[a-zA-Z0-9\.\,\?\'\\\+&%\$#\=~_\-]+))*$");
        //}

        /// <summary>
        /// 
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        public static bool IsUrl(  string s)
        {
            string text1 = @"^(http|https|ftp|rtsp|mms):(\/\/|\\\\)[A-Za-z0-9%\-_@]+\.[A-Za-z0-9%\-_@]+[A-Za-z0-9\.\/=\?%\-&_~`@:\+!;]*$";
            return Regex.IsMatch(s, text1, RegexOptions.IgnoreCase);
        }

        #endregion

        #region IsPhysicalPath
        /// <summary>
        /// IsPhysicalPath
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        public static bool IsPhysicalPath(string s)
        {
            string text1 = @"^\s*[a-zA-Z]:.*$";
            return Regex.IsMatch(s, text1);
        } 
        #endregion

        #region IsRelativePath
        /// <summary>
        /// IsRelativePath
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        public static bool IsRelativePath(string s)
        {
            if ((s == null) || (s == ""))
            {
                return false;
            }
            if (s.StartsWith("/") || s.StartsWith("?"))
            {
                return false;
            }
            if (Regex.IsMatch(s, @"^\s*[a-zA-Z]{1,10}:.*$"))
            {
                return false;
            }
            return true;
        }
        
        #endregion

        #region 是否符合电话格式
        /// <summary>
        /// 检测是否符合电话格式
        /// </summary>
        /// <param name="phoneNumber"></param>
        /// <returns></returns>
        public static bool IsFax(  string phoneNumber)
        {
            Match m = RegTel.Match(phoneNumber);
            return m.Success;

        }
        #endregion

        #region 是否符合电话格式
        /// <summary>
        /// 检测是否符合电话格式
        /// </summary>
        /// <param name="phoneNumber"></param>
        /// <returns></returns>
        public static bool IsTel(  string phoneNumber)
        {
            return Regex.IsMatch(phoneNumber, @"^(\(\d{3}\)|\d{3}-)?\d{7,8}$");
        }




        #endregion

        #region 判断是否是手机号码
        /// <summary>
        /// 判断是否是国内手机号码,前面不加0
        /// </summary>
        /// <param name="strIn">输入字符串</param>
        /// <returns>返回true或false</returns>

        public static bool IsMobile(  string Mobile)
        {
            if (string.IsNullOrEmpty(Mobile))
            {
                return false;
            }

            string strReg = "^[1][3,4,5,8][0-9]{9}$";
            string strRegs = @"^13[0-9]{1}[0-9]{8}$|^15[0-9]{1}[0-9]{8}$|^18[8-9]{1}[0-9]{8}$";

            bool isMobiles = Regex.IsMatch(Mobile, strRegs, RegexOptions.Compiled);

            if (Regex.Match(Mobile, strReg, RegexOptions.Compiled).Success || isMobiles)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        /// <summary>
        /// 验证手机号码是否输入正确
        /// </summary>
        /// <param name="txtPhone"></param>
        /// <returns></returns>
        private static bool IsMobilePhone(string txtPhone)
        {

            if (string.IsNullOrEmpty(txtPhone.Trim())) { return false; }
            string s = @"^(13[0-9]|15[0|3|6|7|8|9]|18[8|9])\d{8}$";
            while (true)
            {
                string input = txtPhone.Trim();
                return Regex.IsMatch(input, s);

            }
        }

        /// <summary>
        /// 判断是否是手机号码
        /// </summary>
        /// <param name="tel"></param>
        /// <returns></returns>
        public static bool IsMobileNumber(string Phone)
        {
            if (string.IsNullOrEmpty(Phone.Trim())) { return false; }
            string s = @"^13[0-9]{1}[0-9]{8}$|^15[0-9]{1}[0-9]{8}$|^18[8-9]{1}[0-9]{8}$";

            if (string.IsNullOrEmpty(Phone))
            {
                return false;
            }
            return Regex.IsMatch(Phone, s, RegexOptions.Compiled);
        }
        #endregion

        #region 是否符合电话格式

        /// <summary>
        /// 是否符合电话格式 
        /// 不能加国际号 （固定电话、手机验证）
        /// </summary>
        /// <param name="Phone"></param>
        /// <returns></returns>
        public static bool IsPhoneNumber(  string Phone)
        {
            if (string.IsNullOrEmpty(Phone.Trim())) { return false; }

            string RegMobile = @"^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$";
            string RegTel = @"^\d{3,4}-?\d{7,9}$";

            string RegStr = Phone.Trim().Length == 11 ? RegMobile : RegTel;

            if (string.IsNullOrEmpty(Phone))
            {
                return false;
            }
            return Regex.IsMatch(Phone, RegStr, RegexOptions.Compiled);
        }

        #endregion

        #region 判断是否为UserID
        /// <summary>
        /// 判断是否为UserID （数字）
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        public static bool IsValidID(  string input)
        {
            if (string.IsNullOrEmpty(input))
            {
                return false;
            }
            input = input.Replace("|", "").Replace(",", "").Replace("-", "").Replace(" ", "").Trim();
            if (string.IsNullOrEmpty(input))
            {
                return false;
            }
            return IsNumber(input);
        }

        #endregion

        #region IsValidUserName

        /// <summary>
        /// 判断是否为有效用户名
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="msg"></param>
        /// <param name="Max"></param>
        /// <param name="Min"></param>
        /// <returns></returns>
 
        #endregion

        #region 验证密码长度是否小于6
 
        #endregion

        #region 是否有中文字符

        /// <summary>
        /// 检测是否有中文字符
        /// </summary>
        /// <param name="inputData"></param>
        /// <returns></returns>
        public static bool IsHasCHNZ(  string inputData)
        {
            Match m = RegCHZN.Match(inputData);
            return m.Success;
        }

        #endregion


        /// <summary>
        /// 检测是否有危险的可能用于链接的字符串
        /// </summary>
        /// <param name="str">要判断字符串</param>
        /// <returns>判断结果</returns>
        public static bool IsSafeUserInfoString(  string str)
        {
            // return !Regex.IsMatch(str, "^\\s*$|^c:\\\\con\\\\con$|[%,\\*\"\\s\\t\\<\\>\\&]|游客|^Guest");
            return !Regex.IsMatch(str, @"/^\s*$|^c:\\con\\con$|[%,\*" + "\"" + @"\s\t\<\>\&]|$guestexp/is");
        }


        /// <summary>
        /// 检测是否有Sql危险字符
        /// </summary>
        /// <param name="str">要判断字符串</param>
        /// <returns>判断结果</returns>
        public static bool IsSafeSqlString(  string str)
        {
            return !Regex.IsMatch(str, @"[-|;|,|\/|\(|\)|\[|\]|\}|\{|%|@|\*|!|\']");
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        public static bool IsSafety(  string s)
        {
            string text1 = s.Replace("%20", " ");
            text1 = Regex.Replace(text1, @"\s", " ");
            string text2 = "select |insert |delete from |count\\(|drop table|update |truncate |asc\\(|mid\\(|char\\(|xp_cmdshell|exec master|net localgroup administrators|:|net user|\"|\\'| or ";
            return !Regex.IsMatch(text1, text2, RegexOptions.IgnoreCase);
        }
 

        /// <summary>
        /// 判断是否为base64字符串
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static bool IsBase64String(  string str)
        {
            //A-Z, a-z, 0-9, +, /, =
            return Regex.IsMatch(str, @"[A-Za-z0-9\+\/\=]");
        }
 

        /// <summary>
        /// 
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        public static bool IsUnicode(  string s)
        {
            string text1 = @"^[\u4E00-\u9FA5\uE815-\uFA29]+$";
            return Regex.IsMatch(s, text1);
        }


 

        #region IsColorValue
        /// <summary>
        /// IsColorValue
        /// </summary>
        /// <param name="color"></param>
        /// <returns></returns>
        public static bool IsColorValue(  string color)
        {
            if (IsNullOrEmpty(color))
            {
                return false;
            }
            color = color.Trim().Trim(new char[] { '#' });
            if ((color.Length != 3) && (color.Length != 6))
            {
                return false;
            }
            return !Regex.IsMatch(color, "[^0-9a-f]", RegexOptions.IgnoreCase);
        }
        #endregion


        

        #region IsUTF8

        public static bool IsUTF8(  System.IO.FileStream sbInputStream)
        {
            bool flag = true;
            long length = sbInputStream.Length;
            byte num2 = 0;
            for (int i = 0; i < length; i++)
            {
                byte num3 = (byte)sbInputStream.ReadByte();
                if ((num3 & 0x80) != 0)
                {
                    flag = false;
                }
                if (num2 == 0)
                {
                    if (num3 >= 0x80)
                    {
                        do
                        {
                            num3 = (byte)(num3 << 1);
                            num2 = (byte)(num2 + 1);
                        }
                        while ((num3 & 0x80) != 0);
                        num2 = (byte)(num2 - 1);
                        if (num2 == 0)
                        {
                            return false;
                        }
                    }
                }
                else
                {
                    if ((num3 & 0xc0) != 0x80)
                    {
                        return false;
                    }
                    num2 = (byte)(num2 - 1);
                }
            }
            if (num2 > 0)
            {
                return false;
            }
            if (flag)
            {
                return false;
            }
            return true;
        }
        #endregion
 
        #region 判断是否为汉字

        /// <summary>
        /// 判断是否为汉字
        /// </summary>
        /// <param name="CString"></param>
        /// <returns></returns>
        public static bool IsChineseChar(  string CString)
        {

            bool BoolValue = false;
            for (int i = 0; i < CString.Length; i++)
            {
                if (Convert.ToInt32(Convert.ToChar(CString.Substring(i, 1))) < Convert.ToInt32(Convert.ToChar(128)))
                {
                    BoolValue = false;
                }
                else
                {
                    BoolValue = true;
                }
            }
            return BoolValue;

        }
        #endregion

        #region  功能同 IsCompriseStr
    

  
        #endregion

    }
}
