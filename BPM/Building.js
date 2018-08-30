YZSoft.BuildingPanel = Ext.extend(YZSoft.IFramePanel, {
    constructor : function(config){
        config.params = {message:YZSoft.HttpUtility.HtmlEncode(config.message)};
        config.url = config.url||'YZSoft/Maintenance/Building.aspx';
        YZSoft.BuildingPanel.superclass.constructor.call(this,config);
    }
});

YZSoft.BuildingPanelWithFrame = Ext.extend(Ext.Panel, {
    constructor : function(config){
        var instance = new YZSoft.IFramePanel({
            border:false,
            region: 'center',
            header: false,
            cls: 'yz-func-panel',
            params:{message:YZSoft.HttpUtility.HtmlEncode(config.message)},
            url:config.url||'YZSoft/Maintenance/Building.aspx'
        });

        var header = new Ext.BoxComponent({
            region: 'north',
            border: false,
            cls: 'mmenu3-header',
            html: String.format('<div class="yz-tab-banner"><span class="curmodel">{0}</span></div>', config.title)
        });

        var cfg = {
            border: false,
            layout: 'border',
            items: [header, instance],
            funcpanel: instance
        };
            
        Ext.apply(cfg,config);
        cfg.title = false;
        YZSoft.BuildingPanelWithFrame.superclass.constructor.call(this,cfg);
    }
});