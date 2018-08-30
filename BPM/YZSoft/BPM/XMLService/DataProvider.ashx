<%@ WebHandler Language="C#" Class="BPM.XMLService.DataProvider" %>

using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml;
using System.IO;
using BPM;
using BPM.Client;
using BPM.Client.Data.Common;
using BPM.Data.Common;
using System.Globalization;

namespace BPM.XMLService
{
    public class DataProvider : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            //如果是自己管理语言，需要放出以下2行
            //System.Threading.Thread.CurrentThread.CurrentCulture = new CultureInfo(1033);
            //System.Threading.Thread.CurrentThread.CurrentUICulture = new CultureInfo(1033);

            //if (String.Compare(YZAuthHelper.LoginUserAccount, "usera06", true) == 0)
            //{
            //using (FileStream fs = new FileStream("e:\\abc.xml", FileMode.Create, FileAccess.Write))
            //{
            //    byte[] bytes = new byte[context.Request.InputStream.Length];
            //    context.Request.InputStream.Read(bytes, 0, (int)context.Request.InputStream.Length);
            //    fs.Write(bytes, 0, bytes.Length);
            //}
            //context.Request.InputStream.Seek(0, SeekOrigin.Begin);
            //}

            XmlDocument doc = new XmlDocument();
            doc.Load(context.Request.InputStream);

