// JScript 文件
importJS("YZSoft/BPM/Panel/OrgUserPanel.js");

Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.SelUserDlg = Ext.extend(Ext.Window, {
    layout: 'border',
    width: 638,
    height: 400,
    minWidth: 638,
    minHeight: 400,
    closeAction: 'hide',
    plain: true,
    modal: false,
    buttonAlign: 'center',

    constructor: function(config) {
        this.idSubmit = Ext.id();

        this.OrgUserPanel = new YZSoft.BPM.Panel.OrgUserPanel({
            singleSelect: true,
            listeners: {
                scope: this,
                rowdblclick: this.DblClickSrcUser,
                selectionchange: this.updateStatus
            }
        });

        this.srcTab = new Ext.TabPanel({
            region: 'center',
            activeTab: 0,
            items: [this.OrgUserPanel]
        });

        var cfg = {
            items: [this.srcTab],
            buttons: [{
                text: RS.$('YZStrings.All_OK'),
                id: this.idSubmit,
                disabled: true,
                scope: this,
                handler: function() {
                    this.OnOK()
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
        YZSoft.BPM.Dialogs.SelUserDlg.superclass.constructor.call(this, cfg);
    },

    initComponent: function() {
        YZSoft.BPM.Dialogs.SelUserDlg.superclass.initComponent.call(this);
    },

    OnOK: function() {
        var user = this.GetSelectedUser();
        var users = new Array();
        users.push(user);
        
        YZSoft.DialogManager.CloseDialog(this.id, function() { this.fn(this.owner, users) });
    },

    listeners: {
        beforeshow: function() {
            this.setTitle(this.title);

            for (var i = 0; i < this.srcTab.items.getCount(); i++) {
                var item = this.srcTab.items.itemAt(i);
                if (item.ClearSelection)
                    item.ClearSelection();
            };
        }
    },

    GetSelectedUser: function() {
        var srcPnl = this.srcTab.getActiveTab();
        if (!srcPnl)
            return new Array();

        var users = srcPnl.GetSelectedUsers();
        if (users.length != 1)
            return null;
        else
            return users[0];
    },

    DblClickSrcUser: function(user) {
        this.OnOK();
    },

    updateStatus: function() {
        var user = this.GetSelectedUser();
        Ext.getCmp(this.idSubmit).setDisabled(user==null);
    }
});
