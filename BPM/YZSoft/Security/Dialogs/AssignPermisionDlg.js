Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.AssignPermisionDlg = Ext.extend(Ext.Window, {
    title: RS.$('YZStrings.BPMDlg_AssignPerm_Title'),
    layout: 'border',
    width: 428,
    height: 462,
    minWidth: 428,
    minHeight: 462,
    plain: true,
    modal: true,
    buttonAlign: 'center',

    constructor: function(config) {
        this.idBtnNew = Ext.id();
        this.idBtnEdit = Ext.id();
        this.idBtnRemove = Ext.id();
        this.idBtnMoveUp = Ext.id();
        this.idBtnMoveDown = Ext.id();

        this.store = new YZSoft.Data.JsonStore({
            root: 'acl',
            totalProperty: 'totalRows',
            idProperty: 'SID',
            remoteSort: false,
            baseParams: config.params,
            fields: [
                { name: 'SIDType' },
                { name: 'SID' },
                { name: 'DisplayName' },
                { name: 'DenyModify' },
                { name: 'Permision' }
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/BPM/StoreDataService/RecordSecurityData.ashx'
            }),

            listeners: {
                scope: this,
                load: function() {
                    var rds = new Array();
                    for (var i = 0; i < this.store.reader.jsonData.ResPerms.length; i++) {
                        var resPerm = this.store.reader.jsonData.ResPerms[i];
                        var rd = new this.permstore.recordType({
                            Name: resPerm.Name,
                            DisplayName: resPerm.DisplayName,
                            LeadershipToken_Disabled: !resPerm.LeadershipToken,
                            LeadershipToken_Disabled_Org: !resPerm.LeadershipToken
                        });

                        rds.push(rd);
                    }

                    this.permstore.add(rds);

                    this.updateStatus();
                }
            }
        });

        this.btnPnl = new Ext.Panel({
            region: 'north',
            height: 32,
            border: false,
            bodyStyle: 'background-color:transparent',
            layout: {
                type: 'hbox',
                padding: '1 0 0 0',
                pack: 'end',
                align: 'top'
            },
            defaults: {
                margins: '0 0 0 5',
                width: 80
            },
            items: [{
                xtype: 'button',
                text: RS.$('YZStrings.All_Add'),
                id: this.idBtnNew,
                scope: this,
                handler: function() {
                    YZSoft.BPM.Dialogs.ShowSelSecurityRoleDlg({
                        owner: this,
                        fn: function(owner, sidPairs) {
                            var store = owner.store;
                            var rds = new Array();
                            var selrd = null;
                            for (var i = 0; i < sidPairs.length; i++) {
                                var sidPair = sidPairs[i];
                                var rd = store.getById(sidPair.SID);
                                if (!rd) {
                                    rd = new store.recordType({
                                        SIDType: sidPair.SIDType,
                                        SID: sidPair.SID,
                                        DisplayName: sidPair.DisplayName,
                                        Permision: new Array()
                                    });
                                    rd.id = sidPair.SID;
                                    rds.push(rd);
                                }

                                if (!selrd)
                                    selrd = rd;
                            }

                            if (rds.length != 0)
                                store.add(rds);

                            if (selrd)
                                sm.selectRecords([selrd], false);
                        }
                    });
                }
            }, {
                xtype: 'button',
                text: RS.$('YZStrings.All_Remove'),
                id: this.idBtnRemove,
                scope: this,
                handler: function() {
                    var sm = this.rolegrid.getSelectionModel();
                    this.store.remove(sm.getSelections());
                }
            }]
        });

        this.rolegrid = new Ext.grid.GridPanel({
            region: 'center',
            margins: '5 5 0 5',
            store: this.store,
            border: true,
            sm: new Ext.grid.RowSelectionModel({ singleSelect: true }),
            colModel: new Ext.grid.ColumnModel({
                defaults: {
                    sortable: false,
                    hideable: false,
                    menuDisabled: true
                },
                columns: [
                    { header: RS.$('YZStrings.BPMDlg_SelSID_GridCols_SIDs'), dataIndex: 'DisplayName', align: 'left', id: 'DisplayName', renderer: YZSoft.Render.RenderString }
                ]
            }),
            autoExpandColumn: 'DisplayName',
            listeners: {
                scope: this,
                selchange: function() {
                    this.updateStatus();
                }
            }
        });

        this.permstore = new YZSoft.Data.JsonStore({
            remoteSort: false,
            fields: [
                { name: 'Name' },
                { name: 'DisplayName' },
                { name: 'Allow' },
                { name: 'Allow_Disabled' },
                { name: 'LeadershipToken' },
                { name: 'LeadershipToken_Disabled' }
            ],
            listeners: {
                scope: this,
                update: function(s, r, o) {
                    var sm = this.rolegrid.getSelectionModel();
                    var recs = sm.getSelections() || new Array();
                    if (recs.length != 1)
                        return;

                    var acerd = this.store.getById(recs[0].id); //getSelections得到的是副本,不能修改值


                    acerd.data.Permision = new Array();
                    for (var i = 0; i < this.permstore.getCount(); i++) {
                        var rec = this.permstore.getAt(i);
                        if (!rec.data.Allow)
                            continue;

                        var item = {
                            Name: rec.data.Name,
                            LeadershipToken: rec.data.LeadershipToken
                        }

                        acerd.data.Permision.push(item);
                    }
                }
            }
        });

        this.permgrid = new Ext.grid.GridPanel({
            region: 'center',
            store: this.permstore,
            border: false,
            disableSelection: true,
            trackMouseOver: false,
            viewConfig: {
                markDirty: false
            },
            colModel: new Ext.grid.ColumnModel({
                defaults: {
                    sortable: false,
                    hideable: false,
                    menuDisabled: true
                },
                columns: [
                    { header: RS.$('YZStrings.BPMDlg_AssignPerm_PermList_Perm'), dataIndex: 'DisplayName', id: 'perm', align: 'left', renderer: YZSoft.Render.RenderString },
                    { header: RS.$('YZStrings.BPMDlg_AssignPerm_PermList_Allow'), xtype: 'checkcolumn', dataIndex: 'Allow', align: 'center', width: 80 },
                    { header: RS.$('YZStrings.BPMDlg_AssignPerm_PermList_Leadship'), xtype: 'checkcolumn', dataIndex: 'LeadershipToken', align: 'center', width: 80 }
                ]
            }),

            autoExpandColumn: 'perm',
            listeners: {
                scope: this
            }
        });

        this.bottomPnl = new Ext.Panel({
            margins: '0 5 5 5',
            region: 'south',
            layout: 'border',
            items: [this.btnPnl, this.permgrid],
            height: 186,
            border: false,
            bodyStyle: 'background-color:transparent',
            split: true
        });

        var cfg = {
            layout: 'border',
            modal: false,
            items: [this.rolegrid, this.bottomPnl],
            buttonAlign: 'right',
            buttons: [{
                text: RS.$('YZStrings.All_OK'),
                scope: this,
                handler: function() {
                    var rv = new Array();
                    for (var i = 0; i < this.store.getCount(); i++) {
                        var record = this.store.getAt(i);
                        rv.push(record.data);
                    }

                    YZSoft.DialogManager.CloseDialog(this.id, function() { this.fn(this.owner, rv) });
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
        YZSoft.BPM.Dialogs.AssignPermisionDlg.superclass.constructor.call(this, cfg);

        var sm = this.rolegrid.getSelectionModel();
        if (sm) {
            sm.on('selectionchange', function() {
                this.updateStatus();
            }, this);
        }
    },

    initComponent: function() {
        YZSoft.BPM.Dialogs.AssignPermisionDlg.superclass.initComponent.call(this);
        this.store.load({ params: { start: 0} });
    },

    listeners: {
        beforeshow: function(group, chk) {
            this.updateStatus();
        }
    },

    RenderAccount: function(value, p, record) {
        return YZSoft.HttpUtility.HtmlEncode(value.Account);
    },

    RenderDisplayName: function(value, p, record) {
        return YZSoft.HttpUtility.HtmlEncode(value.DisplayName);
    },

    updateStatus: function() {

        var sm = this.rolegrid.getSelectionModel();
        var recs = sm.getSelections() || new Array();
        if (recs.length != 1) {
            this.SetCurEntry(null);
            return;
        }
        else {
            this.SetCurEntry(recs[0]);
        }

        var incDenyItem = false;
        Ext.each(recs, function(rec) {
            if (rec.data.DenyModify)
                incDenyItem = true;
        });

        Ext.getCmp(this.idBtnRemove).setDisabled(incDenyItem || !this.rolegrid.CanDelete());
    },

    SetCurEntry: function(aceRecord) {
        if (this.curAceRecord == aceRecord)
            return;

        for (var i = 0; i < this.permstore.getCount(); i++) {
            var record = this.permstore.getAt(i);
            var permDef = null;

            if (aceRecord) {
                for (var j = 0; j < aceRecord.data.Permision.length; j++) {
                    var acePerm = aceRecord.data.Permision[j];
                    if (record.data.Name == acePerm.Name || acePerm.Name == 'FullControl') {
                        permDef = acePerm;
                        break;
                    }
                }
            }

            if (permDef) {
                record.data.Allow = true;
                record.data.LeadershipToken = permDef.LeadershipToken;
                record.data.Allow_Disabled = aceRecord.data.DenyModify;
                record.data.LeadershipToken_Disabled = record.data.LeadershipToken_Disabled_Org || aceRecord.data.DenyModify;
            }
            else {
                record.data.Allow = false;
                record.data.LeadershipToken = false;
                record.data.Allow_Disabled = false;
                record.data.LeadershipToken_Disabled = record.data.LeadershipToken_Disabled_Org;
            }
        }

        this.permstore.fireEvent('datachanged', this.permstore);
        this.curAceRecord = aceRecord;
    }
});