            XmlNodeList nodeParams = doc.SelectNodes("Requests/Params");
            try
            {
                JsonItemCollection jTables = new JsonItemCollection();
                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();

                    for (int i = 0; i < nodeParams.Count; i++)
                    {
                        XmlNode nodeParam = nodeParams[i];

                        string method = null;
                        XmlNode nodeMethod = nodeParam.SelectSingleNode("Method");
                        if (nodeMethod != null)
                            method = nodeMethod.InnerText;

                        if (String.Compare(method, "GetUserDataTable", true) == 0)
                        {
                            XmlNode nodeDataSourceName = nodeParam.SelectSingleNode("DataSource");
                            string dataSourceName = nodeDataSourceName.InnerText;

                            XmlNode nodeTableName = nodeParam.SelectSingleNode("TableName");
                            string tableName = nodeTableName.InnerText;

                            XmlNode nodeOrderBy = nodeParam.SelectSingleNode("OrderBy");
                            string orderBy = nodeOrderBy.InnerText;

                            BPMDBParameterCollection filters = new BPMDBParameterCollection();
                            XmlNode nodeFilters = nodeParam.SelectSingleNode("Filter");
                            if (nodeFilters != null)
                            {
                                foreach (XmlNode filterItem in nodeFilters.ChildNodes)
                                {
                                    BPMDBParameter paramater = new BPMDBParameter(XmlConvert.DecodeName(filterItem.Name), TypeCode.String, filterItem.InnerText);
                                    paramater.ParameterCompareType = ParameterCompareType.FullCompare | ParameterCompareType.NecessaryCondition;
                                    filters.Add(paramater);
                                }
                            }

                            FlowDataTable table = DataSourceManager.LoadTableData(cn, dataSourceName, tableName, filters, orderBy);
                            this.AppendTo(i, jTables, table, false);
                        }
                        else if (String.Compare(method, "GetUserDataProcedure", true) == 0)
                        {
                            XmlNode nodeDataSourceName = nodeParam.SelectSingleNode("DataSource");
                            string dataSourceName = nodeDataSourceName.InnerText;

                            XmlNode nodeProcedureName = nodeParam.SelectSingleNode("ProcedureName");
                            string procedureName = nodeProcedureName.InnerText;

                            BPMDBParameterCollection filters = new BPMDBParameterCollection();
                            XmlNode nodeFilters = nodeParam.SelectSingleNode("Filter");
                            if (nodeFilters != null)
                            {
                                foreach (XmlNode filterItem in nodeFilters.ChildNodes)
                                {
                                    BPMDBParameter paramater = new BPMDBParameter(XmlConvert.DecodeName(filterItem.Name), TypeCode.String, filterItem.InnerText);
                                    filters.Add(paramater);
                                }
                            }

                            FlowDataTable table = DataSourceManager.ExecProcedure(cn, dataSourceName, procedureName, filters);
                            this.AppendTo(i, jTables, table, false);
                        }
                        else if (String.Compare(method, "GetFormPostData", true) == 0)
                        {
                            XmlNode nodeProcessName = nodeParam.SelectSingleNode("ProcessName");
                            string processName = nodeProcessName.InnerText;
                            XmlNode nodeProcessVersion = nodeParam.SelectSingleNode("ProcessVersion");
                            Version processVersion = new Version(nodeProcessVersion.InnerText);

                            string owner = null;
                            XmlNode nodeOwner = nodeParam.SelectSingleNode("Owner");
                            if (nodeOwner != null)
                                owner = nodeOwner.InnerText;

                            FlowDataSet dataset = BPMProcess.GetFormData(cn, processName,processVersion, owner);
                            foreach (FlowDataTable table in dataset.Tables)
                                this.AppendTo(i, jTables, table, true);
                        }
                        else if (String.Compare(method, "GetFormProcessData", true) == 0)
                        {
                            XmlNode nodePID = nodeParam.SelectSingleNode("PID");
                            string spid = nodePID.InnerText;

                            FlowDataSet dataset = BPMProcess.GetFormData(cn, Int32.Parse(spid));
                            foreach (FlowDataTable table in dataset.Tables)
                                this.AppendTo(i, jTables, table, true);
                        }
                        else if (String.Compare(method, "GetFormReadData", true) == 0)
                        {
                            XmlNode nodeTID = nodeParam.SelectSingleNode("TID");
                            string stid = nodeTID.InnerText;
                            
                            FlowDataSet dataset = BPMProcess.GetFormDataForRead(cn, Int32.Parse(stid));
                            foreach (FlowDataTable table in dataset.Tables)
                                this.AppendTo(i, jTables, table, true);
                        }
                        else if (String.Compare(method, "GetSnapshotData", true) == 0)
                        {
                            XmlNode nodeTID = nodeParam.SelectSingleNode("TID");
                            string stid = nodeTID.InnerText;

                            XmlNode nodeVersion = nodeParam.SelectSingleNode("Version");
                            string sver = nodeVersion.InnerText;

                            string spid = "-1";
                            XmlNode nodePID = nodeParam.SelectSingleNode("PID");
                            if (nodePID != null)
                                spid = nodePID.InnerText;

                            FlowDataSet dataset = cn.GetSnapshotData(Int32.Parse(stid), Int32.Parse(sver), Int32.Parse(spid));
                            foreach (FlowDataTable table in dataset.Tables)
                                this.AppendTo(i, jTables, table, true);
                        }
                        else if (String.Compare(method, "GetDraftData", true) == 0)
                        {
                            XmlNode nodeDraftId = nodeParam.SelectSingleNode("DraftID");
                            string draftId = nodeDraftId.InnerText;
                            Guid draftGuid = new Guid(draftId);

                            FlowDataSet dataset = cn.GetDraftData(draftGuid);
                            foreach (FlowDataTable table in dataset.Tables)
                                this.AppendTo(i, jTables, table, true);
                        }
                        else if (String.Compare(method, "GetFormApplicationData", true) == 0)
                        {
                            XmlNode nodeApplicationName = nodeParam.SelectSingleNode("ApplicationName");
                            string appName = nodeApplicationName.InnerText;

                            string formState = String.Empty;
                            XmlNode nodeFormState = nodeParam.SelectSingleNode("FormState");
                            if (nodeFormState != null)
                                formState = nodeFormState.InnerText;

                            string keyValue = String.Empty;
                            XmlNode nodePrimaryKey = nodeParam.SelectSingleNode("PrimaryKey");
                            if (nodePrimaryKey != null)
                                keyValue = nodePrimaryKey.InnerText;

                            FlowDataSet dataset = FormService.GetFormApplicationData(cn, appName, formState, keyValue);
                            foreach (FlowDataTable table in dataset.Tables)
                                this.AppendTo(i, jTables, table, true);
                        }
                        else
                        {
                            throw new Exception("Invalid method:" + method);
                        }
                    }
                }
                
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", true);
                rv.Attributes.Add("Tables", jTables);
                
