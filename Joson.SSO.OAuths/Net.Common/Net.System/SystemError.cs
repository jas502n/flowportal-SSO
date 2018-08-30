using System;
using System.IO;
using System.Collections.Generic;
using System.Text;

namespace Net.Common
{
    /// <summary>
    /// 错误处理函数，用于记录错误日志
    /// </summary>
    public class SystemError
    {
        //记录错误日志位置
        private static string m_fileName = System.Web.HttpContext.Current.Server.MapPath("Systemlog.log");


        #region 可在web.config 中配置

        //  private static string m_fileName = System.Web.HttpContext.Current.Server.MapPath(ConfigurationManager.AppSettings["LogfilePathName"]); 

        // private  string m_fileName = "c:\\Systemlog.txt";

        //  <configuration>
        //  <appSettings>
        //    <add key="LogfilePathName" value="~/log/error.log"/>
        //  </appSettings>
        // <connectionStrings/>

        #endregion


        //OleDbHelper OHelper = new OleDbHelper();

        //OleDbHelper.CreateErrorLog("this is a test for error log!");


        public static String FileName
        {
            get
            {
                return (m_fileName);
            }
            set
            {
                if (value != null || value != "")
                {
                    m_fileName = value;
                }
            }
        }

        #region 记录文本文件
        /// <summary>
        /// 记录日志至文本文件
        /// </summary>
        /// <param name="message">记录的内容</param>

        public static void CreateErrorLog(string message)
        {

            String MyURLA, MyURLB, MyURLC, MyURLD, MyURLE, MyURLF;

            MyURLA = System.Web.HttpContext.Current.Request.RawUrl.ToString();
            // /web/CompanyNews.aspx?ID=6

            MyURLB = System.Web.HttpContext.Current.Request.Url.AbsolutePath.ToString();
            // /web/CompanyNews.aspx 无参数

            MyURLC = System.Web.HttpContext.Current.Request.Url.PathAndQuery.ToString();
            // 同 Request.RawUrl

            MyURLD = System.Web.HttpContext.Current.Request.CurrentExecutionFilePath.ToString();
            // /web/CompanyNews.aspx 同 Request.Url.AbsolutePath

            MyURLE = System.Web.HttpContext.Current.Request.Url.AbsoluteUri.ToString();
            // http://localhost:1108/web/CompanyNews.aspx?ID=6
            MyURLF = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
            //127.0.0.1


            if (File.Exists(m_fileName))
            {

                ///如果日志文件已经存在，则直接写入日志文件
                StreamWriter sr = File.AppendText(FileName);
                sr.WriteLine("\r\n");
                sr.WriteLine("*" + DateTime.Now.ToString() + " | " + MyURLA + " | " + message);
                //sr.WriteLine("\n");
                //sr.WriteLine("*" + DateTime.Now.ToString() + " | " + MyURLD + " | " + message);
                sr.Close();
            }
            else
            {
                ///创建日志文件
                StreamWriter sr = File.CreateText(FileName);
                sr.Close();
            }
        }

        
        #endregion


        #region  记录文本文件
        /// <summary>
        /// 记录文本文件
        /// </summary>
        /// <param name="message">记录的内容</param>
        public static void CreateMsg(string message, string fileName)
        {
            var m_fileName = System.Web.HttpContext.Current.Server.MapPath(fileName);

            //if (!Directory.Exists(m_fileName)) Directory.CreateDirectory(m_fileName);

            if (!File.Exists(m_fileName)) File.Create(m_fileName);

            try
            {


                if (File.Exists(m_fileName))
                {
                    ///如果日志文件已经存在，则直接写入日志文件
                    StreamWriter sr = File.AppendText(m_fileName);
                    sr.WriteLine("\r\n");
                    sr.WriteLine("" + DateTime.Now.ToString() + "-" + message);

                    sr.Close();
                }
                else
                {
                    ///创建日志文件

                    string sStr = string.Empty;

                    sStr = "===================================================================================================\r\n\r\n";

                    StreamWriter sr = File.CreateText(m_fileName);
                    sr.WriteLine("\r\n");
                    sr.WriteLine(sStr + DateTime.Now.ToString() + "-" + message);
                    sr.Close();
                }
            }

            catch (Exception ex)
            {
                ///抛出执行数据库异常
                //JosonFiles.CreateMsg(ex.Message, m_fileName);
                throw new Exception(ex.Message, ex);
            }

        }

        #endregion


        #region  记录日志至文本文件
        /// <summary>
        /// 记录日志至文本文件
        /// </summary>
        /// <param name="message">记录的内容</param>
        public static void CreateErrorMsg(string message)
        {
            try
            {
                var fileName = m_fileName;

                // var fileName = System.Web.HttpContext.Current.Server.MapPath(m_fileName);

                //if (!Directory.Exists(fileName)) Directory.CreateDirectory(fileName);

                if (!File.Exists(fileName)) File.Create(fileName);


                String MyURLA, MyURLB, MyURLC, MyURLD, MyURLE, MyURLF;

                MyURLA = System.Web.HttpContext.Current.Request.RawUrl.ToString();
                // /web/CompanyNews.aspx?ID=6

                MyURLB = System.Web.HttpContext.Current.Request.Url.AbsolutePath.ToString();
                // /web/CompanyNews.aspx 无参数

                MyURLC = System.Web.HttpContext.Current.Request.Url.PathAndQuery.ToString();
                // 同 Request.RawUrl

                MyURLD = System.Web.HttpContext.Current.Request.CurrentExecutionFilePath.ToString();
                // /web/CompanyNews.aspx 同 Request.Url.AbsolutePath

                MyURLE = System.Web.HttpContext.Current.Request.Url.AbsoluteUri.ToString();
                // http://localhost:1108/web/CompanyNews.aspx?ID=6
                MyURLF = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();
                //127.0.0.1

                if (File.Exists(fileName))
                {
                    ///如果日志文件已经存在，则直接写入日志文件
                    StreamWriter sr = File.AppendText(fileName);
                    sr.WriteLine("\r\n");
                    sr.WriteLine("*" + DateTime.Now.ToString() + "--" + message);
                    sr.WriteLine("*" + DateTime.Now.ToString() + " | " + MyURLA + " | " + message);
                    sr.Close();
                }
                else
                {
                    ///创建日志文件
                    ///
                    string sStr = string.Empty;

                    sStr = "===================================================================================================\r\n\r\n";

                    sStr += "++++++++++++++++++++++++++++++++++++ 本信息仅供参考所有++++++++++++++++++++++++++++++++++++++++++++" + "\r\n\r\n";

                    sStr += "===================================================================================================" + "\r\n\r\n";

                    StreamWriter sr = File.CreateText(fileName);
                    sr.WriteLine("\r\n");
                    sr.WriteLine(sStr + DateTime.Now.ToString() + "--" + message);
                    sr.WriteLine("*" + DateTime.Now.ToString() + " | " + MyURLA + " | " + message);
                    sr.Close();
                }
            }

            catch (Exception ex)
            {
                ///抛出执行数据库异常
                
                throw new Exception(ex.Message, ex);
            }

        }

        #endregion



    }
}
