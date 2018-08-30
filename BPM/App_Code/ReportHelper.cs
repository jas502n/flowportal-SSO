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
/// ReportPostProcess 的摘要说明
/// </summary>
public class ReportHelper
{
    public static void PostProcess(GridView gridView,string reportFullName,Report report,ReportView reportView)
    {
        if (report.Name == "XYQZXYQZ")
        {
            //计算合计值及平均值
            double sum = 0;
            foreach (GridViewRow row in gridView.Rows)
            {
                string value = row.Cells[4].Text;
                double dvalue = 0;
                if (!Double.TryParse(value, out dvalue))
                    dvalue = 0;

                sum += dvalue;
            }
            double avg = sum / gridView.Rows.Count;

            //显示平均值
            gridView.ShowFooter = true;
            gridView.FooterRow.Cells.Clear();
            gridView.FooterRow.Cells.Add(new TableCell());
            gridView.FooterRow.Cells.Add(new TableCell());

            gridView.FooterRow.Cells[0].Text = "AVG";
            gridView.FooterRow.Cells[0].Style.Add(HtmlTextWriterStyle.TextAlign, "right");
            gridView.FooterRow.Cells[0].ColumnSpan = 4;
            gridView.FooterRow.Cells[1].Text = avg.ToString(".00");
        }
    }
}
