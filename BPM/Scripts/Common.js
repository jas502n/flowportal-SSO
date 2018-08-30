// JScript 文件

Date.prototype.Format = function(formatStr) 
{ 
    var str = formatStr;

    str=str.replace(/yyyy|YYYY/,this.getFullYear()); 
    str=str.replace(/yy|YY/,(this.getYear() % 100)>9?(this.getYear() % 100).toString():"0" + (this.getYear() % 100));

    var month = 
    str=str.replace(/MM/,(this.getMonth()+1)>9?(this.getMonth()+1).toString():"0" + (this.getMonth()+1)); 
    str=str.replace(/M/g,this.getMonth()+1);


    str=str.replace(/dd|DD/,this.getDate()>9?this.getDate().toString():"0" + this.getDate()); 
    str=str.replace(/d|D/g,this.getDate());


    str=str.replace(/hh|HH/,this.getHours()>9?this.getHours().toString():"0" + this.getHours()); 
    str=str.replace(/h|H/g,this.getHours());


    str=str.replace(/mm/,this.getMinutes()>9?this.getMinutes().toString():"0" + this.getMinutes()); 
    str=str.replace(/m/g,this.getMinutes());


    str=str.replace(/ss|SS/,this.getSeconds()>9?this.getSeconds().toString():"0" + this.getSeconds()); 
    str=str.replace(/s|S/g,this.getSeconds());

    return str; 
}

Date.prototype.ToStringL = function()
{
    return this.Format("yyyy-MM-dd HH:mm:ss");
}

//function DateDiff(date1,date2)
//{
//    var result = RFC("UserFunc_DateDiff","date1=" + date1 + "&date2=" + date2);
//    return result;
//}

function Common_GetParentTable(obj)
{
    var parent = obj;
    
    while(parent.tagName != "TABLE")
    {
        parent = parent.parentElement;
    }
    
    return parent;
}

function Common_GetParentTR(obj)
{
    var parent = obj;
    
    while(parent.tagName != "TR")
    {
        parent = parent.parentElement;
    }
    
    return parent;
}

function Common_GetParentTD(obj)
{
    var parent = obj;
    
    while(parent.tagName != "TD")
    {
        parent = parent.parentElement;    
    }
    
    return parent;
}

function Common_ShowSelFileDlg()
{    
    var newElement = document.createElement('input');
    newElement.type = "file";
    newElement.style.position = "absolute";
    newElement.style.left = -100;
    newElement.style.top = -100;
    newElement.style.width = 0;
    newElement.style.height = 0;
    document.forms[0].appendChild(newElement);
    newElement.click();

    newElement.select();
	var value = document.selection.createRange().text;
    document.forms[0].removeChild(newElement);
    return value;
 }

function Common_GetFileName(path)
{
    if(!path)
        return '';
        
    var index = path.lastIndexOf('\\');
    var fileName = path.substr(index+1);
    return fileName;
}

function Common_CombinPath(path,fileName)
{
    if (path.length == 0)
        return fileName;
    
    var pathEndChar = path.charAt(path.length-1);
    if(pathEndChar == '\\' || pathEndChar == '/')
        return path + fileName;
    else
        return path + '\\' + fileName;
}

// global variables //
var TIMER = 5;
var SPEED = 20;
var WRAPPER = 'content';

// calculate the current window width //
function pageWidth() {
  return window.innerWidth != null ? window.innerWidth : document.documentElement && document.documentElement.clientWidth ? document.documentElement.clientWidth : document.body != null ? document.body.clientWidth : null;
}

function offsetWidth() {
  return window.innerWidth != null ? window.innerWidth : document.documentElement && document.documentElement.offsetWidth ? document.documentElement.offsetWidth : document.body != null ? document.body.offsetWidth : null;
}

// calculate the current window height //
function pageHeight() {
  return window.innerHeight != null? window.innerHeight : document.documentElement && document.documentElement.clientHeight ? document.documentElement.clientHeight : document.body != null? document.body.clientHeight : null;
}

// calculate the current window vertical offset //
function topPosition() {
  return typeof window.pageYOffset != 'undefined' ? window.pageYOffset : document.documentElement && document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop ? document.body.scrollTop : 0;
}

// calculate the position starting at the left of the window //
function leftPosition() {
  return typeof window.pageXOffset != 'undefined' ? window.pageXOffset : document.documentElement && document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft ? document.body.scrollLeft : 0;
}

