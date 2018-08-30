using System;
using System.Collections;
using System.Collections.Generic;

using System.Text;
using System.Web;
using System.Xml;

using System.Net;
using System.IO;
using System.Xml.Serialization;

namespace Net.Common
{


    /// <summary>
    ///  利用WebRequest/WebResponse进行WebService调用的类
    /// </summary>

    //<webServices>
    //  <protocols>
    //    <add name="HttpGet"/>
    //    <add name="HttpPost"/>
    //  </protocols>
    //</webServices>

    public enum ResponseType { Json, XML }

    public partial class ResponseWebServices
    {
        private static Hashtable _xmlNamespaces = new Hashtable();//缓存xmlNamespace，避免重复调用GetNamespace



        /// <summary>
        /// 通用WebService调用(Json数据),
        /// 参数Pars为Hashtable类型的参数名、参数值
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="URL"></param>
        /// <param name="Pars"></param>
        /// <returns></returns>
        public static T QueryJsonWebService<T>(String URL, Hashtable Pars) where T : new()
        {
            T jsonCity;
            WebClient client = new WebClient();//webclient客户端对象

            URL += "?" + ParsToString(Pars);

            client.Encoding = Encoding.UTF8;//编码格式 
            String responseTest = client.DownloadString(URL);//下载xml响应数据  
            jsonCity = (T)Newtonsoft.Json.JsonConvert.DeserializeObject(responseTest, typeof(T));

            return jsonCity;
        }

