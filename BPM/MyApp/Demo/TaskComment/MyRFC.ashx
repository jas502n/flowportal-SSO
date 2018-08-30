<%@ WebHandler Language="C#" Class="YZSoft_MyApp_Task_MyRFC" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using BPM;
using BPM.Client;
using BPM.Client.Security;
using YZSoft;
using RTXSAPILib;
using RTXClient;
using System.Text;

public class YZSoft_MyApp_Task_MyRFC : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        string method = context.Request.Params["Method"];
        if (method == "Add")
        {
            try
            {
                int taskid = Int32.Parse(context.Request.Params["TaskId"]);
                int parentid = Int32.Parse(context.Request.Params["ParentId"]);
                string comment = context.Request.Params["Comment"].Replace("'","\"");
                string appname = context.Request.Params["AppName"].Replace("'","\"");
                int appkey = Int32.Parse(context.Request.Params["AppKey"]);
                string check = context.Request.Params["checked"].Replace("'", "\"");
                string purl = context.Request.Params["purl"].Replace("'", "\"")+"?tid="+taskid.ToString();
                
                using (SqlConnection cn = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BPMDB"].ConnectionString))
                {
                    BPMConnection bc = new BPMConnection();
                    string loginaccount = "SendMessage";
                    string pwd = "sendmessage";
                    string email = "";
                    bc.Open("172.28.0.13", loginaccount, pwd);
                    User user = User.TryGetUser(bc, YZAuthHelper.LoginUserAccount);
                    appname = user.DisplayName;
                    cn.Open();

                    //if (check == "Y")
                    //{
                        //获取邮件地址
                        string sql = "select  distinct OwnerAccount from BPMInstProcSteps where OwnerAccount is not null  and TaskID=" + taskid;
                        SqlDataAdapter sda = new SqlDataAdapter(sql, cn);
                        DataSet dsUserInfo = new DataSet();
                        sda.Fill(dsUserInfo);

                        string hrid = "";
                        DataTable dtUserInfo = dsUserInfo.Tables[0];
                        for (int j = 0; j < dtUserInfo.Rows.Count; j++)
                        {
                            hrid = dtUserInfo.Rows[j]["OwnerAccount"].ToString();
                            User userMail = User.TryGetUser(bc, hrid);

                            if (userMail != null)
                            {
                                email += userMail.EMail + ";";
                            }
                        }

                        email = email.TrimEnd(';');

                        //获取表单信息
                        sql = "select ProcessName,SerialNum,Description from dbo.BPMInstTasks where TaskID=" + taskid;
                        sda = new SqlDataAdapter(sql, cn);
                        DataSet dsTitle = new DataSet();
                        sda.Fill(dsTitle);

                        string Title = dsTitle.Tables[0].Rows[0][0].ToString() + "【" + dsTitle.Tables[0].Rows[0][1].ToString() + "】有一个讨论信息";
                    
                    //--RTX 提醒----------------
                        StringBuilder msgStr = new StringBuilder();
                        msgStr.Append("评论人：");
                        msgStr.Append(appname);
                        msgStr.Append("\n评论内容：");
                        msgStr.Append(comment.Replace("<br />", "\n"));
                        msgStr.Append("\n[点击这里查看|" + purl + "]");
                        for (int j = 0; j < dtUserInfo.Rows.Count; j++)
                        {
                            hrid = dtUserInfo.Rows[j]["OwnerAccount"].ToString();
                            //不提醒自己
                            if (hrid != YZAuthHelper.LoginUserAccount)
                            {
                               
                                    //发送RTX提醒                            
                                    SendNotify(hrid, Title, msgStr.ToString());
                               
                            }
                        } 
                    
                    //--------------------------
                    
                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = cn;
                        cmd.CommandText = String.Format("Insert Into FormTaskComment (ParentId,TaskId,Comment,Status,CreationUser,TransDate,LastUpdateUser,LastUpdateDate,AppName,AppKey) Values ({0},{1},N'{2}',N'Active',N'{3}',GetDate(),N'{4}',GetDate(),N'{5}',{6})", parentid, taskid, comment, YZAuthHelper.LoginUserAccount, YZAuthHelper.LoginUserAccount, appname, appkey);
                        //cmd.CommandText = String.Format("Insert Into FormTaskComment (TaskId,Comment,Status,CreationUser,TransDate,LastUpdateUser,LastUpdateDate) Values ({0},N'{1}',N'Active',N'{2}',GetDate(),N'{3}',GetDate())", taskid, comment, YZAuthHelper.LoginUserAccount, YZAuthHelper.LoginUserAccount);
                        cmd.ExecuteNonQuery();
                    
                        //获取邮件内容
                        sql = "select Comment,TransDate,CreationUser,AppName from dbo.FormTaskComment where TaskId=" + taskid + " order by id desc";
                        sda = new SqlDataAdapter(sql, cn);
                        DataSet dsBody = new DataSet();
                        sda.Fill(dsBody);

                        string rootURL = HttpContext.Current.Server.MapPath("") + "/MyApp/Demo/TaskComment/taskcomment.css";
                        string Html = "<html>";
                        Html += @"<head><title></title>";

                        Html += @"<style>
                                        #taskCommentForm
                                        {
	                                        margin-top:1px;
	                                        font-size:12px;
	                                        font-family: Verdana,Arial,Helvetica,sans-serif,SimSun;
	                                        padding:2px 2px 2px 2px;
                                        }
                                        #taskCommentForm .content
                                        {
	                                        border-color:#DCDCDC;
	                                        border-width:1px;
	                                        width:100%;
	                                        height:40px;
	                                        font-size:12px;
	                                        font-family: Verdana,Arial,Helvetica,sans-serif,SimSun;
                                        }

                                        #taskCommentForm .btn
                                        {
	                                        font-size:12px;
	                                        font-family: Verdana,Arial,Helvetica,sans-serif,SimSun;
                                        }

                                        #TaskComments
                                        {
	                                        border-color:#DCDCDC;
	                                        margin-top:2px;
	                                        padding:0 auto;
	                                        width:100%;
	                                        font-size:11px;
	                                        font-family: Verdana,Arial,Helvetica,sans-serif,SimSun;
                                        }

                                        #TaskCommentCount
                                        {
	                                        margin:10px 0px 0px 0px;
	                                        padding:5px;
	                                        width:100%;
	                                        background-color:#fffff;
	                                        border-bottom:#ccc 1px solid;
	                                        font-size:14px;
	                                        font-weight:bold;
                                        }

                                        #TaskComment
                                        {
	                                        margin:0 auto;
	                                        border-color:#DCDCDC;
	                                        border-bottom:#ccc 1px dotted;
	                                        width:100%;
	                                        /*添加的三条属性如下，解决父级div的高度自适应问题*/  
	                                        clear:both;   
	                                        display:block;   
	                                        overflow:hidden;   
	                                        /*添加结束*/
                                        	
                                        }
                                        #TaskComment #siderbar
                                        {
	                                        margin:0 auto;
	                                        float:right;
	                                        width:60px;
	                                        color:#f5f5f5;
	                                        font-size:12px;
	                                        font-style:italic;
	                                        font-family: Verdana,Arial,Helvetica,sans-serif,SimSun;
	                                        font-weight:bold;
                                        }

                                        #TaskComment #main
                                        {
	                                        margin:0 auto;
	                                        margin-left:10px;
	                                        width:auto;
	                                        float:left;
	                                        color:#666;
	                                        font-size:12px;
	                                        line-height:25px;
                                        }

                                        #TaskComment .author
                                        {
	                                        margin:0 auto;
	                                        color:#666;
	                                        font-size:11px;
	                                        font-weight:bold;
                                        }

                                        #TaskComment .content
                                        {
	                                        margin:0 auto;
	                                        color:#333;
	                                        font-size:12px;
                                        }

                                        #TaskComment .date
                                        {
	                                        margin:0 auto;
	                                        color:#999;
	                                        font-size:11px;
                                        }

                                        .hide
                                        {
	                                        display:none;
                                        }
                                        .gray
                                        {
	                                        color:#ccc;
                                        }
                                        .active
                                        {
	                                        background-color:#f9f9f9;
	                                        cursor:pointer;
                                        	
                                        }
                                        .siderbar2
                                        {
	                                        margin:0 auto;
	                                        float:right;
	                                        width:60px;
	                                        color:#f5f5f5;
	                                        font-size:22px;
	                                        font-style:italic;
	                                        font-family: Verdana,Arial,Helvetica,sans-serif,SimSun;
	                                        font-weight:bold;
                                        }  
                                        .author
                                        {
	                                        margin:0 auto;
	                                        color:#666;
	                                        font-size:11px;
	                                        font-weight:bold;
                                        }                                                                                                                      
                                        </style>";

                        Html += @"</head><body>";
                        Html += @"<div id=""taskComments""></div>";
                        DataTable dtBody = dsBody.Tables[0];
                        Html += @"<div id=TaskCommentCount>";
                        Html += @"" + dsTitle.Tables[0].Rows[0][2].ToString() + "</div>";
                        Html += @" <div id=TaskCommentCount><span class=author2>请登录BPM系统，打开表单进行在线讨论</span></div>";
                        Html += @"<div id=""TaskCommentCount"">讨论意见(" + dtBody.Rows.Count + " )</div>";



                        for (int j = 0; j < dtBody.Rows.Count; j++)
                        {
                            //Html += @"<div id=""taskComment""><div id=""siderbar"">" + (dtBody.Rows.Count - j) + "</div>";
                            if (j == 0)
                            {
                                Html += @"<div id=""taskComment""><div id=""main""><span class=""author"">" + dtBody.Rows[j][3].ToString() + "(" + dtBody.Rows[j][2].ToString() + ")</span>&nbsp;&nbsp;<span class=date>" + dtBody.Rows[j][1].ToString() + "</span>&nbsp;&nbsp;<span class=siderbar2>" + (dtBody.Rows.Count - j) + "</span>&nbsp;&nbsp;<font size=2 color=red>New</font><br /><span class=content>" + dtBody.Rows[j][0].ToString() + "</span></div></div>";
                            }
                            else
                            {
                                Html += @"<div id=""taskComment""><div id=""main""><span class=""author"">" + dtBody.Rows[j][3].ToString() + "(" + dtBody.Rows[j][2].ToString() + ")</span>&nbsp;&nbsp;<span class=date>" + dtBody.Rows[j][1].ToString() + "</span>&nbsp;&nbsp;<span class=siderbar2>" + (dtBody.Rows.Count - j) + "</span><br /><span class=content>" + dtBody.Rows[j][0].ToString() + "</span></div></div>";
                            }
                        }
                        Html += @"</body>";
                        Html += @"</html>";
                    //}
                    
                    if (check == "Y")
                    {
                        cmd.CommandText = String.Format("INSERT INTO dbo.BPMSysMessagesQueue (ProviderName, Address,Title,Message,CreateAt,LastSendAt,FailCount) VALUES  (N'{0}',N'{1}',N'{2}',N'{3}',GetDate(),GetDate(),N'{4}')", "Mail", email, Title, Html, "0");
                        cmd.ExecuteNonQuery();
                    }
                }



                JsonItem rv = new JsonItem();
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
        else
        {
            JsonItem rv = new JsonItem();
            rv.Attributes.Add("success", false);
            rv.Attributes.Add("errorMessage", String.Format("Unknown method：{0}", method));

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

    
    //发送RTX广播提醒
    public void SendNotify(string recevier, string title, string msg)
    {
        try
        {
            RTXSAPILib.RTXSAPIRootObj RootObj;  //声明一个根对象
            RootObj = new RTXSAPIRootObj();     //创建根对象
            RootObj.ServerIP = "192.168.10.210"; //设置服务器IP
            RootObj.ServerPort = Convert.ToInt16("8006"); //设置服务器端口

            RootObj.SendNotify(recevier, title, 4000, msg);
        }
        catch(Exception exp) 
        {
        
        }
    }
}
