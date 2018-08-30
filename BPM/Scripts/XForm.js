// JScript 文件
var XFormFuncHook = false;

function XValidatorOnLoad()
{
    if (typeof(Page_Validators) == "undefined")
        return;

    var i, val;
    for (i = 0; i < Page_Validators.length; i++)
    {
        val = Page_Validators[i];
        
        if (typeof(val.evaluationfunction) == "string")
            eval("val.evaluationfunction = " + val.evaluationfunction + ";");
            
        if (typeof(val.isvalid) == "string")
        {
            if (val.isvalid == "False")
            {
                val.isvalid = false;
                Page_IsValid = false;
            }
            else
            {
                val.isvalid = true;
            }
        }
        else
        {
            val.isvalid = true;
        }
        
        if (typeof(val.enabled) == "string")
            val.enabled = (val.enabled != "False");
    }
    Page_ValidationActive = true;
}

function XFormShellInitCheck()
{
    if(typeof(XFormShell) != 'object')
        return;
    
    if(typeof(XFormShell.LanguageLCID) == 'string')
        return;

    if(confirm(XFormShellInstallFailWarn) == true)
        window.location.href = "../ClientSupport/ManualInstall.aspx";
}

function XFormValidatorSubmitValidate(actname,validationGroup)
{  
    XFormShell.XFormAgent.UpdateAttachmentsBindValue();
 
    if(!XFormShell.XFormAgent.SubmitValidate())
        return false;
    
    if(typeof(OnSubmit) != "undefined")
    {
        if(eval("OnSubmit('"+actname+"','"+validationGroup+"')") != true)
            return false;
    }
    
    if(!XFormFuncHook && typeof(ValidatorGetValue) != "undefined")
    {
        XFormFuncHook = true;
        ValidatorGetValue = function(idx)
        {
            var control;
            control = document.all(idx);
            
            if (typeof(control.value) == 'string')
            {
                var retValue = control.value;                              
                if(control.tagName == 'INPUT' && control.type == 'text')
                {
                    var fmtType = '';
                    var fmtPfx = '';
                    
                    var format = control.getAttribute('format');
                    if(typeof(format) == 'string')
                    {
                        var values = format.split(';');
                        for(var i = 0 ; i < values.length; i++)
                        {
                            var kvItem = values[i].split(':');
                            if(kvItem.length == 2)
                            {
                                var propName = kvItem[0].toLowerCase();
                                if(propName == 'type')
                                    fmtType = kvItem[1].toLowerCase();
                                if(propName == 'pfx')
                                    fmtPfx = kvItem[1].toLowerCase();
                            }
                        }
                        
                        if (fmtType == 'currency')
                        {
                            retValue = retValue.replace(/,/g,'');
                            if(fmtPfx.length != 0)
                                retValue = retValue.replace(fmtPfx,'');
                        }
                    }
                }
 
                return retValue;
            }
            
            return ValidatorGetValueRecursive(control);
        }
    }

    if(typeof(Page_Validators) != "undefined" && Page_Validators != null)
    {
        var i;
        for (i = 0; i < Page_Validators.length; i++)
        {
            if (!XFormValidatorItemValidate(Page_Validators[i], validationGroup))
                return false;
        }
    }
    
    return true;
}

