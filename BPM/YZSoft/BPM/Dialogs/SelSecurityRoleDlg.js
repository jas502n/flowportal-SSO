importJS("YZSoft/BPM/Panel/OrgUserPanel.js");
importJS("YZSoft/BPM/Panel/OrgTreePanel.js");
importJS("YZSoft/BPM/Panel/OrgRolePanel.js");
importJS("YZSoft/BPM/Panel/OrgGroupPanel.js");

Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.SelSecurityRoleDlg = Ext.extend(Ext.Window, {
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

        this.OrgUserPanel = new YZSoft.BPM.Panel.OrgUserPanel({
            title: RS.$('YZStrings.All_User'),
            singleSelect: false,
            listeners: {
                scope: this,
                rowdblclick: this.SrcRowDblClick,
                selectionchange: this.updateStatus
            }
        });

        this.OrgTreePanel = new YZSoft.BPM.Panel.OrgTreePanel({
            title: RS.$('YZStrings.All_Org'),
            border: false,
            dblclick:true,
            listeners: {
                scope: this,
                rowdblclick: this.SrcRowDblClick,
                selectionchange: this.updateStatus
            }
        });
        
        this.OrgTreePanelContainer = new Ext.Panel({
            title: RS.$('YZStrings.All_Dept'),
            layout: 'fit',
            border: false,
            items: [this.OrgTreePanel],
            contentCtrl: this.OrgTreePanel
        });

        this.OrgRolePanel = new YZSoft.BPM.Panel.OrgRolePanel({
            title: RS.$('YZStrings.All_Roles'),
            singleSelect: false,
            listeners: {
                scope: this,
                rowdblclick: this.SrcRowDblClick,
                selectionchange: this.updateStatus
            }
        });

        this.OrgGroupPanel = new YZSoft.BPM.Panel.OrgGroupPanel({
            title: RS.$('YZStrings.All_Groups'),
            singleSelect: false,
            listeners: {
                scope: this,
                rowdblclick: this.SrcRowDblClick,
                selectionchange: this.updateStatus
            }
        });
                
        this.srcTab = new Ext.TabPanel({
            region: 'center',
            activeTab: 0,
            items: [this.OrgUserPanel, this.OrgTreePanelContainer,this.OrgRolePanel,this.OrgGroupPanel],
            listeners: {
                scope: this,
                tabchange: function() {
                    this.updateStatus();
                }
            }
        });

        this.store = new YZSoft.Data.JsonStore({
            idProperty: 'SID',
            remoteSort: false,
            fields: [
                { name: 'SIDType' },
                { name: 'SID' },
                { name: 'DisplayName' }
            ]
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
                    { header: RS.$('YZStrings.BPMDlg_SelSID_GridCols_SIDs'), dataIndex: 'DisplayName', align: 'left', width: 400, renderer: YZSoft.Render.RenderString }
                ]
            }),

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
                    var selResult = this.GetSrcSelection();
                    this.AddSelectedSrc(selResult);
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
            title: RS.$('YZStrings.BPMDlg_SelSID_TagPanelTitle'),
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

        var cfg = {
            items: [this.srcPanel, this.tagPnl],
            buttons: [{
                text: RS.$('YZStrings.All_OK'),
                id: this.idSubmit,
                disabled: true,
                scope: this,
                handler: function() {
                    this.OnOK()
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
        YZSoft.BPM.Dialogs.SelSecurityRoleDlg.superclass.constructor.call(this, cfg);

        var sm = this.grid.getSelectionModel();
        if (sm) {
            sm.on('selectionchange', function() {
                this.updateStatus();
            }, this);
        }
    },

    initComponent: function() {
        YZSoft.BPM.Dialogs.SelSecurityRoleDlg.superclass.initComponent.call(this);
    },

    OnOK: function() {
        var sidPairs = new Array();
        for (var i = 0; i < this.store.getCount(); i++) {
            var record = this.store.getAt(i);
            sidPairs.push(record.data);
        }

        YZSoft.DialogManager.CloseDialog(this.id, function() { this.fn(this.owner, sidPairs) });
    },

    listeners: {
        beforeshow: function() {
            this.setTitle(this.title);

            for (var i = 0; i < this.srcTab.items.getCount(); i++) {
                var item = this.srcTab.items.itemAt(i);
                if (item.ClearSelection)
                    item.ClearSelection();
            };

            this.store.removeAll();
        }
    },

    GetSrcSelection: function() {
        var srcPnl = this.srcTab.getActiveTab();
        if (!srcPnl)
            return new Array();

        srcPnl = srcPnl.contentCtrl || srcPnl;

        var rv = {
            type: srcPnl.GetObjectType(),
            objects: srcPnl.GetSelectedObjects()
        };

        return rv;
    },

    AddSelectedSrc: function(src) {
        var ards = new Array(); //新增项
        var srds = new Array(); //选中项目
        
        for (var i = 0; i < src.objects.length; i++) {
            var srcobj = src.objects[i];
            var index = this.store.findExact("SID", srcobj.SID);
            if (index == -1) {

                //转换SIDType和DisplayName
                var sidtype;
                var displayName;
                if (src.type == 'User') {
                    sidtype = 'UserSID';
                    displayName = YZSoft.Render.GetUserDisplayName(srcobj.Account, srcobj.DisplayName);
                }
                else if (src.type == 'OU') {
                    sidtype = 'OUSID';
                    displayName = srcobj.OUFullName;
                }
                else if (src.type == 'Role') {
                    sidtype = 'RoleSID';
                    displayName = srcobj.RoleFullName;
                }
                else if (src.type == 'Group') {
                    sidtype = 'GroupSID';
                    displayName = srcobj.GroupName;
                }
                else {
                    alert(String.format(RS.$('YZStrings.BPMDlg_SelSID_ErrSIDType'), src.type));
                    continue;
                }

                //生成record
                var rd = new this.store.recordType({
                    SID: srcobj.SID,
                    SIDType: sidtype,
                    DisplayName: displayName
                });

                //record id 赋值
                rd.id = srcobj.SID;

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

    SrcRowDblClick: function(data, type) {
        var rv = {
            type: type,
            objects: [data]
        };
        this.AddSelectedSrc(rv);
    },

    updateStatus: function() {
        var sels = this.GetSrcSelection().objects;
        Ext.getCmp(this.idBtnAdd).setDisabled(sels.length == 0);

        Ext.getCmp(this.idBtnRemove).setDisabled(!this.grid.CanDelete());
        Ext.getCmp(this.idBtnMoveUp).setDisabled(!this.grid.CanMoveUp());
        Ext.getCmp(this.idBtnMoveDown).setDisabled(!this.grid.CanMoveDown());
        Ext.getCmp(this.idSubmit).setDisabled(this.store.getCount() == 0);
    }
});
