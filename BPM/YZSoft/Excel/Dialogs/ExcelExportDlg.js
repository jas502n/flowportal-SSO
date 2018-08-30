// JScript 文件
Ext.namespace("YZSoft.BPM.Dialogs");

YZSoft.BPM.Dialogs.ExcelExport = Ext.extend(Ext.Window, {
    excelExportServiceUrl: 'YZSoft/Excel/Service/ExportService.ashx',
    title: RS.$('YZStrings.BPMDlg_ExportExcel_Title'),
    layout: 'form',
    width: 320,
    height: 170,
    minWidth: 320,
    minHeight: 170,
    closeAction: 'close',
    plain: true,
    modal: false,
    bodyStyle: 'padding:15px;',
    buttonAlign: 'center',

    constructor: function (config) {
        this.rangeName = Ext.id();
        this.idRangeFrom = Ext.id();
        this.idRangeTo = Ext.id();
        this.idChkCur = Ext.id();
        this.idChkAll = Ext.id();
        this.idChkRange = Ext.id();

        this.store = config.owner.grid.store;
        this.total = this.store.getTotalCount();
        this.pageSize = this.store.baseParams.limit;
        this.pages = this.pageSize ? (this.total < this.pageSize ? 1 : Math.ceil(this.total / this.pageSize)) : 1;
        this.curPage = Math.ceil(((this.store.cursor||0) + this.pageSize) / this.pageSize);

        var bbar = config.owner.PagingToolbar !== false;
        var cfg = {
            labelWidth: 25,
            items: [{
                xtype: 'radio',
                id: this.idChkCur,
                checked: bbar,
                fieldLabel: '',
                labelSeparator: '',
                boxLabel: RS.$('YZStrings.BPMDlg_ExportExcel_CurPage'),
                disabled:!bbar,
                name: this.rangeName,
                inputValue: 'current',
                listeners: { scope: this, check: this.RangeTypeChanged }
            }, {
                xtype: 'radio',
                id: this.idChkAll,
                checked: !bbar,
                fieldLabel: '',
                labelSeparator: '',
                boxLabel: RS.$('YZStrings.All_All'),
                disabled: bbar && (!(config.owner.AllowExportAll || YZSoft.EnvSetting.Excel.AllowExportAll)),
                name: this.rangeName,
                inputValue: 'all',
                listeners: { scope: this, check: this.RangeTypeChanged }
            }, {
                xtype: 'compositefield',
                fieldLabel: '',
                labelSeparator: '',
                disabled: !bbar,
                items: [
                    { xtype: 'radio', id: this.idChkRange, boxLabel: RS.$('YZStrings.BPMDlg_ExportExcel_Range'), name: this.rangeName, inputValue: 'range', listeners: { scope: this, check: this.RangeTypeChanged} },
                    { xtype: 'spinnerfield', id: this.idRangeFrom, disabled: true, minValue: 1, maxValue: this.pages, allowDecimals: false, value: this.curPage, width: 60 },
                    { xtype: 'displayfield', value: '~' },
                    { xtype: 'spinnerfield', id: this.idRangeTo, disabled: true, minValue: 1, maxValue: this.pages, allowDecimals: false, value: this.curPage, width: 60 }
                ]
            }],
            buttons: [{
                text: RS.$('YZStrings.All_ExcelExportButton_Text'),
                scope: this,
                handler: function () {
                    //获得导出起始终止页
                    var from;
                    var to;
                    var all = false;
                    if (Ext.getCmp(this.idChkCur).checked) {
                        from = this.curPage;
                        to = this.curPage;
                    }
                    else if (Ext.getCmp(this.idChkAll).checked) {
                        all = true;
                        from = 1;
                        to = this.pages;
                    }
                    else {
                        from = Ext.getCmp(this.idRangeFrom).getValue();
                        to = Ext.getCmp(this.idRangeTo).getValue();
                    }

                    //检查页码
                    if (from < 1 || to > this.pages || from > to)
                        return;

                    //最大导出页数检查
                    if (!all) {
                        var maxExportPages = this.owner.MaxExportPages || YZSoft.EnvSetting.Excel.MaxExportPages;
                        if (maxExportPages && (to - from) + 1 > maxExportPages) {
                            alert(String.format(RS.$('YZStrings.BPMDlg_ExportExcel_PageNumberOverSetting'), maxExportPages));
                            return;
                        }
                    }

                    var grid = this.owner.grid;
                    var store = grid.store;

                    //准备参数
                    var params = { Method: 'Export' };

                    //获得 store url
                    params.storeurl = store.proxy.url;

                    //调用button事件
                    this.owner.fireEvent('beforeload', this.owner);

                    //获得查询参数
                    Ext.apply(params, this.owner.params);
                    Ext.apply(params, store.baseParams);

                    //获得用户参数名列表
                    var pms = new Array();
                    Ext.iterate(params, function (key, val) {
                        if (key != 'UserParamNames')
                            pms.push(key);
                    });
                    params['UserParamNames'] = pms.join(',');

                    //获得排序信息
                    if (store.sortInfo) {
                        params.sort = store.sortInfo.field;
                        params.dir = store.sortInfo.direction;
                    }

                    params.templateExcel = this.owner.templateExcel;

                    //获得Grid列定义信息
                    var cols = new Array();
                    var cm = grid.getColumnModel();
                    var colcount = cm.config.length;
                    var autoexpandColumnFind = false;
                    for (var i = 0; i < colcount; i++) {
                        if (cm.isHidden(i))
                            continue;

                        var coldef = cm.config[i];

                        var width = cm.getColumnWidth(i);
                        if (!autoexpandColumnFind && grid.autoExpandColumn && grid.autoExpandColumn === coldef.id) {
                            autoexpandColumnFind = true;
                            width = 400;
                        }

                        var col = {
                            header: cm.getColumnHeader(i),
                            dataIndex: cm.getDataIndex(i),
                            width: width,
                            align: coldef.align
                        };

                        cols.push(col);
                    }

                    //传递列定义参数
                    params.v_cc = cols.length;
                    for (var i = 0; i < cols.length; i++) {
                        var col = cols[i];
                        params["v_h" + i] = col.header || '';
                        params["v_c" + i] = col.dataIndex || '';
                        params["v_w" + i] = col.width || '';
                        params["v_a" + i] = col.align || '';
                    }

                    //设定导出范围
                    params.start = (from - 1) * this.pageSize;
                    params.limit = (to - from + 1) * this.pageSize

                    params.v_fn = this.owner.fileName;

                    YZSoft.File.download(this.excelExportServiceUrl, params);
                    YZSoft.DialogManager.CloseDialog(this.id);
                }
            }, {
                text: RS.$('YZStrings.All_Close'),
                scope: this,
                handler: function () {
                    YZSoft.DialogManager.CloseDialog(this.id);
                }
            }]
        };

        Ext.apply(cfg, config);
        YZSoft.BPM.Dialogs.ExcelExport.superclass.constructor.call(this, cfg);
    },

    RangeTypeChanged: function (ctrl, checked) {
        if (ctrl.inputValue == 'range') {
            Ext.getCmp(this.idRangeFrom).setDisabled(!checked);
            Ext.getCmp(this.idRangeTo).setDisabled(!checked);
        }
    }
});
