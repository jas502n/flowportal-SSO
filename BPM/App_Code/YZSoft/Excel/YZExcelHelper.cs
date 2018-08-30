using System;
using System.Collections.Generic;
using System.Web;
using System.Windows.Forms;
using System.Drawing;
using System.IO;
using System.Drawing.Imaging;
using NPOI.HSSF.Util;
using NPOI.HSSF.UserModel;
using NPOI.POIFS.FileSystem;
using NPOI.SS.UserModel;
using System.Threading;
using System.Data;
using System.Data.SqlClient;


/// <summary>
///YZExcelHelper 的摘要说明

/// </summary>
public class YZExcelHelper
{
    public static int Excel2ImageTimeout
    {
        get
        {
            string excel2ImageTimeout = System.Web.Configuration.WebConfigurationManager.AppSettings["Excel2ImageTimeout"];
            if (!String.IsNullOrEmpty(excel2ImageTimeout))
            {
                int timeout;
                if (Int32.TryParse(excel2ImageTimeout, out timeout))
                    return timeout;
            }
            return 30000;
        }
    }

    public static byte[] Excel2Image(MemoryStream stream, out Size size, out string error)
    {
        return QueryManager.CurrentProvider.Excel2Image(stream, YZExcelHelper.Excel2ImageTimeout, out size, out error);
    }

    public static int PixelToExcel(int width)
    {
        return width * 256 / 8 + 116;
    }

    public static System.Drawing.Point CellNameToIndex(string cellName)
    {
        int index = cellName.IndexOfAny(new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' });

        if (index == -1 || index == 0)
            throw new Exception(String.Format(Resources.YZStrings.Aspx_Excel_IncorrectCellName, cellName));

        string columnName = cellName.Substring(0, index);
        string rowIndex = cellName.Substring(index);

        System.Drawing.Point point = new System.Drawing.Point();
        point.X = GetColumnNumber(columnName) - 1;
        point.Y = Int32.Parse(rowIndex) - 1;

        return point;
    }

    public static string ColumnIndexToName(int colIndex)
    {
        char ch = (char)('A' + colIndex % 26);
        string colName = ch.ToString();
        int j = colIndex / 26 - 1;
        if (j >= 0)
        {
            char ch1 = (char)('A' + j);
            colName = ch1.ToString() + colName;
        }

        return colName;
    }

    public static object GetCellValue(HSSFFormulaEvaluator evaluator,HSSFCell cell)
    {
        object value = null;
        switch (cell.CellType)
        {
            case CellType.BLANK:
            case CellType.Unknown:
                value = Convert.ToString(cell.StringCellValue);
                break;
            case CellType.BOOLEAN:
                value = cell.BooleanCellValue;
                break;
            case CellType.ERROR:
                value = Convert.ToString(cell.ErrorCellValue);
                break;
            case CellType.FORMULA:
                try
                {
                    cell = evaluator.EvaluateInCell(cell) as HSSFCell;
                    value = GetCellValue(evaluator, cell);
                }
                catch(Exception)
                {
                    string err = String.Format("单元格{0}使用了不支持的表达式：{1}，请移除该表达式", YZExcelHelper.ColumnIndexToName(cell.ColumnIndex) + (cell.RowIndex+1).ToString(), cell.CellFormula);
                    throw new Exception(err);
                }
                break;
            case CellType.NUMERIC:
                if (DateUtil.IsCellDateFormatted(cell))
                    value = cell.DateCellValue;
                else
                    value = cell.NumericCellValue;
                break;
            case CellType.STRING:
                value = Convert.ToString(cell.RichStringCellValue);
                break;
            default:
                value = Convert.ToString(cell.StringCellValue);
                break;
        }

        if (value is string && value != null)
            value = (value as string).Trim();

        return value;
    }

    private static int GetColumnNumber(string name)
    {
        int number = 0;
        int pow = 1;
        for (int i = name.Length - 1; i >= 0; i--)
        {
            number += (name[i] - 'A' + 1) * pow; pow *= 26;
        }

        return number;
    }
}
