//版本信息
YZSoft.XFormVer = {
    version: '1.0.0',
    versionDetail: {
        major: 1,
        minor: 0,
        patch: 0
    }
};

YZSoft.XForm.ShellInitCheck = function() {
    if (typeof(XFormShell) != 'object')
        return;
    
    if (typeof(XFormShell.LanguageLCID) == 'string')
        return;

    if (confirm(XFormShellInstallFailWarn) == true)
        window.location.href = resolveUrl("YZSoft/Forms/ClientSupport/ManualInstall.aspx");
};
    
YZSoft.XForm.OnFormSaved = function(tid,draftGuid){
};

YZSoft.XForm.OnXFormSubmited = function(){
    CloseWindow('ok');
};

YZSoft.XForm.GetComments = function(){
    var ele = document.getElementById('sys_commants_cur');
    if (ele && ele.value){
        var commentsbox = document.getElementById(ele.value);
        if (commentsbox)
            return commentsbox.value;
    }
};

XFormShellInitCheck = YZSoft.XForm.ShellInitCheck;
ActiveProcessButtons = YZSoft.XForm.ActiveProcessButtons;
ToggleDynSign = YZSoft.XForm.ToggleDynSign;
var YZGetComments = YZGetComments || YZSoft.XForm.GetComments; //如果自定义了YZGetComments则用自定义的YZGetComments

YZSoft.XForm.DOM = {
    GetAllElementsWithID: function(id) {
        var rv = [];
        var all = Ext.isIE ? document.getElementsByName(id):document.body.getElementsByTagName('*');//用类似document.all[id]的方法有时不对，会返回Select的所有Option
        
        var c = all.length;
        for (var i = 0 ; i < c ; i++){
            var el = all[i];
            var eid = el.id;
                            
            if (eid && eid == id)
                rv.push(all[i]);
        }

        return rv;
    }
};

YZSoft.XForm.Consign = {
    GetControls:function(ele){
        var rv = {};
        
        rv.table = Ext.findParent('table.process-btn-list',ele);
        rv.consignrow = Ext.selectNode('tr.consign-row',rv.table)
        rv.consigncell = Ext.selectNode('td.consign-cell',rv.consignrow)
        
        return rv;
    },
    
    Toggle:function (ele){
        var ctrls = YZSoft.XForm.Consign.GetControls(ele);

        if (ctrls.consignrow.style.display == 'none'){
            ctrls.consignrow.style.display = '';
            ele.value = ele.getAttribute('stoptext');
            if (ctrls.consigncell.settingdata){
                ctrls.consigncell.settingdata.Enabled = true;
            }
            else{
                ctrls.consigncell.settingdata = {Enabled:true,Users:[],Option:{RoutingType:'Parallel',ReturnType:'Return'}};//Forward
                ctrls.consigncell.innerHTML = YZSoft.XForm.Consign.DataToHTML(ctrls.consigncell.settingdata);
            }
        }
        else{
            ctrls.consigncell.settingdata.Enabled = false;
            ctrls.consignrow.style.display = 'none';
            ele.value = ele.getAttribute('starttext');
        }
    },
    
    DataToHTML:function(data){
        //获得用户名显示串
        var userDisplayString = '';
        if (data.Users.length == 0)
            userDisplayString = RS.$('YZStrings.BPM_Consign_EmptyUser');
        else{
            var userNames = new Array();
            Ext.each(data.Users,function(user){
                userNames.push(YZSoft.Render.RenderUserName(user.Account,user.DisplayName));
            });
            userDisplayString = userNames.join(';');
        }

        var html = String.format(RS.$('YZStrings.BPM_Consign_Text'),
            String.format("<a href='#' onclick='YZSoft.XForm.Consign.SelUser(this)'>{0}</a>",userDisplayString),
            String.format("<a href='#' onclick='YZSoft.XForm.Consign.EditOption(this)'>{0}|{1}</a>",
                data.Option.RoutingType == 'Parallel' ? RS.$('YZStrings.BPM_Consign_Parallel'):RS.$('YZStrings.BPM_Consign_Serial'),
                data.Option.ReturnType == 'Return' ? RS.$('YZStrings.BPM_Consign_Return'):RS.$('YZStrings.BPM_Consign_Forward'))
        );
        
        return html;
    },
        
    SelUser:function(ele){
        var ctrls = YZSoft.XForm.Consign.GetControls(ele);
        YZSoft.DialogManager.ShowDialogExt('YZSoft/BPM/Dialogs/SelUserDlgMulti.js',
            'YZSoft/BPM/Dialogs/SelUserDlgMulti.js', {
                title: RS.$('YZStrings.BPM_Consign_SelUserTitle'),
                owner:ele,
                initUsers:ctrls.consigncell.settingdata.Users,
                fn: function(owner, users) {
                    ctrls.consigncell.settingdata.Users = users;
                    ctrls.consigncell.innerHTML = YZSoft.XForm.Consign.DataToHTML(ctrls.consigncell.settingdata);
                }
            }
        );
    },
    
    EditOption:function(ele){
        var ctrls = YZSoft.XForm.Consign.GetControls(ele);
        YZSoft.DialogManager.ShowDialogExt('YZSoft/BPM/Dialogs/ConsignOptionDlg.js',
            'YZSoft/BPM/Dialogs/ConsignOptionDlg.js', {
                owner:ele,
                data:ctrls.consigncell.settingdata.Option,
                fn: function(owner, option) {
                    ctrls.consigncell.settingdata.Option = option;
                    ctrls.consigncell.innerHTML = YZSoft.XForm.Consign.DataToHTML(ctrls.consigncell.settingdata);
                }
            }
        );
    }
};
function YZGetConsignUsers(ele){
    var ctrls = YZSoft.XForm.Consign.GetControls(ele);
    if (ctrls.consigncell.settingdata && ctrls.consigncell.settingdata.Enabled){
        var accounts = new Array();
        Ext.each(ctrls.consigncell.settingdata.Users,function(user){
            accounts.push(user.Account);
        });
        return accounts.join(';');
    }
}
function YZGetConsignRoutingType(ele){
    var ctrls = YZSoft.XForm.Consign.GetControls(ele);
    if (ctrls.consigncell.settingdata && ctrls.consigncell.settingdata.Enabled)
        return ctrls.consigncell.settingdata.Option.RoutingType;
}
function YZGetConsignReturnType(ele){
    var ctrls = YZSoft.XForm.Consign.GetControls(ele);
    if (ctrls.consigncell.settingdata && ctrls.consigncell.settingdata.Enabled)
        return ctrls.consigncell.settingdata.Option.ReturnType;
}

YZSoft.XForm.InviteIndicate = {
    GetControls:function(ele){
        var rv = {};
        
        rv.table = Ext.findParent('table.process-btn-list',ele);
        rv.inviterow = Ext.selectNode('tr.invite-row',rv.table)
        rv.invitecell = Ext.selectNode('td.invite-cell',rv.inviterow)
        
        return rv;
    },
    
    Toggle:function (ele){
        var ctrls = YZSoft.XForm.InviteIndicate.GetControls(ele);

        if (ctrls.inviterow.style.display == 'none'){
            ctrls.inviterow.style.display = '';
            ele.value = ele.getAttribute('stoptext');
            if (ctrls.invitecell.settingdata){
                ctrls.invitecell.settingdata.Enabled = true;
            }
            else{
                ctrls.invitecell.settingdata = {Enabled:true,Users:[]};
                ctrls.invitecell.innerHTML = YZSoft.XForm.InviteIndicate.DataToHTML(ctrls.invitecell.settingdata);
            }
        }
        else{
            ctrls.invitecell.settingdata.Enabled = false;
            ctrls.inviterow.style.display = 'none';
            ele.value = ele.getAttribute('starttext');
        }
    },
    
    DataToHTML:function(data){
        //获得用户名显示串
        var userDisplayString = '';
        if (data.Users.length == 0)
            userDisplayString = RS.$('YZStrings.BPM_Invite_EmptyUser');
        else{
            var userNames = new Array();
            Ext.each(data.Users,function(user){
                userNames.push(YZSoft.Render.RenderUserName(user.Account,user.DisplayName));
            });
            userDisplayString = userNames.join(';');
        }

        var html = String.format("<a href='#' onclick='YZSoft.XForm.InviteIndicate.SelUser(this)'>{0}</a>",userDisplayString);
        return html;
    },
        
    SelUser:function(ele){
        var ctrls = YZSoft.XForm.InviteIndicate.GetControls(ele);
        YZSoft.DialogManager.ShowDialogExt('YZSoft/BPM/Dialogs/SelUserDlgMulti.js',
            'YZSoft/BPM/Dialogs/SelUserDlgMulti.js', {
                title:RS.$('YZStrings.BPM_Invite_SelUserTitle'),
                owner:ele,
                initUsers:ctrls.invitecell.settingdata.Users,
                fn: function(owner, users) {
                    ctrls.invitecell.settingdata.Users = users;
                    ctrls.invitecell.innerHTML = YZSoft.XForm.InviteIndicate.DataToHTML(ctrls.invitecell.settingdata);
                }
            }
        );
    }
};
function YZGetInviteIndicateUsers(ele){
    var ctrls = YZSoft.XForm.InviteIndicate.GetControls(ele);
    if (ctrls.invitecell.settingdata && ctrls.invitecell.settingdata.Enabled){
        var accounts = new Array();
        Ext.each(ctrls.invitecell.settingdata.Users,function(user){
            accounts.push(user.Account);
        });
        return accounts.join(';');
    }
}