                context.Response.Write(rv.ToString());
            }
            catch(Exception e)
            {
                JsonItem rv = new JsonItem();
                rv.Attributes.Add("success", false);
                rv.Attributes.Add("errorMessage", e.Message);
                context.Response.Write(rv.ToString());
            }
        }

        private void AppendTo(int requestIndex, JsonItemCollection jTables,FlowDataTable table,bool formTable)
        {
            JsonItem jTable = new JsonItem();
            jTables.Add(jTable);

            jTable.Attributes.Add("DataSource", TableIdentityHelper.IsDefaultDataSource(table.DataSourceName) ? "" : table.DataSourceName);
            jTable.Attributes.Add("TableName", table.TableName);
            jTable.Attributes.Add("Index", requestIndex);
            jTable.Attributes.Add("FormTable", formTable);

            if (formTable)
            {
                jTable.Attributes.Add("IsRepeatable", table.IsRepeatableTable);
                jTable.Attributes.Add("AllowAddRecord", table.AllowAddRecord);

                if (!table.IsRepeatableTable)
                {
                    jTable.Attributes.Add("CKeyName", table.CKeyName);
                    jTable.Attributes.Add("CKeyValue", table.CKeyValue);
                }
            }

            JsonItemCollection jColumns = new JsonItemCollection();
            jTable.Attributes.Add("Columns", jColumns);
            foreach (FlowDataColumn column in table.Columns)
            {
                JsonItem jColumn = new JsonItem();
                jColumns.Add(jColumn);

                jColumn.Attributes.Add("ColumnName", column.ColumnName);
                jColumn.Attributes.Add("Type", column.DataType.Name);
                if (formTable)
                {
                    jColumn.Attributes.Add("Length", column.MaxLength);
                    jColumn.Attributes.Add("Readable", column.AllowRead);
                    jColumn.Attributes.Add("Writeable", column.AllowWrite);
                    jColumn.Attributes.Add("AutoIncrement", column.AutoIncrement);
                    jColumn.Attributes.Add("PrimaryKey", column.PrimaryKey);
                    jColumn.Attributes.Add("DefaultValue", column.DefaultValue);
                    jColumn.Attributes.Add("ShowSpoor", column.ShowSpoor);
                }
            }

            JsonItemCollection jRows = new JsonItemCollection();
            jTable.Attributes.Add("Rows", jRows);
            foreach (FlowDataRow row in table.Rows)
            {
                JsonItem jRow = new JsonItem();
                jRows.Add(jRow);

                foreach (string colName in row.Keys)
                    jRow.Attributes.Add(colName, row[colName]);
            }
        }
        protected void WriteSchema(FlowDataTable table, StringBuilder sb)
        {
            sb.AppendLine("<Schema>");

            foreach (FlowDataColumn column in table.Columns)
                WriteColumn(column, sb);

            sb.AppendLine("</Schema>");
        }

        protected void WriteColumn(FlowDataColumn column, StringBuilder sb)
        {
            sb.Append("<");
            sb.Append(column.ColumnName);

            sb.Append(String.Format(" Type=\"{0}\"", column.DataType.Name));

            sb.Append(String.Format(" Length=\"{0}\"", column.MaxLength.ToString()));

            if (!column.AllowRead)
                sb.Append(" Readable=\"false\"");

            if (!column.AllowWrite)
                sb.Append(" Writeable=\"false\"");

            if (column.AutoIncrement)
                sb.Append(" AutoIncrement=\"true\"");

            if (column.PrimaryKey)
                sb.Append(" PrimaryKey=\"true\"");

            if (column.DefaultValue != null)
                sb.Append(" DefaultValue=\"" + this.FormatValue(column.DefaultValue) + "\"");

            sb.Append("/>");
            sb.AppendLine();
        }

        protected void WriteData(FlowDataTable table, StringBuilder sb)
        {
            sb.AppendLine("<Data>");

            foreach (FlowDataRow row in table.Rows)
                WriteRow(table, row, sb);

            sb.AppendLine("</Data>");
        }

        protected void WriteRow(FlowDataTable table, FlowDataRow row, StringBuilder sb)
        {
            sb.AppendLine("<Row>");

            foreach (string colName in row.Keys)
            {
                sb.Append("<");
                sb.Append(colName);
                sb.Append(">");

                sb.Append(this.FormatValue(row[colName]));

                sb.Append("</");
                sb.Append(colName);
                sb.Append(">");

                sb.AppendLine();
            }

            sb.AppendLine("</Row>");
        }

        private string FormatValue(object value)
        {
            string strValue;
            if (value == null)
            {
                strValue = String.Empty;
            }
            else
            {
                if (value is DateTime)
                    strValue = ((DateTime)value).ToString("yyyy-MM-dd HH:mm:ss");
                else if (value is byte[])
                    strValue = Convert.ToBase64String((byte[])value);
                else
                    strValue = value.ToString();
            }

            strValue = YZUtility.EncodeXMLInnerText(strValue);
            return strValue;
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
