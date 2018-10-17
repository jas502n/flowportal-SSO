using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using BPM.Client;
using BPM;
using Net.MobileHelper;
using Net.MobileHelper.YZSoft.Resources;
using System.IO;
using System.Data;
using System.Text;

namespace iAnywhere.YZSoft.services
{
    /// <summary>
    /// OutOffice 的摘要说明
    /// </summary>
    public class OutOffice : IHttpHandler
    {


        public void ProcessRequest(HttpContext context)
        {
            try
            {
                YZAuthHelper.OAuth();

                //YZAuthHelper.AshxAuthCheck();

                string method = context.Request.Params["Method"];
                JsonItem JosonRv = new JsonItem();

                if (YZStringHelper.EquName(method, "GET"))
                {
                    string uid = YZAuthHelper.LoginUserAccount;
                    using (BPMConnection cn = new BPMConnection())
                    {
                        JsonItem data = new JsonItem();
                        JosonRv.Attributes.Add("data", data);

                        cn.WebOpen();

                        UserAccount currentUser = cn.getCurrentUser(uid);


                        User user = User.FromAccount(cn, uid);

                        #region 用户信息
                        data.Attributes["Account"] = user.Account;
                        data.Attributes["HRID"] = user.HRID;
                        data.Attributes["DisplayName"] = user.ShortName;
                        data.Attributes["Mobile"] = user.Mobile;
                        data.Attributes["OfficePhone"] = user.OfficePhone;
                        data.Attributes["HomePhone"] = user.HomePhone;
                        data.Attributes["EMail"] = user.EMail;
                        data.Attributes["Office"] = user.Office;
                        data.Attributes["Birthday"] = YZStringHelper.DateToString(user.Birthday);
                        data.Attributes["DateHired"] = YZStringHelper.DateToString(user.DateHired);
                        data.Attributes["Desc"] = user.Description;
                        #endregion

                        #region 获得OU
                        //获得OU
                        String OULevel = String.Empty;
                        String OUName = String.Empty;
                        String Dept = String.Empty;
                        BPMObjectNameCollection depts = new BPMObjectNameCollection();
                        MemberCollection members = OrgSvr.GetUserPositions(cn, uid);
                        foreach (Member member in members)
                        {
                            OU ou = member.GetParentOU(cn);
                            OULevel = ou.OULevel;
                            Dept = ou.Name;

                            String FullName = member.GetParentOU(cn).FullName;
                            String mFullName = member.FullName;
                            String mDepartment = member.Department;


                            if (!ou.IsRootOU)
                            {
                                OUName = mFullName.Split(new char[2] { '/', '/' })[2];
                                depts.Add(OUName);
                            }
                            else
                            {

                                OUName = ou.Name;
                            }

                            if (String.IsNullOrEmpty(member.LeaderTitle))
                                depts.Add(ou.Name);
                            else
                                depts.Add(String.Format("{0}({1})", ou.Name, member.LeaderTitle));



                        }

                        data.Attributes["Dept"] = String.Join(" > ", depts.ToArray());
                        #endregion


                        UserCommonInfo userCommonInfo = UserCommonInfo.FromAccount(cn, uid);

                        data.Attributes["AppSN"] = Net.Common.JosonRandom.GetRandomByDateTime(1, 999).Replace("/", "");
                        data.Attributes["AppCompany"] = OUName.GetShortName();
                        data.Attributes["AppDept"] = Dept;
                        data.Attributes["AppDate"] = DateTime.Now;
                        data.Attributes["AppHRName"] = user.ShortName;
                        data.Attributes["AppHRID"] = YZAuthHelper.LoginUserAccount;
                        data.Attributes["isSkyWorth"] = currentUser.AppFristDept != "制造中心" ? 0 : 1;
                        data.Attributes["AppComDept"] = currentUser.AppCompany.ToConnects("\\") + currentUser.AppDept;



                        JosonRv.Attributes.Add("success", true);
                        JosonRv.Attributes.Add("successMessage", "ok");
                        context.Response.Write(JosonRv.ToString());

                    }
                }
                else if (YZStringHelper.EquName(method, "Submit"))
                {

                    //遍历File表单元素        
                    //HttpFileCollection files = HttpContext.Current.Request.Files;
                    //try
                    //{
                    //    for (int iFile = 0; iFile < files.Count; iFile++)
                    //    {
                    //        ///检查文件扩展名字            
                    //        HttpPostedFile postedFile = files[iFile];
                    //        string fileName, fileExtension;
                    //        fileName = System.IO.Path.GetFileName(postedFile.FileName);
                    //        if (fileName != "")
                    //        {
                    //            ///注意：可能要修改你的文件夹的匿名写入权限。             
                    //            postedFile.SaveAs(System.Web.HttpContext.Current.Request.MapPath("YZSoft/attachment/") + fileName);
                    //        }
                    //    }

                    //    HttpContext.Current.Response.Write("{success:true,msg:'File was successfully uploaded.'}");
                    //}
                    //catch (System.Exception Ex)
                    //{
                    //    HttpContext.Current.Response.Write("{success:true,msg:'File was successfully uploaded.'}");
                    //}



                    #region 接收数据
                    string uid = YZAuthHelper.LoginUserAccount;

                    string EmpID = Convert.ToString(context.Request.Params["AppHRID"]);
                    string EmpName = Convert.ToString(context.Request.Params["AppHRName"]);
                    string LeaveID = Convert.ToString(context.Request.Params["LeaveID"]);
                    string LeaveName = Convert.ToString(context.Request.Params["LeaveName"]);
                    string LeaveTypeID = Convert.ToString(context.Request.Params["LeaveTypeID"]);


                    String AppSN = Convert.ToString(context.Request.Params["AppSN"]);
                    String AppCompany = Convert.ToString(context.Request.Params["AppCompany"]);
                    String AppDept = Convert.ToString(context.Request.Params["AppDept"]);
                    DateTime AppDate = Convert.ToDateTime(context.Request.Params["AppDate"]);
                    String AppHRName = Convert.ToString(context.Request.Params["AppHRName"]);
                    String AppHRID = Convert.ToString(context.Request.Params["AppHRID"]);

                    String Address = Convert.ToString(context.Request.Params["Address"]);

                    DateTime FromDate = YZStringHelper.StringToDate(context.Request.Params["startTime"]);
                    DateTime ToDate = YZStringHelper.StringToDate(context.Request.Params["endTime"]);

                    String allHours = Convert.ToString(context.Request.Params["allHours"]);
                    int DayInt = Convert.ToInt32(allHours.Split('天')[0]);
                    int HourInt = Convert.ToInt32(allHours.Split('天')[1].Split('小')[0]);


                    String reasonWhyNote = Convert.ToString(context.Request.Params["reasonWhy"]);
                    String suggestionMsg = Convert.ToString(context.Request.Params["suggestionMsg"]);
                    String strAttachment = Convert.ToString(context.Request.Params["strAttachment"]);

                    int isSkyWorth = Convert.ToInt32(context.Request.Params["isSkyWorth"]);



                    #region  iPHone 早期版本 客户端Bug修改

                    String strFromClient = submitFrom.UserAgent(context);

                    //if (suggestionMsg.IndexOf("iphone") > -1 || suggestionMsg.IndexOf("iPhone") > -1)
                    //{

                    //    if (LeaveTypeID == "20")
                    //    {
                    //        LeaveTypeID = "30";

                    //    }
                    //    else
                    //    {
                    //        LeaveTypeID = LeaveTypeID == "30" ? "20" : LeaveTypeID;
                    //    }
                    //}

                    #endregion


                    #endregion

                    using (BPMConnection cn = new BPMConnection())
                    {
                        cn.WebOpen();

                        //  Net.Common.GetRequestForm.Post<T>

                        //   http://extjs.org.cn/node/712


                        #region 提交数据
                        MemoryStream xmlStream = GeneratePostXML(Guid.NewGuid(), cn
                                        , AppSN
                                        , AppHRID
                                        , AppHRName
                                        , AppDate
                                        , AppDept
                                        , AppCompany

                                        , EmpID
                                        , EmpName
                                        , LeaveID
                                        , LeaveName
                                        , LeaveTypeID
                                        , FromDate
                                        , ToDate
                                        , DayInt
                                        , HourInt
                                        , reasonWhyNote + suggestionMsg + "\n\r" + strFromClient
                                        , strAttachment
                                        , isSkyWorth

                                     );
                        #endregion

                        PostResult result = BPMProcess.Post(cn, xmlStream);
                        String DisplayName = result.Recipients[0].Owner.DisplayName;

                        //JsonItem JosonRv = new JsonItem();
                        JosonRv.Attributes.Add("success", true);
                        JosonRv.Attributes.Add("successMessage", "\n\r <BR> 流程【" + result.SN + "】\n\r <BR> 成功提交给 " + DisplayName);
                        context.Response.Write(JosonRv.ToString());
                    }



                }
                else
                {
                    String strMsg = String.Format(JosonStrings.Aspx_UnknowCommand, method);

                    //JsonItem JosonRv = new JsonItem();
                    JosonRv.Attributes.Add("success", false);
                    JosonRv.Attributes.Add("errorMessage", strMsg);

                    context.Response.Write(JosonRv.ToString());

                    throw new Exception(strMsg);
                }

                //System.Threading.Thread.Sleep(500);


            }
            catch (Exception e)
            {
                JsonItem JosonRv = new JsonItem();
                JosonRv.Attributes.Add("success", false);
                JosonRv.Attributes.Add("errorMessage", e.Message);
                context.Response.Write(JosonRv.ToString());
            }
        }


