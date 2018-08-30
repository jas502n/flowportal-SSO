Ext.namespace("YZSoft.MD.RoleAdmin");

YZSoft.MD.RoleAdmin.RoleAdminOption = {

}

YZSoft.MD.RoleAdmin.RoleAdminPanel = Ext.extend(Ext.Panel, {
    constructor: function(config) {
        this.idKeyword = Ext.id();

        //调试时显示模块的权限
        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'Account',
            //remoteSort: true,
            baseParams: { rolefullname:config.rolefullname },
            fields: [
                { name: 'Account' },
                { name: 'FullName' },
                { name: 'DisplayName' },
                { name: 'Mobile' },
                { name: 'OfficePhone' },
                { name: 'EMail' }
            ],
            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/Modules/RoleAdmin/ListData.ashx'
            }),
            listeners: {
                scope: this,
                load: function() {
                    if (!Ext.isEmpty(this.grid.loadSelectId)) {
                        var sm = this.grid.getSelectionModel();
                        
                        var rds = [];
                        for(var i = 0; i < this.grid.loadSelectId.length ; i++)
                        {
                            var rd = this.store.getById(this.grid.loadSelectId[i]);
                            if (rd)
                                rds.push(rd);
                        }
                        sm.selectRecords(rds);
                        this.grid.loadSelectId = [];
                    }

                    this.updateStatus();
                }
            }
        });

        //this.store.setDefaultSort('Account', 'asc');

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
                { header: '账号', dataIndex: 'Account', width: 100, align: 'left', sortable: true,renderer: YZSoft.Render.RenderString },
                { header: '姓名', dataIndex: 'DisplayName',  width: 120, align: 'left', sortable: true,renderer: YZSoft.Render.RenderString },
                { header: '移动电话', dataIndex: 'Mobile',  width: 100, align: 'center', sortable: true,renderer: YZSoft.Render.RenderString },
                { header: '办公室电话', dataIndex: 'OfficePhone',  width: 100, align: 'center', sortable: true,renderer: YZSoft.Render.RenderString },
                { header: '电子邮件', dataIndex: 'EMail', id: 'extcol', align: 'left', sortable: true,renderer: YZSoft.Render.RenderString }
            ],

            autoExpandColumn: 'extcol',
            listeners: {
                scope: this,
                rowdblclick: function(grid, rowIndex, e) {
                    this.Read(this.store.getAt(rowIndex).data);
                }
            }
        });

        this.btnAdd = new Ext.Button({
            iconCls: 'blist',
            text: '添加',
            scope: this,
            handler: function() {
                this.Add();
            }
        });

        this.btnDelete = new Ext.Button({
            iconCls: 'blist',
            text: '删除',
            scope: this,
            handler: function() {
                this.Delete(this.grid);
            }
        });

        this.btnExcelExport = new YZSoft.ExcelExportButton({
            grid: this.grid,
            templateExcel: '~/YZSoft/Modules/RoleAdmin/MemberList.xls', //导出模板，不设置则按缺省方式导出
            params: {},
            AllowExportAll: true, //可选项，缺省使用YZSoft.EnvSetting.Excel.AllowExportAll中的设置，默认值false
            listeners:{
                scope:this,
                beforeload:function(){
                    this.btnExcelExport.fileName = this.store.reader.jsonData.RoleName;
                    this.store.baseParams['RoleName'] = this.store.reader.jsonData.RoleName;
                    this.store.baseParams['ReportDate'] = (new Date()).toString();
                }
            }
        });
        
        this.btnRefresh = new Ext.Button({
            text: '刷新',
            scope: this,
            handler: function() {
                this.store.reload({ params: { start: this.store.cursor} });
            }
        });
        
        var cfg = {
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'border',
            items: [this.grid],
            tbar: [this.btnRefresh,'|',this.btnAdd, this.btnDelete, '|', this.btnExcelExport],
            listeners: {
                scope: this,
                render: function() {
                    this.store.load({ params: { start: 0} });
                }
            }
        };

        Ext.apply(cfg, config);

        YZSoft.MD.RoleAdmin.RoleAdminPanel.superclass.constructor.call(this, cfg);
        
        var sm = this.grid.getSelectionModel();
        if (sm) {
            sm.on('selectionchange', function() {
                this.updateStatus();
            }, this);
        }
    },

    initComponent: function() {
        YZSoft.MD.RoleAdmin.RoleAdminPanel.superclass.initComponent.call(this);
        this.updateStatus();
    },

    Add : function() {
        YZSoft.BPM.Dialogs.ShowSelUserDlg({
            toppanel:this,
            owner: this.grid,
            fn: function(grid, users) {
                if (users.length == 0)
                    return;

                var params = {
                    rolefullname:this.toppanel.rolefullname,
                    Count:users.length
                };

                var accounts = [];
                for (var i = 0; i < users.length; i++) {
                    var user = users[i];
                    params["Member" + i] = user.MemberFullName;
                    accounts.push(user.Account);
                };

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/Modules/RoleAdmin/Add.ashx',
                    params: params,
                    waitMsg: '正在更新角色...',
                    waitMsgTarget: this.owner.id,
                    success: function(action) {
                        grid.loadSelectId = accounts;
                        grid.store.reload({ params: { start:0} });
                    },
                    failure: function(action) {
                        alert(action.result.errorMessage);
                    }
                });
            }
        });
    },

    Delete: function(grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {
            rolefullname:this.rolefullname,
            Count:recs.length
        };
        for (var i = 0; i < recs.length; i++) {
            params["Member" + i] = recs[i].data.FullName;
        };

        Ext.Msg.show({
            title: '删除确认',
            msg: '您确定要从角色中移除选中用户吗？',
            buttons: Ext.Msg.OKCANCEL,
            icon: Ext.MessageBox.INFO,

            fn: function(btn, text) {
                if (btn != 'ok')
                    return;

                YZSoft.Ajax.RFC({
                url: 'YZSoft/Modules/RoleAdmin/Remove.ashx',
                    params: params,
                    waitMsg: '正在更新角色信息...',
                    waitMsgTarget: grid.id,

                    success: function(action) {
                        var store = grid.getStore();
                        store.reload({ params: { start: store.cursor} });
                    },

                    failure: function(action) {
                        alert(action.result.errorMessage);
                    }
                });
            }
        });
    },

    updateStatus: function() {
        this.btnAdd.setDisabled(!YZSoft.UIHelper.IsOptEnable(this, this.grid, 'Modify'));
        this.btnDelete.setDisabled(!YZSoft.UIHelper.IsOptEnable(this, this.grid, 'Modify', 1, -1));
    }
});