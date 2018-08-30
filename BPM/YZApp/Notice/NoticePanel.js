Ext.namespace("YZSoft.PM");

YZSoft.PM.NoticeOption = {
    DeleteNotice: function(grid) {
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
                url: 'YZApp/PM/RFC/DeleteNotice.ashx',
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

YZSoft.PM.NoticePanel = Ext.extend(Ext.Panel, {
    constructor: function(config) {
        this.idKeyword = Ext.id();

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'ID',
            remoteSort: true,
            baseParams: { Type:config.Type,limit:YZSoft.EnvSetting.PageSize.defaultSize },
            fields: [
                { name: 'ID' },
                { name: 'TITLE' },
                { name: 'BODY' },
                { name: 'AUTH' },
                { name: 'DATE' },
                { name: 'perm' }
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZApp/Notice/Notice.ashx'
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
            hideHeaders:true,
            // grid columns
            columns: [
                {header: '',dataIndex: 'TITLE',id:'extcol',align: 'left',sortable: false, renderer:this.RenderTitle}
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
            },
            viewConfig: {
                enableRowBody:true,
                showPreview:true,
                getRowClass : function(record, rowIndex, p, ds){
                    if(this.showPreview){
                        var desc = record.data.BODY;
                        if (!desc)
                            desc = RS.$('YZStrings.BPM_ProcessDesc_None');
                            
                        p.body = '<p>'+desc+'</p>';
                        return 'NoticeRow';
                    }
                    return 'NoticeRow';
                }
            }
        });

        this.btnNew = new Ext.Button({
            iconCls: 'blist',
            text: '发布新公告',
            scope: this,
            handler: function() {
                this.New();
            }
        });

        this.btnEdit = new Ext.Button({
            iconCls: 'blist',
            text: '修改',
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
                YZSoft.PM.NoticeOption.DeleteNotice(this.grid);
            }
        });

        this.btnMoveUp = new Ext.Button({
            iconCls: 'blist',
            text: '上移',
            scope: this,
            handler: function() {
                var grid = this.grid;
                var sm = grid.getSelectionModel();
                var recs = sm.getSelections() || [];
                if (recs.length != 1)
                    return;

                YZSoft.Ajax.RFC({
                url: 'YZApp/Notice/Order.ashx',
                    params: {Method:'MoveUp',Type:this.store.baseParams.Type,Key:recs[0].id},
                    waitMsg: '正在操作...',
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

        this.btnMoveDown = new Ext.Button({
            iconCls: 'blist',
            text: '下移',
            scope: this,
            handler: function() {
                var grid = this.grid;
                var sm = grid.getSelectionModel();
                var recs = sm.getSelections() || [];
                if (recs.length != 1)
                    return;

                YZSoft.Ajax.RFC({
                url: 'YZApp/Notice/Order.ashx',
                    params: {Method:'MoveDown',Type:this.store.baseParams.Type,Key:recs[0].id},
                    waitMsg: '正在操作...',
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

        var cfg = {
            title: "公告",
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'border',
            items: [this.grid],
            tbar: [this.btnNew, this.btnEdit, this.btnDelete, '|', this.btnMoveUp, this.btnMoveDown, '->', {
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

        YZSoft.PM.NoticePanel.superclass.constructor.call(this, cfg);

        var sm = this.grid.getSelectionModel();
        if (sm) {
            sm.on('selectionchange', function() {
                this.updateStatus();
            }, this);
        }
    },

    initComponent: function() {
        YZSoft.PM.NoticePanel.superclass.initComponent.call(this);
        this.updateStatus();
    },

    New : function() {
        YZSoft.BPM.FormManager.OpenFormApplication('PM/Notice', '', 'New', true, {
            title: '添加',
            param:{Type:this.Type},
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
        YZSoft.BPM.FormManager.OpenFormApplication('PM/Notice', item.id, 'Edit', true, {
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
        YZSoft.BPM.FormManager.OpenFormApplication('PM/Notice', item.id, 'Read', true, {
            title: '查看'
        });
    },

    RenderTitle:function(value, p, record){
        return String.format("<div class='topic'><span class='ntitle'>{0}</span><span class='nauth'>{1}-{2}</span></div>",
            YZSoft.HttpUtility.HtmlEncode(value),
            record.data.AUTH,
            record.data.DATE);
    },
    
    updateStatus: function() {
        this.btnNew.setDisabled(!YZSoft.UIHelper.IsOptEnable(this, this.grid, 'New'));
        this.btnEdit.setDisabled(!YZSoft.UIHelper.IsOptEnable(this, this.grid, 'Edit', 1, 1));
        this.btnDelete.setDisabled(!YZSoft.UIHelper.IsOptEnable(this, this.grid, 'Delete', 1, -1));
        this.btnMoveUp.setDisabled(!YZSoft.UIHelper.CanMoveUp(this.grid, false));
        this.btnMoveDown.setDisabled(!YZSoft.UIHelper.CanMoveDown(this.grid, false));
    }
});
