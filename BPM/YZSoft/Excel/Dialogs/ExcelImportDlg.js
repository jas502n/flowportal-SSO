// JScript 文件
Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.ExcelImportDlg = Ext.extend(Ext.Window, {
    layout:'border',
    maximizable:true,
    width: 700,
    height: 380,
    minWidth: 400,
    minHeight: 180,
    closeAction:'close',
    plain: false,
    modal: false,
    bodyStyle:'padding:15px;',
    buttonAlign:'center',

    constructor : function(config){
        this.idSubmit = Ext.id();
        
        this.store = new YZSoft.Data.JsonStore({
            fields: [],
            data:[]
        });

        this.sm = new Ext.grid.CheckboxSelectionModel();
        this.grid = new Ext.grid.GridPanel({
            disableSelection:true,
            region:'center',
            store: this.store,
            border:false,
            sm:this.sm,
            colModel : new Ext.grid.ColumnModel({
                defaults: {
                    sortable:false,
                    hideable:false,
                    menuDisabled:true
                },
                columns:[
                    {text:'&nbsp;',id:'col1'}
                ]
            }),
            autoExpandColumn:'col1'
        });

        this.txtFile = new Ext.form.FileUploadField({
            wraptag:'form',
            allowBlank:true,
            emptyText:RS.$('YZStrings.BPMDlg_ExcelImport_PromptText'),
            //buttonText: '',
            //buttonCfg: {iconCls: 'excel-upload-icon'},
            readOnly:true,
            width:260,
            listeners:{
                scope:this,
                fileselected:function(el,v){
                    var form = this.txtFile.wrap;
                    var fileName = this.txtFile.getValue();
                    var ext = YZSoft.File.GetExtension(fileName).toLowerCase();
                    
                    if (ext == '.xlsx'){
                        this.txtFile.setValue(this.currentFileName);
                        YZSoft.Error.Throw(RS.$('YZStrings.BPMDlg_ExcelImport_XLSX'), fileName);
                    }
                    else if(ext != '.xls'){
                        this.txtFile.setValue(this.currentFileName);
                        YZSoft.Error.Throw(RS.$('YZStrings.BPMDlg_ExcelImport_NOTXLS'), fileName);
                    }
                    
                    Ext.Ajax.request({
                        scope:this,
                        url: resolveUrl('YZSoft/Excel/Service/Excel2Json.ashx'),
                        method: 'POST',
                        form: form,
                        isUpload: true,
                        params: {},
                        success: function(response, opts) {
                            if (response.responseText){
                                var rv = Ext.decode(response.responseText);
                                if (rv.success){
                                    var sheets = this.sheets = rv.sheets;
                                    var rds = new Array();
                                    for(var i = 0 ; i < sheets.length ;i++){
                                        var sheet = sheets[i];
                                        var rd = new this.sheetsStore.recordType({
                                            value:i,
                                            name:sheet.name
                                        });
                                        
                                        rds.push(rd);
                                    }
                                    
                                    //更新Sheets组合框
                                    this.sheetsStore.removeAll();
                                    this.sheetsStore.add(rds);
                                    if (sheets.length != 0)
                                        this.cmbSheets.setValue(0);

                                    this.UpdateGrid(0)
                                    this.currentFileName = fileName;
                                }
                                else{
                                    this.txtFile.setValue(this.currentFileName);
                                        alert(Ext.util.Format.htmlDecode(rv.errorMessage));
                                }
                            }
                        }
                    });
                }
            }
        });
        
        this.sheetsStore = new Ext.data.JsonStore({
            fields : ['value','name'],
            data : new Array()
        });

        this.cmbSheets = new Ext.form.ComboBox({
            mode:'local',
            store:this.sheetsStore,
            valueField:'value',
            displayField:'name',
            emptyText:RS.$('YZStrings.BPMDlg_ExcelImport_PromptTextSheet'),
            editable:false,
            forceSelection: true,
            triggerAction:'all',
            width:120,
            listeners:{
                scope:this,
                select:this.UpdateGrid
            }
        });
        
        var cfg = {
            title:RS.$('YZStrings.BPMDlg_ExcelImport_Title'),
            layout:'border',
            items:[this.grid],
            tbar:[RS.$('YZStrings.BPMDlg_ExcelImport_LabFile'),this.txtFile,'->',RS.$('YZStrings.BPMDlg_ExcelImport_LabSheet'),this.cmbSheets],
            buttons: [{
                text:RS.$('YZStrings.All_OK'),
                id:this.idSubmit,
                disabled:true,
                scope:this,
                handler: function(){
                    var sm = this.grid.getSelectionModel();
                    var recs = sm.getSelections();
                    if (recs){
                        var rows = new Array();
                        Ext.each(recs,function(v){
                            rows.push(v.data);
                        });
                        
                        YZSoft.DialogManager.CloseDialog(this.id,function(){this.fn(this.owner,rows)});
                    }
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
        YZSoft.BPM.Dialogs.ExcelImportDlg.superclass.constructor.call(this,cfg);
        
        this.sm.on('selectionchange',function(){
            this.updateStatus();
        },this);
    },

    initComponent: function(){
        YZSoft.BPM.Dialogs.ExcelImportDlg.superclass.initComponent.call(this);
    },

    UpdateGrid : function(){
        if (!this.sheets)
            return;

        var sheet = this.sheets[this.cmbSheets.getValue()];
        if (!sheet)
            return;

        this.grid.el.parent().parent().mask(RS.$('YZStrings.All_Loading'),'x-mask-loading');
        var my = this;
        setTimeout(function(){
            var store = new YZSoft.Data.JsonStore({
                fields:sheet.columns,
                data:sheet.rows
            });
            
            var columns = new Array();
            
            if (sheet.columns.length >= 1 || 
                sheet.rows.length > 0 || 
                (sheet.columns.length > 0 && !Ext.isEmpty(sheet.columns[0].text)))
            {
                columns.push(my.sm);
            }
                
            var lastColumn;
            Ext.each(sheet.columns,function(excelColumn){
                lastColumn = excelColumn;
                var column = {
                    id:excelColumn.name,
                    header:excelColumn.text,
                    dataIndex:excelColumn.name,
                    renderer:YZSoft.Render.RenderString
                };
                
                columns.push(column);
            });
            
            var colModel = new Ext.grid.ColumnModel(columns);

            my.grid.autoExpandColumn = lastColumn ? lastColumn.name : null;
            my.grid.reconfigure(store,colModel);
            
            my.sm.selectAll();
            my.grid.el.parent().parent().unmask();
            my.updateStatus();
        },10);
    },
    
    updateStatus:function(){
        Ext.getCmp(this.idSubmit).setDisabled(!this.sm.hasSelection());
    },
    
    listeners:{
    }
});
