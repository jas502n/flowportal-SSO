// JScript 文件
importJS("YZSoft/BPM/Panel/FlowChartPanel.js");

Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.ProcessChartDlg = Ext.extend(Ext.Window, {
    layout: 'border',
    maximizable: true,
    width: 764,
    height: 533,
    minWidth: 764,
    minHeight: 533,
    closeAction: 'close',
    plain: true,
    modal: true,
    bodyStyle: 'padding:15px;',
    buttonAlign: 'center',

    constructor: function (config) {
        this.idKeyword = Ext.id();
        this.idSubmit = Ext.id();

        this.chartPanel = new YZSoft.BPM.FlowChartPanel({ border: false, processName: config.processName, listeners: {
            scope:this,
            chartloaded: function (chartDefine) {
                this.setTitle(String.format(RS.$('YZStrings.BPMDlg_ProcessChartDlg_TitleWithVer'), config.processName, chartDefine.ProcessVersion));
            }
        }});

        var cfg = {
            title: String.format(RS.$('YZStrings.BPMDlg_ProcessChartDlg_Title'), config.processName),
            layout: 'border',
            items: [this.chartPanel]
        };

        Ext.apply(cfg, config);
        YZSoft.BPM.Dialogs.ProcessChartDlg.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.BPM.Dialogs.ProcessChartDlg.superclass.initComponent.call(this);
    },

    listeners: {
}
});
