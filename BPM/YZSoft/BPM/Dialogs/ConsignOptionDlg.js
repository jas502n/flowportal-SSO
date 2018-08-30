// JScript 文件
Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.ConsignOptionDlg = Ext.extend(Ext.Window, {
    title: '加签选项',
    layout: 'form',
    width: 320,
    autoHeight:true,
    resizable:false,
    closeAction: 'close',
    plain: true,
    modal: false,
    bodyStyle: 'padding:15px;',
    buttonAlign: 'center',

    constructor: function(config) {
        this.idParallel = Ext.id();
        this.idSerial = Ext.id();
        this.idForward = Ext.id();
        this.idReturn = Ext.id();
        
        var cfg = {
            labelWidth: 80,
            items: [{
                xtype: 'compositefield',
                fieldLabel: RS.$('YZStrings.BPMDlg_Consign_RoutingType'),
                labelSeparator: '',
                items: [
                    { xtype: 'radio', id: this.idParallel, boxLabel: RS.$('YZStrings.BPM_Consign_Parallel'), name: 'RoutingType', checked:true},
                    { xtype: 'radio', id: this.idSerial, boxLabel: RS.$('YZStrings.BPM_Consign_Serial'), name: 'RoutingType', checked:config.data.RoutingType == 'Serial'}
                ]
            },{
                xtype: 'compositefield',
                fieldLabel: RS.$('YZStrings.BPMDlg_Consign_ReturnType'),
                labelSeparator: '',
                items: [
                    { xtype: 'radio', id: this.idReturn, boxLabel: RS.$('YZStrings.BPM_Consign_Return'), name: 'ReturnText', checked:true},
                    { xtype: 'radio', id: this.idForward, boxLabel: RS.$('YZStrings.BPM_Consign_Forward'), name: 'ReturnText', checked:config.data.ReturnType == 'Forward'}
                ]
            }],
            buttons: [{
                text: RS.$('YZStrings.All_OK'),
                scope: this,
                handler: function() {
                    var rv = {};

                    if (Ext.getCmp(this.idSerial).getValue())
                        rv.RoutingType = 'Serial';
                    else
                        rv.RoutingType = 'Parallel';
                        
                    if (Ext.getCmp(this.idForward).getValue())
                        rv.ReturnType = 'Forward';
                    else
                        rv.ReturnType = 'Return';

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
        YZSoft.BPM.Dialogs.ConsignOptionDlg.superclass.constructor.call(this, cfg);
    }
});
