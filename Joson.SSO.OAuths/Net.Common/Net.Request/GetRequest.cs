using System;
using System.Text;
using System.Web;
using System.Net;
using System.IO;
using System.Collections.Generic;

namespace Net.Common
{
    /// <summary>
    /// Request操作类
    /// </summary>
    public partial class GetRequest
    {
        #region  Static Property Get BaseUrl(静态属性获取URL地址)
        /// <summary>
        /// 这个静态属性的调用必须用以下代码方法调用
        /// 代码调用:
        /// Response.Write(UIHelper.BaseUrl);
        /// </summary>
        public static string BaseUrl
        {
            get
            {
                //strBaseUrl用于存储URL地址
                string strBaseUrl = "";
                //获取当前HttpContext下的地址
                strBaseUrl += "http://" + HttpContext.Current.Request.Url.Host;
                //如果端口不是80的话，那么加入特殊端口
                if (HttpContext.Current.Request.Url.Port.ToString() != "80")
                {
                    strBaseUrl += ":" + HttpContext.Current.Request.Url.Port;
                }
                strBaseUrl += HttpContext.Current.Request.ApplicationPath;

                return strBaseUrl + "/";
            }
        }
        #endregion



        #region 判断当前页面是否接收到了Post请求
        /// <summary>
        /// 判断当前页面是否接收到了Post请求
        /// </summary>
        /// <returns>是否接收到了Post请求</returns>

        public static bool IsPost()
        {
            return HttpContext.Current.Request.HttpMethod.Equals("POST");
        }

        #endregion

        #region 判断当前页面是否接收到了Get请求

        /// 判断当前页面是否接收到了Get请求
        /// </summary>
        /// <returns>是否接收到了Get请求</returns>

        public static bool IsGet()
        {
            return HttpContext.Current.Request.HttpMethod.Equals("GET");
        }

        #endregion

        #region 判断是否来自搜索引擎链接

        /// <summary>
        /// 判断是否来自搜索引擎链接
        /// </summary>
        /// <returns>是否来自搜索引擎链接</returns>
        public static bool IsSearchEnginesGet()
        {
            if (HttpContext.Current.Request.UrlReferrer != null)
            {
                string[] strArray = new string[] { "google", "yahoo", "msn", "baidu", "sogou", "sohu", "sina", "163", "lycos", "tom", "yisou", "iask", "soso", "gougou", "zhongsou" };
                string str = HttpContext.Current.Request.UrlReferrer.ToString().ToLower();
                for (int i = 0; i < strArray.Length; i++)
                {
                    if (str.IndexOf(strArray[i]) >= 0)
                    {
                        return true;
                    }
                }
            }
            return false;
        }

        #endregion

        #region 判断当前访问是否来自浏览器软件

        /// <summary>
        /// 判断当前访问是否来自浏览器软件
        /// </summary>
        /// <returns>当前访问是否来自浏览器软件</returns>

        public static bool IsBrowserGet()
        {
            string[] strArray = new string[] { "ie", "opera", "netscape", "mozilla", "konqueror", "firefox" };
            string str = HttpContext.Current.Request.Browser.Type.ToLower();
            for (int i = 0; i < strArray.Length; i++)
            {
                if (str.IndexOf(strArray[i]) >= 0)
                {
                    return true;
                }
            }
            return false;
        }
        #endregion

        #region 返回指定的服务器变量信息

        /// <summary>
        /// 返回指定的服务器变量信息
        /// </summary>
        /// <param name="strName">服务器变量名</param>
        /// <returns>服务器变量信息</returns>
        public static string GetServerString(string strName)
        {
            if (HttpContext.Current.Request.ServerVariables[strName] == null)
            {
                return "";
            }
            return HttpContext.Current.Request.ServerVariables[strName].ToString();
        }

        #endregion

        #region 返回上一个页面的地址

        /// <summary>
        /// 返回上一个页面的地址
        /// </summary>
        /// <returns>上一个页面的地址</returns>
        public static string GetUrlReferrer()
        {
            string retVal = null;

            try
            {
                retVal = HttpContext.Current.Request.UrlReferrer.ToString();
            }
            catch { }

            if (retVal == null)
                return "";

            return retVal;
        }

