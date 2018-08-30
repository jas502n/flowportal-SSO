// JScript 文件
String.Format = function( text )
{
    //check if there are two arguments in the arguments list
    if ( arguments.length <= 1 )
    {
        //if there are not 2 or more arguments there's nothing to replace
        //just return the original text
        return text;
    }

    //decrement to move to the second argument in the array
    var tokenCount = arguments.length - 2;
    for( var token = 0; token <= tokenCount; token++ )
    {
        //iterate through the tokens and replace their placeholders from the original text in order
        text = text.replace( new RegExp( "\\{" + token + "\\}", "gi" ), arguments[ token + 1 ] );
    }

    return text;
}

String.prototype.Trim = function()
{
    return this.replace(/(^\s*)|(\s*$)/g, '');
}

function checkall(chk)
{
    var table = GetParentTable(chk);
    
    var inputs = table.all.tags("INPUT");
    var length = inputs.length;
    
    for(var i = 0 ; i < length ; i++)
    {
        var input = inputs[i];
        if( input.type.toLowerCase() == "checkbox" && input != chk)
        {
            input.checked = chk.checked;
            checkrow(input);
        }
    }
}

function checkrow(chk)
{
    var tr = GetParentTR(chk);
    
    if( chk.checked )
    {
        if(typeof(tr.OrgColor) == 'undefined')
            tr.OrgColor = tr.style.backgroundColor;
            
        tr.style.backgroundColor = "#fffdd7";
    }
    else
    {
        tr.style.backgroundColor = tr.OrgColor;
    }
}

function GetParentTable(obj)
{
    var parent = obj;
    
    while(parent.tagName != "TABLE")
    {
        parent = parent.parentElement;    
    }
    
    return parent;
}

function GetParentTR(obj)
{
    var parent = obj;
    
    while(parent.tagName != "TR")
    {
        parent = parent.parentElement;    
    }
    
    return parent;
}

function GetParentTD(obj)
{
    var parent = obj;
    
    while(parent.tagName != "TD")
    {
        parent = parent.parentElement;    
    }
    
    return parent;
}

function NextStep1(obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    
    if(length == 0 && JS_Next_WarnNoSelect.legnth != 0)
    {
        alert(JS_Next_WarnNoSelect);
        return;
    }

    if(length > 1 && JS_Next_WarnMultiSelect.legnth != 0)
    {
        alert(JS_Next_WarnMultiSelect);
        return;
    }
    
    var param = "";
    var index = window.location.href.lastIndexOf("?");
    if( index != -1 )
        param = window.location.href.substring(index);
        
    if( param.length != 0 )
        param += "&" + JS_Next_ParamName + "=" + GetCheckBoxIDList(cbs);
    else
        param += "?" + JS_Next_ParamName + "=" + GetCheckBoxIDList(cbs);
        
    window.location.href = JS_Next_Aspx + param;
}

