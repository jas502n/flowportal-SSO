// JScript 文件

function F_CloseDialogA(obj,idx,msg1,msg2)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    
    if(length == 0 && msg1.length != 0)
    {
        alert(msg1);
        return;
    }

    if(length > 1 && msg2.length != 0)
    {
        alert(msg2);
        return;
    }

    var owner = window.opener.document.all(idx);

    window.close();
     
    owner.mapvalues = GetCheckBoxIDList(cbs);
    owner.fireEvent("ondataavailable");
}

function F_CloseDialogM(obj,idx,msg1)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    
    if(length == 0 && msg1.length != 0)
    {
        alert(msg1);
        return;
    }

    var owner = window.opener.document.all(idx);

    window.close();
    
    for(var i = 0 ; i < length ; i++)
    {
        var checkbox = cbs[i];

        owner.mapvalues = checkbox.id;
        owner.fireEvent("ondataavailable");
    }
 }

function F_CloseDialogC(idx,mapvalue)
{
    var owner = window.opener.document.all(idx);

    window.close();
    
    owner.mapvalues = mapvalue;
    owner.fireEvent("ondataavailable");
}

function F_CloseDialogB(obj,idx,fromidx,msg1,msg2)
{
    var cbs = GetCheckedBox(obj,fromidx);
    var length = cbs.length;
    
    if(length == 0 && msg1.length != 0)
    {
        alert(msg1);
        return;
    }

    if(length > 1 && msg2.length != 0)
    {
        alert(msg2);
        return;
    }

    var owner = window.opener.document.all(idx);

    window.close();
    
    owner.mapvalues = GetCheckBoxRowDataList(cbs);
    owner.fireEvent("ondataavailable");
}

function F_CloseDialogLM1(obj,idx,table,msg,deldef)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    
    if(length == 0)
    {
        alert(msg);
        return;
    }

    var pwin = window.opener;
    var agent = pwin.document.XFormShell.XFormAgent;
    if(deldef)
    {
        if (agent.GetTableRowCount(table) == 1 && !agent.IsRowModified(table,0))
            agent.ClearTableRows(table);
    }

    var btn = pwin.document.all(idx); 
    var datamap = btn.DataMap;
    for(var i = 0 ; i < length ; i++)
    {
        var checkbox = cbs[i];
        agent.AppendRowExt(table,"",datamap,checkbox.id);
        
        pwin.status = (i+1) + " rows imported";
    }

    window.close();
}

function F_CloseDialogLM(obj,idx,table,msg)
{
    F_CloseDialogLM1(obj,idx,table,msg,true);
}

function F_CloseDialogNBat(obj,idx,msg1,msg2)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    
    if(length == 0 && msg1.length != 0)
    {
        alert(msg1);
        return;
    }

    if(length > 1 && msg2.length != 0)
    {
        alert(msg2);
        return;
    }
    
    var owner = window.opener.document.all(idx);
    window.close();

    owner.mapvalues = GetCheckBoxIDListN(cbs);
    owner.fireEvent("ondataavailable");
}

function F_CloseDialogN(obj,cbxindex,idx,msg1,msg2)
{
    var cbs = GetCheckedBox(obj,cbxindex);
    var length = cbs.length;
    
    if(length == 0 && msg1.length != 0)
    {
        alert(msg1);
        return;
    }

    if(length > 1 && msg2.length != 0)
    {
        alert(msg2);
        return;
    }

    var pwin = window.opener;
    var owner = pwin.document.all(idx);
    window.close();

    for(var i = 0 ; i < length ; i++)
    {
        var checkbox = cbs[i];

        owner.mapvalues = checkbox.id;
        owner.fireEvent("ondataavailable");
        
        pwin.status = (i+1) + " rows imported"; 
    }
}

function GetCheckedBox(tr,index)
{
    var cbs = new Array();
    
    var inputs = tr.all.tags("INPUT");
    var length = inputs.length;
    for(var i = index ; i < length ; i++)
    {
        var input = inputs[i];
        if( input.type.toLowerCase() == "checkbox" )
        {
            if( input.checked )
                cbs.push(input);
        }
    }
    
    return cbs;
}

function GetCheckBoxIDList(checkboxs)
{
    var rv = "";

    var length = checkboxs.length;
    for(var i = 0 ; i < length ; i++)
    {
        var checkbox = checkboxs[i];
        
        if( rv.length != 0 )
            rv += ",";
        rv += checkbox.id;
    }
    
    return rv;
}

function GetCheckBoxIDListN(checkboxs)
{
    var rv = "";

    var length = checkboxs.length;
    for(var i = 0 ; i < length ; i++)
    {
        var checkbox = checkboxs[i];
        
        if( rv.length != 0 )
            rv += "\n";
        rv += checkbox.id;
    }
    
    return rv;
}

function GetCheckBoxRowDataList(checkboxs)
{
    var rv = "";

    var length = checkboxs.length;
    for(var i = 0 ; i < length ; i++)
    {
        var checkbox = checkboxs[i];
        
        if( rv.length != 0 )
            rv += ",";
        rv += checkbox.RowData;
    }
    
    return rv;
}

function OnTreeClick(evt)
{    
    var src = window.event != window.undefined ? window.event.srcElement : evt.target;    
    if(src.tagName.toLowerCase() == "a") //click on link
    {        
        //var nodeText = src.innerText;        
        //var nodeValue = GetNodeValue(src);        
        //alert("Text: "+nodeText + "," + "Value: " + nodeValue);    
    }
    if(src.tagName.toLowerCase() == "input")
    {
        if(src.type.toLowerCase() == "checkbox")
        {
            var a = window.document.all(src.sourceIndex+1);
            var nodeText = a.innerText;        
            var nodeValue = GetNodeValue(a);
            src.RowData = "Col1=" + nodeValue + ";Col2=" + nodeText;
            //alert(src.RowData);
        }
    }
    
    //return false; 
    //uncomment this if you do not want postback on node click
}
    
function GetNodeValue(node)
{    
    var nodeValue = "";    
    var nodePath = node.href.substring(node.href.indexOf(",")+2,node.href.length-2);    
    var nodeValues = nodePath.split("\\");    
    if(nodeValues.length > 1)        
        nodeValue = nodeValues[nodeValues.length - 1];    
    else        
        nodeValue = nodeValues[0].substr(1);
        
    return nodeValue;
}