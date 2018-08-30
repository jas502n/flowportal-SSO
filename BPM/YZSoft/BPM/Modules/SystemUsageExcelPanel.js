importJS("YZSoft/Reports/Panel/ExcelReportPanel.js");
Ext.namespace("YZSoft.BPM");

YZSoft.BPM.SystemUsageExcelPanel = Ext.extend(Ext.Panel, {
    constructor: function (config) {

        this.btnExport = new Ext.Button({
            iconCls: 'blist',
            text: RS.$('YZStrings.All_ExcelExportButton_Text'),
            scope: this,
            handler: function () {
                this.excelPanel.Export();
            }
        });

        this.yearField = new YZSoft.Form.YZYearField({});

        this.btnSearch = new YZSoft.Form.SearchField({
            //store: this.excelPanel.store, 这个时候还没有store，将在后面赋值
            buttonOnly: true,
            emptySearch: true,
            showAdvButton: false
        });

        this.excelPanel = new YZSoft.Reports.ExcelReportPanel({
            ExcelFile: String.format("~/YZSoft/BPM/Excel/SystemUsage{0}{1}.xls", userInfo.DBType ? ('_' + userInfo.DBType) : '', RS.$('YZStrings.All_LangPostfix')),
            tbar: [this.btnExport, '->', RS.$('YZStrings.All_Report_Year'), this.yearField, ' ', this.btnSearch],
            listeners: {
                scope: this,
                beforereportload: function (store) {
                    store.baseParams['Year'] = this.yearField.getValue();
                    store.baseParams['ReportDate'] = (new Date()).toString();
                },
                reportload: function () {
                    this.updateStatus();
                }
            }
        });
        this.btnSearch.store = this.excelPanel.store;

        var cfg = {
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'border',
            items: [this.excelPanel],
            listeners: {
                scope: this,
                activate: function () {
                    if (!this.loaded) {
                        this.excelPanel.store.reload({ params: { start: 0} });
                        this.loaded = true;
                    }
                }
            }
        };

        Ext.apply(cfg, config);

        YZSoft.BPM.SystemUsageExcelPanel.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.BPM.SystemUsageExcelPanel.superclass.initComponent.call(this);
        this.updateStatus();
    },

    canDoReport: function () {
        return true;
    },

    updateStatus: function () {
        this.btnExport.setDisabled(!this.excelPanel.containsReport);
    }
});
