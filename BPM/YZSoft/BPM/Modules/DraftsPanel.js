importJS("YZSoft/BPM/Scripts/BPMExt.js");
importJS("YZSoft/BPM/Scripts/TaskOption.js");
Ext.namespace("YZSoft.BPM");

YZSoft.BPM.DraftsPanel_OpenDraft = function(gridid, pn, draftid, owner) {
    YZSoft.BPM.FormManager.OpenDraft(pn, draftid, owner, null, {
        listeners: {
            scope: this,
            close: function(form) {
                if (form.dialogResult=='ok') {
                    var grid = Ext.getCmp(gridid);
                    if (grid) {
                        grid.store.reload({ params: { start: grid.store.cursor} });
                    }
                }
            }
        }
    });
};

YZSoft.BPM.DraftsPanel = Ext.extend(Ext.Panel, {
    constructor: function (config) {
        var idDesc = Ext.id();

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'DraftID',
            remoteSort: true,
            baseParams: { limit: YZSoft.EnvSetting.PageSize.defaultSize },
            fields: [
                { name: 'DraftID' },
                { name: 'ProcessName' },
                { name: 'CreateDate' },
                { name: 'ModifyDate' },
                { name: 'Account' },
                { name: 'OwnerAccount' },
                { name: 'Owner' },
                { name: 'Comments' },
                { name: 'Description' }
            ],

            // load using script tags for cross domain, if the data in on the same domain as
            // this page, an HttpProxy would be better
            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/BPM/StoreDataService/DraftsData.ashx'
            }),
            listeners: {
                scope: this,
                load: function () {
                    this.updateStatus();
                }
            }
        });

        this.store.setDefaultSort('CreateDate', 'desc');

        this.grid = new Ext.grid.GridPanel({
            border: false,
            store: this.store,
            trackMouseOver: true,
            disableSelection: false,
            loadMask: true,
            region: 'center',
            stripeRows: true,
            dynchk: true,

            // grid columns
            columns: [
                { header: RS.$('YZStrings.BPM_ProcessName'), dataIndex: 'ProcessName', width: 160, align: 'left', sortable: true, scope: this, renderer: this.RenderProcessName },
                { header: RS.$('YZStrings.All_CreateDate'), dataIndex: 'CreateDate', width: 128, align: 'center', sortable: true },
                { header: RS.$('YZStrings.All_ModifyDate'), dataIndex: 'ModifyDate', width: 128, align: 'center', sortable: true },
                { header: RS.$('YZStrings.All_Owner'), dataIndex: 'OwnerAccount', width: 120, align: 'center', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.All_Comments'), dataIndex: 'Comments', width: 220, align: 'left', sortable: false, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_TaskDesc'), dataIndex: 'Description', align: 'left', sortable: true, id: idDesc }
            ],

            autoExpandColumn: idDesc,
            // paging bar on the bottom
            bbar: new Ext.PagingToolbar({
                pageSize: this.store.baseParams.limit,
                store: this.store,
                displayInfo: true
            }),
            listeners: {
                scope: this,
                rowdblclick: function (grid, rowIndex, e) {
                    this.OpenForm(this.store.getAt(rowIndex).data);
                }
            }
        });

        this.btnDelete = new Ext.Button({
            iconCls: 'blist',
            text: RS.$('YZStrings.All_Delete'),
            scope: this,
            handler: function () {
                YZSoft.BPM.TaskOption.DeleteDrafts(this.grid);
            }
        });

        var cfg = {
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'border',
            items: [this.grid],
            tbar: [this.btnDelete],
            listeners: {
                scope: this,
                activate: function () {
                    if (!this.loaded) {
                        this.store.reload({ params: { start: this.store.cursor} });
                        this.loaded = true;
                    }
                }
            }
        };

        Ext.apply(cfg, config);

        YZSoft.BPM.DraftsPanel.superclass.constructor.call(this, cfg);

        var sm = this.grid.getSelectionModel();
        if (sm) {
            sm.on('selectionchange', function () {
                this.updateStatus();
            }, this);
        }
    },

    initComponent: function () {
        YZSoft.BPM.DraftsPanel.superclass.initComponent.call(this);
        this.updateStatus();
    },

    RenderProcessName: function (value, p, record) {
        return String.format("<div><a href='#' onclick=\"YZSoft.BPM.DraftsPanel_OpenDraft('{0}','{1}','{2}','{3}')\">{4}</a></div>",
            this.grid.id,
            YZSoft.HttpUtility.InlineJSEncode(record.data.ProcessName),
            YZSoft.HttpUtility.InlineJSEncode(record.data.DraftID),
            YZSoft.HttpUtility.InlineJSEncode(record.data.Owner),
            YZSoft.HttpUtility.HtmlEncode(value));
    },

    OpenForm: function (item) {
        YZSoft.BPM.DraftsPanel_OpenDraft(this.grid.id, item.ProcessName, item.DraftID, item.Owner);
    },

    updateStatus: function () {
        this.btnDelete.setDisabled(!this.grid.CanDelete());
    }
});
