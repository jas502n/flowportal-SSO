// JScript 文件

function AttCom_GetAddButton(container)
{
    var eles = container.all;
    for(var i = 0 ; i < eles.length ; i++)
    {
        var ele = eles[i];
        if(ele.onclick)
            return ele;
    }
    
    return null;
}

function DisableAttach(idx,value)
{
    if(value != '0')
        return;

    var input = document.all(idx);
    var container = AttCom_GetAttachContainer(input);
    var containerTag = container.tagName.toLowerCase();
    var containerXType = container.xtype;
    
    container.allowdelete = '0';
    var addBtn = AttCom_GetAddButton(container);
    if (addBtn)
    {
       if(addBtn.tagName == 'INPUT')
           addBtn.disabled = true;
       else
           addBtn.style.display = 'none';
    }
}

function AttCom_GetAttachContainer(objTest)
{
    var parent = objTest;
    
    while(parent != null)
    {
        if(parent.id == "_sys_attach_container")
            return parent;
        
        parent = parent.parentElement;
    }
    
    return null;
}

function AttCom_GetMainInput(container)
{
    var eles = container.all.tags("INPUT");
    for(var i = 0 ; i < eles.length ; i++)
    {
        var ele = eles[i];
        if(ele.xtype == 'attachbind')
            return ele;
    }
    
    return null;
}

function AttCom_GetStorePath(container)
{
    var storePath = '';
    var storePathExpress = container.StorePathExpress;
    if(typeof(storePathExpress) == 'string' && storePathExpress.length != 0)
        storePath = XFormShell.XFormAgent.CalcExpressStr(container,storePathExpress).toString();
        
    if(storePath.length != 0 &&  container.StorePathBasicFolder == 'SystemAttachmentsRoot')
        storePath = '!' + storePath;
        
    return storePath;
}

function AttCom_IsFileExist(container,fileName)
{
    var attEles = document.getElementsByName('_sys_attach_item');
    var count = attEles.length;
    var storePath = AttCom_GetStorePath(container);

    for(var i = 0 ; i < count ; i++)
    {
        var attEle = attEles[i];
        
        //删除的附件则跳过
        if(attEle.itemStatus == 'del')
            continue;
    
        var storePathTmp = AttCom_GetStorePath(AttCom_GetAttachContainer(attEle));
        if(storePath == storePathTmp && attEle.dspValue == fileName)
            return true;
    }

    return false;
}

function XAttachments_AddAttach(obj)
{
    var path = Common_ShowSelFileDlg();
    
    if(path.length == 0)
        return;
    
    var table = Common_GetParentTable(obj);
    var fileName = Common_GetFileName(path);
    var rowcount = table.rows.length;
    
    //检查附件是否已存在
    if (AttCom_IsFileExist(table,fileName))
        return;
    
    //上传权限检查    
    var checkResult = XFormShell.XFormAgent.CheckAttachment(path,table.sourceIndex);
    if(checkResult.length != 0)
    {
        alert(checkResult);
        return;
    }
    
    var newRow = table.insertRow(rowcount-1);
    var cell1 = newRow.insertCell(0);
    var cell2 = newRow.insertCell(1);
    cell1.colSpan = 1;
    cell1.innerHTML = '<input type="text" id="_sys_attach_item" itemStatus="new" style="border-style:Groove;width:100%" dspValue="' + fileName + '" value="' + path + '"/>';
    cell2.colSpan = 1;
    cell2.innerHTML = '<input type="submit" value="' + XFormAttachTextDelete +'" onclick="XAttachments_DelLocalAttach(this);return false;" style="border-style:Groove;width:100%" />';
    
    obj.blur();
}

function XAttachments_DelLocalAttach(obj)
{
    var row = Common_GetParentTR(obj)
    var table = Common_GetParentTable(row);
    table.deleteRow(row.rowIndex);
}

