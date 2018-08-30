


Ext.namespace("YZSoft.Personal");

YZSoft.Personal.ShowProcessDefineDlg = function(formid){
    var form = Ext.getCmp(formid);
        
    YZSoft.DialogManager.ShowDialogExt('YZSoft/BPM/Dialogs/ProcessDefineDlg.js',
        'YZSoft/BPM/Dialogs/ProcessDefineDlg.js',{
            ProcessDefine:form.ProcessDefine,
            owner:form,
            fn:function(owner,processDefine){
                owner.SetProcessDefine(processDefine);
            }
        },
        {});
};

YZSoft.Personal.ShowDelegatorDlg = function(formid){
    var form = Ext.getCmp(formid);
        
    YZSoft.DialogManager.ShowDialogExt('YZSoft/BPM/Dialogs/ParticipantsDlg.js',
        'YZSoft/BPM/Dialogs/ParticipantsDlg.js',{
            DelegatorDefine:form.DelegatorDefine,
            owner:form,
            fn:function(owner,delegatorDefine){
                owner.SetDelegatorDefine(delegatorDefine);
            }
        },
    {});
};

YZSoft.Personal.Operator = {
    DeleteSelectedRules: function(grid) {

        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0) {
            Ext.Msg.show({
                title: RS.$('YZStrings.All_Warning'),
                msg: RS.$('YZStrings.Personal_TaskRule_Delete_NoSelection'),
                buttons: Ext.Msg.OK,
                icon: Ext.MessageBox.WARNING
            });
            return;
        }

        var params = {};
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["RuleID" + i] = recs[i].id;
        };

        Ext.Msg.show({
            title: RS.$('YZStrings.All_DeleteConfirm'),
            msg: RS.$('YZStrings.Personal_TaskRule_DeleteConfirm_Msg'),
            buttons: Ext.Msg.OKCANCEL,
            icon: Ext.MessageBox.INFO,

            fn: function(btn, text) {
                if (btn != 'ok')
                    return;

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/Personal/Service/DeleteRules.ashx',
                    params: params,
                    waitMsg: 'Deleting Rules...',
                    waitMsgTarget: grid.id,

                    success: function(action) {
                        grid.getStore().remove(sm.getSelections());
                    },

                    failure: function(action) {
                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_Warning'),
                            msg: action.result.errorMessage,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function(btn, text) {
                                var store = grid.getStore();
                                Ext.each(action.result.deletedItems, function(item) {
                                    store.removeAt(store.indexOfId(item.RuleID));
                                });
                            }
                        });
                    }
                });
            }
        });
    }
};