//验证
YZSoft.XForm.Validator = {
    GetValueHooked: false,
    ValidatorOnLoad: function() {
        if (typeof (Page_Validators) == "undefined")
            return;

        var i, val;
        for (i = 0; i < Page_Validators.length; i++) {
            val = Page_Validators[i];

            if (typeof (val.evaluationfunction) == "string")
                eval("val.evaluationfunction = " + val.evaluationfunction + ";");

            if (typeof (val.isvalid) == "string") {
                if (val.isvalid == "False") {
                    val.isvalid = false;
                    Page_IsValid = false;
                }
                else {
                    val.isvalid = true;
                }
            }
            else {
                val.isvalid = true;
            }

            if (typeof (val.enabled) == "string")
                val.enabled = (val.enabled != "False");
        }
        Page_ValidationActive = false;
    },

    SubmitValidate: function(actname, validationGroup) {
        //if (!XFormShell.XFormAgent.SubmitValidate())
        //    return false;

        if (typeof (OnSubmit) != 'undefined') {
            var func = OnSubmit;
            if (func(actname,validationGroup) === false)
                return false;
        }

        if (!YZSoft.XForm.Validator.GetValueHooked && typeof (ValidatorGetValue) != "undefined") {
            YZSoft.XForm.Validator.GetValueHooked = true;
            ValidatorGetValue = function(el) {
                var c = typeof(el) == 'string' ? document.getElementById(el):el;
                var getvaluefunc = c.getAttribute('GetValueFunc');
                if (getvaluefunc){
                    if (!c.GetValueFuncEval)
                        c.GetValueFuncEval = YZSoft.XForm.Agent.GetFunc(getvaluefunc);
                        
                    if  (c.GetValueFuncEval)
                        return c.GetValueFuncEval(c) || '';
                }

                var emt = c.getAttribute('emptytext');
                if (emt && c.value == emt)
                    return '';

                if (typeof (c.value) == 'string') {
                    var retValue = c.value;
                    if (c.tagName == 'INPUT' && c.type == 'text') {
                        var fmtType = '';
                        var fmtPfx = '';

                        var format = c.getAttribute('format');
                        if (typeof (format) == 'string') {
                            var values = format.split(';');
                            for (var i = 0; i < values.length; i++) {
                                var kvItem = values[i].split(':');
                                if (kvItem.length == 2) {
                                    var propName = kvItem[0].toLowerCase();
                                    if (propName == 'type')
                                        fmtType = kvItem[1].toLowerCase();
                                    if (propName == 'pfx')
                                        fmtPfx = kvItem[1].toLowerCase();
                                }
                            }

                            if (fmtType == 'currency') {
                                retValue = retValue.replace(/,/g, '');
                                if (fmtPfx.length != 0)
                                    retValue = retValue.replace(fmtPfx, '');
                            }
                        }
                    }

                    return retValue;
                }
                
                return ValidatorGetValueRecursive(c);
            };
            
            ValidatorGetValueRecursive = function(control){
                if (typeof(control.value) == 'string' && ((control.type != 'radio' && control.type != 'checkbox') || control.checked == true))
                    return control.value;
                
                var rv = [];
                var l = control.childNodes.length;
                for (var i = 0; i < l; i++) {
                    var v = ValidatorGetValueRecursive(control.childNodes[i]);
                    if (v != '')
                        rv.push(v);
                }
                return rv.join(','); 
            };
        }

        if (typeof (Page_Validators) != "undefined" && Page_Validators != null) {
            var i;
            for (i = 0; i < Page_Validators.length; i++) {
                if (!XFormValidatorItemValidate(Page_Validators[i], validationGroup))
                    return false;
            }
        }

        return true;
    },

    ItemValidate: function(val, validationGroup) {
        var v = YZSoft.XForm.Validator;
        if ((typeof (val.enabled) == "undefined" || val.enabled == true) && (typeof (val.disabled) == "undefined" || val.disabled == false) && v.IsValidationGroupMatch(val, validationGroup)) {
            if (typeof (val.evaluationfunction) == "function") {
                //保存验证对象的ID
                if (!val.controltovalidateOrg)
                    val.controltovalidateOrg = val.controltovalidate;

                //获得验证对象的ID
                var controltovalidate = val.controltovalidateOrg;

                //复合控件中的子区域验证
                var validatePart = val.getAttribute('ValidationPart');
                if (validatePart)
                    controltovalidate = controltovalidate + '_' + validatePart;

                var compexp;
                var eles = YZSoft.XForm.DOM.GetAllElementsWithID(controltovalidate);
                for (i = 0; i < eles.length; i++) {
                    var ele = eles[i];
                    val.controltovalidate = ele;

                    compexp = val.getAttribute('DisableExpress');
                    if (typeof (compexp) == 'string' && compexp.length != 0) {
                        if (XFormShell.XFormAgent.CalcExpress(ele, compexp))
                            continue;
                    }

                    compexp = val.getAttribute('ValueToCompareExpress');
                    if (typeof (compexp) == 'string' && compexp.length != 0)
                        val.valuetocompare = XFormShell.XFormAgent.CalcExpress(ele, compexp).toString();

                    compexp = val.getAttribute('MaxValueExpress');
                    if (typeof (compexp) == 'string' && compexp.length != 0)
                        val.maximumvalue = XFormShell.XFormAgent.CalcExpress(ele, compexp).toString();

                    compexp = val.getAttribute('MinValueExpress');
                    if (typeof (compexp) == 'string' && compexp.length != 0)
                        val.minimumvalue = XFormShell.XFormAgent.CalcExpress(ele, compexp).toString();
                    
                    var isvalid = val.evaluationfunction(val);

                    if (!isvalid) {
                        v.ReportError(ele, val.errormessage)
                        return false;
                    }
                }
            }
        }
        return true;
    },

    IsValidationGroupMatch: function(control, validationGroup) {
        if ((typeof (validationGroup) == "undefined") || (validationGroup == null))
            return true;

        var controlGroup = "";
        if (typeof (control.validationGroup) == "string")
            controlGroup = control.validationGroup;

        var validationGroups = validationGroup.split(";");
        for (var i = 0; i < validationGroups.length; i++) {
            if (controlGroup == validationGroups[i])
                return true;
        }

        return false;
    },

    ReportError: function(el, errormessage) {
        if (!el)
            return;

        if (typeof (el.scrollIntoView) != 'undefined')
            el.scrollIntoView();

        var oldColor = el.style.backgroundColor;
        el.style.backgroundColor = "red";
        
        var alt = function(){
            alert(errormessage);
            el.style.backgroundColor = oldColor;

            if (typeof (el.select) != 'undefined')
                el.select();
        }
        
        if (Ext.isSafari)
            alt.defer(50);
        else
            alt();
    }
};
XValidatorOnLoad = YZSoft.XForm.Validator.ValidatorOnLoad;
XFormValidatorSubmitValidate = YZSoft.XForm.Validator.SubmitValidate;
XFormValidatorItemValidate = YZSoft.XForm.Validator.ItemValidate;
ReportValidateError = YZSoft.XForm.Validator.ReportError;

