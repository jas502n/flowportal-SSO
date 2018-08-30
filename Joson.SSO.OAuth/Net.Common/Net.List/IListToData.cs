using System;
using System.Collections.Generic;

using System.Text;
using System.Data;
using System.Collections;
using System.Reflection;
using System.ComponentModel;


namespace Net.Common
{
    public static partial class JosonData
    {

        #region 数据集转换泛型集合扩展


        #region DataSet转换为泛型集合
        /// <summary>         
        /// DataSet转换为泛型集合         
        /// </summary>         
        /// <typeparam name="T">泛型类型</typeparam>         
        /// <param name="ds">DataSet数据集</param>         
        /// <param name="tableIndex">待转换数据表索引,默认第0张表</param>         
        /// <returns>返回泛型集合</returns>         
        public static IList<T> ToList<T>(DataSet ds, int tableIndex)
        {
            if (ds == null || ds.Tables.Count < 0) return null;
            if (tableIndex > ds.Tables.Count - 1)
                return null;
            if (tableIndex < 0)
                tableIndex = 0;
            DataTable dt = ds.Tables[tableIndex];
            // 返回值初始化             
            IList<T> result = new List<T>();
            for (int j = 0; j < dt.Rows.Count; j++)
            {
                T _t = (T)Activator.CreateInstance(typeof(T));
                PropertyInfo[] propertys = _t.GetType().GetProperties();
                foreach (PropertyInfo pi in propertys)
                {
                    for (int i = 0; i < dt.Columns.Count; i++)
                    {
                        // 属性与字段名称一致的进行赋值                         
                        if (pi.Name.Equals(dt.Columns[i].ColumnName))
                        {
                            // 数据库NULL值单独处理                             
                            if (dt.Rows[j][i] != DBNull.Value)
                                pi.SetValue(_t, dt.Rows[j][i], null);
                            else
                                pi.SetValue(_t, null, null);
                            break;
                        }
                    }
                }
                result.Add(_t);
            }
            return result;
        }
        #endregion

        #region DataSet转换为泛型集合
        /// <summary>         
        /// DataSet转换为泛型集合         
        /// </summary>         
        /// <typeparam name="T">泛型类型</typeparam>         
        /// <param name="ds">DataSet数据集</param>         
        /// <param name="tableName">待转换数据表名称,名称为空时默认第0张表</param>         
        /// <returns>返回泛型集合</returns>         
        public static IList<T> ToList<T>(DataSet ds, string tableName)
        {
            int _TableIndex = 0;
            if (ds == null || ds.Tables.Count < 0)
                return null;
            if (string.IsNullOrEmpty(tableName))
                return ToList<T>(ds, 0);
            for (int i = 0; i < ds.Tables.Count; i++)
            {
                // 获取Table名称在Tables集合中的索引值                 
                if (ds.Tables[i].TableName.Equals(tableName))
                {
                    _TableIndex = i;
                    break;
                }
            }
            return ToList<T>(ds, _TableIndex);
        }
        #endregion

        #region DataTable转换为泛型集合
        /// <summary>         
        /// DataTable转换为泛型集合         
        /// </summary>         
        /// <typeparam name="T">泛型类型</typeparam>         
        /// <param name="dt">DataTable数据表</param>         
        /// <returns>返回泛型集合</returns>         
        public static IList<T> ToList<T>(DataTable dt) where T : class, new()
        {
            if (dt == null || dt.Rows.Count <= 0) return null;
            List<T> list = new List<T>();
            try
            {
                #region 方法1：快
                PropertyInfo[] propertys = typeof(T).GetProperties();
                for (int j = 0; j < dt.Rows.Count; j++)
                {
                    T _t = (T)Activator.CreateInstance(typeof(T));
                    foreach (PropertyInfo pi in propertys)
                    {

                        // 属性与字段名称一致的进行赋值                         
                        if (pi.Name.Equals(dt.Columns[pi.Name].ColumnName))
                        {
                            if (dt.Rows[j][pi.Name] != DBNull.Value)
                                pi.SetValue(_t, dt.Rows[j][pi.Name], null);
                            else
                                pi.SetValue(_t, null, null);
                        }
                    }
                    list.Add(_t);
                }

                #endregion

            }
            catch (Exception ex)
            {
                #region 方法2：慢

                //T model;
                //Type infos = typeof(T);
                //object tempValue;
                //foreach (DataRow dr in dt.Rows)
                //{
                //    model = new T();

                //    infos.GetProperties().ToList().ForEach(p => p.SetValue(model, dr[p.Name], null));

                //    infos.GetProperties().ToList().ForEach(p =>
                //    {
                //        tempValue = dr[p.Name];
                //        if (!string.IsNullOrEmpty(tempValue.ToString()))
                //            p.SetValue(model, tempValue, null);
                //    });
                //    list.Add(model);
                //}
                #endregion
            }

            return list;
        }

