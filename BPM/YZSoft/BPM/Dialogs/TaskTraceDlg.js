// JScript 文件
importJS("YZSoft/BPM/Scripts/BPMExt.js");
importJS("YZSoft/BPM/Panel/FlowChartPanel.js");

Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.TaskTraceDlg = Ext.extend(Ext.Window, {
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

        //获得任务摘要信息
        var url = resolveUrl('YZSoft/BPM/StoreDataService/TaskSummaryInfo.ashx');
        Ext.Ajax.request({
            method: 'GET',
            disableCaching: true,
            params: { TaskID: config.TaskID },
            url: url,
            scope: this,
            success: function (response) {
                this.body.unmask();

                this.taskinfo = Ext.decode(response.responseText);

                if (!this.taskinfo.success) {
                    this.summaryPanel.update(this.taskinfo.errorMessage);
                }
                else {
                    var newTitle = String.format(RS.$('YZStrings.BPMDlg_TaskTrace_Title'), this.taskinfo.SerialNum);
                    this.setTitle(newTitle);

                    var html = String.format(RS.$('YZStrings.BPMDlg_TaskTrace_Caption'),
                        config.TaskID,
                        YZSoft.BPM.Render.RenderTaskOwnerExt(this.taskinfo, true),
                        YZSoft.BPM.Render.GetTaskStateDisplayString(this.taskinfo.TaskState),
                        this.taskinfo.ProcessVersion);

                    this.summaryPanel.update(html);
                }
            },
            failure: function (response) {
                this.summaryPanel.update(response.responseText);
            }
        });

        this.summaryPanel = new Ext.Panel({
            region: 'north',
            //baseCls:'x-plain',
            cls:'yz-tasktrace-summary',
            border: false,
            html: '',
            height: 30
        });

        this.chartPanel = new YZSoft.BPM.FlowChartPanel({ title: RS.$('YZStrings.BPMDlg_TaskTrace_TabChart'), border: false, TaskID: config.TaskID, processName: config.processName });

        this.store1 = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'StepID',
            remoteSort: false,
            baseParams: { TaskID: config.TaskID },

            fields: [
                { name: 'StepID' },
                { name: 'NodeNameOrg' },
                { name: 'NodeName' },
                { name: 'OwnerAccount' },
                { name: 'OwnerDisplayName' },
                { name: 'AgentAccount' },
                { name: 'AgentDisplayName' },
                { name: 'ReceiveAt' },
                { name: 'Share' },
                { name: 'Finished', defaultValue: false }
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: resolveUrl('YZSoft/BPM/StoreDataService/TaskProcessingSteps.ashx')
            })
        });

        this.store2 = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'StepID',
            remoteSort: false,
            baseParams: { TaskID: config.TaskID },

            fields: [
                { name: 'StepID' },
                { name: 'NodeNameOrg' },
                { name: 'NodeName' },
                { name: 'SelAction' },
                { name: 'OwnerAccount' },
                { name: 'OwnerDisplayName' },
                { name: 'AgentAccount' },
                { name: 'AgentDisplayName' },
                { name: 'HandlerAccount' },
                { name: 'HandlerDisplayName' },
                { name: 'ReceiveAt' },
                { name: 'FinishAt' },
                { name: 'AutoProcess' },
                { name: 'Comments' },
                { name: 'Finished', defaultValue: true }
           ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: resolveUrl('YZSoft/BPM/StoreDataService/TaskProcessedSteps.ashx')
            })
        });

        this.grid1 = new Ext.grid.GridPanel({
            disableSelection: true,
            region: 'center',
            store: this.store1,
            border: false,
            colModel: new Ext.grid.ColumnModel({
                defaults: {
                    sortable: false,
                    hideable: false,
                    menuDisabled: true
                },
                columns: [
                    { header: RS.$('YZStrings.All_NB'), dataIndex: 'StepID', align: 'center', width: 80 },
                    { header: RS.$('YZStrings.BPM_StepName'), dataIndex: 'NodeName', align: 'left', width: 120 },
                    { header: RS.$('YZStrings.All_Owner'), dataIndex: 'OwnerAccount', align: 'left', width: 120, renderer: YZSoft.BPM.Render.RenderStepOwner },
                    { header: RS.$('YZStrings.All_Delegator'), dataIndex: 'AgentAccount', align: 'left', width: 120, renderer: YZSoft.BPM.Render.RenderStepAgent },
                    { header: RS.$('YZStrings.All_ReceiveAt'), dataIndex: 'ReceiveAt', align: 'left', id: 'receiveAt' }
                ]
            }),
            autoExpandColumn: 'receiveAt',
            viewConfig: {
                getRowClass: function () { return 'TaskRowRuning' }
            },
            listeners: {
                scope: this,
                viewready: function () {
                }
            }
        });

        this.grid2 = new Ext.grid.GridPanel({
            disableSelection: true,
            region: 'center',
            store: this.store2,
            border: false,
            colModel: new Ext.grid.ColumnModel({
                defaults: {
                    sortable: false,
                    hideable: false,
                    menuDisabled: true
                },
                columns: [
                    { header: RS.$('YZStrings.All_NB'), dataIndex: 'StepID', align: 'center', width: 80 },
                    { header: RS.$('YZStrings.BPM_StepName'), dataIndex: 'NodeName', align: 'left', width: 120 },
                    { header: RS.$('YZStrings.All_Owner'), dataIndex: 'OwnerAccount', align: 'left', width: 120, renderer: YZSoft.BPM.Render.RenderStepOwner },
                    { header: RS.$('YZStrings.All_Operate'), dataIndex: 'SelAction', align: 'left', width: 120, renderer: YZSoft.Render.RenderString },
                    { header: RS.$('YZStrings.All_ProcessAt'), dataIndex: 'FinishAt', width: 130, align: 'left' },
                    { header: RS.$('YZStrings.BPM_StepHandler'), dataIndex: 'HandlerAccount', align: 'left', id: 'handlerUser', renderer: YZSoft.BPM.Render.RenderStepHandler }
                ]
            }),
            autoExpandColumn: 'handlerUser',
            viewConfig: {
                enableRowBody: true,
                showPreview: true,
                getRowClass: function (record, rowIndex, p, ds) {
                    if (this.showPreview) {
                        var desc = YZSoft.HttpUtility.HtmlEncode(record.data.Comments, true);
                        if (desc)
                            p.body = '<p class="ttrace-comments">' + desc + '</p>';
                        else
                            p.body = null;
                    }
                }
            },
            listeners: {
                scope: this,
                viewready: function () {
                }
            }
        });

        this.listPanel = new Ext.Panel({
            title: RS.$('YZStrings.BPMDlg_TaskTrace_TabList'),
            region: 'center',
            layout: 'border',
            items: [
                { region: 'north', layout: 'border', border: false, baseCls: 'x-plain', items: [{ region: 'north', baseCls: 'x-plain', cls: 'yz-sp-titlepanel', border: false, html: '<b>' + RS.$('YZStrings.BPMDlg_TaskTrace_RunningSteps') + '</b>', autoHeight: true }, this.grid1], split: true, height: 120, minHeight: 80 },
                { region: 'center', layout: 'border', border: false, baseCls: 'x-plain', items: [{ region: 'north', baseCls: 'x-plain', cls: 'yz-sp-titlepanel', border: false, html: '<b>' + RS.$('YZStrings.BPMDlg_TaskTrace_ProcessTrace') + '</b>', autoHeight: true }, this.grid2] }
            ],
            listeners: {
                scope: this,
                afterlayout: function () {
                    if (!this.listPanel.loaded) {
                        this.store1.load({ params: { start: 0} });
                        this.store2.load({ params: { start: 0} });
                        this.listPanel.loaded = true;
                    }
                }
            }
        });

        this.tab = new Ext.TabPanel({
            region: 'center',
            resizeTabs: true,
            minTabWidth: 115,
            tabWidth: 135,
            enableTabScroll: false,
            border: false,
            activeTab: config.defTabIndex,
            items: [this.chartPanel, this.listPanel]
        });

        var cfg = {
            title: String.format(RS.$('YZStrings.BPMDlg_TaskTrace_Title'), config.TaskID),
            layout: 'border',
            items: [this.summaryPanel, this.tab]
        };

        Ext.apply(cfg, config);
        YZSoft.BPM.Dialogs.TaskTraceDlg.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.BPM.Dialogs.TaskTraceDlg.superclass.initComponent.call(this);
    },

    listeners: {
    }
});
