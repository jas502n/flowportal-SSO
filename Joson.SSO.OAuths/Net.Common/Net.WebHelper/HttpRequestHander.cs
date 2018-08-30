using System;
using System.Collections.Generic;

using System.Text;

using System.Web;
using System.IO;
using System.Net;

namespace Net.Common
{
    public enum HttpMethod
    {
        POST, GET

    }

    /// <summary>
    /// WebHlep 的摘要说明
    /// </summary>
    public static class HttpRequestHander
    {

        //public  HttpRequestHander()
        //{
        //    //
        //    // TODO: 在此处添加构造函数逻辑
        //    //
        //}


        #region 扩展方法

        #region 获取网页所有数据

        //获取网页所有数据
        public static string ResponseHTML(string strURL, string strPost)
        {
            string strOut = "";
            WebClient wc = new WebClient();
            try
            {
                HttpWebRequest req = (HttpWebRequest)WebRequest.Create(strURL);
                byte[] byteArray = System.Text.Encoding.ASCII.GetBytes(strPost);
                req.ContentType = "application/x-www-form-urlencoded";
                req.ContentLength = byteArray.Length;
                req.Method = "POST";

                Stream reqStm = req.GetRequestStream();
                reqStm.Write(byteArray, 0, byteArray.Length);
                reqStm.Close();

                HttpWebResponse res = (HttpWebResponse)req.GetResponse();
                StreamReader sr = new StreamReader(res.GetResponseStream(), System.Text.Encoding.Default);
                strOut = sr.ReadToEnd();
                sr.Close();
                res.Close();
            }
            catch (WebException e)
            {
                strOut = e.Message.ToString();
            }
            catch (Exception e)
            {
                strOut = e.ToString();
            }

            return strOut;
        }

        #endregion

        #region 截取网页特定内容

       
        /// <summary>
        /// 截取网页特定内容
        /// </summary>
        /// <param name="strWebText"></param>
        /// <param name="strBeg"></param>
        /// <param name="strEnd"></param>
        /// <returns></returns>
        public static string CutsString(string strWebText, string strBeg, string strEnd)
        {
            string strOut = "";

            int iB = 0, iE = -1;
            iB = strBeg.Length;

            Int32 indexBeg = strWebText.ToLower().IndexOf(strBeg) + iB;	//开始索引
            Int32 indexEnd = strWebText.ToLower().IndexOf(strEnd) + iE;	//结束索引	
            Int32 nLen = indexEnd - indexBeg;		//截取内容长度

            if (nLen > 0)
                strOut = strWebText.Substring(indexBeg, nLen);
            else
                strOut = strWebText;

            return (strOut);
        }

        #endregion

        #endregion

