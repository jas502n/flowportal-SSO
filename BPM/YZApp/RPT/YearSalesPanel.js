importJS("YZSoft/Reports/Panel/ExcelReportPanel.js");
Ext.namespace("YZSoft.App");

YZSoft.App.YearSalesPanel = Ext.extend(Ext.Panel, {
    constructor: function(config) {

        this.btnExport = new Ext.Button({
            iconCls: 'blist',
            text: '导出',
            scope: this,
            handler: function() {
                this.excelPanel.Export();
            }
        });

        this.yearField = new YZSoft.Form.YZYearField({});

        this.btnUpdate = new Ext.Button({
            scope: this,
            text: '更新报表',
            handler: function() {
                this.excelPanel.store.reload({ params: { start: 0} });
            }
        });

        this.excelPanel = new YZSoft.Reports.ExcelReportPanel({
            ExcelFile:'~/YZApp/RPT/Excel/年度营业报表.xls',
            tbar: [this.btnExport, '->', '年度', this.yearField, this.btnUpdate],
            listeners: {
                scope: this,
                beforereportload:function(store){
                    store.baseParams['Year'] = this.yearField.getValue();
                    store.baseParams['ReportDate'] = (new Date()).toString();
                },
                reportload: function() {
                    this.updateStatus();
                }
            }
        });

        var cfg = {
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'border',
            items: [this.excelPanel],
            listeners: {
                scope: this,
                activate: function() {
                    this.excelPanel.store.reload({ params: { start: 0} });
                }
            }
        };

        Ext.apply(cfg, config);

        YZSoft.App.YearSalesPanel.superclass.constructor.call(this, cfg);
    },

    initComponent: function() {
        YZSoft.App.YearSalesPanel.superclass.initComponent.call(this);
        this.updateStatus();
    },

    canDoReport: function() {
        return true;
    },
    
    updateStatus: function() {
        this.btnUpdate.setDisabled(!this.canDoReport());
        this.btnExport.setDisabled(!this.excelPanel.containsReport);
    }
});