//提交
YZSoft.XForm.Submit = {
    Submit: function (fireEle, actname, validationGroup, postModel, confirmType, promptMessage) {
        if (confirmType == 'EnterPassword') {
            YZSoft.DialogManager.ShowDialogExt('YZSoft/BPM/Dialogs/SubmitAuthDlg.js',
                'YZSoft/BPM/Dialogs/SubmitAuthDlg.js', {
                    title: RS.$('YZStrings.BPM_SubmitAuthDlg_Title'),
                    StepID: YZSoft.XForm.Agent.Params.StepID,
                    actionName: actname,
                    fn: function () {
                        YZSoft.XForm.Submit.Submit(fireEle, actname, validationGroup, postModel);
                    }
                }
            );

            return;
        }

        if (confirmType == 'Prompt') {
            if (promptMessage.length == 0)
                promptMessage = RS.$('YZStrings.BPM_SubmitAuthDlg_DefaultMsg');

            if (confirm(promptMessage) == false)
                return;
        }

        if (YZSoft.XForm.Validator.SubmitValidate(actname, validationGroup)) {
            if (XFormShell.XFormAgent.DoAction(fireEle, actname)) {
                YZSoft.XForm.OnXFormSubmited();
                return true;
            }
        }
    },

    IndicateSubmit: function (fireEle) {
        if (XFormShell.XFormAgent.IndicateSubmit(fireEle))
            YZSoft.XForm.OnXFormSubmited();
    },

    InformSubmit: function (fireEle) {
        if (XFormShell.XFormAgent.InformSubmit(fireEle))
            YZSoft.XForm.OnXFormSubmited();
    },

    Resign: function (fireEle, pid) {
        if (XFormShell.XFormAgent.Resign(fireEle, pid))
            YZSoft.XForm.OnXFormSubmited();
    },

    XFormSubmitSysAction: function (fireEle, actname, validationGroup, tid, pid, sn) {
        var s = YZSoft.XForm.Submit;
        var v = YZSoft.XForm.Validator;
        var cmts = YZSoft.XForm.Agent.GetComments(fireEle);

        if (actname == 'more') {
            if (!fireEle.menu) {
                var defs = Ext.decode(fireEle.getAttribute("menudefine"));
                var menuItems = [{
                    iconCls: 'blist',
                    text: RS.$('YZStrings.BPM_OpBtn_Trace'),
                    menu: { items: [{
                        iconCls: 'blist',
                        text: RS.$('YZStrings.BPM_OpBtn_TraceChart'),
                        handler: function (item) {
                            fireEle.menu.hide();
                            YZSoft.BPM.Dialogs.ShowTaskTraceDlg(tid, 0);
                        }
                    }, {
                        iconCls: 'blist',
                        text: RS.$('YZStrings.BPM_OpBtn_TraceDataList'),
                        handler: function (item) {
                            fireEle.menu.hide();
                            YZSoft.BPM.Dialogs.ShowTaskTraceDlg(tid, 1);
                        }
                    }]
                    },
                    handler: function (item) { return false }
                }, '-'];
                if (defs.length == 0) {
                    //menuItems = menuItems[0].menu.items;
                    menuItems.pop();
                }
                for (var i = 0; i < defs.length; i++) {
                    var def = defs[i];
                    if (def.id == '-')
                        menuItems.push('-');
                    else
                        menuItems.push({ id: def.id, disabled: def.disabled, text: def.text, iconCls: 'blist' });
                }
                fireEle.menu = new Ext.menu.Menu({
                    items: menuItems,
                    listeners: {
                        scope: this,
                        itemclick: function (item) {
                            fireEle.menu.hide();
                            YZSoft.XForm.Submit.XFormSubmitSysAction(fireEle, item.id, validationGroup, tid, pid, sn);
                        }
                    }
                });
            }

            fireEle.menu.show(fireEle);
        }
        if (actname == 'Reject') {
            var mbox = Ext.Msg.show({
                title: RS.$('YZStrings.BPMDlg_Reject_ConfirmTitle'),
                msg: RS.$('YZStrings.BPMDlg_Reject_ConfirmMsg'),
                buttons: Ext.Msg.OKCANCEL,
                width: 300,
                multiline: true,
                value: cmts,

                fn: function (btn, text) {
                    if (btn != 'ok')
                        return;

                    if (pid != -1 && s.SaveForm(fireEle) == false)
                        return;

                    YZSoft.Ajax.RFC({
                        url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                        params: { Method: 'Reject', TaskID: tid, Comments: text },
                        success: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_Reject_Success'), sn));
                            CloseWindow('ok');
                        },
                        failure: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_Reject_Fail'), sn, action.result.errorMessage));
                        }
                    });
                }
            });

            Ext.Msg.AddInputListener(mbox);
        }
        if (actname == 'RecedeRestart') {
            var mbox = Ext.Msg.show({
                title: RS.$('YZStrings.BPMDlg_ReturnToInitiator_Title'),
                msg: RS.$('YZStrings.BPMDlg_ReturnToInitiator_ConfirmMsg'),
                buttons: Ext.Msg.OKCANCEL,
                width: 300,
                multiline: true,
                value: cmts,

                fn: function (btn, text) {
                    if (btn != 'ok')
                        return;

                    if (pid != -1 && s.SaveForm(fireEle) == false)
                        return;

                    YZSoft.Ajax.RFC({
                        url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                        params: { Method: 'ReturnToInitiator', TaskID: tid, Comments: text },
                        success: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_ReturnToInitiator_Success'), sn, action.result.UserFriendlyName));
                            CloseWindow('ok');
                        },
                        failure: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_ReturnToInitiator_Fail'), sn, action.result.errorMessage));
                        }
                    });
                }
            });

            Ext.Msg.AddInputListener(mbox);
        }
        if (actname == 'Transfer') {
            YZSoft.BPM.Dialogs.ShowSelUserDlg({
                singleSelect: true,
                title: RS.$('YZStrings.BPMDlg_Transfer_SelUserTitle'),

                fn: function (owner, users) {
                    if (users.length == 0)
                        return;

                    if (pid != -1 && s.SaveForm(fireEle) == false)
                        return;

                    YZSoft.Ajax.RFC({
                        url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                        params: { Method: 'Transfer', StepID: pid, MemberFullName: users[0].MemberFullName, Comments: cmts },
                        success: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_Transfer_Success'), sn, action.result.UserFriendlyName));
                            CloseWindow('ok');
                        },
                        failure: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_Transfer_Fail'), sn, action.result.errorMessage));
                        }
                    });
                }
            });
        }
        if (actname == 'InviteIndicate') {
            YZSoft.BPM.Dialogs.ShowSelUserDlg({
                fn: function (owner, users) {
                    if (users.length == 0)
                        return;

                    if (pid != -1 && s.SaveForm(fireEle) == false)
                        return;

                    var params = {};
                    params.Method = 'InviteIndicate';
                    params.TaskID = tid;
                    params.Comments = cmts;
                    params.UserCount = users.length;
                    for (var i = 0; i < users.length; i++)
                        params["Account" + i] = users[i].Account;

                    YZSoft.Ajax.RFC({
                        url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                        params: params,
                        success: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_InviteIndicate_Success'), sn, action.result.UserNameList));
                        },
                        failure: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_InviteIndicate_Fail'), sn, action.result.errorMessage));
                        }
                    });
                }
            });
        }
        if (actname == 'Inform') {
            YZSoft.BPM.Dialogs.ShowSelUserDlg({
                fn: function (owner, users) {
                    if (users.length == 0)
                        return;

                    if (pid != -1 && s.SaveForm(fireEle) == false)
                        return;

                    var params = {};
                    params.Method = 'Inform';
                    params.TaskID = tid;
                    params.Comments = cmts;
                    params.UserCount = users.length;
                    for (var i = 0; i < users.length; i++)
                        params["Account" + i] = users[i].Account;

                    YZSoft.Ajax.RFC({
                        url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                        params: params,
                        success: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_Inform_Success'), sn, action.result.UserNameList));
                        },
                        failure: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_Inform_Fail'), sn, action.result.errorMessage));
                        }
                    });
                }
            });
        }
        if (actname == 'Public') {
            YZSoft.BPM.Dialogs.ShowSelUserDlg({
                fn: function (grid, users) {
                    if (users.length == 0)
                        return;

                    if (pid != -1 && s.SaveForm(fireEle) == false)
                        return;

                    var params = { Method: 'Public', TaskID: tid, Comments: cmts, UserCount: users.length };
                    for (var i = 0; i < users.length; i++)
                        params["Account" + i] = users[i].Account;

                    YZSoft.Ajax.RFC({
                        url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                        params: params,
                        success: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_Public_Success'), sn, action.result.UserNameList));
                        },
                        failure: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_Public_Fail'), sn, action.result.errorMessage));
                        }
                    });
                }
            });
        }
        if (actname == 'Jump') {
            YZSoft.DialogManager.ShowDialogExt(
                'YZSoft/BPM/Dialogs/JumpDlg.js',
                'YZSoft/BPM/Dialogs/JumpDlg.js', {
                    title: String.format(RS.$('YZStrings.BPMDlg_Jump_Title'), sn),
                    TaskID: tid,
                    InitCheckStep: pid,
                    fn: function (owner, fromStepIDs, toStepName) {
                        if (fromStepIDs.length == 0 || Ext.isEmpty(toStepName))
                            return;

                        if (pid != -1 && s.SaveForm(fireEle) == false)
                            return;

                        var params = { Method: 'Jump', TaskID: tid, StepID: pid, FromStepCount: fromStepIDs.length, ToStepName: toStepName, sn: sn };
                        for (var i = 0; i < fromStepIDs.length; i++)
                            params["FromStepID" + i] = fromStepIDs[i];

                        YZSoft.Ajax.RFC({
                            url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                            params: params,
                            success: function (action) {
                                alert(String.format(RS.$('YZStrings.BPMDlg_Jump_Success'), sn, action.result.StepName, action.result.UserFriendlyName));
                                CloseWindow('ok');
                            },
                            failure: function (action) {
                                alert(String.format(RS.$('YZStrings.BPMDlg_Jump_Fail'), sn, action.result.errorMessage));
                            }
                        });
                    }
                }, {});
        }
        if (actname == 'Abort') {
            var mbox = Ext.Msg.show({
                title: RS.$('YZStrings.BPMDlg_Abort_ConfirmTitle'),
                msg: RS.$('YZStrings.BPMDlg_Abort_ConfirmMsg'),
                buttons: Ext.Msg.OKCANCEL,
                width: 300,
                multiline: true,
                value: cmts,

                fn: function (btn, text) {
                    if (btn != 'ok')
                        return;

                    if (pid != -1 && s.SaveForm(fireEle) == false)
                        return;

                    YZSoft.Ajax.RFC({
                        url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                        params: { Method: 'Abort', TaskID: tid, Comments: text },
                        success: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_Abort_Success'), sn));
                            CloseWindow('ok');
                        },
                        failure: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_Abort_Fail'), sn, action.result.errorMessage));
                        }
                    });
                }
            });

            Ext.Msg.AddInputListener(mbox);
        }
        if (actname == 'Delete') {
            var mbox = Ext.Msg.show({
                title: RS.$('YZStrings.All_DeleteConfirm'),
                msg: RS.$('YZStrings.BPMDlg_Delete_ConfirmMsg'),
                buttons: Ext.Msg.OKCANCEL,
                width: 300,
                multiline: true,
                value: cmts,

                fn: function (btn, text) {
                    if (btn != 'ok')
                        return;

                    if (pid != -1 && s.SaveForm(fireEle) == false)
                        return;

                    YZSoft.Ajax.RFC({
                        url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                        params: { Method: 'Delete', TaskID: tid, Comments: text },
                        success: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_Delete_Success'), sn));
                            CloseWindow('ok');
                        },
                        failure: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_Delete_Fail'), sn, action.result.errorMessage));
                        }
                    });
                }
            });

            Ext.Msg.AddInputListener(mbox);
        }
        if (actname == 'PickBackRestart') {
            var mbox = Ext.Msg.show({
                title: RS.$('YZStrings.BPMDlg_PickbackRestart_Title'),
                msg: RS.$('YZStrings.BPMDlg_PickbackRestart_ConfirmMsg'),
                buttons: Ext.Msg.OKCANCEL,
                width: 300,
                multiline: true,
                value: cmts,

                fn: function (btn, text) {
                    if (btn != 'ok')
                        return;

                    YZSoft.Ajax.RFC({
                        url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                        params: { Method: 'PickbackRestart', TaskID: tid, Comments: text },
                        success: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_PickbackRestart_Success'), sn, action.result.StepName, action.result.UserFriendlyName));
                            CloseWindow('ok');
                        },
                        failure: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_PickbackRestart_Fail'), sn, action.result.errorMessage));
                        }
                    });
                }
            });

            Ext.Msg.AddInputListener(mbox);
        }
        if (actname == 'PickBack') {
            var mbox = Ext.Msg.show({
                title: RS.$('YZStrings.BPMDlg_Pickback_Title'),
                msg: RS.$('YZStrings.BPMDlg_Pickback_ConfirmMsg'),
                buttons: Ext.Msg.OKCANCEL,
                width: 300,
                multiline: true,
                value: cmts,

                fn: function (btn, text) {
                    if (btn != 'ok')
                        return;

                    YZSoft.Ajax.RFC({
                        url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                        params: { Method: 'Pickback', TaskID: tid, Comments: text },
                        success: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_Pickback_Success'), sn, action.result.StepName, action.result.UserFriendlyName));
                            CloseWindow('ok');
                        },
                        failure: function (action) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_Pickback_Fail'), sn, action.result.errorMessage));
                        }
                    });
                }
            });

            Ext.Msg.AddInputListener(mbox);
        }
        if (actname == 'RecedeBack') {
            YZSoft.DialogManager.ShowDialogExt(
                'YZSoft/BPM/Dialogs/SelReturnStepDlg.js',
                'YZSoft/BPM/Dialogs/SelReturnStepDlg.js', {
                    title: RS.$('YZStrings.BPMDlg_RecedeBack_Title'),
                    StepID: pid,
                    captionText: RS.$('YZStrings.BPMDlg_RecedeBack_CaptionText'),
                    fn: function (owner, stepIDs) {
                        if (stepIDs.length == 0)
                            return;

                        if (pid != -1 && s.SaveForm(fireEle) == false)
                            return;

                        var params = { Method: 'RecedeBack', StepID: pid, Comments: cmts, Count: stepIDs.length };
                        for (var i = 0; i < stepIDs.length; i++)
                            params["ToStepID" + i] = stepIDs[i];

                        YZSoft.Ajax.RFC({
                            url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                            params: params,
                            success: function (action) {
                                alert(String.format(RS.$('YZStrings.BPMDlg_RecedeBack_Success'), sn, action.result.tosteps));
                                CloseWindow('ok');
                            },
                            failure: function (action) {
                                alert(String.format(RS.$('YZStrings.BPMDlg_RecedeBack_Fail'), sn, action.result.errorMessage));
                            }
                        });
                    }
                }
            );
        }
        if (actname == 'DirectSend') {
            if (pid != -1 && s.SaveForm(fireEle, true, actname, validationGroup) == false)
                return;

            YZSoft.Ajax.RFC({
                url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
                params: { Method: 'DirectSend', StepID: pid },
                success: function (action) {
                    alert(String.format(RS.$('YZStrings.BPMDlg_DirectSend_Success'), sn, action.result.tosteps));
                    CloseWindow('ok');
                },
                failure: function (action) {
                    alert(String.format(RS.$('YZStrings.BPMDlg_DirectSend_Fail'), sn, action.result.errorMessage));
                }
            });
        }
        if (actname == 'Save') {
            if (s.SaveForm(fireEle) == false)
                return;

            alert(RS.$('YZStrings.BPM_SystemOptionMessage_Save'));
            YZSoft.XForm.OnFormSaved(tid, '');
        }
    },

    SaveForm: function (fireEle, validate, actname, validationGroup) {
        return XFormShell.XFormAgent.Save(fireEle, validate, actname, validationGroup);
    },

    SaveAsDraft: function (fireEle, processName) {
        var draftGuid = XFormShell.XFormAgent.SaveAsDraft(fireEle);
        if (draftGuid.length != 0) {
            fireEle.onclick = function () { SaveDraft(this, draftGuid); };
            alert(RS.$('YZStrings.BPM_SystemOptionMessage_SavedAsDraft'));
            YZSoft.XForm.OnFormSaved('', draftGuid);
        }
    },

    SaveAsFormTemplate: function (fireEle, processName) {
        var draftGuid = XFormShell.XFormAgent.SaveAsFormTemplate(fireEle);
        if (draftGuid.length != 0) {
            fireEle.onclick = function () { SaveFormTemplate(this, draftGuid); };
            alert(RS.$('YZStrings.BPM_SystemOptionMessage_SavedAsFormTemplate'));
            YZSoft.XForm.OnFormSaved('', draftGuid);
        }
    },

    SaveDraft: function (fireEle, draftGuid) {
        var rv = XFormShell.XFormAgent.SaveDraft(fireEle, draftGuid);
        if (rv) {
            alert(RS.$('YZStrings.BPM_SystemOptionMessage_DraftSaved'));
            YZSoft.XForm.OnFormSaved('', draftGuid);
        }
        return rv;
    },

    SaveFormTemplate: function (fireEle, draftGuid) {
        var rv = XFormShell.XFormAgent.SaveDraft(fireEle, draftGuid);
        if (rv) {
            alert(RS.$('YZStrings.BPM_SystemOptionMessage_FormTemplateSaved'));
            YZSoft.XForm.OnFormSaved('', draftGuid);
        }
        return rv;
    },

    PutbackShareTask: function (fireEle, sn, stepid) {
        var cmts = YZSoft.XForm.Agent.GetComments(fireEle);
        YZSoft.Ajax.RFC({
            url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
            params: { Method: 'PutbackShareTask', StepID: stepid, Comments: cmts },
            success: function (action) {
                alert(String.format(RS.$('YZStrings.BPMDlg_PutbackShareTask_Success'), sn));
                CloseWindow('ok');
            },
            failure: function (action) {
                alert(String.format(RS.$('YZStrings.BPMDlg_PutbackShareTask_Fail'), sn, action.result.errorMessage));
            }
        });
    },

    PickupShareTask: function (fireEle, sn, stepid) {
        var cmts = YZSoft.XForm.Agent.GetComments(fireEle);
        YZSoft.Ajax.RFC({
            url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
            params: { Method: 'PickupShareTask', StepID: stepid, Comments: cmts },
            success: function (action) {
                alert(String.format(RS.$('YZStrings.BPMDlg_PickupShareTask_Success'), sn));
                CloseWindow('ok');
            },
            failure: function (action) {
                alert(String.format(RS.$('YZStrings.BPMDlg_PickupShareTask_Fail'), sn, action.result.errorMessage));
            }
        });
    }
};
XFormSubmit = YZSoft.XForm.Submit.Submit;
XFormIndicateSubmit = YZSoft.XForm.Submit.IndicateSubmit;
XFormInformSubmit = YZSoft.XForm.Submit.InformSubmit;
XFormSubmitSysAction = YZSoft.XForm.Submit.XFormSubmitSysAction;
SaveForm = YZSoft.XForm.Submit.SaveForm;
SaveAsDraft = YZSoft.XForm.Submit.SaveAsDraft;
SaveAsFormTemplate = YZSoft.XForm.Submit.SaveAsFormTemplate;
SaveDraft = YZSoft.XForm.Submit.SaveDraft;
SaveFormTemplate = YZSoft.XForm.Submit.SaveFormTemplate;
PutbackShareTask = YZSoft.XForm.Submit.PutbackShareTask;
PickupShareTask = YZSoft.XForm.Submit.PickupShareTask;