        private MemoryStream GeneratePostXML(Guid guid, BPMConnection cn

                                                , string AppSN
                                                , string AppHRID
                                                , string AppHRName
                                                , DateTime AppDate
                                                , string AppDept
                                                , string AppCompany
                                                , string EmpID
                                                , string EmpName
                                                , string LeaveID
                                                , string LeaveName
                                                , string LeaveTypeID
                                                , DateTime FromDate
                                                , DateTime ToDate
                                                , Int32 DayInt
                                                , int HourInt
                                                , string Note
                                                , string strAttachment
                                                , int isSkyWorth

                                             )
        {
            //设置Header
            DataTable tableHeader = new DataTable("Header");
            tableHeader.Columns.Add(new DataColumn("Method", typeof(string)));
            tableHeader.Columns.Add(new DataColumn("ProcessName", typeof(string)));
            tableHeader.Columns.Add(new DataColumn("Action", typeof(string)));
            tableHeader.Columns.Add(new DataColumn("OwnerMemberFullName", typeof(string)));
            tableHeader.Columns.Add(new DataColumn("UploadFileGuid", typeof(string)));

            DataRow rowHeader = tableHeader.NewRow();

            //设置Header数据
            rowHeader["Method"] = "Post";
            rowHeader["ProcessName"] = isSkyWorth == 0 ? "请假申请" : "请假申请(石岩工厂)";
            rowHeader["Action"] = "提交";
            rowHeader["OwnerMemberFullName"] = OrgSvr.GetUserPositions(cn, YZAuthHelper.LoginUserAccount)[0].FullName;

            rowHeader["UploadFileGuid"] = guid.ToString();
            tableHeader.Rows.Add(rowHeader);


            //设置表单数据
            DataSet formDataSet = new DataSet("FormData");

            // There is not any row in table "HR_LEAVE_MAIN[DigitalHR]", please check data bind!

            #region 数据库

            //SELECT [TaskID]
            //      ,[AppSN]
            //      ,[AppHRID]
            //      ,[AppHRName]
            //      ,[AppDate]
            //      ,[AppDept]
            //      ,[AppCompany]
            //  FROM [HR_Digital].[dbo].[HR_LEAVE_MAIN]
            //GO



            //休假历史记录
            //    SELECT [ID]
            //          ,[TaskID]
            //          ,[EmpID]
            //          ,[FromDate]
            //          ,[ToDate]
            //          ,[Note]
            //          ,[LeaveName]
            //      FROM [HR_Digital].[dbo].[HR_LEAVE_HISTORY]
            //    GO


            //SELECT [ID]
            //      ,[TaskID]
            //      ,[EmpID]
            //      ,[EmpName]
            //      ,[LeaveID]
            //      ,[LeaveName]
            //      ,[FromDate]
            //      ,[ToDate]
            //      ,[DayInt]
            //      ,[HourInt]
            //      ,[Note]
            //      ,[Type]
            //      ,[isFinish]
            //      ,[Attachment]
            //      ,[SangjiaTpye]
            //  FROM [HR_Digital].[dbo].[HR_LEAVE_DTL]
            //GO

            //个人年假信息
            //SELECT TOP 1000 [ID]
            //      ,[TaskID]
            //      ,[EmpID]
            //      ,[YearNO]
            //      ,[YearSum]
            //      ,[YearUsed]
            //      ,[YearUsable]
            //      ,[ExpDate]
            //  FROM [HR_Digital].[dbo].[HR_LEAVE_YEAR] 
            #endregion


            DataTable SubmitDataTab = new DataTable("HR_LEAVE_MAIN");

            SubmitDataTab.Columns.Add(new DataColumn("TaskID", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("AppSN", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("AppHRID", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("AppHRName", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("AppDept", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("AppCompany", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("AppDate", typeof(DateTime)));


            DataRow rowData = SubmitDataTab.NewRow();
            rowData["AppSN"] = AppSN;
            rowData["AppHRID"] = AppHRID;
            rowData["AppHRName"] = AppHRName;
            rowData["AppDept"] = AppDept;
            rowData["AppCompany"] = AppCompany;
            rowData["AppDate"] = AppDate;

            SubmitDataTab.Rows.Add(rowData);
            formDataSet.Tables.Add(SubmitDataTab);



            SubmitDataTab = new DataTable("HR_LEAVE_DTL");

            SubmitDataTab.Columns.Add(new DataColumn("TaskID", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("EmpID", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("EmpName", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("LeaveID", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("LeaveName", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("SangjiaTpye", typeof(string)));

            SubmitDataTab.Columns.Add(new DataColumn("FromDate", typeof(DateTime)));
            SubmitDataTab.Columns.Add(new DataColumn("ToDate", typeof(DateTime)));

            SubmitDataTab.Columns.Add(new DataColumn("DayInt", typeof(int)));
            SubmitDataTab.Columns.Add(new DataColumn("HourInt", typeof(int)));

            SubmitDataTab.Columns.Add(new DataColumn("Note", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("Attachment", typeof(string)));

            SubmitDataTab.Columns.Add(new DataColumn("isFinish", typeof(string)));


            rowData = SubmitDataTab.NewRow();
            rowData["EmpID"] = EmpID;
            rowData["EmpName"] = EmpName;
            rowData["LeaveID"] = LeaveTypeID;
            rowData["LeaveName"] = LeaveName;
            rowData["SangjiaTpye"] = LeaveID;


            rowData["FromDate"] = FromDate;
            rowData["ToDate"] = ToDate;
            rowData["DayInt"] = DayInt;
            rowData["HourInt"] = HourInt;

            rowData["Note"] = Note;
            rowData["Attachment"] = strAttachment;

            SubmitDataTab.Rows.Add(rowData);
            formDataSet.Tables.Add(SubmitDataTab);


            //生成XML
            StringBuilder strBuilder = new StringBuilder();
            StringWriter strWirter = new StringWriter(strBuilder);

            strWirter.WriteLine("<?xml version=\"1.0\"?>");
            strWirter.WriteLine("<XForm>");

            tableHeader.WriteXml(strWirter, XmlWriteMode.IgnoreSchema, false);
            formDataSet.WriteXml(strWirter);

            strWirter.WriteLine("</XForm>");

            strWirter.Close();

            String xmlData = strBuilder.ToString();
            xmlData = xmlData.Replace("<DocumentElement>", "");
            xmlData = xmlData.Replace("</DocumentElement>", "");

            MemoryStream xmlStream = new MemoryStream(UTF8Encoding.UTF8.GetBytes(xmlData));

            return xmlStream;
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