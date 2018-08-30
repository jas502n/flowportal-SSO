Ext.namespace("YZSoft.BPM");

YZSoft.BPM.ProcessUsagePanel = Ext.extend(Ext.Panel, {
    constructor: function (config) {

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'ProcessName',
            remoteSort: true,
            baseParams: { limit: YZSoft.EnvSetting.PageSize.BPMAdmin.processUsage },
            fields: [
                { name: 'State' },
                { name: 'StateDisplay' },
                { name: 'Month1' },
                { name: 'Month2' },
                { name: 'Month3' },
                { name: 'Month4' },
                { name: 'Month5' },
                { name: 'Month6' },
                { name: 'Month7' },
                { name: 'Month8' },
                { name: 'Month9' },
                { name: 'Month10' },
                { name: 'Month11' },
                { name: 'Month12' },
                { name: 'Total' }
            ],
            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/BPM/StoreDataService/SystemUsage.ashx'
            }),
            listeners: {
                scope: this,
                beforeload: function () {
                    var period = this.periodPicker.getPeriod();
                    this.store.baseParams['Year'] = period.Define.Year;
                    this.store.baseParams['PeriodType'] = period.Define.Type;
                },
                load: function () {
                }
            }
        });

        this.grid = new Ext.grid.GridPanel({
            border: false,
            store: this.store,
            trackMouseOver: true,
            disableSelection: true,
            loadMask: true,
            region: 'center',
            stripeRows: true,
            columns: [
                { header: RS.$('YZStrings.All_Status'), dataIndex: 'StateDisplay', align: 'center', sortable: false, renderer: YZSoft.Render.RenderString, id: 'extcol' },
                { header: RS.$('YZStrings.All_Month1'), dataIndex: 'Month1', width: 80, align: 'right', sortable: false, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.All_Month2'), dataIndex: 'Month2', width: 80, align: 'right', sortable: false, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.All_Month3'), dataIndex: 'Month3', width: 80, align: 'right', sortable: false, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.All_Month4'), dataIndex: 'Month4', width: 80, align: 'right', sortable: false, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.All_Month5'), dataIndex: 'Month5', width: 80, align: 'right', sortable: false, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.All_Month6'), dataIndex: 'Month6', width: 80, align: 'right', sortable: false, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.All_Month7'), dataIndex: 'Month7', width: 80, align: 'right', sortable: false, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.All_Month8'), dataIndex: 'Month8', width: 80, align: 'right', sortable: false, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.All_Month9'), dataIndex: 'Month9', width: 80, align: 'right', sortable: false, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.All_Month10'), dataIndex: 'Month10', width: 80, align: 'right', sortable: false, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.All_Month11'), dataIndex: 'Month11', width: 80, align: 'right', sortable: false, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.All_Month12'), dataIndex: 'Month12', width: 80, align: 'right', sortable: false, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.All_Total'), dataIndex: 'Total', width: 80, align: 'right', sortable: false, xtype: 'numbercolumn', format: '0,000' }
            ],

            autoExpandColumn: 'extcol',
            viewConfig: {
                getRowClass: function(record, rowIndex, p, store){
                    if (record.data.State=='Total')
                        return 'PageSummaryRow';
                }
            }
        });

        this.btnExcelExport = new YZSoft.ExcelExportButton({
            grid: this.grid,
            templateExcel: String.format("~/YZSoft/BPM/Excel/SystemUsageExport{0}.xls", RS.$('YZStrings.All_LangPostfix')),
            params: {},
            fileName: 'SyatemUsage',
            AllowExportAll: true,
            PagingToolbar: false,
            listeners: {
                scope: this,
                beforeload: function () {
                    this.store.baseParams['ReportDate'] = (new Date()).toString();
                }
            }
        });

        this.periodPicker = new YZSoft.Form.PeriodPicker({
            types: ['year']
        });

        this.btnSearch = new YZSoft.Form.SearchField({
            store: this.store,
            buttonOnly: true,
            emptySearch: true,
            showAdvButton: false
        });

        var cfg = {
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'border',
            items: [this.grid],
            tbar: [this.btnExcelExport, '->', RS.$('YZStrings.All_Report_Year'), this.periodPicker, ' ', this.btnSearch],
            listeners: {
                scope: this,
                activate: function () {
                    if (!this.loaded) {
                        this.store.reload({ params: { start: this.store.cursor} });
                        this.loaded = true;
                    }
                }
            }
        };

        Ext.apply(cfg, config);
        YZSoft.BPM.ProcessUsagePanel.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.BPM.ProcessUsagePanel.superclass.initComponent.call(this);
    }
});
