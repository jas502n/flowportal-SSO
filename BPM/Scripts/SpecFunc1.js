// JScript 文件
function TaskRuleEditorOnAddProcesses(table,mapvalues)
{
    var rows = mapvalues.split('\n');
    for(var i = 0 ; i < rows.length ; i++)
    {
        var values = rows[i].split(';');
        var pn = '';
                
        if(values.length >= 1)
            pn = values[0];
            
        var rowcount = table.rows.length;
        var newRow = table.insertRow(rowcount-1);
        newRow.className = "GR";
        var cell1 = newRow.insertCell(0);
        var cell2 = newRow.insertCell(1);
        var cell3 = newRow.insertCell(2);
        cell1.innerHTML = '<input type="checkbox"/>';
        cell2.innerHTML = '<input type="text" class="INP" readonly name="PN_Name" style="width:100%;" value="'+pn+'"/>';
        cell3.innerHTML = '<input type="text" class="INP" name="PN_Cond" style="width:98%;margin-left:4px;" value=""/>';
    }
}

function TaskRuleEditorOnDeleteItems(table)
{
    var cbs = GetCheckedBox(table,0);
    for(var i = 0 ; i < cbs.length ;i++)
    {
        var cbx = cbs[i];
        var row = Common_GetParentTR(cbx)
        var table = Common_GetParentTable(row);
        table.deleteRow(row.rowIndex);
    }
}

function TaskRuleEditorOnAddUser(table,mapvalues)
{
    var account = '';
    var kvs = mapvalues.split(';');
    if(kvs.length >= 1)
    {
        var acc = kvs[0].split('=');
        if(acc.length >= 2)
            account = acc[1];
    }
         
    var rowcount = table.rows.length;
    var newRow = table.insertRow(rowcount-1);
    newRow.className = "GR";
    var cell1 = newRow.insertCell(0);
    var cell2 = newRow.insertCell(1);
    cell1.innerHTML = '<input type="checkbox"/>';        
    var sb = '';
    sb += "<input type='text' readonly class='INP' name='PN' style='width:100%' value='\""+account+"\"'/>"
    sb += "<input type='text' name='PT_Type' style='display:none;' value='SpecifiedUser'/>";
    sb += "<input type='text' name='PT_SP1' style='display:none;' value='"+account+"'/>";
    sb += "<input type='text' name='PT_SP2' style='display:none;' value=''/>";
    sb += "<input type='text' name='PT_SP3' style='display:none;' value=''/>";
    sb += "<input type='text' name='PT_SP4' style='display:none;' value=''/>";
    sb += "<input type='text' name='PT_SP5' style='display:none;' value=''/>";
    sb += "<input type='text' name='PT_LP1' style='display:none;' value='5'/>";
    sb += "<input type='text' name='PT_LP2' style='display:none;' value='0'/>";
    sb += "<input type='text' name='PT_LP3' style='display:none;' value='0'/>";
    sb += "<input type='text' name='PT_EXP' style='display:none;' value='Member.FromAccount(\""+account+"\")'/>";
    cell2.innerHTML = sb;
}

function TaskRuleProcessDefineTypeChange(ele,addBtn,deleteButton)
{
    if(ele.children[0].checked)
    {
        addBtn.disabled = true;
        deleteButton.disabled = true;
    }
    else
    {
        addBtn.disabled = false;
        deleteButton.disabled = false;
    }
}

function TaskRuleDelete(rtable)
{
    var cbs = GetCheckedBox(rtable,1);
    var length = cbs.length;
    
    if(length == 0)
    {
        return;
    }
    
    //if(confirm(JS_Reject_Confirm) == false)
        //return;    
 
 	var ruleids = GetCheckBoxAttrList(cbs,"id").split(",");
 	var i;
 	for(i = 0 ; i < ruleids.length ; i++)
 	{
 	    var ruleid = ruleids[i];
 	    
        var result = RFC("TaskRule_Delete","ruleid=" + ruleid);
        if(result == null) //failed
            break;
 	}
 	
 	if(i != 0)
 	{
        //alert(String.Format(JS_Reject_Msg,i));
        document.execCommand("refresh",false);
 	}
}