        /// <summary>
        /// 通用WebService调用(XML数据),
        /// 参数Pars为Hashtable类型的参数名、参数值
        /// </summary>
        /// <param name="URL"></param>
        /// <param name="Pars"></param>
        /// <returns></returns>
        public static String QueryXMLWebService(String URL, Hashtable Pars)
        {
            WebClient client = new WebClient();//webclient客户端对象
            URL += "?" + ParsToString(Pars);
            client.Encoding = Encoding.UTF8;//编码格式 
            string responseTest = client.DownloadString(URL);//下载xml响应数据  

            return responseTest;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="URL"></param>
        /// <param name="Pars"></param>
        /// <param name="RespType"></param>
        /// <returns></returns>
        public static T QueryWebService<T>(String URL, Hashtable Pars, ResponseType RespType = ResponseType.Json) where T : new()
        {
            WebClient client = new WebClient();//webclient客户端对象
            URL += "?" + ParsToString(Pars);
            client.Encoding = Encoding.UTF8;//编码格式 
            String responseTest = client.DownloadString(URL);//下载xml响应数据  

            T jsonCity = RespType == ResponseType.Json
                        ? (T)Newtonsoft.Json.JsonConvert.DeserializeObject(responseTest, typeof(T))
                        : new SerializeHelp().FromXml<T>(responseTest); ;

            return jsonCity;
        }

        /// <summary>
        /// 需要WebService支持Post调用
        /// </summary>
        public static XmlDocument QueryPostWebService(String URL, String MethodName, Hashtable Pars)
        {
            HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(URL + "/" + MethodName);
            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";
            SetWebRequest(request);
            byte[] data = EncodePars(Pars);
            WriteRequestData(request, data);
            return ReadXmlResponse(request.GetResponse());
        }

        /// <summary>
        /// 需要WebService支持Get调用
        /// </summary>
        public static XmlDocument QueryGetWebService(String URL, String MethodName, Hashtable Pars)
        {
            HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(URL + "/" + MethodName + "?" + ParsToString(Pars));
            request.Method = "GET";
            request.ContentType = "application/x-www-form-urlencoded";
            SetWebRequest(request);
            return ReadXmlResponse(request.GetResponse());
        }

        /// <summary>
        /// 需要WebService
        /// QueryPostWebService 和 QueryPostWebService 的聚合方法
        /// </summary>
        /// <param name="URL"></param>
        /// <param name="MethodName">名称方法</param>
        /// <param name="Pars">参数列表</param>
        /// <param name="IsPost"></param>
        /// <param name="IsInnerXml"></param>
        /// <returns>字符串</returns>
        public static String QueryWebService(String URL, String MethodName, Hashtable Pars, bool IsPost = true, bool IsInnerXml = true)
        {
            HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(URL + "/" + MethodName + "?" + ParsToString(Pars));
            request.Method = IsPost ? "POST" : "GET";
            request.ContentType = "application/x-www-form-urlencoded";
            SetWebRequest(request);
            XmlDocument XMLDoc = ReadXmlResponse(request.GetResponse());

            return IsInnerXml ? XMLDoc.InnerXml : XMLDoc.InnerText;
        }

        /// <summary>
        /// 通用WebService调用(Soap)
        /// 参数Pars为Hashtable类型的参数名、参数值
        /// </summary>
        public static XmlDocument QuerySoapWebService(String URL, String MethodName, Hashtable Pars)
        {
            if (_xmlNamespaces.ContainsKey(URL))
            {
                return QuerySoapWebService(URL, MethodName, Pars, _xmlNamespaces[URL].ToString());
            }
            else
            {
                return QuerySoapWebService(URL, MethodName, Pars, GetNamespace(URL));
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="URL"></param>
        /// <param name="MethodName"></param>
        /// <param name="Pars"></param>
        /// <param name="XmlNs"></param>
        /// <returns></returns>
        private static XmlDocument QuerySoapWebService(String URL, String MethodName, Hashtable Pars, string XmlNs)
        {
            _xmlNamespaces[URL] = XmlNs;//加入缓存，提高效率
            HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(URL);
            request.Method = "POST";
            request.ContentType = "text/xml; charset=utf-8";
            request.Headers.Add("SOAPAction", "\"" + XmlNs + (XmlNs.EndsWith("/") ? "" : "/") + MethodName + "\"");
            SetWebRequest(request);
            byte[] data = EncodeParsToSoap(Pars, XmlNs, MethodName);
            WriteRequestData(request, data);
            XmlDocument doc = new XmlDocument(), doc2 = new XmlDocument();
            doc = ReadXmlResponse(request.GetResponse());
            XmlNamespaceManager mgr = new XmlNamespaceManager(doc.NameTable);
            mgr.AddNamespace("soap", "http://schemas.xmlsoap.org/soap/envelope/");
            String RetXml = doc.SelectSingleNode("//soap:Body/*/*", mgr).InnerXml;
            doc2.LoadXml("<root>" + RetXml + "</root>");
            AddDelaration(doc2);
            return doc2;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="URL"></param>
        /// <returns></returns>
        private static string GetNamespace(String URL)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(URL + "?WSDL");
            SetWebRequest(request);
            WebResponse response = request.GetResponse();
            StreamReader sr = new StreamReader(response.GetResponseStream(), Encoding.UTF8);
            XmlDocument doc = new XmlDocument();
            doc.LoadXml(sr.ReadToEnd());
            sr.Close();
            return doc.SelectSingleNode("//@targetNamespace").Value;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="Pars"></param>
        /// <param name="XmlNs"></param>
        /// <param name="MethodName"></param>
        /// <returns></returns>
        private static byte[] EncodeParsToSoap(Hashtable Pars, String XmlNs, String MethodName)
        {
            XmlDocument doc = new XmlDocument();
            doc.LoadXml("<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\"></soap:Envelope>");
            AddDelaration(doc);
            XmlElement soapBody = doc.CreateElement("soap", "Body", "http://schemas.xmlsoap.org/soap/envelope/");
            XmlElement soapMethod = doc.CreateElement(MethodName);
            soapMethod.SetAttribute("xmlns", XmlNs);
            foreach (string k in Pars.Keys)
            {
                XmlElement soapPar = doc.CreateElement(k);
                soapPar.InnerXml = ObjectToSoapXml(Pars[k]);
                soapMethod.AppendChild(soapPar);
            }
            soapBody.AppendChild(soapMethod);
            doc.DocumentElement.AppendChild(soapBody);
            return Encoding.UTF8.GetBytes(doc.OuterXml);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="o"></param>
        /// <returns></returns>

        private static string ObjectToSoapXml(object o)
        {
            XmlSerializer mySerializer = new XmlSerializer(o.GetType());
            MemoryStream ms = new MemoryStream();
            mySerializer.Serialize(ms, o);
            XmlDocument doc = new XmlDocument();
            doc.LoadXml(Encoding.UTF8.GetString(ms.ToArray()));
            if (doc.DocumentElement != null)
            {
                return doc.DocumentElement.InnerXml;
            }
            else
            {
                return o.ToString();
            }
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        private static void SetWebRequest(HttpWebRequest request)
        {
            request.Credentials = CredentialCache.DefaultCredentials;
            request.Timeout = 10000;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <param name="data"></param>
        private static void WriteRequestData(HttpWebRequest request, byte[] data)
        {
            request.ContentLength = data.Length;
            Stream writer = request.GetRequestStream();
            writer.Write(data, 0, data.Length);
            writer.Close();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="Pars"></param>
        /// <returns></returns>
        private static byte[] EncodePars(Hashtable Pars)
        {
            return Encoding.UTF8.GetBytes(ParsToString(Pars));
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="Pars"></param>
        /// <returns></returns>
        private static String ParsToString(Hashtable Pars)
        {
            StringBuilder sb = new StringBuilder();
            foreach (string k in Pars.Keys)
            {
                if (sb.Length > 0)
                {
                    sb.Append("&");
                }
                sb.Append(HttpUtility.UrlEncode(k) + "=" + HttpUtility.UrlEncode(Pars[k].ToString()));
            }
            return sb.ToString();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="response"></param>
        /// <returns></returns>
        private static XmlDocument ReadXmlResponse(WebResponse response)
        {
            StreamReader sr = new StreamReader(response.GetResponseStream(), Encoding.UTF8);
            String retXml = sr.ReadToEnd();
            sr.Close();
            XmlDocument doc = new XmlDocument();
            doc.LoadXml(retXml);
            return doc;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="doc"></param>
        private static void AddDelaration(XmlDocument doc)
        {
            XmlDeclaration decl = doc.CreateXmlDeclaration("1.0", "utf-8", null);
            doc.InsertBefore(decl, doc.DocumentElement);


        }


        // 常用WebService汇总

        //http://www.cnblogs.com/tanliang/archive/2010/05/25/1743387.html#2203649

        //调用示例：
        //Hashtable ht = new Hashtable();
        //ht.Add("str", "test");
        //ht.Add("b", "true");
        //XmlDocument xx = ResponseWebServices.QuerySoapWebService("http://localhost:81/service.asmx", "HelloWorld", ht);
        //MessageBox.Show(xx.OuterXml);




        #region  调用示例

        //Hashtable Ht = new Hashtable();

        //Ht.Add("theZipCode","723000");
        //Ht.Add("userID", "");

        //XmlDocument result = ResponseWebServices.QueryGetWebService("http://www.webxml.com.cn/WebServices/ChinaZipSearchWebService.asmx", "getAddressByZipCode", Ht);


        #region Net.Common.DataSetXML.XmlDocumentToDataSet
        //XmlNodeReader reader = new XmlNodeReader(result);
        //System.Data.DataSet Ds = new System.Data.DataSet();
        //Ds.ReadXml(reader);
        //reader.Close();

        //// 等于上边
        //Ds = Net.Common.DataSetXML.XmlDocumentToDataSet(result);
        #endregion

        //Net.Common.DataSetXML.XmlDocumentToDataSet(result);
        //DDL.DataSource = Net.Common.DataSetXML.XmlDocumentToDataSet(result);

        //DDL.DataValueField = "CITY";
        //DDL.DataTextField = "ADDRESS";

        //DDL.DataBind();

        #endregion


    }
}
