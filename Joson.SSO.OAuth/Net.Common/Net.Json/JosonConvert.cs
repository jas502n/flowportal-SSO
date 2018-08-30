
using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Reflection;
using System.Collections;
using System.Data.Common;
//using System.Web.Script.Serialization;

namespace Net.Common
{
    //JSON转换类
    public static partial class JosonConvert
    {
        #region 私有方法

        #region 过滤特殊字符

        /// <summary>
        /// 过滤特殊字符
        /// </summary>
        private static string String2Json(String s)
        {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < s.Length; i++)
            {
                char c = s.ToCharArray()[i];
                switch (c)
                {
                    case '\"':
                        sb.Append("\\\""); break;
                    case '\\':
                        sb.Append("\\\\"); break;
                    //case '/':
                    //    sb.Append("\\/"); break;
                    //HTML </*> 时出错所以屏蔽
                    case '\b':
                        sb.Append("\\b"); break;
                    case '\f':
                        sb.Append("\\f"); break;
                    case '\n':
                        sb.Append("\\n"); break;
                    case '\r':
                        sb.Append("\\r"); break;
                    case '\t':
                        sb.Append("\\t"); break;
                    default:
                        sb.Append(c); break;
                }
            }
            return sb.ToString();
        }

        #endregion

        /// <summary>
        /// 格式化字符型、日期型、布尔型
        /// </summary>
        private static string StringFormat(string str, Type type)
        {
            if (type == typeof(string))
            {
                str = String2Json(str);
                str = "\"" + str + "\"";
            }
            else if (type == typeof(DateTime))
            {
                str = "\"" + str + "\"";
            }
            else if (type == typeof(bool))
            {
                str = str.ToLower();
            }
            else if (type != typeof(string) && string.IsNullOrEmpty(str))
            {
                str = "\"" + str + "\"";
            }
            return str;
        }

        #endregion

        #region List转换成Json
        /// <summary>
        /// List转换成Json
        /// </summary>
        public static string LstToJson<T>(IList<T> list)
        {
            string jsonName = string.Empty;

            if (list.Count != 0)
                jsonName = list[0].GetType().Name;
            else
                jsonName = list.GetType().FullName;

            return LstToJson<T>(list, jsonName);
        }

        /// <summary>
        /// List转换成Json 
        /// </summary>
        public static string LstToJson<T>(IList<T> list, string jsonName)
        {
            StringBuilder Json = new StringBuilder();

            if (string.IsNullOrEmpty(jsonName))
            {
                if (list.Count > 1)
                    jsonName = list[0].GetType().Name;
                else
                    jsonName = list.GetType().FullName;
            }


            Json.Append("{\"" + jsonName + "\":[");
            if (list.Count > 0)
            {
                for (int i = 0; i < list.Count; i++)
                {
                    T obj = Activator.CreateInstance<T>();
                    PropertyInfo[] pi = obj.GetType().GetProperties();
                    Json.Append("{");
                    for (int j = 0; j < pi.Length; j++)
                    {
                        Type type = pi[j].PropertyType;
                        String strValue = string.Empty;

                        #region 查看其是否Attributes

                        bool IsIgnoreAttribute = false;

                        #region 取出所以属性时 需要遍历
                        /*
                        // 取出所以属性 
                        object[] objAttribute = pi[j].GetCustomAttributes(typeof(Attribute), true);

                        for (int attrU = 0; attrU < objAttribute.Length; attrU++)
                        {
                            ScriptIgnoreAttribute JosonAttribute = objAttribute[attrU] as ScriptIgnoreAttribute;

                            if (JosonAttribute != null)
                            {
                                IsIgnoreAttribute = JosonValidate.NotIsNullOrEmpty(JosonAttribute.GetType().Name.ToStrings());
                            }

                        }
                        */
                        #endregion

                        object[] objAttributes = pi[j].GetCustomAttributes(typeof(ScriptIgnoreAttribute), true);

                        if (objAttributes.Length > 0)
                        {
                            ScriptIgnoreAttribute JosonAttribute = objAttributes[0] as ScriptIgnoreAttribute;

                            if (JosonAttribute != null)
                            {
                                IsIgnoreAttribute = JosonValidate.NotIsNullOrEmpty(JosonAttribute.GetType().Name.ToStrings());
                            }

                        }


                        #endregion

                        if (!IsIgnoreAttribute)
                        {
                            if (type.IsGenericType)
                            {
                                #region 泛型Nullable<>
                                //泛型Nullable<>
                                Type genericTypeDefinition = pi[j].PropertyType.GetGenericTypeDefinition();
                                if (genericTypeDefinition == typeof(Nullable<>))
                                {
                                    //String value = Convert.ToString(pi[j].GetValue(list[i], null));
                                    //pi[j].SetValue(Lists, string.IsNullOrEmpty(value) ? null : Convert.ChangeType(value, Nullable.GetUnderlyingType(type)), null);

                                    object o = pi[j].GetValue(list[i], null);
                                    type = Nullable.GetUnderlyingType(type);
                                    strValue = Convert.ToString(o);
                                }
                                #endregion
                            }
                            else
                            {
                                type = pi[j].GetValue(list[i], null).ToStrings().GetType();
                                strValue = pi[j].GetValue(list[i], null).ToStrings();
                            }

                            Json.Append("\"" + pi[j].Name.ToString() + "\":" + StringFormat(strValue, type));

                            if (j < pi.Length - 1)
                            {
                                Json.Append(",");
                            }
                        }
                    }

                    Json.Append("}");

                    if (i < list.Count - 1)
                    {
                        Json.Append(",");
                    }

                }

            }

            Json.Append("]}");
            return Json.ToString();
        }
        #endregion

