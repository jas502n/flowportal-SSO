using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;


using System.Data.Common;
using System.Collections;
using System.Reflection;
using System.IO;
using System.Text.RegularExpressions;

//using System.Web.Script.Serialization;

namespace Net.Common
{
    public static partial class JosonConvert
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

        #region 获取实体Attributes
        /// <summary>
        ///  获取实体Attributes
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static IList GetAttribute<T>()
        {
            List<string> AttributeLst = new List<string>();

            #region 查看其是否Attributes

            Type mType = typeof(T);
            PropertyInfo[] mTypePro = mType.GetProperties();

            foreach (PropertyInfo PropertyInfos in mTypePro)
            {
                //查看其是否Attributes
                object[] objAttributes = PropertyInfos.GetCustomAttributes(typeof(Attribute), true);
                if (objAttributes.Length > 0)
                {
                    string Joson = string.Empty;
                    Attribute JosonAttribute = objAttributes[0] as Attribute;

                    if (JosonAttribute != null)
                    {
                        Joson = JosonAttribute.GetType().Name.ToStrings();
                        AttributeLst.Add(Joson);
                    }
                }
            }

            return AttributeLst;

            #endregion
        }

        #endregion

        #region List转成json

        /// <summary>   
        /// List转成json    
        /// </summary>   
        /// <typeparam name="T"></typeparam>   
        /// <param name="jsonName"></param>   
        /// <param name="list"></param>   
        /// <returns></returns>   
        public static string ToJson<T>(this IList<T> list, string jsonName)
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

