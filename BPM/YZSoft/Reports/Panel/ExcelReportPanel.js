Ext.namespace("YZSoft.Reports");

YZSoft.Reports.ExcelReportPanel = Ext.extend(Ext.Panel, {
    cls:'excel-report',
    reportServiceUrl: resolveUrl('YZSoft/Reports/ReportService/ExcelReportService.ashx'),

    constructor: function(config) {
        config = config || {};

        var storeConfig = {
            remoteSort: false,
            fields: [{ name: 'id' }],
            proxy: new Ext.data.HttpProxy({
                method:'GET',
                timeout:90000,
                url: config.reportServiceUrl || this.reportServiceUrl
            }),
            listeners: {
                scope: this,
                beforeload:function(store, o){
                    this.fireEvent('beforereportload',store, o);

                    store.baseParams = store.baseParams || {};
                    
                    //转换参数
                    var pms = new Array();                    
                    Ext.iterate(store.baseParams, function(key, val) {
                        if (key != 'UserParamNames')
                            pms.push(key);
                    });
                    
                    store.baseParams['UserParamNames'] = pms.join(',');
                },
                load: function(store, r, o) {
                    var d = this.store.reader.jsonData;
                    if (d.loaded) {
                        this.update(d.chartHtml);
                        this.containsReport = true;
                        this.fireEvent('reportload');
                    }
                    else {
                        this.update(d.errorMessage);
                        this.containsReport = false;
                        this.fireEvent('reportload',store, r, o);
                    }
                }
            }
        };
        
        Ext.apply(storeConfig, config.storeConfig || {});
        storeConfig.baseParams = storeConfig.baseParams || {};

        if (config.pagingToolbar){
            storeConfig.root = 'children';
            storeConfig.totalProperty = 'totalRows';
            storeConfig.baseParams.limit = storeConfig.baseParams.limit || 10;
        }
        
        if (config.ExcelFile)
            storeConfig.baseParams.ExcelFile = config.ExcelFile;

        this.store = new YZSoft.Data.JsonStore(storeConfig);

        var cfg = {
            region: 'center',
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'fit',
            html: ''
        };
        
        if (config.pagingToolbar){
            cfg.bbar = new Ext.PagingToolbar({
                pageSize: this.store.baseParams.limit,
                store: this.store,
                displayInfo: true
            });
        }

        Ext.apply(cfg, config);

        this.addEvents(
            'beforereportload',
            'reportload'
        );

        YZSoft.Reports.ExcelReportPanel.superclass.constructor.call(this, cfg);

        this.on('render', function() {
            this.loadMask = new Ext.LoadMask(this.id, { msg: this.loadMask || RS.$('YZStrings.BPM_ExcelReport_Loading'), store: this.store });
        }, this);
    },

    initComponent: function() {
        YZSoft.Reports.ExcelReportPanel.superclass.initComponent.call(this);
    },

    Export: function() {
        if (!this.containsReport)
            return;

        var params = { Method: 'Export' };
        Ext.apply(params, this.store.baseParams);
        
        var bbar = this.getBottomToolbar();
        if(this.bbar)
            params.start = bbar.cursor;
            
        YZSoft.File.download(this.reportServiceUrl, params);
        return;
    }
});
