Ext.namespace("YZSoft.Personal");

YZSoft.Personal.LeavePanel = Ext.extend(YZSoft.IFramePanel, {
    constructor : function(config){
        config.url = 'YZSoft/Personal/Forms/Leave.aspx';
        YZSoft.Personal.LeavePanel.superclass.constructor.call(this,config);
    }
});
