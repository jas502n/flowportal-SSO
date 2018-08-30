<%@ WebHandler Language="C#" Class="YZSoft.Personal.DeleteRules" %>

using System;
using System.Web;
using BPM;
using BPM.Client;

namespace YZSoft.Personal
{
    public class DeleteRules : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
            JsonItemCollection deletedItems = new JsonItemCollection();
            
            try
            {
                int ruleCount = Int32.Parse(context.Request.Params["Count"]);

                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();

                    for (int i = 0; i < ruleCount; i++)
                    {
                        int ruleId = Int32.Parse(context.Request.Params["RuleID" + i.ToString()]);
                        TaskRule.Delete(cn, ruleId);
                        
                        JsonItem deletedItem = new JsonItem();
                        deletedItem.Attributes.Add("RuleID",ruleId);
                        deletedItems.Add(deletedItem);
                    }

                    JsonItem rv = new JsonItem();
                    rv.Attributes.Add("success", true);

                    context.Response.Write(rv.ToString());
                }
            }
            catch (Exception exp)
            {
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", exp.Message);
                rv.Attributes.Add("deletedItems", deletedItems);

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