function XAttachments_CheckChange(obj)
{
    var row = Common_GetParentTR(obj)

    if (obj.checked)
    {
        row.bgColor = "#f0f0f0";
        row.cells[0].children[0].itemStatus = 'del';
    }
    else
    {
        row.bgColor = "#ffffff";
        row.cells[0].children[0].itemStatus = 'org';
    }
    
    obj.blur();
}

function XAttachments_OnSaved(tid,draftGuid)
{
    XFormShell.XFormAgent.UpdateAttachmentsBindValue();
    
    var containers = document.getElementsByName('_sys_attach_container');
    for(var i = 0 ; i < containers.length ; i++)
    {
        var container = containers[i];
        container.draftid = draftGuid;
        
        var containerSType = container.AttachmentStorage;
        if (containerSType)
            containerSType = containerSType.toLowerCase();

        if (containerSType != 'database')
        {
            //获得绑定项
            var mainInput = AttCom_GetMainInput(container);
            if(mainInput == null)
                continue;
            
            SetAttachValue(mainInput.sourceIndex,mainInput.value);
        }
    }
}

function XMSNAttachments_AddAttach(obj)
{
    var path = Common_ShowSelFileDlg();
    
    if(path.length == 0)
        return;
        
    var container = AttCom_GetAttachContainer(obj);
    var fileName = Common_GetFileName(path);
    
    //检查附件是否已存在
    if (AttCom_IsFileExist(container,fileName))
        return;
    
    //上传权限检查    
    var checkResult = XFormShell.XFormAgent.CheckAttachment(path,container.sourceIndex);
    if(checkResult.length != 0)
    {
        alert(checkResult);
        return;
    }    
    
    var mapvalues = 'path=' + path + ';file=' + fileName;
    obj.mapvalues = mapvalues;  
    obj.fireEvent("ondataavailable");
}

function XImageAttachment_AddAttach(obj)
{
    var path = Common_ShowSelFileDlg();
    
    if (path.length == 0)
        return;
        
	if (!path.match(/.jpg|.gif|.png|.bmp/i))
	{
		alert(XFormImageAttachmentInvalidImageFile);
		return;
	}
   
    var container = AttCom_GetAttachContainer(obj);
    var fileName = Common_GetFileName(path);
    
    //上传权限检查    
    var checkResult = XFormShell.XFormAgent.CheckAttachment(path,container.sourceIndex);
    if(checkResult.length != 0)
    {
        alert(checkResult);
        return;
    }
         
    var mainInput = AttCom_GetMainInput(container);
    if (mainInput == null)
        return;
        
    var base64 = XFormShell.XFormAgent.ReadFileBase64(path);
    if (!base64)
        return;
        
    PreViewEmbedImage(container,base64);
    mainInput.value = base64;
    XFormShell.XFormAgent.OnChange(mainInput);
 }

function XMSNAttachments_ToggleDelete(obj)
{
    var container = AttCom_GetAttachContainer(obj);
    var li = obj.parentElement;
    if(li.itemStatus == 'del')
    {
        li.itemStatus = 'org';
        li.className = 'BlockItemOrg';
        obj.src = container.deleteImgUrl;
    }
    else
    {
        li.itemStatus = 'del';
        li.className = 'BlockItemDel';
        obj.src = container.reuseImgUrl;
    }
}

function UploadNewAddedAttachments(guid)
{
    var attContainers = document.getElementsByName('_sys_attach_container');
    var attEles = document.getElementsByName('_sys_attach_item');
    var count = attEles.length;
 
    for(var i = 0 ; i < attContainers.length ; i++)
    {
        var attContainer = attContainers[i];
         
        //获得存储路径
        var storePath = AttCom_GetStorePath(attContainer);
            
        for(var j = 0 ; j < count ; j++)
        {
            var attEle = attEles[j];
            
            //非新加附件则跳过
            if(attEle.itemStatus != 'new')
                continue;
            
            //判断是否本上传控件的子项目
            if(!attContainer.contains(attEle))
                continue;
                
            var attEleTag = attEle.tagName.toLowerCase();
            
            //获得新上传文件全名
            var fileName = '';
            if(attEleTag == 'input')
                fileName = attEle.value;
            else
                fileName = attEle.realValue;
            
            //没有选择文件
            if(fileName.length == 0)
                continue;
                
            var err = XFormShell.XFormAgent.UploadFile(guid,storePath,fileName);
            if(err.length != 0)
            {
                alert(err);
                return false;
            }
        }
    }
    
    return true;
}

