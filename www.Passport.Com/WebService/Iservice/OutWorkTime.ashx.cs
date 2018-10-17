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
    /// OutWorkTime 的摘要说明
    /// </summary>
    public class OutWorkTime : IHttpHandler
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
 
                        //UserCommonInfo userCommonInfo = UserCommonInfo.FromAccount(cn, uid);

                        data.Attributes["AppSN"] = currentUser.AppSN;
                        data.Attributes["AppCompany"] = currentUser.AppCompany;
                        data.Attributes["AppDept"] = currentUser.AppDept;
                        data.Attributes["AppDate"] = currentUser.SubmitDateTime;
                        data.Attributes["AppHRName"] = currentUser.ShortName;
                        data.Attributes["AppHRID"] = currentUser.HRID;
                        data.Attributes["isSkyWorth"] = currentUser.AppFristDept != "制造中心" ? 0 : 1;
                        data.Attributes["AppComDept"] = currentUser.AppCompany.ToConnects("\\") + currentUser.AppDept;
 
                        JosonRv.Attributes.Add("success", true);
                        JosonRv.Attributes.Add("successMessage", "ok");
                        context.Response.Write(JosonRv.ToString());

                    }
                }
                else if (YZStringHelper.EquName(method, "Submit"))
                {
                    #region 接收数据
                    string uid = YZAuthHelper.LoginUserAccount;
   

                    String AppSN = Convert.ToString(context.Request.Params["AppSN"]);
                    String AppCompany = Convert.ToString(context.Request.Params["AppCompany"]);
                    String AppDept = Convert.ToString(context.Request.Params["AppDept"]);
                    DateTime AppDate = Convert.ToDateTime(context.Request.Params["AppDate"]);
                    String AppHRName = Convert.ToString(context.Request.Params["AppHRName"]);
                    String AppHRID = Convert.ToString(context.Request.Params["AppHRID"]);



                    string EmpID = Convert.ToString(context.Request.Params["AppHRID"]);
                    string EmpName = Convert.ToString(context.Request.Params["AppHRName"]);

                    String OverType = Convert.ToString(context.Request.Params["OverType"]);
                    String Address = Convert.ToString(context.Request.Params["Address"]);

                    DateTime BelongDay = YZStringHelper.StringToDate(context.Request.Params["BelongDay"]);
                    DateTime FromDate = YZStringHelper.StringToDate(context.Request.Params["startTime"]);
                    DateTime ToDate = YZStringHelper.StringToDate(context.Request.Params["endTime"]);

                    String allHours = Convert.ToString(context.Request.Params["allHours"]);
                    int DayInt = Convert.ToInt32(allHours.Split('天')[0]);
                    int HourInt = Convert.ToInt32(allHours.Split('天')[1].Split('小')[0]);
                    int SumTime = DayInt * 8 + HourInt;


                    String reasonWhyNote = Convert.ToString(context.Request.Params["reasonWhy"]);
                    String suggestionMsg = Convert.ToString(context.Request.Params["suggestionMsg"]);
                    String strAttachment = Convert.ToString(context.Request.Params["strAttachment"]);

                    int isSkyWorth = Convert.ToInt32(context.Request.Params["isSkyWorth"]);

                    String strFromClient = submitFrom.UserAgent(context);

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
                                        , OverType
                                        , Address
                                        , BelongDay
                                        , FromDate
                                        , ToDate
                                        , SumTime

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
                                                , string OverType
                                                , string OverNote
                                               
                                                , DateTime BelongDay
                                                , DateTime FromDate
                                                , DateTime ToDate
                                                , Int32 SumTime
                                               
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
            rowHeader["ProcessName"] = isSkyWorth == 0 ? "加班申请" : "加班申请(石岩工厂)";
            rowHeader["Action"] = "提交";
            rowHeader["OwnerMemberFullName"] = OrgSvr.GetUserPositions(cn, YZAuthHelper.LoginUserAccount)[0].FullName;

            rowHeader["UploadFileGuid"] = guid.ToString();
            tableHeader.Rows.Add(rowHeader);


            //设置表单数据
            DataSet formDataSet = new DataSet("FormData");

          

            #region 数据库

            //SELECT [TaskID]
            //      ,[AppSN]
            //      ,[AppHRID]
            //      ,[AppHRName]
            //      ,[AppDate]
            //      ,[AppDept]
            //      ,[AppCompany]
            //  FROM [HR_Digital].[dbo].[HR_OVERTIME_MAIN]
            //GO



            //SELECT [ID]
            //      ,[TaskID]
            //      ,[EmpID]
            //      ,[EmpName]
            //      ,[OverType]
            //      ,[OverNote]
            //      ,[BelongDay]
            //      ,[FromDate]
            //      ,[ToDate]
            //      ,[SumTime]
            //      ,[Note]
            //      ,[Type]
            //      ,[isFinish]
            //  FROM [HR_Digital].[dbo].[HR_OVERTIME_DTL]
            //GO



            //    SELECT [ID]
            //      ,[TaskID]
            //      ,[EmpID]
            //      ,[BelongDay]
            //      ,[FromDate]
            //      ,[ToDate]
            //      ,[SumTime]
            //      ,[Note]
            //  FROM [HR_Digital].[dbo].[HR_OVERTIME_HISTORY]
            //GO




 
            #endregion



            DataTable SubmitDataTab = new DataTable("HR_OVERTIME_MAIN");

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



            SubmitDataTab = new DataTable("HR_OVERTIME_DTL");

            SubmitDataTab.Columns.Add(new DataColumn("TaskID", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("EmpID", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("EmpName", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("OverType", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("OverNote", typeof(string)));

            SubmitDataTab.Columns.Add(new DataColumn("BelongDay", typeof(DateTime)));
            SubmitDataTab.Columns.Add(new DataColumn("FromDate", typeof(DateTime)));
            SubmitDataTab.Columns.Add(new DataColumn("ToDate", typeof(DateTime)));

            SubmitDataTab.Columns.Add(new DataColumn("SumTime", typeof(int)));
          

            SubmitDataTab.Columns.Add(new DataColumn("Note", typeof(string)));
            SubmitDataTab.Columns.Add(new DataColumn("Attachment", typeof(string)));

            SubmitDataTab.Columns.Add(new DataColumn("isFinish", typeof(string)));


            rowData = SubmitDataTab.NewRow();
            rowData["EmpID"] = EmpID;
            rowData["EmpName"] = EmpName;
            rowData["OverType"] = OverType;
            rowData["OverNote"] = OverNote;

            rowData["BelongDay"] = BelongDay;
            rowData["FromDate"] = FromDate;
            rowData["ToDate"] = ToDate;
            rowData["SumTime"] = SumTime;
         
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