function XFormValidatorItemValidate(val, validationGroup)
{
    if ((typeof(val.enabled) == "undefined" || val.enabled == true) && (typeof(val.disabled) == "undefined" || val.disabled == false) && IsXFormValidationGroupMatch(val, validationGroup))
    {
        if (typeof(val.evaluationfunction) == "function")
        {
            var controltovalidate = val.controltovalidate;
            try
            {
                var compexp;
                var eles = GetAllElementsWithID(val.controltovalidate);
                for (i = 0 ; i < eles.length; i++)
                {
                    var ele = eles[i];
                    val.controltovalidate = ele.sourceIndex;
                    
                    compexp = val.DisableExpress;
                    if(typeof(compexp) == 'string' && compexp.length != 0)
                    {
                        if (XFormShell.XFormAgent.CalcExpress(ele,compexp))
                            continue;
                    }
                    
                    compexp = val.ValueToCompareExpress;
                    if(typeof(compexp) == 'string' && compexp.length != 0)
                        val.valuetocompare = XFormShell.XFormAgent.CalcExpress(ele,compexp).toString();

                    compexp = val.MaxValueExpress;
                    if(typeof(compexp) == 'string' && compexp.length != 0)
                        val.maximumvalue = XFormShell.XFormAgent.CalcExpress(ele,compexp).toString();

                    compexp = val.MinValueExpress;
                    if(typeof(compexp) == 'string' && compexp.length != 0)
                        val.minimumvalue = XFormShell.XFormAgent.CalcExpress(ele,compexp).toString();
                        
                    var isvalid = val.evaluationfunction(val);
                    
                    if (!isvalid)
                    {
                        ReportValidateError(ele.sourceIndex,val.errormessage)
                        return false;
                    }
                }
            }
            catch(exp)
            {
            }
            finally
            {
                val.controltovalidate = controltovalidate;
            }
        }
    }
    return true;
}

function ReportValidateError(idx,errormessage)
{
    var ele = document.all(idx);

    if(typeof(ele.scrollIntoView) != 'undefined')
        ele.scrollIntoView();

    var oldColor = ele.style.backgroundColor;
    ele.style.backgroundColor = "red";
    alert(errormessage);
    ele.style.backgroundColor = oldColor;

    if(typeof(ele.select) != 'undefined')
        ele.select();
}

function IsXFormValidationGroupMatch(control, validationGroup)
{
    if ((typeof(validationGroup) == "undefined") || (validationGroup == null))
        return true;
        
    var controlGroup = "";
    if (typeof(control.validationGroup) == "string")
        controlGroup = control.validationGroup;
    
    var validationGroups = validationGroup.split(";");
    for(var i = 0 ; i < validationGroups.length ; i++)
    {
        if(controlGroup == validationGroups[i])
            return true;
    }
    
    return false;
}

function XFormSubmit(fireEle,actname,validationGroup,postModel,confirmType,promptMessage)
{
    if (confirmType == 'EnterPassword')
    {
        XFormSubmitCfmPWD(fireEle,actname,validationGroup,postModel);
        return;
    }    

    if (confirmType == 'Prompt')
    {
        if (promptMessage.length == 0)
            promptMessage = 'Are you sure to ' + actname + '?';
            
        if (confirm(promptMessage) == false)
            return;
    }
    
    if (XFormValidatorSubmitValidate(actname,validationGroup))
    {
        if (document.XFormShell.XFormAgent.DoAction(fireEle,actname))
        {
            OnXFormSubmited(postModel);
        }
    }
}

function XFormIndicateSubmit(fireEle)
{
    if (document.XFormShell.XFormAgent.IndicateSubmit(fireEle))
    {
        OnXFormSubmited(false);
    }
}

function XFormResign(fireEle,pid)
{
    if (document.XFormShell.XFormAgent.Resign(fireEle,pid))
    {
        OnXFormSubmited(false);
    }
}

function XFormSubmitSysAction(fireEle,actname,validationGroup,tid,pid)
{
    if(XFormValidatorSubmitValidate(actname,validationGroup) == false)
        return;
    
    if(actname == 'Reject')
    {
        if(confirm(JS_RejectCfm) == false)
            return;
            
        if(SaveForm(fireEle) == false)
            return;
            
        if(RFC("TaskOpt_Reject","tid=" + tid) == null)
            return;
            
        document.XFormShell.XFormAgent.ReleaseAgent(); 
        CloseForm(window,true);
    }
    if(actname == 'RecedeRestart')
    {
        if(confirm(JS_RecedeRestartCfm) == false)
            return;
            
        if(SaveForm(fireEle) == false)
            return;
            
        if(RFC("TaskOpt_RecedeRestart","tid=" + tid) == null)
            return;
            
        document.XFormShell.XFormAgent.ReleaseAgent(); 
        CloseForm(window,true);
    }
    if(actname == 'RecedeBack')
    {
        if(SaveForm(fireEle) == false)
            return;
            
        window.location.href = "../Common/RecedeBackSelStep.aspx?pid=" + pid;
    }
    if(actname == 'DirectSend')
    {            
        if(SaveForm(fireEle) == false)
            return;
            
        var rv = RFC("TaskOpt_DirectSend","pid=" + pid);
        if(rv == null)
            return;
        
        document.XFormShell.XFormAgent.ReleaseAgent();  
        var message = String.Format(JS_DirectSendMsg,rv);
        alert(message);
        CloseForm(window,true);
    }
    if(actname == 'Save')
    {
        if(SaveForm(fireEle) == false)
            return;
            
        alert(JS_SaveMsg);
        OnFormSaved(tid,'');
    }
}

