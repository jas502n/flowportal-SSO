// JScript 文件
Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.AppLogSearchDlg = Ext.extend(Ext.Window, {
    title: RS.$('YZStrings.All_AdvSearch'),
    layout: 'fit',
    width: 632,
    height: 248,
    minWidth: 632,
    minHeight: 248,
    closeAction: 'hide',
    plain: true,
    modal: true,
    bodyStyle: 'padding:15px;',
    buttonAlign: 'center',

    constructor: function (config) {
        this.idDate = Ext.id();
        this.idAccount = Ext.id();
        this.idAction = Ext.id();
        this.idResult = Ext.id();
        this.idClientIP = Ext.id();
        this.idKeyword = Ext.id();

        var actionStore = new Ext.data.JsonStore({
            fields: ['name', 'value'],
            data: [
                { name: RS.$('YZStrings.All_SearchAll'), value: 'all' },
                { name: "Post", value: 'Post' },
                { name: "Process", value: 'Process' },
                { name: "Login", value: 'Login' },
                { name: "Logout", value: 'Logout' }
            ]
        });

        var resultStore = new Ext.data.JsonStore({
            fields: ['name', 'value'],
            data: [
                { name: RS.$('YZStrings.All_SearchAll'), value: 'all' },
                { name: RS.$('YZStrings.BPMAdmin_AppLog_Result_Success'), value: 'Success' },
                { name: RS.$('YZStrings.BPMAdmin_AppLog_Result_Fail'), value: 'Failed' }
            ]
        });

        this.form = new Ext.form.FormPanel({
            baseCls: 'x-plain',
            labelWidth: 100,
            defaultType: 'textfield',
            items: [{
                xtype: 'compositefield',
                fieldLabel: RS.$('YZStrings.BPMAdminDlg_SchAppLog_Date'),
                items: [
                    { xtype: 'displayfield', value: RS.$('YZStrings.BPMAdminDlg_SchAppLog_DateDesc'), width: 180 },
                    { xtype: 'datefield', id: this.idDate, width: 160, editable: false, value: new Date(), allowBlank: false}]
            }, {
                xtype: 'compositefield',
                fieldLabel: RS.$('YZStrings.BPMAdminDlg_SchAppLog_User'),
                items: [
                    { xtype: 'displayfield', value: RS.$('YZStrings.BPMAdminDlg_SchAppLog_UserDesc'), width: 180 },
                    { xtype: 'YZUserField', id: this.idAccount, width: 160}]
            }, {
                xtype: 'compositefield',
                fieldLabel: RS.$('YZStrings.BPMAdmin_AppLog_Op'),
                items: [
                    { xtype: 'displayfield', value: RS.$('YZStrings.BPMAdminDlg_SchAppLog_ActionDesc'), width: 180 },
                    { xtype: 'combo', id: this.idAction, mode: 'local', store: actionStore, displayField: 'name', valueField: 'value', value: 'all', editable: false, forceSelection: true, triggerAction: 'all', width: 160}]
            }, {
                xtype: 'compositefield',
                fieldLabel: RS.$('YZStrings.BPMAdmin_AppLog_Result'),
                items: [
                    { xtype: 'displayfield', value: RS.$('YZStrings.BPMAdminDlg_SchAppLog_Result'), width: 180 },
                    { xtype: 'combo', id: this.idResult, mode: 'local', store: resultStore, displayField: 'name', valueField: 'value', value: 'all', editable: false, forceSelection: true, triggerAction: 'all', width: 160}]
            }, {
                xtype: 'compositefield',
                fieldLabel: RS.$('YZStrings.BPMAdminDlg_SchAppLog_IP'),
                items: [
                    { xtype: 'displayfield', value: RS.$('YZStrings.BPMAdminDlg_SchAppLog_IPDesc'), width: 180 },
                    { xtype: 'textfield', id: this.idClientIP, width: 160, allowBlank: true}]
            }, {
                xtype: 'compositefield',
                fieldLabel: RS.$('YZStrings.BPMDlg_Sch_Keyword'),
                items: [
                    { xtype: 'displayfield', value: RS.$('YZStrings.BPMAdminDlg_SchAppLog_KeywordDesc'), width: 180 },
                    { xtype: 'textfield', id: this.idKeyword, width: 160, allowBlank: true}]
            }]
        });

        var cfg = {
            items: [this.form],
            buttons: [{
                text: RS.$('YZStrings.All_Search'),
                scope: this,
                handler: function () {
                    var o = { start: 0 };
                    var store = this.config.store;
                    store.baseParams = store.baseParams || {};
                    store.baseParams['SearchType'] = 'AdvancedSearch';
                    store.baseParams['Date'] = Ext.getCmp(this.idDate).getValue();
                    store.baseParams['Account'] = Ext.getCmp(this.idAccount).getValue();
                    store.baseParams['Action'] = Ext.getCmp(this.idAction).getValue();
                    store.baseParams['Result'] = Ext.getCmp(this.idResult).getValue();
                    store.baseParams['ClientIP'] = Ext.getCmp(this.idClientIP).getValue();
                    store.baseParams['Keyword'] = Ext.getCmp(this.idKeyword).getValue();
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
                    Ext.getCmp(this.idDate).setValue(this.config.store.baseParams['Date']);
                    Ext.getCmp(this.idKeyword).setValue(this.config.store.baseParams['Keyword']);
                }
            }
        };

        Ext.apply(cfg, config);
        YZSoft.BPM.Dialogs.AppLogSearchDlg.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.BPM.Dialogs.AppLogSearchDlg.superclass.initComponent.call(this);
    }
});
