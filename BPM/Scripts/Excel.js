// JScript 文件

function UpdateSheetName(oFileUpload,oList,table)
{
    oFileUpload.select();
    var fileName = document.selection.createRange().text;

    var oExcel;
    var oWorkbook;
    try
    {
        oExcel = window.opener.XFormShell.XFormAgent.CreateExcel();
        //oExcel = new ActiveXObject("Excel.Application");
        oExcel.DisplayAlerts = false;
    }
    catch(e)
    {
        window.location.href = "../Common/IESecurity.aspx?type=excel";
        return;
    }
    
    try
    {
        var oActiveBook  = oExcel.Workbooks.Open(fileName);
        
        while(oList.length !=0)
            oList.remove(0);
            
        for(var i = 1 ; i <= oActiveBook.Worksheets.Count ; i++)
        {
            var sheetName = oActiveBook.Worksheets(i).Name;
            
            var oOption = new Option(sheetName,sheetName);
            oList[oList.length]=oOption;        
        }

        OnSheetChangeInternal(oExcel,oFileUpload,oList,table);
    }
    catch(e)
    {
        alert(e);
    }
    finally
    {
        oExcel.Quit();
        oExcel = null;
        setTimeout(CollectGarbage, 1);
    }
}

function OnSheetChange(oFileUpload,oList,table)
{
    var oExcel;
    try
    {
        oExcel = window.opener.XFormShell.XFormAgent.CreateExcel();
        //oExcel = new ActiveXObject("Excel.Application");
        oExcel.DisplayAlerts = false;
    }
    catch(e)
    {
        window.location.href = "../Common/IESecurity.aspx?type=excel";
        return;
    }
    
    OnSheetChangeInternal(oExcel,oFileUpload,oList,table);
    
    oExcel.Quit();
    oExcel = null;
    setTimeout(CollectGarbage, 1);
}

function ExcelColumnIndexToName(idx)
{
    idx = idx - 1;
    var rv = String.fromCharCode("A".charCodeAt(0) + idx%26);
    var j = idx/26 - 1;
    if (j >= 0)
    {
        rv = String.fromCharCode("A".charCodeAt(0) + j) + rv;
    }

    return rv;
}

function OnSheetChangeInternal(oExcel,oFileUpload,oList,table)
{
    oFileUpload.select();
    var fileName = document.selection.createRange().text;
    var sheetName = oList.value;
    
    if(typeof(fileName) != 'string' || fileName.length == 0)
        return;
        
    try
    {
        var oActiveBook  = oExcel.Workbooks.Open(fileName);
        var oSheet = oActiveBook.Worksheets(sheetName);
        var oRange = oSheet.UsedRange;
        var oCells = oRange.Cells;
        var rowCount = oRange.Rows.Count;
        var colCount = oRange.Columns.Count;
        var startCol;
        
        if(colCount >= 1)
            startCol = oRange.Columns(1).Column;
        else
            startCol = 1;
    
        while(table.rows.length != 0)
            table.deleteRow(0);
                   
        for(var r = 1 ; r <= rowCount ; r++)
        {
            window.status = (r-1) + " rows loaded";
            
            var newRow;
        
            if (r==1)
            {
                newRow = List_CreateHeaderRow(table);                
            }
            else if(r==2)
            {
                newRow = List_CreateItemRow(table);
            }
            else
            {
                var newRow1 = List_CreateItemRow(table);
                var newRow2 = table.rows(1).cloneNode(true);             
                newRow1.replaceNode(newRow2);
                newRow = table.rows(r-1);
            }
                        
            var valueList = '';
                        
            for(var c = 1 ; c <= colCount ; c++)
            {
                var value = oCells(r,c).Value;
                var valueType = typeof(value);
 
                var cell;
                
                if (r==1)
                    cell = List_CreateColumn(newRow,c == colCount);
                else if(r==2)
                    cell = List_CreateCell(newRow,c == colCount);
                else
                    cell = newRow.cells(c);
                    
                if(valueType == 'undefined')
                {
                    value = '';
                }
                else if(valueType == 'date')
                {
                    var d = new Date(value);
                    value = d.ToStringL();
                }

                if (c != 1)
                    valueList += ';';

                valueList += ExcelColumnIndexToName(startCol + c - 1) + '=' + value;                
                cell.innerHTML = value;
            }
        
            if (r==1)
            {
                List_CreateCheckColumn(newRow,false);
            }
            else if(r==2)
            {
                var cell = List_CreateCheckCell(newRow,false)
                cell.innerHTML = '<input type="checkbox" checked id="' + valueList + '" onclick="checkrow(this);"/>';
            }
            else
            {
                cell = newRow.cells(0);
                cell.innerHTML = '<input type="checkbox" checked id="' + valueList + '" onclick="checkrow(this);"/>';                
            }
        }
    }
    catch(e)
    {
        alert(e);
    }
}

function ExportToExcel(tableid)
{
    var table = document.getElementById(tableid);
    var oExcel = XFormShell.XFormAgent.CreateExcel();
    var oWorkBook = oExcel.Workbooks.Add();
    var oSheet = oWorkBook.ActiveSheet;    
    var rowCount = table.rows.length;
 
    for (var i = 0; i < rowCount; i++)
    {
        var cellCount = table.rows(i).cells.length;
        for (var j = 0; j < cellCount; j++)
        {
            var cell = table.rows(i).cells(j);
            var excelCell = oSheet.Cells(i + 1, j + 1);
            excelCell.NumberFormatLocal = '@';
            excelCell.value = GetControlText(cell);
        }
    }
    
    oExcel.Visible = true;
    oExcel.UserControl = true;
    
    oExcel = null;
    setTimeout(CollectGarbage, 1); 
}

function GetControlText(ctrl,child)
{
    var rv = '';

    var tag = ctrl.tagName;
    if (tag == 'INPUT'){
        var type = ctrl.type;
        
        if (type == 'button'){
        }
        else if(type == 'radio'){
            if (ctrl.checked){
                rv = ctrl.nextSibling.innerText;
            }
        }
        else if(type == 'checkbox'){
            if (ctrl.checked){
                rv = ctrl.nextSibling.innerText;
            }
        }
        else
            rv = ctrl.value;
    }
    else if (tag == 'SELECT'){
        var selItem = ctrl.options[ctrl.selectedIndex];
        rv = selItem.text || selItem.value;
    }
    else
        rv = ctrl.value;
        
    rv = rv || '';
        
    if (!rv){
        var len = ctrl.children.length;
        for(var i = 0 ; i < len ; i++){
            var value = GetControlText(ctrl.children(i),true);
            if (value){
                if (rv)
                    rv+=';';
                    
                rv += value;
            }
        }
    }
    
    if (!rv && !child){
        rv = ctrl.innerText || '';
    }
    
    return rv;
}