function Subm(act,tr,url,msg1)
{
    var cbs = GetCheckedBox(tr,1);
    var length = cbs.length;

    var param;
    var atleastone = false;
    var onlyone = false;
    
    if(act == "get")
    {
        atleastone = true;
        param = GetCheckBoxIDList(cbs);
    }
    else if(act == "share")
    {
        atleastone = true;
        param = GetCheckBoxIDList(cbs);
        
        for(var i = 0 ; i < length ; i++)
        {
            var cb = cbs[i];
            var tr = GetParentTR(cb);
            if( !IsTRShare(tr) )
            {
                alert(JS_Share_IncludeNoShareItem);
                return;
            }
        }
    }
    else if(act == "pause")
    {
        atleastone = true;
        param = GetTaskIDList(cbs);
    }
    else if(act == "stop")
    {
        atleastone = true;
        param = GetTaskIDList(cbs);
    }
    else if(act == "delete")
    {
        if(confirm(JS_DeleteTask_Confirm) == false)
            return;
            
        atleastone = true;
        param = GetTaskIDList(cbs);
    }
    else if(act == "continue")
    {
        atleastone = true;
        param = GetTaskIDList(cbs);
    }
    else if(act == "restart")
    {
        atleastone = true;
        param = GetTaskIDList(cbs);
    }
    else if(act == "sendto")
    {
        if( length == 0 )
        {
            alert(js_msg1);
            return;
        }
        
        param = GetCheckBoxIDList(cbs);
        
        var newwindow = window.open(url + "?ids=" + param, "SendToWnd", "width=712,height=482,top=100,left=200,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=yes");
        if( newwindow != null)
            newwindow.focus();
            
        return;
    }
    else if(act == "tsendto")
    {
        if( length == 0 )
        {
            alert(JS_Common_PlsSelTask);
            return;
        }
        
        if( length > 1 )
        {
            alert(JS_Common_PlsSelOneTaskOnly);
            return;
        }
        
        param = GetCheckBoxIDList(cbs);
        
        var newwindow = window.open("../Common/SendToSelStep.aspx?tid=" + param, "SendToWnd", "width=712,height=482,top=100,left=200,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=yes");
        if( newwindow != null)
            newwindow.focus();
            
        return;
    }
    else if(act == "jump")
    {
        if( length == 0 )
        {
            alert(JS_Common_PlsSelTask);
            return;
        }

        if( length > 1 )
        {
            alert(JS_Common_PlsSelOneTaskOnly);
            return;
        }
        
        sid = GetCheckBoxIDList(cbs);
        tid = GetTaskIDList(cbs);
        
        var newwindow = window.open(url + "?tid=" + tid + "&sid=" + sid, "JumpWnd", "width=712,height=482,top=100,left=200,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=yes");
        if( newwindow != null)
            newwindow.focus();
            
        return;
    }
    else if(act == "state")
    {
        if( length == 0 )
        {
            alert(JS_Common_PlsSelTask);
            return;
        }

        if( length > 1 )
        {
            alert(JS_Common_PlsSelOneTaskOnly);
            return;
        }
        
        tid = GetTaskIDList(cbs);
        
        var newwindow = window.open(url + "?tid=" + tid, "StateWnd", "width=712,height=482,top=100,left=200,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=yes");
        if( newwindow != null)
            newwindow.focus();
            
        return;
    }
    
    if( atleastone && length == 0 )
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }
 
    document.forms[0]._param.value = "act=" + act + ";" + param;
    //alert(document.forms[0]._param.value);
    document.forms[0].submit();
}

function CloseDialogA(obj,idx,msg1,msg2)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    
    if(length == 0 && msg1.legnth != 0)
    {
        alert(msg1);
        return;
    }

    if(length > 1 && msg2.legnth != 0)
    {
        alert(msg2);
        return;
    }
    
    window.opener.document.all(idx).value = GetCheckBoxIDList(cbs);
    window.close();
}

function Subc(asp,obj,pm,msg1,msg2)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    
    if(length == 0 && msg1.legnth != 0)
    {
        alert(msg1);
        return;
    }

    if(length > 1 && msg2.legnth != 0)
    {
        alert(msg2);
        return;
    }
    
    var param = "";
    var index = window.location.href.lastIndexOf("?");
    if( index != -1 )
        param = window.location.href.substring(index);
        
    if( param.length != 0 )
        param += "&" + pm + "=" + GetCheckBoxIDList(cbs);
    else
        param += "?" + pm + "=" + GetCheckBoxIDList(cbs);
        
    window.location.href = asp + param;
}

