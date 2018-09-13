using System;
 
using System.IO;
using System.Text;
using System.Xml.Serialization;
using System.Xml;
using System.Runtime.Serialization.Json;



namespace Joson.SSO.Passport
{
    // <summary>
    /// 功能：序列化反序列化XML文件
    /// </summary>
    public class JsonAndXmlSerialization
    {
        #region 外部调用
        /// <summary>
        /// 将对象根据格式（XML/JSON）序列化成字符串结果
        /// </summary>
        /// <param name="o">目标对象</param>
        /// <param name="format">输出格式</param>
        /// <returns></returns>
        public static string Serialize(object o, string format = "JSON")
        {
            if (format.ToLower() == "xml")
            {
                return JsonAndXmlSerialization.XmlSerialize(o);
            }
            else
            {
                return JsonAndXmlSerialization.JsonSerialize(o);
            }
        }

        /// <summary>
        /// 将字符串根据格式（XML/JSON）反序列化成指定类型的对象
        /// </summary>
        /// <typeparam name="T">指定类型</typeparam>
        /// <param name="s">目标字符串</param>
        /// <param name="format">输入格式</param>
        /// <returns></returns>
        public static T Deserialize<T>(string s, string format = "JSON")
        {
            if (format.ToLower() == "xml")
            {
                return JsonAndXmlSerialization.XmlDeserialize<T>(s);
            }
            else
            {
                return JsonAndXmlSerialization.JsonDeserialize<T>(s);
            }
        }
        /// <summary>
        /// 对象序列化成文件并保存
        /// </summary>
        /// <typeparam name="T">对象类型</typeparam>
        /// <param name="t">对象实体</param>
        /// <param name="path">文件路径</param>
        /// <param name="format">格式：json或 xml</param>
        /// <returns></returns>
        public static bool SerializableFile<T>(object t, string path, string format = "JSON")
        {
            if (format.ToLower() == "xml")
            {
                return JsonAndXmlSerialization.SerializableXML<T>(t, path);
            }
            else
            {
                return JsonAndXmlSerialization.SerializableJson<T>(t, path);
            }
        }
        /// <summary>
        /// 将文件反序列化成对象
        /// </summary>
        /// <typeparam name="T">对象类型</typeparam>
        /// <param name="path">文件路径</param>
        /// <param name="format">格式： json 或 xml</param>
        /// <returns></returns>
        public static T DeserializeFile<T>(string path, string format = "JSON")
        {
            if (format.ToLower() == "xml")
            {
                return JsonAndXmlSerialization.DeSerializableXML<T>(path);
            }
            else
            {
                return JsonAndXmlSerialization.DeSerializableJson<T>(path);
            }
        }
        #endregion

        #region 对象的序列化与反序列化
        /// <summary>
        /// 将object对象序列化成XML
        /// </summary>
        /// <param name="o"></param>
        /// <returns></returns>
        private static string XmlSerialize(object o)
        {
            XmlSerializer ser = new XmlSerializer(o.GetType());
            System.IO.MemoryStream mem = new MemoryStream();
            XmlTextWriter writer = new XmlTextWriter(mem, Encoding.UTF8);
            XmlSerializerNamespaces ns = new XmlSerializerNamespaces();
            ns.Add("", "");
            ser.Serialize(writer, o, ns);
            writer.Close();
            return Encoding.UTF8.GetString(mem.ToArray());
        }

        /// <summary>
        /// 字符串反序列化成对象
        /// </summary>
        /// <typeparam name="T">对象类型</typeparam>
        /// <param name="s">XML值</param>
        /// <returns></returns>
        private static T XmlDeserialize<T>(string s)
        {
            XmlDocument xdoc = new XmlDocument();
            try
            {
                xdoc.LoadXml(s);
                XmlNodeReader reader = new XmlNodeReader(xdoc.DocumentElement);
                XmlSerializer ser = new XmlSerializer(typeof(T));
                object obj = ser.Deserialize(reader);
                return (T)obj;
            }
            catch
            {
                return default(T);
            }
        }
        /// <summary>
        /// 对象序列化成Json字符串
        /// </summary>
        /// <param name="o"></param>
        /// <returns></returns>
        private static string JsonSerialize(object o)
        {
            using (var ms = new MemoryStream())
            {
                new DataContractJsonSerializer(o.GetType()).WriteObject(ms, o);
                return Encoding.UTF8.GetString(ms.ToArray());
            }
        }
        /// <summary>
        /// Json字符串反序列化成对象
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="s"></param>
        /// <returns></returns>
        private static T JsonDeserialize<T>(string s)
        {
            using (var ms = new MemoryStream(Encoding.UTF8.GetBytes(s)))
            {
                return (T)new DataContractJsonSerializer(typeof(T)).ReadObject(ms);
            }
        }
        #endregion
        #region 将对象保存成文件
        /// <summary>
        /// 将对象保存为json文件
        /// </summary>
        /// <typeparam name="T">对象类型</typeparam>
        /// <param name="t">对象</param>
        /// <param name="path">保存路径</param>
        /// <returns></returns>
        private static bool SerializableJson<T>(object t, string path)
        {
            bool bl = false;
            try
            {
                string strjson = JsonSerialize(t);
                System.IO.StreamWriter sw = System.IO.File.CreateText(path);
                sw.WriteLine(strjson);
                sw.Close();
            }
            catch
            {
                return bl;
            }
            return true;
        }

        /// <summary>
        /// 将对象序列化成XML并保存到文件
        /// </summary>
        /// <returns></returns>
        private static bool SerializableXML<T>(object t, string path)
        {
            bool bl = false;
            FileStream fileStream = null;
            try
            {
                if (t != null)
                {
                    //创建xml格式器
                    XmlSerializer xmls = new XmlSerializer(typeof(T));
                    //创建文件流
                    fileStream = new FileStream(path, FileMode.Create);
                    //将对象序列化到流
                    xmls.Serialize(fileStream, t);
                    bl = true;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                if (fileStream != null)
                {
                    fileStream.Close();
                }

            }

            return bl;
        }

        #endregion

        #region 将文件反序列化成对象
        /// <summary>
        /// 将文件反序列化json
        /// </summary>
        /// <typeparam name="T">类型</typeparam>
        /// <param name="path">json所存放的路径</param>
        /// <returns>实体</returns>
        private static T DeSerializableJson<T>(string path)
        {
            T t = default(T);
            try
            {
                FileInfo fi = new FileInfo(path);

                if (fi.Exists)
                {
                    StreamReader sr = new StreamReader(path, Encoding.UTF8);
                    String line;
                    StringBuilder strcontent = new StringBuilder();
                    while ((line = sr.ReadLine()) != null)
                    {
                        strcontent.Append(line.ToString());
                    }
                    t = JsonAndXmlSerialization.JsonDeserialize<T>(strcontent.ToString());
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return t;
        }

        /// <summary>
        /// 将文件反序列化XML
        /// </summary>
        /// <typeparam name="T">类型</typeparam>
        /// <param name="path">XMl所存放的路径</param>
        /// <returns>实体</returns>
        private static T DeSerializableXML<T>(string path)
        {
            T t = default(T);
            FileStream fileStream = null;
            try
            {
                XmlSerializer xmls = new XmlSerializer(typeof(T));
                FileInfo fi = new FileInfo(path);

                if (fi.Exists)
                {
                    fileStream = new FileStream(path, FileMode.Open, FileAccess.Read, FileShare.Read);
                    t = (T)xmls.Deserialize(fileStream);
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                if (fileStream != null)
                {
                    fileStream.Close();
                }
            }
            return t;
        }

        #endregion


    }
}