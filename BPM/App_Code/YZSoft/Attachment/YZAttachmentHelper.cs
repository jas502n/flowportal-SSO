using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using System.Data.SqlClient;
using BPM;
using BPM.Client;

/// <summary>
/// YZAttachmentHelp 的摘要说明
/// </summary>
public class YZAttachmentHelper
{
    private static string _attachmentBaseUrl = null;
    private static string _attachmentRootPath = null;

    public static string GetNewFileID()
    {
        using (BPMConnection cn = new BPMConnection())
        {
            cn.WebOpen();
            string rv = cn.GetSerialNum("yz_sys_att" + DateTime.Today.ToString("yyyyMMdd"), 4, 1, 1);
            rv = rv.Substring("yz_sys_att".Length);
            return rv;
        }
    }

    public static string AttachmentBaseURL
    {
        get
        {
            if (YZAttachmentHelper._attachmentBaseUrl == null)
                YZAttachmentHelper._attachmentBaseUrl = System.Web.Configuration.WebConfigurationManager.AppSettings["AttachmentBaseURL"];

            return YZAttachmentHelper._attachmentBaseUrl;
        }
    }

    public static string AttachmentRootPath
    {
        get
        {
            if (YZAttachmentHelper._attachmentRootPath == null)
                YZAttachmentHelper._attachmentRootPath = System.Web.Configuration.WebConfigurationManager.AppSettings["AttachmentRootPath"];

            return YZAttachmentHelper._attachmentRootPath;
        }
    }

    public static AttachmentCollection GetAttachmentsInfo(IDbConnection cn,string[] fileIds)
    {
        AttachmentCollection rv = new AttachmentCollection();

        using (IDataReader reader = QueryManager.CurrentProvider.GetAttachmentsInfo(cn,fileIds))
        {
            while (reader.Read())
                rv.Add(new Attachment(reader, YZAttachmentHelper.AttachmentRootPath));
        }

        return rv;
    }

    public static Attachment GetAttachmentInfo(IDbConnection cn, string fileId)
    {
        if (String.IsNullOrEmpty(fileId))
            throw new Exception(Resources.YZStrings.Aspx_Upload_EmptyFileID);

        AttachmentCollection attachments = YZAttachmentHelper.GetAttachmentsInfo(cn,new string[] { fileId });

        if (attachments.Count == 0)
            throw new Exception(String.Format(Resources.YZStrings.Aspx_Upload_FileIDNotFount, fileId));

        return attachments[0];
    }

    // 根据附件ID得到附件的URL
    public static string GetAttachmentURL(string id)
    {
        return GetAttachmentURL(id, "download", new Dictionary<string, string>());
    }

    public static string GetAttachmentURL(string id, string action, Dictionary<string, string> option)
    {
        if (String.IsNullOrEmpty(id))
            throw new Exception(Resources.YZStrings.Aspx_Invalid_FileID);

        switch (action)
        {
            case "view":    // 查看操作(仅限图片)
                if ("|max|min|crop|crop_top|".IndexOf("|" + option["method"] + "|") == -1)
                    option["method"] = "crop";
                return AttachmentBaseURL + "/default.ashx?" + id + "&view=" + option["method"] + "-" + option["width"] + "-" + option["height"];
            default:    //不指定操作, 则默认为下载
                return AttachmentBaseURL + "/default.ashx?" + id;
        }

    }

    /*

    用法:


    GetAttachmentURL("12345678901234567890123456789012", "download")                                            //弹出下载对话框, 下载的是原始文件

    GetAttachmentURL("12345678901234567890123456789012")                                                        //同上, 可省略参数





    以下参数仅适用于图片附件:

    GetAttachmentURL("12345678901234567890123456789012", "view", { method:"crop", width: 200, height: 200 })    //按比例缩放后, 并裁剪为 200x200 的图片URL
                                                                                                                //注意: 为了在裁剪竖形照片时, 让人物头像显示正确, 所以裁剪的垂直位置都是顶部, 而非中间
                                                                                                                
    GetAttachmentURL("12345678901234567890123456789012", "view", { method:"max", width: 200, height: 200 })     //按比例缩放后, 不超过 200x200 的图片URL, 最终图片可能会小于这个尺寸

    GetAttachmentURL("12345678901234567890123456789012", "view", { method:"max", width: 200, height: 0 })       //按比例缩放后, 宽不超过 200, 高度不限 的图片URL

    GetAttachmentURL("12345678901234567890123456789012", "view", { method:"min", width: 200, height: 200 })     //按比例缩放后, 至少 200x200 的图片URL, 最终图片可能会大于这个尺寸

    GetAttachmentURL("12345678901234567890123456789012", "view", { method:"min", width: 200, height: 0 })       //按比例缩放后, 宽至少 200, 高度不限 的图片URL

    */
}
