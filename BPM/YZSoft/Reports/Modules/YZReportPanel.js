Ext.namespace("YZSoft.Reports");

YZSoft.Reports.ClickOnValue = function(panelId,rowIndex,columnName){
    var panel = Ext.getCmp(panelId);
    var store = panel.store;
    var record = store.getAt(rowIndex);
    
    var columnDefine = panel.findColumn(columnName);

    var linkParams = panel.getLinkParams(columnDefine.paramMaps,record);
    
    //传递过滤条件
    var storeParams = {};
    Ext.each(linkParams,function(linkParam){
        storeParams[linkParam.Name] = linkParam.value;
    });
    
    Ext.apply(storeParams,{
        SearchType:'AdvancedSearch'
    });

    //传递时间
    Ext.apply(storeParams,{
        PeriodType:store.baseParams['PeriodType'],
        Date1:store.baseParams['Date1'],
        Date2:store.baseParams['Date2'],
        PeriodDefine:store.baseParams['PeriodDefine']
    });

    var tab = panel.ParentTab;
    if (!tab)
        return;
    
    var tagPnl = tab.getItem('Reports_' + columnDefine.LinkTo);
    if (!tagPnl)
        return;
    
    tagPnl.store.removeAll();
    tagPnl.ignoreRenderLoad = true;
    tab.setActiveTab(tagPnl);
    
    storeParams.reportName = columnDefine.LinkTo;
    storeParams.limit = tagPnl.store.baseParams.limit;
    tagPnl.store.baseParams = storeParams;
            
    tagPnl.store.reload({params:{start:0}});
};

