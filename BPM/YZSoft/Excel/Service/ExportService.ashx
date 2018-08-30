<%@ WebHandler Language="C#" Class="YZSoft.ExcelService.ExportService" %>

using System;
using System.Web;
using System.IO;
using System.Web.UI;
using System.Text;
using System.Web.Script.Serialization;
using System.Collections.Generic;
using System.Collections;
using System.Data;
using System.Drawing.Drawing2D;
using NPOI.HSSF.Util;
using NPOI.HSSF.UserModel;
using NPOI.POIFS.FileSystem;
using NPOI.SS.UserModel;
using System.Data.SqlClient;

namespace YZSoft.ExcelService
{
    public class ExportService : YZExcelService,IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            try
            {
                //获得数据
                DataTable table = new DataTable("GridStore");
                string childrenAttr = "children";
                string templateExcel = context.Request.Params["templateExcel"];
                string storeurl = context.Request.Params["storeurl"];
                storeurl = "~/" + storeurl;
                IHttpHandler handler = PageParser.GetCompiledPageInstance(storeurl, context.Server.MapPath(storeurl), context);

                using (StringWriter sw = new StringWriter())
                {
                    HtmlTextWriter writer = new HtmlTextWriter(sw);
                    HttpResponse response = new HttpResponse(writer);
                    HttpContext callcontext = new HttpContext(context.Request, response);
                    handler.ProcessRequest(callcontext);

                    string jsonResponse = sw.ToString();

                    JavaScriptSerializer serializer = new JavaScriptSerializer();
                    serializer.MaxJsonLength = 2097152*100; //最大400M，缺省最大4M
                    Dictionary<string, object> rv = serializer.DeserializeObject(jsonResponse) as Dictionary<string, object>;

                    //将数据转化为Table
                    if (rv != null && rv.ContainsKey(childrenAttr))
                    {
                        object[] children = rv[childrenAttr] as object[];
                        if (children != null && children.Length >= 1)
                        {
                            foreach (KeyValuePair<string, object> jsonField in children[0] as Dictionary<string, object>)
                            {
                                DataColumn column = new DataColumn(jsonField.Key, typeof(object));
                                table.Columns.Add(column);
                            }

                            foreach (Dictionary<string, object> jsonRow in children)
                            {
                                DataRow row = table.NewRow();
                                table.Rows.Add(row);

                                foreach (KeyValuePair<string, object> jsonField in jsonRow)
                                {
                                    object value = jsonField.Value;
                                    //SQL Server数据库中monery4位小数点处理
                                    if (value is decimal)
                                        value = (decimal)Decimal.ToDouble((decimal)value);

                                    row[jsonField.Key] = value;
                                }
                            }
                        }
                    }
                }

                //生成Excel
                HSSFWorkbook book = null;
                if (String.IsNullOrEmpty(templateExcel))
                {
                    book = this.NoTemplateExport(context, table);
                }
                else
                {
                    Dictionary<string, string> reportParams = new Dictionary<string, string>();

                    //获得查询参数
                    string strUserParamNames = context.Request.Params["UserParamNames"];
                    if (!String.IsNullOrEmpty(strUserParamNames))
                    {
                        string[] paramNames = strUserParamNames.Split(',');
                        foreach (string paramName in paramNames)
                            reportParams.Add(paramName, context.Request.Params[paramName]);
                    }

                    if (!reportParams.ContainsKey("Keyword"))
                        reportParams.Add("Keyword", "");

                    //打开文件
                    using (FileStream file = new FileStream(context.Server.MapPath(templateExcel), FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
                    {
                        book = new HSSFWorkbook(file);
                    }

                    DataSet dataset = new DataSet();
                    dataset.Tables.Add(table);
                    this.Fill(book, reportParams, dataset);

                    //删除报表定义sheet
                    for (int i = book.NumberOfSheets - 1; i >= 0; i--)
                    {
                        string sheetName = book.GetSheetName(i);

                        if (String.Compare(sheetName, "DataSource", true) == 0 ||
                            String.Compare(sheetName, "FixFill", true) == 0 ||
                            String.Compare(sheetName, "GridFill", true) == 0)
                            book.RemoveSheetAt(i);
                    }

                    //设置打开时强制计算合计项
                    for (int i = 0; i < book.NumberOfSheets; i++)
                    {
                        HSSFSheet sheet = (HSSFSheet)book.GetSheetAt(i);
                        sheet.ForceFormulaRecalculation = true;
                    }
                }

                //Excel文件保存到流
                byte[] bytes;
                using (MemoryStream ms = new MemoryStream())
                {
                    book.Write(ms);
                    bytes = ms.ToArray();
                }

                //导出文件名
                string fileName = context.Request.Params["v_fn"];
                if (String.IsNullOrEmpty(fileName))
                    fileName = "Export";
                fileName += YZStringHelper.DateToString(DateTime.Now) + ".xls";

                this.OnExported(context,table);

                //设置Response头
                context.Response.Clear();
                context.Response.ContentType = "application/vnd.ms-excel";
                context.Response.AppendHeader("Content-Disposition", "attachment;filename=" + HttpUtility.UrlEncode(fileName, System.Text.Encoding.UTF8));
                context.Response.AppendHeader("Content-Length", bytes.Length.ToString());

                context.Response.BinaryWrite(bytes);
                context.Response.End();
            }
            catch (Exception exp)
            {
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", exp.Message);

                context.Response.Write(rv.ToString());
            }
        }

