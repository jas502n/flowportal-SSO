// JScript 文件
Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.ProcessNameAccountPeriodSearchDlg = Ext.extend(Ext.Window, {
    title:RS.$('YZStrings.All_AdvSearch'),
    layout:'fit',
    width:632,
    height:208,
    minWidth: 632,
    minHeight: 208,
    closeAction:'hide',
    plain: true,
    modal: true,
    bodyStyle:'padding:15px;',
    buttonAlign:'center',

    constructor : function(config){
        this.idProcessName = Ext.id();
        this.idNodeName = Ext.id();
        this.idAccount = Ext.id();
        this.idPeriod = Ext.id();
        
        var items = new Array();     
        config.initvalues = config.initvalues || {};
        
        if (!config.hideAccount)
        {
            items.push({
                xtype: 'compositefield',
                fieldLabel: RS.$('YZStrings.All_Employee'),
                items:[
                    {xtype: 'displayfield', value: RS.$('YZStrings.BPMDlg_SchDlg_EmployeeDesc'), width:180},
                    {xtype: 'YZUserField',id:this.idAccount,width:160,value:config.initvalues.Account}]
            });
        }
        
        items.push({
            xtype: 'compositefield',
            fieldLabel: RS.$('YZStrings.BPMDlg_Sch_ProcessName'),
            items:[
                {xtype: 'displayfield', value: RS.$('YZStrings.BPMDlg_Sch_ProcessNameDesc'), width:180},
                {xtype: 'YZBPMProcessNameCmb',id:this.idProcessName,value:config.initvalues.ProcessName}]
        });

        if (!config.hideNodeName)
        {
            items.push({
                xtype: 'compositefield',
                fieldLabel: RS.$('YZStrings.BPM_StepName'),
                items:[
                    {xtype: 'displayfield', value:RS.$('YZStrings.BPMDlg_SchDlg_StepNameDesc'), width:180},
                    {xtype: 'textfield',id:this.idNodeName,value:config.initvalues.NodeName}]
            });
        }
                
        items.push({
            xtype: 'compositefield',
            fieldLabel: RS.$('YZStrings.BPMDlg_SchDlgPNAP_Date'),
            items:[
                {xtype: 'displayfield', value: RS.$('YZStrings.BPMDlg_SchDlgPNAP_DateDesc'), width:180},
                {xtype: 'YZPeriodPicker',id:this.idPeriod,value:config.initvalues.PeriodDefine}]
        });
        
        this.form = new Ext.form.FormPanel({
            baseCls: 'x-plain',
            labelWidth: 100,
            defaultType: 'textfield',
            items:items
        });
        
        var cfg = { 
            items:[this.form],
            buttons: [{
                text:RS.$('YZStrings.All_Search'),
                scope:this,
                handler: function(){
                    var o = {start: 0};
                    var store = this.config.store;
                    var period = Ext.getCmp(this.idPeriod).getPeriod();
                    store.baseParams = store.baseParams || {};
                    store.baseParams['SearchType'] = 'AdvancedSearch';
                    store.baseParams['ProcessName'] = Ext.getCmp(this.idProcessName).getRawValue();
                    if (!this.hideNodeName)
                        store.baseParams['NodeName'] = Ext.getCmp(this.idNodeName).getValue();
                    if (!this.hideAccount)
                        store.baseParams['Account'] = Ext.getCmp(this.idAccount).getValue();
                        
                    store.baseParams['PeriodType'] = period.PeriodType;
                    store.baseParams['Date1'] = period.Date1;
                    store.baseParams['Date2'] = period.Date2;
                    store.baseParams['PeriodDefine'] = period.Define;
                    store.reload({params:o});
                    YZSoft.DialogManager.CloseDialog(this.id);
                }
            },{
                text: RS.$('YZStrings.All_Close'),
                scope:this,
                handler: function(){
                    YZSoft.DialogManager.CloseDialog(this.id);
                }
            }]
        };

        Ext.apply(cfg,config);
        YZSoft.BPM.Dialogs.ProcessNameAccountPeriodSearchDlg.superclass.constructor.call(this,cfg);
    },

    initComponent: function(){
        YZSoft.BPM.Dialogs.ProcessNameAccountPeriodSearchDlg.superclass.initComponent.call(this);
    }
});