                        // 忽略有IgnoreAttribute 的属性
                        if (!IsIgnoreAttribute)
                        {

                            #region 反射获取属性及值

                            if (type.IsGenericType)
                            {
                                //是否泛型

                                #region 泛型Nullable<>

                                Type genericTypeDefinition = pi[j].PropertyType.GetGenericTypeDefinition();
                                if (genericTypeDefinition == typeof(Nullable<>))
                                {
                                    //String value = Convert.ToString(pi[j].GetValue(list[i], null));
                                    //pi[j].SetValue(List[0], string.IsNullOrEmpty(value) ? null : Convert.ChangeType(value, Nullable.GetUnderlyingType(type)), null);

                                    object o = pi[j].GetValue(list[i], null);
                                    type = Nullable.GetUnderlyingType(type);
                                    strValue = Convert.ToString(o);

                                }

                                #endregion
                            }
                            else
                            {

                                //String value = Convert.ToString(pi[j].GetValue(list[i], null));
                                //pi[j].SetValue(Lists, string.IsNullOrEmpty(value) ? null : Convert.ChangeType(value, Nullable.GetUnderlyingType(type)), null);

                                type = pi[j].GetValue(list[i], null).ToStrings().GetType();
                                strValue = pi[j].GetValue(list[i], null).ToStrings();
                            }

                            #endregion

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

        #region List转成json

        /// <summary>   
        /// List转成json    
        /// </summary>   
        /// <typeparam name="T"></typeparam>   
        /// <param name="list"></param>   
        /// <returns></returns>   
        public static string ToJson<T>(this IList<T> list)
        {
            string jsonName = string.Empty;

            if (list.Count != 0)
                jsonName = list[0].GetType().Name;
            else
                jsonName = list.GetType().FullName;

            return ToJson<T>(list, jsonName);
        }


        #endregion

        #region DataSet转换为Json

        /// <summary>    
        /// DataSet转换为Json
        /// </summary>    
        /// <param name="dataSet">DataSet对象</param>
        /// <returns>Json字符串</returns>    
        public static string ToJson(this DataSet dataSet)
        {
            string jsonString = "{";
            foreach (DataTable table in dataSet.Tables)
            {
                jsonString += "\"" + table.TableName + "\":" + ToJson(table) + ",";
            }
            jsonString = jsonString.TrimEnd(',');
            return jsonString + "}";
        }

        #endregion

        #region DataSet转换成Json格式
        /// <summary>     
        /// DataSet转换成Json格式     
        /// </summary>     
        /// <param name="ds">DataSet</param>     
        /// <returns></returns>     
        public static string ToJSON(this DataSet ds)
        {
            StringBuilder json = new StringBuilder();

            foreach (DataTable dt in ds.Tables)
            {
                json.Append("{\"");
                json.Append(dt.TableName);
                json.Append("\":");
                json.Append(ToJSON(dt));
                json.Append("}");
            }
            return json.ToString();
        }

        # endregion

        #region DataSet数据转换成json的格式
        ///<summary>
        /// DataSet数据转换成json的格式
        /// </summary>
        /// <param name="ds">dataset数据集</param>
        /// <returns>json格式的字符串</returns>
        public static string GetJsons(this DataSet ds)
        {
            if (ds == null || ds.Tables.Count <= 0 || ds.Tables[0].Rows.Count <= 0)
            {
                //如果查询到的数据为空则返回标记ok:false
                return "{\"Result\":false}";
            }
            StringBuilder sb = new StringBuilder();
            sb.Append("{\"Result\":true,");
            foreach (DataTable dt in ds.Tables)
            {
                sb.Append(string.Format("\"{0}\":[", dt.TableName));

                foreach (DataRow dr in dt.Rows)
                {
                    sb.Append("{");
                    for (int i = 0; i < dr.Table.Columns.Count; i++)
                    {
                        sb.AppendFormat("\"{0}\":\"{1}\",", dr.Table.Columns[i].ColumnName.Replace("\"", "\\\"").Replace("\'", "\\\'"), JosonConvert.ToStrings(dr[i]).Replace("\"", "\\\"").Replace("\'", "\\\'")).Replace(Convert.ToString((char)13), "\\r\\n").Replace(Convert.ToString((char)10), "\\r\\n");
                    }

                    sb.Remove(sb.ToString().LastIndexOf(','), 1);
                    sb.Append("},");
                }

                sb.Remove(sb.ToString().LastIndexOf(','), 1);
                sb.Append("],");
            }
            sb.Remove(sb.ToString().LastIndexOf(','), 1);
            sb.Append("}");
            return sb.ToString();
        }

        #endregion


        #region DataSet转换为Json

        /// <summary>    
        /// DataSet转换为Json
        /// </summary>    
        /// <param name="dataSet">DataSet对象</param> 
        public static string GetJson(this DataSet dataSet)
        {
            string jsonString = "{";
            foreach (DataTable table in dataSet.Tables)
            {
                jsonString += "\"" + table.TableName + "\":" + GetJson(table) + ",";
            }
            jsonString = jsonString.TrimEnd(',');
            return jsonString + "}";
        }

        #endregion


        #region DataTable转换为Json
        /// <summary>    
        /// Datatable转换为Json
        /// 不可指定Json数据信息名称
        /// </summary>    
        /// <param name="table">Datatable对象</param>    
        /// <returns>Json字符串</returns>    
        public static string ToJson(this DataTable dt)
        {
            if (dt == null) return "[]";
            if (dt.Columns.Count <= 0) return "{}";

            StringBuilder jsonString = new StringBuilder();
            jsonString.Append("[");
            DataRowCollection DataRowCol = dt.Rows;

            for (int i = 0; i < DataRowCol.Count; i++)
            {
                jsonString.Append("{");
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    string strKey = dt.Columns[j].ColumnName;
                    string strValue = DataRowCol[i][j].ToString();

                    Type type = dt.Columns[j].DataType;
                    jsonString.Append("\"" + strKey + "\":");
                    strValue = StringFormat(strValue, type);

                    if (j < dt.Columns.Count - 1)
                    {
                        jsonString.Append(strValue + ",");
                    }
                    else
                    {
                        jsonString.Append(strValue);
                    }
                }
                jsonString.Append("},");
            }

            if (dt.Rows.Count > 0)
                jsonString.Remove(jsonString.Length - 1, 1);

            jsonString.Append("]");
            return jsonString.ToString();
        }

        #endregion

        #region DataTable转换为json

        /// <summary>
        /// 将DataTable转换为json  return GetJson(dt);
        /// ToJSON 格式如下       
        ///        {
        ///            {"Columns":["Name","Company","Address","Phone","Country"]},
        ///            {"Rows":
        ///             [
        ///                 ["Ajay Singh","Birlasoft Ltd.","LosAngeles California","1204675","US"],
        ///                 ["Josn Singh","Josn Ltd.","LosAngeles California","1204675","USA"]
        ///             ]
        ///            }
        ///            
        ///       }
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>

