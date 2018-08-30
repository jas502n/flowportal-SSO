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
                { name: 'ProcessName' },
                { name: 'Approved' },
                { name: 'Running' },
                { name: 'Rejected' },
                { name: 'Aborted' },
                { name: 'Deleted' },
                { name: 'Total' }
            ],
            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/BPM/StoreDataService/ProcessUsage.ashx'
            }),
            listeners: {
                scope: this,
                beforeload: function () {
                    var period = this.periodPicker.getPeriod();
                    this.store.baseParams['Year'] = period.Define.Year;
                    this.store.baseParams['PeriodType'] = period.Define.Type;
                    this.store.baseParams['Date1'] = period.Date1;
                    this.store.baseParams['Date2'] = period.Date2;
                    this.store.baseParams['InstanceCount'] = this.edtInstanceCount.getValue();
                    this.store.PeriodDefine = period.Define;
                },
                load: function () {
                }
            }
        });

        this.store.setDefaultSort('Total', 'DESC');

        this.grid = new Ext.grid.GridPanel({
            border: false,
            store: this.store,
            trackMouseOver: true,
            disableSelection: false,
            loadMask: true,
            region: 'center',
            stripeRows: true,
            columns: [
                { header: RS.$('YZStrings.BPM_ProcessName'), dataIndex: 'ProcessName', width: 160, align: 'left', sortable: true, renderer: YZSoft.Render.RenderString, id: 'extcol' },
                { header: RS.$('YZStrings.BPMAdmin_ProcessUsage_Approve'), dataIndex: 'Approved', width: 120, align: 'right', sortable: true, xtype: 'numbercolumn',format:'0,000' },
                { header: RS.$('YZStrings.BPMAdmin_ProcessUsage_Running'), dataIndex: 'Running', width: 120, align: 'right', sortable: true, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.BPMAdmin_ProcessUsage_Reject'), dataIndex: 'Rejected', width: 120, align: 'right', sortable: true, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.BPMAdmin_ProcessUsage_Abort'), dataIndex: 'Aborted', width: 120, align: 'right', sortable: true, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.BPMAdmin_ProcessUsage_Delete'), dataIndex: 'Deleted', width: 120, align: 'right', sortable: true, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.All_Total'), dataIndex: 'Total', width: 120, align: 'right', sortable: true, xtype: 'numbercolumn', format: '0,000' }
            ],
            autoExpandColumn: 'extcol',
            bbar: new Ext.PagingToolbar({
                pageSize: this.store.baseParams.limit,
                store: this.store,
                displayInfo: true
            })
        });

        this.btnExcelExport = new YZSoft.ExcelExportButton({
            grid: this.grid,
            templateExcel: String.format("~/YZSoft/BPM/Excel/ProcessUsage{0}.xls", RS.$('YZStrings.All_LangPostfix')),
            params: {},
            fileName: 'ProcessUsage',
            AllowExportAll: true,
            listeners: {
                scope: this,
                beforeload: function () {
                    this.store.baseParams['ReportDate'] = (new Date()).toString();
                }
            }
        });

        this.btnClear = new Ext.Button({
            text: RS.$('YZStrings.All_Search_Clear'),
            scope: this,
            handler: function () {
                this.edtInstanceCount.setValue('');
                this.store.baseParams = this.store.baseParams || {};
                this.store.baseParams['SearchType'] = '';
                this.store.reload({ params: { start: 0} });
            }
        });

        this.periodPicker = new YZSoft.Form.PeriodPicker({
            types: ['year', 'month', 'quator']
        });

        this.edtInstanceCount = new Ext.form.NumberField({
            width: 85,
            emptyText: RS.$('YZStrings.BPMAdmin_SearchInstanceCount'),
            allowDecimals: false,
            allowNegative: false,
            selectOnFocus: true
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
            tbar: [this.btnExcelExport, '->', this.btnClear, this.periodPicker, ' ', this.edtInstanceCount, ' ', this.btnSearch],
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
