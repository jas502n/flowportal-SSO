﻿importJS("YZSoft/BPM/Scripts/BPMExt.js");

Ext.namespace("YZSoft.BPM");

YZSoft.BPM.OpenTimeoutDetailPanel = function(pnlid,processName,nodeName,ownerAccount){
    var srcPnl = Ext.getCmp(pnlid);
    var store = srcPnl.store;

    var tab = srcPnl.ParentTab;
    if (!tab)
        return;

    var tagPnl = tab.getItem('SysBPMTimeoutDetail');
    if (!tagPnl)
        return;

    tagPnl.store.removeAll();

    Ext.apply(tagPnl.store.baseParams, {
        SearchType: 'AdvancedSearch',
        ProcessName: processName,
        NodeName: nodeName,
        Account: ownerAccount,
        Year: store.baseParams['Year'],
        PeriodType: store.baseParams['PeriodType'],
        Date1: store.baseParams['Date1'],
        Date2: store.baseParams['Date2']
    });
    tagPnl.PeriodDefine = store.PeriodDefine;
    tagPnl.loaded = false;
    tab.setActiveTab(tagPnl);
};

YZSoft.BPM.TimeoutUserPanel = Ext.extend(Ext.Panel, {
    constructor: function (config) {

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            remoteSort: true,
            baseParams: Ext.apply({ limit: YZSoft.EnvSetting.PageSize.BPMAdmin.userTimeout }, config.storeParams),
            fields: [
                { name: 'OwnerAccount' },
                { name: 'OwnerDisplayName' },
                { name: 'ProcessName' },
                { name: 'NodeNameOrg' },
                { name: 'NodeName' },
                { name: 'TimeoutCount' },
                { name: 'TimeoutPercent' },
                { name: 'Counts' }
            ],
            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/BPM/StoreDataService/TimeoutUser.ashx'
            }),
            listeners: {
                scope: this,
                beforeload: function () {
                    var period = this.periodPicker.getPeriod();
                    this.store.baseParams['Year'] = period.Define.Year;
                    this.store.baseParams['PeriodType'] = period.Define.Type;
                    this.store.baseParams['Date1'] = period.Date1;
                    this.store.baseParams['Date2'] = period.Date2;
                    this.store.baseParams['Account'] = this.edtUser.getValue();
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
                { header: RS.$('YZStrings.All_Account'), dataIndex: 'OwnerAccount', width: 120, align: 'left', sortable: true, renderer: YZSoft.BPM.Render.RenderString },
                { header: RS.$('YZStrings.All_DisplayName'), dataIndex: 'OwnerDisplayName', width: 120, align: 'left', sortable: false, renderer: YZSoft.BPM.Render.RenderString },
                { header: RS.$('YZStrings.BPM_ProcessName'), dataIndex: 'ProcessName', width: 200, align: 'left', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_StepName'), dataIndex: 'NodeName', align: 'left', sortable: true, renderer: YZSoft.Render.RenderString, id: 'extcol' },
                { header: RS.$('YZStrings.BPMAdmin_Timeout_TotalCount'), dataIndex: 'TimeoutCount', width: 120, align: 'right', sortable: true, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.BPM_ProcessCount'), dataIndex: 'Counts', width: 120, align: 'right', sortable: true, xtype: 'numbercolumn', format: '0,000' },
                { header: RS.$('YZStrings.BPMAdmin_Timeout_Rate'), dataIndex: 'TimeoutPercent', width: 120, align: 'right', sortable: true, renderer: this.RenderPercent },
                { header: RS.$('YZStrings.BPMAdmin_TimeoutUser_Detail'), dataIndex: 'TimeoutCount', width: 120, align: 'center', sortable: false, renderer: { scope: this, fn: this.RenderDetailLink} }
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
            templateExcel: String.format("~/YZSoft/BPM/Excel/TimeoutUser{0}.xls", RS.$('YZStrings.All_LangPostfix')),
            params: {},
            fileName: 'TimeoutUser',
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

        this.edtUser = new YZSoft.Form.UserField({
            emptyText: RS.$('YZStrings.All_SearchAllUser'),
            triggerClass: 'x-form-browser-trigger',
            width: 135
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
            tbar: [this.btnExcelExport, '->', this.btnClear, this.periodPicker, ' ', this.edtUser, ' ', this.btnSearch],
            listeners: {
                scope: this,
                activate: function () {
                    if (!this.loaded) {
                        if (this.PeriodDefine) {
                            this.periodPicker.setPeriod(this.PeriodDefine);
                            this.PeriodDefine = null;
                        }
                        this.store.reload({ params: { start: 0} });
                        this.loaded = true;
                    }
                }
            }
        };

        Ext.apply(cfg, config);
        YZSoft.BPM.TimeoutUserPanel.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.BPM.TimeoutUserPanel.superclass.initComponent.call(this);
    },

    RenderDetailLink: function (value, p, record) {
        if (!value)
            return String.format("<span style='color:#999'>{0}</span>", RS.$('YZStrings.BPMAdmin_Timeout_NoDetailLink'));

        return String.format("<a href='#'onclick=\"YZSoft.BPM.OpenTimeoutDetailPanel('{0}','{1}','{2}','{3}')\">{4}</a>",
            this.id,
            YZSoft.HttpUtility.InlineJSEncode(record.data.ProcessName),
            YZSoft.HttpUtility.InlineJSEncode(record.data.NodeNameOrg),
            YZSoft.HttpUtility.InlineJSEncode(record.data.OwnerAccount),
            RS.$('YZStrings.BPMAdmin_Timeout_DetailLink'));
    },

    RenderPercent: function (value, p, record) {
        return value + '%';
    }
});