        /// <summary>
        /// 将DataTable转换为json
        /// ToJSON 格式如下       
        ///        [
        ///            {"Name":"Ajay Singh","Company":"Birlasoft Ltd.","Address":"LosAngeles California","Phone":"1204675","Country":"US"},
        ///            {"Name":"Ajay Singh","Company":"Birlasoft Ltd.","Address":"D-195 Sector Noida","Phone":"1204675","Country":"India"}
        ///        ]
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public static string GetJson(this DataTable dt)
        {
            int rowNum = 0;
            string ColumnData = string.Empty;
            string RowsData = string.Empty;

            StringBuilder strData = new StringBuilder();
            StringBuilder strColumns = new StringBuilder();
            StringBuilder strRows = new StringBuilder();

            strData.Append("{");


            #region strColumns

            strColumns.Append("\"columns\":[");

            string StrColumns = string.Empty;

            for (int i = 0; i < dt.Columns.Count; i++)
            {
                if (i > 0 && i <= dt.Columns.Count - 1)
                    strColumns.Append(",");

                strColumns.Append("\"" + dt.Columns[i].ColumnName + "\"");
            }

            strColumns.Append(StrColumns);
            strColumns.Append("],");

            #endregion

            #region strRows
            strRows.Append("\"rows\":[");

            foreach (DataRow row in dt.Rows)
            {
                strRows.Append("[");

                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    if (i > 0 && i <= dt.Columns.Count - 1)
                        strRows.Append(",");

                    string DataVal = JosonConvert.StringFormat(row[i].ToStrings(), row[i].GetType());
                    strRows.Append(DataVal);

                }

                string StrRows = (rowNum < dt.Rows.Count - 1) ? "]," : "]"; //逗号不加在最后一项

                strRows.Append(StrRows);

                rowNum++;
            }

            strRows.Append("]");
            #endregion


            ColumnData = strColumns.ToStrings();
            RowsData = strRows.ToStrings();

            strData.Append(ColumnData);
            strData.Append(RowsData);

            strData.Append("}");

