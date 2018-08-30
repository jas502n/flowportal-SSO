using System;
using System.Collections.Generic;
using System.Text;

namespace Net.Common
{
    public static partial class JosonList<T>
    {

        #region 去除list当中重复的数据
        /// <summary>
        /// /**1、去除list当中重复的数据*/
        /// </summary>
        /// <param name="list"></param>
        /// <returns></returns>
        public static List<T> ClrarnRptItem(List<T> list) 
        {

            HashSet<T> HashSets = new HashSet<T>();

            for (int i = 0; i < list.Count; i++) { HashSets.Add(list[i]); }

            list.Clear();
            list.AddRange(HashSets);
            return list;

        } 
        #endregion

        #region 循环list中的所有元素然后删除重复

        /// <summary>
        ///   /**2、循环list中的所有元素然后删除重复*/
        /// </summary>
        /// <param name="list"></param>
        /// <returns></returns>
        public static List<T> RemoveRptItem(List<T> list)
        {


            for (int ii = 0; ii < list.Count; ii++)
            {
                for (int jj = ii + 1; jj < list.Count; jj++)
                {
                    if (list[ii].Equals(list[jj]))
                    {
                        list.RemoveAt(jj);
                        jj--;
                    }
                }
            }

            return list;
        }
        
        #endregion

        #region 循环list中的所有元素然后删除重复
        /// <summary>
        /// /**2、循环list中的所有元素然后删除重复*/
        /// </summary>
        /// <param name="list"></param>
        /// <returns></returns>
        public static List<T> TryRemoveRptItem(List<T> list)
        {
            for (int i = 0; i < list.Count() - 1; i++)
            {
                for (int j = list.Count() - 1; j > i; j--)
                {
                    if (list[j].Equals(list[i]))
                    {
                        list.RemoveAt(j);
                    }
                }
            }
            return list;
        }
        
        #endregion


        #region 测试示例


        //private class Ts
        //{
        //    public int ID { get; set; }
        //    public string Name { get; set; }
        //    public string Address { get; set; }
        //    public string Tel { get; set; }
        //}


        ///// <summary>
        ///// 测试部分
        ///// </summary>
        //private static void ListTest()
        //{
        //    List<int> ii = new List<int>();
        //    List<String> ss = new List<String>();
        //    List<string> str = new List<string>();

        //    List<Ts> student = new List<Ts>();

        //    ii.Add(1);
        //    ii.Add(2);
        //    ii.Add(1);

        //    ss.Add("a");
        //    ss.Add("b");
        //    ss.Add("a");

        //    str.Add("aa");
        //    str.Add("bb");
        //    str.Add("ab");
        //    str.Add("bb");


        //    Ts t1 = new Ts() { ID = 0, Name = "Joson", Address = "Address", Tel = "13800138000" };
        //    Ts t2 = new Ts() { ID = 1, Name = "Joson", Address = "Address", Tel = "13800138000" };

        //    // 下边属于同数据
        //    student.Add(t1);
        //    student.Add(t1);

        //    // 下边属于不同数据
        //    student.Add(t2);
        //    student.Add(new Ts() { ID = 1, Name = "Joson", Address = "Address", Tel = "13800138000" });
        //    // 下边属于不同数据
        //    student.Add(new Ts() { ID = 2, Name = "Joson", Address = "Address", Tel = "13800138000" });
        //    student.Add(new Ts() { ID = 2, Name = "Joson", Address = "Address", Tel = "13800138000" });

        //    student.Add(new Ts() { ID = 0, Name = "JosonA", Address = "Address", Tel = "13800138000" });



        //    ii = Lists<int>.TryRemoveRptItem(ii);

        //    ss = Lists<String>.RemoveRptItem(ss);

        //    str = Lists<String>.ClrarnRptItem(str);

        //    student = Lists<Ts>.ClrarnRptItem(student);


        //    foreach (int i in ii)
        //    {
        //        Console.WriteLine(i);
        //    }


        //    foreach (String i in ss)
        //    {
        //        Console.WriteLine(i);
        //    }

        //    foreach (String i in str)
        //    {
        //        Console.WriteLine(i);
        //    }



        //    foreach (Ts stu in student)
        //    {
        //        Console.WriteLine(stu.ID);
        //        Console.WriteLine(stu.Name);
        //        Console.WriteLine(stu.Address);
        //        Console.WriteLine(stu.Tel);
        //    }


        //}
        
        #endregion

    }


    public static partial class JosonList
    {

        #region 去除list当中重复的数据
        /// <summary>
        /// /**1、去除list当中重复的数据*/
        /// </summary>
        /// <param name="list"></param>
        /// <returns></returns>
        public static IList<T> ClrarnRptItem<T>(this List<T> list)
        {

            HashSet<T> HashSets = new HashSet<T>();

            for (int i = 0; i < list.Count; i++) { HashSets.Add(list[i]); }

            list.Clear();
            list.AddRange(HashSets);
            return list;

        }
        #endregion

        #region 循环list中的所有元素然后删除重复

        /// <summary>
        ///   /**2、循环list中的所有元素然后删除重复*/
        /// </summary>
        /// <param name="list"></param>
        /// <returns></returns>
        public static List<T> RemoveRptItem<T>(this List<T> list)
        {


            for (int ii = 0; ii < list.Count; ii++)
            {
                for (int jj = ii + 1; jj < list.Count; jj++)
                {
                    if (list[ii].Equals(list[jj]))
                    {
                        list.RemoveAt(jj);
                        jj--;
                    }
                }
            }

            return list;
        }

        #endregion

        #region 循环list中的所有元素然后删除重复
        /// <summary>
        /// /**2、循环list中的所有元素然后删除重复*/
        /// </summary>
        /// <param name="list"></param>
        /// <returns></returns>
        public static List<T> TryRemoveRptItem<T>(this List<T> list)
        {
            for (int i = 0; i < list.Count() - 1; i++)
            {
                for (int j = list.Count() - 1; j > i; j--)
                {
                    if (list[j].Equals(list[i]))
                    {
                        list.RemoveAt(j);
                    }
                }
            }
            return list;
        }

        #endregion


        #region 测试示例

 

        #endregion

    }


}
