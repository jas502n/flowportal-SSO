// JScript 文件

// JScript 文件
Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.SelProcessingStepDlg = Ext.extend(Ext.Window, {
    layout:'border',
    width:638,
    height:400,
    minWidth: 638,
    minHeight: 400,
    plain: true,
    modal: true,
    bodyStyle:'padding:15px;',
    buttonAlign:'center',

    constructor : function(config){
        this.idKeyword = Ext.id();
        this.idSubmit = Ext.id();
                
        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'StepID',
            remoteSort: false,
            baseParams:{TaskID:config.TaskID},
            
            fields: [
                {name:'StepID'},
                {name:'NodeNameOrg'},
                {name:'NodeName'},
                {name:'OwnerAccount'},
                {name:'OwnerDisplayName'},
                {name:'AgentAccount'},
                {name:'AgentDisplayName'},
                {name:'ReceiveAt'},
                {name:'Share'},
                {name:'Finished',defaultValue:false}
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/BPM/StoreDataService/TaskProcessingSteps.ashx'
            })
        });

        var sm = new Ext.grid.CheckboxSelectionModel();
        this.grid = new Ext.grid.GridPanel({
            region:'center',
            store: this.store,
            border:false,
            sm:sm,
            colModel : new Ext.grid.ColumnModel({
                defaults: {
                    sortable:false,
                    hideable:false,
                    menuDisabled:true
                },
                columns:[
                    sm,
                    {header:RS.$('YZStrings.BPM_StepName'),dataIndex: 'NodeName',align: 'left',width:120},
                    {header:RS.$('YZStrings.All_Owner'),dataIndex: 'OwnerAccount',align: 'left',width:120,renderer:YZSoft.BPM.Render.RenderStepOwner},
                    {header:RS.$('YZStrings.All_Delegator'),dataIndex: 'AgentAccount',align: 'left',renderer:YZSoft.BPM.Render.RenderStepAgent},
                    {header:RS.$('YZStrings.All_ReceiveAt'),dataIndex: 'ReceiveAt',align: 'left',id:'receiveAt'}
                ]
            }),
            autoExpandColumn:'receiveAt',
            listeners: {
                scope:this,
                viewready: function() {
                    if (this.store.getCount() == 1)
                        sm.selectRow(0);
                }
            }
        });
            
        var cfg = {
            items:[
                {region:'north',baseCls:'x-plain',border:false,html:'<b>' + config.captionText||RS.$('YZStrings.BPMDlg_SelProcessingStep') + '</b>',margins:'3 0 3 1',autoHeight:true},
                this.grid
            ],
            buttons: [{
                text:config.btnText||RS.$('YZStrings.All_OK'),
                id:this.idSubmit,
                scope:this,
                disabled:true,
                handler: function(){
                    var sm = this.grid.getSelectionModel();
                    var recs = sm.getSelections();
                    var stepIDs = new Array();
                    Ext.each(recs,function(v){
                        stepIDs.push(v.data.StepID);
                    });
                    
                    YZSoft.DialogManager.CloseDialog(this.id,function(){this.fn(this.owner,stepIDs)});
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
        YZSoft.BPM.Dialogs.SelProcessingStepDlg.superclass.constructor.call(this,cfg);
        
        sm.on('selectionchange',function(){
            this.updateStatus();
        },this);
    },

    initComponent: function(){
        YZSoft.BPM.Dialogs.SelProcessingStepDlg.superclass.initComponent.call(this);
        this.store.load({params:{start:0}});
    },
        
    updateStatus:function(){
        var disable = true;
        var sm = this.grid.getSelectionModel();
        var recs = sm.getSelections();
        if (recs.length >= 1)
            disable = false;
        
        Ext.getCmp(this.idSubmit).setDisabled(disable);
    }
});
