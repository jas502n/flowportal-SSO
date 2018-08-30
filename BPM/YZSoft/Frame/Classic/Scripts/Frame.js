YZSoft.Classic = {
    version: '1.0.0',
    versionDetail: {
        major: 1,
        minor: 0,
        patch: 0
    }
};

//个性化设置
//YZSoft.EnvSetting.BPM.Form.WindowModel = 'IFrameDialog'; //表单总是以dlg形式弹出
//YZSoft.EnvSetting.BPM.FormApplication.WindowModel = 'IFrameDialog'; //表单应用总是以dlg形式弹出
//YZSoft.EnvSetting.BPM.Form.DlgSize.Width = 890;   // 弹出窗口默认高宽(流程表单)
//YZSoft.EnvSetting.BPM.Form.DlgSize.Height = 500;
//YZSoft.EnvSetting.BPM.FormApplication.DlgSize.Width = 890;    // 表单服务
//YZSoft.EnvSetting.BPM.FormApplication.DlgSize.Height = 500;

/*------------重写弹窗函数, 以使窗口能够自适应内容------------*/
/*
var YZSoftDialogManagerShowIFrameDialog=YZSoft.DialogManager.ShowIFrameDialog
YZSoft.DialogManager.ShowIFrameDialog = function(id, url, params, config) {
    var dlg = Ext.getCmp(id);
    if (dlg) {
        dlg.focus();
        return dlg;
    }

    dlg = YZSoftDialogManagerShowIFrameDialog(id, url, params, config)

    var iframe = dlg.body.dom.getElementsByTagName("IFRAME")[0]
    if (!iframe) return dlg

    dlg.hide()
    dlg.setSize(dlg.getFrameWidth() + 400, dlg.getFrameHeight() + 300)
    window.top.ResizeWindow = function(width, height, nomove) {
        var bWidth = dlg.getWidth()
        var bHeight = dlg.getHeight()

        var fWidth = dlg.getFrameWidth()
        var fHeight = dlg.getFrameHeight()

        var cWidth = width
        var cHeight = height
        var maxWidth = Math.max(window.document.documentElement.clientWidth * .9, 890)
        var maxHeight = window.document.documentElement.clientHeight * .9
        var marginHeight = window.document.documentElement.clientHeight * .1
				dlg.maxWidth = maxWidth
				dlg.maxHeight = maxHeight
        

        if (cWidth + fWidth > maxWidth) {
            bWidth = maxWidth
        } else {
            bWidth = cWidth + fWidth + 16
        }

        if (cHeight + fHeight > maxHeight) {
            bHeight = maxHeight
        } else {
            bHeight = cHeight + fHeight
            bWidth = bWidth - 16  //去掉滚动条的位置
        }
        dlg.setSize(bWidth, bHeight)
        if (!nomove) {
						dlg.minWidth = bWidth
						dlg.minHeight = bHeight
            dlg.center()
        } else {
            var p = dlg.getPosition()
            var left = p[0]
            var top = p[1]
            if (bHeight + top + marginHeight/2 > window.document.documentElement.clientHeight) {
                top = window.document.documentElement.clientHeight - bHeight - marginHeight/2
                dlg.setPosition(left,top)
            }
        }
        dlg.syncShadow()
        dlg.show()
        window.top.ResizeWindowChange = false
    }
    window.top.ResizeWindowChange = true
    setTimeout(function() {
        if (window.top.ResizeWindowChange) window.top.ResizeWindow(860, 200)
    }, 3000) // 如果3秒钟还没执行这个函数, 则强制执行以免无法打开

    return dlg
}
*/
/*******************重写完毕**********************/

