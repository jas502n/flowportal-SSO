using System;
using System.Data;
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
/// ListBase 的摘要说明
/// </summary>
public class ListBase : UserControl
{
    public ListBase()
    {
    }

    private Image CreateSepratorImage()
    {
        Image imgSp = new Image();
        imgSp.ImageUrl = "../Images/com_sp1.jpg";

        return imgSp;
    }

    public virtual TableRow CreateHeaderRow()
    {
        TableRow row = new TableRow();
        row.CssClass = "ListHeaderRow";

        return row;
    }

    public TableRow CreateItemRow()
    {
        TableRow row = new TableRow();
        row.CssClass = "ListItemRow";

        return row;
    }

    public TableCell CreateSepratorColumn()
    {
        TableCell cellSp = new TableCell();
        cellSp.Controls.Add(this.CreateSepratorImage());
        cellSp.Width = new Unit(2, UnitType.Pixel);

        return cellSp;
    }

    public TableCell CreateCheckColumn()
    {
        TableCell cell = new TableCell();
        //一下代码会引起：画面切换时显示TaskList$ctl22从新分配错误
        //CheckBox checkBox = new CheckBox();
        //checkBox.Attributes.Add("OnClick", "checkall(this)");
        //checkBox.EnableViewState = false;
        //cell.Controls.Add(checkBox);
        cell.Width = new Unit(20, UnitType.Pixel);
        cell.CssClass = "CHK";
        cell.Text = "<input type=\"checkbox\" onclick=\"checkall(this);\" />";

        return cell;
    }

    protected TableCell CreateEmptyCell(int span)
    {
        return CreateCell("&nbsp;", span);
    }

    public TableCell CreateColumn(string text, int minwidth)
    {
        TableCell cell = new TableCell();
        cell.CssClass = "HDM";

        if (minwidth >= 0)
        {
            cell.Text = String.Format("<div style=\"width:{0}px;\">{1}</div>", minwidth, text);
            cell.Width = new Unit(1, UnitType.Percentage);
        }
        else
        {
            cell.Text = String.Format("<div style=\"width:{0}px;\">{1}</div>", -minwidth, text);
            cell.Width = new Unit(99, UnitType.Percentage);
        }

        return cell;
    }

    public TableCell CreateCell(string text, int span)
    {
        TableCell cell = new TableCell();
        cell.Text = text;

        if (span != 1)
            cell.ColumnSpan = span;

        return cell;
    }

    public TableCell CreateCell(DateTime date, int span)
    {
        return CreateCell(AspxHelper.DateToStringL(date), span);
    }

    protected TableCell CreateCheckCell()
    {
        TableCell cell = new TableCell();
        CheckBox checkBox = new CheckBox();
        cell.Controls.Add(checkBox);

        cell.CssClass = "CHK";
        checkBox.Attributes.Add("OnClick", "checkrow(this);");
        cell.ColumnSpan = 2;

        return cell;
    }

    public TableCell CreateImageCell(string imgurl, int span)
    {
        TableCell cell = new TableCell();
        Image img = new Image();
        img.ImageUrl = imgurl;
        cell.Controls.Add(img);

        if (span != 1)
            cell.ColumnSpan = span;

        return cell;
    }

    protected TableRow CreateHSeprator1(int span)
    {
        TableRow row = new TableRow();
        TableCell cell = new TableCell();
        cell.ColumnSpan = span;
        cell.CssClass = "Sp1";
        row.Cells.Add(cell);

        return row;
    }
}
