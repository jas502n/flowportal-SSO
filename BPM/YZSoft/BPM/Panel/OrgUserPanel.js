importJS("YZSoft/BPM/Panel/OrgTreePanel.js");

Ext.namespace("YZSoft.BPM.Panel");

YZSoft.BPM.Panel.OrgUserPanel = Ext.extend(Ext.Panel, {
    title: RS.$('YZStrings.All_Org'),
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
            idProperty: 'Account',
            remoteSort: false,
            sortInfo: { field: 'Account', direction: 'ASC' },

            fields: [
                { name: 'Account' },
                { name: 'DisplayName' },
                { name: 'SID' },
                { name: 'MemberFullName' },
                { name: 'LeaderTitle' },
                { name: 'Department' },
                { name: 'Description' },
                { name: 'Birthday' },
                { name: 'HRID' },
                { name: 'DateHired' },
                { name: 'Office' },
                { name: 'CostCenter' },
                { name: 'OfficePhone' },
                { name: 'HomePhone' },
                { name: 'Mobile' },
                { name: 'EMail' },
                { name: 'WWWHomePage' },
                { name: 'ExtAttrs' }
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: resolveUrl('YZSoft/BPM/StoreDataService/ListUser.ashx')
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
                    { header: RS.$('YZStrings.All_Account'), dataIndex: 'Account', align: 'left', width: 80, renderer: YZSoft.Render.RenderString },
                    { header: RS.$('YZStrings.All_DisplayName'), dataIndex: 'DisplayName', align: 'left', id: 'displayName', renderer: YZSoft.Render.RenderString },
                    { header: RS.$('YZStrings.All_HRID'), dataIndex: 'HRID', align: 'left', width: 100, hidden: true, renderer: YZSoft.Render.RenderString },
                    { header: RS.$('YZStrings.All_CostCenter'), dataIndex: 'CostCenter', align: 'left', width: 120, hidden: true, renderer: YZSoft.Render.RenderString },
                    { header: RS.$('YZStrings.All_OfficePhone'), dataIndex: 'OfficePhone', align: 'left', width: 100, hidden: true, renderer: YZSoft.Render.RenderString },
                    { header: RS.$('YZStrings.All_EMail'), dataIndex: 'EMail', align: 'left', width: 160, hidden: true, renderer: YZSoft.Render.RenderString }
                ]
            }),
            autoExpandColumn: 'displayName',
            listeners: {
                scope: this,
                rowdblclick: function(grid, rowIndex, e) {
                    this.fireEvent('rowdblclick', grid.store.getAt(rowIndex).data, this.GetObjectType());
                }
            }
        });

        var cfg = {
            tbar: ['->', RS.$('YZStrings.BPMDlg_OrgUserPanel_SearchUser'), new Ext.form.TwinTriggerField({
                validationEvent: false,
                validateOnBlur: false,
                trigger1Class: 'x-form-clear-trigger',
                trigger2Class: 'x-form-search-trigger',
                hideTrigger1: true,
                width: 160,
                tree: this.tree,
                scope: this,
                onTrigger2Click: function() {
                    var keyword = this.getRawValue();
                    if (Ext.isEmpty(keyword))
                        return;

                    var text = String.format(RS.$('YZStrings.BPMDlg_OrgUserPanel_SearchUserResult'), keyword);
                    var rootNode = this.tree.getRootNode();
                    var resultNode;
                    if (rootNode.lastChild && rootNode.lastChild.id == 'searchResult') {
                        resultNode = (rootNode.lastChild);
                        resultNode.setText(text);
                    }
                    else {
                        resultNode = new Ext.tree.TreeNode({ id: 'searchResult', iconCls: 'folder', leaf: true, expandable: false, text: text });
                        rootNode.appendChild(resultNode);
                    }

                    resultNode.keyword = keyword;
                    if (resultNode.isSelected())
                        this.scope.TreeSelChanged(resultNode);
                    else
                        resultNode.select();
                },
                listeners: {
                    specialkey: function(f, e) {
                        if (e.getKey() == e.ENTER) {
                            this.onTrigger2Click();
                        }
                    }
                }
            })],
            items: [this.tree, this.grid]
        };

        Ext.apply(cfg, config);

        this.addEvents(
            'selectionchange',
            'rowdblclick'
        );

        YZSoft.BPM.Panel.OrgUserPanel.superclass.constructor.call(this, cfg);

        var sm = this.grid.getSelectionModel();
        if (sm) {
            sm.on('selectionchange', function() {
                this.selectionchange();
            }, this);
        }
    },

    initComponent: function() {
        YZSoft.BPM.Panel.OrgUserPanel.superclass.initComponent.call(this);
    },

    TreeSelChanged: function(node) {
        if (!node)
            return;
            
        if (node.id == 'searchResult') {
            this.store.baseParams['LoadType'] = 'Search';
            this.store.load({ params: { keyword: node.keyword} });
        }
        else {
            this.store.baseParams['LoadType'] = 'UserInPath';
            this.store.load({ params: { path: node.attributes.data.OUFullName} });
        }
    },

    selectionchange: function() {
        this.fireEvent('selectionchange');
    },

    GetSelectedUsers: function() {
        return this.GetSelectedObjects();
    },
    
    GetObjectType : function(){
        return 'User';
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
