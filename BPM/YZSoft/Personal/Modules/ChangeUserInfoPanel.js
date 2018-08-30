Ext.namespace("YZSoft.Personal");

YZSoft.Personal.ChangeUserInfoPanel = Ext.extend(YZSoft.IFramePanel, {
    constructor : function(config){
        config.url = 'YZSoft/Personal/Forms/ChangeUserInfo.aspx';
        YZSoft.Personal.ChangeUserInfoPanel.superclass.constructor.call(this,config);
    }
});
