<%@ Page Language="C#" validaterequest="false" %>
<%@ Register TagPrefix="aspxform" Namespace="XFormDesigner.Framework.Web.UI" Assembly="XFormDesigner.Framework" %>
<%@ import Namespace="BPM" %>
<%@ import Namespace="BPM.Client" %>
<%@ import Namespace="System.IO" %>
<%@ import Namespace="NPOI.HSSF.Util" %>
<%@ import Namespace="NPOI.HSSF.UserModel" %>
<%@ import Namespace="NPOI.POIFS.FileSystem" %>
<%@ import Namespace="NPOI.SS.UserModel" %>
<%@ import Namespace="NPOI.SS.Util" %>
<script runat="server">

    // Insert page code here
    //
    
        protected void Page_Load(object sender, EventArgs e)
        {
           XTextBox4.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox11.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox16.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox21.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
           XTextBox33.Attributes.Add("onpropertychange", "this.style.height=this.scrollHeight+(this.offsetHeight-this.clientHeight+1)");
        }
    
    
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.Page.Response.Buffer = false;
        this.Page.Response.ContentType = "application/vnd.ms-excel";
        Response.Charset = "utf-8";
        Response.ContentEncoding = System.Text.Encoding.UTF8;
        this.Page.Response.AddHeader("Content-Disposition",String.Format("attachment;filename=ACC{0}.xls",DateTime.Now.ToString("yyyyMMdd-HHmm")));
        this.EnableViewState = false;
        this.Page.Response.Charset = string.Empty;
    
    
        //创建工作簿
        HSSFWorkbook book = new HSSFWorkbook();
    
    
    
        //增加标题Style
    
        var styleHeader = book.CreateCellStyle(); // book.CreateCellStyle();
        styleHeader.FillBackgroundColor = HSSFColor.BLUE.index;
        //styleHeader.FillPattern = CellStyle.SOLID_FOREGROUND;
        styleHeader.FillPattern = FillPatternType.SOLID_FOREGROUND;
        styleHeader.FillForegroundColor = HSSFColor.BLUE.index;
    
        //设置Font
        //Font fontHeader = book.CreateFont();
        var fontHeader = book.CreateFont();
        fontHeader.FontName = "Tahoma";
        fontHeader.FontHeight = 200;
        fontHeader.Color = HSSFColor.WHITE.index;
        styleHeader.SetFont(fontHeader);
    
        //创建缺省Style
        //CellStyle styleDefault = book.CreateCellStyle();
        var styleDefault = book.CreateCellStyle();
        //Font fontDefault = book.CreateFont();
        var fontDefault = book.CreateFont();
        styleDefault.SetFont(fontDefault);
        fontDefault.FontName = "Tahoma";
        fontDefault.FontHeight = 200;
    
        //CellStyle defaultStyleSys = book.GetCellStyleAt(0);
        var defaultStyleSys = book.GetCellStyleAt(0);
        defaultStyleSys.SetFont(fontDefault);
    
        //创建Sheet
        //Row row = null;
        //Cell cell = null;
        IRow row = null;
        ICell cell = null;
    
        string txtACIDs = null;
        BPMList<string> txtCIDs = new BPMList<string>();
        txtCIDs.Add(this.Request.Form["txtACID"]);
        txtCIDs.Add(this.Request.Form["txtBCID"]);
        txtCIDs.Add(this.Request.Form["txtCCID"]);
        txtCIDs.Add(this.Request.Form["txtDCID"]);
        txtCIDs.Add(this.Request.Form["txtECID"]);
    
        for (int i = 0; i < txtCIDs.Count; i++)
        {
            if (!String.IsNullOrEmpty(txtCIDs[i]))
            {
                if (txtACIDs == null)
                    txtACIDs = txtCIDs[i];
                else
                    txtACIDs = txtACIDs + "," + txtCIDs[i];
            }
    
        }
    
            if (!String.IsNullOrEmpty(txtACIDs))
            {
                using (BPMConnection cn = new BPMConnection())
                {
                    cn.WebOpen();
    
                    string[] ids = txtACIDs.Split(new char[] { ',' });
                    int rindex = 1;
                    foreach (string id in ids)
                    {
                        if (String.IsNullOrEmpty(id))
                            continue;
    
                        //从数据库获得数据
                        string companyCode;
                        string query;
                        int rowCount;
    
                        query = String.Format("SELECT * FROM Fin_FinanceEntries WHERE ParentItemID={0}", id);
                        FlowDataTable table = DataSourceManager.Load(cn, "Default", BPMCommandType.Query, query, null, false, 0, 50, out rowCount);
    
                        query = String.Format("SELECT Company FROM Fin_FinanceEntriesHeader WHERE ItemID={0}", id);
                        FlowDataTable tableHeader = DataSourceManager.Load(cn, "Default", BPMCommandType.Query, query, null, false, 0, -1, out rowCount);
                        if (rowCount == 0)
                            companyCode = null;
                        else
                            companyCode = Convert.ToString(tableHeader.Rows[0]["Company"]);
    
                        if (String.IsNullOrEmpty(companyCode))
                            companyCode = "未指定公司的分帐";
                        else
                            companyCode = companyCode.Trim();
    
                        //获得Sheet
                        ISheet sheet = null;
                       // Sheet sheet = null;
                        for (int k = 0; k < book.NumberOfSheets; k++)
                        {
                            if (book.GetSheetName(k) == companyCode)
                            {
                                sheet = book.GetSheetAt(k);
                                break;
                            }
                        }
    
                        //sheet不存在,则创建sheet并加入第一行
                        if (sheet == null)
                        {
                            //创建Sheet
                            sheet = book.CreateSheet(companyCode);
                            row = null;
                            cell = null;
    
                            row = sheet.CreateRow(0);
    
                            cell = row.CreateCell(0);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("编号");
    
                            cell = row.CreateCell(1);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("凭证类型");
    
                            cell = row.CreateCell(2);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("抬头文本");
    
                            cell = row.CreateCell(3);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("记帐码");
    
                            cell = row.CreateCell(4);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("账户");
    
                            cell = row.CreateCell(5);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("科目的简短说明");
    
                            cell = row.CreateCell(6);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("总帐特别标志");
    
                            cell = row.CreateCell(7);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("报销人");
    
                            cell = row.CreateCell(8);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("币种");
    
                            cell = row.CreateCell(9);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("金额");
    
                            cell = row.CreateCell(10);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("成本中心");
    
                            cell = row.CreateCell(11);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("订单");
    
                            cell = row.CreateCell(12);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("内容");
    
                            cell = row.CreateCell(13);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("业务类型");
    
                            cell = row.CreateCell(14);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("凭证日期");
    
                            cell = row.CreateCell(15);
                            cell.CellStyle = styleHeader;
                            cell.SetCellValue("现金流量表");
    
                            sheet.SetColumnWidth(0, 3200);
                            sheet.SetColumnWidth(1, 3200);
                            sheet.SetColumnWidth(2, 4000);
                            sheet.SetColumnWidth(3, 2800);
                            sheet.SetColumnWidth(4, 5000);
                            sheet.SetColumnWidth(5, 2800);
                            sheet.SetColumnWidth(6, 2800);
                            sheet.SetColumnWidth(7, 3200);
                            sheet.SetColumnWidth(8, 2800);
                            sheet.SetColumnWidth(9, 5000);
                            sheet.SetColumnWidth(10, 5000);
                            sheet.SetColumnWidth(11, 5000);
                            sheet.SetColumnWidth(12, 5000);
                            sheet.SetColumnWidth(13, 5000);
                            sheet.SetColumnWidth(14, 5000);
                            sheet.SetColumnWidth(15, 2800);
    
                        }
    
                        //把该分帐表的数据插入Sheet
                        int ivalue;
                        double dvalue;
                        object value;
                        foreach (FlowDataRow dbrow in table.Rows)
                        {
                            row = sheet.CreateRow(sheet.PhysicalNumberOfRows);
    
                            //cell = row.CreateCell(0, Cell.CELL_TYPE_NUMERIC);
                            cell = row.CreateCell(0, CellType.NUMERIC);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["NO"]));
    
                            //cell = row.CreateCell(1, Cell.CELL_TYPE_STRING);
                             cell = row.CreateCell(1, CellType.STRING);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["CertificateType"]));
    
                            //cell = row.CreateCell(2, Cell.CELL_TYPE_STRING);
                             cell = row.CreateCell(2, CellType.STRING);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["RiseText"]));
    
                            //cell = row.CreateCell(3, Cell.CELL_TYPE_NUMERIC);
                            cell = row.CreateCell(3, CellType.NUMERIC);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["BillingCode"]));
    
                            //cell = row.CreateCell(4, Cell.CELL_TYPE_NUMERIC);
                            cell = row.CreateCell(4, CellType.NUMERIC);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["Account"]));
    
                            //cell = row.CreateCell(5, Cell.CELL_TYPE_STRING);
                            cell = row.CreateCell(5, CellType.STRING);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["Directions"]));
    
                            //cell = row.CreateCell(6, Cell.CELL_TYPE_STRING);
                            cell = row.CreateCell(6, CellType.STRING);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["Mark"]));
    
                            //cell = row.CreateCell(7, Cell.CELL_TYPE_STRING);
                            cell = row.CreateCell(7, CellType.STRING);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["ClaimsWere"]));
    
                            //cell = row.CreateCell(8, Cell.CELL_TYPE_STRING);
                            cell = row.CreateCell(8, CellType.STRING);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["Currency"]));
    
                            //cell = row.CreateCell(9, Cell.CELL_TYPE_NUMERIC);
                            cell = row.CreateCell(9, CellType.NUMERIC);
                            cell.CellStyle = styleDefault;
                            value = dbrow["Amount"];
                            if (value != null)
                            {
                                ivalue = (int)(Convert.ToDouble(dbrow["Amount"]) * 100);
                                dvalue = ((double)ivalue) / 100.0;
                                cell.SetCellValue(dvalue);
                            }
    
                            //cell = row.CreateCell(10, Cell.CELL_TYPE_NUMERIC);
                            cell = row.CreateCell(10, CellType.NUMERIC);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["CostCenter"]));
    
                            //cell = row.CreateCell(11, Cell.CELL_TYPE_STRING);
                            cell = row.CreateCell(11, CellType.STRING);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["OrderN"]));
    
                            //cell = row.CreateCell(12, Cell.CELL_TYPE_STRING);
                            cell = row.CreateCell(12, CellType.STRING);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["ContentN"]));
    
                            //cell = row.CreateCell(13, Cell.CELL_TYPE_STRING);
                            cell = row.CreateCell(13, CellType.STRING);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["BusinessType"]));
    
                            //cell = row.CreateCell(14, Cell.CELL_TYPE_STRING);
                            cell = row.CreateCell(14, CellType.STRING);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["CertificateDate"]));
    
                            //cell = row.CreateCell(5, Cell.CELL_TYPE_STRING);
                            cell = row.CreateCell(15, CellType.STRING);
                            cell.CellStyle = styleDefault;
                            cell.SetCellValue(Convert.ToString(dbrow["CashCode"]));
                        }
                    }
                }
            }
    
        //MemoryStream strem = new MemoryStream();
        //book.Save(strem);
        //strem.WriteTo(Response.OutputStream);
    
        MemoryStream ms = new MemoryStream();
        book.Write(ms);
        this.Page.Response.BinaryWrite(ms.ToArray());
        this.Page.Response.End();
    
    }