        #endregion
 

        #endregion

        #region 泛型集合转换为数据集扩展

        #region 将泛型集合转换成DataSet数据集

        /// <summary>
        /// 将泛型集合转换成DataSet数据集
        /// </summary>
        /// <typeparam name="T">T类型</typeparam>
        /// <param name="list">泛型集合</param>
        /// <returns>DataSet数据集</returns>
  

        #endregion

 

        #region 泛型集合转换成DataTable表
 
 


        #region List集合转成DataTable
        /// <summary>
        /// object (IList)lst 
        /// List集合转成DataTable 
        /// </summary>
        /// <param name="lstObject"></param>
        /// <returns></returns>
        public static DataTable ToDataTable( object lstObject)
        {
            if (lstObject == null) return null;

            IList list = (IList)lstObject;
            DataTable dt = new DataTable();
            if (list.Count == 0) return dt;

            // use reflection to discover all properties of the object

            BindingFlags BindingFlags = BindingFlags.Instance | BindingFlags.Public | BindingFlags.GetProperty;
            PropertyInfo[] props = list[0].GetType().GetProperties();
            foreach (PropertyInfo pi in props)
            {
                // dt.Columns.Add(pi.Name, Type.GetType(pi.PropertyType.FullName));
                Type colType = pi.PropertyType;
                if (colType.IsGenericType && colType.GetGenericTypeDefinition() == typeof(Nullable<>))
                {
                    colType = colType.GetGenericArguments()[0];
                }
                dt.Columns.Add(new DataColumn(pi.Name, colType));
            }

            foreach (object obj in list)
            {
                DataRow dr = dt.NewRow();
                foreach (PropertyInfo pi in props)
                {
                    object result = obj.GetType().InvokeMember(pi.Name, BindingFlags, null, obj, null);

                    dr[pi.Name] = result ?? DBNull.Value; ;
                }
                dt.Rows.Add(dr);
            }
            return dt;
        }

        #endregion

        #endregion


        #endregion

        #region 将泛型 泛型集合类 转换成DataTable

        #region 将集合类转换成DataTable
        /// <summary>  
        /// 将集合类转换成DataTable  
        /// </summary>  
        /// <param name="list">集合</param>  
        /// <returns></returns>  
        public static DataTable ToDataTable( IList list)
        {
            DataTable result = new DataTable();
            if (list.Count > 0)
            {
                PropertyInfo[] propertys = list[0].GetType().GetProperties();

                foreach (PropertyInfo ProInfo in propertys)
                {
                    string Value = ProInfo.Name.ToString();

                    object PropertyType =Convert.ChangeType(Value, typeof(String));
                    // ProInfo.PropertyType;
                
                    if (ProInfo.PropertyType.IsGenericType)
                    {
                        //泛型Nullable<>
                        Type genericTypeDefinition = ProInfo.PropertyType.GetGenericTypeDefinition();
                        if (genericTypeDefinition == typeof(Nullable<>))
                        {
                            PropertyType = Convert.ChangeType(Value, typeof(String));
                            //PropertyType = ProInfo.PropertyType.GetGenericArguments()[0];
                            //PropertyType = Convert.ChangeType(value, Nullable.GetUnderlyingType(typeof(String)));
                        }
                    }
                    result.Columns.Add(Value, PropertyType.GetType());
                }

                for (int i = 0; i < list.Count; i++)
                {
                    ArrayList tempList = new ArrayList();
                    foreach (PropertyInfo ProInfo in propertys)
                    {
                        object obj = ProInfo.GetValue(list[i], null);
                        tempList.Add(obj);
                    }
                    object[] array = tempList.ToArray();
                    result.LoadDataRow(array, true);
                }
            }
            return result;
        }
        #endregion

        #region 将泛型集合类转换成DataTable

