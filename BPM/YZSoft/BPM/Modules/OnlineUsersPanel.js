Ext.namespace("YZSoft.BPM");

YZSoft.BPM.OnlineUsersPanel = Ext.extend(Ext.Panel, {
    constructor: function (config) {
        var idLastActiveDate = Ext.id();

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'Account',
            remoteSort: true,
            baseParams: { limit: YZSoft.EnvSetting.PageSize.BPMAdmin.onlineUsers },
            fields: [
                { name: 'Account' },
                { name: 'DisplayName' },
                { name: 'OfficePhone' },
                { name: 'EMail' },
                { name: 'LastActiveDate' }
            ],
            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/BPM/StoreDataService/OnlineUsers.ashx'
            }),
            listeners: {
                scope: this,
                load: function () {
                    this.updateDisplayInfo();
                }
            }
        });

        this.store.setDefaultSort('LastActiveDate', 'DESC');

        this.grid = new Ext.grid.GridPanel({
            border: false,
            store: this.store,
            trackMouseOver: true,
            disableSelection: false,
            loadMask: true,
            region: 'center',
            stripeRows: true,

            // this.grid columns
            columns: [
                { header: RS.$('YZStrings.All_Account'), dataIndex: 'Account', width: 160, align: 'center', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.All_DisplayName'), dataIndex: 'DisplayName', width: 120, align: 'center', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.All_Phone'), dataIndex: 'OfficePhone', width: 120, align: 'center', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.All_EMail'), dataIndex: 'EMail', width: 120, align: 'center', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.All_LastActiveDate'), dataIndex: 'LastActiveDate', align: 'left', sortable: true, id: idLastActiveDate }
            ],

            autoExpandColumn: idLastActiveDate,
            // paging bar on the bottom
            bbar: new Ext.PagingToolbar({
                pageSize: this.store.baseParams.limit,
                store: this.store,
                displayInfo: true
            })
        });

        this.btnExcelExport = new YZSoft.ExcelExportButton({
            grid: this.grid,
            templateExcel: String.format("~/YZSoft/BPM/Excel/OnlineUsers{0}.xls", RS.$('YZStrings.All_LangPostfix')),
            params: {},
            fileName: 'OnlineUsers',
            AllowExportAll: true,
            listeners: {
                scope: this,
                beforeload: function () {
                    this.store.baseParams['ReportDate'] = (new Date()).toString();
                }
            }
        });

        this.displayItem = new Ext.Toolbar.TextItem({ text: '...' });
        var cfg = {
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'border',
            items: [this.grid],
            tbar: [this.btnExcelExport, '->', this.displayItem],
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
        YZSoft.BPM.OnlineUsersPanel.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.BPM.OnlineUsersPanel.superclass.initComponent.call(this);
    },

    updateDisplayInfo: function () {
        if (this.displayItem) {
            this.displayItem.setText(String.format(RS.$('YZStrings.BPMAdmin_OnlineUser_Msg'),
                this.store.reader.jsonData.allOnlineUserCount,
                this.store.getTotalCount()));
        }
    }
});
