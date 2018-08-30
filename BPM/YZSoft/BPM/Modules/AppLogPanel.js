Ext.namespace("YZSoft.BPM");

YZSoft.BPM.AppLogPanel = Ext.extend(Ext.Panel, {
    constructor: function (config) {
        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'ObjectID',
            remoteSort: true,
            baseParams: { limit: YZSoft.EnvSetting.PageSize.BPMAdmin.appLog },

            fields: [
                { name: 'ObjectID' },
                { name: 'LogDate' },
                { name: 'ClientIP' },
                { name: 'UserAccount' },
                { name: 'UserDisplayName' },
                { name: 'Action' },
                { name: 'ActParam1' },
                { name: 'ActParam2' },
                { name: 'Succeed' },
                { name: 'TickUsed' },
                { name: 'Error' }
            ],
            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/BPM/StoreDataService/AppLog.ashx'
            }),
            listeners: {
                scope: this,
                beforeload: function () {
                    if (this.store.baseParams['SearchType'] == 'AdvancedSearch') {
                        this.edtDate.setValue(this.store.baseParams['Date']);
                        this.edtSearch.setValue(this.store.baseParams['Keyword']);
                    }
                    else
                        this.store.baseParams['Date'] = this.edtDate.getValue();
                },
                load: function () {
                    this.updateStatus();
                }
            }
        });

        this.store.setDefaultSort('LogDate', 'DESC');

        this.grid = new Ext.grid.GridPanel({
            border: false,
            store: this.store,
            trackMouseOver: true,
            disableSelection: false,
            loadMask: true,
            region: 'center',
            stripeRows: true,

            // grid columns
            columns: [
                { header: RS.$('YZStrings.BPMAdmin_AppLog_Date'), dataIndex: 'LogDate', width: 160, align: 'left', sortable: true },
                { header: RS.$('YZStrings.BPMAdmin_AppLog_IP'), dataIndex: 'ClientIP', width: 120, align: 'center', sortable: true },
                { header: RS.$('YZStrings.BPMAdmin_AppLog_User'), dataIndex: 'UserAccount', width: 120, align: 'center', sortable: true, renderer: function (value, p, r) { return YZSoft.Render.RenderUserName(r.data.UserAccount, r.data.UserDisplayName) } },
                { header: RS.$('YZStrings.BPMAdmin_AppLog_Op'), dataIndex: 'Action', width: 120, align: 'center', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPMAdmin_AppLog_Comments1'), dataIndex: 'ActParam1', width: 120, align: 'left', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPMAdmin_AppLog_Comments2'), dataIndex: 'ActParam2', align: 'left', sortable: true, renderer: YZSoft.Render.RenderString, id: 'extcol' },
                { header: RS.$('YZStrings.BPMAdmin_AppLog_Result'), dataIndex: 'Succeed', width: 60, align: 'center', sortable: true, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPMAdmin_AppLog_UsedTime'), dataIndex: 'TickUsed', width: 90, align: 'right', sortable: true },
                { header: RS.$('YZStrings.BPMAdmin_AppLog_Error'), dataIndex: 'Error', width: 200, align: 'left', hidden: true, renderer: YZSoft.Render.RenderString }
            ],

            autoExpandColumn: 'extcol'
        });

        this.detailPanel = new Ext.Panel({
            region: 'south',
            split: true,
            border: false,
            cls: 'x-panel-4 x-panel-body-html',
            autoScroll: true,
            height: 100,
            minHeight: 60,
            title: RS.$('YZStrings.BPMAdmin_AppLog_Detail'),
            bodyStyle: 'padding:5px 5px 5px 5px',
            html: ''
        });

        this.btnExcelExport = new YZSoft.ExcelExportButton({
            grid: this.grid,
            templateExcel: String.format("~/YZSoft/BPM/Excel/Log{0}.xls", RS.$('YZStrings.All_LangPostfix')),
            params: {},
            fileName: 'BPMLog',
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

        this.edtDate = new Ext.form.DateField({
            editable: false,
            value: new Date(),
            allowBlank: false,
            listeners: {
                scope: this,
                select: function () {
                    this.store.baseParams['Date'] = this.edtDate.getValue();
                    this.store.reload({ params: { start: 0} });
                }
            }
        });

        this.edtSearch = new YZSoft.Form.SearchField({
            store: this.store,
            emptySearch: true,
            emptyText: RS.$('YZStrings.All_SearchKeyword'),
            width: 180,
            showAdvButton: true,
            scope: this,
            handler: function (advBtn) {
                this.dlg = YZSoft.DialogManager.ShowDialogExt(config.moduleId + '-dlgs',
                    'YZSoft/BPM/Dialogs/AppLogSearchDlg.js',
                    {},
                    { owner: advBtn, store: this.store });
            }
        });

        var cfg = {
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'border',
            //layoutConfig: { targetCls: 'yz-border-layout-bordert' },
            items: [this.grid, this.detailPanel],
            tbar: [this.btnExcelExport, '->', this.btnClear, this.edtDate, ' ', this.edtSearch],
            bbar: new Ext.PagingToolbar({
                pageSize: this.store.baseParams.limit,
                store: this.store,
                displayInfo: true
            }),
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
        YZSoft.BPM.AppLogPanel.superclass.constructor.call(this, cfg);

        var sm = this.grid.getSelectionModel();
        if (sm) {
            sm.on('selectionchange', function () {
                this.updateStatus();
            }, this);
        }
    },

    initComponent: function () {
        YZSoft.BPM.AppLogPanel.superclass.initComponent.call(this);
        this.updateStatus();
    },

    updateStatus: function () {
        var sm = this.grid.getSelectionModel();
        if (sm && sm.getCount() == 1) {
            var rec = sm.getSelected();
            var v = rec.data.Error;
            this.detailPanel.update(YZSoft.HttpUtility.HtmlEncode(v, true));
        }
    }
});
