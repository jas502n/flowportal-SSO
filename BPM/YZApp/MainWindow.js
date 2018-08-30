// JScript 文件
function GetBannerHTML(){
	var bannerHtml = String.format('<div class="logo"></div>'+
	    '<div class="site_switch">'+
	        '<strong class="switch">{3}</strong>'+
	        '<div>'+
	        '<a href="{4}" target="_blank">{5}</a>'+
	        '|<a href="###" onclick="YZSoft.Classic.ModuleManager.ShowModule(\'BPM/Worklist/MyTask\'); return false;">{6}<span>({0})</span></a>'+
	        //'|<a href="###" onclick="YZSoft.Classic.ModuleManager.ShowModule(\'BPM/InBox\'); return false;">{7}<span>({1})</span></a>'+
	        '</div>'+
	    '</div>'+
	    '<div class="login_info">'+
	        '<strong>{2}</strong>'+
	        '|<a href="###" onclick="YZSoft.Classic.ModuleManager.ShowModule(\'BPM/Personal/UserInfo\');return false;">{8}</a>'+
	        //'|<a href="###" onclick="YZSoft.Classic.ModuleManager.ShowModule(\'BPM/Personal/ChgPwd\');return false;">{9}</a>'+
	        '|<a href="###" id=\'_sys_leave\' onclick="YZSoft.Classic.ModuleManager.ShowModule(\'BPM/Personal/Leave\');return false;">{10}</a>'+
	        '|<a href="javascript:YZSoft.UserMgr.changeuser()">{11}</a>'+
	        '|<a href="javascript:YZSoft.UserMgr.logout()">{12}</a>'+
	    '</div>'+
	    '<div class="btm"></div>',
        userInfo.TaskCount,
        userInfo.UnreadMessageCount,
        String.format(RS.$('YZStrings.YZApp_Default_Welcome'),YZSoft.HttpUtility.HtmlEncode(YZSoft.Render.GetUserDisplayName(userInfo.Account,userInfo.DisplayName))),
	    userInfo.CompanyName,
	    userInfo.Link1,
	    RS.$('YZStrings.YZApp_Default_Link1'),
	    RS.$('YZStrings.YZApp_Default_LinkWorklist'),
	    RS.$('YZStrings.YZApp_Default_LinkMsg'),
	    RS.$('YZStrings.YZApp_Default_UserInfo'),
	    RS.$('YZStrings.YZApp_Default_ChangePwd'),
	    userInfo.Leave ? ("<font style='color:red;font-weight:bold'>" + RS.$('YZStrings.BPM_GetBack') + "</font>"): RS.$('YZStrings.BPM_Default_OutofOffice'),
	    RS.$('YZStrings.YZApp_Default_ChangeUser'),
	    RS.$('YZStrings.YZApp_Default_Logout')
	);
	
	return bannerHtml
}

var YZApp = {};

//kkk Ext.useShims = true;
Ext.onReady(function() {

    Ext.QuickTips.init();
    Ext.form.Field.prototype.msgTarget = 'side';
    var url = 'YZApp/MainModuleTree.ashx';
    Ext.Ajax.request({
        method: 'GET',
        disableCaching: true,
        url: url,
        success: function(response) {
            var defs = Ext.decode(response.responseText);
                            
            if (defs.success===false)
                YZSoft.Error.Throw(defs.errorMessage);

            var mds = [];
            for(var i = 0 ; i < defs.length ;i++){
                var md = new YZSoft.Classic.ModulePanel(defs[i]);
                mds.push(md);
            }

            YZSoft.mainTab = new Ext.TabPanel({
                banner: {
                    html: GetBannerHTML()
                },
                baseCls: 'mmenu1',
                activeTab: 0,
                items: mds
            });

            YZSoft.frame = new Ext.Viewport({
                layout: 'fit',
                items: [YZSoft.mainTab]
            });
        },
        failure: function(response) {
            var err = {
                type: 'responseError',
                response:response,
                url: url,
                title: RS.$('YZStrings.All_LoadModule_HttpFail_Title'),
                message: String.format(RS.$('YZStrings.All_LoadModule_HttpFail_Msg'), url)
            };
            YZSoft.Error.Throw(err);
        }
    });
});