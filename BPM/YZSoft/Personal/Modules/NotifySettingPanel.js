Ext.namespace("YZSoft.Personal");

YZSoft.Personal.NotifySettingPanel = Ext.extend(YZSoft.IFramePanel, {
    constructor : function(config){
        config.url = 'YZSoft/Personal/Forms/NotifySetting.aspx';
        YZSoft.Personal.NotifySettingPanel.superclass.constructor.call(this,config);
    }
});
