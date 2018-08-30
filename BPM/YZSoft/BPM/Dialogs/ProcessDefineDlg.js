Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.ProcessDefineDlg = Ext.extend(Ext.Window, {
    title:RS.$('YZStrings.BPMDlg_ProcessDefDlg_Title'),
    layout:'fit',
    width:560,
    height:368,
    minWidth: 560,
    minHeight: 368,
    plain: true,
    modal: true,
    bodyStyle:'padding:5px 10px 10px 10px',
    buttonAlign:'center',

    constructor : function(config){
        this.idType = Ext.id();
        this.idTypeAll = Ext.id();
        this.idCond = Ext.id();
                
        this.store = new YZSoft.Data.JsonStore({
            processItems:config.ProcessDefine.children || new Array(),
            remoteSort: false,
            fields: ['checked','name','cond'],
            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/BPM/StoreDataService/ProcessNameList.ashx'
            }),
            listeners: {
                'load' : function(){
                    for(var i = 0 ; i < this.getCount() ; i++){
                        var record = this.getAt(i);
                        var processName = record.data.name;
                        
                        for(var j = 0 ; j < this.processItems.length ; j++){
                            var processItem = this.processItems[j];
                            if (processName == processItem.ProcessName){
                                record.set('checked', true);
                                record.set('cond', processItem.Condition);
                            }
                        }
                    }
                }
            }
        });
        
        //this.store.setDefaultSort('name', 'asc');

        this.defaultCm = new Ext.grid.ColumnModel({
            defaults: {
                sortable:false,
                hideable:false,
                menuDisabled:true
            },
            columns:[
                {xtype:'checkcolumn',header: '',dataIndex: 'checked',width: 26,fixed:true},
                {header:RS.$('YZStrings.BPMDlg_ProcessDefDlg_ProcessName'),dataIndex: 'name',width: 100,align: 'left', renderer:YZSoft.Render.RenderString},
                {header:RS.$('YZStrings.BPMDlg_ProcessDefDlg_Cond'),dataIndex: 'cond',align: 'left',id:this.idCond,editor:new Ext.form.TextField({allowBlank: true})}
            ]
        }),

        this.grid = new Ext.grid.EditorGridPanel({
            border:false,
            store: this.store,
            clicksToEdit: 1,
            loadMask: true,
            x:0,
            y:72,
            anchor: '100% 100%',
            colModel:this.defaultCm,
            autoExpandColumn:this.idCond,
            viewConfig:{
                markDirty: false
            }
        });
        
        this.form = new Ext.form.FormPanel({
            baseCls: 'x-plain',
            layout:'absolute',
            defaultType: 'textfield',
            items:[{name:'RuleType',xtype:'radiogroup',hideLabel: true, columns: 1,x:0,Y:0,anchor:'100%',value:config.ProcessDefine.ProcessDefineType,id:this.idType,items:[
                    {boxLabel: RS.$('YZStrings.BPMDlg_ProcessDefDlg_All'), name: 'ProcessDefineType', inputValue:'All',id:this.idTypeAll},
                    {boxLabel: RS.$('YZStrings.BPMDlg_ProcessDefDlg_Include'), name: 'ProcessDefineType', inputValue:'Include'},
                    {boxLabel: RS.$('YZStrings.BPMDlg_ProcessDefDlg_Exclude'), name: 'ProcessDefineType', inputValue:'Exclude'}
                    ],
                    listeners: {
                        scope:this,
                        change:function(group,chk){
                            this.updateStatus();
                        }
                    }
                },
                this.grid
            ]
        });
        
        var cfg = { 
            items:[this.form],
            buttons: [{
                text:RS.$('YZStrings.All_OK'),
                scope:this,
                handler: function(){
                    var rv = {};
                    
                    this.grid.stopEditing();
                    var rdo = Ext.getCmp(this.idType).getValue();
                    rv.ProcessDefineType = rdo ? rdo.inputValue:'Empty';
                    rv.children = new Array();
                    for(var i = 0 ; i < this.store.getCount() ; i++)
                    {
                        var record = this.store.getAt(i);
                        if (record.get('checked'))
                        {
                            var item = {};
                            item.ProcessName = record.data.name;
                            item.Condition = record.data.cond;
                            rv.children.push(item);
                        }
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
        YZSoft.BPM.Dialogs.ProcessDefineDlg.superclass.constructor.call(this,cfg);
    },

    initComponent: function(){
        YZSoft.BPM.Dialogs.ProcessDefineDlg.superclass.initComponent.call(this);
        this.store.load({params:{start:0}});
    },
    
    updateStatus:function(){
        var v = '';
        var rdo = Ext.getCmp(this.idType).getValue();
        if (rdo)
            v = rdo.inputValue;
                
        var cm = this.defaultCm;
        if (v == 'Include')
        {
            cm.columns[2].dataIndex = 'cond';
            cm.columns[2].editable = true;
            this.grid.reconfigure(this.store,cm);
            this.grid.enable();
        }
        else if (v == 'Exclude')
        {
            cm.columns[2].dataIndex = 'empty';
            cm.columns[2].editable = false;
            this.grid.reconfigure(this.store,cm);
            this.grid.enable();
        }
        else
        {
            cm.columns[2].dataIndex = 'empty';
            cm.columns[2].editable = false;
            this.grid.reconfigure(this.store,cm);
            this.grid.disable();
        }
    },
    
    listeners: {
        afterrender:function(group,chk){
            this.updateStatus();
        }
    }
});