function CloseAndR()
{
    if( window.opener != null )
        window.opener.document.execCommand("refresh",false);

    window.close();
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

function GetCheckBoxAttrList(checkboxs,attrname)
{
    var rv = "";

    var length = checkboxs.length;
    for(var i = 0 ; i < length ; i++)
    {
        var checkbox = checkboxs[i];
        
        if( rv.length != 0 )
            rv += ",";
        rv += checkbox.getAttribute(attrname);
    }
    
    return rv;
}

function GetTreeCheckBoxAttrList(checkboxs,attrname)
{
    var rv = "";

    var length = checkboxs.length;
    for(var i = 0 ; i < length ; i++)
    {
        var checkbox = checkboxs[i];
        var idx = checkbox.sourceIndex+1;        
        var a = document.all(idx);
        var ss = a.all.tags("span");
        var s = ss[ss.length-1]; 
        
        if( rv.length != 0 )
            rv += "\n";
        rv += s.getAttribute(attrname);
    }
    
    return rv;
}

function GetTaskIDList(checkboxs)
{
    return GetCheckBoxAttrList(checkboxs,"taskid");
}

function GetAccountList(checkboxs)
{
    return GetCheckBoxAttrList(checkboxs,"account");
}

function IsTRShare(tr)
{
    var imgs = tr.all.tags("IMG");
    var length = imgs.length;
    for(var i = 0 ; i < length ; i++)
    {
        var img = imgs[i];
        if( img.src.indexOf("share16.gif") != -1 )
            return true;
    }
    
    return false;
}

function GetChkItems(tr)
{
    var rv = "";
    var inputs = tr.all.tags("INPUT");
    var length = inputs.length;
    for(var i = 1 ; i < length ; i++)
    {
        var input = inputs[i];
        if( input.type.toLowerCase() == "checkbox" )
        {
            rv += input.id + ",";
        }
    }
    
    return rv;
}

function MIMouseOver(obj)
{
    var td = GetParentTD(obj);
    td.className = "TDOver";
}

function MIMouseOut(obj)
{
    var td = GetParentTD(obj);
    td.className = "TDNml";
}

function ShowDialog(obj,url)
{
    var index = obj.sourceIndex - 1;
    
    if(url.indexOf('?')!=-1)
        url += "&idx=" + index;
    else
        url += "?idx=" + index;

    var newwindow = window.open(url, "BPMDialog", "width=712,height=482,top=100,left=200,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=yes");
    if( newwindow != null)
        newwindow.focus();
}

function ShowDialogN(obj,url)
{
    var index = obj.sourceIndex;
    
    if(url.indexOf('?')!=-1)
        url += "&idx=" + index;
    else
        url += "?idx=" + index;

    var newwindow = window.open(url, "BPMDialog", "width=712,height=482,top=100,left=200,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=yes");
    if( newwindow != null)
        newwindow.focus();
}

function ShowDialogNExt(name,obj,url,x,y,w,h)
{
    var index = obj.sourceIndex;
    
    if(url.indexOf('?')!=-1)
        url += "&idx=" + index;
    else
        url += "?idx=" + index;

    var newwindow = window.open(url, name, "width="+w+",height="+h+",top="+y+",left="+x+",toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=yes");
    if( newwindow != null)
        newwindow.focus();
}

function CloseDialogN(idx,mapvalue)
{
    var owner = window.opener.document.all(idx);

    window.close();
    
    owner.mapvalues = mapvalue;
    owner.fireEvent("ondataavailable");
}

function RFC(func,param)
{
    var req;
    
    if(window.XMLHttpRequest) //非IE浏览器，用xmlhttprequest对象创建
    {
        req=new XMLHttpRequest();
    }
    else if(window.ActiveXObject) //IE浏览器用activexobject对象创建
    {
        req=new ActiveXObject("Microsoft.XMLHttp");
    }
    
    if(JS_ServicePath == null)
    {
        alert('Please Set Javascript Variable : JS_ServicePath');
    }
            
    if(req) //成功创建xmlhttprequest
    {
        req.open("POST",JS_ServicePath + "/" + "CallFunc.aspx",false); //与服务端建立连接(请求方式post或get，地址,false表示同步)
        //req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        req.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
        req.send(CombinParam(param,"funcName",func)); //发送请求
         
        if(req.status==200) //http状态200表示OK
        {
            var index = req.responseText.indexOf(":");
            var header = req.responseText.substr(0,index);
            var result = req.responseText.substr(index+1);
            
            if(header == "success")
                return result;
            else
                alert(result);            
        }
        else //http返回状态失败
        {
            alert(String.Format(JS_RFC_ResponseStatus,req.statusText));
        }
    }
    else
    {
        alert(JS_RFC_XMLHttpReqFailed);
    }
    
    return null;
}

function CombinParam(param,name,value)
{
    var np = name + "=" + value;
    return np + "&" + param;
}

function TO_PickBackRestart(obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
        
    if(length == 0)
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }
    
    if(confirm(JS_PickBackRestart_Confirm) == false)
        return;
 
  	var tids = GetTaskIDList(cbs).split(",");	
 	var i;
 	for(i = 0 ; i < tids.length ; i++)
 	{
 	    var tid = tids[i];
 	     	    
        var result = RFC("TaskOpt_PickBackRestart","tid=" + tid);
        if(result == null) //failed
            break;
 	}
 	
 	if(i != 0)
 	{
        alert(String.Format(JS_PickBackRestart_Msg,i));
        document.execCommand("refresh",false);
 	}
 }