YZSoft.XForm.FormApplication = {
    Save:function(fireEle,idx,validationGroup,closebehavior){
        if (XFormValidatorSubmitValidate("Save",validationGroup)){
            if (XFormShell.XFormAgent.SaveFormApplication(fireEle)){
                var key = XFormShell.XFormAgent.GetKey();
                var sn = XFormShell.XFormAgent.GetSerialNum();
                CloseWindow('ok',{key:key,sn:sn,Key:key,SN:sn});//表单服务控件,DataMap中用的大写
            }
        }
    }
};
XFormApplicationSave = YZSoft.XForm.FormApplication.Save;

YZSoft.XForm.Print = {
    PrintPreview: function(btn,param, highlight) {
        YZSoft.XForm.Print.highlight = highlight;
        
        param = param.replace(/\{(\S+)\}/g, function(m, w){
            return XFormShell.XFormAgent.CalcExpress(btn,w);
        });
        
        XFormShell.XFormAgent.PrintPreview(param);
    },
    
    OnBeforePrint:function(){
        var eles = document.body.getElementsByTagName('*')||[];
        var count = eles.length;
        for(var i = 0 ; i < count ; i++){
            var ele = eles[i];
            
            if (YZSoft.XForm.Print.highlight){
                if (ele.disabled){
                    ele.disabled = false;
                    ele.PrintEnabled = true;
                }
            }
            if (ele.getAttribute('PrintOut') == 'False'){
                ele.style.visibility = 'hidden';
                ele.PrintHidden = true;
            }
        }

        if (typeof(OnBeforePrint) == 'function')
            OnBeforePrint();
    },
    
    OnAfterPrint:function(){
        var eles = document.body.getElementsByTagName('*')||[];
        var count = eles.length;
        for(var i = 0 ; i < count ; i++){
            var ele = eles[i];
                  
            if (YZSoft.XForm.Print.highlight){
                if (ele.PrintEnabled){
                    ele.disabled = true;
                    ele.PrintEnabled = false;
                }
            }
            if (ele.PrintHidden){
                ele.style.visibility = 'visible';
                ele.PrintHidden = false;
            }
        }
        
        if (typeof(OnAfterPrint) == 'function')
            OnAfterPrint();
    }
};
XFormPrint = YZSoft.XForm.Print.PrintPreview;
window.onbeforeprint = YZSoft.XForm.Print.OnBeforePrint;
window.onafterprint = YZSoft.XForm.Print.OnAfterPrint;

YZSoft.XForm.AgentSupport = {
    //一定要用background-image不能用IMG，否则，当菜单在窗口外时，表单会跳转到图片，同时用户按住IMG移动到IE边缘，表单也会跳转
    CreateGridHOverEleR:function(baseUrl) {
        var div = document.createElement("div");
        div.style.position = 'absolute';
        div.setAttribute('PrintOut',false);
        div.id = '__sys_grid_btn_r__';
        div.innerHTML = "<a style='width:13px;height:22px;background-image:url(" + baseUrl + "Images/hoverbtn_gridr.gif);display:block;' />";
        div = document.body.appendChild(div);
        return div;
    },

    CreateGridHOverEleL:function(baseUrl){
        var div = document.createElement("div");
        div.style.position = 'absolute';
        div.setAttribute('PrintOut',false);
        div.id = '__sys_grid_btn_l__';
        div.innerHTML = "<a style='width:13px;height:22px;background-image:url(" + baseUrl + "Images/hoverbtn_gridl.gif);display:block;' />";
        div = document.body.appendChild(div);
        return div;
    },

    CreateBlockHOverEleR:function(baseUrl){
        var div = document.createElement("div");
        div.style.position = 'absolute';
        div.setAttribute('PrintOut',false);
        div.id = '__sys_block_btn_r__';
        div.innerHTML = "<a style='width:13px;height:22px;background-image:url(" + baseUrl + "Images/hoverbtn_gridr.gif);display:block;' />";
        div = document.body.appendChild(div);
        return div;
    },

    CreateBlockHOverEleL:function(baseUrl){
        var div = document.createElement("div");
        div.style.position = 'absolute';
        div.setAttribute('PrintOut',false);
        div.id = '__sys_block_btn_l__';
        div.innerHTML = "<a style='width:13px;height:22px;background-image:url(" + baseUrl + "Images/hoverbtn_gridl.gif);display:block;' />";
        div = document.body.appendChild(div);
        return div;
    }
};
CreateGridHOverEleR = YZSoft.XForm.AgentSupport.CreateGridHOverEleR;
CreateGridHOverEleL = YZSoft.XForm.AgentSupport.CreateGridHOverEleL;
CreateBlockHOverEleR = YZSoft.XForm.AgentSupport.CreateBlockHOverEleR;
CreateBlockHOverEleL = YZSoft.XForm.AgentSupport.CreateBlockHOverEleL;