function SaveForm(fireEle)
{
    return document.XFormShell.XFormAgent.Save(fireEle);
}

function SaveAsDraft(fireEle,processName)
{
    var draftGuid = document.XFormShell.XFormAgent.SaveAsDraft(fireEle);
    if(draftGuid.length != 0)
    {
        fireEle.onclick = function() {SaveDraft(this,draftGuid);};
        alert(JS_SaveMsg);        
        OnFormSaved('',draftGuid);
    }
}

function SaveDraft(fireEle,draftGuid)
{
    var rv = document.XFormShell.XFormAgent.SaveDraft(fireEle);
    if(rv)
    {
        alert(JS_SaveMsg);
        OnFormSaved('',draftGuid);
    }
    return rv;
}

function XFormSignAndPost(uid,pwd,acttype,actname)
{
    var result;
    result = RFC("authenticate","uid=" + uid + "&pwd=" + pwd);
    if(result == 0)
    {
        alert(String.Format(JS_Sign_IncorrentPwd,uid));
        document.forms[0]._edtPwd.focus();
        return;
    }
    else
    {
        window.opener.focus();
        if(window.opener.document.XFormShell.XFormAgent.DoAction(actname))
        {
            if(window.opener.opener != null)
                window.opener.opener.document.execCommand("refresh",false);

            window.opener.close();
            window.close();
        }
        else
        {
            window.focus();
        }
    }
}

function XFormOnChange(obj)
{
    document.XFormShell.XFormAgent.OnChange(obj);
}

function XFormPrint(param,highlight)
{
    var count = document.all.length;
    
    try
    {
        for(var i = 0 ; i < count ; i++)
        {
            var ele = document.all[i];
            
            if (highlight)
            {
                if (ele.disabled)
                {
                    ele.disabled = false;
                    ele.PrintEnabled = true;
                }
            }
            if (ele.PrintOut == 'False')
            {
                ele.style.visibility = 'hidden';
                ele.PrintHidden = true;
            }
        }
    
        if(typeof(OnBeforePrint) == 'function')
            OnBeforePrint();
        
        document.XFormShell.XFormAgent.PrintPreview(param);
    }
    finally
    {   
        for(var i = 0 ; i < count ; i++)
        {
            var ele = document.all[i];
            
            if (highlight)
            {
                if (ele.PrintEnabled)
                {
                    ele.disabled = true;
                    ele.PrintEnabled = false;
                }
            }
            if(ele.PrintHidden)
            {
                ele.style.visibility = 'visible';
                ele.PrintHidden = false;
            }
        }
        
        if(typeof(OnAfterPrint) == 'function')
            OnAfterPrint();
    }
}

function GetAllElementsWithID(id)
{
    //用类似document.all[id]的方法有时不对，比如有时会返回Select的所有Option，所以以下代码不要轻易修改
    var array = new Array();
    var controls = document.all[id];
    
    if(typeof(controls) != 'undefined')
    {
        if(typeof(controls.tagName) != 'undefined') //是一个HTML元素
        {
            array.push(controls);
        }
        else //是一个集合
        {
            for (i = 0 ; i < controls.length; i++)
            {
                array.push(controls[i]);
            }
        }
    }
    
    return array;
}

function SetOwnerBtnValue(idx,mapvalue)
{
    var owner = window.opener.document.all(idx);

    window.close();
    
    owner.mapvalues = mapvalue;
    owner.fireEvent("ondataavailable");
}

