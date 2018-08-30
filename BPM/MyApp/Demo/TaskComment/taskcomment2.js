var isDebug;
isDebug='0';
//请修改为您自己的BPM服务器的域名或IP
var bpmHost;
//rootUrl为BPM自带的公共参数，直接调用，减少配置，真正即插即用的插件！
bpmHost=rootUrl;

function MyRequest() {
   var url = location.search;
   var theRequest = new Object();
   if (url.indexOf("?") != -1) {
      var str = url.substr(1);
      strs = str.split("&");
      for(var i = 0; i < strs.length; i ++) {
         theRequest[strs[i].split("=")[0]]=unescape(strs[i].split("=")[1]);
      }
   }
   return theRequest;
}

var myRequest = new Object();
myRequest = MyRequest();

var taskid;
taskid = myRequest["tid"];

var parentid;
parentid = myRequest["parentid"];

var appname;
appname = myRequest["app"];

var appkey;
appkey = myRequest["key"];

var curindex;
curindex = myRequest["curindex"];

//alert(appname + appkey);

if (taskid == null)
{
taskid=0;
}

if (parentid == null)
{
parentid=0;
}

if (appname == null)
{
appname='';
}

if (appkey == null)
{
appkey=0;
}

if(curindex == null)
{
curindex=1;
}

//js脚本生成外壳taskComments
document.write('<link type="text/css" rel="stylesheet" href="' + bpmHost + 'MyApp/Demo/TaskComment/taskcomment.css"/>');
document.write('<div id="HEADC">发表讨论意见</div> ');
document.write('<div id="taskCommentForm"><textarea name="txtTaskComment" rows="4" id="txtTaskComment" class="content"></textarea><br /><input type=button name="btnTaskCommentReply" id="btnTaskCommentReply" class="btn" value="讨论"> <span class="gray">(Ctrl + Enter)说明：在此处发表意见，不影响待办状态，可与流程相关人员在线讨论 。</span><input type="checkbox" name="mailBtn" id="mailBtn" runat="server"  value="Y" />发送提醒邮件<span class="gray">(默认RTX弹屏)</span></div>');

document.write('<div id="taskComments"></div>');

var getUrl = bpmHost + 'MyApp/Demo/TaskComment/MyData.ashx?TaskId=' + taskid + '&ParentId=' + parentid + '&AppName=' + appname + '&AppKey=' + appkey;
var postUrl = bpmHost + 'MyApp/Demo/TaskComment/MyRFC.ashx';
//alert(getUrl);

function Setindex(i)
{
curindex=i;
getComments();
}