        /// <summary>  
        /// 将泛型集合类转换成DataTable  
        /// </summary>  
        /// <typeparam name="T">集合项类型</typeparam>  
        /// <param name="list">集合</param>  
        /// <returns>数据集(表)</returns>  
        public static DataTable ToDataTables<T>( IList<T> list)
        {
            return ToDataTables<T>(list, null);
        }

        #region 将泛型集合类转换成DataTable

        /// <summary>  
        /// 将泛型集合类转换成DataTable  
        /// </summary>  
        /// <typeparam name="T">集合项类型</typeparam>  
        /// <param name="list">集合</param>  
        /// <param name="propertyName">需要返回的列的列名</param>  
        /// <returns>数据集(表)</returns>  
        public static DataTable ToDataTables<T>( IList<T> list, params string[] propertyName)
        {
            List<string> propertyNameList = new List<string>();
            if (propertyName != null)
                propertyNameList.AddRange(propertyName);

            DataTable result = new DataTable();
            if (list.Count > 0)
            {
                PropertyInfo[] propertys = list[0].GetType().GetProperties();
                foreach (PropertyInfo pi in propertys)
                {

                    if (propertyNameList.Count == 0)
                    {
                        // result.Columns.Add(pi.Name, pi.PropertyType);

                        // 解决DataSet不支持System.nullable 如下

                        Type colType = pi.PropertyType;
                        if (colType.IsGenericType && colType.GetGenericTypeDefinition() == typeof(Nullable<>))
                        {
                            colType = colType.GetGenericArguments()[0];
                        }

                        result.Columns.Add(new DataColumn(pi.Name, colType));
                    }
                    else
                    {
                        if (propertyNameList.Contains(pi.Name))
                        {

                            //result.Columns.Add(pi.Name, pi.PropertyType);

                            // 解决DataSet不支持System.nullable 如下

                            Type colType = pi.PropertyType;
                            if (colType.IsGenericType && colType.GetGenericTypeDefinition() == typeof(Nullable<>))
                            {
                                colType = colType.GetGenericArguments()[0];
                            }

                            result.Columns.Add(new DataColumn(pi.Name, colType));

                        }
                    }
                }

                for (int i = 0; i < list.Count; i++)
                {
                    ArrayList tempList = new ArrayList();
                    foreach (PropertyInfo pi in propertys)
                    {
                        if (propertyNameList.Count == 0)
                        {
                            object obj = pi.GetValue(list[i], null);
                            tempList.Add(obj);
                        }
                        else
                        {
                            if (propertyNameList.Contains(pi.Name))
                            {
                                object obj = pi.GetValue(list[i], null);
                                tempList.Add(obj);
                            }
                        }
                    }
                    object[] array = tempList.ToArray();
                    result.LoadDataRow(array, true);
                }
            }
            return result;
        }

        #endregion

        #endregion

        #endregion

        #region  IEnumerable 与DataTable互换

        #region DataTable 转换为List 集合
        /// <summary>  
        /// DataTable 转换为List 集合  
        /// </summary>  
        /// <typeparam name="TResult">类型</typeparam>  
        /// <param name="dt">DataTable</param>  
        /// <returns></returns>  
        public static IList<TResult> ToIList<TResult>( DataTable dt) where TResult : class, new()
        {
            //创建一个属性的列表  
            List<PropertyInfo> prlist = new List<PropertyInfo>();
            //获取TResult的类型实例  反射的入口  
            Type t = typeof(TResult);
            //获得TResult 的所有的Public 属性 并找出TResult属性和DataTable的列名称相同的属性(PropertyInfo) 并加入到属性列表   
            Array.ForEach<PropertyInfo>(t.GetProperties(), p => { if (dt.Columns.IndexOf(p.Name) != -1) prlist.Add(p); });
            //创建返回的集合  
            List<TResult> oblist = new List<TResult>();

            foreach (DataRow row in dt.Rows)
            {
                //创建TResult的实例  
                TResult ob = new TResult();
                //找到对应的数据  并赋值  
                prlist.ForEach(p => { if (row[p.Name] != DBNull.Value) p.SetValue(ob, row[p.Name], null); });
                //放入到返回的集合中.  
                oblist.Add(ob);
            }
            return oblist;
        }
        #endregion

        #region IEnumerable 转换为一个DataTable
        /// <summary>  
        /// IEnumerable 转换为一个DataTable  
        /// </summary>  
        /// <typeparam name="TResult"></typeparam>  
        ///// <param name="value"></param>  
        /// <returns></returns>  
 

