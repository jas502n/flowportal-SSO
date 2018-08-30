Ext.namespace("YZSoft.Personal");

YZSoft.Personal.ChangePwdPanel = Ext.extend(YZSoft.IFramePanel, {
    constructor : function(config){
        config.url = 'YZSoft/Personal/Forms/ChangePassword.aspx';
        YZSoft.Personal.ChangePwdPanel.superclass.constructor.call(this,config);
    }
});