YZSoft.XForm.Dialogs = {
    ShowSelUserDlg: function(btn, multiSelect, w, h) {
        YZSoft.BPM.Dialogs.ShowSelUserDlg({
            singleSelect: !multiSelect,
            owner: btn,
            fn: function(owner, users) {
                owner.mapvalues = users;
                XFormOnDataAvailable(owner);
            }
        });
    },

    ShowEditAccountListDlg: function(btn, w, h) {
        var initAccounts = new Array();
        var acclist = XFormShell.XFormAgent.CalcExpress(btn, btn.initfield);
        if (acclist) {
            var accounts = acclist.split(';');
            for (var i = 0; i < accounts.length; i++) {
                var account = accounts[i];
                if (!Ext.isEmpty(account))
                    initAccounts.push(account);
            }
        }

        YZSoft.BPM.Dialogs.ShowSelUserDlg({
            singleSelect: false,
            owner: btn,
            initAccounts: initAccounts,
            fn: function(owner, users) {
                var accounts = new Array();
                Ext.each(users, function(user) { accounts.push(user.Account) });
                var accountList = accounts.join(';');
                owner.mapvalues = {value:accountList};
                XFormOnDataAvailable(owner);
            }
        });
    },

    ShowSelOUDlg: function(btn, w, h) {
        YZSoft.BPM.Dialogs.ShowSelOUDlg({
            owner: btn,
            fn: function(owner, ous) {
                owner.mapvalues = ous;
                XFormOnDataAvailable(owner);
            }
        });
    }
};

YZSoft.XForm.Excel = {
    ExportToExcel: function (btn, tableid) {
        var d = { rows: [] };
        var t = document.getElementById(tableid);
        var rc = t.rows.length;

        for (var i = 0; i < rc; i++) {
            var row = t.rows[i];
            var cc = t.rows[i].cells.length;
            var r = {};
            d.rows.push(r);
            for (var j = 0, k = 0; j < cc; j++) {
                var td = row.cells[j];
                r[k] = (YZSoft.XForm.Excel.GetCellText(td, i) || '').trim();
                k += td.colSpan || 1;
            }
        }

        YZSoft.File.download(resolveUrl('YZSoft/Excel/Service/Json2Excel.ashx'), { data: Ext.encode(d) });
    },

    GetCellText: function (td, rowidx) {
        var rv = '';

        var len = td.childNodes.length;
        for (var i = 0; i < len; i++)
            rv += YZSoft.XForm.Excel.GetControlText(td.childNodes[i]);

        rv = rv || td.innerText || td.textContent || '';
        return rv;
    },

    GetControlText: function (ctrl) {
        var rv = '';
        var tag = ctrl.tagName;
        switch (tag) {
            case 'INPUT':
                switch (ctrl.type) {
                    case 'button':
                        break;
                    case 'radio':
                        if (ctrl.checked)
                            rv = ctrl.nextSibling.innerText || ctrl.nextSibling.textContent;
                        break;
                    case 'checkbox':
                        if (ctrl.checked)
                            rv = ctrl.nextSibling.innerText || ctrl.nextSibling.textContent;
                        break;
                    default:
                        rv = ctrl.value;
                }
                break;
            case 'SELECT':
                var selIndex = ctrl.selectedIndex;
                if (selIndex == -1)
                    rv = ''
                else {
                    var selItem = ctrl.options[selIndex];
                    rv = selItem.text || selItem.value || '';
                }
                return rv||' ';
            default:
                rv = ctrl.value;
        }

        rv = rv || '';
        if (!rv) {
            var len = ctrl.childNodes.length;
            for (var i = 0; i < len; i++) {
                var value = YZSoft.XForm.Excel.GetControlText(ctrl.childNodes[i]);
                if (value) {
                    if (rv) rv += ';';
                    rv += value;
                }
            }
        }

        return rv;
    }
};