function CloseForm(win,refresh)
{
    if(refresh && win.opener != null)
        win.opener.document.execCommand("refresh",false);
        
    win.close();
}

function OnFormSaved(tid,draftGuid)
{
    if(typeof(XAttachments_OnSaved) == 'function')
        XAttachments_OnSaved(tid,draftGuid);
}

function OnXFormSubmited(postModel)
{
    if(postModel)
    {
        window.close();
    }
    else
    {
        if(window.opener != null)
            window.opener.document.execCommand("refresh",false);

        window.close();
    }
    //xyq999
    //alert(top.frames[0].location.href);
    //top.frames[0].location.href='../Test/Frame_a.htm';
    //window.location.href='../Test/Frame_a.htm';
    //document.write('<a href=http://www.sina.com.cn>aaa</a>');
}

function ToggleDynSign(obj)
{
    var table = Common_GetParentTable(Common_GetParentTable(obj).parentElement);
    var signTable = table.rows[0].cells[0].children[0];
    if(signTable.style.display == 'none')
    {
        obj.form._sys_consign_chk.checked = true;
        signTable.style.display = '';
        obj.value = obj.StopText;
    }
    else
    {
        obj.form._sys_consign_chk.checked = false;
        signTable.style.display = 'none';
        obj.value = obj.StartText;
    }
}

function StringListDataValid(obj,xtype,id,deleteImgUrl)
{
    var values = obj.mapvalues.split(";");
    var value1;
    var value2;
    for(var i = 0 ; i < values.length && i < 2; i++)
    {
        var kvItem = values[i].split("=");
        if(kvItem.length == 2)
        {
            if (i==0)
                value1 = kvItem[1];
            if (i==1)
                value2 = kvItem[1];
        }
    }
    var dspValue;
    
    if (xtype == 'user')
    {
        if(typeof(value2) == 'string' && value2.length !=0)
            dspValue = value1 + '(' + value2 + ')';
        else
            dspValue = value1;
    }
    else if(xtype == 'file')
    {
        dspValue = "<a href='" + value1 + "'>" + value2 + "</a>";
    }
    else
    {
        dspValue = value1;
    }

    var ul = obj.parentElement;
    var lis = ul.children;
    for(var j = 0 ; j < lis.length - 1 ; j++)
    {
        var li = lis[j];
        
        if(xtype == 'file')
        {
            if (li.itemStatus == 'del')
                continue;
                
            if (li.dspValue == value2)
                return;
        }
        else
        {
            if (li.realValue == value1)
                return;
        }
    }
    var new_element = document.createElement('li');
    if(id.length != '')
    new_element.id = id;
    new_element.className = 'BlockItem';
    new_element.realValue = value1;
    new_element.dspValue = value2;
    new_element.itemStatus = 'new';
    new_element.innerHTML = '<span class="BlockName">' + dspValue + '</span><img alt="delete" border="0" class="CloseLi" onclick="parentElement.parentElement.removeChild(this.parentElement);" src="' + deleteImgUrl + '" title="" />';
    ul.insertBefore(new_element, obj);
}

function XFormApplicationSave(fireEle,idx,validationGroup,closebehavior)
{
    if (XFormValidatorSubmitValidate("Save",validationGroup))
    {
        if (document.XFormShell.XFormAgent.SaveFormApplication(fireEle))
        {
            var key = document.XFormShell.XFormAgent.GetKey();
            var sn = document.XFormShell.XFormAgent.GetSerialNum();
 
            window.close();

            if(closebehavior == 'SetValueAndClose' && typeof(idx)=='string' && idx.length != 0)
            {
                var link = window.opener.document.all(idx);
                var input = window.opener.document.all(idx-1);

                input.value = key;
                input.mapvalues = 'Key=' + key + ';SN=' + sn;
                input.fireEvent("ondataavailable");
            }            
        }
    }
}