</script>
<%@ import Namespace="NPOI.SS.Util" %>
<html xmlns:xform= "xmlns:xform">
<head runat="server">
    <title>BPM Form</title> <script language="javascript">
function GetParentTable(domel)
{
        while(domel){
            if (domel.tagName == 'TABLE')
                break;
		    domel = domel.parentNode;
	    }
	    return domel;
}

function checkallchk(chk)
{
    var table = GetParentTable(chk);
    //var table = domel;

    var inputs = table.all.tags("INPUT");
    var length = inputs.length;


    for(var i = 0 ; i < length ; i++)
    {
        var input = inputs[i];
        if( input.type.toLowerCase() == "checkbox" && input != chk)
        {
            input.checked = chk.checked;
            XFormOnChange(input);
        }
    }
}
</script>
    <style>BODY {
	FONT-SIZE: 12px; FONT-FAMILY: verdana
}
TABLE {
	FONT-SIZE: 12px; FONT-FAMILY: verdana; BORDER-COLLAPSE: collapse
}
P {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; FONT-SIZE: 12px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; FONT-FAMILY: verdana
}
TD {
	PADDING-RIGHT: 0px; PADDING-LEFT: 2px; PADDING-BOTTOM: 0px
}
TD.NoPadding {
	PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px
}
INPUT {
	HEIGHT: 20px
}
INPUT.UL {
	BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: #33ff33 1px solid
}
</style>
</head>
<body>
    <form runat="server">
        <!-- Insert content here -->
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-LEFT: medium none; BORDER-TOP: medium none" class="NoPadding" height="49" width="20%">
                        <asp:Image id="Image1" runat="server" ImageUrl="../../image/logo.gif"></asp:Image>
                    </td>
                    <td width="60%">
                        <div align="center">
                            <aspxform:XLabel id="XLabel12" runat="server" Font-Names="Tahoma" text="深圳创维数字技术股份有限公司" Font-Size="Medium" Font-Bold="True" Height="25px"></aspxform:XLabel>
                        </div>
                    </td>
                    <td width="20%">
                        <aspxform:XLabel id="XLabel16" runat="server" Font-Names="Arial Black" Font-Size="X-Small" XDataBind="Fin_PL.SN"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="33" colspan="3">
                        <div align="center">
                            <aspxform:XLabel id="XLabel14" runat="server" Font-Names="Tahoma" text="财务记账批量" Font-Size="Medium" Font-Bold="True"></aspxform:XLabel>
                        </div>
                    </td>
                </tr>
                <tr>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="36" colspan="2">
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" width="700">
                        <aspxform:XLabel id="XLabel5" runat="server" text="借款申请单汇总" ForeColor="Black"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" width="300">
                        <div align="right">
                            <div align="right">
                                <asp:Button id="Button1" onclick="Button1_Click" runat="server" Height="20px" Text="导出Excel" Width="80px"></asp:Button>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" class="NoPadding" height="24" colspan="2">
                        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%" dynamicarea="1,1">
                            <tbody>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="44">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel8" runat="server" text="编号" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="125">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel1" runat="server" text="借款申请单号" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="97">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel2" runat="server" text="借款人" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel3" runat="server" text="借款金额" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="264">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel4" runat="server" text="内容" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="100">
                                        <aspxform:XCheckBox id="XCheckBox7" runat="server" XDataBind="varChk" Text="全选"></aspxform:XCheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XGridLineNo id="XGridLineNo1" runat="server" Width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XGridLineNo>
                                        <aspxform:XTextBox id="XTextBox5" runat="server" XDataBind="Fin_PL_LoanInfo.tid" BorderColor="#DCDCDC" BorderWidth="1" width="100%" HiddenInput="True"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox1" runat="server" XDataBind="Fin_PL_LoanInfo.Loan_SN" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox2" runat="server" XDataBind="Fin_PL_LoanInfo.Loan_Name" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox3" runat="server" XDataBind="Fin_PL_LoanInfo.Loan_Amount" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox4" runat="server" XDataBind="Fin_PL_LoanInfo.Loan_Content" BorderColor="Gainsboro" BorderWidth="1px" width="255px" HiddenInput="False" Max="0" Min="0" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None" TextMode="MultiLine"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XCheckBox id="XCheckBox1" runat="server" XDataBind="Fin_PL_LoanInfo.State" Text=" " Express="if(varChk=='1',1,'')"></aspxform:XCheckBox>
                                        <aspxform:XChildFormLink id="XChildFormLink1" runat="server" XDataBind="Fin_PL_LoanInfo.CerID" Text="财务分录" FormApplication="财务分录"></aspxform:XChildFormLink>
                                        <aspxform:xtextbox id="txtACID" runat="server" XDataBind="v" width="100%" HiddenInput="True" bordercolor="#DCDCDC" borderwidth="1" express="if(Fin_PL_LoanInfo.State=='1',Fin_PL_LoanInfo.CerID,'')"></aspxform:xtextbox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="2">
                        <aspxform:XLabel id="XLabel7" runat="server" text="费用报销单汇总" ForeColor="Black"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%" align="center" dynamicarea="1,1">
                            <tbody>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="44">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel9" runat="server" text="编号" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="125">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel10" runat="server" text="费用报销单号" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="97">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel11" runat="server" text="报销人" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel13" runat="server" text="报销金额" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="264">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel15" runat="server" text="内容" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="100">
                                        <aspxform:XCheckBox id="XCheckBox8" runat="server" XDataBind="varChk1" Text="全选"></aspxform:XCheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                                        <aspxform:XGridLineNo id="XGridLineNo2" runat="server" Width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XGridLineNo>
                                        <aspxform:XTextBox id="XTextBox7" runat="server" XDataBind="Fin_PL_PayInfo.tid" BorderColor="#DCDCDC" BorderWidth="1" width="100%" HiddenInput="True"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox8" runat="server" XDataBind="Fin_PL_PayInfo.SN" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox9" runat="server" XDataBind="Fin_PL_PayInfo.Name" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox10" runat="server" XDataBind="Fin_PL_PayInfo.Amount" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox11" runat="server" XDataBind="Fin_PL_PayInfo.Payee_Content" BorderColor="#DCDCDC" BorderWidth="1" width="255px" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None" TextMode="MultiLine"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XCheckBox id="XCheckBox3" runat="server" XDataBind="Fin_PL_PayInfo.State" Text=" " Express="if(varChk1=='1',1,'')"></aspxform:XCheckBox>
                                        <aspxform:XChildFormLink id="XChildFormLink2" runat="server" XDataBind="Fin_PL_PayInfo.CerID" Text="财务分录" FormApplication="财务分录"></aspxform:XChildFormLink>
                                        <aspxform:xtextbox id="txtBCID" runat="server" XDataBind="v1" width="100%" HiddenInput="True" bordercolor="#DCDCDC" borderwidth="1" express="if(Fin_PL_PayInfo.State=='1',Fin_PL_PayInfo.CerID,'')"></aspxform:xtextbox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24" colspan="2">
                        <aspxform:XLabel id="XLabel17" runat="server" text="差旅报销单汇总" ForeColor="Black"></aspxform:XLabel>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%" align="center" dynamicarea="1,1">
                            <tbody>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="44">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel18" runat="server" text="编号" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="125">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel19" runat="server" text="费用报销单号" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="97">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel20" runat="server" text="报销人" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel21" runat="server" text="报销金额" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="264">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel22" runat="server" text="内容" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="100">
                                        <aspxform:XCheckBox id="XCheckBox9" runat="server" XDataBind="varChk2" Text="全选"></aspxform:XCheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                                        <aspxform:XGridLineNo id="XGridLineNo3" runat="server" Width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XGridLineNo>
                                        <aspxform:XTextBox id="XTextBox12" runat="server" XDataBind="Fin_PL_TEInfo.tid" BorderColor="#DCDCDC" BorderWidth="1" width="100%" HiddenInput="True"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox13" runat="server" XDataBind="Fin_PL_TEInfo.SN" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox14" runat="server" XDataBind="Fin_PL_TEInfo.Name" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox15" runat="server" XDataBind="Fin_PL_TEInfo.Amount" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox16" runat="server" XDataBind="Fin_PL_TEInfo.Payee_Content" BorderColor="#DCDCDC" BorderWidth="1" width="255px" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None" TextMode="MultiLine"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XCheckBox id="XCheckBox4" runat="server" XDataBind="Fin_PL_TEInfo.State" Text=" " Express="if(varChk2=='1',1,'')"></aspxform:XCheckBox>
                                        <aspxform:XChildFormLink id="XChildFormLink3" runat="server" XDataBind="Fin_PL_TEInfo.CerID" Text="财务分录" FormApplication="财务分录"></aspxform:XChildFormLink>
                                        <aspxform:xtextbox id="txtCCID" runat="server" XDataBind="v2" width="100%" HiddenInput="True" bordercolor="#DCDCDC" borderwidth="1" express="if(Fin_PL_TEInfo.State=='1',Fin_PL_TEInfo.CerID,'')"></aspxform:xtextbox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf" height="24">
                        <aspxform:XLabel id="XLabel23" runat="server" text="特殊费用报销单汇总" ForeColor="Black"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#d1dedf">
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #c8dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" colspan="2">
                        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%" align="center" dynamicarea="1,1">
                            <tbody>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="44">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel24" runat="server" text="编号" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="125">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel25" runat="server" text="费用报销单号" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="97">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel26" runat="server" text="报销人" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel27" runat="server" text="报销金额" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="264">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel28" runat="server" text="内容" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="100">
                                        <aspxform:XCheckBox id="XCheckBox10" runat="server" XDataBind="varChk3" Text="全选"></aspxform:XCheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                                        <aspxform:XGridLineNo id="XGridLineNo4" runat="server" Width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XGridLineNo>
                                        <aspxform:XTextBox id="XTextBox17" runat="server" XDataBind="Fin_PL_CE_S_Info.tid" BorderColor="#DCDCDC" BorderWidth="1" width="100%" HiddenInput="True"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox18" runat="server" XDataBind="Fin_PL_CE_S_Info.SN" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox19" runat="server" XDataBind="Fin_PL_CE_S_Info.Name" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox20" runat="server" XDataBind="Fin_PL_CE_S_Info.Amount" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox21" runat="server" XDataBind="Fin_PL_CE_S_Info.Payee_Content" BorderColor="#DCDCDC" BorderWidth="1" width="255px" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None" TextMode="MultiLine"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XCheckBox id="XCheckBox5" runat="server" XDataBind="Fin_PL_CE_S_Info.State" Text=" " Express="if(varChk3=='1',1,'')"></aspxform:XCheckBox>
                                        <aspxform:XChildFormLink id="XChildFormLink4" runat="server" XDataBind="Fin_PL_CE_S_Info.CerID" Text="财务分录" FormApplication="财务分录"></aspxform:XChildFormLink>
                                        <aspxform:xtextbox id="txtDCID" runat="server" XDataBind="v3" width="100%" HiddenInput="True" bordercolor="#DCDCDC" borderwidth="1" express="if(Fin_PL_CE_S_Info.State=='1',Fin_PL_CE_S_Info.CerID,'')"></aspxform:xtextbox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #c8dedf 1px solid; BORDER-LEFT: #c8dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #c8dedf 1px solid" bgcolor="#c8dedf" height="24">
                        <aspxform:XLabel id="XLabel29" runat="server" text="付款单汇总" ForeColor="Black"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #c8dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #c8dedf 1px solid" bgcolor="#c8dedf">
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #c8dedf 1px solid; BORDER-LEFT: #c8dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #c8dedf 1px solid" height="14" colspan="2">
                        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="100%" align="center" dynamicarea="1,1">
                            <tbody>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" height="24" width="44">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel44" runat="server" text="编号" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="125">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel45" runat="server" text="付款单号" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="97">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel46" runat="server" text="收款人" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="113">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel47" runat="server" text="付款金额" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="264">
                                        <div align="center">
                                            <aspxform:XLabel id="XLabel48" runat="server" text="付款事由" ForeColor="Gray"></aspxform:XLabel>
                                        </div>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: #d1dedf 1px solid; BORDER-RIGHT: #d1dedf 1px solid" width="100">
                                        <aspxform:XCheckBox id="XCheckBox11" runat="server" XDataBind="varChk4" Text="全选"></aspxform:XCheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0" height="24">
                                        <aspxform:XGridLineNo id="XGridLineNo5" runat="server" Width="100%" BorderColor="#DCDCDC" BorderWidth="1">1</aspxform:XGridLineNo>
                                        <aspxform:XTextBox id="XTextBox22" runat="server" XDataBind="Fin_PL_Payment.tid" BorderColor="#DCDCDC" BorderWidth="1" width="100%" HiddenInput="True"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox23" runat="server" XDataBind="Fin_PL_Payment.SN" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox26" runat="server" XDataBind="Fin_PL_Payment.Name" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox id="XTextBox32" runat="server" XDataBind="Fin_PL_Payment.Amount" BorderColor="#DCDCDC" BorderWidth="1" width="100%" ReadOnly="True" BackColor="#F0F0F0" BorderStyle="None"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XTextBox style="OVERFLOW: hidden" id="XTextBox33" runat="server" XDataBind="Fin_PL_Payment.Reason" BorderColor="#DCDCDC" BorderWidth="1" width="255px" BackColor="#F0F0F0" BorderStyle="None" TextMode="MultiLine"></aspxform:XTextBox>
                                    </td>
                                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                                        <aspxform:XCheckBox id="XCheckBox6" runat="server" XDataBind="Fin_PL_Payment.State" Text=" " Express="if(varChk4=='1',1,'')"></aspxform:XCheckBox>
                                        <aspxform:XChildFormLink id="XChildFormLink5" runat="server" XDataBind="Fin_PL_Payment.CerID" Text="财务分录" FormApplication="财务分录"></aspxform:XChildFormLink>
                                        <aspxform:xtextbox id="txtECID" runat="server" XDataBind="v4" width="100%" HiddenInput="True" bordercolor="#DCDCDC" borderwidth="1" express="if(Fin_PL_Payment.State=='1',Fin_PL_Payment.CerID,'')"></aspxform:xtextbox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" border="0" cellspacing="0" cellpadding="0" width="1000" align="center">
            <tbody>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid" height="36" width="116">
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid" width="644">
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: #d1dedf 1px solid; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" height="24">
                        <aspxform:XLabel id="XLabel6" runat="server" text="确认" ForeColor="Gray"></aspxform:XLabel>
                    </td>
                    <td style="BORDER-BOTTOM: #d1dedf 1px solid; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: #d1dedf 1px solid" bgcolor="#f0f0f0">
                        <aspxform:XCheckBox id="XCheckBox2" runat="server" XDataBind="Fin_PL.Confirm_E" Text="确认抛入SAP"></aspxform:XCheckBox>
                        <aspxform:XTextBox id="XTextBox6" runat="server" BorderColor="Gainsboro" BorderWidth="1px" width="32px" HiddenInput="True" Max="0" Min="0" Express="Fin_PL.Confirm_E"></aspxform:XTextBox>
                    </td>
                </tr>
                <tr>
                    <td style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none" height="25" colspan="2" align="middle">
                        <aspxform:XProcessButtonList id="XProcessButtonList1" runat="server"></aspxform:XProcessButtonList>
                    </td>
                </tr>
            </tbody>
        </table>
        <aspxform:XCompareValidator id="XCompareValidator1" runat="server" Display="None" ErrorMessage="请确认是否已经导出了财务分录！" ControlToValidate="XTextBox6" ValidationGroup="S" ValueToCompare="1" Type="Integer">确认已经导出Excel</aspxform:XCompareValidator>
        <table class="mytable" border="1" cellspacing="0" cellpadding="0" width="1000" align="center">
            <tbody>
                <tr>
                    <td>
                        <script type="text/javascript" src="../jquery-1.9.1.min.js"></script>
                        <script type="text/javascript">
                                document.write('<script type="text/javascript" charset="gb2312"   src="' + rootUrl + 'MyApp/Demo/TaskComment/taskcomment.js"><\/script>');
                            </script>
                    </td>
                </tr>
            </tbody>
            <div>
            </div>
        </table>
    </form>
</body>
</html>
