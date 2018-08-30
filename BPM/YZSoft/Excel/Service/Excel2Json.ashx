<%@ WebHandler Language="C#" Class="YZSoft.ExcelService.Excel2Json" %>

using System;
using System.Web;
using System.IO;
using NPOI.HSSF.UserModel;
using NPOI.SS.UserModel;

namespace YZSoft.ExcelService
{
    public class Excel2Json : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            JsonItem rv = new JsonItem();

            if (context.Request.Files.Count == 0)
            {
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", "No file upload");
                context.Response.Write(rv.ToString());
                return;
            }

            HttpPostedFile file = context.Request.Files[0];
            string ext = Path.GetExtension(file.FileName);
            if (YZStringHelper.EquName(ext, ".xlsx"))
            {
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", String.Format(Resources.YZStrings.BPMDlg_ExcelImport_XLSX, file.FileName));
                context.Response.Write(rv.ToString());
                return;
            }
            
            if (!YZStringHelper.EquName(ext,".xls"))
            {
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", String.Format(Resources.YZStrings.BPMDlg_ExcelImport_NOTXLS, file.FileName));
                context.Response.Write(rv.ToString());
                return;
            }

            //打开文件
            JsonItemCollection jsheets = new JsonItemCollection();
            rv.Attributes.Add("sheets", jsheets);
            HSSFWorkbook book = new HSSFWorkbook(file.InputStream);
            HSSFFormulaEvaluator evaluator = new HSSFFormulaEvaluator(book);
            for (int i = 0; i < book.NumberOfSheets; i++)
            {
                HSSFSheet sheet = (HSSFSheet)book.GetSheetAt(i);
                JsonItem jsheet = new JsonItem();
                jsheets.Add(jsheet);
                jsheet.Attributes.Add("name", sheet.SheetName);

                JsonItemCollection jcolumns = new JsonItemCollection();
                jsheet.Attributes.Add("columns", jcolumns);
                JsonItemCollection jrows = new JsonItemCollection();
                jsheet.Attributes.Add("rows", jrows);

                if (sheet.LastRowNum != 0)
                {
                    for (int r = 0; r <= sheet.LastRowNum; r++)
                    {
                        HSSFRow row = (HSSFRow)sheet.GetRow(r);
                        if (row == null) //存在row为null的情况
                            break;// continue;

                        JsonItem jrow = null;
                        bool containsValue = false;
                        for (int c = 0; c < row.LastCellNum; c++)
                        {
                            HSSFCell cell = (HSSFCell)row.GetCell(c); //存在cell为null的情况
                            object value = cell == null ? null : YZExcelHelper.GetCellValue(evaluator,cell);
                            if (!String.IsNullOrEmpty(Convert.ToString(value)))
                                containsValue = true;

                            string columnName = YZExcelHelper.ColumnIndexToName(c);
                            if (r == 0)
                            {
                                JsonItem jcolumn = new JsonItem();
                                jcolumns.Add(jcolumn);
                                jcolumn.Attributes.Add("name", columnName);
                                jcolumn.Attributes.Add("text", value);
                            }
                            else
                            {
                                if (jrow == null)
                                    jrow = new JsonItem();
                                
                                jrow.Attributes.Add(columnName, value);

                                if (c == row.LastCellNum - 1 && containsValue)
                                    jrows.Add(jrow);
                            }
                        }

                    }
                }
            }
            
            rv.Attributes.Add("success", true);
            context.Response.Write(rv.ToString());
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