YZSoft.Classic.ModuleManager = {
    ShowModule: function(modulePath) {
        var moduleids = modulePath.split('/');

        YZSoft.mainTab.setActiveTab(moduleids[0]);

        var modulePanel = YZSoft.mainTab.getActiveTab();

        if (moduleids.length >= 2)
            modulePanel.setActiveNode(moduleids[1]);

        if (moduleids.length >= 3)
            modulePanel.setActiveTab(moduleids[2]);
    },

    LoadModule: function(config) {
        var moduleId = config.moduleId || Ext.id();
        var moduleUrl = config.moduleUrl;
        var realId = config.realId || moduleId;
        var moduleParams = config.moduleParams || {};
        moduleParams.id = moduleId;
        var newCmp;

        YZSoft.Classic.MDS = YZSoft.Classic.MDS || {};

        if (!moduleUrl) {
            var moduleInstance = new YZSoft.BuildingPanel(moduleParams);
            config.fn.call(config.scope, moduleInstance);
            return;
        }

        if (YZSoft.Classic.MDS[moduleUrl]) {
            var module = YZSoft.Classic.MDS[moduleUrl];
            var moduleInstance;
            moduleInstance = new module(moduleParams);

            config.fn.call(config.scope, moduleInstance);
            return;
        }

        Ext.Ajax.request({
            method: 'GET',
            disableCaching: true,
            //utf-8 编码
            url: moduleUrl,
            success: function(response) {
                var module;
                var moduleInstance;
                module = eval(response.responseText);
                YZSoft.Classic.MDS[moduleUrl] = module;
                moduleInstance = new module(moduleParams);
                config.fn.call(config.scope, moduleInstance);
            },
            failure: function(response) {
                var err = {
                    type: 'responseError',
                    response:response,
                    url: moduleUrl,
                    title: RS.$('YZStrings.All_LoadModule_HttpFail_Title'),
                    message: String.format(RS.$('YZStrings.All_LoadModule_HttpFail_Msg'), moduleUrl)
                };
                YZSoft.Error.Throw(err);
            }
        });
    }
};