function ActiveProcessButtons()
{
    var containers = document.getElementsByName('_sys_btns_container');
 
    for(var i = 0 ; i < containers.length ; i++)
    {
        var container = containers[i];
     
        var eles = container.all.tags("INPUT");
        for(var i = 0 ; i < eles.length ; i++)
        {
            var ele = eles[i];
            if(ele.type == 'button' && ele.EnableAfterLoad == 'true')
                ele.disabled = false;
        }
    }
}

function OnChildFormLinkValueChanged(idx,value)
{
    var link = document.all(idx+1);
    if(link.TextFormat == '#key')
    {
        link.innerText = value;
    }
}

function OnHistoryFormLinkValueChanged(idx,value)
{
    var edit = document.all(idx);
    
    var result = '';
    if (typeof(value) == 'string' && value != '')
    {
        var result = RFC("CreateToken","tid=" + value);
        if (result == null) //failed
            result = '';
    }
    
    edit.token = result;
}


//一定要用background-image不能用IMG，否则，当菜单在窗口外时，表单会跳转到图片，同时用户按住IMG移动到IE边缘，表单也会跳转
function CreateGridHOverEleR(baseUrl)
{
    var div = document.createElement("<div style='position:absolute;' id='__sys_grid_btn_r__' PrintOut='False'></div>");
    div.innerHTML = "<a style='width:13px;height:22px;background-image:url("+baseUrl+"Images/hoverbtn_gridr.gif)' />";
    div = document.body.appendChild(div);
    return div;
}

function CreateGridHOverEleL(baseUrl)
{
    var div = document.createElement("<div style='position:absolute;' id='__sys_grid_btn_l__' PrintOut='False'></div>");
    div.innerHTML = "<a style='width:13px;height:22px;background-image:url("+baseUrl+"Images/hoverbtn_gridl.gif)' />";
    div = document.body.appendChild(div);
    return div;
}

function CreateBlockHOverEleR(baseUrl)
{
    var div = document.createElement("<div style='position:absolute;' id='__sys_block_btn_r__' PrintOut='False'></div>");
    div.innerHTML = "<a style='width:13px;height:22px;background-image:url("+baseUrl+"Images/hoverbtn_gridr.gif)' />";
    div = document.body.appendChild(div);
    return div;
}

function CreateBlockHOverEleL(baseUrl)
{
    var div = document.createElement("<div style='position:absolute;' id='__sys_block_btn_l__' PrintOut='False'></div>");
    div.innerHTML = "<a style='width:13px;height:22px;background-image:url("+baseUrl+"Images/hoverbtn_gridl.gif)' />";
    div = document.body.appendChild(div);
    return div;
}

var __submit_fire_ele;
function XFormSubmitCfmPWD(fireEle,actname,validationGroup,postModel)
{
    __submit_fire_ele = fireEle;
    var msg = "";
    msg += "<span style='position:absolute;left:34px;top:14px;width:190px'>" + JS_CfmAuth_Message + "</span>";
    msg += "<input type='password' id='xformsubmitcmfpwd_pwdinp' style='position:absolute;left:35px;top:30px;width:168px'>";
    msg += "<input type='submit' style='position:absolute;left:34px;top:55px;height:22px;width:80px' value='" + actname + "' onclick=XFormSubmitChkPWD(this.value,'"+actname+"','"+validationGroup+"',"+postModel+")>";
    
    showDialog(JS_CfmAuth_Caption,msg,'subcfmpwd');
    setTimeout("XFormSubmitSetFocus()",200);
}

function XFormSubmitSetFocus()
{
    var edit = document.getElementById('xformsubmitcmfpwd_pwdinp');
    edit.focus();
}

function XFormSubmitChkPWD(password,actname,validationGroup,postModel)
{
    var edit = document.getElementById('xformsubmitcmfpwd_pwdinp');
    var pwd = edit.value;
    
    var result;
    result = RFC("AuthenticateStepProcess","pid=" + JS_Environment_StepID + "&pwd=" + pwd);
    if(result == 0)
    {
        alert(JS_CfmAuth_IncorrentPwd);
        edit.focus();
        return;
    }
    else
    {
        hideDialog(true);
        XFormSubmit(__submit_fire_ele,actname,validationGroup,postModel,'None','');
    }
}