YZSoft.XForm.Attachment = {
    FileTypeIcon: {
        'ai.png': 'ai',
        'avi.png': 'avi,rmvb,mpg,mpeg,wmv,mov,mp4,mp4v,m4v,3gp,3gpp,3g2,3gp2',
        'bmp.png': 'bmp,rle,dib,wbm,wbmp',
        'cdr.png': 'cdr',
        'chm.png': 'chm',
        'dll.png': 'dll,sys,dat,bak,drv',
        'doc.png': 'doc,docx',
        'dwg.png': 'dwg',
        'eml.png': 'eml',
        'fla.png': 'fla',
        'gif.png': 'gif',
        'htm.png': 'htm,html,asp,aspx,php,xml',
        'ini.png': 'ini,inf',
        'jpg.png': 'jpg,jpeg,jpe,jpf,jpx,jp2,j2c',
        'mdb.png': 'mdb,mdbx',
        'mp3.png': 'mp3,mid,rmi,midi,m4a,m4r,wma,wav,snd,aac,ra',
        'pdf.png': 'pdf',
        'png.png': 'png',
        'ppt.png': 'ppt,pptx',
        'psd.png': 'psd',
        'rar.png': 'rar,zip',
        'rm.png': 'rm,asf,wm',
        'rtf.png': 'rtf',
        'swf.png': 'swf',
        'tif.png': 'tif,tiff,wml,raw,eps,pcx',
        'ttf.png': 'ttf,fon,otf,ttc',
        'txt.png': 'txt,log',
        'xls.png': 'xls,xlsx'
    },

    QueueError: {
        "-100": RS.$('YZStrings.BPM_FlashUpload_QueueError_M100'),
        "-110": RS.$('YZStrings.BPM_FlashUpload_QueueError_M110'),
        "-120": RS.$('YZStrings.BPM_FlashUpload_QueueError_M120'),
        "-130": RS.$('YZStrings.BPM_FlashUpload_QueueError_M130')
    },

    UploadError: {
        '-200': RS.$('YZStrings.BPM_FlashUpload_UploadError_M200'),
        '-220': RS.$('YZStrings.BPM_FlashUpload_UploadError_M220'),
        '-240': RS.$('YZStrings.BPM_FlashUpload_UploadError_M240')
    },

    Init: function () {
        var attels = Ext.query('div[xtype=attachment]');
        Ext.each(attels, function (attel) {
            YZSoft.XForm.Attachment.ItemInit(attel);
        });
    },

    ItemInit: function (attcnt) {
        var fireEle = Ext.selectNode('a.add', attcnt);
        var option = {
            type: attcnt.getAttribute('FileTypes'),
            description: attcnt.getAttribute('FileTypesDescription'),
            size: attcnt.getAttribute('MaximumFileSize')
        };

        if (fireEle.swfinited || fireEle.bindUploader)
            return;

        fireEle.swfinited = true;

        var uploader = new SWFUpload({
            flash_url: YZSoft.Attachment.AttachmentBaseURL + "/upload.swf",
            upload_url: YZSoft.Attachment.AttachmentBaseURL + "/upload.ashx",
            file_size_limit: option.size || "1000 MB",
            file_types: option.type || "*.*",
            file_types_description: option.description || RS.$('YZStrings.BPM_FlashUpload_AllFileDesc'),
            file_upload_limit: 0,
            file_queue_limit: 0,
            debug: false,
            post_params: typeof (userToken) == 'undefined' ? {} : userToken,
            // Button settings
            button_width: "800",
            button_height: "60",
            button_placeholder: Ext.selectNode('em', fireEle),
            button_cursor: SWFUpload.CURSOR.HAND,
            button_window_mode: SWFUpload.WINDOW_MODE.TRANSPARENT,

            prevent_swf_caching: true,

            file_dialog_start_handler: function (a) {
            },
            swfupload_loaded_handler: function () {
                fireEle.className = 'add swfloaded';
                fireEle.style.cursor = 'pointer';
            },
            file_queued_handler: function (file) {
                YZSoft.XForm.Attachment.AddAttachItem(this.el, {
                    id: file.id,
                    name: file.name,
                    size: file.size,
                    type: file.type,
                    state: "queued"
                });
            },
            file_queue_error_handler: function (file, code, message) {
                var err = YZSoft.XForm.Attachment.QueueError[code] || RS.$('YZStrings.BPM_FlashUpload_QueueError_Default');
                err = String.format(err, file.name, file.size.toFileSize(), code, message, this.settings.file_size_limit);
                alert(err);
            },
            file_dialog_complete_handler: function (numSelected, numQueued) {
                if (numQueued > 0)
                    YZSoft.XForm.Attachment.BeginUpload(this);
            },
            upload_success_handler: function (file, data) {
                var rv = Ext.decode(data);

                //上传失败
                if (!rv.result) {
                    var err = String.format(RS.$('YZStrings.BPM_FlashUpload_UploadFail_Msg'), file.name, rv.message || rv.errorMessage);
                    alert(err);
                    YZSoft.XForm.Attachment.DeleteAttachment(file.id);
                    YZSoft.XForm.Attachment.BeginUpload(this);
                    return;
                }

                //上传成功
                var div = document.getElementById(file.id + '_BOX');
                div.className = 'item';
                div.setAttribute('attachment', rv.message);
                Ext.selectNode('b', div).innerHTML = '';
                var a = Ext.selectNode('a', div);
                var downloadUrl = YZSoft.Attachment.GetAttachmentURL(rv.message, 'download');
                a.onclick = function () { YZSoft.File.download(downloadUrl) };
                //alert(a.onclick);
                //a.setAttribute('href', YZSoft.Attachment.GetAttachmentURL(rv.message,'download')); showModalDialog中不能正确下载，会出现各种异常情况

                YZSoft.XForm.Attachment.UpdateValue(this.el)
                YZSoft.XForm.Attachment.BeginUpload(this);
            },
            upload_error_handler: function (file, code, message) {
                if (code == SWFUpload.UPLOAD_ERROR.FILE_CANCELLED)
                    return;

                var err = YZSoft.XForm.Attachment.UploadError[code] || RS.$('YZStrings.BPM_FlashUpload_UploadFailHttp_Msg');
                err = String.format(err, file.name, file.size.toFileSize(), code, message);
                alert(err);
                YZSoft.XForm.Attachment.DeleteAttachment(file.id);
                YZSoft.XForm.Attachment.BeginUpload(this);
            },
            upload_progress_handler: function (file, complete, total) {
                var div = document.getElementById(file.id + '_BOX');
                if (div) {
                    Ext.selectNode('b', div).innerHTML = Math.floor(complete / total * 100) + '%';
                    div.style.backgroundPosition = (complete / total * (div.offsetWidth) - 1) + "px 0px";
                }
            }
        });

        uploader.el = fireEle.parentNode;
        fireEle.parentNode.uploader = uploader;
        uploader.elAtts = uploader.el.firstChild;
    },

    AddAttachItem: function (container, file) {
        var div = document.createElement('div');
        div.className = 'item';

        var html = '<a href="###" onclick="YZSoft.File.download(\'{0}\')" style="background-image: url({1})">' +
                        '<span class="flag"></span>{2}<span class="size">- {3}</span>' +
                    '</a>' +
                    '<b></b>' +
                    '<span class="del" onclick="YZSoft.XForm.Attachment.DeleteAttachment(\'{4}\',true)""></span>';

        switch (file.state) {
            case "queued":
                url = "";
                div.className = "item wait"
                break
            default:
                div.className = "item"
                url = YZSoft.Attachment.GetAttachmentURL(file.attachment, 'download');
                break
        }

        html = String.format(html,
            url,
            YZSoft.XForm.Attachment.GetIconByType(file.type),
            file.name,
            file.size.toFileSize(),
            file.id);

        div.id = file.id + "_BOX";
        div.bindFile = file;
        div.innerHTML = html;
        Ext.selectNode('div', container).appendChild(div);
        return div;
    },

    GetIconByType: function (ext) {
        var a = YZSoft.XForm.Attachment;
        if (!a.FileTypeIconFlat) {
            a.FileTypeIconFlat = {};

            for (var propName in a.FileTypeIcon) {
                var exts = a.FileTypeIcon[propName].split(',')
                for (var o = 0; o < exts.length; o++)
                    a.FileTypeIconFlat[exts[o]] = propName;
            }
        }

        var ext = ext.replace('.', '').toLowerCase();
        var filetypeimg = a.FileTypeIconFlat[ext] || 'unknow.png';
        return resolveUrl('YZSoft/Attachment/ext/' + filetypeimg)
    },

    BeginUpload: function (uploader) {
        var cnt = uploader.el;
        if (!Ext.selectNode('div.uploading', cnt)) {
            var wait = Ext.selectNode('div.wait', cnt)
            if (wait) {
                wait.className = "item uploading";
                Ext.selectNode('b', wait).innerHTML = '0%';
                uploader.startUpload(wait.bindFile.id);
            }
        }
    },

    DeleteAttachment: function (fileid, prompt) {
        var div = document.getElementById(fileid + "_BOX");
        var file = div.bindFile;

        if (prompt && div.className == 'item') {
            if (!confirm(String.format(RS.$('YZStrings.BPM_FlashUpload_DeleteConfirm'), file.name)))
                return false;
        }

        var cnt = div.parentNode.parentNode;
        var uploader = cnt.uploader;
        if (uploader)
            uploader.cancelUpload(fileid);

        div.parentNode.removeChild(div);
        YZSoft.XForm.Attachment.UpdateValue(cnt)
    },

    DeleteAllAttachment: function (cnt) {
        var items = Ext.selectNode('div', cnt);
        while (true) {
            var itm = Ext.selectNode('div', items);
            if (!itm)
                break;
            items.removeChild(itm);
        }

        YZSoft.XForm.Attachment.UpdateValue(cnt)
    },

    UpdateValue: function (cnt) {
        var f = Ext.selectNode('div.items', cnt);
        var divs = Ext.query('div.item', f);

        var ids = [];
        Ext.each(divs, function (div) {
            var id = div.getAttribute("attachment");
            if (id)
                ids.push(id);
        });

        var inp = Ext.selectNode('input', f);
        inp.value = ids.join(";");
        XFormOnChange(inp);
    },

    SetValue: function (ele, value) {
        ele.value = value;
        var url = YZSoft.Attachment.GetAttachmentInfoURL + '/GetAttachment.ashx';
        YZSoft.Ajax.RFC({
            url: url,
            resolveUrl: false,
            method: 'POST', //文件超过70个时，GET方法会报GetAttachment.ashx Not Found错误（URL长度限制引起）
            params: { fileids: value, companycode: YZSoft.Attachment.CompanyCode },
            success: function (action) {
                var cnt = ele.parentNode.parentNode;
                YZSoft.XForm.Attachment.DeleteAllAttachment(cnt);

                Ext.each(action.result.files, function (file) {
                    file.id = file.attachment;
                    var div = YZSoft.XForm.Attachment.AddAttachItem(cnt, file)
                    div.setAttribute("attachment", file.attachment);
                });
                YZSoft.XForm.Attachment.UpdateValue(cnt)
            },
            failure: function (action) {
                var cnt = ele.parentNode.parentNode;
                YZSoft.XForm.Attachment.UpdateValue(cnt)
                alert(action.result.errorMessage);
            }
        });
    },

    SetDisable: function (ele, disabled) {
        var cnt = new Ext.Element(ele.parentNode.parentNode, true);
        if (disabled)
            cnt.addClass('attach-disabled');
        else
            cnt.removeClass('attach-disabled');
    }
};
YZSoft.XForm.Agent.RegistFunc('YZSoft_XForm_Attachment_SetValue',YZSoft.XForm.Attachment.SetValue);
YZSoft.XForm.Agent.RegistFunc('YZSoft_XForm_Attachment_SetDisable',YZSoft.XForm.Attachment.SetDisable);

YZSoft.XForm.DateTimePicker = {
    GetControls:function(ele){
        var elDiv = ele.getAttribute('xsubtype')=='date' ? null:Ext.findParent('div.datetimepicker',ele);
        var rv = {
            elInp:elDiv ? Ext.selectNode('div.date input',elDiv):ele,
            elDiv:elDiv,
            elTime:elDiv ? Ext.selectNode('select.time',elDiv):null,
            elHour:elDiv ? Ext.selectNode('div.time select.hour',elDiv):null,
            elMinutes:elDiv ? Ext.selectNode('div.time select.minutes',elDiv):null
        }
        return rv;
    },
    
    SetValue:function(ele,value,writeable){
        var cts = YZSoft.XForm.DateTimePicker.GetControls(ele);
        
        //得到日期，时，分
        var strDate;
        var strHour;
        var strMinutes;
        
        if (Ext.isEmpty(value)){
            strDate = '';
            strHour = '00';
            strMinutes = '00';
        }
        else{
            value = YZSoft.XForm.DateTimePicker.RegularDateString(value);
            var date = Date.parseDate(value, 'Y-m-d H:i:s');
            strDate = date.format('Y-m-d');
            strHour = date.format('H');
            strMinutes = date.format('i');
                        
            var step = new Number((cts.elDiv ? cts.elDiv.step:cts.elInp.step)||1);
            if(step > 1){ //step 大于1时，需要将分钟部分整数化
                var minutes = new Number(strMinutes);
                minutes = Math.floor((minutes/step))*step;
                strMinutes = String.leftPad(minutes,2,'0');
            }
        }

        if (ele.getAttribute('DisplayOnly')){
            var datevalue = '';
            switch(ele.getAttribute('XSubType')){
                case 'date':
                    datevalue = strDate;
                    break;
                case 'timehour':
                    datevalue = strDate + ' ' + strHour;
                    break;
                default:
                    datevalue = strDate + ' ' + strHour + ':' + strMinutes;
                    break;                    
            }
            ele.value = datevalue;
        }
        else{
            ele.value = strDate;
        
            if (cts.elTime){
                cts.elTime.value = strHour + ':' + strMinutes;
            }
            
            if (cts.elHour && cts.elMinutes){
                cts.elHour.value = strHour;
                cts.elMinutes.value = strMinutes;
            }
        }
    },
    
    GetValue:function(ele){
        var cts = YZSoft.XForm.DateTimePicker.GetControls(ele);        
        var strDate = ele.value;
        
        //日期为空则返回空
        if (Ext.isEmpty(strDate))
            return '';
            
        if (cts.elTime){
            var strTime = cts.elTime.value;
            if (!strTime)
                strTime = '00:00';
            return strDate + ' ' + strTime;
        }
        
        if (cts.elHour && cts.elMinutes){
            var strHour = cts.elHour.value;
            if (!strHour)
                strHour = '00';

            var strMinutes = cts.elMinutes.value;
            if (!strMinutes)
                strMinutes = '00';
                
            return strDate + ' ' + strHour  + ':' + strMinutes;
        }

        return YZSoft.XForm.DateTimePicker.RegularDateString(strDate);
    },
    
    GetDateValue:function(ele){
        return ele.value;
    },
    
    RegularDateString:function(strDate){
        if (strDate.length == 10)
            strDate += ' 00:00:00';
        else if (strDate.length == 13)
            strDate += ':00:00';
        else if (strDate.length == 16)
            strDate += ':00';
        
        return strDate;
    },
    
    SetDisable:function(ele,disabled){
        var cts = YZSoft.XForm.DateTimePicker.GetControls(ele);        
       
        var elcnt = new Ext.Element(cts.elDiv,true);
        if (disabled)
            elcnt.addClass('datetimepicker-disabled');
        else
            elcnt.removeClass('datetimepicker-disabled');

        if (cts.elDiv && !String.Equ(cts.elDiv.getAttribute('disablebehavior'),'ReadOnly')){
            ele.disabled = disabled;
        }
    
        if (cts.elTime)
            cts.elTime.disabled = disabled;
            
        if (cts.elHour)
            cts.elHour.disabled = disabled;
            
        if (cts.elMinutes)
            cts.elMinutes.disabled = disabled;
    },
    
    OnChange:function(fireEle){
        var cts = YZSoft.XForm.DateTimePicker.GetControls(fireEle);
        XFormOnChange(cts.elInp);
    },

    ShowDatePicker : function(ele){
        var cts = YZSoft.XForm.DateTimePicker.GetControls(ele);
        var elCnt = new Ext.Element(cts.elDiv||cts.elInp);
        if (elCnt.hasClass('datetimepicker-disabled'))
            return;
            
        var menu = new Ext.menu.DateMenu({
            hideOnClick: false,
            focusOnSelect: false
        });
                
        Ext.apply(menu.picker,  {
            format : 'Y-m-d',
            showToday : true
        });
        
        var strDate = YZSoft.XForm.DateTimePicker.GetDateValue(ele);
        var curdate = strDate ?  Date.parseDate(strDate,'Y-m-d'):new Date();
        
        menu.picker.setValue(curdate);
        menu.show(ele, "tl-bl?");
        menu['on']('select', function(m,d){
            ele.value = d ? d.format('Y-m-d'):'';
            menu.hide();
            XFormOnChange(ele);
        });
    }
};

