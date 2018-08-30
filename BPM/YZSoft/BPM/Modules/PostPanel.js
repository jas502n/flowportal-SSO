importJS("YZSoft/BPM/Scripts/BPMExt.js");

Ext.namespace("YZSoft.BPM");

YZSoft.BPM.PostPanel = Ext.extend(Ext.Panel, {
    constructor: function (config) {
        this.tree = new Ext.tree.TreePanel({
            title: RS.$('YZStrings.BPM_PostPanel_Tree_Title'),
            region: 'west',
            split: true,
            border: false,
            rootVisible: true,
            lines: false,
            autoScroll: true,
            width: 210,
            dataUrl: 'YZSoft/BPM/StoreDataService/PostTree.ashx',
            requestMethod: 'GET',
            root: new Ext.tree.AsyncTreeNode({
                text: RS.$('YZStrings.BPM_PostPanel_ProcessTree_Root'),
                expanded: true
            }),
            listeners: {
                scope: this,
                click: function (node, e) {
                    e.stopEvent();
                    this.store.baseParams['path'] = node.attributes.path;
                    this.store.reload({ params: { start: 0} });
                }
            },
            tools: [{
                id: 'refresh',
                scope: this,
                handler: function (event, toolEl, panel) {
                    this.tree.getRootNode().reload();
                }
            }]
        });

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'Name',
            remoteSort: true,

            fields: [
                { name: 'Name' },
                { name: 'ProcessVersion' },
                { name: 'Description' }
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/BPM/StoreDataService/ProcessList.ashx'
            }),

            baseParams: { path: '' },
            listeners: {
                scope: this,
                load: function () {
                    var folder = this.store.baseParams['path'];
                    if (!folder)
                        folder = RS.$('YZStrings.All_Root');
                    else
                        folder = folder.substring(1);

                    this.grid.setTitle(String.format(RS.$('YZStrings.BPM_PostPanel_ProcessGrid_Title'), folder));
                }
            }
        });

        this.grid = new Ext.grid.GridPanel({
            title: '',
            border: false,
            store: this.store,
            trackMouseOver: true,
            disableSelection: true,
            loadMask: true,
            region: 'center',
            hideHeaders: true,
            viewConfig: {
                enableRowBody: true,
                showPreview: true,
                getRowClass: function (record, rowIndex, p, ds) {
                    if (this.showPreview) {
                        var desc = record.data.Description;
                        if (!desc)
                            desc = RS.$('YZStrings.BPM_ProcessDesc_None');

                        p.body = '<p>' + desc + '</p>';
                        return 'ProcessRow';
                    }
                    return 'ProcessRow';
                }
            },

            // this.grid columns
            columns: [
                { header: RS.$('YZStrings.BPM_ProcessName'), dataIndex: 'Name', id: 'processName', align: 'left', sortable: false, renderer: this.RenderProcessName },
                { header: RS.$('YZStrings.All_Operate'), dataIndex: 'Name', id: 'postOption', width: 180, align: 'right', sortable: false, renderer: this.RenderOption }
            ],

            autoExpandColumn: 'processName',
            tools: [{
                id: 'refresh',
                scope: this,
                handler: function (event, toolEl, panel) {
                    this.store.reload({ params: { start: this.store.cursor} });
                }
            }]
        });

        var cfg = {
            closable: true,
            border: false,
            rootVisible: false,
            lines: false,
            autoScroll: true,
            layout: 'border',
            layoutConfig: { targetCls: 'yz-border-layout-borderm' },
            items: [this.grid, this.tree]
        };

        Ext.apply(cfg, config);

        YZSoft.BPM.PostPanel.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.BPM.PostPanel.superclass.initComponent.call(this);
        this.store.load({ params: { start: 0} });
    },

    RenderProcessName: function (value, p, record) {
        return String.format("<div class='topic'><a class='post' href='#' onclick=\"YZSoft.BPM.FormManager.OpenPostWindow('{0}')\">{1}</a><span class='ver'>(ver:{2})</span></div>",
            YZSoft.HttpUtility.InlineJSEncode(value),
            YZSoft.HttpUtility.HtmlEncode(value),
            record.data.ProcessVersion);
    },

    RenderOption: function (value, p, record) {
        return String.format("<div class='topic'><a href='#' onclick=\"YZSoft.BPM.Dialogs.ShowProcessChartDlg('{0}')\">{1}</a>&nbsp;|&nbsp;<a href='#' onclick=\"YZSoft.BPM.FormManager.OpenDelegationPostWindow('{0}')\">{2}</a></div>",
            YZSoft.HttpUtility.InlineJSEncode(value),
            RS.$('YZStrings.BPM_PostPanel_FlowChart'),
            RS.$('YZStrings.BPM_PostPanel_Delegate'));
    }
});
