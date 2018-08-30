Ext.namespace("YZSoft.CRM");

YZSoft.CRM.CRMOption = {
    DeleteCRM: function(grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'Delete';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["Item" + i] = recs[i].id;
        };

        Ext.Msg.show({
            title: '删除确认',
            msg: '您确定要删除选中项吗？',
            buttons: Ext.Msg.OKCANCEL,
            icon: Ext.MessageBox.INFO,

            fn: function(btn, text) {
                if (btn != 'ok')
                    return;

                YZSoft.Ajax.RFC({
                    url: 'YZApp/CRM/Delete.ashx',
                    params: params,
                    waitMsg: '正在删除...',
                    waitMsgTarget: grid.id,

                    success: function(action) {
                        var store = grid.getStore();
                        store.reload({ params: { start: store.cursor} });
                    },

                    failure: function(action) {
                        Ext.Msg.show({
                            title: '错误提示',
                            msg: YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true),
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function(btn, text) {
                                var store = grid.getStore();
                                store.reload({ params: { start: store.cursor} });
                            }
                        });
                    }
                });
            }
        });
    }
}

YZSoft.CRM.CRMPanel = Ext.extend(Ext.Panel, {
    constructor: function(config) {
        this.idKeyword = Ext.id();

        //调试时显示模块的权限
        //alert(Ext.encode(config.perm));

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'id',
            remoteSort: true,
            baseParams: { limit: YZSoft.EnvSetting.PageSize.defaultSize },
            fields: [
                { name: 'id' },
                { name: '公司' },
                { name: '联系人' },
                { name: '电话' },
                { name: 'perm' }
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZApp/CRM/CRMData.ashx'
            }),
            listeners: {
                scope: this,
                load: function() {
                    if (!Ext.isEmpty(this.grid.loadSelectId)) {
                        var sm = this.grid.getSelectionModel();
                        var rd = this.store.getById(this.grid.loadSelectId);
                        if (rd)
                            sm.selectRecords([rd]);
                        this.grid.loadSelectId = '';
                    }

                    this.updateStatus();
                }
            }
        });

        this.store.setDefaultSort('id', 'asc');

        this.grid = new Ext.grid.GridPanel({
            border: false,
            store: this.store,
            trackMouseOver: true,
            disableSelection: false,
            loadMask: true,
            region: 'center',
            stripeRows: true,

            // grid columns
            columns: [
                { header: '编号', dataIndex: 'id', width: 30, hidden: false,sortable: true },
                { header: '公司', dataIndex: '公司', width: 100, align: 'left', sortable: true },
                { header: '联系人', dataIndex: '联系人', width: 150, align: 'left', sortable: true },
                { header: '电话', dataIndex: '电话', width: 100, id: 'extcol',align: 'left', sortable: true }
            ],

            autoExpandColumn: 'extcol',
            bbar: new Ext.PagingToolbar({
                pageSize: this.store.baseParams.limit,
                store: this.store
            }),
            listeners: {
                scope: this,
                rowdblclick: function(grid, rowIndex, e) {
                    this.Read(this.store.getAt(rowIndex).data);
                }
            }
        });

        this.btnNew = new Ext.Button({
            iconCls: 'blist',
            text: RS.$('YZStrings.All_Add'),
            scope: this,
            handler: function() {
                this.New();
            }
        });

        this.btnEdit = new Ext.Button({
            iconCls: 'blist',
            text: '编辑',
            scope: this,
            handler: function() {
                var sm = this.grid.getSelectionModel();
                var recs = sm.getSelections() || new Array();

                if (recs.length != 1)
                    return;

                this.Edit(recs[0].data);
            }
        });

        this.btnDelete = new Ext.Button({
            iconCls: 'blist',
            text: '删除',
            scope: this,
            handler: function() {
                YZSoft.CRM.CRMOption.DeleteCRM(this.grid);
            }
        });

        this.btnExcelExport = new YZSoft.ExcelExportButton({
            grid: this.grid,
            templateExcel: '~/YZApp/CRM/客户档案.xls', //导出模板，不设置则按缺省方式导出
            params: {},
            fileName: 'CurtomInfo',
            AllowExportAll: true, //可选项，缺省使用YZSoft.EnvSetting.Excel.AllowExportAll中的设置，默认值false
            //MaxExportPages: 10, //可选项，缺省使用YZSoft.EnvSetting.Excel.MaxExportPages中的设置，默认值100
            listeners:{
                scope:this,
                beforeload:function(){
                    this.store.baseParams['ReportDate'] = (new Date()).toString();
                }
            }
        });

        this.menuPublic = new Ext.menu.Item({
            iconCls: 'blist',
            text: '公开',
            scope: this,
            handler: function(item) {
                YZSoft.RecordSecurityManager.Public(this.grid, '客户档案', 'RecordRead', false);
            }
        });

        this.menuAssignPerm = new Ext.menu.Item({
            iconCls: 'blist',
            text: '修改授权',
            scope: this,
            handler: function(item) {
                YZSoft.RecordSecurityManager.AssignPermision(this.grid, this.perm.rsid, '客户档案');
            }
        });

        this.btnMore = new Ext.Button({
            iconCls: 'blist',
            text: '更多操作',
            menu: {
                items: [
                    this.menuPublic,
                    this.menuAssignPerm
                ]
            }
        });
        
        this.btnStartRepairProcess = new Ext.Button({
            iconCls: 'blist',
            text: '设备维修登记',
            scope: this,
            handler: function() {
                var sm = this.grid.getSelectionModel();
                var recs = sm.getSelections() || new Array();

                if (recs.length != 1)
                    return;
            
                this.StartRepairProcess(recs[0].data);
            }
        });

        this.btnStartRoutineProcess = new Ext.Button({
            iconCls: 'blist',
            text: '设备巡检登记',
            scope: this,
            handler: function() {
                var sm = this.grid.getSelectionModel();
                var recs = sm.getSelections() || new Array();

                if (recs.length != 1)
                    return;

                this.StartRoutineProcess(recs[0].data);
            }
        });

        var cfg = {
            title: "客户档案信息",
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'border',
            items: [this.grid],
            tbar: [this.btnNew, this.btnEdit, this.btnDelete, '|', this.btnStartRepairProcess, this.btnStartRoutineProcess, '|', this.btnExcelExport, '|', this.btnMore, '->', {
                xtype: 'button',
                scope: this,
                text: '清除搜索条件',
                handler: function() {
                    this.store.baseParams = this.store.baseParams || {};
                    this.store.baseParams['SearchType'] = '';
                    this.store.reload({ params: { start: 0} });
                }
            }, ' ', {
                xtype: 'YZSearchField',
                id: this.idKeyword,
                store: this.store,
                emptySearch: true,
                width: 160,
                showAdvButton: false,
                scope: this,
                handler: function(advBtn) {
                }
            }],
            listeners: {
                scope: this,
                render: function() {
                    this.store.load({ params: { start: 0} });
                }
            }
        };

        Ext.apply(cfg, config);

        YZSoft.CRM.CRMPanel.superclass.constructor.call(this, cfg);

        var sm = this.grid.getSelectionModel();
        if (sm) {
            sm.on('selectionchange', function() {
                this.updateStatus();
            }, this);
        }
    },

    initComponent: function() {
        YZSoft.CRM.CRMPanel.superclass.initComponent.call(this);
        this.updateStatus();
    },

    //RenderName: function(value, p, record) {
    //    return String.format("<a href='#'onclick=\"YZSoft.BPM.FormManager.OpenFormApplication('PM/Read/CRM',{0},'Read',true,\{title:'查看设备档案信息-{1}'\})\">{1}</a>",
    //    record.id,
    //    value);
    //},

    New : function() {
        YZSoft.BPM.FormManager.OpenFormApplication('CRM', '', 'New', true, {
            title: '添加',
            listeners: {
                scope: this,
                close: function(form) {
                    if (form.dialogResult=='ok') {
                        this.grid.loadSelectId = form.returnValue.key;
                        this.store.reload({ params: { start: this.store.cursor} });
                    }
                }
            }
        });
    },
    
    Edit: function(item) {
        YZSoft.BPM.FormManager.OpenFormApplication('CRM', item.id, 'Edit', true, {
            title: '修改',
            listeners: {
                scope: this,
                close: function(form) {
                    if (form.dialogResult=='ok') {
                        this.grid.loadSelectId = form.returnValue.key;
                        this.store.reload({ params: { start: this.store.cursor} });
                    }
                }
            }
        });
    },
    
    Read: function(item) {
        YZSoft.BPM.FormManager.OpenFormApplication('CRM', item.id, 'Read', true, {
            title: '查看'
        });
    },

    StartRepairProcess: function(item) {
        YZSoft.BPM.FormManager.OpenPostWindow('PR101', true, {
            title: '设备维修登记',
            param:{id:item.id,company:item.公司}
        });
    },

    StartRoutineProcess: function(item) {
        YZSoft.BPM.FormManager.OpenPostWindow('PR101', true, {
            title: '设备巡检登记',
            param:{id:item.id,company:item.公司}
        });
    },

    updateStatus: function() {
        this.btnNew.setDisabled(!YZSoft.UIHelper.IsOptEnable(this, this.grid, 'New'));
        this.btnEdit.setDisabled(!YZSoft.UIHelper.IsOptEnable(this, this.grid, 'Edit', 1, 1));
        this.btnDelete.setDisabled(!YZSoft.UIHelper.IsOptEnable(this, this.grid, 'Delete', 1, -1));
        this.menuPublic.setDisabled(!YZSoft.UIHelper.IsOptEnable(this, this.grid, 'Public', 1, -1));
        this.menuAssignPerm.setDisabled(!YZSoft.UIHelper.IsOptEnable(this, this.grid, 'AssignPerm', 1, -1));
        this.btnStartRepairProcess.setDisabled(!YZSoft.UIHelper.IsOptEnable(this, this.grid, 'StartProcess1', 1, 1));
        //this.btnExcelExport.setDisabled(this.grid.store.getTotalCount() == 0);
    }
});