function GetDeletedAttachments()
{
    var attEles = document.getElementsByName('_sys_attach_item');
    var deletedFiles = new Array();
    var count = attEles.length;

    for(var i = 0 ; i < count ; i++)
    {
        var attEle = attEles[i];
        
        //非删除附件则跳过
        if(attEle.itemStatus != 'del')
            continue;
        
        var fileName = attEle.realValue;
        
        if(fileName.length != 0)
            deletedFiles.push(fileName);
    }
    
    var fileList = deletedFiles.toString().replace(/,/g,';');
    return fileList;
}

function InitAttachments()
{
    var containers = document.getElementsByName('_sys_attach_container');

    for(var i = 0 ; i < containers.length ; i++)
    {
        var container = containers[i];
        
        //获得绑定项
        var mainInput = AttCom_GetMainInput(container);
        if(mainInput == null)
            continue;
            
        //绑定了
        if(typeof(mainInput.XDataBind) == 'string' && mainInput.XDataBind.length != 0)
            continue;
        
        //获得存储路径
        var storePath = AttCom_GetStorePath(container);
 
        var attachFileList = XFormShell.XFormAgent.GetAttachments(container.taskid,container.draftid,storePath);
        SetAttachValue(mainInput.sourceIndex,attachFileList);
    }
}

