Ext.namespace("YZSoft.BPM.Grid");

YZSoft.BPM.Grid.HistoryTaskGrid_OpenTaskForRead = function (gridid, taskid, sn) {
    YZSoft.BPM.FormManager.OpenTaskForRead(taskid, sn, null, {
        listeners: {
            scope: this,
            close: function (form) {
                if (form.dialogResult == 'ok') {
                    var grid = Ext.getCmp(gridid);
                    if (grid) {
                        grid.store.reload({ params: { start: grid.store.cursor} });
                    }
                }
            }
        }
    });
};

YZSoft.BPM.Grid.HistoryTaskGrid = Ext.extend(Ext.grid.GridPanel, {
    constructor: function (config) {
        var idDesc = Ext.id();
        var sortable = config.sortable !== false;
        var cfg = {
            border: false,
            trackMouseOver: true,
            disableSelection: false,
            loadMask: true,
            region: 'center',
            stripeRows: true,
            dynchk: true,

            // grid columns
            columns: [
                { header: RS.$('YZStrings.All_SN'), dataIndex: 'SerialNum', width: 130, align: 'left', sortable: sortable, scope: this, renderer: this.RenderSN },
                { header: RS.$('YZStrings.BPM_ProcessName'), dataIndex: 'ProcessName', width: 100, align: 'left', sortable: sortable, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.BPM_ProcessVersion'), hidden:true, dataIndex: 'ProcessVersion', width: 80, align: 'center', sortable: sortable, renderer: YZSoft.Render.RenderString },
                { header: RS.$('YZStrings.All_Owner'), dataIndex: 'OwnerAccount', width: 100, align: 'center', sortable: sortable, renderer: YZSoft.BPM.Render.RenderTaskOwner },
                { header: RS.$('YZStrings.BPM_PostAt'), dataIndex: 'CreateAt', width: 128, align: 'center', sortable: sortable },
                { header: RS.$('YZStrings.All_Status'), dataIndex: 'State', width: 100, align: 'center', sortable: sortable, renderer: YZSoft.BPM.Render.RenderTaskState },
                { header: RS.$('YZStrings.BPM_TaskDesc'), dataIndex: 'Description', align: 'left', sortable: sortable, id: idDesc }
            ],

            autoExpandColumn: idDesc,

            // customize view config
            viewConfig: {
                getRowClass: YZSoft.BPM.TaskHelper.GetRowClass
            }
        };

        Ext.apply(cfg, config);
        YZSoft.BPM.Grid.HistoryTaskGrid.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {

        this.bbar = new Ext.PagingToolbar({
            displayInfo: true
        });

        this.bbar.pageSize = this.store.baseParams.limit;
        this.bbar.bind(this.store);

        YZSoft.BPM.Grid.HistoryTaskGrid.superclass.initComponent.call(this);
    },

    RenderSN: function (value, p, record) {
        return String.format("<div><a href='#' onclick=\"YZSoft.BPM.Grid.HistoryTaskGrid_OpenTaskForRead('{0}',{1},'{2}')\">{3}</a></div>",
            this.id,
            record.data.TaskID,
            YZSoft.HttpUtility.InlineJSEncode(record.data.SerialNum),
            YZSoft.HttpUtility.HtmlEncode(value));
    }
});