        #endregion

        #region 客户端-服务器端

        /// <summary>
        /// 得到主机头
        /// </summary>
        /// <returns></returns>
        public static string GetHost()
        {
            return HttpContext.Current.Request.Url.Host;
        }


        #region 获取网站的真实路径
        /// <summary>
        /// 获取网站的真实路径
        /// </summary>
        /// <returns></returns>
        public static string GetTrueWebSitePath()
        {
            string path = HttpContext.Current.Request.Path;
            if (path.LastIndexOf("/") != path.IndexOf("/"))
            {
                path = path.Substring(path.IndexOf("/"), path.LastIndexOf("/") + 1);
            }
            else
            {
                path = "/";
            }
            return path;

        }
        #endregion

        #region 获得当前绝对路径
        /// <summary>
        /// 获得当前绝对路径
        /// </summary>
        /// <param name="strPath">指定的路径</param>
        /// <returns>绝对路径</returns>
        public static string GetMapPath(string strPath)
        {
            if (HttpContext.Current != null)
            {
                return HttpContext.Current.Server.MapPath(strPath);
            }
            else //非web程序引用
            {
                return System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, strPath);
            }
        }
        #endregion

        #region  获取当前域名地址端口
        /// <summary>
        /// 获取当前域名地址端口
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentDomainPort()
        {
            string DomainPort = System.Web.HttpContext.Current.Request.ServerVariables["SERVER_PORT"].ToString();

            return DomainPort;

        }

        #endregion

        #region 获取当前域名 服务器的主机名、DNS地址或IP地址
        /// <summary>
        /// 获取当前域名 服务器的主机名、DNS地址或IP地址
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentDomain()
        {
            string domain = System.Web.HttpContext.Current.Request.ServerVariables["SERVER_NAME"].ToString();
            string Port = GetCurrentDomainPort() == "80" ? "" : ":" + GetCurrentDomainPort();
            return domain + Port;

            // "www.163.com"

            //int index = domain.IndexOf('.') + 1;
            //return domain.Substring(index, domain.Length - index);
            //return "163.com";
        }
        #endregion

        #region  获取当前域名网址 服务器的主机名、DNS地址或IP地址
        /// <summary>
        /// 获取当前域名网址 服务器的主机名、DNS地址或IP地址
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentDomainURL()
        {
            string GetCurrentDomainURL = string.Empty;

            try { GetCurrentDomainURL = "http://" + GetCurrentDomain(); }

            catch (Exception e)
            {
                string Domain = System.Web.HttpContext.Current.Request.ServerVariables["SERVER_NAME"].ToString();

                GetCurrentDomainURL = "http://" + Domain + (GetCurrentDomainPort() == "80" ? "" : ":" + GetCurrentDomainPort());
            }

            return GetCurrentDomainURL;

        }
        #endregion

        #region 获取当前域名网址 得到当前完整主机头
        /// <summary>
        /// 获取当前域名网址 得到当前完整主机头
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentFullHost()
        {
            HttpRequest request = HttpContext.Current.Request;
            if (!request.Url.IsDefaultPort)
            {
                return string.Format("{0}:{1}", request.Url.Host, request.Url.Port.ToString());
            }
            return request.Url.Host;
        }
        #endregion

        #region 获取当前返回服务器地址
        /// <summary>
        /// 获取当前返回服务器地址
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentHost()
        {
            string domain = System.Web.HttpContext.Current.Request.ServerVariables["Http_Host"].ToString();

            return domain;

        }
        #endregion

        #region 获取当前返回服务器地址
        /// <summary>
        /// 获取当前返回服务器地址
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentServer()
        {
            string domain = System.Web.HttpContext.Current.Request.ServerVariables["Url"].ToString();

            return domain;

        }
        #endregion

        #region 获取当前返回服务器与应用程序元数据库路径相应的物理路径
        /// <summary>
        /// 获取当前返回服务器与应用程序元数据库路径相应的物理路径
        /// </summary>
        /// <returns></returns>
        public static string GetServerPhysicalPath()
        {
            string domain = System.Web.HttpContext.Current.Request.ServerVariables["Appl_Physical_Path"].ToString();

            return domain;

        }

