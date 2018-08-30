importJS("YZSoft/BPM/Scripts/BPMExt.js");

Ext.namespace("YZSoft.BPM");

YZSoft.BPM.OpenHandlingTimeUserPanel = function (pnlid, processName, nodeName) {
    var srcPnl = Ext.getCmp(pnlid);
    var store = srcPnl.store;

    var tab = srcPnl.ParentTab;
    if (!tab)
        return;

    var tagPnl = tab.getItem('SysBPMHandlingTimeUser');
    if (!tagPnl)
        return;

    tagPnl.store.removeAll();

    Ext.apply(tagPnl.store.baseParams, {
        SearchType: 'AdvancedSearch',
        ProcessName: processName,
        NodeName: nodeName,
        Year: store.baseParams['Year'],
        PeriodType: store.baseParams['PeriodType'],
        Date1: store.baseParams['Date1'],
        Date2: store.baseParams['Date2']
    });
    tagPnl.PeriodDefine = store.PeriodDefine;
    tagPnl.loaded = false;
    tab.setActiveTab(tagPnl);
};

YZSoft.BPM.HandlingTimeStepPanel = Ext.extend(Ext.Panel, {
    WorkDayHours: 8,
    constructor: function (config) {

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            remoteSort: true,
            baseParams: { limit: YZSoft.EnvSetting.PageSize.BPMAdmin.stepHandlingTime, WorkDayHours: config.WorkDayHours | this.WorkDayHours },
            fields: [
                { name: 'ProcessName' },
                { name: 'NodeNameOrg' },
                { name: 'NodeName' },
                { name: 'UsedMinutesWork' },
                { name: 'UsedMinutesWorkMax' },
                { name: 'UsedMinutes' },
                { name: 'UsedMinutesMax' },
                { name: 'Counts' }
            ],
            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                timeout: 90000,
                url: 'YZSoft/BPM/StoreDataService/HandlingTimeStep.ashx'
            }),
            listeners: {
                scope: this,
                beforeload: function () {
                    var period = this.periodPicker.getPeriod();
                    this.store.baseParams['Year'] = period.Define.Year;
                    this.store.baseParams['PeriodType'] = period.Define.Type;
                    this.store.baseParams['Date1'] = period.Date1;
                    this.store.baseParams['Date2'] = period.Date2;
                    this.store.baseParams['ProcessName'] = this.cmbProcessName.getRawValue();
                    this.store.baseParams['ProcessCount'] = this.edtProcessCount.getValue();
                    this.store.baseParams['Hours'] = this.edtHours.getValue();
                    this.store.PeriodDefine = period.Define;
                },
                load: function () {
                }
            }
        });

        this.store.setDefaultSort('UsedMinutesWork', 'DESC');

        this.grid = new Ext.grid.GridPanel({
            border: false,
            store: this.store,
            trackMouseOver: true,
            disableSelection: false,
            loadMask: true,
            region: 'center',
            stripeRows: true,

            // this.grid columns
            columns: [
                { header: RS.$('YZStrings.BPM_ProcessName'), dataIndex: 'ProcessName', width: 200, align: 'left', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_StepName'), dataIndex: 'NodeName', align: 'left', sortable: true, renderer: YZSoft.Render.RenderString, id: 'extcol' },
                { header: RS.$('YZStrings.BPM_UserTimeAvg_Working'), dataIndex: 'UsedMinutesWork', width: 138, align: 'right', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_UserTimeAvg_7X24'), dataIndex: 'UsedMinutes', width: 110, align: 'right', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_UserTimeMax_Working'), dataIndex: 'UsedMinutesWorkMax', width: 138, align: 'right', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_UserTimeMax_7X24'), dataIndex: 'UsedMinutesMax', width: 110, align: 'right', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_ProcessCount'), dataIndex: 'Counts', width: 72, align: 'right', sortable: true, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.BPMAdmin_HandlingTimeStep_Detail'), dataIndex: 'Counts', width: 120, align: 'center', sortable: false, renderer: { scope: this, fn: this.RenderDetailLink} }
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
            templateExcel: String.format("~/YZSoft/BPM/Excel/HandlingTimeStep{0}.xls", RS.$('YZStrings.All_LangPostfix')),
            params: {},
            fileName: 'HandlingTimeStep',
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
                this.cmbProcessName.setValue('');
                this.edtProcessCount.setValue('');
                this.edtHours.setValue('');
                this.store.baseParams = this.store.baseParams || {};
                this.store.baseParams['SearchType'] = '';
                this.store.reload({ params: { start: 0} });
            }
        });

        this.periodPicker = new YZSoft.Form.PeriodPicker({
            types: ['year', 'month', 'quator']
        });

        this.cmbProcessName = new YZSoft.BPM.Form.ProcessNameComboBox({
            emptyText: RS.$('YZStrings.All_SearchAllProcess'),
            width: 135
        });

        this.edtProcessCount = new Ext.form.NumberField({
            width: 95,
            emptyText: RS.$('YZStrings.BPMAdmin_SearchProcessCount'),
            allowDecimals: false,
            allowNegative: false,
            selectOnFocus: true
        });

        this.edtHours = new Ext.form.NumberField({
            width: 110,
            emptyText: RS.$('YZStrings.BPMAdmin_SearchProcessUsedHours'),
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
            tbar: [this.btnExcelExport, '->', this.btnClear, this.periodPicker, ' ', this.cmbProcessName, ' ', this.edtProcessCount, ' ', this.edtHours, ' ', this.btnSearch],
            listeners: {
                scope: this,
                activate: function () {
                    if (!this.loaded) {
                        this.store.reload({ params: { start: 0} });
                        this.loaded = true;
                    }
                }
            }
        };

        Ext.apply(cfg, config);
        YZSoft.BPM.HandlingTimeStepPanel.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.BPM.HandlingTimeStepPanel.superclass.initComponent.call(this);
    },

    RenderDetailLink: function (value, p, record) {
        return String.format("<a href='#'onclick=\"YZSoft.BPM.OpenHandlingTimeUserPanel('{0}','{1}','{2}')\">{3}</a>",
            this.id,
            YZSoft.HttpUtility.InlineJSEncode(record.data.ProcessName),
            YZSoft.HttpUtility.InlineJSEncode(record.data.NodeNameOrg),
            RS.$('YZStrings.BPMAdmin_Report_DetailLink'));
    }
});
