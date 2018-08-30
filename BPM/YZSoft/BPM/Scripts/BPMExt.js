Ext.namespace("YZSoft.BPM");

YZSoft.BPM.Render = {

    GetUserFriendlyName: function (account, displayName, shortFormat) {
        if (Ext.isEmpty(displayName))
            return account;

        if (shortFormat)
            return displayName;

        return displayName + '(' + account + ')';
    },

    GetTaskStateDisplayString: function (state) {
        if (state)
            state = state.toLowerCase();

        switch (state) {
            case 'running':
                return RS.$('YZStrings.All_Running');
            case 'approved':
                return RS.$('YZStrings.All_Approved');
            case 'rejected':
                return RS.$('YZStrings.All_Rejected');
            case 'aborted':
                return RS.$('YZStrings.All_Aborted');
            case 'deleted':
                return RS.$('YZStrings.All_Deleted');
            default:
                return RS.$('YZStrings.All_UnknownStatus');
        }
    },

    RenderTaskOwner: function (value, p, record) {
        return YZSoft.BPM.Render.RenderTaskOwnerExt(record.data, false);
    },

    RenderStepOwner: function (value, p, record) {
        return YZSoft.BPM.Render.RenderStepOwnerExt(record.data);
    },

    RenderStepRecipient: function (value, p, record) {
        return YZSoft.BPM.Render.RenderStepRecipientExt(record.data, false);
    },

    RenderStepAgent: function (value, p, record) {
        return YZSoft.BPM.Render.RenderStepAgentExt(record.data);
    },

    RenderStepHandler: function (value, p, record) {
        return YZSoft.BPM.Render.RenderStepHandlerExt(record.data);
    },

    RenderTaskState: function (value, p, record) {
        return YZSoft.BPM.Render.RenderTaskStateExt(value);
    },

    RenderTaskOwnerExt: function (task, singleLine) {
        if (Ext.isEmpty(task.OwnerAccount))
            return RS.$('YZStrings.All_StartBySystem');

        var ownerHtml = YZSoft.HttpUtility.HtmlEncode(YZSoft.BPM.Render.GetUserFriendlyName(task.OwnerAccount, task.OwnerDisplayName, true));

        var agentHtml = '';
        if (!Ext.isEmpty(task.AgentAccount) && !String.Equ(task.AgentAccount, task.OwnerAccount)) {
            agentHtml = String.format("<span class=\"AgentName\">{0}</span>",
                    String.format(RS.$('YZStrings.All_PostByAgent'), YZSoft.HttpUtility.HtmlEncode(YZSoft.BPM.Render.GetUserFriendlyName(task.AgentAccount, task.AgentDisplayName, true))));

            if (singleLine)
                agentHtml = '[' + agentHtml + ']';
            else
                agentHtml = '<br/>' + agentHtml;
        }

        return ownerHtml + agentHtml;
    },

    RenderStepOwnerExt: function (step) {
        if (step.Finished) {
            //if (step.AutoProcess)
            //    return RS.$('YZStrings.All_None');

            if (Ext.isEmpty(step.OwnerAccount) && step.Share)
                return RS.$('YZStrings.BPM_StepState_ShareTaskNotGot');
        }
        else {
            if (Ext.isEmpty(step.OwnerAccount) && step.Share)
                return RS.$('YZStrings.All_WaitPick');
        }

        return YZSoft.HttpUtility.HtmlEncode(YZSoft.BPM.Render.GetUserFriendlyName(step.OwnerAccount, step.OwnerDisplayName, false));
    },

    RenderStepRecipientExt: function (step, shortFormat) {
        if (step.Finished) {
            //if (step.AutoProcess)
            //    return RS.$('YZStrings.All_None');

            if (Ext.isEmpty(step.RecipientAccount) && step.Share)
                return RS.$('YZStrings.BPM_StepState_ShareTaskNotGot');
        }
        else {
            if (Ext.isEmpty(step.RecipientAccount) && step.Share)
                return RS.$('YZStrings.All_WaitPick');
        }

        return YZSoft.HttpUtility.HtmlEncode(YZSoft.BPM.Render.GetUserFriendlyName(step.RecipientAccount, step.RecipientDisplayName, shortFormat));
    },

    RenderStepAgentExt: function (step) {
        if (Ext.isEmpty(step.AgentAccount) || String.Equ(step.OwnerAccount, step.AgentAccount))
            return '';

        return YZSoft.HttpUtility.HtmlEncode(YZSoft.BPM.Render.GetUserFriendlyName(step.AgentAccount, step.AgentDisplayName, false));
    },

    RenderStepHandlerExt: function (step, autoprocessShowOwner) {
        if (step.AutoProcess && !autoprocessShowOwner)
            return RS.$('YZStrings.All_None');

        return YZSoft.HttpUtility.HtmlEncode(YZSoft.BPM.Render.GetUserFriendlyName(step.HandlerAccount, step.HandlerDisplayName, false));
    },

    RenderTaskStateExt: function (state) {
        var rv = YZSoft.BPM.Render.GetTaskStateDisplayString(state.State);

        if (state.State == 'running' && state.children && state.children.length != 0) {
            if (YZSoft.EnvSetting.BPM.Render.TaskStateMergeStep) {
                var msteps = new Array(); //合并队列

                //获得合并队列
                Ext.each(state.children, function (step) {
                    var itemRecp = YZSoft.BPM.Render.RenderStepRecipientExt(step, true); //这个步骤的处理人

                    //查找已存在的步骤
                    var index = Ext.each(msteps, function (mstep) {
                        if (mstep.StepName == step.StepName) {
                            mstep.Recps.push(itemRecp);
                            return false;
                        }
                    });

                    //步骤不存在
                    if (index == undefined) {
                        var mstep = {};
                        mstep.StepName = step.StepName;
                        mstep.Recps = [itemRecp];
                        msteps.push(mstep);
                    }
                });

                //显示合并队列
                var steps = new Array();
                Ext.each(msteps, function (mstep) {
                    //获得一个步骤的显示信息
                    var recp = mstep.Recps.join(",");
                    var item = String.format(recp? "{0}&nbsp;[{1}]":"{0}",
                        YZSoft.HttpUtility.HtmlEncode(mstep.StepName),
                        recp);

                    //添加到队列
                    steps.push(item);
                });

                rv = steps.join("<br/>");
            }
            else {
                var steps = new Array();
                Ext.each(state.children, function (step) {
                    //获得一个步骤的显示信息
                    var recp = YZSoft.BPM.Render.RenderStepRecipientExt(step, true);
                    var item = String.format(recp ? "{0}&nbsp;[{1}]" : "{0}",
                        YZSoft.HttpUtility.HtmlEncode(step.StepName),
                        recp);

                    //添加到队列
                    steps.push(item);
                });

                rv = steps.join("<br/>");
            }
        }

        return rv;
    }
}

YZSoft.BPM.TaskHelper = {
    GetRowClass : function(record, rowIndex, p, store){
        switch(record.data.State.State){
            case 'aborted':
            case 'deleted':
                return 'TaskRowGray';
            case 'rejected':
                return 'TaskRowRejected';
            case 'running':
                return 'TaskRowRuning';
            default:
                return 'TaskRow';                
        }
    }
}