function TO_Abort(obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    var param;
    var result;
    
    if(length == 0)
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }
    
    if(confirm(JS_Abort_Confirm) == false)
        return;    
 
  	var tids = GetTaskIDList(cbs).split(",");	
 	var i;
 	for(i = 0 ; i < tids.length ; i++)
 	{
 	    var tid = tids[i];
 	    
        var result = RFC("TaskOpt_Abort","tid=" + tid);
        if(result == null) //failed
            break;
 	}
 	
 	if(i != 0)
 	{
        alert(String.Format(JS_Abort_Msg,i));
        document.execCommand("refresh",false);
 	}
}

function TO_Delete(obj,type)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    var param;
    var result;
    
    if(length == 0)
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }
 
    if(confirm(JS_Delete_Confirm) == false)
        return;

  	var tids = GetTaskIDList(cbs).split(",");	
 	var i;
 	for(i = 0 ; i < tids.length ; i++)
 	{
 	    var tid = tids[i];
 	    
        var result = RFC("TaskOpt_Delete","tid=" + tid);
        if(result == null) //failed
            break;
 	}
 	
 	if(i != 0)
 	{
        alert(String.Format(JS_Delete_Msg,i));
        document.execCommand("refresh",false);
 	}
}

function TO_Continue(obj,type)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    var param;
    
    if(length == 0)
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }

 	var tids = GetTaskIDList(cbs).split(",");
 	var i;
 	for(i = 0 ; i < tids.length ; i++)
 	{
 	    var tid = tids[i];
 	     	    
        var result = RFC("TaskOpt_Continue","tid=" + tid);
        if(result == null) //failed
            break;
 	}
 	
 	if(i != 0)
 	{
        alert(String.Format(JS_Continue_Msg,i));
        document.execCommand("refresh",false);
 	}
}

function TO_BatchApprove(obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    
    if(length == 0)
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }
 
 	var sids = GetCheckBoxIDList(cbs).split(",");	
 	var i;
 	for(i = 0 ; i < sids.length ; i++)
 	{
 	    var sid = sids[i];
 	    
        var result = RFC("TaskOpt_Approve","sid=" + sid);
        if(result == null) //failed
            break;
 	}
 	
 	if(i != 0)
 	{
        alert(String.Format(JS_BatchApprove_Msg,i));
        document.execCommand("refresh",false);
 	}
}

function TO_Reject(obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    
    if(length == 0)
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }
    
    if(confirm(JS_Reject_Confirm) == false)
        return;    
 
 	var tids = GetTaskIDList(cbs).split(",");
 	var i;
 	for(i = 0 ; i < tids.length ; i++)
 	{
 	    var tid = tids[i];
 	    
        var result = RFC("TaskOpt_Reject","tid=" + tid);
        if(result == null) //failed
            break;
 	}
 	
 	if(i != 0)
 	{
        alert(String.Format(JS_Reject_Msg,i));
        document.execCommand("refresh",false);
 	}
 }