YZSoft.Personal.RuleEditPanel = Ext.extend(Ext.form.FormPanel, {    
    constructor : function(config){
        this.idType = Ext.id();
        this.idSubmit = Ext.id();
        this.id = config.id || Ext.id();
        
        var cfg = {
            frame:false,
            border:false,
            autoHeight:true,
            bodyStyle: 'padding:10px',
            hideLabels:true,
            defaultType: 'textfield',
            buttonAlign:'center',
            items:[{
                xtype: 'compositefield',
                items:[
                    {xtype:'displayfield',value:RS.$('YZStrings.Personal_TaskRule_RuleType')},
                    {name:'RuleType',xtype:'radiogroup', columns: 1,id:this.idType,items:[
                        {boxLabel: RS.$('YZStrings.Personal_TaskRule_RuleTypeDelegation'), name: 'RuleType', inputValue:'DelegationRule'},
                        {boxLabel: RS.$('YZStrings.Personal_TaskRule_RuleTypeAssistant'), name: 'RuleType', inputValue:'AssistantRule'}
                    ]}
                ]
            },{
                xtype: 'compositefield',
                items:[
                    {xtype:'displayfield',value:RS.$('YZStrings.Personal_TaskRule_Processes')},
                    {name:'ProcessLink',xtype:'displayfield'}
                ]
            },{
                xtype: 'compositefield',
                items:[
                    {xtype:'displayfield',value:RS.$('YZStrings.Personal_TaskRule_To')},
                    {name:'UserLink',xtype:'displayfield'}
                ]
            },{
                xtype: 'compositefield',
                items:[
                    {xtype:'displayfield',value:RS.$('YZStrings.All_IsValid')},
                    {name:'Enable',xtype:'checkbox',boxLabel:RS.$('YZStrings.All_Valid')}
                ]
            }]
        };
        
        Ext.apply(cfg,config);
        YZSoft.Personal.RuleEditPanel.superclass.constructor.call(this,cfg);
    },
    
    initComponent: function(){
        YZSoft.Personal.RuleEditPanel.superclass.initComponent.call(this);
    },
    
    SetValue:function(value){
        this.RuleID = value.RuleID;
        this.ProcessDefine = value.ProcessDefine || this.ProcessDefine;
        this.DelegatorDefine = value.DelegatorDefine || this.DelegatorDefine;

        if (value.ProcessDefine)
            value.ProcessLink = String.format("<a href='#' onclick=\"YZSoft.Personal.ShowProcessDefineDlg('{0}')\">{1}</a>",
                this.id,
                this.GetProcessDefineRenderString(value.ProcessDefine));
        
        if (value.DelegatorDefine)
            value.UserLink =  String.format("<a href='#' onclick=\"YZSoft.Personal.ShowDelegatorDlg('{0}')\">{1}</a>",
                this.id,
                this.GetDelagatorDefineRenderString(value.DelegatorDefine));

        this.getForm().setValues(value)
    },
    
    SetProcessDefine:function(value){
        var v = {
            RuleID:this.RuleID,
            ProcessDefine:value
        };
        
        this.SetValue(v);
    },

    SetDelegatorDefine:function(value){
        var v = {
            RuleID:this.RuleID,
            DelegatorDefine:value
        };
        
        this.SetValue(v);
    },
    
    GetProcessDefineRenderString:function(processDefine){
        var rv = '';

        switch (processDefine.ProcessDefineType)
        {
            case 'Empty':
                rv = RS.$('YZStrings.Personal_TaskRule_ProcessTypeEmpty');
                break;
            case 'All':
                rv = RS.$('YZStrings.Personal_TaskRule_ProcessTypeAll');
                break;
            case 'Include':
                rv = this.GetProcessNameListString(processDefine.children,true);
                break;
            case 'Exclude':
                rv = String.format(RS.$('YZStrings.Personal_TaskRule_ProcessTypeExclude'), this.GetProcessNameListString(processDefine.children,false));
                break;
        }

        if (!rv)
            rv = RS.$('YZStrings.Personal_TaskRule_ProcessTypeEmpty');
            
        return rv;
    },
    
    GetProcessNameListString:function(processItems,showCond){
        var rv = '';
        processItems = processItems || new Array();

        for(var i = 0 ; i < processItems.length ; i++)
        {
            var processItem = processItems[i];
            
            var itemDesc = processItem.ProcessName;
            if (showCond && processItem.Condition)
                itemDesc += "*";

            if (rv)
                rv += ';' + itemDesc;
            else
                rv = itemDesc;
        }
        
        return rv;
    },
    
    GetDelagatorDefineRenderString:function(delagatorDefine){
        var rv = '';
        
        var delagatorItems = delagatorDefine.children || new Array();

        for(var i = 0 ; i < delagatorItems.length ; i++)
        {
            var participant = delagatorItems[i];
            var itemDesc = participant.DisplayString;

            if (rv)
                rv += ';' + itemDesc;
            else
                rv = itemDesc;
        }

        if (!rv)
            rv = RS.$('YZStrings.All_Delegator');

        return rv;
    },
    
    GetSubmitParams:function(){
        rv = {};
        
        if (this.RuleID)
            rv.RuleID = this.RuleID;
            
        rv.ProcessDefineType = this.ProcessDefine.ProcessDefineType;

        var processItems = this.ProcessDefine.children || new Array();
        rv.ProcessCount = processItems.length;
        
        for(var i = 0 ; i < processItems.length ; i++)
        {
            var processItem = processItems[i];
            rv["ProcessName"+i] = processItem.ProcessName;
            rv["Conidition"+i] = processItem.Condition;
        }

        var delegatorItems = this.DelegatorDefine.children || new Array();
        rv.DelegatorCount = delegatorItems.length;
        
        for(var i = 0 ; i < delegatorItems.length ; i++)
        {
            var delegatorItem = delegatorItems[i];
            rv["ParticipantType"+i] = delegatorItem.ParticipantType;
            rv["SParam1"+i] = delegatorItem.SParam1;
            rv["SParam2"+i] = delegatorItem.SParam2;
            rv["SParam3"+i] = delegatorItem.SParam3;
            rv["SParam4"+i] = delegatorItem.SParam4;
            rv["SParam5"+i] = delegatorItem.SParam5;
            rv["LParam1"+i] = delegatorItem.LParam1;
            rv["LParam2"+i] = delegatorItem.LParam2;
            rv["LParam3"+i] = delegatorItem.LParam3;
            rv["Express"+i] = delegatorItem.Express;
        }
        
        return rv;
    }
});

