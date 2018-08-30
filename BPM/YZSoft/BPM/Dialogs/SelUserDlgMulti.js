// JScript 文件
importJS("YZSoft/BPM/Panel/OrgUserPanel.js");

Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.SelUserDlgMulti = Ext.extend(Ext.Window, {
    layout: 'border',
    width: 740,
    height: 430,
    minWidth: 740,
    minHeight: 430,
    closeAction: 'hide',
    plain: true,
    modal: false,
    buttonAlign: 'center',

    constructor: function(config) {
        this.idBtnAdd = Ext.id();
        this.idBtnRemove = Ext.id();
        this.idBtnMoveUp = Ext.id();
        this.idBtnMoveDown = Ext.id();
        this.idSubmit = Ext.id();

        this.selFromOrgPanel = new YZSoft.BPM.Panel.OrgUserPanel({
            singleSelect: false,
            listeners: {
                scope: this,
                rowdblclick: this.DblClickSrcUser,
                selectionchange: this.updateStatus
            }
        });

        this.srcTab = new Ext.TabPanel({
            region: 'center',
            activeTab: 0,
            items: [this.selFromOrgPanel],
            listeners: {
                scope: this,
                tabchange: function() {
                    this.updateStatus();
                }
            }
        });

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            idProperty: 'Account',
            baseParams: { LoadType: 'FromAccountList' },
            remoteSort: false,
            fields: [
                { name: 'Account' },
                { name: 'User' }
            ],
            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: resolveUrl('YZSoft/BPM/StoreDataService/ListUser.ashx')
            }),
            listeners: {
                scope: this,
                datachanged: this.updateStatus
            }
        });

        this.grid = new Ext.grid.GridPanel({
            region: 'center',
            store: this.store,
            stripeRows: true,
            border: false,
            colModel: new Ext.grid.ColumnModel({
                defaults: {
                    sortable: false,
                    hideable: false,
                    menuDisabled: true
                },
                columns: [
                    { header: RS.$('YZStrings.All_Account'), dataIndex: 'User', align: 'left', width: 80, renderer: this.RenderAccount },
                    { header: RS.$('YZStrings.All_DisplayName'), dataIndex: 'User', align: 'left', id: 'displayName', renderer: this.RenderDisplayName }
                ]
            }),
            autoExpandColumn: 'displayName',
            listeners: {
                scope: this,
                viewready: function() {
                    this.updateStatus();
                },
                rowdblclick: function(grid, rowIndex, e) {
                    this.store.removeAt(rowIndex);
                }
            }
        });

        this.btnPanel = new Ext.Panel({
            region: 'east',
            width: 60,
            border: false,
            baseCls: 'x-plain',
            bodyStyle: 'background-color:#ccd9e8;border-left: #8db2e3 1px solid;border-right: #8db2e3 1px solid;',
            layout: {
                type: 'vbox',
                padding: '0',
                pack: 'top',
                pack: 'center',
                align: 'center'
            },
            defaults: {
                width: 50
            },
            items: [{
                id: this.idBtnAdd,
                disabled: true,
                xtype: 'button',
                text: '->',
                scope: this,
                handler: function() {
                    var users = this.GetSelectedUsers();
                    this.AddUsers(users);
                }
            }, {
                id: this.idBtnRemove,
                disabled: true,
                xtype: 'button',
                text: '<-',
                id: this.idBtnRemove,
                scope: this,
                handler: function() {
                    var sm = this.grid.getSelectionModel();
                    this.store.remove(sm.getSelections());
                }
            }]
        });

        this.srcPanel = new Ext.Panel({
            layout: 'border',
            region: 'center',
            border: false,
            items: [this.srcTab, this.btnPanel]
        });

        this.tagPnl = new Ext.Panel({
            title: RS.$('YZStrings.BPMDlg_SelUser_TagPanelTitle'),
            region: 'east',
            layout: 'fit',
            border: false,
            width: 200,
            minSize: 200,
            maxSize: 300,
            split: false,
            tbar: [{
                xtype: 'button',
                text: RS.$('YZStrings.All_MoveUp'),
                id: this.idBtnMoveUp,
                scope: this,
                handler: function() {
                    this.grid.MoveSelectionUp();
                }
            }, {
                xtype: 'button',
                text: RS.$('YZStrings.All_MoveDown'),
                id: this.idBtnMoveDown,
                scope: this,
                handler: function() {
                    this.grid.MoveSelectionDown();
                }
            }],
            items: [this.grid]
        });

        var items = [this.srcPanel, this.tagPnl];
        if (Ext.isArray(config.extpanels))
            items = items.concat(config.extpanels);
            
        var cfg = {
            items: items,
            buttons: [{
                text: RS.$('YZStrings.All_OK'),
                id: this.idSubmit,
                disabled: true,
                scope: this,
                handler: function() {
                    this.OnOK()
                }
            }, {
                text: RS.$('YZStrings.All_Cancel'),
                scope: this,
                handler: function() {
                    YZSoft.DialogManager.CloseDialog(this.id);
                }
            }]
        };

        Ext.apply(cfg, config);
        YZSoft.BPM.Dialogs.SelUserDlgMulti.superclass.constructor.call(this, cfg);

        var sm = this.grid.getSelectionModel();
        if (sm) {
            sm.on('selectionchange', function() {
                this.updateStatus();
            }, this);
        }
    },

    initComponent: function() {
        YZSoft.BPM.Dialogs.SelUserDlgMulti.superclass.initComponent.call(this);
    },

    OnOK: function() {
        var users = new Array();
        for (var i = 0; i < this.store.getCount(); i++) {
            var record = this.store.getAt(i);
            users.push(record.data.User);
        }

        YZSoft.DialogManager.CloseDialog(this.id, function() { this.fn(this.owner, users) });
    },

    listeners: {
        beforeshow: function() {
            this.setTitle(this.title);
            
            for (var i = 0; i < this.srcTab.items.getCount(); i++) {
                var item = this.srcTab.items.itemAt(i);
                if (item.ClearSelection)
                    item.ClearSelection();
            };
                        
            var initAccounts = this.initAccounts;
            var initUsers = this.initUsers;
            delete this.initAccounts;
            delete this.initUsers;
            
            if (!initAccounts){
                initAccounts = new Array();
                if (initUsers){
                    Ext.each(initUsers,function(user){
                        initAccounts.push(user.Account);
                    });
                }
            }
            
            //选中用户列表是否修改过

            var modified = false;
            if (initAccounts.length != this.store.getCount()) {
                modified = true;
            }
            else {
                for (var i = 0; i < initAccounts.length; i++) {
                    if (initAccounts[i] != this.store.getAt(i).data.User.Account)
                        modified = true;
                }
            }

            //选中用户列表已修改才再加载
            if (modified) {
                Ext.getCmp(this.idSubmit).setDisabled(true);
                this.store.removeAll();

                if (initAccounts.length != 0) {
                    var params = {};
                    params.Count = initAccounts.length;
                    for (var i = 0; i < initAccounts.length; i++) {
                        params["Account" + i] = initAccounts[i];
                    };
                    this.store.load({ params: params });
                }
            }
        }
    },

    RenderAccount: function(value, p, record) {
        return YZSoft.HttpUtility.HtmlEncode(value.Account);
    },

    RenderDisplayName: function(value, p, record) {
        return YZSoft.HttpUtility.HtmlEncode(value.DisplayName);
    },

    GetSelectedUsers: function() {
        var srcPnl = this.srcTab.getActiveTab();
        if (!srcPnl)
            return new Array();

        return srcPnl.GetSelectedUsers();
    },

    AddUsers: function(users) {
        var ards = new Array(); //新增项
        var srds = new Array(); //选中项目
        for (var i = 0; i < users.length; i++) {
            var user = users[i];
            var index = this.store.findExact("Account", user.Account);
            if (index == -1) {
                var rd = new this.store.recordType({
                    Account: user.Account,
                    User: user
                });

                ards.push(rd);
                srds.push(rd);
            }
            else {
                srds.push(this.store.getAt(index));
            }
        }

        this.store.add(ards);
        var sm = this.grid.getSelectionModel();
        if (sm)
            sm.selectRecords(srds, false);
    },

    DblClickSrcUser: function(user) {
        var users = new Array();
        users.push(user);
        this.AddUsers(users);
    },

    updateStatus: function() {
        var srcUsers = this.GetSelectedUsers();
        Ext.getCmp(this.idBtnAdd).setDisabled(srcUsers.length == 0);

        Ext.getCmp(this.idBtnRemove).setDisabled(!this.grid.CanDelete());
        Ext.getCmp(this.idBtnMoveUp).setDisabled(!this.grid.CanMoveUp());
        Ext.getCmp(this.idBtnMoveDown).setDisabled(!this.grid.CanMoveDown());
        Ext.getCmp(this.idSubmit).setDisabled(this.store.getCount() == 0);
    }
});
