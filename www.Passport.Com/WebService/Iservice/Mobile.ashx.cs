
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Xml;

namespace Joson.SSO.Passport
{
    using BPM;
    using BPM.Client;
    using Net.MobileHelper;
    using Newtonsoft.Json;
    using Newtonsoft.Json.Linq;
    /// <summary>
    /// Mobile 的摘要说明
    /// </summary>
    public class Mobile : IHttpHandler
    {

        private static string requestString;
        public virtual void ProcessRequest(HttpContext context)
        {
            JObject result = null;

            try
            {
                string UserAccount = context.Request.Params["UserAccount"];

                //if (YZAuthHelper.IsAuthenticated == false)
                //{
                //    YZAuthHelper.OAuth();
                //    //throw new Exception("登录BPM验证失败");
                //}
                //else 
                //{ 
                //     UserAccount = YZAuthHelper.LoginUserAccount;
                //}

                YZAuthHelper.OAuth();
                //检查来源地址是否允许访问
                CheckRomoteAddress();


                result = new JObject();
                requestString = new StreamReader(context.Request.InputStream, Encoding.UTF8).ReadToEnd();
        

                string Method = context.Request.Params["Method"];
                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();

                    if (string.Compare(Method, "GetUserInfo", true) == 0)
                    {
                        result = GetUserInfo(cn, UserAccount);
                    }
                    else if (string.Compare(Method, "SaveAttachment", true) == 0)
                    {
                        result = SaveAttachment(context);
                    }
                    else if (string.Compare(Method, "GetFormInfo", true) == 0)
                    {
                        int TaskID = Convert.ToInt32(GetParamValue("TaskID", "-1"));
                        int StepID = Convert.ToInt32(GetParamValue("StepID", "-1"));


                        //int TaskID = 603680;
                        //int StepID = -1;
                        //TaskID = 701461;
                        //StepID = 10532325;

                        result = GetFormInfo(cn, UserAccount, TaskID, StepID);
                        result["success"] = true;

                    }
                    else if (string.Compare(Method, "GetReturnSteps", true) == 0)
                    {
                        int StepID = Convert.ToInt32(GetParamValue("StepID", "-1"));

                        result = GetReturnStepsForm(cn, UserAccount, StepID);
                        result["success"] = true;

                    }
                    else if (string.Compare(Method, "TaskProcess", true) == 0)
                    {
                        int TaskID = Convert.ToInt32(GetParamValue("TaskID", "-1"));
                        int StepID = Convert.ToInt32(GetParamValue("StepID", "-1"));
                        string Action = Convert.ToString(GetParamValue("Action"));
                        string Type = Convert.ToString(GetParamValue("Type"));
                        string Comment = Convert.ToString(GetParamValue("Comment"));
                        string Transfer_TransferTo = Convert.ToString(GetParamValue("Transfer_TransferTo", null));
                        string Consign_ConsignUsers = Convert.ToString(GetParamValue("Consign_ConsignUsers", null));
                        int RecedeBack_ToStepID = Convert.ToInt32(GetParamValue("RecedeBack_ToStepID", null));

                        result = TaskProcess(cn, UserAccount, TaskID, StepID, Action, Type, Comment, Transfer_TransferTo, Consign_ConsignUsers, RecedeBack_ToStepID);
                        result["success"] = true;

                    }
                    else if (string.Compare(Method, "PostTask", true) == 0)
                    {
                        string ProcessName = GetParamValue("ProcessName");
                        string Action = GetParamValue("Action");
                        string Comment = GetParamValue("Comment", "");
                        bool Draft = Convert.ToBoolean(GetParamValue("Draft", "false"));
                        int ExistTaskID = Convert.ToInt32(GetParamValue("ExistTaskID", "-1"));
                        string FormData = GetParamValue("FormData");
                        XmlDocument doc = JsonConvert.DeserializeXmlNode(FormData, "FormData");
                        result = PostTask(cn, ProcessName, UserAccount, Action, Comment, Draft, ExistTaskID, doc.OuterXml);
                    }
                    else if (string.Compare(Method, "GetApprovalLog", true) == 0)
                    {
                        int TaskID = Convert.ToInt32(GetParamValue("TaskID", "-1"));
                        result = GetApprovalLog(cn, TaskID);
                    }
                    else if (string.Compare(Method, "MyTask", true) == 0)
                    {
                        string Path = GetParamValue("Path", "/");
                        int Start = Convert.ToInt32(GetParamValue("Start"));
                        int Limit = Convert.ToInt32(GetParamValue("Limit"));
                        string ProcessName = GetParamValue("ProcessName", "");
                        string Keyword = GetParamValue("Keyword", "");
                        result = MyTask(cn, Path, Start, Limit, ProcessName, Keyword);
                    }
                    else
                        throw new Exception(String.Format("找不到{0}方法", Method));
                }
            }
            catch (Exception e)
            {
                result = new JObject();
                result["success"] = false;
                result["errorMessage"] = e.Message;
            }

            if (YZAuthHelper.IsAuthenticated)
                ClearAuth();


            context.Response.AppendHeader("Access-Control-Allow-Origin", "*");      // 响应类型 
            context.Response.AppendHeader("Access-Control-Allow-Methods", "POST");  // 响应头设置 
            context.Response.AppendHeader("Access-Control-Allow-Headers", "x-requested-with,content-type");

            //context.Response.Charset = "gb2312"; //设置字符集类型  
            //context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
            //context.Response.ContentType = "application/json;charset=gb2312";
            context.Response.Write(result.ToString());



        }