        #endregion

        #region IEnumerable 转换为一个DataTable
        /// <summary>  
        /// IEnumerable 转换为一个DataTable 
        /// </summary>  
        /// <typeparam name="TResult"></typeparam>  
        ///// <param name="value"></param>  
        /// <returns></returns>  
        public static DataTable ToDataTable<TResult>( IEnumerable<TResult> value) where TResult : class
        {
            //创建属性的集合  
            List<PropertyInfo> pList = new List<PropertyInfo>();
            //获得反射的入口  
            Type type = typeof(TResult);
            DataTable dt = new DataTable();
            //把所有的public属性加入到集合 并添加DataTable的列  
            Array.ForEach<PropertyInfo>(type.GetProperties(), p => { pList.Add(p); dt.Columns.Add(p.Name, p.PropertyType); });
            foreach (var item in value)
            {
                //创建一个DataRow实例  
                DataRow row = dt.NewRow();
                //给row 赋值  
                pList.ForEach(p => row[p.Name] = p.GetValue(item, null));
                //加入到DataTable  
                dt.Rows.Add(row);
            }
            return dt;
        }
        #endregion

        #endregion

        #region 以下为IEnumerable扩展实现

        /// <summary>
        /// 给非强类型的IEnumerable返回头一个元素。
        /// </summary>
        public static object First( IEnumerable col)
        {
            foreach (var item in col)
                return item;
            throw new IndexOutOfRangeException();
        }
        /// <summary>
        /// 给非强类型的IEnumerable返回头一个强类型的元素
        /// </summary>
 

        /// <summary>
        /// var @enum = new[] {1, 2, 3, 4}.AsEnumerable();
        /// var sum = 0;
        ///    
        /// @enum.ForEach(n => sum += n);
        ///  基本上和List<T>的ForEach方法一致。
        ///  这个扩展方法，可以直接在一个集合上执行一个Lambda表达式，
        ///  返回结果，相当于有二个参数的Fun<T,T>，来看它的源代码定义
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="enum"></param>
        /// <param name="mapFunction"></param>
        public static void Each<T>( IEnumerable<T> @enum, Action<T> mapFunction)
        {
            foreach (var item in @enum) mapFunction(item);
        }

 
 

        #endregion

        #region 以下为IEnumerable<T>的非泛型实现
 

        #endregion


    }

    /*********************************************************************************************************************/

    /// <summary>
    /// DtTableToList
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public static class JosonDtTable<T> where T : new()
    {

        #region 按照属性顺序的列名集合
        /// <summary>
        /// 按照属性顺序的列名集合
        /// </summary>
        public static IList<string> GetColumnNames(DataTable Dt)
        {
            DataColumnCollection Dtc = Dt.Columns;
            PropertyInfo[] properties = typeof(T).GetProperties();//获取实体类型的属性集合

            //由于集合中的元素是确定的，所以可以指定元素的个数，系统就不会分配多余的空间，效率会高点
            IList<string> ilist = new List<string>(Dtc.Count);

            foreach (PropertyInfo p in properties)
            {
                foreach (DataColumn dc in Dtc)
                {
                    if (dc.ColumnName.ToLower().Contains(p.Name.ToLower()))
                    {
                        ilist.Add(dc.ColumnName);
                    }
                }
            }

            return ilist;
        }

        #endregion

        #region  DataTable转换成IList

        /// <summary>
        /// DataTable转换成IList
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public static IList<T> ToIList(DataTable dt)
        {
            if (dt == null || dt.Rows.Count == 0)
            {
                return null;
            }

            PropertyInfo[] properties = typeof(T).GetProperties();//获取实体类型的属性集合
            IList<string> colNames = GetColumnNames(dt);//按照属性顺序的列名集合
            List<T> list = new List<T>();
            T model = default(T);
            foreach (DataRow dr in dt.Rows)
            {
                model = new T();//创建实体
                int i = 0;
                foreach (PropertyInfo p in properties)
                {
                    if (p.PropertyType == typeof(string))
                    {
                        p.SetValue(model, dr[colNames[i++]], null);
                    }
                    else if (p.PropertyType == typeof(int))
                    {
                        p.SetValue(model, int.Parse(dr[colNames[i++]].ToString()), null);
                    }
                    else if (p.PropertyType == typeof(bool))
                    {
                        p.SetValue(model, bool.Parse(dr[colNames[i++]].ToString()), null);
                    }
                    else if (p.PropertyType == typeof(DateTime))
                    {
                        p.SetValue(model, DateTime.Parse(dr[colNames[i++]].ToString()), null);
                    }
                    else if (p.PropertyType == typeof(float))
                    {
                        p.SetValue(model, float.Parse(dr[colNames[i++]].ToString()), null);
                    }
                    else if (p.PropertyType == typeof(double))
                    {
                        p.SetValue(model, double.Parse(dr[colNames[i++]].ToString()), null);
                    }
                }

                list.Add(model);
            }

            return list;
        }
        #endregion
    }