function getComments() {
    var getUrl1=getUrl+'&curindex=' + curindex;
	$.ajax({
 	url: getUrl1,
 	dataType: 'json',
	cache: false,
 	success: function( data ) {
   	//console.log( 'SUCCESS: ', data );

	// if html,use parseJSON
	//var obj = $.parseJSON(data);

	var pages=Math.ceil(data.totalRows/8);

            var _div='<div id="TaskCommentCount">讨论意见(' + data.totalRows + ')<span style="color:#ffffff;margin-left:200px">&nbsp;&nbsp;</span>';
            
            //for(var i=1;i<=pages;i++)
            //{
             //  if(curindex==i)
               //{
                 // _div=_div+'<'+i+'>';
               //}
               //else
               //{
              //	 _div=_div+'<a onclick="Setindex('+i+')">'+i+'</a>';
	       //}
            //}
             var _i=curindex-1;
            if(curindex!=1)
            {

              //_div=_div+'<a onclick="Setindex(1)">'+'|<'+'</a>&nbsp;&nbsp;';
              //_div=_div+'<a onclick="Setindex('+_i+')">'+'<'+'</a>&nbsp;&nbsp;';
               _div=_div+'<span class="Active" onclick="Setindex(1)">'+'|<'+'</span>&nbsp;&nbsp;';
               _div=_div+'<span class="Active" onclick="Setindex('+_i+')">'+'<'+'</span>&nbsp;&nbsp;';
            } 
            else
            {
              _div=_div+'<span class="Gray">|<&nbsp;&nbsp;</span>';
              _div=_div+'<span class="Gray"><&nbsp;&nbsp;</span>';
            }
             
            if(pages==0)
            {
              _div=_div+'0/'+pages+'&nbsp;&nbsp;';
            }
            else
            {
              _div=_div+curindex+'/'+pages+'&nbsp;&nbsp;';
            }

            _i=curindex+1;
            if(curindex!=pages)
            {
              //_div=_div+'<a onclick="Setindex('+_i+')">'+'>'+'</a>&nbsp;&nbsp;';
              //_div=_div+'<a onclick="Setindex('+pages+')">'+'>|'+'</a>&nbsp;&nbsp;';
              _div=_div+'<span class="Active"  onclick="Setindex('+_i+')">'+'>'+'</span>&nbsp;&nbsp;';
              _div=_div+'<span class="Active"  onclick="Setindex('+pages+')">'+'>|'+'</span>&nbsp;&nbsp;';
              
            }
            else
            {
              _div=_div+'<span class="Gray">>&nbsp;&nbsp;</span>';
              _div=_div+'<span class="Gray">>|&nbsp;&nbsp;</span>';
            }

           
            _div=_div+'</div>';
            
            $('#taskComments').empty();
            //$('#taskComments').append('<div id="TaskCommentCount">讨论意见(' + data.totalRows + ')</div>'); //<input type=button name="btnTaskCommentReflesh" id="btnTaskCommentReflesh" class="btn" value="刷新">
            $('#taskComments').append(_div);
      
            $.each(data.comments, function(index, element) {           

                $('#taskComments').append('<div id="taskComment"><div id="siderbar">' + (data.comments.length - index) + '</div><div id="main"><span class="author">' + element.AppName + '(' + element.CreationUser + ')</span>&nbsp;&nbsp;<span class="date">' + element.TransDate + '</span><br /><span class="content">' + element.Comment.replace("<br/>", /\n/g) + '</span></div></div>');
            });

 	},
 	error: function( data ) {
   	//console.log( 'ERROR: ', data );
 	}
	});
}




$(document).ready(function () {

getComments();
setInterval("getComments()", 5000);  
if(isDebug!='1')
{
	if(taskid==0 && appkey==0)
	{
		$('#taskCommentForm').addClass("hide");
		$('#taskComments').addClass("hide");
		$('#HEADC').addClass("hide");
	}
}


$('#taskComments').on("mouseenter", "#taskComment", function(){
	$(this).addClass('active');
});

$('#taskComments').on("mouseleave", "#taskComment", function(){
	$(this).removeClass('active');
});


});


$('textarea[name="txtTaskComment"]').keydown(function (e) {

	if (e.ctrlKey && e.keyCode == 13) {
	// Ctrl-Enter pressed
	postComment();
	}
});


$('#btnTaskCommentReply').click(function(){

postComment();

});

function postComment()
{
    var purl = window.location.href.replace(window.location.search , "");
	//if(taskid==0)
	//{
	//	alert('please comment the correct request!');
	//	return null;
	//}

	//if($('input[name="inputTaskComment"]').val().length == 0)
	if ($('textarea[name="txtTaskComment"]').val().length == 0)
	{
		alert('Please input your comment!');
		return null;
	}

	var TypeID = $("input[name='mailBtn']");


    var checked = "";
    if ($("#mailBtn").is(":checked")) {
        checked = "Y";
    }
	$.ajax({
	type: 'POST',
	url: postUrl,
	data: 'method=Add&comment=' + $('textarea[name="txtTaskComment"]').val().replace(/\n/g, "<br />") + '&TaskId=' + taskid + '&ParentId=' + parentid + '&AppName=' + appname + '&AppKey=' + appkey + '&checked=' + checked + '&purl=' + purl ,
	success: function(msg){	
	$('textarea[name="txtTaskComment"]').val('');
	$("#mailBtn").attr("checked", false);
	getComments();
	}
	});

}