        private JObject GetUserInfo(BPMConnection cn, string UserAccount)
        {
            JObject result = new JObject();
            result["success"] = true;
            result["UserInfo"] = UserInfo(cn, UserAccount);

            return result;
        }

        private JObject UserInfo(BPMConnection cn, string UserAccount)
        {
            JObject UserInfo = new JObject();
            MemberCollection members = OrgSvr.GetUserPositions(cn, UserAccount);
            if (members.Count > 0)
            {
                Member m = members[0];
                UserInfo["UserAccount"] = m.UserAccount;
                UserInfo["DisplayName"] = m.UserDisplayName;
                UserInfo["LeaderTitle"] = m.LeaderTitle;
                UserInfo["Department"] = m.Department;
                UserInfo["Level"] = m.Level;
                UserInfo["FullName"] = members[0].FullName;

                User u = m.GetUser(cn);
                UserInfo["HRID"] = u.HRID;
                UserInfo["Birthday"] = u.Birthday.ToString("yyyy-MM-dd");
                UserInfo["Sex"] = u.Sex == Sex.Male ? "男" : u.Sex == Sex.Female ? "女" : "未设置";
                UserInfo["DateHired"] = u.DateHired.ToString("yyyy-MM-dd");
                UserInfo["Office"] = u.Office;
                UserInfo["CostCenter"] = u.CostCenter;
                UserInfo["OfficePhone"] = u.OfficePhone;
                UserInfo["HomePhone"] = u.HomePhone;
                UserInfo["Mobile"] = u.Mobile;
                UserInfo["EMail"] = u.EMail;
                UserInfo["WWWHomePage"] = u.WWWHomePage;
                UserInfo["Description"] = u.Description;
            }
            else
                throw new Exception("获取账号【" + UserAccount + "】的信息失败");

            return UserInfo;
        }