        #region 获取页面内容
        /// <summary>
        /// 
        /// </summary>
        /// <param name="Url"></param>
        /// <param name="PostType"></param>
        /// <param name="Encodes"></param>
        /// <returns></returns>
        public static string GetHTML(string Url, string PostType, string Encodes)
        {

            HttpMethod HttpMethodPOST = PostType == "POST" ? HttpMethod.POST : HttpMethod.GET;
            return GetHTML(Url, HttpMethodPOST, Encodes);

        }
        /// <summary>
        /// 获取页面内容 
        /// </summary>
        /// <param name="Url">URL路径</param>
        /// <param name="PostType">POST类型 GET/POST</param>
        /// <param name="Encodes">编码GB2312 / utf-8</param>
        /// <returns></returns>
        public static string GetHTML(string Url, HttpMethod PostType, string Encodes)
        {
            string StrHttp = "";
            try
            {
                //"POST"
                if (PostType.Equals(HttpMethod.POST))
                {
                    string[] TmpUrl = Url.Split('?');
                    string PostStr = TmpUrl[TmpUrl.Length - 1];
                    byte[] requestBytes = System.Text.Encoding.Default.GetBytes(PostStr);
                    HttpWebRequest httpReq = (HttpWebRequest)WebRequest.Create(TmpUrl[0]);
                    httpReq.Timeout = 20000;//设置超时值2秒
                    httpReq.Method = "POST";
                    httpReq.ContentType = "application/x-www-form-urlencoded";
                    httpReq.ContentLength = requestBytes.Length;
                    Stream requestStream = httpReq.GetRequestStream();
                    requestStream.Write(requestBytes, 0, requestBytes.Length);
                    requestStream.Close();

                    HttpWebResponse res = (HttpWebResponse)httpReq.GetResponse();
                    StreamReader sr = new StreamReader(res.GetResponseStream(), System.Text.Encoding.GetEncoding(Encodes));
                    StrHttp = sr.ReadToEnd();
                    sr.Close();
                    res.Close();
                    sr = null;
                    res = null;
                }
                else
                {
                    HttpWebRequest httpReq = (HttpWebRequest)WebRequest.Create(Url);
                    //HttpWebRequest 类对 WebRequest 中定义的属性和方法提供支持'，也对使用户能够直接与使用 HTTP 的服务器交互的附加属性和方法提供支持。
                    httpReq.ContentType = "application/x-www-form-urlencoded";
                    //httpReq.Headers.Add("Accept-Language", "zh-cn");
                    httpReq.Timeout = 20000; //设置超时值2秒
                    httpReq.Method = "GET";
                    HttpWebResponse httpResq = (HttpWebResponse)httpReq.GetResponse();
                    //如是中文，要设置编码格式为“GB2312”。
                    StreamReader reader = new StreamReader(httpResq.GetResponseStream(), System.Text.Encoding.GetEncoding(Encodes));

                    string respHTML = reader.ReadToEnd(); //respHTML就是页面源代码
                    StrHttp = respHTML;
                    httpResq.Close();
                    httpResq = null;
                }
            }
            catch (Exception ex)
            {
                SysLog("过程GetHttp出错. URL: " + Url + " 错误描述:" + ex.Message);
                StrHttp = "{\"Msg\":\"999|" + ex.Message + "\"}";
            }
            return StrHttp;
        }


        #endregion

        #region 返回状态

        /// <summary>
        /// 返回状态
        /// </summary>
        /// <param name="Url">URL路径</param>
        /// <returns></returns>
        /// 
        public static string[] GetHTML(string Url)
        {
            string StrHttp = "";
            string PostType = "POST";
            string codes = "GB2312";

            try
            {

                //string Html = "<iframe src='" + Url + "' width=0 height=0 ></iframe>";
                //HttpContext.Current.Response.Write(Html);


                if (PostType == "POST")
                {
                    string[] TmpUrl = Url.Split('?');
                    string PostStr = TmpUrl[TmpUrl.Length - 1];
                    byte[] requestBytes = System.Text.Encoding.Default.GetBytes(PostStr);
                    HttpWebRequest httpReq = (HttpWebRequest)WebRequest.Create(TmpUrl[0]);
                    httpReq.Timeout = 20000;//设置超时值2秒
                    httpReq.Method = "POST";
                    httpReq.ContentType = "application/x-www-form-urlencoded";
                    httpReq.ContentLength = requestBytes.Length;
                    Stream requestStream = httpReq.GetRequestStream();
                    requestStream.Write(requestBytes, 0, requestBytes.Length);
                    requestStream.Close();

                    HttpWebResponse res = (HttpWebResponse)httpReq.GetResponse();
                    StreamReader sr = new StreamReader(res.GetResponseStream(), System.Text.Encoding.GetEncoding(codes));
                    StrHttp = sr.ReadToEnd();
                    sr.Close();
                    res.Close();
                    sr = null;
                    res = null;
                }
                else
                {
                    HttpWebRequest httpReq = (HttpWebRequest)WebRequest.Create(Url);
                    //HttpWebRequest 类对 WebRequest 中定义的属性和方法提供支持'，
                    //也对使用户能够直接与使用 HTTP 的服务器交互的附加属性和方法提供支持
                    httpReq.ContentType = "application/x-www-form-urlencoded";
                    //httpReq.Headers.Add("Accept-Language", "zh-cn");
                    httpReq.Timeout = 20000; //设置超时值2秒
                    httpReq.Method = "GET";
                    HttpWebResponse httpResq = (HttpWebResponse)httpReq.GetResponse();
                    StreamReader reader = new StreamReader(httpResq.GetResponseStream(), System.Text.Encoding.GetEncoding(codes));//如是中文，要设置编码格式为“GB2312”。
                    string respHTML = reader.ReadToEnd(); //respHTML就是页面源代码
                    StrHttp = respHTML;
                    httpResq.Close();
                    httpResq = null;
                }
            }
            catch (Exception ex)
            {
                SysLog("过程GetHttp出错. URL: " + Url + " 错误描述:" + ex.Message);
                StrHttp = "999|" + ex.Message + "";
            }
            return StrHttp.Split('|');
        }


