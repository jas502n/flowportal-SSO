importJS("YZSoft/BPM/Scripts/BPMExt.js");
importJS("YZSoft/BPM/Scripts/TaskOption.js");

Ext.namespace("YZSoft.BPM");

YZSoft.BPM.ShareTaskPanel_OpenShareTask = function (gridid, taskid, stepid, sn) {
    YZSoft.BPM.FormManager.OpenShareTask(taskid, stepid, sn, null, {
        listeners: {
            scope: this,
            close: function (form) {
                if (form.dialogResult == 'ok') {
                    var grid = Ext.getCmp(gridid);
                    if (grid) {
                        grid.store.reload({ params: { start: grid.store.cursor} });
                    }
                }
            }
        }
    });
};

YZSoft.BPM.ShareTaskPanel = Ext.extend(Ext.Panel, {
    constructor: function (config) {

        this.idCmbProcessName = Ext.id();
        this.idKeyword = Ext.id();
        this.idBtnAdvanced = Ext.id();

        var idDesc = Ext.id();

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'StepID',
            remoteSort: true,

            fields: [
                { name: 'StepID' },
                { name: 'TaskID' },
                { name: 'SerialNum' },
                { name: 'ProcessName' },
                { name: 'ProcessVersion' },
                { name: 'OwnerAccount' },
                { name: 'OwnerDisplayName' },
                { name: 'AgentAccount' },
                { name: 'AgentDisplayName' },
                { name: 'CreateAt' },
                { name: 'NodeName' },
                { name: 'ReceiveAt' },
                { name: 'Share' },
                { name: 'State' },
                { name: 'TimeoutFirstNotifyDate' },
                { name: 'TimeoutDeadline' },
                { name: 'TimeoutNotifyCount' },
                { name: 'Description' }
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/BPM/StoreDataService/ShareTask.ashx'
            }),

            baseParams: { limit: YZSoft.EnvSetting.PageSize.defaultSize },
            listeners: {
                scope: this,
                beforeload: function () {
                    if (this.store.baseParams['SearchType'] == 'AdvancedSearch') {
                        Ext.getCmp(this.idCmbProcessName).setValue(this.store.baseParams['ProcessName']);
                        Ext.getCmp(this.idKeyword).setValue(this.store.baseParams['Keyword']);
                    }
                    if (this.store.baseParams['SearchType'] == 'QuickSearch') {
                        this.store.baseParams['ProcessName'] = Ext.getCmp(this.idCmbProcessName).getRawValue();
                    }
                },
                load: function () {
                    this.updateStatus();
                }
            }
        });

        this.grid = new Ext.grid.GridPanel({
            border: false,
            store: this.store,
            trackMouseOver: true,
            disableSelection: false,
            loadMask: true,
            region: 'center',
            stripeRows: true,
            dynchk: true,

            // grid columns
            columns: [
                { header: RS.$('YZStrings.All_SN'), dataIndex: 'SerialNum', width: 130, align: 'left', sortable: true, scope: this, renderer: this.RenderSN },
                { header: RS.$('YZStrings.BPM_ProcessName'), dataIndex: 'ProcessName', width: 100, align: 'left', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_ProcessVersion'), hidden: true, dataIndex: 'ProcessVersion', width: 80, align: 'center', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.All_Owner'), dataIndex: 'OwnerAccount', width: 100, align: 'center', sortable: true, renderer: YZSoft.BPM.Render.RenderTaskOwner },
                { header: RS.$('YZStrings.BPM_PostAt'), dataIndex: 'CreateAt', width: 128, align: 'center', sortable: true },
                { header: RS.$('YZStrings.BPM_CurStep'), dataIndex: 'NodeName', width: 100, align: 'center', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_TaskDesc'), dataIndex: 'Description', align: 'left', sortable: true, id: idDesc }
            ],

            autoExpandColumn: idDesc,
            // paging bar on the bottom
            bbar: new Ext.PagingToolbar({
                pageSize: this.store.baseParams.limit,
                store: this.store,
                displayInfo: true
            }),
            listeners: {
                scope: this,
                rowdblclick: function (grid, rowIndex, e) {
                    this.OpenForm(this.store.getAt(rowIndex).data);
                }
            }
        });

        this.btnPickup = new Ext.Button({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_PickupShareTask'),
            scope: this,
            handler: function () {
                YZSoft.BPM.TaskOption.PickupShareTask(this.grid);
            }
        });

        this.menuTraceChart = new Ext.menu.Item({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_TraceChart'),
            scope: this,
            handler: function (item) {
                sm = this.grid.getSelectionModel();
                recs = sm.getSelections() || new Array();

                if (recs.length != 1)
                    return;

                setTimeout(function () { YZSoft.BPM.Dialogs.ShowTaskTraceDlg(recs[0].data.TaskID, 0) }, 10);
            }
        });

        this.menuTraceList = new Ext.menu.Item({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_TraceDataList'),
            scope: this,
            handler: function (item) {
                sm = this.grid.getSelectionModel();
                recs = sm.getSelections() || new Array();

                if (recs.length != 1)
                    return;

                setTimeout(function () { YZSoft.BPM.Dialogs.ShowTaskTraceDlg(recs[0].data.TaskID, 1) }, 10);
            }
        });

        this.btnTrace = new Ext.Button({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Trace'),
            menu: { items: [this.menuTraceChart, this.menuTraceList] }
        });

        var cfg = {
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'border',
            items: [this.grid],
            tbar: [this.btnPickup, '|', this.btnTrace, '->', {
                xtype: 'button',
                scope: this,
                text: RS.$('YZStrings.All_Search_Clear'),
                handler: function () {
                    Ext.getCmp(this.idKeyword).setValue('');
                    Ext.getCmp(this.idCmbProcessName).setValue('');
                    this.store.baseParams = this.store.baseParams || {};
                    this.store.baseParams['SearchType'] = '';
                    this.store.reload({ params: { start: 0} });
                }
            }, ' ', {
                xtype: 'YZBPMProcessNameCmb',
                id: this.idCmbProcessName,
                emptyText: RS.$('YZStrings.BPM_Search_SelProcess_PromptText'),
                width: 135
            }, ' ', {
                xtype: 'YZSearchField',
                id: this.idKeyword,
                store: this.store,
                emptySearch: true,
                width: 160,
                showAdvButton: true,
                scope: this,
                handler: function (advBtn) {
                    this.dlg = YZSoft.DialogManager.ShowDialogExt(config.id + '-dlgs',
                        'YZSoft/BPM/Dialogs/HistoryTaskSearchDlg.js',
                        { disableTaskState: true },
                        { owner: advBtn, store: this.store });
                }
            }],
            listeners: {
                scope: this,
                activate: function () {
                    this.store.reload({ params: { start: this.store.cursor} });
                }
            }
        };

        Ext.apply(cfg, config);

        YZSoft.BPM.ShareTaskPanel.superclass.constructor.call(this, cfg);

        var sm = this.grid.getSelectionModel();
        if (sm) {
            sm.on('selectionchange', function () {
                this.updateStatus();
            }, this);
        }
    },

    initComponent: function () {
        YZSoft.BPM.ShareTaskPanel.superclass.initComponent.call(this);
        this.updateStatus();
    },

    RenderSN: function (value, p, record) {
        return String.format("<a href='#' onclick=\"YZSoft.BPM.ShareTaskPanel_OpenShareTask('{0}',{1},{2},'{3}')\">{4}</a>",
            this.grid.id,
            record.data.TaskID,
            record.data.StepID,
            YZSoft.HttpUtility.InlineJSEncode(record.data.SerialNum),
            YZSoft.HttpUtility.HtmlEncode(value));
    },

    OpenForm: function (item) {
        YZSoft.BPM.ShareTaskPanel_OpenShareTask(this.grid.id, item.TaskID, item.StepID, item.SerialNum);
    },

    updateStatus: function () {
        var sm = this.grid.getSelectionModel();
        var recs = sm.getSelections() || new Array();

        var pickup = true;
        var trace = true;

        if (recs.length == 0) {
            pickup = false;
            trace = false;
        }
        else {
            pickup = true;
            trace = true;

            if (recs.length > 1) {
                trace = false;
            }
        }

        this.btnPickup.setDisabled(!pickup);
        this.btnTrace.setDisabled(!trace);
    }
});