YZSoft.XForm.Agent.RegistFunc('YZSoft_XForm_DateTimePicker_SetValue',YZSoft.XForm.DateTimePicker.SetValue);
YZSoft.XForm.Agent.RegistFunc('YZSoft_XForm_DateTimePicker_GetValue',YZSoft.XForm.DateTimePicker.GetValue);
YZSoft.XForm.Agent.RegistFunc('YZSoft_XForm_DateTimePicker_SetDisable',YZSoft.XForm.DateTimePicker.SetDisable);
YZSoft_XForm_DateTimePicker_OnChange = YZSoft.XForm.DateTimePicker.OnChange;

YZSoft.XForm.HistoryFormLink = {
    OpenForm : function(ele,w,h,spn){
        if (ele.disabled)
            return;
            
        var elLink = new Ext.Element(ele,true);
        var txtbox = elLink.prev('input',true);
        if (!txtbox)
            return;
            
        var taskid = txtbox.value;
        if (!taskid)
            return;
            
        var cfg = {
            top:window.screenTop + 20,
            left:window.screenLeft + 20
        };
        if (w > 0)
            cfg.width = w;
        if (h > 0)
            cfg.height = h;
            
        YZSoft.Ajax.RFC({
            url: 'YZSoft/BPM/XMLService/CallFunc.ashx',
            params: {Method:'GetReadToken',TaskID:taskid},
            success: function(action) {
                cfg.param = {token:action.result.token,spn:spn}
                YZSoft.BPM.FormManager.OpenTaskForRead(taskid,null,null,cfg);
            },
            failure: function(action) {
                alert(action.result.errorMessage);
            }
        });        
    },
    
    SetValue : function(ele,value,writeable){
        ele.value = value;
                
        var elEle = new Ext.Element(ele,true);        
        var link = elEle.next('a',true);
        if (!link)
            return;

        if (!Ext.isEmpty(value)){
            var text = link.getAttribute('Text');
            if (text && text.charAt(0) == '#'){ //以#开头

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/BPM/XMLService/UserDataProvider.ashx',
                    params: {Method:'GetTaskInfo',TaskID:value},
                    success: function(action) {
                        var fieldName = text.substring(1);
                        var fieldValue = action.result.Task[fieldName];
                        YZSoft.XForm.HistoryFormLink.SetLinkAsActive(link,fieldValue);
                    },
                    failure: function(action) {
                        YZSoft.XForm.HistoryFormLink.SetLinkAsEmpty(link);
                    }
                });
            }
            else{
                YZSoft.XForm.HistoryFormLink.SetLinkAsActive(link,link.getAttribute('Text'));
            }
        }
        else{
            YZSoft.XForm.HistoryFormLink.SetLinkAsEmpty(link);
        }
    },
    
    SetLinkAsEmpty : function(link){
        link.removeAttribute('href');
        link.disabled = true;
        link.innerHTML = link.getAttribute('EmptyText') || link.getAttribute('Text') || RS.$('YZStrings.BPM_HisFormLink_DefaultText');
    },
    
    SetLinkAsActive : function(link,text){
        link.href = '#';
        link.disabled = false;
        link.innerHTML = text;
    }
};
YZSoft.XForm.Agent.RegistFunc('YZSoft_XForm_HistoryFormLink_SetValue',YZSoft.XForm.HistoryFormLink.SetValue);

YZSoft.XForm.ChildFormLink = {
    OpenForm : function(ele,appname,formstate,w,h){
        var elLink = new Ext.Element(ele,true);
        var txtbox = elLink.prev('input',true);
        if (!txtbox)
            return;
            
        var key = txtbox.value;
        var cfg = {
            top:window.screenTop + 20,
            left:window.screenLeft + 20,
            listeners: {
                scope: this,
                close: function(form) {
                    if (form.dialogResult=='ok') {
                        txtbox.value = form.returnValue.key;
                        var xel = YZSoft.XForm.Element.TryGetChechedEle(txtbox);
                        if (xel){
                            XFormOnChange(txtbox);
                            xel.mapvalues = form.returnValue;
                            XFormOnDataAvailable(xel);
                        }
                   }
                }
            }
        };
        
        if (w > 0)
            cfg.width = w;
        if (h > 0)
            cfg.height = h;
        
        YZSoft.BPM.FormManager.OpenFormApplication(appname,key,formstate,null,cfg);
    }
};

YZSoft.XForm.BrowserButton = {
    InvokeBeforePopup : function(btn,cfg){        
        var funcname = btn.getAttribute('beforepopupcallfunc');
        if (funcname){
            var beforePopupFunc = eval(funcname);
            if (beforePopupFunc)
                return (beforePopupFunc(btn,cfg) === false ? false:true);
        }

        return true;
    },
    
    ShowJSDlg: function(btn,url, w, h) {
        var x = YZSoft.XForm;
        var xbtn = x.Element.TryGetChechedEle(btn,true);

        var cfg = {
            title: RS.$('YZStrings.BPMDlg_BrowserButton_JSDlg_Title'),
            owner: xbtn,
            modal:true,
            fn: function(owner, rows) {
                owner.mapvalues = rows;
                XFormOnDataAvailable(owner);
            }
        };

        cfg.param = xbtn.DSToURLParam()||{};

        //调用BeforePopup返回false则退出
        if (!x.BrowserButton.InvokeBeforePopup(btn,cfg))
            return;
        
        if (w > 0)
            cfg.width = w;
        if (h > 0)
            cfg.height = h;

        YZSoft.DialogManager.ShowDialogExt(url,url, cfg, {});
    },
    
    ShowHttpDlg:function(btn,url,w,h){
        var x = YZSoft.XForm;
        var xbtn = x.Element.TryGetChechedEle(btn,true);

        var cfg = {
            title: RS.$('YZStrings.BPMDlg_BrowserButton_HttpDlg_Title'),
            owner: xbtn,
            listeners: {
                scope: this,
                close: function(form) {
                    if (form.dialogResult=='ok') {
                        xbtn.mapvalues = form.returnValue;
                        XFormOnDataAvailable(xbtn);
                   }
                }
            }
        };
        
        cfg.param = xbtn.DSToURLParam()||{};
        
        //调用BeforePopup返回false则退出
        if (!YZSoft.XForm.BrowserButton.InvokeBeforePopup(btn,cfg))
            return;
        
        cfg.width = (w > 0) ? w:YZSoft.EnvSetting.BPM.DataBrowserWnd.DlgSize.Width;
        cfg.height = (h > 0) ? h:YZSoft.EnvSetting.BPM.DataBrowserWnd.DlgSize.Height;

        cfg.minWidth = 300,
        cfg.minHeight = 160,

        YZSoft.DialogManager.ShowIFrameDialog('DataBrowserPopupWindow',url, cfg.param, cfg);
    },
    
    BeforePopupFuncs : {
        DataBrowser : function(btn,cfg){
            cfg.singleSelect = btn.getAttribute('MultiSelect') ? false:true;
            cfg.columnInfos = btn.getAttribute('ColumnInfos');
            return true;
        },
        SelectOU : function(btn,cfg){
            return true;
        },
        SelectUser : function(btn,cfg){
            return true;
        },
        Sign : function(btn,cfg){
            var accountField = btn.getAttribute('AccountField');
            var account;
            if (accountField)
                account = YZSoft.XForm.Agent.CalcDynamicExpress(btn,accountField);
            else
                account = btn.getAttribute('LoginUserAccount');
            
            if (!account){
                alert(RS.$('YZStrings.BPMDlg_Sign_NoAccount'));
                return false;
            }
            
            delete cfg.title;
            
            cfg.signInfo = {
                account:account,
                action:btn.getAttribute('DoAction'),
                validationGroup:btn.getAttribute('SignValidationGroup')
            };
            
            cfg.fn = function(owner, rows) {
                owner.mapvalues = rows;
                XFormOnDataAvailable(owner);
                
                var postFunc = function(){
                    if (XFormShell.XFormAgent.DoAction(owner, this.signInfo.action)) {
                        YZSoft.XForm.OnXFormSubmited();
                    }
                };
                
                postFunc.defer(10,this);
            };
            
            return YZSoft.XForm.Validator.SubmitValidate(cfg.signInfo.action, cfg.signInfo.validationGroup);
        }
    }
};

