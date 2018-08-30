importJS("YZSoft/BPM/Panel/OrgTreePanel.js");

Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.SelOUDlg = Ext.extend(Ext.Window, {
    layout: 'border',
    width: 438,
    height: 400,
    minWidth: 438,
    minHeight: 400,
    closeAction: 'hide',
    plain: true,
    modal: false,
    bodyStyle: 'padding:15px;',
    buttonAlign: 'center',

    constructor: function(config) {
        this.idSubmit = Ext.id();

        this.tree = new YZSoft.BPM.Panel.OrgTreePanel({
            region: 'center',
            margins: '0 0 0 0',
            hideRefreshButton: true,
            border: false,
            dblclick:true,
            listeners: {
                scope: this,
                selectionchange: function(node) {
                    this.TreeSelChanged(node)
                },
                //click:function(node){
                //    node.toggle();
                //},
                rowdblclick :function(){
                    this.OnOK();
                }
            }
        });

        var cfg = {
            items: [this.tree],
            tools: [{
                id: 'refresh',
                scope: this,
                handler: function(event, toolEl, panel) {
                    this.tree.getRootNode().reload();
                }
            }],
            buttons: [{
                text: RS.$('YZStrings.All_OK'),
                id: this.idSubmit,
                disabled: true,
                scope: this,
                handler: function() {
                    this.OnOK();
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
        YZSoft.BPM.Dialogs.SelOUDlg.superclass.constructor.call(this, cfg);
    },

    initComponent: function() {
        YZSoft.BPM.Dialogs.SelOUDlg.superclass.initComponent.call(this);
        this.updateStatus();
    },

    TreeSelChanged: function(node) {
        this.updateStatus();
    },

    listeners: {
        beforeshow: function() {
            this.setTitle(this.title);
        }
    },

    OnOK:function(){
        var ous = this.tree.GetSelectedOUs();
        if (ous.length == 0)
            return;

        YZSoft.DialogManager.CloseDialog(this.id, function() { this.fn(this.owner, ous) });
    },
    
    updateStatus: function() {
        Ext.getCmp(this.idSubmit).setDisabled(this.tree.GetSelectedOUs().length == 0);
    }
});