        #endregion

        #region 返回状态


        /// <summary>
        /// 
        /// </summary>
        /// <param name="strURL"></param>
        /// <param name="PostType"></param>
        /// <returns></returns>
        public static string GetHTML(string strURL, string PostType)
        {
            HttpMethod HttpMethodPOST = PostType == "POST" ? HttpMethod.POST : HttpMethod.GET;
            return GetHTML(strURL, HttpMethodPOST);
        }

        /// <summary>
        /// 返回状态
        /// </summary>
        /// <param name="Url">URL路径</param>
        /// <returns></returns>
        /// 
        public static string GetHTML(string Url, HttpMethod PostType)
        {
            string StrHttp = "";
            //string PostType = "POST";
            string codes = "GB2312";

            try
            {

                //string Html = "<iframe src='" + Url + "' width=0 height=0 ></iframe>";
                //HttpContext.Current.Response.Write(Html);

                // "POST"
                if (PostType.Equals(HttpMethod.POST))
                {
                    string[] TmpUrl = Url.Split('?');
                    string PostStr = TmpUrl[TmpUrl.Length - 1];
                    byte[] requestBytes = System.Text.Encoding.Default.GetBytes(PostStr);
                    HttpWebRequest httpReq = (HttpWebRequest)WebRequest.Create(TmpUrl[0]);
                    httpReq.Timeout = 20000;//设置超时值2秒
                    httpReq.Method = "POST";
                    httpReq.ContentType = "application/x-www-form-urlencoded";
                    httpReq.ContentLength = requestBytes.Length;
                    Stream requestStream = httpReq.GetRequestStream();
                    requestStream.Write(requestBytes, 0, requestBytes.Length);
                    requestStream.Close();

                    HttpWebResponse res = (HttpWebResponse)httpReq.GetResponse();
                    StreamReader sr = new StreamReader(res.GetResponseStream(), System.Text.Encoding.GetEncoding(codes));
                    StrHttp = sr.ReadToEnd();
                    sr.Close();
                    res.Close();
                    sr = null;
                    res = null;
                }
                else
                {
                    HttpWebRequest httpReq = (HttpWebRequest)WebRequest.Create(Url);//HttpWebRequest 类对 WebRequest 中定义的属性和方法提供支持'，也对使用户能够直接与使用 HTTP 的服务器交互的附加属性和方法提供支持。
                    httpReq.ContentType = "application/x-www-form-urlencoded";
                    //httpReq.Headers.Add("Accept-Language", "zh-cn");
                    httpReq.Timeout = 20000; //设置超时值2秒
                    httpReq.Method = "GET";
                    HttpWebResponse httpResq = (HttpWebResponse)httpReq.GetResponse();
                    StreamReader reader = new StreamReader(httpResq.GetResponseStream(), System.Text.Encoding.GetEncoding(codes));//如是中文，要设置编码格式为“GB2312”。
                    string respHTML = reader.ReadToEnd(); //respHTML就是页面源代码
                    StrHttp = respHTML;
                    httpResq.Close();
                    httpResq = null;
                }
            }
            catch (Exception ex)
            {
                SysLog("过程GetHttp出错. URL: " + Url + " 错误描述:" + ex.Message);
                StrHttp = "999|" + ex.Message + "";
            }
            return StrHttp;
        }
        #endregion



        ////WebClient类重载
        //protected override WebRequest GetWebRequest(Uri address)
        //{
        //    WebRequest request = base.GetWebRequest(address);
        //    request.PreAuthenticate = true;
        //    if (request is HttpWebRequest)
        //    {
        //        HttpWebRequest httpRequest = request as HttpWebRequest;
        //        httpRequest.AllowAutoRedirect = false;
        //        httpRequest.CookieContainer = cookieContainer;
        //    }
        //    return request;
        //}