// build/show the dialog box, populate the data and call the fadeDialog function //
function showDialog(title,message,type,autohide) {
  if(!type) {
    type = 'error';
  }
  var dialog;
  var dialogheader;
  var dialogclose;
  var dialogtitle;
  var dialogcontent;
  var dialogmask;
  var iframe;
  if(!document.getElementById('dialog')) {
    dialog = document.createElement('div');
    dialog.id = 'dialog';
    iframe = document.createElement('iframe');
    iframe.id = 'dialog-iframe';
    iframe.style.left = 0;
    iframe.style.top = 0;
    iframe.frameBorder = 0;
    iframe.style.position = 'absolute';
    dialogheader = document.createElement('div');
    dialogheader.id = 'dialog-header';
    dialogtitle = document.createElement('div');
    dialogtitle.id = 'dialog-title';
    dialogclose = document.createElement('div');
    dialogclose.id = 'dialog-close'
    dialogcontent = document.createElement('div');
    dialogcontent.id = 'dialog-content';
    dialogmask = document.createElement('div');
    dialogmask.id = 'dialog-mask';
    document.body.appendChild(dialogmask);
    document.body.appendChild(dialog);
    dialog.appendChild(iframe);
    dialog.appendChild(dialogheader);
    dialogheader.appendChild(dialogtitle);
    dialogheader.appendChild(dialogclose);
    dialog.appendChild(dialogcontent);;
    dialogclose.setAttribute('onclick','hideDialog()');
    dialogclose.onclick = hideDialog;
  } else {
    dialog = document.getElementById('dialog');
    iframe = document.getElementById('dialog-iframe');
    dialogheader = document.getElementById('dialog-header');
    dialogtitle = document.getElementById('dialog-title');
    dialogclose = document.getElementById('dialog-close');
    dialogcontent = document.getElementById('dialog-content');
    dialogmask = document.getElementById('dialog-mask');
    dialogmask.style.visibility = "visible";
    dialog.style.visibility = "visible";
  }
  dialog.style.opacity = .00;
  dialog.style.filter = 'alpha(opacity=0)';
  dialog.alpha = 0;
  
  dialog.className = type + "frame";
  dialogheader.className = type + "header";
  dialogcontent.className = type;

  var width = pageWidth();
  var height = pageHeight();
  var left = leftPosition();
  var top = topPosition();
  var dialogwidth = dialog.offsetWidth;
  var dialogheight = dialog.offsetHeight;
  var topposition = top + (height / 2) - (dialogheight / 2);
  var leftposition = left + (width / 2) - (dialogwidth / 2);
  iframe.style.width = dialogwidth;
  iframe.style.height = dialogheight;
  dialog.style.top = topposition + "px";
  dialog.style.left = leftposition + "px";
  dialogtitle.innerHTML = title;
  dialogcontent.innerHTML = message;
  //var content = document.getElementById(WRAPPER);
  //dialogmask.style.height = content.offsetHeight + 'px';
  var content = document.body;
  dialogmask.style.height = content.offsetHeight + 'px';
  dialogmask.style.width = content.offsetWidth + 'px';
  dialog.timer = setInterval("fadeDialog(1)", TIMER);
  if(autohide) {
    dialogclose.style.visibility = "hidden";
    window.setTimeout("hideDialog()", (autohide * 1000));
  } else {
    dialogclose.style.visibility = "visible";
  }
}

// hide the dialog box //
function hideDialog(imm) {
  var dialog = document.getElementById('dialog');
  if(imm)
  {
      var dialogmask = document.getElementById('dialog-mask');
      dialog.style.visibility = "hidden";
      dialogmask.style.visibility = "hidden";
  }
  else
  {
      clearInterval(dialog.timer);
      dialog.timer = setInterval("fadeDialog(0)", TIMER);
  }
}

// fade-in the dialog box //
function fadeDialog(flag) {
  if(flag == null) {
    flag = 1;
  }
  var dialog = document.getElementById('dialog');
  var value;
  if(flag == 1) {
    value = dialog.alpha + SPEED;
  } else {
    value = dialog.alpha - SPEED;
  }
  dialog.alpha = value;
  dialog.style.opacity = (value / 100);
  dialog.style.filter = 'alpha(opacity=' + value + ')';
  if(value >= 99) {
    clearInterval(dialog.timer);
    dialog.timer = null;
  } else if(value <= 1) {
    dialog.style.visibility = "hidden";
    document.getElementById('dialog-mask').style.visibility = "hidden";
    clearInterval(dialog.timer);
  }
}