YZSoft.Reports.YZReportPanel = Ext.extend(Ext.Panel, {
    constructor: function (config) {
        this.periodPicker = Ext.id();
        this.idSearchDlg = Ext.id();
        this.idCmpParamName = Ext.id();
        this.idKeyword = Ext.id();
        this.idBtnAdvanced = Ext.id();
        this.idPeriodDisplayField = Ext.id();
        this.idResultPanel = Ext.id();

        var idDesc = Ext.id();

        //获得报表定义
        var reportDefineUrl = 'YZSoft/Reports/StoreDataService/ReportDefine.ashx';
        Ext.Ajax.request({
            method: 'GET',
            disableCaching: true,
            sync: true,
            params: { reportName: config.reportName },
            url: reportDefineUrl,
            scope: this,
            success: function (response) {
                this.reportDefine = Ext.decode(response.responseText);

                if (!this.reportDefine.success) {
                    var err = {
                        type: 'customError',
                        title: RS.$('YZStrings.BPM_YZReport_GetDef_ErrTitle'),
                        message: String.format(RS.$('YZStrings.BPM_YZReport_GetDef_ErrMsg'), reportDefineUrl, this.reportDefine.errorMessage),
                        icon: Ext.MessageBox.WARNING
                    };

                    YZSoft.Error.Throw(err);
                }
            },

            failure: function (response) {
                var err = {
                    type: 'responseError',
                    response: response,
                    url: reportDefineUrl,
                    title: RS.$('YZStrings.BPM_YZReport_GetDef_HttpErrTitle'),
                    message: String.format(RS.$('YZStrings.BPM_YZReport_GetDef_HttpErrMsg'), reportDefineUrl)
                };

                YZSoft.Error.Throw(err);
            }
        });

        var storeFields = new Array();
        Ext.each(this.reportDefine.resultFields, function (resultField) {
            storeFields.push(resultField.ColumnName);
            if (resultField.LinkType == 'Task')
                storeFields.push(resultField.ColumnName + 'Token');
        });
        storeFields.push('Token');

        var baseParams = { reportName: config.reportName, limit: 20 };
        Ext.apply(baseParams, config.storeParams);

        this.store = new YZSoft.Data.JsonStore({
            root: 'children',
            totalProperty: 'totalRows',
            remoteSort: true,
            fields: storeFields,

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                timeout: YZSoft.EnvSetting.TimeOut.UserReport || 180000,
                url: 'YZSoft/Reports/ReportService/YZReportService.ashx'
            }),

            baseParams: baseParams,
            listeners: {
                scope: this,
                beforeload: function () {
                    var ppk = Ext.getCmp(this.periodPicker);
                    var period = ppk.getPeriod();

                    if (!ppk.disabled) {
                        this.store.baseParams = this.store.baseParams || {};
                        this.store.baseParams["PeriodType"] = period.PeriodType;
                        this.store.baseParams["Date1"] = period.Date1;
                        this.store.baseParams["Date2"] = period.Date2;
                    }
                    else {
                        this.store.baseParams = this.store.baseParams || {};
                        this.store.baseParams["PeriodType"] = 'all';
                    }

                    //仅为了报表间传递数据
                    this.store.baseParams['PeriodDefine'] = period.Define;

                    if (this.store.baseParams['SearchType'] == 'QuickSearch') {
                        this.store.baseParams = this.store.baseParams || {};
                        this.store.baseParams['ParamName'] = Ext.getCmp(this.idCmpParamName).getValue();
                    }
                },
                load: function (store, r, o) {
                    this.cursor = o.params.start;

                    var value = '';
                    var d = this.store.reader.jsonData;
                    if (d.PeriodEnable)
                        value = String.format(RS.$('YZStrings.All_DateRange'), d.Date1, d.Date2);

                    var periodDisplay = Ext.getCmp(this.idPeriodDisplayField);
                    if (periodDisplay)
                        periodDisplay.setValue(value);

                    this.periodPanel.doLayout();

                    if (this.activeReportView && this.activeReportView.panel && this.activeReportView.panel.chartArea)
                        this.activeReportView.panel.chartArea.update(d.chartHtml);
                }
            }
        });

        this.resultPanel = new Ext.Panel({
            id: this.idResultPanel,
            region: 'center',
            border: false,
            layout: 'fit',
            listeners: {
                scope: this,
                render: function () {
                    this.loadMask = new Ext.LoadMask(this.idResultPanel, { msg: RS.$('YZStrings.All_Loading'), store: this.store });
                }
            }
        });

        this.viewMenuItems = new Array();
        var i = 0;
        Ext.each(this.reportDefine.views, function (view) {
            var menuItem = {
                text: view.ViewName,
                iconCls: 'blist',
                index: i,
                scope: this,
                handler: function (item) {
                    this.showView(item.index, true);
                }
            };

            this.viewMenuItems.push(menuItem);
            i++;
        }, this);

        this.viewMenu = new Ext.menu.Menu({ items: this.viewMenuItems });

        this.btnExcelExport = new YZSoft.ExcelExportButton({
            disabled: true,
            params: {},
            fileName: config.reportName
        });

        var periodValue;
        if (config.storeParams && config.storeParams.PeriodDefine)
            periodValue = config.storeParams.PeriodDefine;
        else
            periodValue = { Type: this.reportDefine.containsPeriodSearch ? 'month' : 'all' };

        this.periodPanel = new Ext.form.FormPanel({
            region: 'north',
            hideLabels: true,
            baseCls: 'x-plain',
            cls: 'x-period-panel',
            border: false,
            margins: '3 0 0 0',
            padding: 0,
            height: 25,
            items: [{
                xtype: 'compositefield',
                items: [{
                    xtype: 'YZPeriodPicker',
                    id: this.periodPicker,
                    width: 500,
                    disabled: !this.reportDefine.containsPeriodSearch,
                    value: periodValue,
                    MonthOffset: this.reportDefine.MonthOffset,
                    MonthDay: this.reportDefine.MonthDay,
                    updateButton: {
                        xtype: 'button',
                        disabled: !this.reportDefine.containsPeriodSearch,
                        text: RS.$('YZStrings.All_UpdateReport'),
                        scope: this,
                        handler: function () {
                            this.store.reload({ params: { start: 0} });
                        }
                    }
                }, {
                    xtype: 'spacer',
                    flex: 1
                }, {
                    id: this.idPeriodDisplayField,
                    xtype: 'displayfield',
                    style: 'white-space:nowrap'
                }]
            }]
        });

        //准备快速搜索的下拉框内容
        var searchParamStoreData = new Array();
        Ext.each(this.reportDefine.queryParams, function (queryParam) {
            if (queryParam.BindType == 'QuickSearch' || queryParam.BindType == 'Both') {
                searchParamStoreData.push({
                    name: queryParam.DisplayName,
                    value: queryParam.Name
                });
            }
        });

        this.searchParamStore = new Ext.data.JsonStore({
            fields: ['name', 'value'],
            data: searchParamStoreData
        });

        var defParamName;
        //if (searchParamStoreData.length >=1)
        //    defParamName = searchParamStoreData[0].value;

        var cfg = {
            title: this.reportDefine.name,
            closable: true,
            border: false,
            rootVisible: false,
            autoScroll: true,
            layout: 'border',
            items: [this.periodPanel, this.resultPanel],
            tbar: [{
                xtype: 'splitbutton',
                text: RS.$('YZStrings.BPM_YReport_ChangeView'),
                menu: this.viewMenu,
                handler: function () {
                    this.showMenu();
                },
                iconCls: 'blist'
            }, this.btnExcelExport, '->', {
                xtype: 'button',
                scope: this,
                text: RS.$('YZStrings.All_Search_Clear'),
                handler: function () {
                    Ext.getCmp(this.idKeyword).setValue('');
                    Ext.getCmp(this.idCmpParamName).setValue('');
                    this.store.baseParams = this.store.baseParams || {};
                    this.store.baseParams['SearchType'] = '';
                    this.store.reload({ params: { start: 0} });
                }
            }, ' ', {
                xtype: 'combo',
                id: this.idCmpParamName,
                disabled: !this.reportDefine.containsQuickSearch,
                mode: 'local',
                store: this.searchParamStore,
                displayField: 'name',
                valueField: 'value',
                value: defParamName,
                editable: false,
                forceSelection: true,
                triggerAction: 'all',
                width: 100,
                allowBlank: true,
                emptyText: RS.$('YZStrings.BPMAdmin_Report_Search_SelParam')
            }, ' ', {
                xtype: 'YZSearchField',
                id: this.idKeyword,
                disabled: !this.reportDefine.containsQuickSearch,
                store: this.store,
                emptySearch: true,
                width: 160,
                showAdvButton: true,
                scope: this,
                handler: function (advBtn) {
                    this.dlg = YZSoft.DialogManager.ShowDialogExt(this.idSearchDlg,
                        'YZSoft/Reports/Dialogs/ReportSearchDlg.js',
                        { queryParams: this.reportDefine.queryParams, store: this.store },
                        { owner: advBtn });
                }
            }],
            bbar: this.pageBar = new Ext.PagingToolbar({
                pageSize: this.store.baseParams.limit,
                store: this.store,
                displayInfo: true
            })
        };

        Ext.apply(cfg, config);

        YZSoft.Reports.YZReportPanel.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.Reports.YZReportPanel.superclass.initComponent.call(this);
    },

    listeners: {
        activate: function () {
            //显示缺省视图
            if (this.reportDefine.views.length != 0)
                this.showView(0, this.ignoreRenderLoad === true ? false : true);
        }
    },

    findColumn: function (columnName) {
        var rv;

        Ext.each(this.reportDefine.resultFields, function (resultField) {
            if (String.Equ(resultField.ColumnName, columnName)) {
                rv = resultField;
                return false;
            }
        });

        return rv;
    },

    getColumnDisplayName: function (columnName) {
        var resultField = this.findColumn(columnName);

        if (resultField && !Ext.isEmpty(resultField.DisplayName))
            return resultField.DisplayName;
        else
            return columnName;
    },

    getLinkParams: function (paramMaps, record) {
        var rv = new Array();

        paramMaps = paramMaps || {};
        Ext.each(paramMaps, function (map) {
            if (!Ext.isEmpty(map.FillWith) && record.fields.containsKey(map.FillWith)) {
                var value = record.get(map.FillWith);
                rv.push({
                    Name: map.Name,
                    value: value
                });
            }
        });

        return rv;
    },

    RenderValue: function (value, p, record, rowIndex, colIndex, store) {
        var columnName = this.activeReportView.panel.getColumnModel().getDataIndex(colIndex);
        var columnDefine = this.findColumn(columnName);

        if (columnDefine) {
            if (columnDefine.LinkType == 'Task') {
                var linkParams = this.getLinkParams(columnDefine.paramMaps, record);

                var taskid;
                var find = false;
                Ext.each(linkParams, function (linkParam) {
                    if (String.Equ(linkParam.Name, '@TaskID')) {
                        find = true;
                        taskid = linkParam.value;
                        return false;
                    }
                });

                if (!find)
                    taskid = value

                return String.format("<a href='#'onclick=\"YZSoft.BPM.FormManager.OpenTaskForRead({0},'','',{1})\">{2}</a>",
                    taskid,
                    "{param:{token:'" + record.data[columnName + 'Token'] + "'}}",
                    YZSoft.HttpUtility.HtmlEncode(value));
            }

            if (columnDefine.LinkType == 'FormApplication' && !Ext.isEmpty(columnDefine.LinkTo)) {
                var linkParams = this.getLinkParams(columnDefine.paramMaps, record);

                var key;
                var find = false;
                Ext.each(linkParams, function (linkParam) {
                    if (String.Equ(linkParam.Name, '@key')) {
                        find = true;
                        key = linkParam.value;
                        return false;
                    }
                });

                if (!find)
                    key = value

                return String.format("<a href='#'onclick=\"YZSoft.BPM.FormManager.OpenFormApplication('{0}','{1}','{2}',true)\">{3}</a>",
                    YZSoft.HttpUtility.InlineJSEncode(columnDefine.LinkTo),
                    YZSoft.HttpUtility.InlineJSEncode(key),
                    'Report',
                    YZSoft.HttpUtility.HtmlEncode(value));
            }

            if (columnDefine.LinkType == 'Report' && !Ext.isEmpty(columnDefine.LinkTo)) {
                return String.format("<a href='#'onclick=\"YZSoft.Reports.ClickOnValue('{0}',{1},'{2}')\">{3}</a>",
                    YZSoft.HttpUtility.InlineJSEncode(this.id),
                    rowIndex,
                    columnName,
                    YZSoft.HttpUtility.HtmlEncode(value));
            }
        }

        if (String.Equ(columnName, 'TaskID')) {
            var rv = String.format("<a href='#'onclick=\"YZSoft.BPM.FormManager.OpenTaskForRead({0},'','',{1})\">{2}</a>",
                value,
                "{param:{token:'" + record.data.Token + "'}}",
                value);

            return rv;
        }

        return YZSoft.HttpUtility.HtmlEncode(value, true);
    },

    showView: function (index, reload) {
        var menuItem = this.viewMenu.items.itemAt(index);
        var view = this.reportDefine.views[index];

        //目标视图就是当前显示视图则退出
        if (this.activeReportView && String.Equ(this.activeReportView.ViewName, view.ViewName))
            return;

        //处理选中标记（选中标记是：*）
        this.viewMenu.items.each(function (item1) {
            if (item1.selected)
                item1.setText(item1.textSaved);
        });

        menuItem.textSaved = menuItem.text;
        menuItem.setText(menuItem.text + '*');
        menuItem.selected = true;

        //获取视图定义，如果不存在则装载
        if (!view.viewDefine) {
            //获得视图定义
            var viewDefineUrl = 'YZSoft/Reports/StoreDataService/ViewDefine.ashx';
            Ext.Ajax.request({
                method: 'GET',
                disableCaching: true,
                sync: true,
                params: { reportName: this.reportName, viewName: view.ViewName },
                url: viewDefineUrl,
                scope: this,
                success: function (response) {
                    var viewDefine = Ext.decode(response.responseText);

                    if (!viewDefine.success) {
                        var err = {
                            type: 'customError',
                            title: RS.$('YZStrings.BPM_YZReport_GetDef_ErrTitle'),
                            message: String.format(RS.$('YZStrings.BPM_YZReport_GetDef_ErrMsg'), viewDefineUrl, viewDefine.errorMessage),
                            icon: Ext.MessageBox.WARNING
                        };

                        YZSoft.Error.Throw(err);
                    }

                    view.chartProp = {
                        chartType: viewDefine.chartType,
                        enable3D: false,
                        rotation: 30
                    };

                    view.viewDefine = viewDefine;
                },

                failure: function (response) {
                    var err = {
                        type: 'responseError',
                        response: response,
                        url: reportDefineUrl,
                        title: RS.$('YZStrings.BPM_YZReport_GetDef_HttpErrTitle'),
                        message: String.format(RS.$('YZStrings.BPM_YZReport_GetDef_HttpErrMsg'), reportDefineUrl)
                    };

                    YZSoft.Error.Throw(err);
                }
            });
        }

        //创建Panel
        if (view.viewDefine.viewType == 'grid') {
            view.panel = this.createGridPanel(view);
            this.btnExcelExport.grid = view.panel;
            this.btnExcelExport.setDisabled(false);
        }
        else {
            delete this.btnExcelExport.grid;
            this.btnExcelExport.setDisabled(true);
            view.panel = this.createChartPanel(view);
        }

        //切换显示
        this.resultPanel.removeAll(true);
        this.resultPanel.add(view.panel);
        this.resultPanel.doLayout();
        this.activeReportView = view;

        this.pageBar.pageSize = view.viewDefine.limit ? view.viewDefine.limit : 20;
        this.store.baseParams["ChartType"] = view.chartProp.chartType;
        this.store.baseParams["Enable3D"] = view.chartProp.enable3D;
        this.store.baseParams["Rotation"] = view.chartProp.rotation;

        this.store.baseParams["viewName"] = view.ViewName;
        this.store.baseParams["limit"] = this.pageBar.pageSize;

        if (reload)
            this.store.reload({ params: { start: 0} });
    },

    createGridPanel: function (view) {
        var gridColumns = new Array();
        var excolid;
        Ext.each(view.viewDefine.columnInfos, function (columnInfo) {
            var gridColumnItem = {
                header: this.getColumnDisplayName(columnInfo.ColumnName),
                dataIndex: columnInfo.ColumnName,
                sortable: true,
                hidden: !columnInfo.Visible,
                scope: this,
                width: columnInfo.Unit == 'px' ? columnInfo.Width : 1000 * columnInfo.Width / 100,
                align: columnInfo.Align || 'left',
                renderer: this.RenderValue
            };

            if (columnInfo.Visible && (columnInfo.Width == '' || columnInfo.Width == -1))
                excolid = gridColumnItem.id = Ext.id();

            gridColumns.push(gridColumnItem);
        }, this);

        if (!excolid) {
            for (var i = gridColumns.length - 1; i >= 0; i--) {
                if (!gridColumns[i].hidden) {
                    excolid = gridColumns[i].id = Ext.id();
                    break;
                }
            }
        }

        var grid = new Ext.grid.GridPanel({
            border: false,
            store: this.store,
            trackMouseOver: true,
            disableSelection: false,
            loadMask: false,
            stripeRows: true,
            columns: gridColumns,
            autoExpandColumn: excolid
        });

        return grid;
    },

    createChartPanel: function (view) {

        this.idChartType = Ext.id();
        this.idRotation = Ext.id();
        this.idEnable3D = Ext.id();

        var chartArea = new Ext.Panel({
            region: 'center',
            border: false,
            autoScroll: true,
            html: ''
        });

        if (!this.chartTypeStore) {
            this.chartTypeStore = new YZSoft.Data.JsonStore({
                remoteSort: false,
                fields: ['name', 'value'],
                proxy: new Ext.data.HttpProxy({
                    method: 'GET',
                    url: 'YZSoft/Reports/StoreDataService/ChartTypeList.ashx'
                })
            });
        }

        var chartSettingForm = new Ext.form.FormPanel({
            region: 'east',
            border: false,
            width: 230,
            labelWidth: 80,
            labelAlign: 'right',
            bodyStyle: 'padding-top:50px',
            items: [
                { xtype: 'combo', fieldLabel: RS.$('YZStrings.BPM_YZReport_ChartType'), id: this.idChartType, store: this.chartTypeStore, displayField: 'name', valueField: 'value', value: view.chartProp.chartType, editable: false, forceSelection: true, triggerAction: 'all', width: 130 },
                { xtype: 'checkbox', fieldLabel: '3D', id: this.idEnable3D, boxLabel: '', checked: view.chartProp.enable3D },
                { xtype: 'spinnerfield', fieldLabel: RS.$('YZStrings.BPM_YZReport_ChartRotation'), id: this.idRotation, minValue: -180, maxValue: 180, allowDecimals: false, value: view.chartProp.rotation, width: 60 },
                { xtype: 'button', fieldLabel: ' ', labelSeparator: ' ', text: RS.$('YZStrings.BPM_YZReport_ChartUpdate'), style: 'margin-top:3px', scope: this, handler: function () {
                    if (this.activeReportView.panel.chartSettingForm.getForm().isValid()) {
                        this.store.baseParams = this.store.baseParams || {};
                        ChartType = Ext.getCmp(this.idChartType).getValue();
                        Enable3D = Ext.getCmp(this.idEnable3D).getValue();
                        Rotation = Ext.getCmp(this.idRotation).getValue();
                        this.store.baseParams["ChartType"] = ChartType;
                        this.store.baseParams["Enable3D"] = Enable3D;
                        this.store.baseParams["Rotation"] = Rotation;
                        view.chartProp = {
                            chartType: ChartType,
                            enable3D: Enable3D,
                            rotation: Rotation
                        };
                        this.store.reload({ params: { start: this.cursor} });
                    }
                }
                }
            ]
        });

        var chartPanel = new Ext.Panel({
            border: false,
            layout: 'border',
            items: [chartSettingForm, chartArea]
        });

        chartPanel.chartArea = chartArea;
        chartPanel.chartSettingForm = chartSettingForm;

        return chartPanel;
    }
});