        protected HSSFWorkbook NoTemplateExport(HttpContext context, DataTable table)
        {
            //获得列定义信息
            ColumnDefineCollection columnDefines = new ColumnDefineCollection();
            int columnCount = Int32.Parse(context.Request.Params["v_cc"]);
            for (int i = 0; i < columnCount; i++)
            {
                ColumnDefine columnDefine = new ColumnDefine();

                columnDefine.Text = context.Request.Params["v_h" + i.ToString()];
                columnDefine.ColumnName = context.Request.Params["v_c" + i.ToString()];
                columnDefine.Width = Int32.Parse(context.Request.Params["v_w" + i.ToString()]);
                switch (context.Request.Params["v_a" + i.ToString()].ToLower())
                {
                    case "center":
                        columnDefine.Align = HorizontalAlignment.CENTER;
                        break;
                    case "right":
                        columnDefine.Align = HorizontalAlignment.RIGHT;
                        break;
                    default:
                        columnDefine.Align = HorizontalAlignment.LEFT;
                        break;
                }

                if (table.Columns.Contains(columnDefine.ColumnName))
                    columnDefines.Add(columnDefine);
            }

            //创建工作簿
            HSSFWorkbook book = new HSSFWorkbook();

            //增加标题Style
            HSSFCellStyle styleHeader = (HSSFCellStyle)book.CreateCellStyle();
            styleHeader.FillForegroundColor = HSSFColor.BLUE.index;
            styleHeader.FillPattern = FillPatternType.SOLID_FOREGROUND;

            //设置Font
            HSSFFont fontHeader = (HSSFFont)book.CreateFont();
            fontHeader.FontName = "Tahoma";
            fontHeader.FontHeight = 200;
            fontHeader.Color = HSSFColor.WHITE.index;
            styleHeader.SetFont(fontHeader);

            //设置缺省Style
            HSSFCellStyle styleDefault = (HSSFCellStyle)book.CreateCellStyle();
            HSSFFont fontDefault = (HSSFFont)book.CreateFont();
            styleDefault.SetFont(fontDefault);
            fontDefault.FontName = "Tahoma";
            fontDefault.FontHeight = 200;

            //创建Sheet
            HSSFRow row;
            HSSFCell cell;
            HSSFSheet sheet = (HSSFSheet)book.CreateSheet("Sheet1");

            //创建标题列                
            row = (HSSFRow)sheet.CreateRow(0);
            for (int i = 0; i < columnDefines.Count; i++)
            {
                ColumnDefine columnDefine = columnDefines[i];

                //创建cell
                cell = (HSSFCell)row.CreateCell(i, CellType.STRING);

                //应用style
                HSSFCellStyle style = (HSSFCellStyle)book.CreateCellStyle();
                style.CloneStyleFrom(styleHeader);
                style.Alignment = columnDefine.Align;
                cell.CellStyle = style;

                //设置值
                cell.SetCellValue(columnDefine.Text);

                sheet.SetColumnWidth(i, YZExcelHelper.PixelToExcel(columnDefine.Width));
            }

            foreach (DataRow dataRow in table.Rows)
            {
                row = (HSSFRow)sheet.CreateRow(sheet.LastRowNum + 1);
                for (int i = 0; i < columnDefines.Count; i++)
                {
                    ColumnDefine columnDefine = columnDefines[i];
                    object objValue = dataRow[columnDefine.ColumnName];
                    
                    //SQL Server数据库中monery4位小数点处理
                    if (objValue is decimal)
                        objValue = (decimal)Decimal.ToDouble((decimal)objValue);

                    //创建cell
                    cell = (HSSFCell)row.CreateCell(i, CellType.STRING);

                    //应用style
                    if (columnDefine.Style == null)
                    {
                        columnDefine.Style = (HSSFCellStyle)book.CreateCellStyle();
                        columnDefine.Style.CloneStyleFrom(styleDefault);
                        columnDefine.Style.Alignment = columnDefine.Align;
                    }
                    cell.CellStyle = columnDefine.Style;

                    //设置值
                    TypeCode typeCode = Type.GetTypeCode(objValue == null ? typeof(string):objValue.GetType());
                    switch (typeCode)
                    {
                        case TypeCode.Boolean:
                            cell.SetCellValue(Convert.ToBoolean(objValue));
                            break;
                        case TypeCode.DateTime:
                            SetCellValueDate(cell, Convert.ToDateTime(objValue), "");
                            break;
                        case TypeCode.Decimal:
                        case TypeCode.Double:
                        case TypeCode.Int16:
                        case TypeCode.Int32:
                        case TypeCode.Int64:
                        case TypeCode.Single:
                        case TypeCode.UInt16:
                        case TypeCode.UInt32:
                        case TypeCode.UInt64:
                        case TypeCode.SByte:
                        case TypeCode.Byte:
                            cell.SetCellValue(Convert.ToDouble(objValue));
                            break;
                        default:
                            cell.SetCellValue(Convert.ToString(objValue));
                            break;
                    }
                }
            }
            
            return book;
        }
        
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        private void SetExportedFlag(DataTable table, string query, string columnName)
        {
            using (SqlConnection cn = new SqlConnection())
            {
                cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BPMDB"].ConnectionString;
                cn.Open();

                foreach (DataRow row in table.Rows)
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = cn;
                        cmd.CommandText = String.Format(query, row[columnName]);

                        cmd.ExecuteNonQuery();
                    }
                }
            }
        }

        private void OnExported(HttpContext context,DataTable table)
        {
            //string reportName = context.Request.Params["reportName"];
            //switch (reportName)
            //{
            //    case "AABB":
            //        SetExportedFlag(table, "UPDATE WQ SET Flag=1 WHERE id={0}", "id");
            //        break;
            //}
        }
    }

    public class ColumnDefine
    {
        public string Text;
        public string ColumnName;
        public int Width;
        public HorizontalAlignment Align;
        public HSSFCellStyle Style;
    }

    public class ColumnDefineCollection : List<ColumnDefine>
    {
    }
}