//主模块类
YZSoft.Classic.ModulePanel = Ext.extend(Ext.Panel, {
    constructor: function (config) {
        Ext.apply(this, config);

        //左侧菜单的Header
        this.headerPnl = new Ext.BoxComponent({
            region: 'north',
            border: false,
            html: String.format('<div class="title">{0}</div>', config.title || '')
        });

        //左侧菜单
        this.tree = new Ext.tree.TreePanel({
            region: 'center',
            margins: '0 0 0 0',
            border: false,
            rootVisible: false,
            lines: false,
            containerScroll: false,
            autoScroll: true,
            width: 210,
            minWidth: 160,
            cls: 'mmenu2',
            loader: new Ext.tree.TreeLoader({
                dataUrl: config.dataURL,
                requestMethod: 'GET',
                listeners: {
                    scope: this,
                    load: function (loader, node) {
                        this.tree.loaded = true;
                        if (this.activeNode)
                            this.setActiveNode(this.activeNode);
                    }
                }
            }),
            root: new Ext.tree.AsyncTreeNode({
                text: 'Root',
                id: 'root',
                expanded: true
            }),
            selModel: new Ext.tree.DefaultSelectionModel({
                listeners: {
                    scope: this,
                    selectionchange: function (sm, node) {
                        this.onMenuSelect(node);
                    },
                    beforeselect: function (sm, nodet, nodef) {
                        if (nodef && nodef.parentNode)
                            nodef.parentNode.ui.removeClass("expended");

                        if (nodet && nodet.parentNode)
                            nodet.parentNode.ui.addClass("expended");
                    }
                }
            }),
            listeners: {
                scope: this,
                beforeappend: function (tree, parent, node) {
                    if (parent.attributes.ment)
                        return false;

                    node.icon = '';
                    if (!node.attributes.children || node.attributes.children.length == 0 || node.attributes.ment)
                        node.leaf = true;

                    if (parent && parent.isRoot)
                        node.attributes.cls = 'level1menu';
                    else
                        node.attributes.cls = 'level2menu';
                },
                click: function (node, e) {
                    e.stopEvent();
                    if (node.leaf)
                        node.select()
                    else
                        node.toggle();

                    return false;
                }
            }
        });

        //左侧菜单的外层容器
        this.menuPanel = new Ext.Panel({
            title: config.title,
            cls: 'mmenu2-frame',
            header: false,
            region: 'west',
            border: false,
            collapsible: false,
            layout: 'border',
            width: 140,
            minSize: 140,
            maxSize: 200,
            split: true,
            margins: '0 0 0 0',
            items: [this.headerPnl, this.tree],
            listeners: {
                scope: this,
                resize: function () {
                    //滚动出现又消失后存在影子，疑似IE bug 设置2次overflow属性后解决，调用setAutoScroll可设置overflow属性
                    this.tree.setAutoScroll(false);
                    this.tree.setAutoScroll(true);
                }
            }
        });

        //右侧功能模块的容器
        this.view = new Ext.Panel({
            region: 'center',
            layout: new Ext.layout.CardLayout({
                deferredRender: true,
                layoutOnCardChange: true
            }),
            border: false,
            items: []
        });

        var cfg = {
            region: 'center',
            layout: 'border',
            layoutConfig: { targetCls: 'yz-border-layout-frame' },
            items: [this.menuPanel, this.view],
            listeners: {
                scope: this,
                activate: function () {
                    //第一次装载未完成,主Tab就切换到了其它Tab
                    if (this.view.items.length == 0) {
                        var sm = this.tree.getSelectionModel();
                        if (sm != null) {
                            var node = sm.getSelectedNode();
                            if (node != null && node.attributes.panel) {
                                this.view.add(node.attributes.panel);
                                this.view.layout.setActiveItem(node.attributes.panel);
                            }
                        }
                    }
                    else {
                        var activeItem = this.view.layout.activeItem;
                        if (activeItem)
                            activeItem.fireEvent('activate', activeItem);
                    }
                }
            }
        };

        YZSoft.Classic.ModulePanel.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.Classic.ModulePanel.superclass.initComponent.call(this);
    },

    //选中一个左侧菜单后的处理
    onMenuSelect: function (node) {
        //如果模块已创建，则直接显示
        if (node.attributes.panel) {
            if (!this.view.items.contains(node.attributes.panel)) //模块装载过程中切换Tab,panel不会加入view
                this.view.add(node.attributes.panel);

            this.view.layout.setActiveItem(node.attributes.panel);
            return;
        }

        var tabDefines = node.attributes.tabs;

        if (node.attributes.ment) { //维护中的模块
            var pnl = new YZSoft.MaintPanel({ title: node.attributes.text, message: node.attributes.ment, url: node.attributes.url });

            node.attributes.panel = pnl;
            this.view.add(pnl);
            this.view.layout.setActiveItem(pnl);
        }
        else if (node.attributes.empty) { //由于权限的关系子模块都看不到
            var pnl = new YZSoft.EmptyPanel({ title: node.attributes.text});

            node.attributes.panel = pnl;
            this.view.add(pnl);
            this.view.layout.setActiveItem(pnl);
        }
        else if (tabDefines && tabDefines.length != 0) { //模块包含TAB

            //加载与创建功能模块
            Ext.each(tabDefines, function (tabDefine) {
                YZSoft.Classic.ModuleManager.LoadModule({
                    moduleId: tabDefine.id || Ext.id(),
                    moduleUrl: tabDefine.moduleUrl,
                    moduleParams: Ext.apply({ title: tabDefine.text, cls: 'yz-func-panel', moduleName: tabDefine.text }, tabDefine.config),
                    scope: this,
                    fn: function (instance) {
                        tabDefine.inst = instance;

                        var loadedCount = 0
                        Ext.each(tabDefines, function (tabDefTmp) {
                            if (tabDefTmp.inst)
                                loadedCount++;
                        });

                        //模块加载完毕
                        if (loadedCount == tabDefines.length) {

                            var activeTab = this.activeTab || node.attributes.activeTab;
                            this.activeTab = null;

                            var tabItems = new Array();
                            Ext.each(tabDefines, function (tabDefTmp) {
                                var pnl = tabDefTmp.inst;
                                //tabDefTmp.inst = null;
                                tabItems.push(pnl);

                                //如果没有设置活动页面，则使用第一个Tab作为活动页
                                if (!activeTab)
                                    activeTab = pnl;
                            }, this);

                            var tab = new Ext.TabPanel({
                                region: 'center',
                                enableTabScroll: true,
                                banner: {
                                    html: String.format('<span class="curmodel">{0}</span>', node.attributes.text)
                                },
                                baseCls: 'mmenu3',
                                //activeTab: activeTab,
                                border: false,
                                plain: true,
                                items: tabItems,
                                firsttimeactive: true,
                                listeners: {
                                    scope: tab,
                                    activate: function () {
                                        if (!this.firsttimeactive) {
                                            var activeTab = this.getActiveTab()
                                            if (activeTab)
                                                activeTab.fireEvent('activate', activeTab);
                                        }
                                        this.firsttimeactive = false;
                                    },
                                    afterlayout: function () {
                                        if (!this.firstafterlayoutdone) {
                                            this.setActiveTab(activeTab);
                                            this.firstafterlayoutdone = true;
                                        }
                                    }
                                }
                            });

                            node.attributes.panel = tab;

                            Ext.each(tabItems, function (tabItem) {
                                tabItem.ParentTab = tab;
                            });

                            //装载完的时候已经切换到别的模块
                            if (this.isVisible()) {
                                this.view.add(tab);
                                this.view.layout.setActiveItem(tab);
                            }
                        }
                    }
                });

            }, this);
        }
        else if (node.attributes.moduleUrl) { //模块只包含单个功能页
            YZSoft.Classic.ModuleManager.LoadModule({
                moduleId: Ext.id(),
                moduleUrl: node.attributes.moduleUrl,
                moduleParams: Ext.apply({ region: 'center', header: false, cls: 'yz-func-panel',moduleName:node.attributes.text }, node.attributes.config),
                scope: this,
                fn: function (instance) {
                    var header = new Ext.BoxComponent({
                        region: 'north',
                        border: false,
                        cls: 'mmenu3-header',
                        html: String.format('<div class="yz-tab-banner"><span class="curmodel">{0}</span></div>', node.attributes.text)
                    });

                    var pnl = new Ext.Panel({
                        border: false,
                        layout: 'border',
                        items: [header, instance],
                        funcpanel: instance,
                        listeners: {
                            scope: pnl,
                            activate: function () {
                                this.funcpanel.fireEvent('activate', this.funcpanel);
                            }
                        }
                    });

                    node.attributes.panel = pnl;

                    //装载完的时候已经切换到别的模块
                    if (this.isVisible()) {
                        this.view.add(pnl);
                        this.view.layout.setActiveItem(pnl);
                    }
                }
            });
        }
        else { //建设中的模块
            var pnl = new YZSoft.BuildingPanelWithFrame({ title: node.attributes.text, message: node.attributes.message, url: node.attributes.url });

            node.attributes.panel = pnl;
            this.view.add(pnl);
            this.view.layout.setActiveItem(pnl);
        }
    },

    //设置左侧菜单的活动项
    setActiveNode: function (node) {
        if (this.tree.loaded) {
            if (!Ext.isObject(this.node))
                node = this.tree.getRootNode().findChild('id', node, true);

            if (node)
                node.select();
        }
        else {
            this.activeNode = node;
        }
    },

    //设置右侧活动TAB
    setActiveTab: function (panel) {
        var activeFunctionModule = this.view.layout.activeItem;
        if (activeFunctionModule && activeFunctionModule instanceof Ext.TabPanel) {
            var tab = activeFunctionModule;
            var pnl = tab.getItem(panel);
            if (pnl) {
                tab.setActiveTab(panel);
                return;
            }
        }

        this.activeTab = panel;
    }
});
