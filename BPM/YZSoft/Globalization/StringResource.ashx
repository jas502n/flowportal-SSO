<%@ WebHandler Language="C#" Class="YZSoft.Globalization.StringResource" %>

using System;
using System.Web;
using System.Resources;
using System.Globalization;
using System.Collections.Specialized;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using Resources;

namespace YZSoft.Globalization
{
    public class StringResource : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            try
            {
                JsonItem rv = new JsonItem();
                
                string strlcid = context.Request.Params["lcid"];
                int lcid = YZLangHelper.CurrentCulture.LCID;
                if (!String.IsNullOrEmpty(strlcid))
                    lcid = Int32.Parse(strlcid);
                
                string assemblyName = context.Request.Params["assembly"];
                string nameSpace = context.Request.Params["namespace"] + "_";

                string typeName = "Resources." + assemblyName;
                Type type = typeof(Resources.YZStrings);
                ResourceManager mgr = new ResourceManager(typeName, type.Assembly);
                ResourceSet rsset = mgr.GetResourceSet(new CultureInfo(lcid), true, true);

                JsonItem jsonStrings = new JsonItem();
                rv.Attributes.Add("strings",jsonStrings);
                
                IDictionaryEnumerator enumerator = rsset.GetEnumerator();
                while (enumerator.MoveNext())
                {
                    string key  = enumerator.Key as string;
                    string value = enumerator.Value as string;

                    if (key.StartsWith(nameSpace, true, null))
                    {
                        value = value.Replace("\\n", "\n");
                        jsonStrings.Attributes.Add(key, value);
                    }
                }

                rv.Attributes.Add("success", true);
                context.Response.Write(rv.ToString());
            }
            catch (Exception exp)
            {
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", exp.Message);
                context.Response.Write(rv.ToString());
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
