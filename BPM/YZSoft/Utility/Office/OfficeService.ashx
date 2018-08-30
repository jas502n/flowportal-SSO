<%@ WebHandler Language="C#" Class="OfficeService" %>

using System;
using System.Web;
using DBstep;
using BPM;
using BPM.Client;
using System.IO;
using System.Data;

public class OfficeService : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        iMsgServer2000 OfficeContent = new iMsgServer2000();
        OfficeContent.Load(context.Request);
        string option = OfficeContent.GetMsgByName("OPTION");                                          //取得操作信息

        if (option.Equals("LOADFILE"))
        {
            string fileId = OfficeContent.GetMsgByName("RECORDID");
            if (!String.IsNullOrEmpty(fileId))
            {
                string filePath = Attachment.FileIDToPath(fileId, YZAttachmentHelper.AttachmentRootPath);
                byte[] fileBody = System.IO.File.ReadAllBytes(filePath);
                OfficeContent.MsgFileBody(fileBody);				                                  //将文件信息打包
                OfficeContent.SetMsgByName("STATUS", "打开成功!.");		                          //设置状态信息
                OfficeContent.MsgError("");
                OfficeContent.Send(context.Response);
            }
        }
        
        if (option.Equals("SAVEFILE"))
        {
            string recordId = OfficeContent.GetMsgByName("RECORDID");
            string fileId = recordId;
            byte[] fileBody = OfficeContent.MsgFileBody();					                              //取得文档内容

            string savePath;
            if (String.IsNullOrEmpty(fileId))
                fileId = YZAttachmentHelper.GetNewFileID();
            savePath = Attachment.FileIDToPath(fileId, YZAttachmentHelper.AttachmentRootPath);

            Directory.CreateDirectory(savePath.Substring(0, savePath.LastIndexOf(@"\")));
            using (FileStream fs = new FileStream(savePath, FileMode.OpenOrCreate))
            {
                fs.Write(fileBody, 0, fileBody.Length);
            }

            if (String.IsNullOrEmpty(recordId))
            {
                Attachment attachment = new Attachment();
                attachment.FileID = fileId;
                attachment.Name = OfficeContent.GetMsgByName("FILENAME"); ;
                attachment.Ext = OfficeContent.GetMsgByName("FILETYPE");
                attachment.Size = OfficeContent.MsgFileSize();
                attachment.LastUpdate = DateTime.Now;
                attachment.OwnerAccount = YZAuthHelper.LoginUserAccount;

                using (IDbConnection cn = QueryManager.CurrentProvider.OpenConnection())
                {
                    QueryManager.CurrentProvider.InsertAttachmentInfo(cn, attachment);
                }
            }

            OfficeContent.MsgTextClear();
            OfficeContent.SetMsgByName("Status", fileId);
            OfficeContent.MsgFileClear();
            OfficeContent.Send(context.Response);
        }
        //context.Request.
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}