Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.ParticipantsDlg = Ext.extend(Ext.Window, {
    title:RS.$('YZStrings.BPMDlg_PartiDlg_Title'),
    layout:'border',
    width:560,
    height:368,
    minWidth: 560,
    minHeight: 368,
    plain: true,
    modal: true,
    buttonAlign:'center',

    constructor : function(config){
        this.idBtnNew = Ext.id();
        this.idBtnEdit = Ext.id();
        this.idBtnRemove = Ext.id();
        this.idBtnMoveUp = Ext.id();
        this.idBtnMoveDown = Ext.id();
        		
       this.store = new YZSoft.Data.JsonStore({
            remoteSort: false,
            fields:[
                {name:'DisplayString'},
                {name:'ParticipantType'},
                {name:'SParam1'},
                {name:'SParam2'},
                {name:'SParam3'},
                {name:'SParam4'},
                {name:'SParam5'},
                {name:'LParam1'},
                {name:'LParam2'},
                {name:'LParam3'},
                {name:'Express'}
            ]
        });
        
        if (config.DelegatorDefine.children)
            this.store.loadData(config.DelegatorDefine.children);

        this.topicPnl = new Ext.Panel({
            region:'north',
            baseCls: 'x-plain',
            margins:'10 7 3 7',
            autoHeight:true,
            html:RS.$('YZStrings.BPMDlg_PartiDlg_Topic')
        });
        
        this.btnPnl = new Ext.Panel({
            region:'east',
            width:90,
            baseCls: 'x-plain',
            layout: {
                type:'vbox',
                padding:'5',
                pack:'top',
                align:'center'
            },
            defaults:{
                margins:'0 0 5 0',
                width:80
            },
            items:[{
                xtype:'button',
                text: RS.$('YZStrings.All_Add'),
                id:this.idBtnNew,
                scope:this,
                handler:function(){
                    YZSoft.BPM.Dialogs.ShowSelUserDlg({
                        owner:this,
                        fn:function(owner,users){
                            var store = owner.store;
                            var rds = new Array();
                            for(var i = 0 ; i < users.length ; i++)
                            {
                                var user = users[i];
                                var rd = new store.recordType({
                                    DisplayString:YZSoft.Render.GetUserDisplayName(user.Account,user.DisplayName),
                                    ParticipantType:'SpecifiedUser',
                                    SParam1:user.Account,
                                    LParam1:5,
                                    LParam2:0,
                                    LParam3:0
                                });
                                
                                rds.push(rd);
                            }
                            
                            store.add(rds);
                            sm.selectRecords(rds,false);
                        }
                    });
                }
            },{
                xtype:'button',
                text: RS.$('YZStrings.All_Edit'),
                id:this.idBtnEdit,
                scope:this,
                handler:function(){
                    YZSoft.BPM.Dialogs.ShowSelUserDlg({
                        singleSelect:true,
                        owner:this,
                        fn:function(owner,users){
                            var store = owner.store;
                            var rds = new Array();
                            for(var i = 0 ; i < users.length ; i++)
                            {
                                var user = users[i];
                                var rd = new store.recordType({
                                    DisplayString:user.Account,
                                    ParticipantType:'SpecifiedUser',
                                    SParam1:user.Account,
                                    LParam1:5,
                                    LParam2:0,
                                    LParam3:0
                                });
                                
                                rds.push(rd);
                            }
                            
                            var sm = owner.grid.getSelectionModel();
                            var selrd = sm.getSelected();
                            if (selrd)
                            {
                                var index = store.indexOf(selrd);
                                store.removeAt(index);
                                store.insert(index,rds);
                                sm.selectRecords(rds,false);
                            }
                        }
                    });
                }
            },{
                xtype:'button',
                text: RS.$('YZStrings.All_Remove'),
                id:this.idBtnRemove,
                scope:this,
                handler:function(){
                    var sm = this.grid.getSelectionModel();
                    this.store.remove(sm.getSelections());
                }
            },{
                xtype:'button',
                text: RS.$('YZStrings.All_MoveUp'),
                id:this.idBtnMoveUp,
                scope:this,
                handler:function(){
                    this.grid.MoveSelectionUp();
                }
            },{
                xtype:'button',
                text: RS.$('YZStrings.All_MoveDown'),
                id:this.idBtnMoveDown,
                scope:this,
                handler:function(){
                    this.grid.MoveSelectionDown();
                }
            }]
        });
        
        this.grid = new Ext.grid.GridPanel({
            region:'center',
            margins:'5 5 5 5',
            store: this.store,
            border:true,
            colModel : new Ext.grid.ColumnModel({
                defaults: {
                    sortable:false,
                    hideable:false,
                    menuDisabled:true
                },
                columns:[
                    {header:RS.$('YZStrings.BPMDlg_PartiDlg_GridCols_Delegator'),dataIndex: 'DisplayString',align: 'left',id:'account',renderer:YZSoft.Render.RenderString}
                ]
            }),
            autoExpandColumn:'account',
            listeners: {
                scope:this,
                viewready: function() {
                    this.updateStatus();
                }
            }
        });
        
        var cfg = { 
            items:[this.topicPnl,this.btnPnl,this.grid],
            buttons: [{
                text:RS.$('YZStrings.All_OK'),
                scope:this,
                handler: function(){
                    var rv = {};
                    rv.children = new Array();
                    for(var i = 0 ; i < this.store.getCount() ; i++)
                    {
                        var record = this.store.getAt(i);

                        var item = {};
                        item.DisplayString = record.data.DisplayString,
                        item.ParticipantType = record.data.ParticipantType;
                        item.SParam1 = record.data.SParam1;
                        item.SParam2 = record.data.SParam2;
                        item.SParam3 = record.data.SParam3;
                        item.SParam4 = record.data.SParam4;
                        item.SParam5 = record.data.SParam5;
                        item.LParam1 = record.data.LParam1;
                        item.LParam2 = record.data.LParam2;
                        item.LParam3 = record.data.LParam3;
                        item.Express = record.data.Express;
                        rv.children.push(item);
                    }
                    
                    YZSoft.DialogManager.CloseDialog(this.id,function(){this.fn(this.owner,rv)});
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
        YZSoft.BPM.Dialogs.ParticipantsDlg.superclass.constructor.call(this,cfg);
        
        var sm = this.grid.getSelectionModel();
        if (sm)
        {
            sm.on('selectionchange',function(){
                this.updateStatus();
            },this);
        }
    },

    initComponent: function(){
        YZSoft.BPM.Dialogs.ParticipantsDlg.superclass.initComponent.call(this);
    },
    
    listeners: {
        beforeshow:function(group,chk){
            this.updateStatus();
        }
    },
    
    updateStatus:function(){
        Ext.getCmp(this.idBtnEdit).setDisabled(!this.grid.CanEdit());
        Ext.getCmp(this.idBtnRemove).setDisabled(!this.grid.CanDelete());
        Ext.getCmp(this.idBtnMoveUp).setDisabled(!this.grid.CanMoveUp());
        Ext.getCmp(this.idBtnMoveDown).setDisabled(!this.grid.CanMoveDown());
    }
});