        #region 对象转换为Json
        ///// <summary> 
        ///// 对象转换为Json 
        ///// </summary> 
        ///// <param name="jsonObject">对象</param> 
        ///// <returns>Json字符串</returns> 
        //public static string ToJson(object jsonObject)
        //{
        //    string jsonString = "{";
        //    PropertyInfo[] propertyInfo = jsonObject.GetType().GetProperties();
        //    for (int i = 0; i < propertyInfo.Length; i++)
        //    {
        //        object objectValue = propertyInfo[i].GetGetMethod().Invoke(jsonObject, null);
        //        string value = string.Empty;
        //        if (objectValue is DateTime || objectValue is Guid || objectValue is TimeSpan)
        //        {
        //            value = "'" + objectValue.ToString() + "'";
        //        }
        //        else if (objectValue is string)
        //        {
        //            value = "'" + ToJson(objectValue.ToString()) + "'";
        //        }
        //        else if (objectValue is IEnumerable)
        //        {
        //            value = ToJson((IEnumerable)objectValue);
        //        }
        //        else
        //        {
        //            value = ToJson(objectValue.ToString());
        //        }
        //        jsonString += "\"" + ToJson(propertyInfo[i].Name) + "\":" + value + ",";
        //    }
        //    jsonString.Remove(jsonString.Length - 1, jsonString.Length);
        //    return jsonString + "}";
        //}

        #endregion

        #region 对象转换为Json字符串

        /// <summary>
        /// JavaScriptSerializer 序列化
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="item"></param>
        /// <param name="IsJavaScriptSerializer">默认true，false：DataContractJsonSerializer</param>
        /// <returns></returns>
        public static string ToJson<T>(this T item, bool IsJavaScriptSerializer = true) where T : new()
        {
            Type objType = item.GetType();

            if (objType.Name == "Boolean" || objType.Name=="Int32")

                return item.ToJsons();

            else
                return JosonSerializer.Serializer<T>(item, IsJavaScriptSerializer);

        }

        #region 早期方法仅仅用于布尔转json 
        /// <summary>    
        /// 对象转换为Json字符串   
        /// 早期方法 无法使用标记进行控制序列成员属性
        /// (仅仅用于Int 布尔转json) 
        /// </summary>    
        /// <param name="jsonObject">对象</param>    
        /// <returns>Json字符串</returns>    
        static string ToJsons(this object jsonObject)
        {
            string jsonString = "{";

            PropertyInfo[] propertyInfo = jsonObject.GetType().GetProperties();

            if (propertyInfo.Length > 0)
            {
                for (int i = 0; i < propertyInfo.Length; i++)
                {
                    object objectValue = propertyInfo[i].GetGetMethod().Invoke(jsonObject, null);


                    string value = string.Empty;
                    if (objectValue is DateTime || objectValue is Guid || objectValue is TimeSpan)
                    {
                        value = "'" + objectValue.ToString() + "'";
                    }
                    else if (objectValue is string)
                    {
                        value = "'" + objectValue.ToString() + "'";
                    }
                    else if (objectValue is IEnumerable)
                    {
                        value = ToJson((IEnumerable)objectValue);
                    }
                    else if (objectValue is Nullable || objectValue == null)
                    {
                        value = "''";
                    }

                    else
                    {
                        value = objectValue.ToString();
                    }
                    jsonString += "\"" + propertyInfo[i].Name + "\":" + value + ",";


                }
                jsonString = jsonString.Remove(jsonString.Length - 1, 1);

            }
            else
            {
                string JosonResult = jsonObject.ToStrings().NotIsNullOrEmpty() ? jsonObject.ToStrings().ToLower() : string.Empty;

                jsonString += "\"Result\":\"" + JosonResult + "\"";
            }


            return jsonString + "}";

        } 
        #endregion

        #endregion
 
        #region 对象集合转换Json
        /// <summary> 
        /// 字符串转换Json 
        /// </summary> 
        /// <param name="array">字符串</param> 
        /// <returns>Json字符串</returns> 
        public static string ToJson(this String String)
        {
            string jsonString = "{\"Result\":\"";

            jsonString += String;

            return jsonString + "\"}";
        }

        #endregion
 
        #region 对象集合转换Json
        /// <summary> 
        /// IEnumerable对象转换Json 
        /// </summary> 
        /// <param name="array">集合对象</param> 
        /// <returns>Json字符串</returns> 
        public static string ToJson(this IEnumerable array)
        {
            string jsonString = "[";

            foreach (object item in array)
            {
                jsonString += ToJson(item) + ",";
            }

            //jsonString.Remove(jsonString.Length - 1, jsonString.Length);
            jsonString.Remove(jsonString.Length - 1, 1);

            return jsonString + "]";
        }
        #endregion

        #region 普通集合转换Json

        /// <summary>    
        /// 普通集合转换ArrayString    
        /// </summary>    
        /// <param name="array">IEnumerable对象</param>    
        /// <returns>Json字符串</returns>    
        public static string ToArrayString(this IEnumerable array)
        {
            string jsonString = "[";

            foreach (object item in array)
            {
                jsonString += item.ToStrings() + ",";
            }

            return jsonString.Remove(jsonString.Length - 1, 1) + "]";
        }

        #endregion

    }
}