function StepTransfer(obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    var param;

    if(length == 0)
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }
    
    var tids = GetTaskIDList(cbs).split(",");
 	for(var i = 0 ; i < tids.length ; i++)
 	{
 	    var tid = tids[i];
 	    
        var result = RFC("TaskOpt_PermCheck","tid=" + tid + "&perm=Transfer");
        if (result == null) //failed
        {
            return;
        }
        if (result.length != 0)
        {
            alert(result);
            return;
        }
    }
 
    param = GetCheckBoxIDList(cbs);
        
    var newwindow = window.open(JS_CommonPath + "/SendTo.aspx?sids=" + param, "SendToWnd", "width=712,height=482,top=100,left=200,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=yes");
    if( newwindow != null)
        newwindow.focus();
}

function TaskTransfer(obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    var param;
    
    if(length == 0)
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }
 
    if( length > 1 )
    {
        alert(JS_Common_PlsSelOneTaskOnly);
        return;
    }
        
    var tid = GetTaskIDList(cbs);
    var result = RFC("TaskOpt_PermCheck","tid=" + tid + "&perm=Transfer");
    if (result == null) //failed
    {
        return;
    }
    if (result.length != 0)
    {
        alert(result);
        return;
    }
             
    param = GetCheckBoxIDList(cbs);
        
    var newwindow = window.open(JS_CommonPath + "/SendToSelStep.aspx?tid=" + param, "SendToWnd", "width=712,height=482,top=100,left=200,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=yes");
    if( newwindow != null)
        newwindow.focus();
}

function TaskAssignOwner(obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    var param;
    
    if(length == 0)
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }
 
    if( length > 1 )
    {
        alert(JS_Common_PlsSelOneTaskOnly);
        return;
    }
        
    var tid = GetTaskIDList(cbs);
    var result = RFC("TaskOpt_PermCheck","tid=" + tid + "&perm=AssignOwner");
    if (result == null) //failed
    {
        return;
    }
    if (result.length != 0)
    {
        alert(result);
        return;
    }
         
    param = GetCheckBoxIDList(cbs);
        
    var newwindow = window.open(JS_CommonPath + "/AssignOwnerSelStep.aspx?tid=" + param, "AssignOwnerWnd", "width=712,height=482,top=100,left=200,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=yes");
    if( newwindow != null)
        newwindow.focus();
}

function TO_TransferStep(ids,obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    var result;
    
    if(length == 0)
    {
        alert(JS_SendTo_WarnNoSelect);
        return;
    }

    if(length > 1)
    {
        alert(JS_SendTo_WarnMultiSelect);
        return;
    }
    
    var sids = ids.split(',');
 	var i;
 	for(i = 0 ; i < sids.length ; i++)
 	{
 	    var sid = sids[i];
 	    var tomemberfullname = GetCheckBoxIDList(cbs);
 	    var toaccount = GetAccountList(cbs);
        if(confirm(String.Format(JS_Transfer_Confirm,toaccount)) == true)
        {
            result = RFC("TaskOpt_Transfer","sid=" + sid + "&to=" + tomemberfullname);
            if(result == null) //failed
                break;
        }
 	}
 	
 	if(i != 0)
 	{
        alert(String.Format(JS_Agent_Msg,i,result));
	    CloseAndR();
 	}
}

function TO_AssignOwner(ids,obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    var result;
    
    if(length == 0)
    {
        alert(JS_SendTo_WarnNoSelect);
        return;
    }

    if(length > 1)
    {
        alert(JS_SendTo_WarnMultiSelect);
        return;
    }
    
    var sids = ids.split(',');
 	var i;
 	for(i = 0 ; i < sids.length ; i++)
 	{
 	    var sid = sids[i];
 	    
        result = RFC("TaskOpt_AssignOwner","sid=" + sid + "&to=" + GetCheckBoxIDList(cbs));
        if(result == null) //failed
            break;
 	}
 	
 	if(i != 0)
 	{
        alert(String.Format(JS_AssignOwner_Msg,i,result));
 	    CloseAndR();
 	}
}

