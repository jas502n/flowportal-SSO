﻿// JScript 文件
Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.SignDlg = Ext.extend(Ext.Window, {
    title:RS.$('YZStrings.BPMDlg_Sign_Title'),
    layout:'fit',
    width:292,
    height:152,
    closeAction:'close',
    plain: true,
    modal: true,
    bodyStyle:'padding:5px 10px 0px 12px',
    buttonAlign:'center',

    constructor : function(config){
        this.form = new Ext.form.FormPanel({
            baseCls: 'x-plain',
            hideLabels:true,
            items:[
                {xtype: 'displayfield',value: String.format(RS.$('YZStrings.BPMDlg_Sign_Msg'),config.signInfo.account), width:240},
                {xtype: 'textfield',id:'txtpwd',  inputType: 'password', width:240,listeners:{
                    scope:this,
                    specialkey:function(f,e){
                        if (e.getKey() == e.ENTER)
                            this.OnOK();
                    }
                }}
            ]
        });
                
        var cfg = {
            defaultButton:'txtpwd',
            items:[this.form],
            buttons: [{
                text: RS.$('YZStrings.All_OK'),
                scope:this,
                handler: function(){
                    this.OnOK();
                }
            },{
                text: RS.$('YZStrings.All_Close'),
                scope:this,
                handler: function(){
                    YZSoft.DialogManager.CloseDialog(this.id);
                }
            }]
        };

        Ext.apply(cfg,config);
        YZSoft.BPM.Dialogs.SignDlg.superclass.constructor.call(this,cfg);
    },
    
    OnOK:function(){
        var txtpwd = this.findById('txtpwd');
        var pwd = txtpwd.getValue();
        YZSoft.Ajax.RFC({
            url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
            params: { Method: 'SignAuth', Account: this.signInfo.account, Password:pwd },
            scope:this,
            success: function(action) {
                if (!action.result.pass){
                    alert(RS.$('YZStrings.BPMDlg_Sign_PwdErr'));
                    txtpwd.focus(true,10);
                    return;
                }

                var rv = {SignCode:'1'};
                YZSoft.DialogManager.CloseDialog(this.id, function() { this.fn(this.owner,rv) });
            },
            failure: function(action) {
                alert(action.result.errorMessage);
            }
        });
    }
});
