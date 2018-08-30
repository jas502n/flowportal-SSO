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
using System.Security;
using System.Security.Principal;
using System.Text;
using BPM;
using BPM.Client;

/// <summary>
/// AspxHelper 的摘要说明
/// </summary>
public class AspxHelper
{
    public static string GenTaskAccessToken(int taskid)
    {
        string code = String.Format("{0};{1}", taskid, HttpContext.Current.Application["BPMConnection"]);
        return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(code, "SHA1").ToLower();
    }

    public static bool CheckTaskAccessToken(int taskid, string token)
    {
        if (String.IsNullOrEmpty(token))
            return false;

        string code = String.Format("{0};{1}", taskid, HttpContext.Current.Application["BPMConnection"]);
        string tokenReal = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(code, "SHA1").ToLower();
        if (token == tokenReal)
            return true;
        else
            return false;
    }

    public static int[] StringToIntArray(string str)
    {
        string[] strids = str.Split(',');

        List<int> idarray = new List<int>();
        foreach (string strid in strids)
        {
            if (String.IsNullOrEmpty(strid))
                continue;

            int id;
            if (Int32.TryParse(strid, out id))
                idarray.Add(id);
        }

        return idarray.ToArray();
    }

    public static bool IsNumber(string strVar)
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

    public static string DateToString(DateTime date)
    {
        if (date == DateTime.MinValue)
            return null;
        else
            return date.ToString("yyyy-MM-dd");
    }

    public static string DateToStringL(DateTime date)
    {
        if (date == DateTime.MinValue)
            return null;
        else
        {
            return date.ToString("yyyy-MM-dd HH:mm:ss", new System.Globalization.CultureInfo(1033));
        }
    }

    public static string GetTaskStatusHTML(BPMConnection cn,TaskState state,int taskid)
    {
        if (state == TaskState.Running)
        {
            BPMStepCollection steps = BPMTask.GetInProcessSteps(cn, taskid);
            StringBuilder sb = new StringBuilder();
            foreach (BPMProcStep step in steps)
            {
                if (sb.Length != 0)
                    sb.Append("</br>");
                sb.AppendFormat("{0}&nbsp;[{1}]", step.NodeName, GetUserFriendlyName(step.RecipientAccount, step.RecipientFullName));
            }

            return sb.ToString();
        }
        else
        {
            return GetTaskStatusHTML(state);
        }
    }

    public static string GetTaskStatusHTML(TaskState state)
    {
        switch (state)
        {
            case TaskState.Running:
                return Resources.BPMResource.Com_Processing;
            case TaskState.Approved:
                return Resources.BPMResource.Com_Approved;
            case TaskState.Rejected:
                return Resources.BPMResource.Com_Rejected;
            case TaskState.Aborted:
                return Resources.BPMResource.Com_Aborted;
            case TaskState.Deleted:
                return Resources.BPMResource.Com_Deleted;
            default:
                return Resources.BPMResource.Com_UnknownStatus;
        }
    }

    public static bool IsAuthenticated
    {
        get
        {
            HttpContext context = HttpContext.Current;

            if (context.User.Identity.IsAuthenticated)
                return true;

            HttpCookie authCookie = context.Request.Cookies[FormsAuthentication.FormsCookieName];
            if (authCookie != null)
            {
                FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(authCookie.Value);
                FormsIdentity identity = new FormsIdentity(ticket);
                return identity.IsAuthenticated;

                //GenericPrincipal principal = new GenericPrincipal(identity, null);
                //context.User = principal;
            }

            return false;
            //return context.User.Identity.IsAuthenticated;
        }
    }

    //调用之前必需先调用 IsAuthenticated
    public static string LoginUserAccount
    {
        get
        {
            HttpContext context = HttpContext.Current;

            if (context.User.Identity.IsAuthenticated)
                return context.User.Identity.Name;

            HttpCookie authCookie = context.Request.Cookies[FormsAuthentication.FormsCookieName];
            if (authCookie != null)
            {
                try
                {
                    FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(authCookie.Value);
                    return ticket.Name;
                }
                catch
                {
                }
            }

            return String.Empty;
        }
    }

    public static void SetAuthCookie(string account)
    {
        FormsAuthentication.SetAuthCookie(account, false);
    }

    public static void SignOut()
    {
        LoginManager.OnSignOut();
        FormsAuthentication.SignOut();
    }

    public static void SetFromLogoutFlag()
    {
        HttpCookie cookie = new HttpCookie("bpmFromLogout", "yes");
        cookie.HttpOnly = true;

        HttpContext context = HttpContext.Current;
        context.Response.SetCookie(cookie);
    }

    public static void ClearFromLogoutFlag()
    {
        HttpCookie cookie = new HttpCookie("bpmFromLogout", "");
        cookie.HttpOnly = true;
        cookie.Expires = new DateTime(0x7cf, 10, 12);

        HttpContext context = HttpContext.Current;
        context.Response.Cookies.Remove("bpmFromLogout");
        context.Response.Cookies.Add(cookie);
    }

    public static bool IsFromLogout
    {
        get
        {
            HttpContext context = HttpContext.Current;
            HttpCookie cookie = context.Request.Cookies["bpmFromLogout"];

            if (cookie != null && cookie.Value != null && cookie.Value == "yes")
                return true;
            else
                return false;
        }
    }

    public static string CombinCond(string[] conds)
    {
        string rv = String.Empty;

        if (conds.Length == 0)
            return rv;

        foreach (string cond in conds)
        {
            if(String.IsNullOrEmpty(cond))
                continue;

            if (String.IsNullOrEmpty(rv))
                rv = cond;
            else
                rv = "(" + rv + ") AND (" + cond + ")";
        }

        return rv;
    }

