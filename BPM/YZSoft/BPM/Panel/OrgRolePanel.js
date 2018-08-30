importJS("YZSoft/BPM/Panel/OrgTreePanel.js");

Ext.namespace("YZSoft.BPM.Panel");

YZSoft.BPM.Panel.OrgRolePanel = Ext.extend(Ext.Panel, {
    title: RS.$('YZStrings.All_Roles'),
    layout: 'border',
    layoutConfig: { targetCls: 'yz-border-layout-borderlr' },
    buttonAlign: 'center',

    constructor: function(config) {
        this.tree = new YZSoft.BPM.Panel.OrgTreePanel({
            title: RS.$('YZStrings.BPMDlg_OrgUserPanel_TreeTitle'),
            region: 'center',
            margins: '0 0 0 0',
            split: true,
            border: false,
            listeners: {
                scope: this,
                selectionchange: function(node) {
                    this.TreeSelChanged(node)
                }
            }
        });

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'Name',
            remoteSort: false,
            sortInfo: { field: 'Name', direction: 'ASC' },

            fields: [
                { name: 'Name' },
                { name: 'SID' },
                { name: 'RoleFullName' }
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: resolveUrl('YZSoft/BPM/StoreDataService/ListRole.ashx')
            })
        });
        
        this.grid = new Ext.grid.GridPanel({
            region: 'east',
            width: 200,
            stripeRows: true,
            margins: '0 0 0 0',
            store: this.store,
            border: false,
            split: true,
            sm: new Ext.grid.RowSelectionModel({ singleSelect: config.singleSelect }),
            colModel: new Ext.grid.ColumnModel({
                defaults: {
                    sortable: true,
                    hideable: true,
                    menuDisabled: false
                },
                columns: [
                    { header: RS.$('YZStrings.All_DisplayName'), dataIndex: 'Name', align: 'left', id: 'roleName', renderer: YZSoft.Render.RenderString }
                ]
            }),
            autoExpandColumn: 'roleName',
            listeners: {
                scope: this,
                rowdblclick: function(grid, rowIndex, e) {
                    this.fireEvent('rowdblclick', grid.store.getAt(rowIndex).data, this.GetObjectType());
                }
            }
        });

        var cfg = {
            items: [this.tree, this.grid]
        };

        Ext.apply(cfg, config);

        this.addEvents(
            'selectionchange',
            'rowdblclick'
        );

        YZSoft.BPM.Panel.OrgRolePanel.superclass.constructor.call(this, cfg);

        var sm = this.grid.getSelectionModel();
        if (sm) {
            sm.on('selectionchange', function() {
                this.selectionchange();
            }, this);
        }
    },

    initComponent: function() {
        YZSoft.BPM.Panel.OrgRolePanel.superclass.initComponent.call(this);
    },

    TreeSelChanged: function(node) {
        if (!node)
            return;

        this.store.load({ params: { path: node.attributes.data.OUFullName} });
    },

    selectionchange: function() {
        this.fireEvent('selectionchange');
    },

    GetSelectedRoles: function() {
        return this.GetSelectedObjects();
    },
    
    GetObjectType : function(){
        return 'Role';
    },
    
    GetSelectedObjects: function() {
        var users = new Array();
        var sm = this.grid.getSelectionModel();
        var recs = sm.getSelections();
        if (recs) {
            Ext.each(recs, function(v) {
                if (v.data.ExtAttrs){
                    Ext.apply(v.data,v.data.ExtAttrs);
                    delete v.data.ExtAttrs;
                }
                
                users.push(v.data);
            });
        }

        return users;
    },

    ClearSelection: function() {
        //授权中次模块在第2及以后页面时，sm.grid是空的，clearSelections会出错。
        var sm = this.grid.getSelectionModel();
        if (sm && sm.grid)
            sm.clearSelections();
    }
});