            return strData.ToString();
        }

        #endregion

        #region DataTable转换为Json

        /// <summary>   
        /// DataTable转成Json
        /// 可指定Json数据信息名称
        /// 默认表名表名
        /// </summary>   
        /// <param name="jsonName"></param>   
        /// <param name="dt"></param>   
        /// <returns></returns>   
        public static string ToJson(this DataTable dt, string jsonName)
        {
            StringBuilder Json = new StringBuilder();

            if (string.IsNullOrEmpty(jsonName))
                jsonName = dt.TableName;
            Json.Append("{\"" + jsonName + "\":[");

            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    Json.Append("{");
                    for (int j = 0; j < dt.Columns.Count; j++)
                    {
                        Type type = dt.Rows[i][j].GetType();

                        Json.Append("\"" + dt.Columns[j].ColumnName.ToString() + "\":" + StringFormat(dt.Rows[i][j].ToString(), type));

                        if (j < dt.Columns.Count - 1)
                        {
                            Json.Append(",");
                        }
                    }

                    Json.Append("}");

                    if (i < dt.Rows.Count - 1)
                    {
                        Json.Append(",");
                    }
                }
            }

            Json.Append("]}");

            return Json.ToString();
        }

        #endregion

        # region DataTable转换成Json格式
        /// <summary>
        /// dataTable转换成Json格式,自动加上表名
        /// ToJSON 格式如下
        ///  {
        ///          "JosonTable":
        ///           [
        ///               {"Name":"Ajay Singh","Company":"Birlasoft Ltd.","Address":"LosAngeles California","Phone":"1204675","Country":"US"},
        ///               {"Name":"Ajay Singh","Company":"Birlasoft Ltd.","Address":"D-195 Sector Noida","Phone":"1204675","Country":"India"}
        ///           ]
        ///  }
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>

        public static string ToJSON(this DataTable dt, String TableName = "JosonTable")
        {
            if (dt == null) return "[]";
            if (dt.Columns.Count <= 0) return "{}";

            StringBuilder jsonBuilder = new StringBuilder();
            jsonBuilder.Append("{\"");

            if (TableName != "JosonTable")
            {
                if (TableName.IsNullOrEmpty())
                    TableName = dt.TableName.ToString();
            }

            jsonBuilder.Append(TableName);

            jsonBuilder.Append("\":[");

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                jsonBuilder.Append("{");

                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    jsonBuilder.Append("\"");
                    jsonBuilder.Append(dt.Columns[j].ColumnName);
                    jsonBuilder.Append("\":\"");
                    jsonBuilder.Append(dt.Rows[i][j].ToString());
                    jsonBuilder.Append("\",");
                }
                if (dt.Rows.Count > 0)
                    jsonBuilder.Remove(jsonBuilder.Length - 1, 1);

                jsonBuilder.Append("},");
            }

            if (dt.Rows.Count > 0)
                jsonBuilder.Remove(jsonBuilder.Length - 1, 1);

            jsonBuilder.Append("]");

            jsonBuilder.Append("}");
            return jsonBuilder.ToString();
        }


        #endregion dataTable转换成Json格式

        #region DataTableToJSON

        /// <summary>
        /// 返回格式化后的Json数据
        /// 作用同 ToJSON
        /// </summary>
        /// <param name="dt"></param>
        /// <param name="dt_dispose"></param>
        /// <returns></returns>
        public static String ToJSON(this DataTable dt, bool dt_dispose)
        {
            if (dt == null) return "[]";
            if (dt.Rows.Count <= 0) return "{}";

            StringBuilder builder = new StringBuilder();
            builder.Append("[\r\n");

            string[] strArray = new string[dt.Columns.Count];
            int index = 0;
            string format = "{{";
            string str2 = "";
            foreach (DataColumn column in dt.Columns)
            {
                object obj2;
                strArray[index] = column.Caption.ToLower().Trim();
                format = format + "'" + column.Caption.ToLower().Trim() + "':";
                str2 = column.DataType.ToString().Trim().ToLower();
                if ((((str2.IndexOf("int") > 0) || (str2.IndexOf("deci") > 0)) || ((str2.IndexOf("floa") > 0) || (str2.IndexOf("doub") > 0))) || (str2.IndexOf("bool") > 0))
                {
                    obj2 = format;
                    format = string.Concat(new object[] { obj2, "{", index, "}" });
                }
                else
                {
                    obj2 = format;
                    format = string.Concat(new object[] { obj2, "'{", index, "}'" });
                }
                format = format + ",";
                index++;
            }
            if (format.EndsWith(","))
            {
                format = format.Substring(0, format.Length - 1);
            }
            format = format + "}},";
            index = 0;
            object[] args = new object[strArray.Length];
            foreach (DataRow row in dt.Rows)
            {
                foreach (string str3 in strArray)
                {
                    args[index] = row[strArray[index]].ToString().Trim();
                    string str4 = args[index].ToString();
                    if (str4 != null)
                    {
                        if (!(str4 == "True"))
                        {
                            if (str4 == "False")
                            {
                                goto Label_026D;
                            }
                        }
                        else
                        {
                            args[index] = "true";
                        }
                    }
                    goto Label_027B;
                Label_026D:
                    args[index] = "false";
                Label_027B:
                    index++;
                }
                index = 0;
                builder.Append(string.Format(format, args));
            }
            if (builder.ToString().EndsWith(","))
            {
                builder.Remove(builder.Length - 1, 1);
            }
            if (dt_dispose)
            {
                dt.Dispose();
            }

            builder.Append("\r\n];");

            return builder.ToString();
        }

        #endregion


        #region DataReader转换为Json
        /// <summary>    
        /// DataReader转换为Json    
        /// </summary>    
        /// <param name="dataReader">DataReader对象</param>    
        /// <returns>Json字符串</returns>    
        public static string ToJson(this DbDataReader dataReader)
        {
            StringBuilder jsonString = new StringBuilder();
            jsonString.Append("[");
            while (dataReader.Read())
            {
                jsonString.Append("{");
                for (int i = 0; i < dataReader.FieldCount; i++)
                {
                    Type type = dataReader.GetFieldType(i);
                    string strKey = dataReader.GetName(i);
                    string strValue = dataReader[i].ToString();
                    jsonString.Append("\"" + strKey + "\":");
                    strValue = StringFormat(strValue, type);
                    if (i < dataReader.FieldCount - 1)
                    {
                        jsonString.Append(strValue + ",");
                    }
                    else
                    {
                        jsonString.Append(strValue);
                    }
                }
                jsonString.Append("},");
            }
            dataReader.Close();
            jsonString.Remove(jsonString.Length - 1, 1);
            jsonString.Append("]");
            return jsonString.ToString();
        }

        #endregion

        #region Json格式 转换成 DataTable JsonToDataTable
        /// <summary>
        /// Json格式 转换成 DataTable
        /// </summary>
        /// <param name="strJson"></param>
        /// <returns></returns>
        public static DataTable JsonToDataTable(this string strJson)
        {
            //取出表名 
            Regex rg = new Regex(@"(?<={)[^:]+(?=:/[)", RegexOptions.IgnoreCase);
            string strName = rg.Match(strJson).Value;
            DataTable Dt = null;
            //去除表名 
            strJson = strJson.Substring(strJson.IndexOf("[") + 1);
            strJson = strJson.Substring(0, strJson.IndexOf("]"));

            //获取数据 
            rg = new Regex(@"(?<={)[^}]+(?=})");
            MatchCollection mc = rg.Matches(strJson);
            for (int i = 0; i < mc.Count; i++)
            {
                string strRow = mc[i].Value;
                string[] strRows = strRow.Split(',');

                //创建表 
                if (Dt == null)
                {
                    Dt = new DataTable();
                    Dt.TableName = strName;
                    foreach (string str in strRows)
                    {
                        DataColumn dc = new DataColumn();
                        string[] strCell = str.Split(':');
                        dc.ColumnName = strCell[0].ToString();
                        Dt.Columns.Add(dc);
                    }
                    Dt.AcceptChanges();
                }

                //增加内容 
                DataRow dr = Dt.NewRow();

                for (int r = 0; r < strRows.Length; r++)
                {
                    dr[r] = strRows[r].Split(':')[1].Trim().Replace("，", ",").Replace("：", ":").Replace("\"", "");
                }
                Dt.Rows.Add(dr);
                Dt.AcceptChanges();
            }

            return Dt;
        }

        #endregion

        #region DataTable 文本文件互转

        #region DataTable ReadToDataTable

        /// <summary>
        /// ReadToDataTable
        /// </summary>
        /// <param name="dirTXT"></param>
        /// <returns></returns>
        public static System.Data.DataTable ReadToDataTable(this string dirTXT)
        {
            StreamReader objReader = new StreamReader(dirTXT);
            System.Data.DataTable dt = new System.Data.DataTable();
            dt.Columns.Add("DN", System.Type.GetType("System.String"));

            string sLine = "";

            while (sLine != null)
            {
                sLine = objReader.ReadLine();
                if (sLine != null && !sLine.Equals(""))
                {
                    DataRow dr = dt.NewRow();
                    dr["DN"] = sLine;
                    dt.Rows.Add(dr);
                }
            }

            objReader.Close();
            return dt;
        }

        #endregion

        #region DataTable WriteToTxtFile

        /// <summary>
        /// DataTable WriteToTxtFile
        /// </summary>
        /// <param name="dt"></param>
        /// <param name="dirTXT"></param>
        public static void WriteToTxtFile(this System.Data.DataTable dt, string dirTXT)
        {

            if (!System.IO.File.Exists(dirTXT)) { System.IO.File.Create(dirTXT); }

            FileStream fs = new FileStream(dirTXT, FileMode.Create);
            StreamWriter sw = new StreamWriter(fs);
            //开始写入
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                string strData = string.Empty;
                string Columns = string.Empty;

                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    if (i == 0)
                    {
                        Columns += dt.Columns[k].ColumnName.ToString() + "\t";
                        Columns += k == dt.Columns.Count - 1 ? "\r\n\r\n" : "";
                    }

                    strData += dt.Rows[i][k].ToString() + "\t";

                }

                strData += "\r\n";
                sw.Write(Columns + strData);

            }
            //清空缓冲区
            sw.Flush();
            //关闭流
            sw.Close();
            fs.Close();
        }

        #endregion

        #endregion


    }
}