    public static string GetUserFriendlyName(string account, string displayName)
    {
        if (String.IsNullOrEmpty(account)) //共享任务，Account可能为空
            return Resources.BPMResource.ShareStep_WaitPick;

        if (String.IsNullOrEmpty(displayName))
            return account;
        else
            return account + "(" + displayName + ")";
    }

    public static string AddAndCond(string cond1,string cond2)
    {
        if (String.IsNullOrEmpty(cond1))
            return cond2;

        if (String.IsNullOrEmpty(cond2))
            return cond1;

        return (cond1 + " AND " + cond2);
    }

    public static string GetSelActionDisplayString(BPMProcStep step)
    {
        if (!step.Finished)
            return Resources.BPMResource.Com_Processing;

        if (NameCompare.EquName(step.SelAction, SystemAction.Abort))
            return Resources.BPMResource.Com_SysAct_Abort;

        if (NameCompare.EquName(step.SelAction, SystemAction.RecedeBack))
            return Resources.BPMResource.Com_SysAct_RecedeBack;

        if (NameCompare.EquName(step.SelAction, SystemAction.AssignOwner))
            return Resources.BPMResource.Com_SysAct_AssignOwner;

        if (NameCompare.EquName(step.SelAction, SystemAction.Continue))
            return Resources.BPMResource.Com_SysAct_Continue;

        if (NameCompare.EquName(step.SelAction, SystemAction.Delete))
            return Resources.BPMResource.Com_SysAct_Delete;

        if (NameCompare.EquName(step.SelAction, SystemAction.Jump))
            return Resources.BPMResource.Com_SysAct_Jump + "(" + step.Memo + ")";

        if (NameCompare.EquName(step.SelAction, SystemAction.TimeoutJump))
            return Resources.BPMResource.Com_SysAct_TimeoutJump + "(" + step.Memo + ")";

        if (NameCompare.EquName(step.SelAction, SystemAction.PickBackRestart))
            return Resources.BPMResource.Com_SysAct_PickBackRestart;

        if (NameCompare.EquName(step.SelAction, SystemAction.RecedeRestart))
            return Resources.BPMResource.Com_SysAct_RecedeRestart;

        if (NameCompare.EquName(step.SelAction, SystemAction.Reject))
            return Resources.BPMResource.Com_SysAct_Reject;

        if (NameCompare.EquName(step.SelAction, SystemAction.Transfer))
            return Resources.BPMResource.Com_SysAct_Agent;

        if (NameCompare.EquName(step.SelAction, SystemAction.DirectSend))
            return Resources.BPMResource.Com_SysAct_DirectSend;

        if (step.AutoProcess)
            return step.SelAction + "(" + Resources.BPMResource.Com_Auto + ")";
        else if(step.BatchApprove)
            return step.SelAction + "(" + Resources.BPMResource.Com_BatchApprove + ")";
        else
            return step.SelAction;
    }


    public static BPMTaskListCollection FilterTaskList(BPMTaskListCollection srcTasks,string processName, string keyword)
    {
        if (String.IsNullOrEmpty(processName) &&
            String.IsNullOrEmpty(keyword))
            return srcTasks;

        BPMTaskListCollection tasks = new BPMTaskListCollection();

        foreach (BPMTaskListItem item in srcTasks)
        {
            if (!String.IsNullOrEmpty(processName))
            {
                if (!NameCompare.EquName(item.ProcessName, processName))
                    continue;
            }

            if (!String.IsNullOrEmpty(keyword))
            {
                if (!String.IsNullOrEmpty(item.SerialNum) && item.SerialNum.Contains(keyword))
                {
                    tasks.Add(item);
                    continue;
                }

                if (!String.IsNullOrEmpty(item.OwnerAccount) && item.OwnerAccount.Contains(keyword))
                {
                    tasks.Add(item);
                    continue;
                }

                if (!String.IsNullOrEmpty(item.Description) && item.Description.Contains(keyword))
                {
                    tasks.Add(item);
                    continue;
                }

                if (!String.IsNullOrEmpty(item.ProcessName) && item.ProcessName.Contains(keyword))
                {
                    tasks.Add(item);
                    continue;
                }

                if (AspxHelper.IsNumber(keyword) && item.TaskID.ToString() == keyword)
                {
                    tasks.Add(item);
                    continue;
                }
            }
            else
            {
                tasks.Add(item);
            }
        }

        return tasks;
    }

    public static string EncodeJsString(string s)
    {
        if (String.IsNullOrEmpty(s))
            return s;

        StringBuilder sb = new StringBuilder();
        foreach (char c in s)
        {
            switch (c)
            {
                case '\"':
                    sb.Append("\\\"");
                    break;
                case '\\':
                    sb.Append("\\\\");
                    break;
                case '\b':
                    sb.Append("\\b");
                    break;
                case '\f':
                    sb.Append("\\f");
                    break;
                case '\n':
                    sb.Append("\\n");
                    break;
                case '\r':
                    sb.Append("\\r");
                    break;
                case '\t':
                    sb.Append("\\t");
                    break;
                default:
                    int i = (int)c;
                    if (i < 32 || i > 127)
                    {
                        sb.AppendFormat("\\u{0:X04}", i);
                    }
                    else
                    {
                        sb.Append(c);
                    }
                    break;
            }
        }

        return sb.ToString();
    }

    public static string HtmlEncode(string s)
    {
        if (String.IsNullOrEmpty(s))
            return s;

        s = HttpUtility.HtmlEncode(s);
        s = s.Replace("\n", "<br/>");
        return s;
    }
}