    /// <summary>
    /// 
    /// </summary>
    public static class JosonDtTable
    {

        #region 泛型List转为Datatable

        /// <summary>
        /// 泛型List转为Datatable
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="list">IList<T></param>
        /// <returns>DataTable</returns>
        public static DataTable ToDataTable<T>( IList<T> list)
        {
            DataTable table = ToDataTable<T>();
            Type entityType = typeof(T);
            PropertyDescriptorCollection properties = System.ComponentModel.TypeDescriptor.GetProperties(entityType);

            foreach (T item in list)
            {
                DataRow row = table.NewRow();

                foreach (PropertyDescriptor prop in properties)
                {
                    row[prop.Name] = prop.GetValue(item);
                }

                table.Rows.Add(row);
            }

            return table;
        }

        #endregion

        #region  IList<DataRow> 转为 IList<T>
        /// <summary>
        /// IList<DataRow> 转为 IList<T> 
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="rows"></param>
        /// <returns></returns>
        public static IList<T> ToIList<T>( IList<DataRow> rows)
        {
            IList<T> list = null;

            if (rows != null)
            {
                list = new List<T>();

                foreach (DataRow row in rows)
                {
                    T item = CreateItem<T>(row);
                    list.Add(item);
                }
            }

            return list;
        }
        #endregion

        #region  DataTable 转为 IList<T>
        /// <summary>
        /// DataTable 转为 IList<T>
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="table"></param>
        /// <returns></returns>
        public static IList<T> ToIList<T>(DataTable table)
        {
            if (table == null)
            {
                return null;
            }

            List<DataRow> rows = new List<DataRow>();

            foreach (DataRow row in table.Rows)
            {
                rows.Add(row);
            }

            return ToIList<T>(rows);
        }
        #endregion

        #region DataRow转为泛型类
        /// <summary>
        /// DataRow转为泛型类
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="row"></param>
        /// <returns></returns>
        public static T CreateItem<T>( DataRow row)
        {
            T obj = default(T);
            if (row != null)
            {
                obj = Activator.CreateInstance<T>();

                foreach (DataColumn column in row.Table.Columns)
                {
                    PropertyInfo prop = obj.GetType().GetProperty(column.ColumnName);
                    try
                    {
                        object value = row[column.ColumnName];
                        prop.SetValue(obj, value, null);
                    }
                    catch
                    {
                        // You can log something here  
                        throw;
                    }
                }
            }

            return obj;
        }
        #endregion

        #region 泛型类转为 DataTable
        /// <summary>
        /// 泛型类转为 DataTable
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static DataTable ToDataTable<T>()
        {
            Type entityType = typeof(T);
            DataTable table = new DataTable(entityType.Name);
            PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(entityType);

            foreach (PropertyDescriptor prop in properties)
            {
                table.Columns.Add(prop.Name, prop.PropertyType);
            }

            return table;
        }

        #endregion


    }


    #region 示例代码

    /*
     * 
    class IListToData
    {

        class Demo
        {
            public int id { get; set; }
            public string name { get; set; }
            public int age { get; set; }
        }

        public static void ListToDataDemo()
        {
            var list = new List<Demo> {
                    new Demo{ id=1,age=18, name="Tim"},
                    new Demo{ id=2,age=22, name="Allen"},
                    new Demo{ id=3,age=24, name="Jim"}
            };
            var ds = list.ToDataSet();
            string s = ds.Tables[0].Rows[1][1].ToString();

            System.Data.DataTable dt = new System.Data.DataTable();
            JosonDtTable<Demo>.ToIList(dt);
            JosonDtTable<Demo>.GetColumnNames(dt);

            JosonDtTable.ToDataTable(list);
            JosonDtTable.ToIList<Demo>(dt);

            System.Console.WriteLine(s);
        }

    }

    */

    #endregion




}


