importJS("YZSoft/BPM/Scripts/BPMExt.js");

Ext.namespace("YZSoft.BPM");

YZSoft.BPM.HandlingTimeDetailPanel = Ext.extend(Ext.Panel, {
    WorkDayHours: 8,
    constructor: function (config) {

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'StepID',
            remoteSort: true,
            baseParams: Ext.apply({ limit: YZSoft.EnvSetting.PageSize.BPMAdmin.handlingTimeDetail, WorkDayHours: config.WorkDayHours | this.WorkDayHours }, config.storeParams),
            fields: [
                { name: 'TaskID' },
                { name: 'StepID' },
                { name: 'OwnerAccount' },
                { name: 'OwnerDisplayName' },
                { name: 'ProcessName' },
                { name: 'NodeNameOrg' },
                { name: 'NodeName' },
                { name: 'ReceiveAt' },
                { name: 'FinishAt' },
                { name: 'SelAction' },
                { name: 'UsedMinutes' },
                { name: 'UsedMinutesWork' },
                { name: 'TimeoutNotifyCount' },
                { name: 'TimeoutDeadline' },
                { name: 'Timeouted' },
                { name: 'HandlerAccount' },
                { name: 'HandlerDisplayName' }
           ],
            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                timeout: 90000,
                url: 'YZSoft/BPM/StoreDataService/HandlingTimeDetail.ashx'
            }),
            listeners: {
                scope: this,
                beforeload: function () {
                    var period = this.periodPicker.getPeriod();
                    this.store.baseParams['Year'] = period.Define.Year;
                    this.store.baseParams['PeriodType'] = period.Define.Type;
                    this.store.baseParams['Date1'] = period.Date1;
                    this.store.baseParams['Date2'] = period.Date2;
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
                { header: RS.$('YZStrings.BPM_TaskID'), dataIndex: 'TaskID', width: 60, align: 'left', sortable: true, hidden: true },
                { header: RS.$('YZStrings.BPM_StepID'), dataIndex: 'StepID', width: 80, align: 'left', sortable: true },
                { header: RS.$('YZStrings.BPM_ProcessName'), dataIndex: 'ProcessName', width: 120, align: 'left', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_StepName'), dataIndex: 'NodeName', id: 'extcol', align: 'left', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_StepOwner'), dataIndex: 'OwnerAccount', width: 120, align: 'left', sortable: true, renderer: YZSoft.BPM.Render.RenderStepOwner },
                { header: RS.$('YZStrings.BPM_StepHandler'), dataIndex: 'HandlerAccount', width: 120, align: 'left', sortable: true, renderer: YZSoft.BPM.Render.RenderStepHandler },
                { header: RS.$('YZStrings.All_ReceiveAt'), dataIndex: 'ReceiveAt', width: 130, align: 'right', sortable: true },
                { header: RS.$('YZStrings.All_ProcessAt'), dataIndex: 'FinishAt', width: 130, align: 'right', sortable: true },
                { header: RS.$('YZStrings.BPM_UserTime_Working'), dataIndex: 'UsedMinutesWork', width: 120, align: 'right', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_UserTime_7X24'), dataIndex: 'UsedMinutes', width: 100, align: 'right', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_Timeout_Time'), dataIndex: 'TimeoutDeadline', width: 130, align: 'right', sortable: true, renderer: this.RenderTimeOut },
                { header: RS.$('YZStrings.BPM_RemindTimes'), dataIndex: 'TimeoutNotifyCount', width: 80, align: 'right', sortable: true },
                { header: RS.$('YZStrings.BPM_IsTimeout'), dataIndex: 'Timeouted', width: 80, align: 'center', sortable: true, renderer: this.RenderTimeOutFlag }
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
            templateExcel: String.format("~/YZSoft/BPM/Excel/HandlingTimeDetail{0}.xls", RS.$('YZStrings.All_LangPostfix')),
            params: {},
            fileName: 'HandlingTimeDetail',
            AllowExportAll: false,
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
                this.edtUser.setValue('');
                this.store.baseParams = this.store.baseParams || {};
                this.store.baseParams['SearchType'] = '';
                this.store.reload({ params: { start: 0} });
            }
        });

        this.periodPicker = new YZSoft.Form.PeriodPicker({
            types: ['year', 'month', 'quator']
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
            tbar: [this.btnExcelExport, '->', this.btnClear, this.periodPicker, ' ', this.btnSearch],
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
        YZSoft.BPM.HandlingTimeDetailPanel.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.BPM.HandlingTimeDetailPanel.superclass.initComponent.call(this);
    },

    RenderTimeOutFlag: function (value, p, record) {
        if (value)
            return RS.$('YZStrings.All_Yes');
        else
            return RS.$('YZStrings.All_No');
    },

    RenderTimeOut: function (value, p, record) {
        if (value)
            return value;
        else
            return RS.$('YZStrings.All_None');
    }
});
