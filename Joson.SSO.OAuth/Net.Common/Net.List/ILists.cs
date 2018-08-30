using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using Wuqi.Webdiyer;

namespace Net.Common
{
    public static partial class JosonList
    {



        /// <summary>
        /// List 包含或者不包含 仅仅用于String 和 Int
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="LstT"></param>
        /// <param name="o"></param>
        /// <param name="IsContains"></param>
        /// <returns></returns>
        public static List<T> InOrNot<T>(IList<T> LstT, T o, bool IsContains = true)
        {

            int i = 0;
            List<T> Lst = new List<T>();

            Type thisType = typeof(T);

            // thisType = o.GetType();

            foreach (T t in LstT)
            {

                if (thisType.Name.Equals("String") || thisType.Name.Equals("Int32"))
                {
                    if (IsContains)
                    {
                        if (LstT[i].Equals(o) && LstT[i].GetType().Equals(thisType))
                        {
                            Lst.Add(LstT[i]);
                        }
                    }
                    else
                    {
                        if (!LstT[i].Equals(o) && !LstT[i].Equals("") && LstT[i].GetType().Equals(thisType))
                        {
                            Lst.Add(LstT[i]);
                        }
                    }
                    i++;
                }
                else
                {
                    Lst.Add(o);
                    break;
                }
            }
            return Lst;

            #region 使用示例
            //List<String> LstStr = new List<String>();

            //LstStr.Add("A");
            //LstStr.Add("B");
            //LstStr.Add("C");
            //LstStr.Add("");

            ////   LstStr.

            //List<String> LstStrA = IList.InOrNot<String>(LstStr, "A", true);
            //List<String> LstStrB = IList.InOrNot<String>(LstStr, "A", false);


            //List<int> Lsti = new List<int>();
            //Lsti.Add(0);
            //Lsti.Add(1);
            //Lsti.Add(2);
            //Lsti.Add(3);

            ////   LstStr.

            //List<int> LstIA = IList.InOrNot<int>(Lsti, 2, true);
            //List<int> LstIB = IList.InOrNot<int>(Lsti, 0, false); 
            #endregion

        }

        /// <summary>
        /// 
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="source"></param>
        /// <param name="sortProper"></param>
        /// <param name="asc"></param>
        /// <returns></returns>
        public static IList<T> Sort<T>(this IList<T> source, string sortProper, bool asc)
        {
            if (source != null && source.Any())
            {
                var properties = typeof(T).GetProperties();
                PropertyInfo pro = null;
                foreach (var item in properties)
                {
                    if (item.Name.ToUpper().Equals(sortProper.ToUpper()))
                    {
                        pro = item;
                        break;
                    }
                }
                for (int i = 0; i < source.Count; i++)
                {
                    T t;
                    for (int k = 0; k < source.Count; k++)
                    {
                        int compare = pro.GetValue(source[i], null).ToString().CompareTo(pro.GetValue(source[k], null).ToString());
                        if ((asc && compare < 0) || (!asc && compare > 0))
                        {
                            t = source[i];
                            source[i] = source[k];
                            source[k] = t;
                        }
                    }
                }
                return source;
            }
            return null;
        }

        #region IList<T> 分页

        /// <summary>
        /// IList<T> 分页
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="source"></param>
        /// <param name="CurrentPageIndex"></param>
        /// <param name="PageSize"></param>
        /// <returns></returns>
        public static IList<T> GetPage<T>(this IList<T> source, int CurrentPageIndex, int PageSize)
        {

            return source.Select(funSelect => funSelect)
              .Skip(PageSize * (CurrentPageIndex - 1))
              .Take(PageSize).ToList<T>();

        }

        /// <summary>
        ///  对IList<T>进行分页,起始页为1
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="source"></param>
        /// <param name="AspNetPagers">控件名称</param>
        /// <returns></returns>
        public static IList<T> GetPage<T>(this IList<T> source, AspNetPager AspNetPagers)
        {
            return source.Select(funSelect => funSelect)
                    .Skip(AspNetPagers.PageSize * (AspNetPagers.CurrentPageIndex - 1))
                    .Take(AspNetPagers.PageSize).ToList<T>();
        }

        /// <summary>
        /// 对IList<T>进行分页,起始页为1
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="source"></param>
        /// <param name="FunSelect"></param>
        /// <param name="AspNetPagers"></param>
        /// <returns></returns>
        public static IList<T> GetPage<T>(this IList<T> source, Func<T, T> FunSelect, AspNetPager AspNetPagers)
        {
            return source.Select(FunSelect)
                    .Skip(AspNetPagers.PageSize * (AspNetPagers.CurrentPageIndex - 1))
                    .Take(AspNetPagers.PageSize).ToList<T>();
        }

        /// <summary>
        /// 对IList<T>进行分页,起始页为1
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="source"></param>
        /// <param name="FunWhere"></param>
        /// <param name="FunOrder"></param>
        /// <param name="AspNetPagers"></param>
        /// <returns></returns>
        public static IList<T> GetPage<T>(this IList<T> source, Func<T, bool> FunWhere, Func<T, string> FunOrder, AspNetPager AspNetPagers)
        {

            return source.Where(FunWhere).OrderBy(FunOrder).Select(t => t)
                .Skip(AspNetPagers.PageSize * (AspNetPagers.CurrentPageIndex - 1))
                .Take(AspNetPagers.PageSize).ToList<T>();
        }
        #endregion


        /// <summary>
        /// IEnumerable分页
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="List">实现IEnumerable</param>
        /// <param name="FunWhere">delegate检索条件</param>
        /// <param name="FunOrder">delegate排序</param>
        /// <param name="PageSize">每页显示数</param>
        /// <param name="PageIndex">当前页码</param>
        /// <returns></returns>
        public static IEnumerable<T> GetPagedData<T>(this IEnumerable<T> List, Func<T, bool> FunWhere, Func<T, string> FunOrder, int PageSize = 0, int PageIndex = 0)
        {
            if (PageSize == 0 || PageIndex == 0)
                return List.Where(FunWhere).OrderBy(FunOrder).Select(t => t);

            return List.Where(FunWhere).OrderBy(FunOrder).Select(t => t).Skip((PageIndex - 1) * PageSize).Take(PageSize);

        }
        /*
         * 
         * 实现IEnumerable接口的数组

        string[] Array = { "Hjiang", "Hwang", "Wange", "Hwan", "Hcheng", "Hhoho" };
        
        以下读取第一页

        var sArray = GetIenumberable<String>(Array, r => r.StartsWith("H"), r => r, 1, 1);
              foreach (var s in sArray)
              {
                  Console.WriteLine(s);
              }
        第二页

        var sArray = GetIenumberable<String>(Array, r => r.StartsWith("H"), r => r, 1, 2);
                  foreach (var s in sArray)
                  {
                      Console.WriteLine(s);
                  }
         * 
         * 
         */

        /// <summary>
        /// IEnumerable 条件筛选 倒序排列
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="List"></param>
        /// <param name="FunWhere"></param>
        /// <param name="FunOrder">OrderByDescending</param>
        /// <returns></returns>
        public static IEnumerable<T> Select<T>(this IEnumerable<T> List, Func<T, bool> FunWhere, Func<T, string> FunOrder)
        {
            return List.Where(FunWhere).OrderByDescending(FunOrder).Select(t => t);
        }

        /*
         * 
         * 
                var sArray = GetIenumberable<String>(Array, r => r.StartsWith("H"), r => r);
                  foreach (var s in sArray)
                  {
                      Console.WriteLine(s);
                  }
         */

    }

}
