<%@ WebHandler Language="C#" Class="YZSoft.BPM.CallFunc" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Text;
using System.Web.Configuration;
using BPM;
using BPM.Client;
using BPM.Client.Security;

namespace YZSoft.BPM
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

            if (method == "DeleteDrafts")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            Guid draftGuid = new Guid(context.Request.Params["DraftID" + i.ToString()]);
                            TaskManager.DeleteDraft(cn, draftGuid);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("DraftID", draftGuid.ToString());
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
            else if (method == "PickupShareTaskExt")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();
                        
                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int stepid = Int32.Parse(context.Request.Params["StepID" + i.ToString()]);
                            BPMProcStep.PickupShareStep(cn, stepid);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
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
            else if (method == "PutbackShareTaskExt")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int stepid = Int32.Parse(context.Request.Params["StepID" + i.ToString()]);
                            BPMProcStep.PutbackShareStep(cn, stepid);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
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
            else if (method == "BatchApprove")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();
                        
                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int stepid = Int32.Parse(context.Request.Params["StepID" + i.ToString()]);
                            PostResult result = BPMProcStep.Approve(cn, stepid);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
                            processedItem.Attributes.Add("Result", YZStringHelper.GetPostResultDisplayStringShort(result));
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
            else if (method == "Reject")
            {
                try
                {
                    int taskid = Int32.Parse(context.Request.Params["TaskID"]);
                    string comments = context.Request.Params["Comments"];
                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();
                        BPMTask.Reject(cn, taskid, comments);

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
                    context.Response.Write(rv.ToString());
                }
            }
            else if (method == "ReturnToInitiator")
            {
                try
                {
                    int taskid = Int32.Parse(context.Request.Params["TaskID"]);
                    string comments = context.Request.Params["Comments"];

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();
                        User user = BPMTask.RecedeRestart(cn, taskid, comments);

                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);
                        rv.Attributes.Add("UserFriendlyName", user.FriendlyName);
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
            else if (method == "Transfer")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int stepid = Int32.Parse(context.Request.Params["StepID"]);
                    string memberFullName = context.Request.Params["MemberFullName"];
                    string comments = context.Request.Params["Comments"];

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        User user = BPMProcStep.Transfer(cn, stepid, memberFullName);

                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);
                        rv.Attributes.Add("UserFriendlyName", user.FriendlyName);

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
            else if (method == "InviteIndicate")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int taskid = Int32.Parse(context.Request.Params["TaskID"]);
                    int userCount = Int32.Parse(context.Request.Params["UserCount"]);
                    string comments = context.Request.Params["Comments"];

                    BPMObjectNameCollection accounts = new BPMObjectNameCollection();
                    for (int j = 0; j < userCount; j++)
                    {
                        string account = context.Request.Params["Account" + j.ToString()];
                        accounts.Add(account);
                    }

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        UserCollection users = BPMTask.InviteIndicate(cn, taskid, accounts, comments);

                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);
                        rv.Attributes.Add("UserNameList", YZStringHelper.GetUserNameListString(users));

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
            else if (method == "Inform")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int taskid = Int32.Parse(context.Request.Params["TaskID"]);
                    int userCount = Int32.Parse(context.Request.Params["UserCount"]);
                    string comments = context.Request.Params["Comments"];

                    BPMObjectNameCollection accounts = new BPMObjectNameCollection();
                    for (int j = 0; j < userCount; j++)
                    {
                        string account = context.Request.Params["Account" + j.ToString()];
                        accounts.Add(account);
                    }

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        UserCollection users = BPMTask.Inform(cn, taskid, accounts, comments);

                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);
                        rv.Attributes.Add("UserNameList", YZStringHelper.GetUserNameListString(users));

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
            else if (method == "Public")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int taskid = Int32.Parse(context.Request.Params["TaskID"]);
                    int userCount = Int32.Parse(context.Request.Params["UserCount"]);
                    string comments = context.Request.Params["Comments"];

                    UserCollection users = new UserCollection();
                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int j = 0; j < userCount; j++)
                        {
                            string account = context.Request.Params["Account" + j.ToString()];
                            User user = BPMTask.Public(cn, taskid, account);
                            users.Add(user);
                        }

                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);
                        rv.Attributes.Add("UserNameList", YZStringHelper.GetUserNameListString(users));

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
            else if (method == "Jump")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                string sn = context.Request.Params["sn"];
                try
                {
                    int taskid = Int32.Parse(context.Request.Params["TaskID"]);
                    int fromStepCount = Int32.Parse(context.Request.Params["FromStepCount"]);
                    string toStepName = context.Request.Params["ToStepName"];

                    List<int> fromStepIDs = new List<int>();
                    for (int i = 0; i < fromStepCount; i++)
                    {
                        int stepid = Int32.Parse(context.Request.Params["FromStepID" + i.ToString()]);
                        fromStepIDs.Add(stepid);
                    }

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        BPMProcStep step = BPMTask.Jump(cn, taskid, fromStepIDs.ToArray(), toStepName);

                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);
                        rv.Attributes.Add("StepName", step.NodeName);
                        rv.Attributes.Add("UserFriendlyName", YZStringHelper.GetUserFriendlyName(step.RecipientAccount, step.RecipientFullName));

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
            else if (method == "Abort")
            {
                try
                {
                    int taskid = Int32.Parse(context.Request.Params["TaskID"]);
                    string comments = context.Request.Params["Comments"];
                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();
                        BPMTask.Abort(cn, taskid, comments);

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
                    context.Response.Write(rv.ToString());
                }
            }
            else if (method == "Delete")
            {
                try
                {
                    int taskid = Int32.Parse(context.Request.Params["TaskID"]);
                    string comments = context.Request.Params["Comments"];
                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();
                        BPMTask.Delete(cn, taskid, comments);

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
                    context.Response.Write(rv.ToString());
                }
            }
            else if (method == "PutbackShareTask")
            {
                try
                {
                    int stepid = Int32.Parse(context.Request.Params["StepID"]);
                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();
                        BPMProcStep.PutbackShareStep(cn, stepid);

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
                    context.Response.Write(rv.ToString());
                }
            }
            else if (method == "PickupShareTask")
            {
                try
                {
                    int stepid = Int32.Parse(context.Request.Params["StepID"]);
                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();
                        BPMProcStep.PickupShareStep(cn, stepid);

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
                    context.Response.Write(rv.ToString());
                }
            }
            else if (method == "PickbackRestart")
            {
                try
                {
                    int taskid = Int32.Parse(context.Request.Params["TaskID"]);
                    string comments = context.Request.Params["Comments"];
                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();
                        BPMProcStep step = BPMTask.PickBackRestart(cn, taskid, comments);

                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);
                        rv.Attributes.Add("StepName", step.NodeName);
                        rv.Attributes.Add("UserFriendlyName", YZStringHelper.GetUserFriendlyName(step.RecipientAccount, step.RecipientFullName));
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
            else if (method == "Pickback")
            {
                try
                {
                    int taskid = Int32.Parse(context.Request.Params["TaskID"]);
                    string comments = context.Request.Params["Comments"];
                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();
                        BPMProcStep step = BPMTask.PickBack(cn, taskid, comments);

                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);
                        rv.Attributes.Add("StepName", step.NodeName);
                        rv.Attributes.Add("UserFriendlyName", YZStringHelper.GetUserFriendlyName(step.RecipientAccount, step.RecipientFullName));
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
            else if (method == "RecedeBack")
            {
                try
                {
                    int stepid = Int32.Parse(context.Request.Params["StepID"]);
                    int count = Int32.Parse(context.Request.Params["Count"]);
                    string comments = context.Request.Params["Comments"];

                    List<int> toStepIDs = new List<int>();
                    for (int i = 0; i < count; i++)
                    {
                        int tostepid = Int32.Parse(context.Request.Params["ToStepID" + i.ToString()]);
                        toStepIDs.Add(tostepid);
                    }

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();
                        BPMStepCollection newSteps = BPMProcStep.RecedeBack(cn, stepid, toStepIDs.ToArray(), comments);
                        List<string> to = new List<string>();
                        foreach (BPMProcStep step in newSteps)
                            to.Add(String.Format("{0}[{1}]",step.NodeName,YZStringHelper.GetUserFriendlyName(step.RecipientAccount, step.RecipientFullName)));

                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);
                        rv.Attributes.Add("tosteps", String.Join(";",to.ToArray()));

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
            else if (method == "DirectSend")
            {
                try
                {
                    int stepid = Int32.Parse(context.Request.Params["StepID"]);

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();
                        BPMStepCollection newsteps = BPMProcStep.DirectSend(cn, stepid);

                        List<string> to = new List<string>();
                        foreach (BPMProcStep step in newsteps)
                            to.Add(String.Format("{0}[{1}]", step.NodeName, YZStringHelper.GetUserFriendlyName(step.RecipientAccount, step.RecipientFullName)));

                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);
                        rv.Attributes.Add("tosteps", String.Join(";", to.ToArray()));

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
            else if (method == "RejectExt")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);
                    string comments = context.Request.Params["Comments"];

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int taskid = Int32.Parse(context.Request.Params["TaskID" + i.ToString()]);
                            BPMTask.Reject(cn, taskid, comments);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
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
            else if (method == "AboutExt")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);
                    string comments = context.Request.Params["Comments"];

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int taskid = Int32.Parse(context.Request.Params["TaskID" + i.ToString()]);
                            BPMTask.Abort(cn, taskid, comments);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
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
            else if (method == "DeleteExt")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);
                    string comments = context.Request.Params["Comments"];

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int taskid = Int32.Parse(context.Request.Params["TaskID" + i.ToString()]);
                            BPMTask.Delete(cn, taskid, comments);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
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
            else if (method == "Restore")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int taskid = Int32.Parse(context.Request.Params["TaskID" + i.ToString()]);
                            BPMTask.Continue(cn, taskid);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
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
            else if (method == "ReturnToInitiatorExt")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);
                    string comments = context.Request.Params["Comments"];

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int taskid = Int32.Parse(context.Request.Params["TaskID" + i.ToString()]);
                            BPMTask.RecedeRestart(cn, taskid, comments);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
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
            else if (method == "PickbackRestartExt")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);
                    string comments = context.Request.Params["Comments"];

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int taskid = Int32.Parse(context.Request.Params["TaskID" + i.ToString()]);
                            BPMTask.PickBackRestart(cn, taskid, comments);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
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
            else if (method == "PickbackExt")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);
                    string comments = context.Request.Params["Comments"];

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int taskid = Int32.Parse(context.Request.Params["TaskID" + i.ToString()]);
                            BPMTask.PickBack(cn, taskid, comments);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
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
            else if (method == "TransferExt")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);
                    string memberFullName = context.Request.Params["MemberFullName"];

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int stepid = Int32.Parse(context.Request.Params["StepID" + i.ToString()]);
                            BPMProcStep.Transfer(cn, stepid, memberFullName);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
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
            else if (method == "AssignOwner")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);
                    string memberFullName = context.Request.Params["MemberFullName"];

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int stepid = Int32.Parse(context.Request.Params["StepID" + i.ToString()]);
                            BPMProcStep.AssignOwner(cn, stepid, memberFullName);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
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
            else if (method == "PublicExt")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);
                    int userCount = Int32.Parse(context.Request.Params["UserCount"]);

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int taskid = Int32.Parse(context.Request.Params["TaskID" + i.ToString()]);

                            for (int j = 0; j < userCount; j++)
                            {
                                string account = context.Request.Params["Account" + j.ToString()];
                                BPMTask.Public(cn, taskid, account);
                            }

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
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
            else if (method == "InviteIndicateExt")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);
                    int userCount = Int32.Parse(context.Request.Params["UserCount"]);
                    string comments = context.Request.Params["Comments"];

                    BPMObjectNameCollection accounts = new BPMObjectNameCollection();
                    for (int j = 0; j < userCount; j++)
                    {
                        string account = context.Request.Params["Account" + j.ToString()];
                        accounts.Add(account);
                    }

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int taskid = Int32.Parse(context.Request.Params["TaskID" + i.ToString()]);

                            BPMTask.InviteIndicate(cn, taskid, accounts, comments);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
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
            else if (method == "InformExt")
            {
                JsonItemCollection processedItems = new JsonItemCollection();
                try
                {
                    int count = Int32.Parse(context.Request.Params["Count"]);
                    int userCount = Int32.Parse(context.Request.Params["UserCount"]);
                    string comments = context.Request.Params["Comments"];

                    BPMObjectNameCollection accounts = new BPMObjectNameCollection();
                    for (int j = 0; j < userCount; j++)
                    {
                        string account = context.Request.Params["Account" + j.ToString()];
                        accounts.Add(account);
                    }

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        for (int i = 0; i < count; i++)
                        {
                            int id = Int32.Parse(context.Request.Params["ID" + i.ToString()]);
                            int taskid = Int32.Parse(context.Request.Params["TaskID" + i.ToString()]);

                            BPMTask.Inform(cn, taskid, accounts, comments);

                            JsonItem processedItem = new JsonItem();
                            processedItem.Attributes.Add("ID", id);
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
            else if (method == "CancelIndicateInvite")
            {
                try
                {
                    int stepid = Int32.Parse(context.Request.Params["StepID"]);

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        BPMTask.CancelInviteIndicate(cn, stepid);

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

                    context.Response.Write(rv.ToString());
                }
            }
            else if (method == "CancelInform")
            {
                try
                {
                    int stepid = Int32.Parse(context.Request.Params["StepID"]);

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        BPMTask.CancelInform(cn, stepid);

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

                    context.Response.Write(rv.ToString());
                }
            }
            else if (method == "SubmitAuth")
            {
                try
                {
                    int stepid = Int32.Parse(context.Request.Params["StepID"]);
                    string pwd = context.Request.Params["Password"];

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        string uid = null;
                        if (stepid != -1)
                        {
                            BPMProcStep step = BPMProcStep.Load(cn, stepid);
                            uid = step.RecipientAccount;
                        }
                        else
                        {
                            uid = cn.UID;
                        }

                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);

                        if (BPMConnection.Authenticate(YZAuthHelper.BPMServerName, YZAuthHelper.BPMServerPort, uid, pwd, out uid))
                            rv.Attributes.Add("pass", true);
                        else
                            rv.Attributes.Add("pass", false);

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
            else if (method == "SignAuth")
            {
                try
                {
                    string account = context.Request.Params["Account"];
                    string pwd = context.Request.Params["Password"];

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        if (String.IsNullOrEmpty(account))
                            account = cn.UID;

                        JsonItem rv = new JsonItem();
                        rv.Attributes.Add("success", true);

                        if (BPMConnection.Authenticate(YZAuthHelper.BPMServerName, YZAuthHelper.BPMServerPort, account, pwd, out account))
                            rv.Attributes.Add("pass", true);
                        else
                            rv.Attributes.Add("pass", false);

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
            else if (method == "GetReadToken")
            {
                try
                {
                    string strTaskID = context.Request.Params["TaskID"];
                    string token = YZSecurityHelper.GenTaskAccessToken(Convert.ToInt32(strTaskID));

                    JsonItem rv = new JsonItem();
                    rv.Attributes.Add("success", true);
                    rv.Attributes.Add("token", token);
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
