importJS("YZSoft/BPM/Scripts/BPMExt.js");
importJS("YZSoft/BPM/Grid/HistoryTaskGrid.js");
importJS("YZSoft/BPM/Store/HistoryTaskStore.js");
importJS("YZSoft/BPM/Scripts/TaskOption.js");

Ext.namespace("YZSoft.BPM");

YZSoft.BPM.HistoryTaskMyProcessedPanel = Ext.extend(Ext.Panel, {

    constructor: function (config) {
        this.store = new YZSoft.BPM.Store.HistoryTaskStore({
            baseParams: { limit: YZSoft.EnvSetting.PageSize.BPM.historyMyProcessed, HistoryTaskType: 'MyProcessed', SpecProcessName: config.SpecProcessName, byYear: config.byYear === false ? 0 : 1 },
            listeners: {
                scope: this,
                beforeload: function () {
                    if (this.store.baseParams['SearchType'] == 'AdvancedSearch') {
                        if (!config.SpecProcessName)
                            this.cmbProcessName.setValue(this.store.baseParams['ProcessName']);
                        if (config.byYear !== false)
                            this.periodPicker.setYear(this.store.baseParams['Year']);
                        this.searchField.setValue(this.store.baseParams['Keyword']);
                    }
                    if (this.store.baseParams['SearchType'] == 'QuickSearch') {
                        if (!config.SpecProcessName)
                            this.store.baseParams['ProcessName'] = this.cmbProcessName.getRawValue();
                    }

                    if (config.byYear !== false) {
                        var period = this.periodPicker.getPeriod();
                        this.store.baseParams['Year'] = period.Define.Year;
                    }
                },
                load: function () {
                    this.updateStatus();
                }
            }
        });

        this.grid = new YZSoft.BPM.Grid.HistoryTaskGrid({
            store: this.store,
            listeners: {
                scope: this,
                rowdblclick: function (grid, rowIndex, e) {
                    this.OpenForm(this.store.getAt(rowIndex).data);
                }
            }
        });

        this.btnPickback = new Ext.Button({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Pickback'),
            scope: this,
            handler: function () {
                YZSoft.BPM.TaskOption.Pickback(this.grid);
            }
        });

        this.btnPublic = new Ext.Button({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Public'),
            scope: this,
            handler: function () {
                YZSoft.BPM.TaskOption.Public(this.grid);
            }
        });

        this.menuReturnToInitiator = new Ext.menu.Item({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_ReturnToIniaiator'),
            scope: this,
            handler: function (item) {
                YZSoft.BPM.TaskOption.ReturnToInitiator(this.grid);
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

        this.menuTransfer = new Ext.menu.Item({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Transfer'),
            scope: this,
            handler: function (item) {
                YZSoft.BPM.TaskOption.TaskTransfer(this.grid);
            }
        });

        this.menuChangeOwner = new Ext.menu.Item({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_ChangeOwner'),
            scope: this,
            handler: function (item) {
                YZSoft.BPM.TaskOption.AssignOwner(this.grid);
            }
        });

        this.menuReject = new Ext.menu.Item({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Reject'),
            scope: this,
            handler: function (item) {
                YZSoft.BPM.TaskOption.Reject(this.grid);
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

        this.menuContinue = new Ext.menu.Item({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_Continue'),
            scope: this,
            handler: function (item) {
                YZSoft.BPM.TaskOption.Restore(this.grid);
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

        this.btnMore = new Ext.Button({
            iconCls: 'blist',
            text: RS.$('YZStrings.BPM_OpBtn_More'),
            menu: {
                items: [
                    this.menuInform,
                    this.menuInviteIndicate,
                    '-',
                    this.menuReturnToInitiator,
                    this.menuJump,
                    '-',
                    this.menuTransfer,
                    this.menuChangeOwner,
                    '-',
                    this.menuReject,
                    this.menuAbout,
                    this.menuDelete,
                    this.menuContinue
                ]
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

        this.btnClear = new Ext.Button({
            text: RS.$('YZStrings.All_Search_Clear'),
            scope: this,
            handler: function () {
                this.searchField.setValue('');
                if (!config.SpecProcessName)
                    this.cmbProcessName.setValue('');
                this.store.baseParams = this.store.baseParams || {};
                this.store.baseParams['SearchType'] = '';
                this.store.reload({ params: { start: 0} });
            }
        });

        this.periodPicker = new YZSoft.Form.PeriodPicker({
            types: ['year']
        });

        this.cmbProcessName = new YZSoft.BPM.Form.ProcessNameComboBox({
            emptyText: RS.$('YZStrings.All_SearchAllProcess'),
            width: 135
        });

        this.searchField = new YZSoft.Form.SearchField({
            store: this.store,
            emptySearch: true,
            width: 160,
            showAdvButton: true,
            emptyText: RS.$('YZStrings.All_SearchKeyword'),
            scope: this,
            handler: function (advBtn) {
                this.dlg = YZSoft.DialogManager.ShowDialogExt(config.id + '-dlgs',
                    'YZSoft/BPM/Dialogs/HistoryTaskSearchDlg.js',
                    { SpecProcessName: this.SpecProcessName, byYear: this.byYear!==false },
                    { owner: advBtn, store: this.store, year: this.periodPicker.getPeriod().Define.Year });
            }
        });

        var cfg = {
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'border',
            items: [this.grid],
            tbar: [this.btnPickback, '|', this.btnPublic, '|', this.btnMore, '|', this.btnTrace, '->', this.btnClear, ' ', this.periodPicker, ' ', this.cmbProcessName, ' ', this.searchField],
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

        if (config.SpecProcessName)
            cfg.tbar.splice(12, 2);
        if (config.byYear === false)
            cfg.tbar.splice(10, 2);

        Ext.apply(cfg, config);

        YZSoft.BPM.HistoryTaskMyProcessedPanel.superclass.constructor.call(this, cfg);

        var sm = this.grid.getSelectionModel();
        if (sm) {
            sm.on('selectionchange', function () {
                this.updateStatus();
            }, this);
        }
    },

    initComponent: function () {
        YZSoft.BPM.HistoryTaskMyProcessedPanel.superclass.initComponent.call(this);
        this.updateStatus();
    },

    OpenForm: function (item) {
        YZSoft.BPM.Grid.HistoryTaskGrid_OpenTaskForRead(this.grid.id, item.TaskID, item.SerialNum);
    },

    updateStatus: function () {
        var sm = this.grid.getSelectionModel();
        var recs = sm.getSelections() || new Array();

        var pickback = true;
        var public1 = true;
        var returnToInitiator = true;
        var jump = true;
        var transfer = true;
        var assignOwner = true;
        var reject = true;
        var about = true;
        var delete1 = true;
        var continue1 = true;
        var trace = true;
        var inviteIndicate = true;
        var inform = true;

        if (recs.length == 0) {
            pickback = false;
            public1 = false;
            returnToInitiator = false;
            jump = false;
            transfer = false;
            assignOwner = false;
            reject = false;
            about = false;
            delete1 = false;
            continue1 = false;
            trace = false;
            inviteIndicate = false;
            inform = false;
        }
        else {
            Ext.each(recs, function (rec) {
                if (!rec.data.Perm.PickBack)
                    pickback = false;

                if (!rec.data.Perm.Public)
                    public1 = false;

                if (!rec.data.Perm.ReturnToInitiator)
                    returnToInitiator = false;

                if (!rec.data.Perm.Jump)
                    jump = false;

                if (!rec.data.Perm.Transfer)
                    transfer = false;

                if (!rec.data.Perm.AssignOwner)
                    assignOwner = false;

                if (!rec.data.Perm.Reject)
                    reject = false;

                if (!rec.data.Perm.About)
                    about = false;

                if (!rec.data.Perm.Delete)
                    delete1 = false;

                if (!rec.data.Perm.Continue)
                    continue1 = false;

                if (!rec.data.Perm.InviteIndicate)
                    inviteIndicate = false;

                if (!rec.data.Perm.Inform)
                    inform = false;
            });

            trace = true;

            if (recs.length > 1) {
                jump = false;
                transfer = false;
                assignOwner = false;
                trace = false;
            }
        }

        this.btnPickback.setDisabled(!pickback);
        this.btnPublic.setDisabled(!public1);
        this.menuReturnToInitiator.setDisabled(!returnToInitiator);
        this.menuJump.setDisabled(!jump);
        this.menuTransfer.setDisabled(!transfer);
        this.menuChangeOwner.setDisabled(!assignOwner);
        this.menuReject.setDisabled(!reject);
        this.menuAbout.setDisabled(!about);
        this.menuDelete.setDisabled(!delete1);
        this.menuContinue.setDisabled(!continue1);
        this.btnTrace.setDisabled(!trace);
        this.menuInviteIndicate.setDisabled(!inviteIndicate);
        this.menuInform.setDisabled(!inform);
    }
});