function Jump(obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    var param;
    var result;
    
    if(length == 0)
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }
 
    if( length > 1 )
    {
        alert(JS_Common_PlsSelOneTaskOnly);
        return;
    }
        
    sid = GetCheckBoxIDList(cbs);
    tid = GetTaskIDList(cbs);
        
    result = RFC("TaskOpt_PermCheck","tid=" + tid + "&perm=Jump");
    if (result == null) //failed
    {
        return;
    }
    if (result.length != 0)
    {
        alert(result);
        return;
    }
        
    var newwindow = window.open(JS_CommonPath + "/JumpTo.aspx?tid=" + tid + "&sid=" + sid, "JumpWnd",  "width=712,height=482,top=100,left=200,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=yes");
    if( newwindow != null)
        newwindow.focus();
}

function TO_Jump(obj1,obj2)
{
    var cbs1 = GetCheckedBox(obj1,1);
    var cbs2 = GetCheckedBox(obj2,1);
    
    if(cbs1.length == 0)
    {
        alert(JS_Jump_PlsSelFromStep);
        return;
    }

    if(cbs2.length == 0)
    {
        alert(JS_Jump_PlsSelTagStep);
        return;
    }

    if(cbs2.length > 1)
    {
        alert(JS_Jump_PlsSelOneTagStepOnly);
        return;
    }
    
    var param = window.location.search    
    if( param.length != 0 )
    {
        param = param.substr(1);
        param += "&fids=" + GetCheckBoxIDList(cbs1) + "&tsns=" + GetCheckBoxIDList(cbs2);
        result = RFC("TaskOpt_Jump",param);
        
        if(result == null)
        {
            return;
        }
        else
        {
            alert(JS_Jump_Msg);
            CloseAndR();
        }
    }
}

function TO_RecedeRestart(obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    
    if(length == 0)
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }
    
    if(confirm(JS_RecedeRestart_Confirm) == false)
        return;
     
    var tids = GetTaskIDList(cbs).split(",");
 	var i;
 	for(i = 0 ; i < tids.length ; i++)
 	{
 	    var tid = tids[i];
 	     	    
        var result = RFC("TaskOpt_RecedeRestart","tid=" + tid);
        if(result == null) //failed
            break;
 	}
 	
 	if(i != 0)
 	{
        alert(String.Format(JS_RecedeRestart_Msg,i));
        document.execCommand("refresh",false);
 	}
}

function Public(obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    var param;
    var result;
    
    if(length == 0)
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }

    param = GetTaskIDList(cbs)
    var tids = param.split(",");
 	for(var i = 0 ; i < tids.length ; i++)
 	{
 	    var tid = tids[i];
 	    
        var result = RFC("TaskOpt_PermCheck","tid=" + tid + "&perm=Public");
        if (result == null) //failed
        {
            return;
        }
        if (result.length != 0)
        {
            alert(result);
            return;
        }
 	}
         
    var newwindow = window.open(JS_CommonPath + "/PublicSelMember.aspx?tids=" + param, "PublicSelMember", "width=712,height=482,top=100,left=200,toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=yes");
    if( newwindow != null)
        newwindow.focus();
}

function TO_Public(ids,obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    var result;
    
    if(length == 0)
    {
        alert(JS_SendTo_WarnNoSelect);
        return;
    }

    if(length > 1)
    {
        alert(JS_SendTo_WarnMultiSelect);
        return;
    }
    
    var tids = ids.split(',');
 	var i;
 	var account =  GetAccountList(cbs);
 	for(i = 0 ; i < tids.length ; i++)
 	{
 	    var tid = tids[i];
 	    
        result = RFC("TaskOpt_Public","tid=" + tid + "&to=" + account);
        if(result == null) //failed
            break;
 	}
 	
 	if(i != 0)
 	{
        alert(String.Format(JS_Public_Msg,i,result));
        window.close();
 	}
}

