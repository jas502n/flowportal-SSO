importJS("YZSoft/BPM/Scripts/BPMExt.js");
importJS("YZSoft/BPM/Scripts/TaskOption.js");

Ext.namespace("YZSoft.BPM");

YZSoft.BPM.MyTaskCommentPanel_OpenTaskForProcess = function(gridid, taskid, stepid, sn) {
    YZSoft.BPM.FormManager.OpenTaskForProcess(taskid, stepid, sn, null, {
        listeners: {
            scope: this,
            close: function(form) {
                if (form.dialogResult=='ok') {
                    var grid = Ext.getCmp(gridid);
                    if (grid) {
                        grid.store.reload({ params: { start: grid.store.cursor} });
                    }
                }
            }
        }
    });
};

YZSoft.BPM.MyTaskCommentPanel = Ext.extend(Ext.Panel, {
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
                { name: 'Description' },
                { name: 'Perm' }
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'MyApp/Demo/MyTaskComment/MyTaskComment.ashx'
            }),
            baseParams: { limit: YZSoft.EnvSetting.PageSize.defaultSize, SpecProcessName: config.SpecProcessName },
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

            // this.grid columns
            columns: [
                { header: RS.$('YZStrings.All_SN'), dataIndex: 'SerialNum', width: 130, align: 'left', sortable: true, scope: this, renderer: this.RenderSN },
                { header: RS.$('YZStrings.BPM_ProcessName'), dataIndex: 'ProcessName', width: 100, align: 'left', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_ProcessVersion'), hidden: true, dataIndex: 'ProcessVersion', width: 80, align: 'center', sortable: true,renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.All_Owner'), dataIndex: 'OwnerAccount', width: 100, align: 'center', sortable: true, renderer: YZSoft.BPM.Render.RenderTaskOwner },
                { header: RS.$('YZStrings.BPM_PostAt'), dataIndex: 'CreateAt', width: 128, align: 'center', sortable: true },
                { header: RS.$('YZStrings.BPM_CurStep'), dataIndex: 'NodeName', width: 100, align: 'center', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.All_Status'), hidden: true, dataIndex: 'State', width: 100, align: 'center', sortable: true, renderer: YZSoft.BPM.Render.RenderTaskState },
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

        this.btnBatchApprove = new Ext.Button({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_BatchApprove'),
            scope: this,
            handler: function () {
                YZSoft.BPM.TaskOption.BatchApprove(this.grid);
            }
        });

        this.btnReject = new Ext.Button({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Reject'),
            scope: this,
            handler: function () {
                YZSoft.BPM.TaskOption.Reject(this.grid);
            }
        });

        this.btnReturnToInitiator = new Ext.Button({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_ReturnToIniaiator'),
            scope: this,
            handler: function () {
                YZSoft.BPM.TaskOption.ReturnToInitiator(this.grid);
            }
        });

        this.btnTransfer = new Ext.Button({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Transfer'),
            scope: this,
            handler: function () {
                YZSoft.BPM.TaskOption.Transfer(this.grid);
            }
        });

        this.btnPutbackShareTask = new Ext.Button({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Share'),
            scope: this,
            handler: function () {
                YZSoft.BPM.TaskOption.PutbackShareTask(this.grid);
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

        this.menuTrace = new Ext.menu.Item({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Trace'),
            menu: { items: [this.menuTraceChart, this.menuTraceList] },
            handler: function (item) { return false }
        });

        this.menuPublic = new Ext.menu.Item({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Public'),
            scope: this,
            handler: function (item) {
                YZSoft.BPM.TaskOption.Public(this.grid);
            }
        });

        this.menuInviteIndicate = new Ext.menu.Item({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_InviteIndicate'),
            scope: this,
            handler: function (item) {
                YZSoft.BPM.TaskOption.InviteIndicate(this.grid);
            }
        });

        this.menuInform = new Ext.menu.Item({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Inform'),
            scope: this,
            handler: function (item) {
                YZSoft.BPM.TaskOption.Inform(this.grid);
            }
        });

        this.menuJump = new Ext.menu.Item({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Jump'),
            scope: this,
            handler: function (item) {
                YZSoft.BPM.TaskOption.Jump(this.grid);
            }
        });

        this.menuAbout = new Ext.menu.Item({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Abort'),
            scope: this,
            handler: function (item) {
                YZSoft.BPM.TaskOption.About(this.grid);
            }
        });

        this.menuDelete = new Ext.menu.Item({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Delete'),
            scope: this,
            handler: function (item) {
                YZSoft.BPM.TaskOption.Delete(this.grid);
            }
        });

        var cfg = {
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'border',
            items: [this.grid],
            tbar: [this.btnBatchApprove,
                this.btnReject,
                this.btnReturnToInitiator,
                '|',
                this.btnTransfer,
                '|',
                this.btnPutbackShareTask, '|', {
                    iconCls: 'blist',
                    text: RS.$('YZStrings.BPM_OpBtn_More'),
                    menu: {
                        items: [
                            this.menuTrace,
                            '-',
                            this.menuInform,
                            this.menuInviteIndicate,
                            this.menuPublic,
                            this.menuJump,
                            '-',
                            this.menuAbout,
                            this.menuDelete
                        ]
                    }
                }, '->', {
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

        YZSoft.BPM.MyTaskPanel.superclass.constructor.call(this, cfg);

        var sm = this.grid.getSelectionModel();
        if (sm) {
            sm.on('selectionchange', function () {
                this.updateStatus();
            }, this);
        }
    },

    initComponent: function () {
        YZSoft.BPM.MyTaskPanel.superclass.initComponent.call(this);
        this.updateStatus();
    },

    RenderSN: function (value, p, record) {
        return String.format("<a href='#' onclick=\"YZSoft.BPM.MyTaskCommentPanel_OpenTaskForProcess('{0}',{1},{2},'{3}')\">{4}</a>",
            this.grid.id,
            record.data.TaskID,
            record.data.StepID,
            YZSoft.HttpUtility.InlineJSEncode(record.data.SerialNum),
            YZSoft.HttpUtility.HtmlEncode(value));
    },

    OpenForm: function (item) {
        YZSoft.BPM.MyTaskCommentPanel_OpenTaskForProcess(this.grid.id, item.TaskID, item.StepID, item.SerialNum);
    },

    updateStatus: function () {
        var sm = this.grid.getSelectionModel();
        var recs = sm.getSelections() || new Array();

        var batchApprove = true;
        var reject = true;
        var returnToInitiator = true;
        var transfer = true;
        var putbackShareTask = true;
        var public1 = true;
        var jump = true;
        var about = true;
        var delete1 = true;
        var trace = true;
        var inviteIndicate = true;
        var inform = true;

        if (recs.length == 0) {
            batchApprove = false;
            reject = false;
            returnToInitiator = false;
            transfer = false;
            putbackShareTask = false;
            public1 = false;
            jump = false;
            about = false;
            delete1 = false;
            trace = false;
            inviteIndicate = false;
            inform = false;
        }
        else {
            Ext.each(recs, function (rec) {
                if (!rec.data.Perm.BatchApprove)
                    batchApprove = false;

                if (!rec.data.Perm.Reject)
                    reject = false;

                if (!rec.data.Perm.ReturnToInitiator)
                    returnToInitiator = false;

                if (!rec.data.Perm.Transfer)
                    transfer = false;

                if (!rec.data.Share)
                    putbackShareTask = false;

                if (!rec.data.Perm.Public)
                    public1 = false;

                if (!rec.data.Perm.Jump)
                    jump = false;

                if (!rec.data.Perm.About)
                    about = false;

                if (!rec.data.Perm.Delete)
                    delete1 = false;

                if (!rec.data.Perm.InviteIndicate)
                    inviteIndicate = false;

                if (!rec.data.Perm.Inform)
                    inform = false;
            });

            trace = true;

            if (recs.length > 1) {
                jump = false;
                trace = false;
            }
        }

        this.btnBatchApprove.setDisabled(!batchApprove);
        this.btnReject.setDisabled(!reject);
        this.btnReturnToInitiator.setDisabled(!returnToInitiator);
        this.btnTransfer.setDisabled(!transfer);
        this.btnPutbackShareTask.setDisabled(!putbackShareTask);
        this.menuPublic.setDisabled(!public1);
        this.menuJump.setDisabled(!jump);
        this.menuAbout.setDisabled(!about);
        this.menuDelete.setDisabled(!delete1);
        this.menuTrace.setDisabled(!trace);
        this.menuInviteIndicate.setDisabled(!inviteIndicate);
        this.menuInform.setDisabled(!inform);
    }
});