        private JObject SaveAttachment(HttpContext context)
        {
            JObject result = new JObject();

            HttpFileCollection files = context.Request.Files;
            if (files.Count > 0 && files[0].ContentLength > 0)
            {
                HttpPostedFile file = files[0];
                string fileName = System.IO.Path.GetFileName(file.FileName);
                long fileSize = file.ContentLength;
                string fileExt = System.IO.Path.GetExtension(fileName).ToLower();

                //华为手机，fileExt格式 .png?112714368714
                if (!String.IsNullOrEmpty(fileExt))
                {
                    int index = fileExt.IndexOf('?');
                    if (index != -1)
                        fileExt = fileExt.Substring(0, index);
                }

                string fileId = YZAttachmentHelper.GetNewFileID();
                string savePath = Attachment.FileIDToPath(fileId, YZAttachmentHelper.AttachmentRootPath);

                Directory.CreateDirectory(savePath.Substring(0, savePath.LastIndexOf(@"\")));
                file.SaveAs(savePath);

                Attachment attachment = new Attachment();
                attachment.Name = fileName;
                attachment.Ext = fileExt;
                attachment.Size = fileSize;

                attachment.FileID = fileId;
                if (String.IsNullOrEmpty(attachment.Name))
                    attachment.Name = fileId + attachment.Ext;

                attachment.LastUpdate = DateTime.Now;
                attachment.OwnerAccount = YZAuthHelper.LoginUserAccount;

                using (IDbConnection cn = QueryManager.CurrentProvider.OpenConnection())
                {
                    QueryManager.CurrentProvider.InsertAttachmentInfo(cn, attachment);
                }

                result["success"] = true;
                result["fileid"] = attachment.FileID;

                JObject attach = new JObject();
                result["attachment"] = attach;
                attach["FileID"] = attachment.FileID;
                attach["Name"] = attachment.Name;
                attach["Ext"] = attachment.Ext;
                attach["Size"] = attachment.Size;
                attach["FileID"] = attachment.FileID;
                attach["LastUpdate"] = YZStringHelper.DateToStringL(attachment.LastUpdate);
                attach["OwnerAccount"] = attachment.OwnerAccount;
            }
            else
                throw new Exception("未上传文件");

            return result;
        }

        //FormData格式如下
        //<FormData>
        //    <Purchase>
        //        <SN></SN>
        //        <Amount>26000.00</Amount>
        //        <Reason>dddd</Reason>
        //        <Attachments></Attachments>
        //    </Purchase>
        //    <PurchaseDetail>
        //        <RelationRowGuid>1</RelationRowGuid>
        //        <RowPrimaryKeys></RowPrimaryKeys>
        //        <ItemCode>001</ItemCode>
        //        <Price>10000.00</Price>
        //        <Qty>1</Qty>
        //        <SubTotal>10000.00</SubTotal>
        //    </PurchaseDetail>
        //    <PurchaseDetail>
        //        <RelationRowGuid>2</RelationRowGuid>
        //        <RowPrimaryKeys></RowPrimaryKeys>
        //        <ItemCode>002</ItemCode>
        //        <Price>8000.00</Price>
        //        <Qty>2</Qty>
        //        <SubTotal>16000.00</SubTotal>
        //    </PurchaseDetail>
        //</FormData>
        //RelationRowGuid是在这个文件里自增的字段，不管几个子表不管几行数据，永远自增1。
        private JObject PostTask(BPMConnection cn, string ProcessName, string UserAccount, string Action, string Comment, bool Draft, int ExistTaskID, string FormData)
        {
            JObject result = new JObject();

            //处理ExistTask参数
            StringBuilder sb = new StringBuilder();
            if (ExistTaskID != -1)
            {
                BPMProcStep startStep = null;
                try
                {
                    startStep = BPMTask.PickBackRestart(cn, ExistTaskID, "");
                }
                catch (BPMException e)
                {
                    if (e.ExceptionType == BPMExceptionType.TaskPickBackErrNeedNot)
                    {
                        BPMStepCollection temp = BPMTask.GetAllSteps(cn, ExistTaskID);
                        startStep = temp.Find(delegate (BPMProcStep item) { return item.IsHumanStep == true && item.Finished == false; });
                        if (startStep == null)
                            throw new Exception("当前任务没有待审批步骤");
                    }
                    else
                        throw e;
                }

                if (startStep == null)
                    throw new Exception("获取当前审批步骤失败");

                sb.Append(String.Format("<?xml version=\"1.0\"?>"));
                sb.Append(String.Format("<XForm>"));
                sb.Append(String.Format(@"
                            <Header>
                                <Method>Process</Method>
                                <PID>{0}</PID>
                                <Action>{1}</Action>
                                <Comment>{2}</Comment>
                            </Header>", startStep.StepID, Action, Comment));
                sb.Append(FormData);
                sb.Append(String.Format("</XForm>"));
            }
            else
            {
                sb.Append(String.Format("<?xml version=\"1.0\"?>"));
                sb.Append(String.Format("<XForm>"));
                sb.Append(String.Format(@"
                            <Header>
                                <Method>{0}</Method>
                                <ProcessName>{1}</ProcessName>
                                <OwnerMemberFullName>{2}</OwnerMemberFullName>
                                <Action>{3}</Action>
                                <Comment>{4}</Comment>
                            </Header>", Draft ? "SaveAsDraft" : "Post", ProcessName, GetMember(cn, UserAccount).FullName, Action, Comment));
                sb.Append(FormData);
                sb.Append(String.Format("</XForm>"));
            }

            MemoryStream xmlStream = new MemoryStream(Encoding.UTF8.GetBytes(sb.ToString()));
            PostResult postResult = BPMProcess.Post(cn, xmlStream);

            string requestUrl = HttpContext.Current.Request.Url.ToString();
            string RedirectURLBase = requestUrl.Substring(0, requestUrl.IndexOf("YZSoft", StringComparison.OrdinalIgnoreCase)) + "YZSoft/Forms/";
            string openUrl = String.Empty;
            if (Draft)
                openUrl = String.Format(RedirectURLBase + "Post.aspx?pn={0}&did={1}", ProcessName, postResult.SN);
            else
                openUrl = String.Format(RedirectURLBase + "Read.aspx?tid={0}", postResult.TaskID);

            result["success"] = true;
            result["TaskID"] = postResult.TaskID;
            result["SN"] = postResult.SN;
            result["OpenUrl"] = openUrl;

            return result;
        }

        private JObject GetApprovalLog(BPMConnection cn, int TaskID)
        {
            JObject result = new JObject();

            BPMTask task = BPMTask.Load(cn, TaskID);

            result["success"] = true;
            result["TaskID"] = TaskID;
            result["SN"] = task.SerialNum;
            result["State"] = task.TaskState.ToString();

            JArray StepItems = new JArray();
            result["StepItems"] = StepItems;

            BPMStepCollection steps = BPMTask.GetAllSteps(cn, TaskID);
            foreach (BPMProcStep step in steps)
            {
                if (step.IsHumanStep)
                {
                    JObject item = new JObject();
                    StepItems.Add(item);
                    item["StepID"] = step.StepID;
                    item["NodeName"] = step.NodeName;
                    item["ReceiveAt"] = YZStringHelper.DateToStringL(step.ReceiveAt);
                    item["FinishAt"] = step.FinishAt == DateTime.MinValue ? "" : YZStringHelper.DateToStringL(step.FinishAt);
                    item["OwnerAccount"] = step.OwnerAccount;
                    item["OwnerName"] = step.OwnerFullName;
                    item["RecipientAccount"] = step.RecipientAccount == null ? "" : step.RecipientAccount;
                    item["RecipientName"] = step.RecipientFullName == null ? "" : step.RecipientFullName;
                    item["HandlerAccount"] = step.HandlerAccount == null ? "" : step.HandlerAccount;
                    item["HandlerName"] = step.HandlerFullName == null ? "" : step.HandlerFullName;
                    item["AgentAccount"] = step.AgentAccount == null ? "" : step.AgentAccount;
                    item["AgentName"] = step.AgentFullName == null ? "" : step.AgentFullName;
                    item["SelAction"] = step.SelAction == null ? "" : step.SelAction;
                    item["Comments"] = step.Comments == null ? "" : step.Comments;
                }
            }

            return result;
        }

        private JObject MyTask(BPMConnection cn, string Path, int Start, int Limit, string ProcessName, string Keyword)
        {
            int rowcount;
            JObject result = new JObject();
            string TaskFilter = getTaskFilter(ProcessName, Keyword, true);
            BPMTaskListCollection tasks = cn.GetMyTaskList(Path, TaskFilter, "StepID DESC", Start, Limit, out rowcount);

            //将数据转化为Json集合
            result["success"] = true;
            result["totalRows"] = rowcount;

            JArray children = new JArray();
            result["children"] = children;
            foreach (BPMTaskListItem task in tasks)
            {
                JObject item = new JObject();
                children.Add(item);

                item["StepID"] = task.StepID;
                item["TaskID"] = task.TaskID;
                item["SerialNum"] = task.SerialNum;
                item["ProcessName"] = task.ProcessName;
                item["OwnerAccount"] = task.OwnerAccount;
                item["OwnerName"] = task.OwnerFullName;
                item["AgentAccount"] = task.AgentAccount == null ? "" : task.AgentAccount;
                item["AgentName"] = task.AgentFullName == null ? "" : task.AgentFullName;
                item["CreateAt"] = YZStringHelper.DateToStringL(task.CreateAt);
                item["NodeName"] = task.StepName;
                item["ReceiveAt"] = YZStringHelper.DateToStringL(task.ReceiveAt);
                item["Share"] = task.Share;
                item["Description"] = task.Description == null ? "" : task.Description;
            }

            //这里发现一个系统bug，当Start为1时，实际第1条待办也会在结果里，导致实际的数量比Limit多1条。
            if (Start == 1 && children.Count - Limit == 1)
                children.RemoveAt(0);

            return result;
        }
        /// <summary>
        /// 处理任务
        /// </summary>
        /// <param name="Account">任务的实际提交人账号</param>
        /// <param name="TaskID">BPM单据任务号</param>
        /// <param name="StepID">BPM单据待办步骤号</param>
        /// <param name="Action">表单详情返回报文中ButtonList区域里按钮的Action值</param>
        /// <param name="Comment">签核意见</param>
        /// <param name="Transfer_TransferTo">被委托人的BPM账号；如不委托，保持空白（空字符串或者Null）</param>
        /// <param name="Consign_ConsignUsers">加签人员的账号，多账号用英文分号分隔；如不加签，保持空白（空字符串或者Null）</param>
        /// <param name="RecedeBack_ToStepID">退回到某步的步骤StepID；如不退回，则为-1</param>
        /// <returns></returns>
        private JObject TaskProcess(BPMConnection cn, string UserAccount, int TaskID, int StepID, string Action, string Type, string Comment, string Transfer_TransferTo, string Consign_ConsignUsers, int RecedeBack_ToStepID)
        {

            if (!IsCurrentStep(cn, UserAccount, StepID, TaskID))
            {
                throw new Exception("帐号：" + UserAccount + " 或步骤ID StepID:" + StepID + "不是当前任务");
            }

            if (string.IsNullOrEmpty(Type))
            {
                throw new Exception("参数Type不能为空");
            }

            JObject rv = new JObject();//最终组合的
            if (!string.IsNullOrEmpty(Action))
            {
                if (Type.Equals("Transfer", StringComparison.OrdinalIgnoreCase))
                {
                    Transfer(cn, StepID, Transfer_TransferTo, Comment);

                }
                else if (Type.Equals("Consign", StringComparison.OrdinalIgnoreCase))
                {
                    Consign(StepID, Action, Comment, Consign_ConsignUsers);
                }
                else if (Type.Equals("RecedeBack", StringComparison.OrdinalIgnoreCase))
                {
                    RecedeBack(cn, StepID, RecedeBack_ToStepID, Comment);
                }
                else if (Type.Equals("DirectSend", StringComparison.OrdinalIgnoreCase))
                {
                    DirectSend(cn, StepID, Comment);
                }
                else if (Type.Equals("Post", StringComparison.OrdinalIgnoreCase))
                {
                    PostProcess("Process", StepID, Action, Comment);
                }
                else if (Type.Equals("Reject", StringComparison.OrdinalIgnoreCase))
                {
                    RejectProcess(cn, TaskID, Comment);
                }
            }
            else
            {
                throw new Exception("空白按钮");
            }

            return rv;
        }

        /// <summary>
        /// 拒绝事件
        /// </summary>
        /// <param name="TaskID">任务号</param>
        /// <param name="Comment">意见</param>
        private void RejectProcess(BPMConnection cn, int TaskID, string Comment)
        {
            try
            {
                BPMTask.Reject(cn, TaskID, Comment);
            }
            catch (Exception e)
            {
                throw new Exception("拒绝失败");
            }
        }

        /// <summary>
        /// 加签
        /// </summary>
        /// <param name="StepID">步骤</param>
        /// <param name="Action">节点</param>
        /// <param name="Comment">意见</param>
        /// <param name="Consign_ConsignUsers">加签人</param>
        private void Consign(int StepID, string Action, string Comment, string Consign_ConsignUsers)
        {
            try
            {
                StringBuilder sb = null;
                sb = new StringBuilder();
                sb.Append(String.Format("<?xml version=\"1.0\"?>"));
                sb.Append(String.Format("<XForm>"));
                sb.Append(String.Format(@"
                               <Header>
                                 <Method>Process</Method>
                                 <PID>{0}</PID>
                                 <Action>{1}</Action>
                                 <Comment>{2}</Comment>
                                 <ConsignEnabled>True</ConsignEnabled>
                                 <ConsignUsers>{3}</ConsignUsers>
                                 <ConsignRoutingType>Parallel</ConsignRoutingType>
                                 <ConsignReturnType>Return</ConsignReturnType>
                                 <InviteIndicateUsers></InviteIndicateUsers>
                             </Header>
                             <FormData>
                             </FormData>", StepID, Action, Comment, Consign_ConsignUsers));
                sb.Append(String.Format("</XForm>"));

                MemoryStream xmlStream = new MemoryStream(UTF8Encoding.UTF8.GetBytes(sb.ToString()));

                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();
                    PostResult postResult = BPMProcess.Post(cn, xmlStream);
                    if (postResult == null)
                    {
                        throw new Exception("审批失败");
                    }
                }
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        /// <summary>
        /// 审批按钮
        /// </summary>
        /// <param name="StepID">步骤ID</param>
        /// <param name="Action">按钮</param>
        /// <param name="Comment">意见</param>
        private void PostProcess(string Method, int StepID, string Action, string Comment)
        {
            try
            {
                StringBuilder sb = null;
                sb = new StringBuilder();
                sb.Append(String.Format("<?xml version=\"1.0\"?>"));
                sb.Append(String.Format("<XForm>"));
                sb.Append(String.Format(@"
                            <Header>
                                 <Method>{0}</Method>
                                 <PID>{1}</PID>
                                 <Action>{2}</Action>
                                 <Comment>{3}</Comment>
                                 <InviteIndicateUsers></InviteIndicateUsers>
                            </Header>
                            <FormData>
                            </FormData>", Method, StepID, Action, Comment));
                sb.Append(String.Format("</XForm>"));

                MemoryStream xmlStream = new MemoryStream(UTF8Encoding.UTF8.GetBytes(sb.ToString()));

                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();
                    PostResult postResult = BPMProcess.Post(cn, xmlStream);
                    if (postResult == null)
                    {
                        throw new Exception("审批失败");
                    }
                }
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
        /// <summary>
        /// 直送
        /// </summary>
        /// <param name="StepID"></param>
        private void DirectSend(BPMConnection cn, int StepID, string Comment)
        {

            //save
            PostProcess("Save", StepID, "", Comment);

            BPMStepCollection newsteps = BPMProcStep.DirectSend(cn, StepID);
            if (newsteps == null)
            {
                throw new Exception("直送失败");
            }
        }

        /// <summary>
        /// 退回某步
        /// </summary>
        /// <param name="StepID">当前步骤</param>
        /// <param name="RecedeBack_ToStepID">退回步骤</param>
        /// <param name="Comment">意见</param>
        private void RecedeBack(BPMConnection cn, int StepID, int RecedeBack_ToStepID, string Comment)
        {
            List<int> toStepIDs = new List<int>();
            toStepIDs.Add(RecedeBack_ToStepID);
            BPMStepCollection newSteps = BPMProcStep.RecedeBack(cn, StepID, toStepIDs.ToArray(), Comment);
            if (newSteps == null)
            {
                throw new Exception("退回失败");
            }
        }
        /// <summary>
        /// 委托
        /// </summary>
        /// <param name="StepID">步骤ID</param>
        /// <param name="Account">委托帐号</param>
        /// <param name="Comment">意见</param>
        private void Transfer(BPMConnection cn, int StepID, string Transfer_TransferTo, string Comment)
        {
            string memberFullName = GetMember(cn, Transfer_TransferTo).FullName;
            if (string.IsNullOrEmpty(memberFullName))
            {
                throw new Exception("委托失败,帐号【" + Transfer_TransferTo + "】非法");
            }
            BPM.Client.User user = BPMProcStep.Transfer(cn, StepID, memberFullName);
            if (user == null)
            {
                throw new Exception("委托失败");
            }
        }
        /// <summary>
        /// 获取退回某步列表
        /// </summary>
        /// <param name="StepID"></param>
        /// <returns></returns>
        private JObject GetReturnStepsForm(BPMConnection cn, string UserAccount, int StepID)
        {

            JObject rv = new JObject();//最终组合的
            BPMStepCollection steps = null;
            steps = BPMProcStep.GetRecedableToSteps(cn, StepID);
            //将数据转化为Json集合
            rv["totalRows"] = steps.Count;
            if (steps.Count < 1)
            {
                throw new Exception("StepID:" + StepID + "帐号:" + UserAccount + "无退回步骤");
            }

            JArray children = new JArray();
            rv["children"] = children;

            foreach (BPMProcStep step in steps)
            {
                JObject item = new JObject();
                children.Add(item);

                item["StepID"] = step.StepID;
                item["NodeName"] = step.NodeName;
                item["OwnerAccount"] = step.OwnerAccount;
                item["OwnerDisplayName"] = step.OwnerFullName;
                item["FinishAt"] = YZStringHelper.DateToStringL(step.FinishAt);
            }
            return rv;
        }
        private JObject GetFormInfo(BPMConnection cn, string UserAccount, int TaskID, int StepID)
        {

            FlowDataSet formData = null;
            BPMTask task = null;
            string FormXml = "";//获取表单名称

            JObject rv = new JObject();//最终组合的

            JArray TaskCommList = new JArray();
            rv["TaskCommList"] = TaskCommList;

            JArray FormInfo = new JArray();
            rv["FormInfo"] = FormInfo;
            JArray ButtonList = new JArray();
            rv["ButtonList"] = ButtonList;


            if (StepID < 0)
            {
                BPMStepCollection Steps = BPM.Client.BPMTask.GetAllSteps(cn, TaskID);
                foreach (BPM.Client.BPMProcStep item in Steps)
                {
                    if (item.NodeName.Equals("开始"))
                    {
                        StepID = item.StepID;
                        break;
                    }
                }
            }

            //按钮开始
            BPM.Client.ProcessInfo processInfo = BPM.Client.BPMProcess.GetProcessInfo(cn, StepID);
            BPMTask bt = BPMTask.Load(cn, TaskID);

            JObject TaskComm = new JObject();
            TaskCommList.Add(TaskComm);

            TaskComm["TaskID"] = bt.TaskID;
            TaskComm["ParentStepID"] = bt.ParentStepID;
            TaskComm["SerialNum"] = bt.SerialNum;
            TaskComm["ProcessName"] = bt.ProcessName;
            TaskComm["ApplicantAccount"] = bt.ApplicantAccount;

            TaskComm["AgentAccount"] = bt.AgentAccount;
            TaskComm["AgentDisplayName"] = bt.AgentDisplayName;
            TaskComm["AgentDisplayName"] = bt.AgentDisplayName;

            TaskComm["OwnerAccount"] = bt.OwnerAccount;
            TaskComm["OwnerDisplayName"] = bt.OwnerDisplayName;
            TaskComm["OwnerFullName"] = bt.OwnerFullName;

            TaskComm["CreateAt"] = bt.CreateAt;
            TaskComm["FinishAt"] = bt.FinishAt;
            TaskComm["OptAt"] = bt.OptAt;
            TaskComm["OptUser"] = bt.OptUser;
            TaskComm["OptMemo"] = bt.OptMemo;
            //TaskComm["Description"] = bt.Description;
            // TaskComm["ReturnToParent"] = bt.ReturnToParent;

            TaskComm["TaskState"] = bt.TaskState.ToString();
            TaskComm["State"] = bt.State.ToString();
           
 
            if (IsCurrentStep(cn, UserAccount, StepID, TaskID) && bt.TaskState.ToString().Equals("Running", StringComparison.OrdinalIgnoreCase))
            {
                BPM.Client.LinkCollection links = processInfo.Links;//提交按钮
                foreach (Link link in links)
                {
                    JObject button = new JObject();
                    ButtonList.Add(button);
                    string s = link.DisplayString;
                    button["Text"] = s;
                    button["Action"] = s;
                    button["Type"] = "Post";
                }
                bool canReject = (processInfo.NodePermision & NodePermision.Reject) == NodePermision.Reject;//拒绝按钮
                if (canReject)
                {
                    JObject button = new JObject();
                    ButtonList.Add(button);
                    button["Text"] = "拒绝";
                    button["Action"] = "Reject";
                    button["Type"] = "Reject";
                }
                bool canTransfer = (processInfo.NodePermision & NodePermision.Transfer) == NodePermision.Transfer;//委托按钮
                if (canTransfer)
                {
                    JObject button = new JObject();
                    ButtonList.Add(button);
                    button["Text"] = "委托";
                    button["Action"] = "Transfer";
                    button["Type"] = "Transfer";
                }
                bool canConsign = (processInfo.NodePermision & NodePermision.Consign) == NodePermision.Consign;//加签按钮
                if (canConsign)
                {
                    string s = links[0].DisplayString;
                    JObject button = new JObject();
                    ButtonList.Add(button);
                    button["Text"] = "加签";
                    button["Action"] = s;
                    button["Type"] = "Consign";
                }
                bool canRecedeBack = (processInfo.NodePermision & NodePermision.RecedeBack) == NodePermision.RecedeBack;//退回重填按钮
                if (canRecedeBack)
                {
                    JObject button = new JObject();
                    ButtonList.Add(button);
                    button["Text"] = "退回某步";
                    button["Action"] = "RecedeBack";
                    button["Type"] = "RecedeBack";
                }
                bool recedeRestart = (processInfo.NodePermision & NodePermision.RecedeRestart) == NodePermision.RecedeRestart;//退回重填


                BPMProcStep stepLoad = BPMProcStep.Load(cn, StepID);
                int idx = processInfo.SystemLinks.Find(SystemLinkType.DirectSend);
                if (stepLoad.RecedeFromStep != -1 && idx != -1 && processInfo.SystemLinks[idx].Enabled)
                {
                    BPMStepCollection directSendToSteps = BPMProcStep.LoadPrevSteps(cn, StepID);
                    BPMObjectNameCollection stepNames = new BPMObjectNameCollection();
                    foreach (BPMProcStep step in directSendToSteps)
                        if (step.IsHumanStep)
                        {
                            stepNames.Add(step.NodeName + ":" + YZStringHelper.GetUserFriendlyName(step.RecipientAccount, step.RecipientFullName));

                            string buttonText = "直送->" + stepNames.ToStringList(';');
                            JObject button = new JObject();
                            ButtonList.Add(button);
                            button["Text"] = buttonText;
                            button["Action"] = "DirectSend";
                            button["Type"] = "DirectSend";
                        }
                }

            }

            //按钮结束
            FormXml = processInfo.FormFile;

            //获取表单数据
            formData = BPMProcess.GetFormData(cn, StepID);

            if (formData.Tables.Count == 0)
            {
                throw new Exception("获取表单数据失败");
            }

            //初始化布局文件
            task = BPMTask.Load(cn, TaskID);


            if (task == null)
            {
                throw new Exception("通过TaskID获取任务失败");
            }

            //int startIndex=FormXml.LastIndexOf(@"\"); 
            //int endIndex=FormXml.LastIndexOf(".aspx");
            // FormXml = FormXml.Substring(startIndex+1, endIndex - startIndex-1);
            FormXml = FormXml.Replace(".aspx", "");
            FormXml = FormXml.Replace("\\", "(");
            //throw new Exception(FormXml);
            XmlDocument layoutDoc = new XmlDocument();
            string layoutFilePath = HttpContext.Current.Server.MapPath(String.Format("~/FormLayout/{0}.xml", FormXml));

            string debugger = "";
            if (System.IO.File.Exists(layoutFilePath))
            {
                layoutDoc.Load(layoutFilePath);

                XmlNodeList layoutTables = layoutDoc.SelectNodes("Layout/Table");
                foreach (XmlNode layoutTable in layoutTables)
                {
                    string TableID = TryGetNodeAttribute(layoutTable, "ID");
                    //测试报文中Table是否与流程中的Table匹配
                    debugger += "[TableID]" + TableID;
                    foreach (FlowDataTable item in formData.Tables)
                    {
                        debugger += "[TableName]" + item.TableName;
                    }
                    //

                    FlowDataTable formDataTable = formData.Tables[TableID];

                    try
                    {
                        if (formDataTable != null)
                        {
                            JObject bwTable = new JObject();
                            FormInfo.Add(bwTable);
                            bwTable["TableName"] = TableID;
                            bwTable["DisplayName"] = TryGetNodeAttribute(layoutTable, "Name");
                            bwTable["IsRepeatable"] = formDataTable.IsRepeatableTable;

                            JArray bwRows = new JArray();
                            bwTable["Rows"] = bwRows;
                            foreach (FlowDataRow formDataRow in formDataTable.Rows)
                            {
                                JObject bwRow = new JObject();
                                bwRows.Add(bwRow);

                                XmlNodeList layoutColumns = layoutTable.ChildNodes;
                                int i = 0;
                                foreach (XmlNode layoutColumn in layoutColumns)
                                {
                                    //debugger += "**" + TryGetNodeAttribute(layoutColumn, "Type") + "**";
                                    if (!string.IsNullOrEmpty(TryGetNodeAttribute(layoutColumn, "Type")) && TryGetNodeAttribute(layoutColumn, "Type").Equals("Attachment", StringComparison.OrdinalIgnoreCase))
                                    {

                                        JObject bwColumn = new JObject();

                                        bwRow["Attachments_" + layoutColumn.Name] = bwColumn;
                                        bwColumn["Name"] = TryGetNodeAttribute(layoutColumn, "Name");

                                        string FileID = Convert.ToString(formDataRow[layoutColumn.Name]);

                                        //调用方法获取附件名称,附件路径
                                        JObject Attachments = GetAttachments(FileID);

                                        JArray bwAttachments = new JArray();
                                        bwColumn["Items"] = bwAttachments;
                                        foreach (JObject item in JTokenToJArray(Attachments["files"]))
                                        {

                                            JObject attachment1 = new JObject();
                                            bwAttachments.Add(attachment1);
                                            attachment1["FileName"] = item["name"];
                                            attachment1["DownloadUrl"] = item["DownloadUrl"];
                                        }
                                        i++;
                                    }
                                    else
                                    {
                                        JObject bwColumn = new JObject();
                                        bwRow[layoutColumn.Name] = bwColumn;
                                        bwColumn["DataType"] = TryGetNodeAttribute(layoutColumn, "DataType");
                                        bwColumn["DataFormat"] = TryGetNodeAttribute(layoutColumn, "DataFormat");
                                        bwColumn["Order"] = TryGetNodeAttribute(layoutColumn, "Order"); 

                                        bwColumn["Name"] = TryGetNodeAttribute(layoutColumn, "Name");
                                        bwColumn["Value"] = Convert.ToString(formDataRow[layoutColumn.Name]);
                                    }
                                }

                            }
                        }
                    }
                    catch (Exception e)
                    {
                        throw new Exception(debugger + "---------" + e.Message);
                    }
                }
            }
            else
            {
                //throw new Exception(String.Format("流程[{0}]没有布局文件[{1}]", task.ProcessName, layoutFilePath));
            }


            return rv;
        }
        private JObject GetAttachments(string FileID)
        {
            JObject rv = new JObject();

            if (!String.IsNullOrEmpty(FileID))
            {

                string[] ids = FileID.Split(',', ';');
                AttachmentCollection attachments;
                using (IDbConnection cn = QueryManager.CurrentProvider.OpenConnection())
                {
                    attachments = YZAttachmentHelper.GetAttachmentsInfo(cn, ids);
                }

                JArray ja = new JArray();
                rv["files"] = ja;
                foreach (Attachment item in attachments)
                {
                    JObject jo = new JObject();
                    ja.Add(jo);


                    jo["name"] = item.Name;
                    string requestUrl = HttpContext.Current.Request.Url.ToString();
                    string RedirectURLBase = requestUrl.Substring(0, requestUrl.IndexOf("YZSoft", StringComparison.OrdinalIgnoreCase)) + "YZSoft.Services.REST/Attachment/download.ashx?" + item.FileID;
                    jo["DownloadUrl"] = RedirectURLBase;
                }
            }
            return rv;
        }
        private JArray JTokenToJArray(JToken jtoken)
        {
            return (jtoken == null) ? new JArray() : jtoken as JArray;
        }
        /// <summary>
        /// 从报文格式中获取节点属性值
        /// </summary>
        /// <param name="node">节点名称</param>
        /// <param name="AttributeName">属性名</param>
        /// <returns></returns>
        private string TryGetNodeAttribute(XmlNode node, string AttributeName)
        {
            string v = node.Attributes[AttributeName]?.Value;
            return String.IsNullOrEmpty(v) ? "" : v;
        }
        /// <summary>
        /// 判断任务是否是当前待办
        /// </summary>
        /// <param name="UserAccount">帐号</param>
        /// <param name="StepID">步骤id</param>
        /// <returns></returns>
        private bool IsCurrentStep(BPMConnection cn, string UserAccount, int StepID, int TaskID)
        {
            BPMStepCollection _steps = BPMTask.GetAllSteps(cn, TaskID);
            foreach (BPMProcStep item in _steps)
            {
                if (item.IsHumanStep)
                    if (item.StepID == StepID && item.RecipientAccount.Equals(UserAccount, StringComparison.OrdinalIgnoreCase))
                        return true;
            }
            return false;
        }

        private Member GetMember(BPMConnection cn, string UserAccount)
        {
            Member m = new Member();
            MemberCollection members = OrgSvr.GetUserPositions(cn, UserAccount);
            if (members.Count > 0)
                m = members[0];

            return m;
        }

        //private string GetParamValue(string paramName)
        //{
        //    return this.GetParamValue(paramName, false, null);
        //}

        //private string GetParamValue(string paramName, string defaultValue)
        //{
        //    return this.GetParamValue(paramName, true, defaultValue);
        //}

        //private string GetParamValue(string paramName, bool allowNull, string defaultValue)
        //{
        //    string value = HttpContext.Current.Request.Params[paramName];
        //    if (value != null)
        //        value = value.Trim();

        //    if (String.IsNullOrEmpty(value))
        //    {
        //        if (allowNull)
        //            return defaultValue;
        //        else
        //            throw new Exception(String.Format("参数{0}不能为空", paramName));
        //    }

        //    return value;
        //}

        private string getTaskFilter(string ProcessName, string Keyword, bool IsMyTask)
        {
            string FilterString = null;
            List<string> FilterParams = new List<string>();
            if (!(String.IsNullOrEmpty(ProcessName) && String.IsNullOrEmpty(Keyword)))
            {
                if (!String.IsNullOrEmpty(ProcessName))
                {
                    FilterString = String.Format("(ProcessName=N'{0}')", EncodeText(ProcessName));
                }
                if (!String.IsNullOrEmpty(Keyword))
                {
                    if (!String.IsNullOrEmpty(FilterString))
                        FilterString += " AND ";
                    FilterParams.Add(String.Format("(SerialNum LIKE '%{0}%')", EncodeText(Keyword)));
                    FilterParams.Add(String.Format("(OwnerAccount LIKE '%{0}%')", EncodeText(Keyword)));
                    FilterParams.Add(String.Format("(AgentAccount LIKE '%{0}%')", EncodeText(Keyword)));
                    FilterParams.Add(String.Format("(Description LIKE '%{0}%')", EncodeText(Keyword)));
                    if (IsNumber(Keyword))
                        FilterParams.Add(String.Format("(TaskID = {0})", EncodeText(Keyword)));
                    if (IsMyTask)
                        FilterParams.Add(String.Format("(NodeName LIKE '%{0}%')", EncodeText(Keyword)));
                    FilterString += "(" + String.Join(" OR ", FilterParams.ToArray()) + ")";
                }
            }
            return FilterString;
        }

        private string EncodeText(string str)
        {
            if (String.IsNullOrEmpty(str))
                return str;

            return str.Replace("'", "''");
        }

        private bool IsNumber(string strVar)
        {
            int count = strVar.Length;
            for (int i = 0; i < count; i++)
            {
                char ch = strVar[i];
                if (ch < '0' || ch > '9')
                    return false;
            }

            return true;
        }

        private string GetParamValue(string paramName)
        {
            return this.GetParamValue(paramName, false, null);
        }

        private string GetParamValue(string paramName, string defaultValue)
        {
            return this.GetParamValue(paramName, true, defaultValue);
        }

        private string GetParamValue(string paramName, bool allowNull, string defaultValue)
        {
            JObject input = new JObject();
            try
            {
                input = JObject.Parse(requestString);
            }
            catch (Exception)
            {
                throw new Exception("请求报文格式错误");
            }

            string value = Convert.ToString(input[paramName]);

            if (String.IsNullOrEmpty(value))
            {
                if (allowNull)
                    return defaultValue;
                else
                    throw new Exception(String.Format("找不到参数{0}", paramName));
            }

            return value;
        }

        private bool SetAuth(string UserAccount)
        {
            if (YZAuthHelper.IsAuthenticated)
            {
                return true;
            }

            if (!String.IsNullOrEmpty(UserAccount))
            {
                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpenAnonymous();
                    string regularAccount = null;
                    if (BPM.Client.User.IsAccountExist(cn, UserAccount, ref regularAccount))
                    {
                        YZAuthHelper.SetAuthCookie(regularAccount);
                        YZAuthHelper.ClearLogoutFlag();

                        return true;
                    }
                    else
                    {
                        YZAuthHelper.ClearLogoutFlag();
                    }
                }
            }
            return false;
        }

        private void ClearAuth()
        {
            YZAuthHelper.SignOut();
            YZAuthHelper.SetLogoutFlag("logout", String.Empty);
        }

        private void CheckRomoteAddress()
        {
            return;

            List<string> AllowedAddress = new List<string>();
            AllowedAddress.Add("::1");//localhost
            AllowedAddress.Add("127.0.0.1");

            string RemoteAddress = Convert.ToString(HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"]);
            if (AllowedAddress.Find(delegate (string item) { return String.Equals(item, RemoteAddress, StringComparison.OrdinalIgnoreCase); }) == null)
                throw new Exception("请求来源地址非法");
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