YZSoft.Personal.TaskRulePanel = Ext.extend(Ext.Panel, {
    constructor: function (config) {
        this.idFormPanel = Ext.id();

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'RuleID',
            remoteSort: true,
            fields: [
                { name: 'RuleID' },
                { name: 'RuleType' },
                { name: 'Title' },
                { name: 'DelegatorDisplayString' },
                { name: 'ProcessDefine' },
                { name: 'DelegatorDefine' },
                { name: 'Enable' }
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/Personal/StoreDataService/TaskRule.ashx'
            }),

            listeners: {
                scope: this,
                load: function () {
                    if (this.store.reader.jsonData.forceSel) {
                        var sm = this.grid.getSelectionModel();
                        sm.selectRow(this.store.indexOfId(this.store.reader.jsonData.forceSel));
                    }
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
                { header: RS.$('YZStrings.Personal_TaskRule_GridCols_RuleDspName'), dataIndex: 'Title', width: 160, align: 'left', sortable: false, id: 'title', renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.All_Delegator'), dataIndex: 'DelegatorDisplayString', width: 220, align: 'left', sortable: false },
                { header: RS.$('YZStrings.All_Status'), dataIndex: 'Enable', width: 80, align: 'center', sortable: false, renderer: this.RenderEnable }
            ],

            autoExpandColumn: 'title',

            listeners: {
                scope: this,
                viewready: function () {
                    this.grid.getSelectionModel().selectRow(0);
                    this.updateStatus();
                }
            }
        });

        this.form = new YZSoft.Personal.RuleEditPanel({
            waitMsgTarget: this.idFormPanel
        });

        this.form.store = this.store;

        this.formbtnSave = new Ext.Button({
            text: RS.$('YZStrings.All_Save'),
            scope: this.form,
            handler: function () {
                if (!this.getForm().isValid()) {
                    Ext.Msg.AlertFormValidtionFailMsg();
                    return;
                }
                this.getForm().submit({
                    url: 'YZSoft/Personal/FormService/SaveRule.ashx',
                    params: Ext.apply({ method: 'submit' }, this.GetSubmitParams()),
                    waitMsg: 'Saving Data...',
                    scope: this,
                    success: function (form, action) {
                        Ext.Msg.alert(RS.$('YZStrings.Personal_TaskRule_Save_Success_Title'), RS.$('YZStrings.Personal_TaskRule_Save_Success_Msg'), function () {
                            if (this.store)
                                this.store.load({ params: { start: 0, forceSel: action.result.RuleID} });
                        },
                        this);
                    },
                    failure: function (form, action) {
                        Ext.Msg.AlertFormSubmitFailMsg(form, action, null, RS.$('YZStrings.Personal_TaskRule_Save_Fail_Msg'));
                    }
                });
            },
            iconCls: 'blist'
        });

        this.formStatus = new Ext.Toolbar.TextItem({
            text: ''
        });

        this.formpanel = new Ext.Panel({
            id: this.idFormPanel,
            region: 'south',
            split: true,
            border: false,
            cls: 'yz-panel-tbat-tb',
            height: 200,
            minHeight: 130,
            bodyStyle: 'padding:5px 5px 5px 5px',
            layout: 'fit',
            items: [this.form],
            tbar: [this.formStatus, '->', this.formbtnSave]
        });

        this.btnDelete = new Ext.Button({
            iconCls: 'blist',
            text: RS.$('YZStrings.All_Delete'),
            scope: this,
            handler: function () {
                YZSoft.Personal.Operator.DeleteSelectedRules(this.grid);
            }
        });

        this.btnNew = new Ext.Button({
            text: RS.$('YZStrings.All_New'),
            scope: this,
            handler: function () {
                var sm = this.grid.getSelectionModel();
                sm.clearSelections();

                var data = {
                    RuleID: -1,
                    RuleType: 'DelegationRule',
                    Enable: true,
                    ProcessDefine: {
                        ProcessDefineType: 'All'
                    },
                    DelegatorDefine: {
                }
            };

            this.form.SetValue(data);
            this.formStatus.setText(RS.$('YZStrings.Personal_TaskRule_New'));
            this.formbtnSave.enable();
            this.form.show();
            this.formpanel.doLayout();
        },
        iconCls: 'blist'
    });

    var cfg = {
        title: RS.$('YZStrings.Personal_TaskRulePanel_Title'),
        closable: true,
        border: false,
        rootVisible: false,
        autoScroll: true,
        layout: 'border',
        items: [this.grid, this.formpanel],
        tbar: [this.btnNew, '|', this.btnDelete]
    };

    Ext.apply(cfg, config);

    YZSoft.Personal.TaskRulePanel.superclass.constructor.call(this, cfg);

    var sm = this.grid.getSelectionModel();
    if (sm) {
        sm.on('selectionchange', function () {
            this.updateStatus();
        }, this);
    }
},

initComponent: function () {
    YZSoft.Personal.TaskRulePanel.superclass.initComponent.call(this);
    this.store.load({ params: { start: 0} });
},

RenderEnable: function (value, p, record) {
    if (value)
        return RS.$('YZStrings.All_Valid');
    else
        return RS.$('YZStrings.All_Invalid');
},

listeners: {
    beforeshow: function (group, chk) {
        this.updateStatus();
    }
},

updateStatus: function () {
    var sm = this.grid.getSelectionModel();
    if (sm.getCount() == 1) {
        var rec = sm.getSelected();
        this.form.SetValue(rec.data);
        this.formStatus.setText(RS.$('YZStrings.Personal_TaskRule_Edit'));
        this.formbtnSave.enable();
        this.form.show();
        this.form.doLayout();
    }
    else {
        this.formStatus.setText('');
        this.formbtnSave.disable();
        this.form.hide();
    }

    this.btnDelete.setDisabled(!this.grid.CanDelete());
}
});