        #endregion

        #region 获取网站地址的域名
        /// <summary>
        /// 获取网站地址的域名
        /// </summary>
        public static string GetDomainByHost(string host)
        {
            host = host.Replace("http://", "").Split('/')[0];
            string[] arr = host.Split('.');
            return host;
        }

        #endregion

        #region 获取网站地址的域名
        /// <summary>
        /// 获取网站地址的域名
        /// </summary>
        public static string GetDomainByHostWithOutWWW(string host)
        {
            host = host.Replace("http://", "").Split('/')[0];
            string[] arr = host.Split('.');

            if (arr[0] == "www")
                return host.Substring(arr[0].Length + 1, host.Length - arr[0].Length - 1);
            else
                return host;
        }

        #endregion

        #region 根据域名获取IP
        /// <summary>
        /// 根据域名获取IP
        /// </summary>
        /// <param name="ToEmail"></param>
        /// <param name="subject"></param>
        /// <param name="body"></param>
        /// <returns></returns>
        public static string GetIPByHost(string host)
        {
            host = GetDomainByHost(host);
            //Dns.GetHostAddresses(host);
            IPHostEntry dnstoip = new IPHostEntry();
            dnstoip = Dns.Resolve(host);
            string ip = dnstoip.AddressList[0].ToString();
            return ip;
        }
 
        #endregion

        #endregion

        #region 域名、网站地址、IP查询

        /// <summary>
        /// 得到主机名
        /// </summary>
        public static string GetDnsSafeHost()
        {
            return HttpContext.Current.Request.Url.DnsSafeHost;
        }


        #region 客户端
        /// <summary>
        /// 返回接受请求的服务器地址
        /// </summary>
        /// <returns></returns>
        public static string GetRemoteServer()
        {
            string domain = System.Web.HttpContext.Current.Request.ServerVariables["LOCAL_ADDR"].ToString();

            return domain;

        }

        /// <summary>
        /// 获取远程发出请求的远程主机的IP地址
        /// </summary>
        /// <returns></returns>
        public static string GetRemoteIP()
        {
            string domain = System.Web.HttpContext.Current.Request.ServerVariables["Remote_Addr"].ToString();

            return domain;

        }


        /// <summary>
        /// 获取远程发出请求的远程主机名称
        /// </summary>
        /// <returns></returns>
        public static string GetRemoteHostName()
        {
            string domain = System.Web.HttpContext.Current.Request.ServerVariables["Remote_Host"].ToString();

            return domain;

        }

        /// <summary>
        /// 提取网址
        /// </summary>
        /// <param name="url">地址</param>
        /// <returns>真实地址</returns>
        public static string GetResolvedUrl(  string url)
        {
            return ((System.Web.UI.Page)HttpContext.Current.Handler).ResolveUrl(url);
        }


        #endregion

        #region 设置用户最后访问页面保存Cookie
        /// <summary>
        /// 设置用户最后访问页面保存Cookie
        /// </summary>
        /// <param name="page"></param>
        public static void WriteLastViewPage(string page)
        {
            var cookie = HttpContext.Current.Request.Cookies["page"];
            if (cookie == null)
            {
                cookie = new HttpCookie("page");
            }
            cookie.Value = page;
            HttpContext.Current.Response.Cookies.Add(cookie);

        }
        #endregion

        #region 获取用户真实IP地址
        /// <summary>
        /// 获取用户真实IP地址
        /// </summary>
        /// <returns>返回用户真实IP</returns>
        public static string GetUserRealIp()
        {
            string user_IP = "";

            if (System.Web.HttpContext.Current.Request.ServerVariables["HTTP_VIA"] != null)
            {
                user_IP = System.Web.HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();
            }
            else
            {
                user_IP = System.Web.HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"].ToString();
            }
            return user_IP;
        }



        #endregion

