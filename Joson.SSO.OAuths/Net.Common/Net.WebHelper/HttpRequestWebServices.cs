using System;

using System.Text;
using System.Net;
using System.IO;

using System.CodeDom;
using System.CodeDom.Compiler;
using System.Web.Services.Description;
using System.Collections.Generic;
using System.Reflection;
using Microsoft.CSharp;

namespace Net.Common
{

    public partial class ResponseWebServices
    {

        #region 说明-备注

        /*******************************************************************************************************************************************************************************/

        /******* ----------简介-----------

        //      通常我们在程序中需要调用WebService时，都是通过“添加Web引用”，让VS.NET环境来为我们生成服务代理，然后调用对应的Web服务。这样是使工作简单了，
        //      但是却和提供Web服务的URL、方法名、参数绑定在一起了，这是VS.NET自动为我们提供的强大功能

        //      关键字：C# 动态 调用 WebService 服务 Web服务

        //        通常我们在程序中需要调用WebService时，都是通过“添加Web引用”，让VS.NET环境来为我们生成服务代理，然后调用对应的Web服务。
        //        这样是使工作简单了，但是却和提供Web服务的URL、方法名、参数绑定在一起了，这是VS.NET自动为我们生成Web服务代理的限制。
        //        如果哪一天发布Web服务的URL改变了，则我们需要重新让VS.NET生成代理，并重新编译。在某些情况下，这可能是不能忍受的，我们需要动态调用WebService的能力。
        //        比如我们可以把Web服务的URL保存在配置文件中，这样，当服务URL改变时，只需要修改配置文件就可以了
        //        说了这么多，实际上我们要实现这样的功能：

        //        public static object InvokeWebService(string url,  string methodname, object[] args)

        //        其中，url是Web服务的地址，methodname是要调用服务方法名，args是要调用Web服务所需的参数，返回值就是web服务返回的结果了。 

        //        要实现这样的功能，你需要这几个方面的技能：反射、CodeDom、编程使用C#编译器、WebService。在了解这些知识后，就可以容易的实现web服务的动态调用了：

        /*******************************************************************************************************************************************************************************/

        #endregion


        static SortedList<string, Type> _typeList = new SortedList<string, Type>();


        #region InvokeWebService

        static string GetCacheKey(string url, string className)
        {
            return url.ToLower() + className;
        }
        static Type GetTypeFromCache(string url, string className)
        {
            string key = GetCacheKey(url, className);
            foreach (KeyValuePair<string, Type> pair in _typeList)
            {
                if (key == pair.Key)
                {
                    return pair.Value;
                }
            }

            return null;
        }
        static Type GetTypeFromWebService(string url, string className)
        {
          
            string @namespace = "EnterpriseServerBase.WebService.DynamicWebCalling";
            if ((className == null) || (className == ""))
            {
                className = GetWsClassName(url);
            }


            //获取WSDL
            WebClient wc = new WebClient();
            Stream stream = wc.OpenRead(url + "?WSDL");
            ServiceDescription sd = ServiceDescription.Read(stream);
            ServiceDescriptionImporter sdi = new ServiceDescriptionImporter();
            sdi.AddServiceDescription(sd, "", "");
            CodeNamespace cn = new CodeNamespace(@namespace);

            //生成客户端代理类代码
            CodeCompileUnit ccu = new CodeCompileUnit();
            ccu.Namespaces.Add(cn);
            sdi.Import(cn, ccu);
            CSharpCodeProvider csc = new CSharpCodeProvider();
            ICodeCompiler icc = csc.CreateCompiler();

            //设定编译参数
            CompilerParameters cplist = new CompilerParameters();
            cplist.GenerateExecutable = false;
            cplist.GenerateInMemory = true;
            cplist.ReferencedAssemblies.Add("System.dll");
            cplist.ReferencedAssemblies.Add("System.XML.dll");
            cplist.ReferencedAssemblies.Add("System.Web.Services.dll");
            cplist.ReferencedAssemblies.Add("System.Data.dll");

            //编译代理类
            CompilerResults cr = icc.CompileAssemblyFromDom(cplist, ccu);
            if (true == cr.Errors.HasErrors)
            {
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                foreach (System.CodeDom.Compiler.CompilerError ce in cr.Errors)
                {
                    sb.Append(ce.ToString());
                    sb.Append(System.Environment.NewLine);
                }
                throw new Exception(sb.ToString());
            }

            //生成代理实例，并调用方法
            System.Reflection.Assembly assembly = cr.CompiledAssembly;
            Type t = assembly.GetType(@namespace + "." + className, true, true);

            return t;
        }

        //动态调用web服务
        public static object InvokeWebService(string url, string methodName, object[] args)
        {
            return InvokeWebService(url, null, methodName, args);
        }

        public static object InvokeWebService(string url, string className, string methodName, object[] args)
        {
            try
            {
                Type t = GetTypeFromCache(url, className);
                if (t == null)
                {
                    t = GetTypeFromWebService(url, className);

                    //添加到缓冲中
                    string key = GetCacheKey(url, className);
                    _typeList.Add(key, t);
                }

                object obj = Activator.CreateInstance(t);
                MethodInfo mi = t.GetMethod(methodName);

                return mi.Invoke(obj, args);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.InnerException.Message, new Exception(ex.InnerException.StackTrace));
            }
        }

        private static string GetWsClassName(string wsUrl)
        {
            string[] parts = wsUrl.Split('/');
            string[] pps = parts[parts.Length - 1].Split('.');

            return pps[0];
        }

        #endregion

        #region 使代码段的功能 使用说明

        // 常用WebService汇总
        // http://www.cnblogs.com/tanliang/archive/2010/05/25/1743387.html#2203649


        //上面的注释已经很好的说明了各代码段的功能，下面给个例子看看，这个例子是通过访问http://www.webservicex.net/globalweather.asmx 服务来获取各大城市的天气状况。

        //string url = "http://www.webservicex.net/globalweather.asmx";
        //string[] args = new string[2];
        //args[0] = this.textBox_CityName.Text;
        //args[1] = "China";
        //object result = ResponseWebServices.InvokeWebService(url, "GetWeather", args);
        //this.label_Result.Text = result.ToString();

        //上述的例子中，调用web服务使用了两个参数，第一个是城市的名字，第二个是国家的名字，Web服务返回的是XML文档，可以从其中解析出温度、风力等天气情况。 

        //最后说一下，C#虽然仍属于静态语言之列，但是其动态能力也是很强大的，不信，你可以看看Spring.net的AOP实现，这种“无侵入”的AOP实现比通常的.NET声明式AOP实现（一般是通过AOP Attribute）要漂亮的多。
 
        //string URL = "http://www.webxml.com.cn/WebServices/ChinaZipSearchWebService.asmx";

        //string ServiceName = "getAddressByZipCode";

        //string[] args = new string[2];
        //args[0] = "723112";
        //args[1] = "";

        //object result = Net.Common.ResponseWebServices.InvokeWebService(URL, ServiceName, args);

        //DDL.DataSource = result;

        //DDL.DataValueField = "CITY";
        //DDL.DataTextField = "ADDRESS";

        //DDL.DataBind();


        #endregion

    }
}