function TO_PickupShareTask(obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    
    if(length == 0)
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }
 
 	var sids = GetCheckBoxIDList(cbs).split(",");
 	var i;
 	for(i = 0 ; i < sids.length ; i++)
 	{
 	    var sid = sids[i];
 	    
        var result = RFC("TaskOpt_PickupShareTask","sid=" + sid);
        if(result == null) //failed
            break;
 	}
 	
 	if(i != 0)
 	{
        alert(String.Format(JS_ShareTaskGet_Msg,i));
        document.execCommand("refresh",false);
 	}
}

function TO_PutbackShareTask(obj)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    
    if(length == 0)
    {
        alert(JS_Common_PlsSelOneTaskAtLeast);
        return;
    }
    
    for(var i = 0 ; i < length ; i++)
    {
        var cb = cbs[i];
        var tr = GetParentTR(cb);
        if( !IsTRShare(tr) )
        {
            alert(JS_Share_IncludeNoShareItem);
            return;
        }
    }
 
 	var sids = GetCheckBoxIDList(cbs).split(",");
 	var i;
 	for(i = 0 ; i < sids.length ; i++)
 	{
 	    var sid = sids[i];
 	    
        var result = RFC("TaskOpt_PutbackShareTask","sid=" + sid);
        if(result == null) //failed
            break;
 	}
 	
 	if(i != 0)
 	{
        alert(String.Format(JS_ShareTaskPut_Msg,i));
        document.execCommand("refresh",false);
 	}
}

function List_CreateHeaderRow(table)
{
    var row = table.insertRow(-1);
    row.className = 'ListHeaderRow';
    return row;
}

function List_CreateItemRow(table)
{
    var row = table.insertRow(-1);
    row.className = 'ListItemRow';
    return row;
}

function List_CreateColumn(row,lastColumn)
{
    var cell;
    cell = row.insertCell(-1);

    if (!lastColumn)
    {
        var cell2;
        cell2 = row.insertCell(-1);
        cell2.innerHTML = '<td style="width:2px;"><img src="../Images/com_sp1.jpg" style="border-width:0px;" /></td>';
    }
    
    return cell;
}

function List_CreateCheckColumn(row,lastColumn)
{
    var cell;
    cell = row.insertCell(0);

    if (!lastColumn)
    {
        var cell2;
        cell2 = row.insertCell(1);
        cell2.innerHTML = '<td style="width:2px;"><img src="../Images/com_sp1.jpg" style="border-width:0px;" /></td>';
    }

    cell.innerHTML = '<input type="checkbox" onclick="checkall(this);"/>';
    
    return cell;
}

function List_CreateCell(row,lastColumn)
{
    var cell;
    cell = row.insertCell(-1);

    if (!lastColumn)
        cell.colSpan=2;
    
    return cell;
}

function List_CreateCheckCell(row,lastColumn)
{
    var cell;
    cell = row.insertCell(0);

    if (!lastColumn)
        cell.colSpan=2;

    cell.innerHTML = '<input type="checkbox" onclick="checkrow(this);"/>';
    
    return cell;
}

function DO_Delete(obj,type)
{
    var cbs = GetCheckedBox(obj,1);
    var length = cbs.length;
    var param;
    var result;
    
    if(length == 0)
    {
        alert(JS_Common_PlsSelOneDraftAtLeast);
        return;
    }
 
    if(confirm(JS_Delete_Confirm) == false)
        return;

  	var dids = GetCheckBoxIDList(cbs).split(",");	
 	var i;
 	for(i = 0 ; i < dids.length ; i++)
 	{
 	    var did = dids[i];
 	    
        var result = RFC("DraftOpt_Delete","did=" + did);
        if(result == null) //failed
            break;
 	}
 	
 	if(i != 0)
 	{
        alert(String.Format(JS_Delete_Msg,i));
        document.execCommand("refresh",false);
 	}
}

//---------------------------------------XForm
function OnItemCloned(eleSrc,eleNew)
{
alert(eleSrc.InnerHTML());
alert(eleNew.InnerHTML());

}