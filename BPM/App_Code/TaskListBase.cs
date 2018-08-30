using System;
using System.Data;
using System.Collections.Generic;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using BPM;
using BPM.Client;

/// <summary>
/// MyUserControl 的摘要说明
/// </summary>
public class TaskListBase : ListBase
{
    public TaskListBase()
    {
    }

    public override TableRow CreateHeaderRow()
    {
        TableRow row = new TableRow();
        row.CssClass = "TaskListHeaderRow";

        return row;
    }

    protected TableCell CreateStateColumn()
    {
        return CreateImageColumn("../Images/com_state16.gif", 20);
    }

    protected TableCell CreateShareColumn()
    {
        return CreateImageColumn("../Images/com_share16.gif", 20);
    }

    protected TableCell CreateAttachColumn()
    {
        return CreateImageColumn("../Images/com_attach.gif", 20);
    }

    protected TableCell CreateStateCell(TaskState taskstate)
    {
        string imgfile = null;

        switch (taskstate)
        {
            case TaskState.Running:
                imgfile = "../Images/st_process.gif";
                break;
            case TaskState.Pause:
                imgfile = "../Images/st_pause.gif";
                break;
            case TaskState.Stopped:
                imgfile = "../Images/st_stop.gif";
                break;
            case TaskState.Approved:
                //imgfile = "stprocess.gif";
                break;
            case TaskState.Rejected:
                //imgfile = "stprocess.gif";
                break;
        }

        if( !String.IsNullOrEmpty(imgfile) )
            return CreateImageCell(imgfile, 2);
        else
            return CreateEmptyCell(2);
    }

    protected TableCell CreateShareCell(BPMTaskListItem taskitem)
    {
        if (taskitem.Share)
            return CreateImageCell("../Images/com_share16.gif", 2);
        else
            return CreateEmptyCell(2);
    }

    protected TableCell CreateAttachCell(BPMTaskListItem taskitem)
    {
        return CreateImageCell("../Images/com_attach.gif", 2);
    }

    protected TableCell CreateCheckCell(BPMTaskListItem taskitem)
    {
        TableCell cell = new TableCell();
        cell.Text = "<input id=\"" + taskitem.StepID.ToString() + "\" taskid=\"" + taskitem.TaskID.ToString() + "\" type=\"checkbox\" onclick=\"checkrow(this);\">";
        cell.CssClass = "CHK";
        cell.ColumnSpan = 2;

        return cell;
    }

    protected TableCell CreateCheckCell(BPMTask taskitem)
    {
        TableCell cell = new TableCell();
        cell.Text = "<input id=\"" + taskitem.TaskID.ToString() + "\" taskid=\"" + taskitem.TaskID.ToString() + "\" type=\"checkbox\" onclick=\"checkrow(this);\">";
        cell.CssClass = "CHK";
        cell.ColumnSpan = 2;

        return cell;
    }

    protected TableCell CreateImageColumn(string imgurl, int width)
    {
        TableCell cell = new TableCell();
        Image img = new Image();
        img.ImageUrl = imgurl;
        cell.Controls.Add(img);
        cell.Width = new Unit(width, UnitType.Pixel);

        return cell;
    }

    protected TableRow CreateHSeprator2(int span)
    {
        TableRow row = new TableRow();
        TableCell cell = new TableCell();
        cell.ColumnSpan = span;
        cell.CssClass = "Sp2";
        row.Cells.Add(cell);

        return row;
    }

    protected virtual TableRow CreateTaskListItemRow(TaskState taskstate)
    {
        TableRow row = new TableRow();
        if( taskstate == TaskState.Pause ||
            taskstate == TaskState.Stopped )
            row.CssClass = "TaskRowGray";
        else
            row.CssClass = "TaskRow";

        return row;
    }

    protected string GetTaskOwnerHTML(string ownerFullName, string agentFullName)
    {
        if (String.IsNullOrEmpty(agentFullName))
        {
            if (String.IsNullOrEmpty(ownerFullName))
                return Resources.BPMResource.Com_StartBySystem;
            else
                return ownerFullName;
        }
        else
        {
            string html = String.Format("{0}<br /><span class=\"AgentName\">{1}{2}{3}</span>",
                ownerFullName,
                Resources.BPMResource.Com_PostByAgent1,
                agentFullName,
                Resources.BPMResource.Com_PostByAgent2);
            return html;
        }
    }
}
