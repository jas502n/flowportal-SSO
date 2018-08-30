using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;


using System.Data.Common;
using System.Collections;
using System.Reflection;
using System.IO;
using Newtonsoft.Json;

namespace Net.Common
{
    public static partial class JosonSerializer
    {
        //C# 任意类型数据转JSON格式 

        #region Json 格式示例

        /*
         * 
            {"total":28, "rows":[
                        {"productid":"FI-SW-01","productname":"Koi","unitcost":10.00,"status":"P","listprice":36.50,"attr1":"Large","itemid":"EST-1"},
                        {"productid":"K9-DL-01","productname":"Dalmation","unitcost":12.00,"status":"P","listprice":18.50,"attr1":"Spotted Adult Female","itemid":"EST-10"},
                        {"productid":"RP-SN-01","productname":"Rattlesnake","unitcost":12.00,"status":"P","listprice":38.50,"attr1":"Venomless","itemid":"EST-11"},
                        {"productid":"RP-SN-01","productname":"Rattlesnake","unitcost":12.00,"status":"P","listprice":26.50,"attr1":"Rattleless","itemid":"EST-12"},
                        {"productid":"RP-LI-02","productname":"Iguana","unitcost":12.00,"status":"P","listprice":35.50,"attr1":"Green Adult","itemid":"EST-13"},
                        {"productid":"FL-DSH-01","productname":"Manx","unitcost":12.00,"status":"P","listprice":158.50,"attr1":"Tailless","itemid":"EST-14"},
                        {"productid":"FL-DSH-01","productname":"Manx","unitcost":12.00,"status":"P","listprice":83.50,"attr1":"With tail","itemid":"EST-15"},
                        {"productid":"FL-DLH-02","productname":"Persian","unitcost":12.00,"status":"P","listprice":23.50,"attr1":"Adult Female","itemid":"EST-16"},
                        {"productid":"FL-DLH-02","productname":"Persian","unitcost":12.00,"status":"P","listprice":89.50,"attr1":"Adult Male","itemid":"EST-17"},
                        {"productid":"AV-CB-01","productname":"Amazon Parrot","unitcost":92.00,"status":"P","listprice":63.50,"attr1":"Adult Male","itemid":"EST-18"}
                       ]
            }
         * 
        */

        #region JsonModel

        /*


                    {"total":"28","rows":[  {"itemid":"EST-1","productid":"FI-SW-01","listprice":"16.50","unitcost":"10.00","status":"P","attr1":"Large"},
                                    {"itemid":"EST-10","productid":"K9-DL-01","listprice":"18.50","unitcost":"12.00","status":"P","attr1":"Spotted Adult Female"},
                                    {"itemid":"EST-11","productid":"RP-SN-01","listprice":"18.50","unitcost":"12.00","status":"P","attr1":"Venomless"},
                                    {"itemid":"EST-12","productid":"RP-SN-01","listprice":"18.50","unitcost":"12.00","status":"P","attr1":"Rattleless"},
                                    {"itemid":"EST-13","productid":"RP-LI-02","listprice":"18.50","unitcost":"12.00","status":"P","attr1":"Green Adult"},
                                    {"itemid":"EST-14","productid":"FL-DSH-01","listprice":"58.50","unitcost":"12.00","status":"P","attr1":"Tailless"},
                                    {"itemid":"EST-15","productid":"FL-DSH-01","listprice":"23.50","unitcost":"12.00","status":"P","attr1":"With tail"},
                                    {"itemid":"EST-16","productid":"FL-DLH-02","listprice":"93.50","unitcost":"12.00","status":"P","attr1":"Adult Female"},
                                    {"itemid":"EST-17","productid":"FL-DLH-02","listprice":"93.50","unitcost":"12.00","status":"P","attr1":"Adult Male"},
                                    {"itemid":"EST-18","productid":"AV-CB-01","listprice":"193.50","unitcost":"92.00","status":"P","attr1":"Adult Male"}
                                ]
            } 
    

      */
        #endregion

        #endregion

        /// <summary>
        /// 序列化数据为Json数据格式.
        /// </summary>
        /// <param name="value">被序列化的对象</param>
        /// <returns></returns>
        public static string SerializerByNewtonsoft(this object value)
        {
            Type type = value.GetType();
            Newtonsoft.Json.JsonSerializer json = new Newtonsoft.Json.JsonSerializer();
            json.NullValueHandling = NullValueHandling.Ignore;
            json.ObjectCreationHandling = Newtonsoft.Json.ObjectCreationHandling.Replace;
            json.MissingMemberHandling = Newtonsoft.Json.MissingMemberHandling.Ignore;
            json.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;
            StringWriter sw = new StringWriter();
            Newtonsoft.Json.JsonTextWriter writer = new JsonTextWriter(sw);
            writer.Formatting = Formatting.None;
            writer.QuoteChar = '\"';
            json.Serialize(writer, value);
            string output = sw.ToString();
            writer.Close();
            sw.Close();
            return output;
        }

        /// <summary>
        /// 将Json数据转为对象
        /// </summary>
        /// <typeparam name="T">目标对象</typeparam>
        /// <param name="jsonText">json数据字符串</param>
        /// <returns></returns>
        public static T DeserializeByNewtonsoft<T>(this string jsonText)
        {
            Newtonsoft.Json.JsonSerializer json = new Newtonsoft.Json.JsonSerializer();
            json.NullValueHandling = Newtonsoft.Json.NullValueHandling.Ignore;
            json.ObjectCreationHandling = Newtonsoft.Json.ObjectCreationHandling.Replace;
            json.MissingMemberHandling = Newtonsoft.Json.MissingMemberHandling.Ignore;
            json.ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore;
            System.IO.StringReader sr = new StringReader(jsonText);
            Newtonsoft.Json.JsonTextReader reader = new JsonTextReader(sr);
            T result = (T)json.Deserialize(reader, typeof(T));
            reader.Close();
            return result;
        }


        /*
         * 
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string[] name = { "zhangsan", "lisi", "wangwu" };
            System.Collections.Generic.IList<Model> ilist = new System.Collections.Generic.List<Model>();
            for (int i = 0; i < name.Length; i++)
            {
                Model model = new Model();
                model.ID = i + 1;
                model.Name = name[i];
                ilist.Add(model);
            }
            string json = Newtonsoft.Json.JavaScriptConvert.SerializeObject(ilist);
            context.Response.Write(json);
        }
         * 
         * 
        public class Model
        {
            private int iD;

            public int ID
            {
                get { return iD; }
                set { iD = value; }
            }
            private string name;

            public string Name
            {
                get { return name; }
                set { name = value; }
            }
        }

         * */
 
 
    }
}
