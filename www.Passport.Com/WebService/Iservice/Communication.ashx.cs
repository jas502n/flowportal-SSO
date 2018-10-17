using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iAnywhere.YZSoft.services
{
    using BPM;
    using BPM.Client;
    using BPM.Client.Security;
    using Net.MobileHelper;
    using System.Data;

    public class Communication : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            try
            {

                YZAuthHelper.OAuth();
                //YZAuthHelper.AshxAuthCheck();

                string loginUid = YZAuthHelper.LoginUserAccount;

                IDBProvider dbProvider = YZDBProviderManager.CurrentProvider;

                string method = context.Request.Params["method"];
                JsonItem rv = new JsonItem();

                // System.Threading.Thread.Sleep(2000);

                if (method == "Send")
                {
                    //http://oauth.skyworthdigital.com/WebService/Iservice/Communication.ashx?UserAccount=SDT12872&restype=1&message=添加一条哦啊讨论啊&resId=216928&method=Send

                    YZResourceType resType = (YZResourceType)Enum.Parse(typeof(YZResourceType), context.Request.Params["resType"], true);
                    string resId = context.Request.Params["resId"];
                    string msg = context.Request.Params["message"];

                    if (!string.IsNullOrEmpty(msg.Trim()))
                    {
                        using (IDbConnection cn = dbProvider.OpenConnection())
                        {
                            YZMessage message = new YZMessage(loginUid, DateTime.Now, resType, resId, msg);
                            message.Insert(cn);

                            YZCommunicationManager.UpdateReaded(cn, loginUid, resType, resId, message.id);

                            JsonItem result = new JsonItem();
                            rv.Attributes.Add("message", result);
                            message.Serialize(result);
                        }
                    }

                }
                else if (method == "GetTaskCommunicationList")
                {
                    GridPageInfo gridPageInfo = new GridPageInfo(context);

                    SecurityToken token = null;
                    using (BPMConnection bpmcn = new BPMConnection())
                    {
                        bpmcn.WebOpen();
                        token = bpmcn.Token;
                    }

                    using (IDbConnection cn = dbProvider.OpenConnection())
                    {
                        //http://oauth.skyworthdigital.com/WebService/Iservice/Communication.ashx?UserAccount=SDT12872&method=GetTaskCommunicationList&SearchType=QuickSearch&Keyword=216928
                        //http://oauth.skyworthdigital.com/WebService/Iservice/Communication.ashx?UserAccount=SDT12872&method=GetTaskCommunicationList&SearchType=QuickSearch&Keyword=REQ2014090001

                        using (BPMConnection bpmcn = new BPMConnection())
                        {
                            bpmcn.WebOpen();

                            IDbCommand cmd = dbProvider.GetTaskCommunicationListCommand(cn, loginUid, token.SIDs, dbProvider.FilterStringCommunicationListTaskTableFilter, dbProvider.FilterStringCommunicationMessageTableFilter, gridPageInfo.Start, gridPageInfo.Limit);
                            cmd.Connection = cn;

                            JsonItemCollection children = new JsonItemCollection();
                            rv.Attributes.Add("children", children);

                            using (YZReader reader = new YZReader(cmd.ExecuteReader()))
                            {
                                while (reader.Read())
                                {
                                    JsonItem item = new JsonItem();
                                    children.Add(item);

                                    string ownerAccount = reader.ReadString("OwnerAccount");
                                    User owner = User.TryGetUser(bpmcn, ownerAccount);
                                    string ownerDisplayName = owner != null ? owner.DisplayName : ownerAccount;

                                    string lastMsgUid = reader.ReadString("uid");
                                    User lastMsgUser = User.TryGetUser(bpmcn, lastMsgUid);
                                    string lastMessageUserShortName = lastMsgUser != null ? lastMsgUser.ShortName : lastMsgUid;

                                    TaskState state = (TaskState)reader.ReadEnum("State", typeof(TaskState), TaskState.Unknow);
                                    int taskid = reader.ReadInt32("TaskID");

                                    item.Attributes["tid"] = taskid;
                                    item.Attributes["sn"] = reader.ReadString("SerialNum");
                                    item.Attributes["pn"] = reader.ReadString("ProcessName");
                                    item.Attributes["user"] = YZStringHelper.GetUserShortName(ownerAccount, ownerDisplayName);
                                    item.Attributes["state"] = state.ToString();
                                    item.Attributes["stateText"] = YZStringHelper.GetTaskStateDisplayString(bpmcn, state, taskid);
                                    item.Attributes["date"] = YZStringHelper.DateToStringL(reader.ReadDateTime("CreateAt"));

                                    string desc = Convert.ToString(reader.ReadString("Description"));



                                    item.Attributes["desc"] = String.IsNullOrEmpty(desc) ? "无内容摘要" : desc.CutStrHTML(isHTML: true);

                                    item.Attributes["count"] = reader.ReadInt32("count");
                                    item.Attributes["total"] = reader.ReadInt32("total");
                                    item.Attributes["Id"] = reader.ReadInt32("Id");
                                    item.Attributes["lastMessageId"] = reader.ReadInt32("lastMsgId");
                                    item.Attributes["lastMessageUid"] = lastMsgUid;
                                    item.Attributes["lastMessageUserShortName"] = lastMessageUserShortName;
                                    item.Attributes["lastMessageDate"] = YZStringHelper.DateToStringL(reader.ReadDateTime("date"));
                                    item.Attributes["lastMessage"] = reader.ReadString("message");
                                }
                            }
                        }

                        rv.Attributes["newMessageCount"] = dbProvider.GetTaskCommunicationNewMessageCount(cn, loginUid, token.SIDs);
                    }
                }
                else if (method == "GetBadge")
                {
                    YZResourceType resType = (YZResourceType)Enum.Parse(typeof(YZResourceType), context.Request.Params["resType"], true);
                    string resId = context.Request.Params["resId"];

                    using (IDbConnection cn = dbProvider.OpenConnection())
                    {
                        rv.Attributes["total"] = YZCommunicationManager.GetMessageCount(cn, resType, resId);
                        rv.Attributes["newMessageCount"] = YZCommunicationManager.GetNewMessageCount(cn, loginUid, resType, resId);
                    }
                }
                else if (method == "UpdateReaded")
                {
                    YZResourceType resType = (YZResourceType)Enum.Parse(typeof(YZResourceType), context.Request.Params["resType"], true);
                    string resId = context.Request.Params["resId"];
                    string strLastId = context.Request.Params["lastid"];
                    if (String.IsNullOrEmpty(strLastId))
                        strLastId = "-1";
                    int lastId = Convert.ToInt32(strLastId);

                    using (IDbConnection cn = dbProvider.OpenConnection())
                    {
                        YZCommunicationManager.UpdateReaded(cn, loginUid, resType, resId, lastId);
                    }
                }
                else
                {
                    //http://bpm.sdt.com/YZSoft/Forms/XForm/%E5%B7%A5%E4%BD%9C%E6%8A%A5%E5%91%8A/%E5%B7%A5%E4%BD%9C%E6%8A%A5%E5%91%8A.aspx?tid=216928
                    //http://oauth.skyworthdigital.com/WebService/Iservice/Communication.ashx?UserAccount=SDT12872&restype=1&lastid=306&resId=216928

                    YZResourceType resType = (YZResourceType)Enum.Parse(typeof(YZResourceType), context.Request.Params["resType"], true);
                    string resId = context.Request.Params["resId"];
                    string strLastId = context.Request.Params["lastid"];
                    if (String.IsNullOrEmpty(strLastId))
                        strLastId = "-1";
                    int lastId = Convert.ToInt32(strLastId);

                    //获得数据
                    JsonItemCollection children = new JsonItemCollection();
                    rv.Attributes.Add("children", children);

                    using (BPMConnection bpmcn = new BPMConnection())
                    {
                        bpmcn.WebOpen();

                        using (IDbConnection cn = dbProvider.OpenConnection())
                        {
                            YZMessageCollection messages = YZCommunicationManager.GetNewMessages(cn, resType, resId, lastId);
                            messages.Serialize(bpmcn, children);
                        }
                    }
                }


                //输出数据
                context.Response.AppendHeader("Access-Control-Allow-Origin", "*");      // 响应类型 
                context.Response.AppendHeader("Access-Control-Allow-Methods", "POST");  // 响应头设置 
                context.Response.AppendHeader("Access-Control-Allow-Headers", "x-requested-with,content-type");

                context.Response.Charset = "gb2312"; //设置字符集类型  
                context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
                context.Response.ContentType = "application/json;charset=gb2312";

                //输出数据
                rv.Attributes.Add("success", true);
                context.Response.Write(rv.ToString());
            }
            catch (Exception e)
            {
                JsonItem rv = new JsonItem();

                context.Response.AppendHeader("Access-Control-Allow-Origin", "*");      // 响应类型 
                context.Response.AppendHeader("Access-Control-Allow-Methods", "POST");  // 响应头设置 
                context.Response.AppendHeader("Access-Control-Allow-Headers", "x-requested-with,content-type");

                context.Response.Charset = "gb2312"; //设置字符集类型  
                context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
                context.Response.ContentType = "application/json;charset=gb2312";

                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", e.Message);
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