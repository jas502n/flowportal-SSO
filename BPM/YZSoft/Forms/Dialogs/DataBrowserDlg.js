// JScript 文件
Ext.namespace("YZSoft.XForm.Dialogs");

YZSoft.XForm.Dialogs.DataBrowserDlg = Ext.extend(Ext.Window, {
    layout: 'border',
    maximizable: true,
    width: 700,
    height: 380,
    minWidth: 400,
    minHeight: 180,
    closeAction: 'close',
    plain: false,
    modal: false,
    bodyStyle: 'padding:15px;',
    buttonAlign: 'center',

    constructor: function(config) {
        this.idSubmit = Ext.id();
        this.idKeyword = Ext.id();

        //获得窗体定义
        var url = resolveUrl('YZSoft/Forms/StoreDataService/DataBrowser.ashx');
        Ext.Ajax.request({
            method: 'GET',
            disableCaching: true,
            sync: true,
            params: { loadtype: 'schema', columnInfos: config.columnInfos },
            url: Ext.urlAppend(url,Ext.urlEncode(config.param)),
            scope: this,
            success: function(response) {
                this.viewDefine = Ext.decode(response.responseText);

                if (!this.viewDefine.success) {
                    var err = {
                        type: 'customError',
                        title: RS.$('YZStrings.BPMDlg_DataBrowser_ErrTitle'),
                        message: String.format(RS.$('YZStrings.BPMDlg_DataBrowser_ErrMsg'), url, this.viewDefine.errorMessage),
                        icon: Ext.MessageBox.WARNING
                    };

                    YZSoft.Error.Throw(err);
                }
            },

            failure: function(response) {
                var err = {
                    type: 'responseError',
                    response:response,
                    url: url,
                    title: RS.$('YZStrings.BPMDlg_DataBrowser_AjaxErrTitle'),
                    message: String.format(RS.$('YZStrings.BPMDlg_DataBrowser_AjaxErrMsg'), url)
                };

                YZSoft.Error.Throw(err);
            }
        });

        var storeFields = new Array();
        Ext.each(this.viewDefine.columns, function(column) {
            storeFields.push(column.ColumnName);
        });

        var baseParams = {
            loadtype: 'data',
            limit: 10,
            datasource: this.viewDefine.datasource,
            tablename: this.viewDefine.tablename,
            orderby: this.viewDefine.orderby,
            outputColumnCount: this.viewDefine.columns.length
        };

        Ext.each(this.viewDefine.columns, function(column, index) {
            baseParams['ColumnName' + index] = column.ColumnName;
            baseParams['FixFilter' + index] = column.FixFilter ? 1 : 0;
            baseParams['FixFilterValue' + index] = column.FixFilterValue;
            baseParams['FixFilterCmp' + index] = column.FixFilterCmp;
        });

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            remoteSort: true,
            fields: storeFields,

            proxy: new Ext.data.HttpProxy({
                method: 'POST',
                url: url
            }),

            baseParams: baseParams,
            listeners: {
                scope: this,
                beforeload: function() {
                    if (this.store.baseParams['SearchType'] == 'QuickSearch') {
                        this.store.baseParams['SearchParam'] = this.cmbSearchType.getValue();
                    }
                }
            }
        });

        this.sm = new Ext.grid.CheckboxSelectionModel({ singleSelect: config.singleSelect });

        var gridColumns = new Array();
        gridColumns.push(this.sm);
        var excolid;
        Ext.each(this.viewDefine.columns, function(column) {
            var gridColumn = {
                header: column.DisplayName,
                dataIndex: column.ColumnName,
                sortable: true,
                hidden: !column.Display,
                scope: this,
                width:column.Width,
                renderer: this.RenderValue
            };

            if (column.Display && column.Width == -1)
                excolid = gridColumn.id = Ext.id();

            gridColumns.push(gridColumn);
        }, this);

        if (!excolid){
            for (var i = gridColumns.length-1 ; i >=0 ; i--){
                if (!gridColumns[i].hidden){
                    excolid = gridColumns[i].id = Ext.id();
                    break;
                }
            }
        }
        
        this.grid = new Ext.grid.GridPanel({
            region: 'center',
            border: false,
            store: this.store,
            trackMouseOver: true,
            disableSelection: false,
            loadMask: true,
            stripeRows: true,
            sm: this.sm,
            columns: gridColumns,
            bbar: new Ext.PagingToolbar({
                pageSize: this.store.baseParams.limit,
                store: this.store,
                displayInfo: true
            }),
            listeners:{
                scope: this,
                rowdblclick: function(grid, rowIndex, e) {
                    if (this.sm.singleSelect)
                        this.OnOK();
                }
            }
        });

        if (excolid)
            this.grid.autoExpandColumn = excolid;

        var arrStore = new Array();
        arrStore.push({ value: 'all', text: RS.$('YZStrings.All_All') });
        Ext.each(this.viewDefine.columns, function(column, index) {
            if (column.AllowSearch && !column.FixFilter)
                arrStore.push({ value: column.ColumnName, text: column.DisplayName });
        });

        this.searchStore = new Ext.data.JsonStore({
            fields: ['value', 'text'],
            data: arrStore
        });

        this.cmbSearchType = new Ext.form.ComboBox({
            mode: 'local',
            store: this.searchStore,
            valueField: 'value',
            displayField: 'text',
            editable: false,
            forceSelection: true,
            triggerAction: 'all',
            width: 120,
            value: 'all'
        });

        var cfg = {
            layout: 'border',
            items: [this.grid],
            tbar: ['->', {
                xtype: 'button',
                scope: this,
                text: RS.$('YZStrings.All_Search_Clear'),
                handler: function() {
                    Ext.getCmp(this.idKeyword).setValue('');
                    this.cmbSearchType.setValue('all');
                    this.store.baseParams = this.store.baseParams || {};
                    this.store.baseParams['SearchType'] = '';
                    this.store.reload({ params: { start: 0} });
                }
            }, ' ', this.cmbSearchType, ' ', {
                xtype: 'YZSearchField',
                id: this.idKeyword,
                store: this.store,
                emptySearch: true,
                width: 160,
                showAdvButton: false,
                scope: this
            }],
            buttons: [{
                text: RS.$('YZStrings.All_OK'),
                id: this.idSubmit,
                disabled: true,
                scope: this,
                handler: function() {
                    this.OnOK();
                }
            }, {
                text: RS.$('YZStrings.All_Close'),
                scope: this,
                handler: function() {
                    YZSoft.DialogManager.CloseDialog(this.id);
                }
            }]
        };

        Ext.apply(cfg, config);
        cfg.title = config.title + '-' + this.viewDefine.tablename;

        YZSoft.XForm.Dialogs.DataBrowserDlg.superclass.constructor.call(this, cfg);

        this.sm.on('selectionchange', function() {
            this.updateStatus();
        }, this);
    },

    initComponent: function() {
        YZSoft.XForm.Dialogs.DataBrowserDlg.superclass.initComponent.call(this);
        this.updateStatus();
    },

    RenderValue: function(value, p, record, rowIndex, colIndex, store) {
        return YZSoft.HttpUtility.HtmlEncode(value);
    },

    updateStatus: function() {
        Ext.getCmp(this.idSubmit).setDisabled(!this.sm.hasSelection());
    },

    OnOK:function(){
        var sm = this.grid.getSelectionModel();
        var recs = sm.getSelections();
        if (recs) {
            var rows = new Array();
            Ext.each(recs, function(v) {
                rows.push(v.data);
            });

            YZSoft.DialogManager.CloseDialog(this.id, function() { this.fn(this.owner, rows) });
        }
    },

    listeners: {
        afterrender:function(group,chk){
            this.store.reload({ params: { start: 0} });
        }
    }
});
