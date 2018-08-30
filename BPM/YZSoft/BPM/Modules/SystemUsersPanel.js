


Ext.namespace("YZSoft.BPM");

YZSoft.BPM.SystemUsersPanel = Ext.extend(Ext.Panel, {
    constructor: function (config) {
        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'Account',
            remoteSort: true,
            baseParams: { limit: YZSoft.EnvSetting.PageSize.BPMAdmin.systemUsers },
            fields: [
                { name: 'Account' },
                { name: 'DisplayName' },
                { name: 'OfficePhone' },
                { name: 'EMail' },
                { name: 'LastActiveDate' }
            ],
            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/BPM/StoreDataService/SystemUsers.ashx'
            }),
            listeners: {
                scope: this,
                load: function () {
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
            columns: [
                { header: RS.$('YZStrings.All_Account'), dataIndex: 'Account', width: 160, align: 'center', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.All_DisplayName'), dataIndex: 'DisplayName', width: 120, align: 'center', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.All_Phone'), dataIndex: 'OfficePhone', width: 120, align: 'center', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.All_EMail'), dataIndex: 'EMail', width: 120, align: 'center', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.All_LastActiveDate'), dataIndex: 'LastActiveDate', align: 'left', sortable: true, id: 'extcol' }
            ],
            autoExpandColumn: 'extcol',
            bbar: new Ext.PagingToolbar({
                pageSize: this.store.baseParams.limit,
                store: this.store,
                displayInfo: true
            })
        });

        this.btnExcelExport = new YZSoft.ExcelExportButton({
            grid: this.grid,
            templateExcel: String.format("~/YZSoft/BPM/Excel/30DaysUsers{0}.xls", RS.$('YZStrings.All_LangPostfix')),
            params: {},
            fileName: '30DaysUsers',
            AllowExportAll: true,
            listeners: {
                scope: this,
                beforeload: function () {
                    this.store.baseParams['ReportDate'] = (new Date()).toString();
                }
            }
        });

        this.btnClear = new Ext.Button({
            text: RS.$('YZStrings.All_Search_Clear'),
            scope: this,
            handler: function () {
                this.edtSearch.setValue('');
                this.store.baseParams = this.store.baseParams || {};
                this.store.baseParams['SearchType'] = '';
                this.store.reload({ params: { start: 0} });
            }
        });

        this.edtSearch = new YZSoft.Form.SearchField({
            store: this.store,
            emptySearch: true,
            emptyText: RS.$('YZStrings.All_SearchKeyword'),
            width: 180
        });

        var cfg = {
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'border',
            items: [this.grid],
            tbar: [this.btnExcelExport, '->', this.btnClear, ' ', this.edtSearch],
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
        YZSoft.BPM.SystemUsersPanel.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.BPM.SystemUsersPanel.superclass.initComponent.call(this);
    }
});
