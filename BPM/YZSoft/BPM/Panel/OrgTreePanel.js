// JScript 文件
Ext.namespace("YZSoft.BPM.Panel");

YZSoft.BPM.Panel.OrgTreePanel = Ext.extend(Ext.tree.TreePanel, {
    region: 'center',
    margins: '0 0 0 0',
    rootVisible: false,
    lines: false,
    autoScroll: true,
    width: 210,
    minWidth: 160,
    dblclick:false,

    constructor: function(config) {
        var cfg = {
            loader: new Ext.tree.TreeLoader({
                dataUrl: resolveUrl('YZSoft/BPM/StoreDataService/OrgTree.ashx'),
                requestMethod: 'GET',
                listeners: {
                    scope: this,
                    load: function(ld, node) {
                        var dirnode = node.findChild('dirou', true, true);
                        if (dirnode) {
                            dirnode.select();
                            this.selectionchange(dirnode);
                        }
                    }
                }
            }),
            root: new Ext.tree.AsyncTreeNode({
                text: RS.$('YZStrings.All_Root'),
                id: 'root',
                expanded: true
            }),
            selModel: new Ext.tree.DefaultSelectionModel({
                listeners: {
                    scope: this,
                    selectionchange: function(sm, node) {
                        this.selectionchange(node);
                    }
                }
            })
        };

        if (config.hideRefreshButton !== true){
            cfg.tools = [{
                id: 'refresh',
                scope: this,
                handler: function(event, toolEl, panel) {
                    this.getRootNode().reload();
                }
            }];
        }

        Ext.apply(cfg, config);

        this.addEvents(
            'selectionchange',
            'rowdblclick'
        );

        YZSoft.BPM.Panel.OrgTreePanel.superclass.constructor.call(this, cfg);
    },

    listeners: {
        beforedblclick:function(){
            if (this.dblclick){
                var ous = this.GetSelectedOUs();
                if (ous.length == 0)
                    return;

                this.fireEvent('rowdblclick', ous[0], this.GetObjectType());
                return false;
            }
        }
    },
    
    selectionchange: function(node) {
        this.fireEvent('selectionchange', node);
    },

    GetSelectedOU: function() {
        ous = this.GetSelectedObjects();
        if (ous && ous.length >= 1)
            return ous[0];
        return null;
    },

    GetSelectedOUs: function() {
        return this.GetSelectedObjects();
    },

    GetObjectType: function() {
        return 'OU';
    },

    GetSelectedObjects: function() {
        var ous = new Array();
        var sm = this.getSelectionModel();
        if(sm && sm.getSelectedNode()){
            var ou = sm.getSelectedNode().attributes['data'];
            if (ou.ExtAttrs){
                Ext.apply(ou,ou.ExtAttrs);
                delete ou.ExtAttrs;
            }
            ous.push(ou);
        }

        return ous;
    }
});