        #region 获取用户IP
        /// <summary>
        /// 获取用户IP
        /// </summary>
        /// <returns></returns>
        public static List<string> IpAddress()
        {
            List<string> ipList = new List<string>();
            try
            {
                string localIP = "";
                System.Net.IPAddress[] addressList = Dns.GetHostEntry(Dns.GetHostName()).AddressList;

                foreach (IPAddress ip in addressList)
                {
                    if (ip.AddressFamily == System.Net.Sockets.AddressFamily.InterNetwork)
                    {
                        localIP = ip.ToString();
                        ipList.Add(localIP);
                    }
                }
            }
            catch (Exception)
            {
                ipList.Add("0.0.0.0");
            }

            return ipList;
        }

        #endregion

        #region 获取用户IP

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public static string GetHostIPAddress()
        {
            List<string> ipList = IpAddress();
            if (ipList.Count <= 0) return null;
            return string.Join("|", ipList.ToArray());
        }


        /// <summary>
        /// 获取用户IP
        /// </summary>
        /// <returns></returns>
        public static string GetIPAddress()
        {
            string strIP = string.Empty;

            List<string> ipList = IpAddress();
            for (int i = 0; i < ipList.Count; i++)
            {
                strIP += ipList[i] + ",";
            }

            return strIP.Substring(0, strIP.Length-1);

        }
        #endregion

        #region 获取客户端IP
        /// <summary>
        /// 获取客户端IP
        /// </summary>
        /// <returns></returns>
        public static string GetIP()
        {
            string userHostAddress = string.Empty;
            userHostAddress = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (string.IsNullOrEmpty(userHostAddress))
            {
                userHostAddress = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
            }
            if (string.IsNullOrEmpty(userHostAddress))
            {
                userHostAddress = HttpContext.Current.Request.UserHostAddress;
            }
            if (!(!string.IsNullOrEmpty(userHostAddress) && JosonValidate.IsIP(userHostAddress)))
            {
                return "127.0.0.1";
            }
            return userHostAddress;
        }

        #endregion

        #region 取得客户端主机IPv4位址
        /// <summary>
        /// 取得客户端主机 IPv4 位址(由获取的 IPv6 位址反查 DNS 纪录)
        /// </summary>
        /// <returns></returns>
        public static string GetClientIPv4Address()
        {
            string ipv4 = String.Empty;

            foreach (IPAddress ip in Dns.GetHostAddresses(GetClientIP()))
            {
                if (ip.AddressFamily.ToString() == "InterNetwork")
                {
                    ipv4 = ip.ToString();
                    break;
                }
            }

            if (ipv4 != String.Empty)
            {
                return ipv4;
            }

            // 原作使用 Dns.GetHostName 方法取回的是 Server 端信息，非 Client 端。
            // 改写为利用 Dns.GetHostEntry 方法，由获取的 IPv6 位址反查 DNS 纪录，
            // 再逐一判断何者为 IPv4 协议，即可转为 IPv4 位址。
            foreach (IPAddress ip in Dns.GetHostEntry(GetClientIP()).AddressList)
            //foreach (IPAddress ip in Dns.GetHostAddresses(Dns.GetHostName()))
            {
                if (ip.AddressFamily.ToString() == "InterNetwork")
                {
                    ipv4 = ip.ToString();
                    break;
                }
            }

            return ipv4;
        }



        /// <summary>
        /// 取得客户端主机位址
        /// </summary>
        public static string GetClientIP()
        {
            if (null == HttpContext.Current.Request.ServerVariables["HTTP_VIA"])
            {
                return HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
            }
            else
            {
                return HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            }
        }


        #endregion


        public static string GetRealIP()
        {
            return GetRequest.GetIP();
        }

        #endregion

        #region 路径转化为URL地址
        /// <summary>
        /// 路径转化为URL地址
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        public static string UnrestrictedUrl(string path)
        {
            if (string.IsNullOrEmpty(path))
            {
                return path;
            }
            if (VirtualPathUtility.IsAppRelative(path))
            {
                path = VirtualPathUtility.ToAbsolute(path);
            }
            int num = 80;
            string host = HttpContext.Current.Request.Url.Host;
            string str2 = (num != 80) ? string.Format(":{0}", num) : "";
            Uri baseUri = new Uri(string.Format("http://{0}{1}", host, str2));
            return new Uri(baseUri, path).ToString();
        }

