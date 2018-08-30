// JScript 文件
Ext.namespace("YZSoft.Reports.Dialogs");

YZSoft.Reports.Dialogs.ReportSearchDialog = Ext.extend(Ext.Window, {
    title:RS.$('YZStrings.All_AdvSearch'),
    layout:'fit',
    width:632,
    autoHeight:true,
    minWidth: 632,
    closeAction:'hide',
    plain: true,
    modal: true,
    bodyStyle:'padding:15px;',
    buttonAlign:'center',

    constructor : function(config){

        this.idmap = {};
        var formItems = new Array();
        
        //构建搜索项


        Ext.each(config.queryParams,function(queryParam){
            if (queryParam.BindType == 'AdvancedSearch' || queryParam.BindType == 'Both'){
                this.idmap[queryParam.Name] = Ext.id();
                formItems.push({
                    xtype: 'compositefield',
                    fieldLabel: queryParam.DisplayName,
                    items:[
                        {xtype: 'displayfield', value: queryParam.Description, width:220},
                        {xtype: 'textfield',id:this.idmap[queryParam.Name],allowBlank: true,width:120,value:config.store.baseParams[queryParam.Name]}
                    ]
                });
            }
        },this);
        
        //构建Form
        this.form = new Ext.form.FormPanel({
            baseCls: 'x-plain',
            labelWidth: 100,
            defaultType: 'textfield',
            items:formItems
        });
        
        //构建Dialog
        var cfg = { 
            items:[this.form],
            buttons: [{
                text:RS.$('YZStrings.All_Search'),
                scope:this,
                handler: function(){
                    var o = {start: 0};
                    var store = this.store;

                    store.baseParams = store.baseParams || {};
                    store.baseParams['SearchType'] = 'AdvancedSearch';

                    Ext.each(config.queryParams,function(queryParam){
                        if (queryParam.BindType == 'AdvancedSearch' || queryParam.BindType == 'Both'){
                            var field = Ext.getCmp(this.idmap[queryParam.Name]);
                            store.baseParams[queryParam.Name] = field.getValue();
                        }
                    },this);
                    
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
        YZSoft.Reports.Dialogs.ReportSearchDialog.superclass.constructor.call(this,cfg);
    },

    initComponent: function(){
        YZSoft.Reports.Dialogs.ReportSearchDialog.superclass.initComponent.call(this);
    }
});