        /// <summary>
        /// 请求Url并获取返回值
        /// </summary>
        /// <param name="strUrl">Url地址</param>
        /// <returns></returns>
        public static string GetRequestPageHTML(string strUrl)
        {
            WebClient wc = new WebClient(); // 创建WebClient实例提供向URI 标识的资源发送数据和从URI 标识的资源接收数据
            wc.Credentials = CredentialCache.DefaultCredentials; // 获取或设置用于对向 Internet 资源的请求进行身份验证的网络凭据。

            ///方法一：
            Encoding enc = Encoding.GetEncoding("utf-8"); // 如果是乱码就改成 utf-8 / GB2312
            Byte[] pageData = wc.DownloadData(strUrl); // 从资源下载数据并返回字节数组。
            string shtml = enc.GetString(pageData);
            return shtml;
        }


        public static void SysLog(string ex)
        {
            FileStream fs = new FileStream(HttpContext.Current.Server.MapPath("~") + "/LogFile/" + DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Day + ".log", FileMode.Append);
            StreamWriter sw = new StreamWriter(fs);
            sw.WriteLine(DateTime.Now.ToString() + "--" + ex);
            sw.Close();
            fs.Close();

        }


        #region 获取页面源代码
        /// <summary>
        /// 获取页面源代码
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        public static string GetPageResouceCode(string url)
        {
            try
            {
                WebRequest wrt = WebRequest.Create(url);
                WebResponse wrse = wrt.GetResponse();
                Stream strM = wrse.GetResponseStream();
                StreamReader SR = new StreamReader(strM, Encoding.UTF8);
                string strallstrm = SR.ReadToEnd();
                return strallstrm;
            }
            catch
            {
                return "";
            }
        }

        #endregion


        #region URL请求数据
        /// <summary>
        /// HTTP POST方式请求数据
        /// </summary>
        /// <param name="url">URL.</param>
        /// <param name="param">POST的数据</param>
        /// <returns></returns>
        public static string HttpPost(string url, string param)
        {
            HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(url);
            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";
            request.Accept = "*/*";
            request.Timeout = 15000;
            request.AllowAutoRedirect = false;

            StreamWriter requestStream = null;
            WebResponse response = null;
            string responseStr = null;

            try
            {
                requestStream = new StreamWriter(request.GetRequestStream());
                requestStream.Write(param);
                requestStream.Close();

                response = request.GetResponse();
                if (response != null)
                {
                    StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.UTF8);
                    responseStr = reader.ReadToEnd();
                    reader.Close();
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                request = null;
                requestStream = null;
                response = null;
            }

            return responseStr;
        }

        /// <summary>
        /// HTTP GET方式请求数据.
        /// </summary>
        /// <param name="url">URL.</param>
        /// <returns></returns>
        public static string HttpGet(string url)
        {
            HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(url);
            request.Method = "GET";
            //request.ContentType = "application/x-www-form-urlencoded";
            request.Accept = "*/*";
            request.Timeout = 15000;
            request.AllowAutoRedirect = false;

            WebResponse response = null;
            string responseStr = null;

            try
            {
                response = request.GetResponse();

                if (response != null)
                {
                    StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.UTF8);
                    responseStr = reader.ReadToEnd();
                    reader.Close();
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                request = null;
                response = null;
            }

            return responseStr;
        }

        /// <summary>
        /// 执行URL获取页面内容
        /// </summary>
        public static string UrlExecute(string urlPath)
        {
            if (string.IsNullOrEmpty(urlPath))
            {
                return "error";
            }
            StringWriter sw = new StringWriter();
            try
            {
                HttpContext.Current.Server.Execute(urlPath, sw);
                return sw.ToString();
            }
            catch (Exception)
            {
                return "error";
            }
            finally
            {
                sw.Close();
                sw.Dispose();
            }
        }
        #endregion


        public static string GetSourceTextByUrl(string url)
        {
            WebRequest request = WebRequest.Create(url);
            request.Timeout = 0x4e20;
            StreamReader reader = new StreamReader(request.GetResponse().GetResponseStream());
            return reader.ReadToEnd();
        }


    }
}