        #endregion

        //private static string GetDnsRealHost()
        //{
        //    string host = HttpContext.Current.Request.Url.DnsSafeHost;
        //    string ts = string.Format(GetUrl(), host, GetServerString("LOCAL_ADDR"), Utils.GetVersion());
        //    if (!string.IsNullOrEmpty(host) && host != "localhost")
        //    {
        //        Utils.GetDomainStr("dt_cache_domain_info", ts);
        //    }
        //    return host;
        //}

        #region 获取当前请求的原始 URL

        /// <summary>
        /// 获取当前请求的原始 URL(URL 中域信息之后的部分,包括查询字符串(如果存在))
        /// </summary>
        /// <returns>原始 URL</returns>
        public static string GetRawUrl()
        {
            return HttpContext.Current.Request.RawUrl;
        }
        #endregion


        /// <summary>
        /// 获取图片、文件的地址
        /// 返回值需要 Server.MapPath(FilePath)
        /// </summary>
        /// <param name="ContentPath"></param>
        /// <param name="ServerMapPath"></param>
        /// <returns></returns>
        public static string GetFliePath(string ContentPath, string ServerMapPath)
        {
            string FilePath = ContentPath;

            FilePath = ContentPath.IndexOf("http://") > -1 || ContentPath.IndexOf("https://") > -1
                       ? ContentPath : (ServerMapPath + FilePath);

            return FilePath;

        }


        #region 获取图片尺寸
        /// <summary>
        /// 获取图片尺寸
        /// 不支持远程图片
        /// 远程图片及图片不存在时 
        /// 返回 Width=0 Height=0
        /// </summary>
        /// <param name="ImgPath"></param>
        /// <param name="Width"></param>
        /// <param name="Height"></param>
        /// <returns></returns>
        public static bool GetImgSize(string ImgPath, out int Width, out int Height)
        {
            Width = 0;
            Height = 0;

            if (ImgPath.IndexOf("http://") > -1)
            {
                // "不支持远程图片大小";
                return false;
            }
            else
            {
                if (System.IO.File.Exists(ImgPath))
                {
                    System.Drawing.Image Img = System.Drawing.Image.FromFile(ImgPath);

                    Width = Img.Width;
                    Height = Img.Height;

                    return true;
                }
            }
            return false;

        }
        #endregion

        #region 获得当前完整Url地址
        /// <summary>
        /// 获得当前完整Url地址
        /// </summary>
        /// <returns>当前完整Url地址</returns>
        public static string GetUrl()
        {
            return HttpContext.Current.Request.Url.ToString();
        }

        #endregion

        #region 获取网站真实路径
        /// <summary>
        /// 获取网站真实路径
        /// </summary>
        /// <returns></returns>
        public static string GetTrueSitePath()
        {
            string path = HttpContext.Current.Request.Path;
            if (path.LastIndexOf("/") != path.IndexOf("/"))
            {
                return path.Substring(path.IndexOf("/"), path.LastIndexOf("/") + 1);
            }
            return "/";
        }
        #endregion

        #region 获取邮件服务器域名
        /// <summary>
        /// 获取邮件服务器域名
        /// </summary>
        /// <param name="strEmail"></param>
        /// <returns></returns>
        public static string GetEmailHostName(string strEmail)
        {
            if (strEmail.IndexOf("@") < 0)
            {
                return "";
            }
            return strEmail.Substring(strEmail.LastIndexOf("@")).ToLower();
        }

        #endregion

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

        #region 获得远程字符串
        ///// <summary>
        ///// 获得远程字符串
        ///// </summary>
        //public static string GetDomainString(string key, string uriPath)
        //{
        //    string result = JosonCache.GetCache(key) as string;
        //    if (result == null)
        //    {
        //        System.Net.WebClient client = new System.Net.WebClient();
        //        try
        //        {
        //            client.Encoding = System.Text.Encoding.UTF8;
        //            result = client.DownloadString(uriPath);
        //        }
        //        catch
        //        {
        //            result = "暂时无法连接!";
        //        }
        //        JosonCache.SetCache(key, result, 60);
        //    }

        //    return result;
        //}
        #endregion



    }
}