YZSoft.XForm.Snapshot = {
    Open:function(btn,w,h){
        var elBtn = new Ext.Element(btn,true);
        var sel = elBtn.prev('select',true);
        if (!sel)
            return;
            
        var selIndex = sel.selectedIndex;
        if (selIndex == -1)
            return;

        var opt = sel.options[selIndex];
        if (!opt)
            return;
        
        var taskid = opt.getAttribute('TaskID');
        var version = opt.getAttribute('Version');
        var stepid = opt.getAttribute('StepID');
        
        var cfg = {};
        
        if (w > 0)
            cfg.width = w;
        if (h > 0)
            cfg.height = h;
        
        YZSoft.BPM.FormManager.OpenSnapshot(taskid,version,stepid,null,cfg);
    }
};

YZSoft.XForm.SingleImage = {
    ItemInit:function(el){
        var yxi = YZSoft.XForm.SingleImage;
        var cts = yxi.GetControls(el);

        var option = {
            type:cts.cnt.getAttribute('FileTypes'),
            description:cts.cnt.getAttribute('FileTypesDescription'),
            size:cts.cnt.getAttribute('MaximumFileSize')
        };

        if (cts.btn.swfinited || cts.btn.bindUploader)
    	    return;
        
        cts.btn.swfinited = true;

    	var uploader = new SWFUpload({
		    flash_url : YZSoft.Attachment.AttachmentBaseURL +"/upload.swf",
		    upload_url: YZSoft.Attachment.AttachmentBaseURL+"/upload.ashx",
		    file_size_limit : option.size||"1000 MB",
		    file_types : option.type||RS.$('YZStrings.BPM_FlashUpload_ImageType'),
		    file_types_description : option.description||RS.$('YZStrings.BPM_FlashUpload_ImageDesc'),
		    file_upload_limit : 0,
		    file_queue_limit : 0,
		    debug: false,
    	    post_params:typeof(userToken) == 'undefined' ? {}:userToken,
		    // Button settings
		    button_action:SWFUpload.BUTTON_ACTION.SELECT_FILE,
            button_width: "800",
            button_height: "60",
            button_placeholder: Ext.selectNode('em',cts.btn),
            button_cursor: SWFUpload.CURSOR.HAND,
            button_window_mode: SWFUpload.WINDOW_MODE.TRANSPARENT,
	    
		    prevent_swf_caching:true,
    		
    		file_dialog_start_handler:function(a){
    		},
    		swfupload_loaded_handler:function(){
    		    this.cts.btn.className = 'btn swfloaded';
       		    this.cts.btn.style.cursor = 'pointer';
    		},
    		file_queued_handler:function(file){
    		    this.cts.cnt.file = file;
		    },
		    file_queue_error_handler:function(file, code, message){
                var err = YZSoft.XForm.Attachment.QueueError[code]|| RS.$('YZStrings.BPM_FlashUpload_QueueError_Default');
		        err = String.format(err,file.name,file.size.toFileSize(),code,message,this.settings.file_size_limit);
		        alert(err);
		    },
		    file_dialog_complete_handler:function(numSelected, numQueued){
			    if (numQueued > 0)
			        yxi.BeginUpload(this);
		    },
		    upload_success_handler:function(file, data){
		        var rv = Ext.decode(data);
		        
		        //上传失败
		        if (!rv.result){
		            var err = String.format(RS.$('YZStrings.BPM_FlashUpload_UploadFail_Msg'),file.name,rv.message);
		            alert(err);
                    return;
		        }

                //上传成功
                yxi.SetValueInternal(this.cts,rv.message);
		    },
		    upload_error_handler:function(file, code, message){
		        if (code == SWFUpload.UPLOAD_ERROR.FILE_CANCELLED)
		            return;
		            
		        var err = YZSoft.XForm.Attachment.UploadError[code]|| RS.$('YZStrings.BPM_FlashUpload_UploadFailHttp_Msg');
		        err = String.format(err,file.name,file.size.toFileSize(),code,message);
		        alert(err);
		    },
		    upload_progress_handler:function(file, complete, total){
//			    var div=Ext.get(file.id+"_BOX")
//			    if(div){
//				    div.child("b").innerHTML = Math.floor(complete/total*100)
//				    div.dom.style.backgroundPosition=(complete/total*(div.dom.offsetWidth)-1)+"px 0px"
//			    }
		    }
	    });

	    cts.uploader = uploader;
	    uploader.cts = cts;
	    cts.cnt.cts = cts;
    },
    
    BeginUpload : function(uploader){
        var cnt = uploader.el;
        uploader.startUpload(uploader.cts.cnt.file.id);
	},
	
	GetControls:function(el){
        var cnt = Ext.findParent('div.embed-img',el);
        if (cnt.cts)
            return cnt.cts;

	    var rv = {
	        cnt : cnt,
	        btn : Ext.selectNode('a.btn',cnt),
	        divImg : Ext.selectNode('div.img-div',cnt),
	        img : Ext.selectNode('div.img-div img',cnt),
	        inp : Ext.selectNode('input[type=text]',cnt)
	    };
	    return rv;
	},
	
    SetValueInternal:function(cts,v){
        YZSoft.Image.SetImageSrcFileId(cts.img,v);
        cts.inp.value = v;
        XFormShell.XFormAgent.OnChange(cts.inp);
    },
    
    SetValue:function(el,v){
        var cts = YZSoft.XForm.SingleImage.GetControls(el);
        YZSoft.XForm.SingleImage.SetValueInternal(cts,v);
    },
        
    SetDisable:function(el,disabled){
        if (el.disabled == disabled)
            return;

        el.disabled = disabled;   
        var cts = YZSoft.XForm.SingleImage.GetControls(el);
        
        if (cts.btn){
            cts.btn.disabled = disabled;
            cts.btn.style.display = disabled ? 'none':'';
        }
    }
};
YZSoft.XForm.Agent.RegistFunc('YZSoft_XForm_SingleImage_SetValue',YZSoft.XForm.SingleImage.SetValue);
YZSoft.XForm.Agent.RegistFunc('YZSoft_XForm_SingleImage_SetDisable',YZSoft.XForm.SingleImage.SetDisable);

YZSoft.XForm.HtmlEditor = {
    Init: function (el) {
        el.cnt = new Ext.Element(el).next('div', true); //el.nextSibling;
        el.mhtml = new Ext.form.HtmlEditor({
            linksInNewWindow: true,
            width: el.cnt.offsetWidth,
            height: el.cnt.offsetHeight,
            value: ''
        });
        el.mhtml.render(el.cnt);
    },

    SetValue: function (el, v) {
        el.mhtml.setValue(v);
    },

    GetValue: function (el) {
        var v = el.mhtml.getValue();
        return v;
    },

    SetDisable: function (el, disabled) {
        el.mhtml.setReadOnly(disabled);
    }
};
YZSoft.XForm.Agent.RegistFunc('YZSoft_XForm_HtmlEditor_Init',YZSoft.XForm.HtmlEditor.Init);
YZSoft.XForm.Agent.RegistFunc('YZSoft_XForm_HtmlEditor_SetValue',YZSoft.XForm.HtmlEditor.SetValue);
YZSoft.XForm.Agent.RegistFunc('YZSoft_XForm_HtmlEditor_GetValue',YZSoft.XForm.HtmlEditor.GetValue);
YZSoft.XForm.Agent.RegistFunc('YZSoft_XForm_HtmlEditor_SetDisable', YZSoft.XForm.HtmlEditor.SetDisable);


YZSoft.XForm.SpoorMgr = {
    ShowFieldSpoor: function (fireele) {
        var cnt = Ext.findParent('div.yz-inp-cnt', fireele);
        if (!cnt)
            return;

        inp = Ext.selectNode('input', cnt) || Ext.selectNode('textarea', cnt);
        if (!inp)
            return;

        var f = YZSoft.XForm.Agent.GetFieldInfo(inp);
        var params = {
            Method: 'GetFieldModifies',
            CKeyName: f.CKeyName,
            CKeyValue: f.CKeyValue,
            DataSource: f.Column.ParentTable.DataSource,
            TableName: f.Column.ParentTable.TableName,
            ColumnName: f.Column.ColumnName
        };

        YZSoft.Ajax.RFC({
            url: 'YZSoft/BPM/StoreDataService/SpoorService.ashx',
            params: params,
            scope: this,
            success: function (action) {
                if (YZSoft.tip)
                    YZSoft.tip.hide();

                YZSoft.tip = YZSoft.XForm.SpoorMgr.GetPanel(fireele, action.result);
                if (YZSoft.tip) {
                    YZSoft.tip.show();
                }
            },
            failure: function (action) {
                alert(String.format(RS.$('YZStrings.XFormAgent_GetFieldSpoor_Fail'), action.result.errorMessage));
            }
        });
    },

    GetPanel: function (target, data) {
        if (YZSoft.tip)
            return;

        var records = data.children || [];
        var temp = '<tr class="{0}"><td class="yz-spoor-tb-coldate"><div>{1}</div></td><td class="yz-spoor-tb-coluser"><div>{2}</div></td><td class="yz-spoor-tb-colvalue"><div>{3}</div></td></tr>'
        var html = '';
        html += '<table class="yz-spoor-table">'
        html += String.format(temp, 'yz-spoor-tr-head', RS.$('YZStrings.XFormAgent_Spoor_ModifyDate'), RS.$('YZStrings.XFormAgent_Spoor_User'), RS.$('YZStrings.XFormAgent_Spoor_Value'));
        for (var i = 0; i < records.length; i++) {
            var rd = records[i];
            html += String.format(temp, 'yz-spoor-tr-data', rd.ModifyDate, rd.UserSortName, rd.Value);
        }
        html += '</table>'
        YZSoft.tip = new Ext.ToolTip({
            title: RS.$('YZStrings.XFormAgent_Spoor_Title'),
            target: target,
            anchor: 'left',
            html: html,
            width: 420,
            autoShow: false,
            autoHide: false,
            closable: true,
            autoDestroy: true,
            listeners: {
                hide: function () {
                    YZSoft.tip = null;
                    this.destroy();
                }
            }
        });
        return YZSoft.tip;
    }
};
XFormShowFieldSpoor = YZSoft.XForm.SpoorMgr.ShowFieldSpoor;