// JScript 文件

// JScript 文件
Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.SelReturnStepDlg = Ext.extend(Ext.Window, {
    layout: 'border',
    width: 638,
    height: 400,
    minWidth: 638,
    minHeight: 400,
    plain: true,
    modal: true,
    bodyStyle: 'padding:15px;',
    buttonAlign: 'center',

    constructor: function(config) {
        this.idKeyword = Ext.id();
        this.idSubmit = Ext.id();

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'StepID',
            remoteSort: false,
            baseParams: { StepID: config.StepID },

            fields: [
                { name: 'StepID' },
                { name: 'NodeNameOrg' },
                { name: 'NodeName' },
                { name: 'OwnerAccount' },
                { name: 'OwnerDisplayName' },
                { name: 'AgentAccount' },
                { name: 'AgentDisplayName' },
                { name: 'FinishAt' },
                { name: 'Finished', defaultValue: false }
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: resolveUrl('YZSoft/BPM/StoreDataService/TaskReturnSteps.ashx')
            })
        });

        var sm = new Ext.grid.CheckboxSelectionModel({
            listeners:{
                scope: this,
                beforerowselect:function(s,rowIndex,keepExisting,record){
                    return record.data['OwnerAccount'] ? true:false;
                }
            }
        });
        
        this.grid = new Ext.grid.GridPanel({
            region: 'center',
            store: this.store,
            border: false,
            sm: sm,
            colModel: new Ext.grid.ColumnModel({
                defaults: {
                    sortable: false,
                    hideable: false,
                    menuDisabled: true
                },
                columns: [
                    sm,
                    { header: RS.$('YZStrings.BPM_StepName'), dataIndex: 'NodeName', align: 'left', width: 120, renderer: YZSoft.Render.RenderString },
                    { header: RS.$('YZStrings.All_Owner'), dataIndex: 'OwnerAccount', align: 'left', width: 120, renderer: function(value, p, r) { return YZSoft.Render.RenderUserName(r.data.OwnerAccount, r.data.OwnerDisplayName) } },
                    { header: RS.$('YZStrings.All_Delegator'), dataIndex: 'AgentAccount', align: 'left', width: 120, renderer: function(value, p, r) { return YZSoft.Render.RenderUserName(r.data.AgentAccount, r.data.AgentDisplayName) } },
                    { header: RS.$('YZStrings.All_ProcessAt'), dataIndex: 'FinishAt', align: 'left', id: 'finishAt' }
                ]
            }),
            autoExpandColumn: 'finishAt',
            viewConfig: {
                getRowClass : function(record, rowIndex, p, ds){
                    if (!record.data['OwnerAccount'])
                        return 'TaskRowGray';
                }
            },
            listeners: {
                scope: this,
                viewready: function() {
                    if (this.store.getCount() == 1)
                        sm.selectRow(0);
                }
            }
        });

        var cfg = {
            items: [
                { region: 'north', baseCls: 'x-plain', cls: 'yz-sp-titlepanel', border: false, html: '<b>' + config.captionText || RS.$('YZStrings.BPMDlg_SelReturnStep') + '</b>', autoHeight: true },
                this.grid
            ],
            buttons: [{
                text: config.btnText || RS.$('YZStrings.All_OK'),
                id: this.idSubmit,
                scope: this,
                disabled: true,
                handler: function() {
                    var sm = this.grid.getSelectionModel();
                    var recs = sm.getSelections();
                    var stepIDs = new Array();
                    Ext.each(recs, function(v) {
                        stepIDs.push(v.data.StepID);
                    });

                    YZSoft.DialogManager.CloseDialog(this.id, function() { this.fn(this.owner, stepIDs) });
                }
            }, {
                text: RS.$('YZStrings.All_Close'),
                scope: this,
                handler: function() {
                    YZSoft.DialogManager.CloseDialog(this.id);
                }
            }]
        };

        Ext.apply(cfg, config);
        YZSoft.BPM.Dialogs.SelReturnStepDlg.superclass.constructor.call(this, cfg);

        sm.on('selectionchange', function() {
            this.updateStatus();
        }, this);
    },

    initComponent: function() {
        YZSoft.BPM.Dialogs.SelReturnStepDlg.superclass.initComponent.call(this);
        this.store.load({ params: { start: 0} });
    },

    updateStatus: function() {
        var disable = true;
        var sm = this.grid.getSelectionModel();
        var recs = sm.getSelections();
        if (recs.length >= 1)
            disable = false;

        Ext.getCmp(this.idSubmit).setDisabled(disable);
    }
});
