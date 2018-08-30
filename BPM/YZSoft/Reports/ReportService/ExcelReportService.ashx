<%@ WebHandler Language="C#" Class="YZSoft.Reports.ExcelReportService" %>

using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.IO;
using System.Drawing;
using System.Reflection;
using NPOI.HSSF.Util;
using NPOI.HSSF.UserModel;
using NPOI.POIFS.FileSystem;
using NPOI.SS.UserModel;
using System.Data;
using System.Data.SqlClient;

namespace YZSoft.Reports
{
    public class ExcelReportService : YZExcelService, IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();

            GridPageInfo gridPageInfo = new GridPageInfo(context);
            string excelFile = context.Request.Params["ExcelFile"];
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
           
            //传递页信息
            reportParams.Add("RowNumStart", gridPageInfo.RowNumStart.ToString());
            reportParams.Add("RowNumEnd", gridPageInfo.RowNumEnd.ToString());
            
            //打开文件
            HSSFWorkbook book;
            using (FileStream file = new FileStream(context.Server.MapPath(excelFile), FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
            {
                book = new HSSFWorkbook(file);
            }

            //填充数据
            DataSet dataset = Fill(book, reportParams, null);

            //调试输出
            //using (FileStream fs = new FileStream(@"e:\abc.xls", FileMode.Create))
            //{
            //    book.Write(fs);
            //    fs.Close();
            //}

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

            book.SetActiveSheet(0);
            
            string method = context.Request.Params["Method"];
            if (method == "Export")  //导出
            {
                //Excel文件保存到流
                byte[] bytes;
                using (MemoryStream ms = new MemoryStream())
                {
                    book.Write(ms);
                    bytes = ms.ToArray();
                }

                //设置Response头
                string fileName = String.Format("{0}-{1}{2}",Path.GetFileNameWithoutExtension(excelFile),YZStringHelper.DateToString(DateTime.Now),Path.GetExtension(excelFile));
                context.Response.Clear();
                context.Response.ContentType = "application/vnd.ms-excel";
                context.Response.AppendHeader("Content-Disposition", "attachment;filename=" + HttpUtility.UrlEncode(fileName, System.Text.Encoding.UTF8));
                context.Response.AppendHeader("Content-Length", bytes.Length.ToString());

                context.Response.BinaryWrite(bytes);
                context.Response.End();
            }
            else //页面展示
            {
                JsonItem rv = new JsonItem();
                book.GetSheetAt(0).DisplayGridlines = false;

                using (MemoryStream stream = new MemoryStream())
                {
                    book.Write(stream);

                    string err;
                    Size size;
                    byte[] bytes = YZExcelHelper.Excel2Image(stream, out size, out err);

                    if (bytes != null)
                    {
                        string imageId = Guid.NewGuid().ToString();
                        ChartManager.CurrentStore.Save(imageId, bytes, null);

                        rv.Attributes.Add("imageid", imageId);

                        string html = String.Format("<img src='{0}?id={1}' style='width:{2}px;height:{3}px;border-width:0px;text-align:center;'/>",
                            VirtualPathUtility.ToAbsolute("~/YZSoft/FileService/ImageService.ashx"),
                            imageId,
                            size.Width,
                            size.Height);

                        rv.Attributes.Add("loaded", true);
                        rv.Attributes.Add("chartHtml", html);

                        foreach (DataTable table in dataset.Tables)
                        {
                            if (table.Columns.Contains("TotalRows"))
                            {
                                int totalRows = 0;

                                if (table.Rows.Count == 0)
                                    totalRows = 0;
                                else
                                    totalRows = Convert.ToInt32(table.Rows[0]["TotalRows"]);

                                rv.Attributes.Add(JsonItem.TotalRows, totalRows);
                                
                                JsonItemCollection children = new JsonItemCollection();
                                rv.Attributes.Add("children", children);

                                JsonItem item = new JsonItem();
                                children.Add(item);
                                for(int i = 0 ; i < table.Rows.Count ;i++)
                                    item.Attributes.Add("id", i);

                                break;
                            }
                        }

                        if (!rv.Attributes.ContainsKey(JsonItem.TotalRows))
                        {
                            rv.Attributes.Add(JsonItem.TotalRows, 0);
                            JsonItemCollection children = new JsonItemCollection();
                            rv.Attributes.Add("children", children);
                        }
                    }
                    else
                    {
                        rv.Attributes.Add("loaded", false);
                        rv.Attributes.Add("errorMessage", err.Replace("\r\n", "<br/>").Replace("\r", "<br/>").Replace("\n", "<br/>"));
                    }
                }

                context.Response.Write(rv.ToString());
                context.Response.End();
            }
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
