<%@ WebHandler Language="C#" Class="YZSoft.Security.CallFunc" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Text;
using BPM;
using BPM.Client;
using BPM.Client.Security;

namespace YZSoft.Security
{
    public class CallFunc : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
            string clientMethod = context.Request.Params["Method"];
            string method = clientMethod;
            if (method != null)
                method = method.Trim();

            if (method == "UserRecordPublic")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);
                    int sidCount = Int32.Parse(context.Request.Params["SIDCount"]);
                    string dataSource = context.Request.Params["DataSource"];
                    string tableName = context.Request.Params["TableName"];
                    string publicPermision = context.Request.Params["PublicPerm"];
                    bool leadershipToken = context.Request.Params["LeadershipToken"] == "1" ? true:false;
                    string comments = context.Request.Params["Comments"];
                    
                    BPMObjectNameCollection permisions = new BPMObjectNameCollection();
                    permisions.Add(publicPermision);

                    SIDPairCollection sidPairs = new SIDPairCollection();
                    for (int j = 0; j < sidCount; j++)
                    {
                        string sid = context.Request.Params["SID" + j.ToString()];
                        sidPairs.Add(new SIDPair(ACERoleType.UserSID,sid));
                    }

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            string key = context.Request.Params["ID" + i.ToString()];

                            RecordSecurityManager.Public(cn, tableName, key, sidPairs, permisions, leadershipToken, comments, dataSource);
                            
                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", key);
                            processedItems.Add(processedItem);
                        }

                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);
                        rv.Attributes.Add("processedItems", processedItems);

                        context.Response.Write(rv.ToString());
                    }
                }
                catch (Exception exp)
                {
                    JsonItem rv = new JsonItem();
                    rv.Attributes.Add("success", false);
                    rv.Attributes.Add("errorMessage", exp.Message);
                    rv.Attributes.Add("processedItems", processedItems);

                    context.Response.Write(rv.ToString());
                }
            }
            else if (method == "UserRecordAssignPermision")
            {
                try
                {
                    string tableName = context.Request.Params["TableName"];
                    string key = context.Request.Params["Key"];
                    int ACECount = Int32.Parse(context.Request.Params["ACECount"]);

                    RDACL acl = new RDACL();
                    for (int i = 0; i < ACECount; i++)
                    {                        
                        ACERoleType SIDType = (ACERoleType)Enum.Parse(typeof(ACERoleType), context.Request.Params["SIDType" + i.ToString()]);
                        string sid = context.Request.Params["SID" + i.ToString()];
                        int permCount = Int32.Parse(context.Request.Params["PermCount" + i.ToString()]);
                        
                        for (int j = 0 ; j < permCount ; j++)
                        {
                            RDACE ace = new RDACE();
                            acl.ACEs.Add(ace);
                            
                            ace.SIDType = SIDType;
                            ace.SID = sid;
                            ace.Permision = context.Request.Params["Name" + i.ToString() + "_" + j.ToString()];
                            ace.LeadershipToken = context.Request.Params["LToken" + i.ToString() + "_" + j.ToString()] == "1" ? true:false;       
                        }
                    }
                    
                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        RecordSecurityManager.SaveACL(cn, tableName, key, acl);
                        
                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);
                        rv.Attributes.Add("message", Resources.YZStrings.Aspx_UserRecordPublic_Success);

                        context.Response.Write(rv.ToString());
                    }
                }
                catch (Exception exp)
                {
                    JsonItem rv = new JsonItem();
                    rv.Attributes.Add("success", false);
                    rv.Attributes.Add("errorMessage", exp.Message);
                    context.Response.Write(rv.ToString());
                }
            }
            else
            {
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", String.Format(Resources.YZStrings.Aspx_UnknowCommand, clientMethod));

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
