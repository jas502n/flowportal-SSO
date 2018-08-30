YZSoft.BPM.TaskOption = {
    DeleteDraftsOrFormTemplates: function (grid, formModel) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'DeleteDrafts';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["DraftID" + i] = recs[i].id;
        };

        Ext.Msg.show({
            title: RS.$('YZStrings.All_DeleteConfirm'),
            msg: RS.$(formModel ? 'YZStrings.BPMDlg_DeleteFormTemplates_Confirm':'YZStrings.BPMDlg_DeleteDraft_Confirm'),
            buttons: Ext.Msg.OKCANCEL,
            icon: Ext.MessageBox.INFO,

            fn: function (btn, text) {
                if (btn != 'ok')
                    return;

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.BPMDlg_DeleteDraft_Waiting'),
                    waitMsgTarget: grid.id,

                    success: function (action) {
                        var store = grid.getStore();
                        store.reload({ params: { start: store.cursor} });
                    },

                    failure: function (action) {
                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_MsgTitle_Error'),
                            msg: YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true),
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function (btn, text) {
                                var store = grid.getStore();
                                store.reload({ params: { start: store.cursor} });
                            }
                        });
                    }
                });
            }
        });
    },

    DeleteDrafts: function (grid) {
        YZSoft.BPM.TaskOption.DeleteDraftsOrFormTemplates(grid, false);
    },

    DeleteFormTemplates: function (grid) {
        YZSoft.BPM.TaskOption.DeleteDraftsOrFormTemplates(grid, true);
    },

    PickupShareTask: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'PickupShareTaskExt';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
            params["StepID" + i] = recs[i].data.StepID;
        };

        YZSoft.Ajax.RFC({
            url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
            params: params,
            waitMsg: RS.$('YZStrings.BPMDlg_PickupShareTask_Waiting'),
            waitMsgTarget: grid.id,
            getSuccessMessage: function (items) {
                var store = grid.getStore();
                var msg = '';
                Ext.each(items, function (item) {
                    if (!Ext.isEmpty(msg))
                        msg += '<br/>'

                    msg += String.format(RS.$('YZStrings.BPMDlg_PickupShareTask_ItemSuccess'), store.getById(item.ID).data.SerialNum);
                });

                return msg;
            },

            success: function (action) {
                var store = grid.getStore();
                store.reload({ params: { start: store.cursor} });
            },

            failure: function (action) {
                var msg = this.getSuccessMessage(action.result.processedItems);

                var rec = recs[action.result.processedItems.length];
                var sn = rec.data.SerialNum;
                var failItem = String.format(RS.$('YZStrings.BPMDlg_PickupShareTask_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                if (!Ext.isEmpty(msg))
                    msg += '<br/>'

                msg += failItem;

                Ext.Msg.show({
                    title: RS.$('YZStrings.All_MsgTitle_Error'),
                    msg: msg,
                    buttons: Ext.Msg.OK,
                    icon: Ext.MessageBox.WARNING,
                    fn: function (btn, text) {
                        if (action.result.processedItems.length != 0) {
                            var store = grid.getStore();
                            store.reload({ params: { start: store.cursor} });
                        }
                    }
                });
            }
        });
    },

    PutbackShareTask: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'PutbackShareTaskExt';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
            params["StepID" + i] = recs[i].data.StepID;
        };

        YZSoft.Ajax.RFC({
            url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
            params: params,
            waitMsg: RS.$('YZStrings.BPMDlg_PutbackShareTask_Waiting'),
            waitMsgTarget: grid.id,
            getSuccessMessage: function (items) {
                var store = grid.getStore();
                var msg = '';
                Ext.each(items, function (item) {
                    if (!Ext.isEmpty(msg))
                        msg += '<br/>'

                    msg += String.format(RS.$('YZStrings.BPMDlg_PutbackShareTask_ItemSuccess'), store.getById(item.ID).data.SerialNum);
                });

                return msg;
            },

            success: function (action) {
                var store = grid.getStore();
                store.reload({ params: { start: store.cursor} });
            },

            failure: function (action) {
                var msg = this.getSuccessMessage(action.result.processedItems);

                var rec = recs[action.result.processedItems.length];
                var sn = rec.data.SerialNum;
                var failItem = String.format(RS.$('YZStrings.BPMDlg_PutbackShareTask_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                if (!Ext.isEmpty(msg))
                    msg += '<br/>'

                msg += failItem;

                Ext.Msg.show({
                    title: RS.$('YZStrings.All_MsgTitle_Error'),
                    msg: msg,
                    buttons: Ext.Msg.OK,
                    icon: Ext.MessageBox.WARNING,
                    fn: function (btn, text) {
                        if (action.result.processedItems.length != 0) {
                            var store = grid.getStore();
                            store.reload({ params: { start: store.cursor} });
                        }
                    }
                });
            }
        });
    },

    BatchApprove: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'BatchApprove';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
            params["StepID" + i] = recs[i].data.StepID;
        };

        Ext.Msg.show({
            title: RS.$('YZStrings.BPMDlg_BatchApprove_ConfirmTitle'),
            msg: RS.$('YZStrings.BPMDlg_BatchApprove_ConfirmMsg'),
            buttons: Ext.Msg.OKCANCEL,
            icon: Ext.MessageBox.INFO,

            fn: function (btn, text) {
                if (btn != 'ok')
                    return;

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.BPMDlg_BatchApprove_Waiting'),
                    waitMsgTarget: grid.id,
                    getSuccessMessage: function (items) {
                        var store = grid.getStore();
                        var msg = '';
                        Ext.each(items, function (item) {
                            if (!Ext.isEmpty(msg))
                                msg += '<br/>'

                            msg += store.getById(item.ID).data.SerialNum + ' : ' + item.Result;
                        });

                        return msg;
                    },

                    success: function (action) {
                        var msg = this.getSuccessMessage(action.result.processedItems);

                        Ext.Msg.show({
                            title: RS.$('YZStrings.BPMDlg_BatchApprove_SuccessTitle'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.INFO,
                            fn: function (btn, text) {
                                var store = grid.getStore();
                                store.reload({ params: { start: store.cursor} });
                            }
                        });
                    },

                    failure: function (action) {
                        var msg = this.getSuccessMessage(action.result.processedItems);

                        var rec = recs[action.result.processedItems.length];
                        var sn = rec.data.SerialNum;
                        var failItem = String.format(RS.$('YZStrings.BPMDlg_BatchApprove_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                        if (!Ext.isEmpty(msg))
                            msg += '<br/>'

                        msg += failItem;

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_MsgTitle_Error'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function (btn, text) {
                                if (action.result.processedItems.length != 0) {
                                    var store = grid.getStore();
                                    store.reload({ params: { start: store.cursor} });
                                }
                            }
                        });
                    }
                });
            }
        });
    },

    Reject: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'RejectExt';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
            params["TaskID" + i] = recs[i].data.TaskID;
        };

        var mbox = Ext.Msg.show({
            title: RS.$('YZStrings.BPMDlg_Reject_ConfirmTitle'),
            msg: RS.$('YZStrings.BPMDlg_Reject_ConfirmMsg'),
            buttons: Ext.Msg.OKCANCEL,
            width: 300,
            multiline: true,

            fn: function (btn, text) {
                if (btn != 'ok')
                    return;

                params.Comments = text;

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.BPMDlg_Reject_Waiting'),
                    waitMsgTarget: grid.id,
                    getSuccessMessage: function (items) {
                        var store = grid.getStore();
                        var msg = '';
                        Ext.each(items, function (item) {
                            if (!Ext.isEmpty(msg))
                                msg += '<br/>'

                            msg += String.format(RS.$('YZStrings.BPMDlg_Reject_ItemSuccess'), store.getById(item.ID).data.SerialNum);
                        });

                        return msg;
                    },

                    success: function (action) {
                        var msg = String.format(RS.$('YZStrings.BPMDlg_Reject_SuccessMsg'), action.result.processedItems.length);

                        Ext.Msg.show({
                            title: RS.$('YZStrings.BPMDlg_Reject_SuccessTitle'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.INFO,
                            fn: function (btn, text) {
                                var store = grid.getStore();
                                store.reload({ params: { start: store.cursor} });
                            }
                        });
                    },

                    failure: function (action) {
                        var msg = this.getSuccessMessage(action.result.processedItems);

                        var rec = recs[action.result.processedItems.length];
                        var sn = rec.data.SerialNum;
                        var failItem = String.format(RS.$('YZStrings.BPMDlg_Reject_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                        if (!Ext.isEmpty(msg))
                            msg += '<br/>'

                        msg += failItem;

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_MsgTitle_Error'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function (btn, text) {
                                if (action.result.processedItems.length != 0) {
                                    var store = grid.getStore();
                                    store.reload({ params: { start: store.cursor} });
                                }
                            }
                        });
                    }
                });
            }
        });

        Ext.Msg.AddInputListener(mbox);
    },

    About: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'AboutExt';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
            params["TaskID" + i] = recs[i].data.TaskID;
        };

        var mbox = Ext.Msg.show({
            title: RS.$('YZStrings.BPMDlg_Abort_ConfirmTitle'),
            msg: RS.$('YZStrings.BPMDlg_Abort_ConfirmMsg'),
            buttons: Ext.Msg.OKCANCEL,
            width: 300,
            multiline: true,

            fn: function (btn, text) {
                if (btn != 'ok')
                    return;

                params.Comments = text;

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.BPMDlg_Abort_Waiting'),
                    waitMsgTarget: grid.id,
                    getSuccessMessage: function (items) {
                        var store = grid.getStore();
                        var msg = '';
                        Ext.each(items, function (item) {
                            if (!Ext.isEmpty(msg))
                                msg += '<br/>'

                            msg += String.format(RS.$('YZStrings.BPMDlg_Abort_ItemSuccess'), store.getById(item.ID).data.SerialNum);
                        });

                        return msg;
                    },

                    success: function (action) {
                        var msg = String.format(RS.$('YZStrings.BPMDlg_Abort_SuccessMsg'), action.result.processedItems.length);

                        Ext.Msg.show({
                            title: RS.$('YZStrings.BPMDlg_Abort_SuccessTitle'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.INFO,
                            fn: function (btn, text) {
                                var store = grid.getStore();
                                store.reload({ params: { start: store.cursor} });
                            }
                        });
                    },

                    failure: function (action) {
                        var msg = this.getSuccessMessage(action.result.processedItems);

                        var rec = recs[action.result.processedItems.length];
                        var sn = rec.data.SerialNum;
                        var failItem = String.format(RS.$('YZStrings.BPMDlg_Abort_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                        if (!Ext.isEmpty(msg))
                            msg += '<br/>'

                        msg += failItem;

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_MsgTitle_Error'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function (btn, text) {
                                if (action.result.processedItems.length != 0) {
                                    var store = grid.getStore();
                                    store.reload({ params: { start: store.cursor} });
                                }
                            }
                        });
                    }
                });
            }
        });

        Ext.Msg.AddInputListener(mbox);
    },

    Delete: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'DeleteExt';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
            params["TaskID" + i] = recs[i].data.TaskID;
        };

        var mbox = Ext.Msg.show({
            title: RS.$('YZStrings.All_DeleteConfirm'),
            msg: RS.$('YZStrings.BPMDlg_Delete_ConfirmMsg'),
            buttons: Ext.Msg.OKCANCEL,
            width: 300,
            multiline: true,

            fn: function (btn, text) {
                if (btn != 'ok')
                    return;

                params.Comments = text;

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.BPMDlg_Delete_Waiting'),
                    waitMsgTarget: grid.id,
                    getSuccessMessage: function (items) {
                        var store = grid.getStore();
                        var msg = '';
                        Ext.each(items, function (item) {
                            if (!Ext.isEmpty(msg))
                                msg += '<br/>'

                            msg += String.format(RS.$('YZStrings.BPMDlg_Delete_ItemSuccess'), store.getById(item.ID).data.SerialNum);
                        });

                        return msg;
                    },

                    success: function (action) {
                        var msg = String.format(RS.$('YZStrings.BPMDlg_Delete_SuccessMsg'), action.result.processedItems.length);

                        Ext.Msg.show({
                            title: RS.$('YZStrings.BPMDlg_Delete_SuccessTitle'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.INFO,
                            fn: function (btn, text) {
                                var store = grid.getStore();
                                store.reload({ params: { start: store.cursor} });
                            }
                        });
                    },

                    failure: function (action) {
                        var msg = this.getSuccessMessage(action.result.processedItems);

                        var rec = recs[action.result.processedItems.length];
                        var sn = rec.data.SerialNum;
                        var failItem = String.format(RS.$('YZStrings.BPMDlg_Delete_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                        if (!Ext.isEmpty(msg))
                            msg += '<br/>'

                        msg += failItem;

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_MsgTitle_Error'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function (btn, text) {
                                if (action.result.processedItems.length != 0) {
                                    var store = grid.getStore();
                                    store.reload({ params: { start: store.cursor} });
                                }
                            }
                        });
                    }
                });
            }
        });

        Ext.Msg.AddInputListener(mbox);
    },

    ReturnToInitiator: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'ReturnToInitiatorExt';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
            params["TaskID" + i] = recs[i].data.TaskID;
        };

        var mbox = Ext.Msg.show({
            title: RS.$('YZStrings.BPMDlg_ReturnToInitiator_Title'),
            msg: RS.$('YZStrings.BPMDlg_ReturnToInitiator_ConfirmMsg'),
            buttons: Ext.Msg.OKCANCEL,
            width: 300,
            multiline: true,

            fn: function (btn, text) {
                if (btn != 'ok')
                    return;

                params.Comments = text;

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.BPMDlg_ReturnToInitiator_Waiting'),
                    waitMsgTarget: grid.id,
                    getSuccessMessage: function (items) {
                        var store = grid.getStore();
                        var msg = '';
                        Ext.each(items, function (item) {
                            if (!Ext.isEmpty(msg))
                                msg += '<br/>'

                            msg += String.format(RS.$('YZStrings.BPMDlg_ReturnToInitiator_ItemSuccess'), store.getById(item.ID).data.SerialNum);
                        });

                        return msg;
                    },

                    success: function (action) {
                        var msg = String.format(RS.$('YZStrings.BPMDlg_ReturnToInitiator_SuccessMsg'), action.result.processedItems.length);

                        Ext.Msg.show({
                            title: RS.$('YZStrings.BPMDlg_ReturnToInitiator_SuccessTitle'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.INFO,
                            fn: function (btn, text) {
                                var store = grid.getStore();
                                store.reload({ params: { start: store.cursor} });
                            }
                        });
                    },

                    failure: function (action) {
                        var msg = this.getSuccessMessage(action.result.processedItems);

                        var rec = recs[action.result.processedItems.length];
                        var sn = rec.data.SerialNum;
                        var failItem = String.format(RS.$('YZStrings.BPMDlg_ReturnToInitiator_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                        if (!Ext.isEmpty(msg))
                            msg += '<br/>'

                        msg += failItem;

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_MsgTitle_Error'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function (btn, text) {
                                if (action.result.processedItems.length != 0) {
                                    var store = grid.getStore();
                                    store.reload({ params: { start: store.cursor} });
                                }
                            }
                        });
                    }
                });
            }
        });

        Ext.Msg.AddInputListener(mbox);
    },

    PickbackRestart: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'PickbackRestartExt';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
            params["TaskID" + i] = recs[i].data.TaskID;
        };

        var mbox = Ext.Msg.show({
            title: RS.$('YZStrings.BPMDlg_PickbackRestart_Title'),
            msg: RS.$('YZStrings.BPMDlg_PickbackRestart_ConfirmMsg'),
            buttons: Ext.Msg.OKCANCEL,
            width: 300,
            multiline: true,

            fn: function (btn, text) {
                if (btn != 'ok')
                    return;

                params.Comments = text;

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.BPMDlg_PickbackRestart_Waiting'),
                    waitMsgTarget: grid.id,
                    getSuccessMessage: function (items) {
                        var store = grid.getStore();
                        var msg = '';
                        Ext.each(items, function (item) {
                            if (!Ext.isEmpty(msg))
                                msg += '<br/>'

                            msg += String.format(RS.$('YZStrings.BPMDlg_PickbackRestart_ItemSuccess'), store.getById(item.ID).data.SerialNum);
                        });

                        return msg;
                    },

                    success: function (action) {
                        var msg = String.format(RS.$('YZStrings.BPMDlg_PickbackRestart_SuccessMsg'), action.result.processedItems.length);

                        Ext.Msg.show({
                            title: RS.$('YZStrings.BPMDlg_PickbackRestart_SuccessTitle'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.INFO,
                            fn: function (btn, text) {
                                var store = grid.getStore();
                                store.reload({ params: { start: store.cursor} });
                            }
                        });
                    },

                    failure: function (action) {
                        var msg = this.getSuccessMessage(action.result.processedItems);

                        var rec = recs[action.result.processedItems.length];
                        var sn = rec.data.SerialNum;
                        var failItem = String.format(RS.$('YZStrings.BPMDlg_PickbackRestart_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                        if (!Ext.isEmpty(msg))
                            msg += '<br/>'

                        msg += failItem;

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_MsgTitle_Error'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function (btn, text) {
                                if (action.result.processedItems.length != 0) {
                                    var store = grid.getStore();
                                    store.reload({ params: { start: store.cursor} });
                                }
                            }
                        });
                    }
                });
            }
        });

        Ext.Msg.AddInputListener(mbox);
    },

    Pickback: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'PickbackExt';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
            params["TaskID" + i] = recs[i].data.TaskID;
        };

        var mbox = Ext.Msg.show({
            title: RS.$('YZStrings.BPMDlg_Pickback_Title'),
            msg: RS.$('YZStrings.BPMDlg_Pickback_ConfirmMsg'),
            buttons: Ext.Msg.OKCANCEL,
            width: 300,
            multiline: true,

            fn: function (btn, text) {
                if (btn != 'ok')
                    return;

                params.Comments = text;

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.BPMDlg_Pickback_Waiting'),
                    waitMsgTarget: grid.id,
                    getSuccessMessage: function (items) {
                        var store = grid.getStore();
                        var msg = '';
                        Ext.each(items, function (item) {
                            if (!Ext.isEmpty(msg))
                                msg += '<br/>'

                            msg += String.format(RS.$('YZStrings.BPMDlg_Pickback_ItemSuccess'), store.getById(item.ID).data.SerialNum);
                        });

                        return msg;
                    },

                    success: function (action) {
                        var msg = String.format(RS.$('YZStrings.BPMDlg_Pickback_SuccessMsg'), action.result.processedItems.length);

                        Ext.Msg.show({
                            title: RS.$('YZStrings.BPMDlg_Pickback_SuccessTitle'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.INFO,
                            fn: function (btn, text) {
                                var store = grid.getStore();
                                store.reload({ params: { start: store.cursor} });
                            }
                        });
                    },

                    failure: function (action) {
                        var msg = this.getSuccessMessage(action.result.processedItems);

                        var rec = recs[action.result.processedItems.length];
                        var sn = rec.data.SerialNum;
                        var failItem = String.format(RS.$('YZStrings.BPMDlg_Pickback_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                        if (!Ext.isEmpty(msg))
                            msg += '<br/>'

                        msg += failItem;

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_MsgTitle_Error'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function (btn, text) {
                                if (action.result.processedItems.length != 0) {
                                    var store = grid.getStore();
                                    store.reload({ params: { start: store.cursor} });
                                }
                            }
                        });
                    }
                });
            }
        });

        Ext.Msg.AddInputListener(mbox);
    },

    Transfer: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'TransferExt';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
            params["StepID" + i] = recs[i].data.StepID;
        };

        YZSoft.BPM.TaskOption.TransferDoTransfer(grid, params, RS.$('YZStrings.BPMDlg_Transfer_SelUserTitle'));
    },

    TaskTransfer: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length != 1)
            return;

        var rec = recs[0];
        var params = {};
        params.Method = 'TransferExt';

        YZSoft.DialogManager.ShowDialogExt('YZSoft/BPM/Dialogs/SelProcessingStepDlg.js',
            'YZSoft/BPM/Dialogs/SelProcessingStepDlg.js', {
                title: String.format(RS.$('YZStrings.BPMDlg_Transfer_Title1'), rec.data.SerialNum),
                TaskID: rec.data.TaskID,
                captionText: RS.$('YZStrings.BPMDlg_Transfer_SelStep'),
                btnText: RS.$('YZStrings.BPMDlg_Transfer_NextStep'),
                fn: function (owner, stepIDs) {
                    if (stepIDs.length == 0)
                        return;

                    params.Count = stepIDs.length;
                    for (var i = 0; i < stepIDs.length; i++) {
                        params["ID" + i] = rec.data.TaskID;
                        params["StepID" + i] = stepIDs[i];
                    };

                    YZSoft.BPM.TaskOption.TransferDoTransfer(grid, params, String.format(RS.$('YZStrings.BPMDlg_Transfer_Title2'), rec.data.SerialNum));
                }
            }, {}
        );
    },

    TransferDoTransfer: function (grid, params, title) {
        YZSoft.BPM.Dialogs.ShowSelUserDlg({
            singleSelect: true,
            owner: grid,
            title: title,
            fn: function (grid, users) {
                if (users.length == 0)
                    return;

                var user = users[0];

                params.MemberFullName = user.MemberFullName;

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.BPMDlg_Transfer_Waiting'),
                    waitMsgTarget: grid.id,
                    getSuccessMessage: function (items) {
                        var store = grid.getStore();
                        var msg = '';
                        Ext.each(items, function (item) {
                            if (!Ext.isEmpty(msg))
                                msg += '<br/>'

                            msg += String.format(RS.$('YZStrings.BPMDlg_Transfer_ItemSuccess'), store.getById(item.ID).data.SerialNum, YZSoft.HttpUtility.HtmlEncode(YZSoft.Render.GetUserDisplayName(user.Account, user.DisplayName)));
                        });

                        return msg;
                    },

                    success: function (action) {
                        var msg = String.format(RS.$('YZStrings.BPMDlg_Transfer_SuccessMsg'), action.result.processedItems.length, YZSoft.HttpUtility.HtmlEncode(YZSoft.Render.GetUserDisplayName(user.Account, user.DisplayName)));

                        Ext.Msg.show({
                            title: RS.$('YZStrings.BPMDlg_Transfer_SuccessTitle'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.INFO,
                            fn: function (btn, text) {
                                var store = grid.getStore();
                                store.reload({ params: { start: store.cursor} });
                            }
                        });
                    },

                    failure: function (action) {
                        var msg = this.getSuccessMessage(action.result.processedItems);

                        var rec = recs[action.result.processedItems.length];
                        var sn = rec.data.SerialNum;
                        var failItem = String.format(RS.$('YZStrings.BPMDlg_Transfer_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                        if (!Ext.isEmpty(msg))
                            msg += '<br/>'

                        msg += failItem;

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_MsgTitle_Error'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function (btn, text) {
                                if (action.result.processedItems.length != 0) {
                                    var store = grid.getStore();
                                    store.reload({ params: { start: store.cursor} });
                                }
                            }
                        });
                    }
                });
            }
        });
    },

    AssignOwner: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length != 1)
            return;

        var rec = recs[0];
        var params = {};
        params.Method = 'AssignOwner';

        YZSoft.DialogManager.ShowDialogExt('YZSoft/BPM/Dialogs/SelProcessingStepDlg.js',
            'YZSoft/BPM/Dialogs/SelProcessingStepDlg.js', {
                title: String.format(RS.$('YZStrings.BPMDlg_AssignOwner_Title1'), rec.data.SerialNum),
                TaskID: rec.data.TaskID,
                captionText: RS.$('YZStrings.BPMDlg_AssignOwner_SelStep'),
                btnText: RS.$('YZStrings.BPMDlg_AssignOwner_NextStep'),
                fn: function (owner, stepIDs) {
                    if (stepIDs.length == 0)
                        return;

                    params.Count = stepIDs.length;
                    for (var i = 0; i < stepIDs.length; i++) {
                        params["ID" + i] = rec.data.TaskID;
                        params["StepID" + i] = stepIDs[i];
                    };

                    YZSoft.BPM.TaskOption.AssignOwnerDoAssign(grid, params, String.format(RS.$('YZStrings.BPMDlg_AssignOwner_Title2'), rec.data.SerialNum));
                }
            }, {}
        );
    },

    AssignOwnerDoAssign: function (grid, params, title) {
        YZSoft.BPM.Dialogs.ShowSelUserDlg({
            singleSelect: true,
            owner: grid,
            title: title,
            fn: function (grid, users) {
                if (users.length == 0)
                    return;

                var user = users[0];

                params.MemberFullName = user.MemberFullName;

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.BPMDlg_AssignOwner_Waiting'),
                    waitMsgTarget: grid.id,
                    getSuccessMessage: function (items) {
                        var store = grid.getStore();
                        var msg = '';
                        Ext.each(items, function (item) {
                            if (!Ext.isEmpty(msg))
                                msg += '<br/>'

                            msg += String.format(RS.$('YZStrings.BPMDlg_AssignOwner_ItemSuccess'), store.getById(item.ID).data.SerialNum, YZSoft.HttpUtility.HtmlEncode(YZSoft.Render.GetUserDisplayName(user.Account, user.DisplayName)));
                        });

                        return msg;
                    },

                    success: function (action) {
                        var msg = String.format(RS.$('YZStrings.BPMDlg_AssignOwner_SuccessMsg'), action.result.processedItems.length, YZSoft.HttpUtility.HtmlEncode(YZSoft.Render.GetUserDisplayName(user.Account, user.DisplayName)));

                        Ext.Msg.show({
                            title: RS.$('YZStrings.BPMDlg_AssignOwner_SuccessTitle'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.INFO,
                            fn: function (btn, text) {
                                var store = grid.getStore();
                                store.reload({ params: { start: store.cursor} });
                            }
                        });
                    },

                    failure: function (action) {
                        var msg = this.getSuccessMessage(action.result.processedItems);

                        var rec = recs[action.result.processedItems.length];
                        var sn = rec.data.SerialNum;
                        var failItem = String.format(RS.$('YZStrings.BPMDlg_AssignOwner_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                        if (!Ext.isEmpty(msg))
                            msg += '<br/>'

                        msg += failItem;

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_MsgTitle_Error'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function (btn, text) {
                                if (action.result.processedItems.length != 0) {
                                    var store = grid.getStore();
                                    store.reload({ params: { start: store.cursor} });
                                }
                            }
                        });
                    }
                });
            }
        });
    },

    Public: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'PublicExt';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
            params["TaskID" + i] = recs[i].data.TaskID;
        };

        YZSoft.BPM.Dialogs.ShowSelUserDlg({
            owner: grid,
            fn: function (grid, users) {
                if (users.length == 0)
                    return;

                params.UserCount = users.length;
                var accounts = new Array();
                for (var i = 0; i < users.length; i++) {
                    var user = users[i];
                    params["Account" + i] = user.Account;
                    accounts.push(YZSoft.HttpUtility.HtmlEncode(YZSoft.Render.GetUserDisplayName(user.Account, user.DisplayName)));
                };

                var userDisplayString = accounts.toString();

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.BPMDlg_Public_Waiting'),
                    waitMsgTarget: grid.id,
                    getSuccessMessage: function (items) {
                        var store = grid.getStore();
                        var msg = '';
                        Ext.each(items, function (item) {
                            if (!Ext.isEmpty(msg))
                                msg += '<br/>'

                            msg += String.format(RS.$('YZStrings.BPMDlg_Public_ItemSuccess'), store.getById(item.ID).data.SerialNum, YZSoft.HttpUtility.HtmlEncode(userDisplayString));
                        });

                        return msg;
                    },

                    success: function (action) {
                        var msg = String.format(RS.$('YZStrings.BPMDlg_Public_SuccessMsg'), action.result.processedItems.length, YZSoft.HttpUtility.HtmlEncode(userDisplayString));

                        Ext.Msg.show({
                            title: RS.$('YZStrings.BPMDlg_Public_SuccessTitle'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.INFO,
                            fn: function (btn, text) {
                            }
                        });
                    },

                    failure: function (action) {
                        var msg = this.getSuccessMessage(action.result.processedItems);

                        var rec = recs[action.result.processedItems.length];
                        var sn = rec.data.SerialNum;
                        var failItem = String.format(RS.$('YZStrings.BPMDlg_Public_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                        if (!Ext.isEmpty(msg))
                            msg += '<br/>'

                        msg += failItem;

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_MsgTitle_Error'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function (btn, text) {
                            }
                        });
                    }
                });
            }
        });
    },

    InviteIndicate: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'InviteIndicateExt';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
            params["TaskID" + i] = recs[i].data.TaskID;
        };

        YZSoft.BPM.Dialogs.ShowSelUserDlg({
            owner: grid,
            fn: function (grid, users) {
                if (users.length == 0)
                    return;

                params.UserCount = users.length;
                var accounts = new Array();
                for (var i = 0; i < users.length; i++) {
                    var user = users[i];
                    params["Account" + i] = user.Account;
                    accounts.push(YZSoft.HttpUtility.HtmlEncode(YZSoft.Render.GetUserDisplayName(user.Account, user.DisplayName)));
                };

                var userDisplayString = accounts.toString();

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.BPMDlg_InviteIndicate_Waiting'),
                    waitMsgTarget: grid.id,
                    getSuccessMessage: function (items) {
                        var store = grid.getStore();
                        var msg = '';
                        Ext.each(items, function (item) {
                            if (!Ext.isEmpty(msg))
                                msg += '<br/>'

                            msg += String.format(RS.$('YZStrings.BPMDlg_InviteIndicate_ItemSuccess'), store.getById(item.ID).data.SerialNum, YZSoft.HttpUtility.HtmlEncode(userDisplayString));
                        });

                        return msg;
                    },

                    success: function (action) {
                        var msg = String.format(RS.$('YZStrings.BPMDlg_InviteIndicate_SuccessMsg'), action.result.processedItems.length, YZSoft.HttpUtility.HtmlEncode(userDisplayString));

                        Ext.Msg.show({
                            title: RS.$('YZStrings.BPMDlg_InviteIndicate_SuccessTitle'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.INFO,
                            fn: function (btn, text) {
                            }
                        });
                    },

                    failure: function (action) {
                        var msg = this.getSuccessMessage(action.result.processedItems);

                        var rec = recs[action.result.processedItems.length];
                        var sn = rec.data.SerialNum;
                        var failItem = String.format(RS.$('YZStrings.BPMDlg_InviteIndicate_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                        if (!Ext.isEmpty(msg))
                            msg += '<br/>'

                        msg += failItem;

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_MsgTitle_Error'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function (btn, text) {
                            }
                        });
                    }
                });
            }
        });
    },

    Inform: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'InformExt';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
            params["TaskID" + i] = recs[i].data.TaskID;
        };

        YZSoft.BPM.Dialogs.ShowSelUserDlg({
            owner: grid,
            fn: function (grid, users) {
                if (users.length == 0)
                    return;

                params.UserCount = users.length;
                var accounts = new Array();
                for (var i = 0; i < users.length; i++) {
                    var user = users[i];
                    params["Account" + i] = user.Account;
                    accounts.push(YZSoft.HttpUtility.HtmlEncode(YZSoft.Render.GetUserDisplayName(user.Account, user.DisplayName)));
                };

                var userDisplayString = accounts.toString();

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.BPMDlg_Inform_Waiting'),
                    waitMsgTarget: grid.id,
                    getSuccessMessage: function (items) {
                        var store = grid.getStore();
                        var msg = '';
                        Ext.each(items, function (item) {
                            if (!Ext.isEmpty(msg))
                                msg += '<br/>'

                            msg += String.format(RS.$('YZStrings.BPMDlg_Inform_ItemSuccess'), store.getById(item.ID).data.SerialNum, YZSoft.HttpUtility.HtmlEncode(userDisplayString));
                        });

                        return msg;
                    },

                    success: function (action) {
                        var msg = String.format(RS.$('YZStrings.BPMDlg_Inform_SuccessMsg'), action.result.processedItems.length, YZSoft.HttpUtility.HtmlEncode(userDisplayString));

                        Ext.Msg.show({
                            title: RS.$('YZStrings.BPMDlg_Inform_SuccessTitle'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.INFO,
                            fn: function (btn, text) {
                            }
                        });
                    },

                    failure: function (action) {
                        var msg = this.getSuccessMessage(action.result.processedItems);

                        var rec = recs[action.result.processedItems.length];
                        var sn = rec.data.SerialNum;
                        var failItem = String.format(RS.$('YZStrings.BPMDlg_Inform_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                        if (!Ext.isEmpty(msg))
                            msg += '<br/>'

                        msg += failItem;

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_MsgTitle_Error'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function (btn, text) {
                            }
                        });
                    }
                });
            }
        });
    },

    Jump: function (grid) {
        var sm = grid.getSelectionModel();
        var recs = sm.getSelections() || new Array();

        if (recs.length != 1)
            return;

        var rec = recs[0];
        var params = {};
        params.Method = 'Jump';
        params.Count = recs.length;
        params["ID"] = rec.id;
        params["TaskID"] = rec.data.TaskID;

        var cfg = {
            title: String.format(RS.$('YZStrings.BPMDlg_Jump_Title'), rec.data.SerialNum),
            TaskID: rec.data.TaskID,
            InitCheckStep: rec.data.StepID,
            fn: function (owner, fromStepIDs, toStepName) {
                if (fromStepIDs.length == 0 || Ext.isEmpty(toStepName))
                    return;

                params.FromStepCount = fromStepIDs.length;
                params.ToStepName = toStepName;
                for (var i = 0; i < fromStepIDs.length; i++) {
                    params["FromStepID" + i] = fromStepIDs[i];
                };

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.BPMDlg_Jump_Waiting'),
                    waitMsgTarget: grid.id,

                    success: function (action) {
                        var rec = recs[0];
                        var sn = rec.data.SerialNum;
                        var msg = YZSoft.HttpUtility.HtmlEncode(String.format(RS.$('YZStrings.BPMDlg_Jump_SuccessMsg'), sn, action.result.StepName, action.result.UserFriendlyName), true);

                        Ext.Msg.show({
                            title: RS.$('YZStrings.BPMDlg_Jump_SuccessTitle'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.INFO,
                            fn: function (btn, text) {
                                var store = grid.getStore();
                                store.reload({ params: { start: store.cursor} });
                            }
                        });
                    },

                    failure: function (action) {
                        var rec = recs[0];
                        var sn = rec.data.SerialNum;
                        var msg = YZSoft.HttpUtility.HtmlEncode(String.format(RS.$('YZStrings.BPMDlg_Jump_Fail'), sn, action.result.errorMessage), true);

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_MsgTitle_Error'),
                            msg: msg,
                            buttons: Ext.Msg.OK,
                            icon: Ext.MessageBox.WARNING,
                            fn: function (btn, text) {
                            }
                        });
                    }
                });
            }
        };

        YZSoft.DialogManager.ShowDialogExt('YZSoft/BPM/Dialogs/JumpDlg.js',
            'YZSoft/BPM/Dialogs/JumpDlg.js',
            cfg,
            {});
    },

    Restore: function (grid) {
        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'Restore';
        params.Count = recs.length;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
            params["TaskID" + i] = recs[i].data.TaskID;
        };

        YZSoft.Ajax.RFC({
            url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
            params: params,
            waitMsg: RS.$('YZStrings.BPMDlg_Continue_Waiting'),
            waitMsgTarget: grid.id,
            getSuccessMessage: function (items) {
                var store = grid.getStore();
                var msg = '';
                Ext.each(items, function (item) {
                    if (!Ext.isEmpty(msg))
                        msg += '<br/>'

                    msg += String.format(RS.$('YZStrings.BPMDlg_Continue_ItemSuccess'), store.getById(item.ID).data.SerialNum);
                });

                return msg;
            },

            success: function (action) {
                var msg = String.format(RS.$('YZStrings.BPMDlg_Continue_SuccessMsg'), action.result.processedItems.length);

                Ext.Msg.show({
                    title: RS.$('YZStrings.BPMDlg_Continue_SuccessTitle'),
                    msg: msg,
                    buttons: Ext.Msg.OK,
                    icon: Ext.MessageBox.INFO,
                    fn: function (btn, text) {
                        var store = grid.getStore();
                        store.reload({ params: { start: store.cursor} });
                    }
                });
            },

            failure: function (action) {
                var msg = this.getSuccessMessage(action.result.processedItems);

                var rec = recs[action.result.processedItems.length];
                var sn = rec.data.SerialNum;
                var failItem = String.format(RS.$('YZStrings.BPMDlg_Continue_ItemFail'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                if (!Ext.isEmpty(msg))
                    msg += '<br/>'

                msg += failItem;

                Ext.Msg.show({
                    title: RS.$('YZStrings.All_MsgTitle_Error'),
                    msg: msg,
                    buttons: Ext.Msg.OK,
                    icon: Ext.MessageBox.WARNING,
                    fn: function (btn, text) {
                        if (action.result.processedItems.length != 0) {
                            var store = grid.getStore();
                            store.reload({ params: { start: store.cursor} });
                        }
                    }
                });
            }
        });
    }
}
