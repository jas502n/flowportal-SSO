importJS("YZSoft/BPM/Scripts/BPMExt.js");

Ext.namespace("YZSoft.BPM");

YZSoft.BPM.OpenTimeoutUserPanel = function (pnlid, processName, nodeName) {
    var srcPnl = Ext.getCmp(pnlid);
    var store = srcPnl.store;

    var tab = srcPnl.ParentTab;
    if (!tab)
        return;

    var tagPnl = tab.getItem('SysBPMTimeoutUser');
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

YZSoft.BPM.TimeoutStepPanel = Ext.extend(Ext.Panel, {
    constructor: function (config) {

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            remoteSort: true,
            baseParams: { limit: YZSoft.EnvSetting.PageSize.BPMAdmin.stepTimeout },
            fields: [
                { name: 'ProcessName' },
                { name: 'NodeNameOrg' },
                { name: 'NodeName' },
                { name: 'TimeoutCount' },
                { name: 'TimeoutPercent' },
                { name: 'Counts' }
            ],
            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/BPM/StoreDataService/TimeoutStep.ashx'
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
                    this.store.baseParams['Percent'] = this.edtPercent.getValue();
                    this.store.PeriodDefine = period.Define;
                },
                load: function () {
                }
            }
        });

        this.store.setDefaultSort('TimeoutCount', 'DESC');

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
                { header: RS.$('YZStrings.BPMAdmin_Timeout_TotalCount'), dataIndex: 'TimeoutCount', width: 120, align: 'right', sortable: true, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.BPM_ProcessCount'), dataIndex: 'Counts', width: 120, align: 'right', sortable: true, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.BPMAdmin_Timeout_Rate'), dataIndex: 'TimeoutPercent', width: 120, align: 'right', sortable: true, renderer: this.RenderPercent },
                { header: RS.$('YZStrings.BPMAdmin_TimeoutStep_Detail'), dataIndex: 'TimeoutCount', width: 120, align: 'center', sortable: false, renderer: { scope: this, fn: this.RenderDetailLink} }
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
            templateExcel: String.format("~/YZSoft/BPM/Excel/TimeoutStep{0}.xls", RS.$('YZStrings.All_LangPostfix')),
            params: {},
            fileName: 'TimeoutStep',
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
                this.edtPercent.setValue('');
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

        this.edtPercent = new Ext.form.NumberField({
            width: 85,
            emptyText: RS.$('YZStrings.BPMAdmin_SearchTimeoutPercent'),
            maxValue: 100,
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
            tbar: [this.btnExcelExport, '->', this.btnClear, this.periodPicker, ' ', this.cmbProcessName, ' ', this.edtProcessCount, ' ', this.edtPercent, ' ', this.btnSearch],
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
        YZSoft.BPM.TimeoutStepPanel.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.BPM.TimeoutStepPanel.superclass.initComponent.call(this);
    },

    RenderDetailLink: function (value, p, record) {
        if (!value)
            return String.format("<span style='color:#999'>{0}</span>", RS.$('YZStrings.BPMAdmin_Timeout_NoDetailLink'));

        return String.format("<a href='#'onclick=\"YZSoft.BPM.OpenTimeoutUserPanel('{0}','{1}','{2}')\">{3}</a>",
            this.id,
            YZSoft.HttpUtility.InlineJSEncode(record.data.ProcessName),
            YZSoft.HttpUtility.InlineJSEncode(record.data.NodeNameOrg),
            RS.$('YZStrings.BPMAdmin_Timeout_DetailLink'));
    },

    RenderPercent: function (value, p, record) {
        return value + '%';
    }
});
