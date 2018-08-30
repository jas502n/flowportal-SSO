// JScript 文件
importJS("YZSoft/BPM/Scripts/BPMExt.js");

// JScript 文件
Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.JumpDlg = Ext.extend(Ext.Window, {
    title:RS.$('YZStrings.BPMDlg_JumpDlg_Title'),
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
                
        this.store1 = new YZSoft.Data.JsonStore({
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
                url: resolveUrl('YZSoft/BPM/StoreDataService/TaskProcessingSteps.ashx')
            })
        });

        this.store2 = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'NodeName',
            remoteSort: false,
            baseParams:{TaskID:config.TaskID},
            
            fields: [
                {name:'NodeName'},
                {name:'OwnerAccount'}
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: resolveUrl('YZSoft/BPM/StoreDataService/TaskHumanSteps.ashx')
            })
        });

        var sm1 = new Ext.grid.CheckboxSelectionModel();
        this.grid1 = new Ext.grid.GridPanel({
            region:'center',
            store: this.store1,
            border:false,
            sm:sm1,
            colModel : new Ext.grid.ColumnModel({
                defaults: {
                    sortable:false,
                    hideable:false,
                    menuDisabled:true
                },
                columns:[
                    sm1,
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
                    if (!Ext.isEmpty(this.InitCheckStep)){
                        sm1.selectRow(this.store1.indexOfId(this.InitCheckStep));
                    }
                    else if(this.store1.getCount()==1){
                        sm1.selectRow(0);
                    }

                    this.updateStatus();
                }
            }
        });
     
        var sm2 = new Ext.grid.CheckboxSelectionModel({singleSelect:true});
        this.grid2 = new Ext.grid.GridPanel({
            region:'center',
            store: this.store2,
            border:false,
            sm:sm2,
            colModel : new Ext.grid.ColumnModel({
                defaults: {
                    sortable:true,
                    hideable:true,
                    menuDisabled:false
                },
                columns:[
                    sm2,
                    {header:RS.$('YZStrings.BPM_StepName'),dataIndex: 'NodeName',align: 'left',id:'nodeName',renderer:YZSoft.Render.RenderString}
                ]
            }),
            autoExpandColumn:'nodeName',
            listeners: {
                scope:this,
                viewready: function() {
                    this.updateStatus();
                }
            }
        });
       
        var cfg = {
            items:[
                {region:'north', layout:'border',border:false,baseCls:'x-plain',items:[{region:'north',baseCls:'x-plain', cls:'yz-sp-titlepanel',border:false,html:'<b>' + RS.$('YZStrings.BPMDlg_JumpDlg_SubTitle_Src') + '</b>',autoHeight:true},this.grid1],split:true,height:120,minHeight:80},
                { region: 'center', layout: 'border', border: false, baseCls: 'x-plain', items: [{ region: 'north', baseCls: 'x-plain', cls: 'yz-sp-titlepanel', border: false, html: '<b>' + RS.$('YZStrings.BPMDlg_JumpDlg_SubTitle_Tag') + '</b>', autoHeight: true }, this.grid2] }
            ],
            buttons: [{
                text:RS.$('YZStrings.All_OK'),
                id:this.idSubmit,
                scope:this,
                handler: function(){
                    var sm1 = this.grid1.getSelectionModel();
                    var recs1 = sm1.getSelections();
                    var fromStepIDs = new Array();
                    Ext.each(recs1,function(v){
                        fromStepIDs.push(v.data.StepID);
                    });

                    var sm2 = this.grid2.getSelectionModel();
                    var recs2 = sm2.getSelections();
                    if (recs2.length != 1)
                        return;
                    var toStepName = recs2[0].data.NodeName;
                        
                    YZSoft.DialogManager.CloseDialog(this.id,function(){this.fn(this.owner,fromStepIDs,toStepName)});
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
        YZSoft.BPM.Dialogs.JumpDlg.superclass.constructor.call(this,cfg);
        
        sm1.on('selectionchange',function(){
            this.updateStatus();
        },this);
        
        sm2.on('selectionchange',function(){
            this.updateStatus();
        },this);
    },

    initComponent: function(){
        YZSoft.BPM.Dialogs.JumpDlg.superclass.initComponent.call(this);
        this.store1.load({params:{start:0}});
        this.store2.load({params:{start:0}});
    },
    
    updateStatus:function(){
        var disable = true;
        var sm1 = this.grid1.getSelectionModel();
        var sm2 = this.grid2.getSelectionModel();
        if (sm1 && sm1.hasSelection() && sm2 && sm2.hasSelection())
            disable = false;
        
        Ext.getCmp(this.idSubmit).setDisabled(disable);
    }
});
