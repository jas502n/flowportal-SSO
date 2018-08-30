// JScript 文件
Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.HistoryTaskSearchDlg = Ext.extend(Ext.Window, {
    title: RS.$('YZStrings.All_AdvSearch'),
    layout: 'fit',
    width: 632,
    height: 304,
    minWidth: 632,
    minHeight: 304,
    closeAction: 'hide',
    plain: true,
    modal: true,
    bodyStyle: 'padding:15px;margin:0px',
    buttonAlign: 'center',

    constructor: function (config) {
        this.idProcessName = Ext.id();
        this.idPostUserAccount = Ext.id();
        this.idPeriodPost = Ext.id();
        this.idTaskStatus = Ext.id();
        this.idKeyword = Ext.id();
        this.idTaskId = Ext.id();
        this.idSerialNum = Ext.id();
        this.idCurRecpAccount = Ext.id();
        this.idCurRecpAccountField = Ext.id();

        var taskStateStore = new Ext.data.JsonStore({
            fields: ['name', 'value'],
            data: [
                { name: RS.$('YZStrings.All_SearchAll'), value: 'all' },
                { name: RS.$('YZStrings.All_Running'), value: 'Running' },
                { name: RS.$('YZStrings.All_Approved'), value: 'Approved' },
                { name: RS.$('YZStrings.All_Rejected'), value: 'Rejected' },
                { name: RS.$('YZStrings.All_Aborted'), value: 'Aborted' }
            ]
        });

        var periodPickCfg = { xtype: 'YZPeriodPicker', id: this.idPeriodPost }
        if (config.byYear)
            periodPickCfg.types = ['year', 'month', 'quator', 'day', 'period'];

        var items = [{
            xtype: 'compositefield',
            fieldLabel: RS.$('YZStrings.BPMDlg_Sch_ProcessName'),
            items: [
                { xtype: 'displayfield', value: RS.$('YZStrings.BPMDlg_Sch_ProcessNameDesc'), width: 180 },
                { xtype: 'YZBPMProcessNameCmb', id: this.idProcessName}]
        }, {
            xtype: 'compositefield',
            fieldLabel: RS.$('YZStrings.BPMDlg_Sch_Initiator'),
            disabled: config && config.disablePostUserAccount,
            items: [
                { xtype: 'displayfield', value: RS.$('YZStrings.BPMDlg_Sch_InitiatorDesc'), width: 180 },
                { xtype: 'YZUserField', id: this.idPostUserAccount, width: 160}]
        }, {
            xtype: 'compositefield',
            fieldLabel: RS.$('YZStrings.BPMDlg_Sch_PostDate'),
            items: [
                { xtype: 'displayfield', value: RS.$('YZStrings.BPMDlg_Sch_PostDateDesc'), width: 180 },
                periodPickCfg]
        }, {
            xtype: 'compositefield',
            fieldLabel: RS.$('YZStrings.BPMDlg_Sch_TaskStatus'),
            disabled: config && config.disableTaskState,
            items: [
                { xtype: 'displayfield', value: RS.$('YZStrings.BPMDlg_Sch_TaskStatusDesc'), width: 180 },
                { xtype: 'combo', id: this.idTaskStatus, mode: 'local', store: taskStateStore, displayField: 'name', valueField: 'value', value: 'all', editable: false, forceSelection: true, triggerAction: 'all', width: 160, listeners: { scope: this, select: this.TaskStateTypeChanged}}]
        }, {
            xtype: 'compositefield',
            fieldLabel: '',
            labelSeparator: null,
            id: this.idCurRecpAccountField,
            disabled: true,
            items: [
                { xtype: 'displayfield', value: RS.$('YZStrings.BPMDlg_Sch_Recipient'), width: 180 },
                { xtype: 'YZUserField', id: this.idCurRecpAccount, width: 160}]
        }, {
            xtype: 'compositefield',
            fieldLabel: RS.$('YZStrings.BPMDlg_Sch_TaskID'),
            items: [
                { xtype: 'displayfield', value: RS.$('YZStrings.BPMDlg_Sch_TaskIDDesc'), width: 180 },
                { xtype: 'textfield', id: this.idTaskId, width: 160, allowBlank: true}]
        }, {
            xtype: 'compositefield',
            fieldLabel: RS.$('YZStrings.BPMDlg_Sch_SN'),
            items: [
                { xtype: 'displayfield', value: RS.$('YZStrings.BPMDlg_Sch_SNDesc'), width: 180 },
                { xtype: 'textfield', id: this.idSerialNum, width: 160, allowBlank: true}]
        }, {
            xtype: 'compositefield',
            fieldLabel: RS.$('YZStrings.BPMDlg_Sch_Keyword'),
            items: [
                { xtype: 'displayfield', value: RS.$('YZStrings.BPMDlg_SchHistoryTask_KeywordDesc'), width: 180 },
                { xtype: 'textfield', id: this.idKeyword, width: 160, allowBlank: true}]
        }];

        if (config.SpecProcessName)
            items.splice(0, 1);

        this.form = new Ext.form.FormPanel({
            baseCls: 'x-plain',
            labelWidth: 100,
            defaultType: 'textfield',
            items: items
        });

        var cfg = {
            items: [this.form],
            buttons: [{
                text: RS.$('YZStrings.All_Search'),
                scope: this,
                handler: function () {
                    var o = { start: 0 };
                    var store = this.config.store;
                    var period = Ext.getCmp(this.idPeriodPost).getPeriod();
                    store.baseParams = store.baseParams || {};
                    store.baseParams['SearchType'] = 'AdvancedSearch';
                    if (period.Date1)
                        store.baseParams['Year'] = period.Date1.getFullYear();
                    if (!config.SpecProcessName)
                        store.baseParams['ProcessName'] = Ext.getCmp(this.idProcessName).getRawValue();
                    store.baseParams['PostUserAccount'] = Ext.getCmp(this.idPostUserAccount).getValue();
                    store.baseParams['PostDateType'] = period.PeriodType;
                    store.baseParams['PostDate1'] = period.Date1;
                    store.baseParams['PostDate2'] = period.Date2;
                    store.baseParams['TaskStatus'] = Ext.getCmp(this.idTaskStatus).getValue();
                    store.baseParams['Keyword'] = Ext.getCmp(this.idKeyword).getValue();
                    store.baseParams['TaskID'] = Ext.getCmp(this.idTaskId).getValue();
                    store.baseParams['SerialNum'] = Ext.getCmp(this.idSerialNum).getValue();
                    store.baseParams['RecipientUserAccount'] = Ext.getCmp(this.idCurRecpAccount).getValue();
                    store.reload({ params: o });
                    YZSoft.DialogManager.CloseDialog(this.id);
                }
            }, {
                text: RS.$('YZStrings.All_Close'),
                scope: this,
                handler: function () {
                    YZSoft.DialogManager.CloseDialog(this.id);
                }
            }],
            listeners: {
                scope: this,
                beforeshow: function () {
                    if (this.byYear)
                        Ext.getCmp(this.idPeriodPost).setYear(this.config.year);
                }
            }
        };

        Ext.apply(cfg, config);

        if (config.SpecProcessName) {
            cfg.height = 284;
            cfg.minHeight = 284;
        }

        YZSoft.BPM.Dialogs.HistoryTaskSearchDlg.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.BPM.Dialogs.HistoryTaskSearchDlg.superclass.initComponent.call(this);
    },

    TaskStateTypeChanged: function (combo, record, index) {
        Ext.getCmp(this.idCurRecpAccountField).setDisabled(record.data.value != 'Running');
        this.doLayout();
    }
});
