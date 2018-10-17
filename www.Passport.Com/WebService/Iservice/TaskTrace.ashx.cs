using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using Net.MobileHelper;
using BPM.Client;
using BPM.Resources;

namespace iAnywhere.YZSoft.services
{
    /// <summary>
    /// TaskTrace 的摘要说明
    /// </summary>
    public class TaskTrace : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.OAuth();

            //YZAuthHelper.AshxAuthCheck();

            try
            {
                UIStrings rs = new UIStrings();
                int taskid = Int32.Parse(context.Request.Params["tid"]);

                JsonItem rv = new JsonItem();
                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();

                    BPMStepCollection steps = BPMTask.GetAllSteps(cn, taskid);
                    BPMTask task = BPMTask.Load(cn, taskid);

                    rv.Attributes.Add("sn", task.SerialNum);
                    rv.Attributes.Add("pn", task.ProcessName);

                    //将数据转化为Json集合
                    JsonItemCollection children = new JsonItemCollection();
                    rv.Attributes.Add("children", children);

                    foreach (BPMProcStep step in steps)
                    {
                        //不是有效的步骤
                        if (!step.IsHumanStep)
                            continue;

                        //跳过 - 无处理人的非共享任务
                        if (String.IsNullOrEmpty(step.OwnerAccount) && !step.Share)
                            continue;

                        JsonItem item = new JsonItem();
                        children.Add(item);

                        item.Attributes.Add("StepDisplayName", step.StepDisplayName);

                        string recpAccount;
                        string recpDisplayName;
                        if (step.Finished)
                        {
                            recpAccount = step.HandlerAccount;
                            recpDisplayName = YZStringHelper.GetUserShortName(step.HandlerAccount, step.HandlerFullName);
                        }
                        else
                        {
                            recpAccount = step.RecipientAccount;
                            recpDisplayName = YZStringHelper.GetUserShortName(step.RecipientAccount, step.RecipientFullName);
                        }

                        if (!step.IsConsignStep && recpAccount != step.OwnerAccount)
                        {
                            recpDisplayName = String.Format(rs["XFormDesigner.XSignTrace.OwnerFmt"], recpDisplayName, YZStringHelper.GetUserShortName(step.OwnerAccount, step.OwnerDisplayName));
                        }
                        item.Attributes.Add("Recipient", recpDisplayName);

                        item.Attributes.Add("OwnerAccount", step.OwnerAccount);
                        item.Attributes.Add("OwnerFullName", step.OwnerFullName);
                        item.Attributes.Add("OwnerDisplayName", step.OwnerDisplayName);
                      
                        item.Attributes.Add("Finished", step.Finished);
                        item.Attributes.Add("FinishAt", YZStringHelper.DateToStringM(step.FinishAt, ""));
                        item.Attributes.Add("ReceiveAt", YZStringHelper.DateToStringM(step.ReceiveAt, ""));

                        item.Attributes.Add("SelActionDisplayString", step.SelActionDisplayString);
                        item.Attributes.Add("Comments", HttpUtility.HtmlEncode(step.Comments));

                    }
                }

                //System.Threading.Thread.Sleep(500);
                //输出数据
                context.Response.Write(rv.ToString());

            }
            catch (Exception e)
            {
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", e.Message);
                context.Response.Write(rv.ToString());
            }


            context.Response.AppendHeader("Access-Control-Allow-Origin", "*");      // 响应类型 
            context.Response.AppendHeader("Access-Control-Allow-Methods", "POST");  // 响应头设置 
            context.Response.AppendHeader("Access-Control-Allow-Headers", "x-requested-with,content-type");

            context.Response.Charset = "gb2312"; //设置字符集类型  
            context.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
            context.Response.ContentType = "application/json;charset=gb2312";

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