function SetAttachValue(idx,value)
{
    var input = document.all(idx);
    var container = AttCom_GetAttachContainer(input);
    var containerTag = container.tagName.toLowerCase();
    var containerXType = container.xtype;
    var containerSType = container.AttachmentStorage;
    if (containerSType)
        containerSType = containerSType.toLowerCase();
    var files = value.split(";");
    var urlBase = container.downloadpath + '&tid=' + container.taskid + '&did=' + container.draftid;
    var allowRead = container.allowread == '0' ? false:true;
    var allowDelete = container.allowdelete == '0' ? false:true;

    if(containerTag == 'div')
    {
        if(containerXType == 'ImageAttachment')
        {
            if(containerSType == 'database')
            {
                PreViewEmbedImage(container,value);
            }
            else
            {
                var file = value;
                var oPnl = container.children[1];
                if(file.length != 0)
                {
                    //获得存储路径
                    var storePath = AttCom_GetStorePath(container);      
                    if(storePath.length != 0)
                        urlBase += '&storepath=' + AttCom_UrlEncode(storePath);
                    var url = urlBase + '&file=' + AttCom_UrlEncode(file);

                    oPnl.realValue = Common_CombinPath(storePath,file);
                    oPnl.dspValue = file;
                    oPnl.itemStatus = 'org';

                    oPnl.children[0].src = url;
                    oPnl.children[0].style.display = '';
                }
                else
                {
                    oPnl.children[0].style.display = 'none';
                }
            }
        }
        else
        {
            var eleUL = container.children[1];
            
            //删除原有附件
            var lis = eleUL.children;
            for(var i = lis.length - 1 ; i >= 0  ; i--)
            {
                var li = lis[i];
                if (typeof(li.dspValue) != 'undefined')
                   eleUL.removeChild(li); 
            }

            //获得插入位置
            var eleAddButton = eleUL.children[0];
            var deleteImgUrl = container.deleteImgUrl;
     
            //获得存储路径
            var storePath = AttCom_GetStorePath(container);
                
            if(storePath.length != 0)
                urlBase += '&storepath=' + AttCom_UrlEncode(storePath);    
                    
            for(var i = 0 ; i < files.length ; i++)
            {
                var file = files[i];
                
                //忽略空文件名
                if(file.length == 0)
                    continue;
                
                var fileLink;
                if(allowRead)
                {
                    var url = urlBase + '&file=' + AttCom_UrlEncode(file);
                    fileLink = "<a href='" + url + "'>" + file + "</a>";
                }
                else
                {
                    fileLink = file;
                }
                
                var deleteLink;
                if(allowDelete)
                {
                    deleteLink = '<img alt="delete" border="0" class="CloseLi" onclick="XMSNAttachments_ToggleDelete(this);" src="' + deleteImgUrl + '" title="" />';
                }
                else
                {
                    deleteLink = '';
                }
                
                var new_element = document.createElement('li');
                new_element.id = '_sys_attach_item';
                new_element.realValue = Common_CombinPath(storePath,file);
                new_element.dspValue = file;
                new_element.itemStatus = 'org';
                new_element.className = 'BlockItemOrg';
                
                var liHtml = '<span class="BlockName">' + fileLink + '</span>' + deleteLink;
                if (i != 0)
                    liHtml = ';' + liHtml; 

                new_element.innerHTML = liHtml;
                

                if(typeof(eleAddButton) != 'undefined')
                    eleUL.insertBefore(new_element, eleAddButton);
                else
                    eleUL.appendChild(new_element);
            }
        }
    }   
    if(containerTag == 'table')
    {
        //删除原有附件
        for(var i = container.rows.length - 2 ; i >= 1  ; i--)
            container.deleteRow(i);
    
        //获得存储路径
        var storePath = AttCom_GetStorePath(container);
            
        if(storePath.length != 0)
            urlBase += '&storepath=' + AttCom_UrlEncode(storePath);    
        
        for(var i = 0 ; i < files.length ; i++)
        {
            var file = files[i];
            
            //忽略空文件名
            if(file.length == 0)
                continue;
            
            var new_element = document.createElement('a');
            new_element.id = '_sys_attach_item';
            new_element.realValue = Common_CombinPath(storePath,file);
            new_element.dspValue = file;
            new_element.itemStatus = 'org';
            new_element.innerText = file;
            if(allowRead)
            {
                var url = urlBase + '&file=' + AttCom_UrlEncode(file);
                new_element.href = url;
            }
            
            var deleteLink;
            if(allowDelete)
            {
                deleteLink = '<input type="checkbox" onclick="XAttachments_CheckChange(this);" />';
            }
            else
            {
                deleteLink = '<input type="checkbox" disabled/>';
            }
            
            var rowcount = container.rows.length;
            var newRow = container.insertRow(rowcount-1);
            var cell1 = newRow.insertCell(0);
            var cell2 = newRow.insertCell(1);
            cell1.colSpan = 1;
            cell1.appendChild(new_element);
            cell2.colSpan = 1;
            cell2.style.textAlign = 'center';
            cell2.innerHTML = deleteLink;
        }    
    }
}

function PreViewEmbedImage(container,value)
{    
    var oPnl = container.children[1];
    while (oPnl && oPnl.tagName != 'DIV')
        oPnl = oPnl.children[0];
    
    if (!oPnl)
        return;
    
    try
    {
        if (value.length != 0)
        {
            var filePath = XFormShell.XFormAgent.SaveBase64ImageAsTempFile(value);
            oPnl.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = filePath;
        }
        else
        {
            oPnl.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = '';
        }
    }
    catch(exp)
    {
    }
}

function AttCom_UrlEncode(str)
{
   var ret=""; 
   var strSpecial="!\"#$%&'()*+,/:;<=>?[]^`{|}~%"; 
   
   for(var i=0;i<str.length;i++)
   { 
       var chr = str.charAt(i);
       var code = chr.charCodeAt(0);
       var c = code.toString(16); 
       
       if(code > 0x7f)
       { 
           ret+="%u"+c; 
       }
       else
       { 
           if(chr==" ") 
               ret+="+"; 
           else if(strSpecial.indexOf(chr)!=-1) 
               ret+="%"+c; 
           else 
               ret+=chr; 
       }
   }
   return ret; 
}