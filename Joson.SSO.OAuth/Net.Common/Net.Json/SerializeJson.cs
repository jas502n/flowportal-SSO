using System;
using System.Collections.Generic;

using System.Text;
using System.IO;

using System.Runtime.Serialization;


//using System.Web.Extension;
//using System.Web.Script.JavaScriptSerializer;

//前台调用的JS文件需要用到jQuery.js和json2.js
//后台引用空间System.Runtime.Serialization和System.Runtime.Serialization.Json

namespace Net.Common
{
    public static partial class JosonSerializer
    {

        /* 注意部分 很重要
          
         * DataContractJsonSerializer在.NET Framework 3.5中引入,   
         * 并且微软同时将JavaScriptSerializer打上了过时（obsolete）的标签，编译时就会有警告出现   
         * 而在.NET Framework 3.5 SP1中，微软又将JavaScriptSerializer的“过时”标签给去掉了

         * 如果一定要使用DataContractJsonSerializer，只有当为类加上[DataContract]属性，
         * 并且为需要序列化的属性加上[DataMember]后，
         * 使用DataContractJsonSerializer才可以生成干净、整洁的JSON数据。

         * 而当我们使用一些不能修改的类定义，如上面的Users类定义，我们没有权限去修改其定义，
         * 那么就可以使用JavaScriptSerializer去进行JSON序列化。
                
         *     [Serializable]  JavaScriptSerializer 
         *     
               [DataContract]  DataContractJsonSerializer
               [DataMember]    DataContractJsonSerializer
         * 
         *     [ScriptIgnore]      JavaScriptSerializer 
               [IgnoreDataMember]  DataContractJsonSerializer
         *     [XmlIgnore]
         *     
         *     如果一个类被标记为 [Serializable]而没标记为 [DataContract] 
         *     那么 JavaScriptSerializer 序列化后 生成Json 字符串为类成员字段
         *     而用 DataContractJsonSerializer 序列化后 生成Json并非成员名称字符串
         *     并且此时可以用  [ScriptIgnore] [NonSerialized] 
         *     
         *      JavaScriptSerializer：可以用 [ScriptIgnore] 忽略某些字段 属性
         *      {"UserID":1,"UserName":"Parry","UserEmail":"parry@cnblogs.com","TestProperty":"TestPropertyValue"}
         *      
         *      DataContractJsonSerializer：[NonSerialized] 忽略某些字段 属性
         *      {"_testProperty":"TestPropertyValue","<UserEmail>k__BackingField":"parry@cnblogs.com",
                "<UserID>k__BackingField":1,"<UserName>k__BackingField":"Parry"}
         * 
         *     如果一个类被标记为 [Serializable]而且同时标记为 [DataContract] 
         *     那么 JavaScriptSerializer 序列化后 生成Json 字符串为类成员字段
         *     而用 DataContractJsonSerializer 序列化后 生成Json并非成员名称字符串
         *     并且此时可以用  [ScriptIgnore] [DataMember] 
         *     
         *      JavaScriptSerializer：可以用 [ScriptIgnore] 忽略某些字段 属性
         *      {"UserID":1,"UserName":"Parry","UserEmail":"parry@cnblogs.com","TestProperty":"TestPropertyValue"}
         *      
         *      DataContractJsonSerializer：[DataMember] 指定序列化哪些字段 属性
         *      {"UserID":1,"UserName":"Parry","UserEmail":"parry@cnblogs.com"}
         *      
         *     如果一个类没被标记为 [Serializable] 和 [DataContract] 
         *     那么 JavaScriptSerializer DataContractJsonSerializer 序列化后 生成Json 字符串为类成员字段
         *     此时可以用  [ScriptIgnore] [IgnoreDataMember] 
         *     
         *      JavaScriptSerializer：可以用 [ScriptIgnore] 忽略某些字段 属性
         *      {"UserID":1,"UserName":"Parry","UserEmail":"parry@cnblogs.com","TestProperty":"TestPropertyValue"}
         *      
         *      DataContractJsonSerializer：[IgnoreDataMember] 指定忽略某些字段 属性
         *      {"UserID":1,"UserName":"Parry","UserEmail":"parry@cnblogs.com"}
         *      
         *     总结如下：
         *     
         *     [Serializable]  JavaScriptSerializer 常用搭配
         *     [ScriptIgnore]  JavaScriptSerializer 上一条存在情况下  可用此标记指定序列字段属性
         *     
               [DataContract]  DataContractJsonSerializer 常用搭配
               [DataMember]    DataContractJsonSerializer 上一条存在情况下 可用此标记指定序列字段属性
         *     [IgnoreDataMember]  DataContractJsonSerializer 第一条不存在情况下 用此标记忽略不需要的字段属性
         * 
               参考文档： http://www.cnblogs.com/parry/archive/2012/12/04/diff_json_method.html
         * 
         *     [XmlIgnore]
         */

        /// <summary>
        /// Json序列化,用于发送到客户端
        /// </summary>
        /// <param name="item"></param>
        /// <param name="JavaScriptSerializer">是否使用JavaScriptSerializer</param>
        /// <returns></returns>
        public static string Serializer<T>(this T item, bool JavaScriptSerializer = true)
        {
            string JsonObjItem = string.Empty;

            if (JavaScriptSerializer)
            {
                JsonObjItem = JosonSerializer.Serializer(item);
            }
            else
            {
                //DataContractJsonSerializer在.NET Framework 3.5中引入,
                //并且微软同时将JavaScriptSerializer打上了过时（obsolete）的标签，编译时就会有警告出现
                //而在.NET Framework 3.5 SP1中，微软又将JavaScriptSerializer的“过时”标签给去掉了

                #region DataContractJsonSerializer

                //DataContractJsonSerializer serializer = new DataContractJsonSerializer(item.GetType());
                //using (MemoryStream ms = new MemoryStream())
                //{
                //    serializer.WriteObject(ms, item);

                //    StringBuilder sb = new StringBuilder();
                //    //sb.Append(Encoding.Default.GetString(ms.ToArray()));

                //    sb.Append(Encoding.UTF8.GetString(ms.ToArray()));


                //    JsonObjItem = sb.ToString();
                //} 

                #endregion

            }

            return JsonObjItem;
        }



    }

}
