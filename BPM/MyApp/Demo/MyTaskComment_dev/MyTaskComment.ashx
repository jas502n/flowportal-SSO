<%@ WebHandler Language="C#" Class="YZSoft.BPM.MyTaskComment" %>

using System;
using System.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using BPM;
using BPM.Client;

namespace YZSoft.BPM
{
    public class MyTaskComment : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
            String _useracc=YZAuthHelper.LoginUserAccount;
            
            GridPageInfo gridPageInfo = new GridPageInfo(context);
            IQueryProvider queryProvider = QueryManager.GetCurrentProvider(context);

            //获得数据
            BPMTaskListCollection tasks = new BPMTaskListCollection();
            int rowcount;
            JsonItem rootItem = new JsonItem();
            
            string taskTableFilter = queryProvider.FilterStringHistoryTaskTaskTableFilter;
         //   throw new BPMException(taskTableFilter);
            
            using (BPMConnection cn = new BPMConnection())
            {
                cn.WebOpen();
                //User _usr=User.FromAccount(cn,_useracc);

                
                string sidstr = string.Empty;
                foreach (string str2 in cn.Token.SIDs)
                {
                        if (!string.IsNullOrEmpty(sidstr))
                        {
                        sidstr = sidstr + ",N'" + str2 + "'";
                        }
                        else
                        {
                        sidstr = sidstr + "N'" + str2 + "'";
                        }
                }
                
                string query="WITH A AS(SELECT TaskID FROM BPMSecurityTACL WITH(INDEX(YZIX_BPMSecurityTACL_SID)) WHERE SID IN({0}) AND ExtYear=@ExtYear AND AllowRead=1 AND ExtDeleted=0),";
                query=String.Format(query,sidstr);
                StringBuilder _sb=new StringBuilder();
                _sb.Append(query);
                _sb.Append("B AS(SELECT TaskID FROM BPMInstProcSteps WHERE (OwnerAccount=@UserAccount OR AgentAccount=@UserAccount OR ConsignOwnerAccount=@UserAccount) AND ExtYear=@ExtYear AND ExtDeleted=0),");
                _sb.Append("C AS(SELECT TaskID FROM A UNION SELECT TaskID FROM B),");
                _sb.Append("D AS(SELECT *,ROW_NUMBER() over(partition by TaskId order by LastUpdateDate desc) as num from FormTaskComment where LastUpdateDate>@SelDate),");
                _sb.Append("E AS(SELECT * FROM D WHERE num=1),");
                //_sb.Append("F AS(SELECT BPMInstTasks.*,E.AppName+':'+E.Comment as Comment,E.LastUpdateDate FROM C INNER JOIN BPMInstTasks ON C.TaskID=BPMInstTasks.TaskID INNER JOIN E ON BPMInstTasks.TaskID=E.TaskId),");
                _sb.Append("F AS(SELECT BPMInstTasks.*,E.AppName+':'+E.Comment as Comment,E.LastUpdateDate FROM C INNER JOIN BPMInstTasks ON C.TaskID=BPMInstTasks.TaskID INNER JOIN E ON BPMInstTasks.TaskID=E.TaskId");
                if(String.IsNullOrEmpty(taskTableFilter))
                   _sb.Append("),");
                else
                   _sb.Append(" Where "+taskTableFilter+"),");
                _sb.Append("G AS(SELECT *,ROW_NUMBER() OVER(ORDER BY LastUpdateDate DESC)as RowNum FROM F),");
                _sb.Append("X AS(SELECT * FROM G WHERE RowNum BETWEEN @StartRowIndex AND @EndRowIndex),");
                _sb.Append("Y AS(SELECT count(*) AS TotalRows FROM F),");
                _sb.Append("Z AS(SELECT *,(SELECT TotalRows FROM Y) as TotalRows FROM X)");
                _sb.Append(" SELECT * FROM Z ORDER BY RowNum");
                
                DateTime _dt=DateTime.Now;
                
                using (SqlConnection scn = new SqlConnection())
                {
                        scn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BPMDB"].ConnectionString;
                        scn.Open();

                        using (SqlCommand cmd = new SqlCommand())
                        {
                                cmd.Connection = scn;
                                cmd.CommandText = _sb.ToString();
                  
                                cmd.Parameters.Add("@UserAccount", SqlDbType.NVarChar).Value = _useracc;
                                cmd.Parameters.Add("@StartRowIndex", SqlDbType.Int).Value = gridPageInfo.Start + 1;
                                cmd.Parameters.Add("@EndRowIndex", SqlDbType.Int).Value = gridPageInfo.Start + gridPageInfo.Limit;
                                cmd.Parameters.Add("@SelDate", SqlDbType.DateTime).Value = _dt.AddMonths(-3);
                                cmd.Parameters.Add("@ExtYear", SqlDbType.Int).Value = _dt.Year;

                                using (YZReader reader = new YZReader(cmd.ExecuteReader()))
                                {
                                    //将数据转化为Json集合
                                    //rootItem.Attributes.Add(JsonItem.TotalRows, rowcount);

                                    JsonItemCollection children = new JsonItemCollection();
                                    rootItem.Attributes.Add("children", children);
                                    int totalRows = 0;
                                    //foreach (BPMTaskListItem task in tasks)
                                    Int32 count=0;
                                    while(reader.Read())
                                    {
                                            JsonItem item = new JsonItem();
                                            children.Add(item);
                                            
                                            //String _stepname=reader.ReadString("NodeName");
                                            //string stepDisplayName = BPMProcStep.GetStepDisplayName(_stepname);

                                            if(count==0) count=reader.ReadInt32("TotalRows");
                                            Int32 _taskid=reader.ReadInt32("TaskID");
                                            //Int32 _stepid=reader.ReadInt32("StepID");
                                            //item.Attributes.Add("StepID", _stepid);
                                            item.Attributes.Add("TaskID",_taskid);//task.TaskID);
                                            item.Attributes.Add("SerialNum", reader.ReadString("SerialNum"));//task.SerialNum);
                                            item.Attributes.Add("ProcessName", reader.ReadString("ProcessName"));//task.ProcessName);
                                            item.Attributes.Add("ProcessVersion", reader.ReadString("ProcessVersion"));//task.ProcessVersion.ToString(2));
                                            String _owneracc=reader.ReadString("OwnerAccount");
                                            item.Attributes.Add("OwnerAccount", _owneracc);//task.OwnerAccount);
                                            String _ownerfullname="";
                                            try
                                            {
                                               if(!String.IsNullOrEmpty(_owneracc))
                                               {
                                                   User _owner=User.FromAccount(cn,_owneracc);
                                                   if(_owner!=null)
                                                      _ownerfullname=_owner.DisplayName;
                                               }
                                            }
                                            catch
                                            {
                                            }
                                            item.Attributes.Add("OwnerDisplayName",_ownerfullname);//task.OwnerFullName);
                                            String _agentacc=reader.ReadString("AgentAccount");
                                            item.Attributes.Add("AgentAccount", _agentacc);//task.AgentAccount);
                                            String _agentfullname="";
                                            try
                                            {
                                                if(!String.IsNullOrEmpty(_agentacc))
                                                {
                                                    User _agent=User.FromAccount(cn,_agentacc);
                                                    if(_agent!=null)
                                                    _agentfullname=_agent.DisplayName;
                                                }
                                            }
                                            catch
                                            {
                                            }
                                            item.Attributes.Add("AgentDisplayName", _agentfullname);//task.AgentFullName);
                                            item.Attributes.Add("CreateAt", YZStringHelper.DateToStringL(reader.ReadDateTime("LastUpdateDate")));//YZStringHelper.DateToStringL(task.CreateAt));
                                            //item.Attributes.Add("NodeName", stepDisplayName);
                                            item.Attributes.Add("State", JsonItem.GetTaskStateJsonItem(cn, (TaskState)Enum.Parse(typeof(TaskState),reader.ReadString("State")), _taskid));//item.Attributes.Add("State", JsonItem.GetTaskStateJsonItem(cn, task.TaskState, task.TaskID));
                                            String _des=reader.ReadString("Comment");
                                            item.Attributes.Add("Description", String.IsNullOrEmpty(_des) ? Resources.YZStrings.All_None :_des);//item.Attributes.Add("Description", String.IsNullOrEmpty(task.Description) ? Resources.YZStrings.All_None : task.Description);

                                            JsonItem perm = new JsonItem();
                                            item.Attributes.Add("Perm", perm);

                                            BPMList<NodePermision> perms = new BPMList<NodePermision>();
                                            perms.Add(NodePermision.Public);
                                            perms.Add(NodePermision.RecedeRestart);
                                            perms.Add(NodePermision.Jump);
                                            perms.Add(NodePermision.Transfer);
                                            perms.Add(NodePermision.AssignOwner);
                                            perms.Add(NodePermision.Reject);
                                            perms.Add(NodePermision.Abort);
                                            perms.Add(NodePermision.Delete);
                                            perms.Add(NodePermision.Continue);
                                            perms.Add(NodePermision.InviteIndicate);
                                            perms.Add(NodePermision.Inform);

                                            bool[] allows = BPMTask.TaskOptPermCheckExt(cn, _taskid, -1, perms.ToArray());

                                            perm.Attributes.Add("Public", allows[0]);
                                            perm.Attributes.Add("ReturnToInitiator", allows[1]);
                                            perm.Attributes.Add("Jump", allows[2]);
                                            perm.Attributes.Add("Transfer", allows[3]);
                                            perm.Attributes.Add("AssignOwner", allows[4]);
                                            perm.Attributes.Add("Reject", allows[5]);
                                            perm.Attributes.Add("About", allows[6]);
                                            perm.Attributes.Add("Delete", allows[7]);
                                            perm.Attributes.Add("Continue", allows[8]);
                                            perm.Attributes.Add("InviteIndicate", allows[9]);
                                            perm.Attributes.Add("Inform", allows[10]);
                                    }
                                    rootItem.Attributes.Add(JsonItem.TotalRows, count);
                                }   
                        }
                }

            //输出数据
            context.Response.Write(rootItem.ToString());
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
