Ext.namespace("YZSoft.BPM.Panel");

YZSoft.BPM.Panel.OrgGroupPanel = Ext.extend(Ext.Panel, {
    title: RS.$('YZStrings.All_Groups'),
    layout: 'fit',
    layoutConfig: { targetCls: 'yz-border-layout-borderlr' },
    buttonAlign: 'center',

    constructor: function(config) {
        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'GroupName',
            remoteSort: false,
            sortInfo: { field: 'GroupName', direction: 'ASC' },

            fields: [
                { name: 'GroupName' },
                { name: 'SID' }
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: resolveUrl('YZSoft/BPM/StoreDataService/ListGroup.ashx')
            })
        });
        
        this.grid = new Ext.grid.GridPanel({
            margins: '0 0 0 0',
            store: this.store,
            border: false,
            sm: new Ext.grid.RowSelectionModel({ singleSelect: config.singleSelect }),
            colModel: new Ext.grid.ColumnModel({
                defaults: {
                    sortable: true,
                    hideable: true,
                    menuDisabled: false
                },
                columns: [
                    { header: RS.$('YZStrings.All_DisplayName'), dataIndex: 'GroupName', align: 'left', id: 'groupName', renderer: YZSoft.Render.RenderString }
                ]
            }),
            autoExpandColumn: 'groupName',
            listeners: {
                scope: this,
                rowdblclick: function(grid, rowIndex, e) {
                    this.fireEvent('rowdblclick', grid.store.getAt(rowIndex).data, this.GetObjectType());
                }
            }
        });

        var cfg = {
            items: [this.grid]
        };

        Ext.apply(cfg, config);

        this.addEvents(
            'selectionchange',
            'rowdblclick'
        );

        YZSoft.BPM.Panel.OrgGroupPanel.superclass.constructor.call(this, cfg);
            
        var sm = this.grid.getSelectionModel();
        if (sm) {
            sm.on('selectionchange', function() {
                this.selectionchange();
            }, this);
        }
    },

    initComponent: function() {
        YZSoft.BPM.Panel.OrgGroupPanel.superclass.initComponent.call(this);
    },
    
    listeners: {
        afterrender:function(group,chk){
            this.store.reload({ params: { start: 0} });
        }
    },

    selectionchange: function() {
        this.fireEvent('selectionchange');
    },

    GetSelectedGroups: function() {
        return this.GetSelectedObjects();
    },
    
    GetObjectType : function(){
        return 'Group';
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
