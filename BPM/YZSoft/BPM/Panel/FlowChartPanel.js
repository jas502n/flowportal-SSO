// JScript 文件
importJS("YZSoft/ExtJS/Scripts/excanvas.js");
Ext.namespace("YZSoft.BPM.Panel");

YZSoft.BPM.FlowChartPanel = Ext.extend(Ext.Panel, {
    areas: new Array(),
    pics: [
        { NodeType: 'ActivityNode', humanStep: true, image: 'Node_ActivityNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'CodePluginNode', humanStep: false, image: 'Node_CodePluginNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'ConditionNode', humanStep: false, image: 'Node_ConditionNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'DBAdapterNode', humanStep: false, image: 'Node_DBAdapterNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'DecisionNode', humanStep: true, image: 'Node_DecisionNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'DotNetPluginNode', humanStep: false, image: 'Node_DotNetPluginNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'CreateProcessNode', humanStep: false, image: 'Node_SQLPluginNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'EndNode', humanStep: false, image: 'Node_EndNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'FileAdapterNode', humanStep: false, image: 'Node_FileAdapterNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'FileTriggerNode', humanStep: false, image: 'Node_FileTriggerNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'InNode', humanStep: false, image: 'Node_InNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'JoinNode', humanStep: false, image: 'Node_JoinNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: -6 },
        { NodeType: 'InformNode', humanStep: true, image: 'Node_NotifyNode.png', width: 31, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'NotifyNode', humanStep: false, image: 'Node_NotifyNode.png', width: 31, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'OutNode', humanStep: false, image: 'Node_OutNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'SnapshotNode', humanStep: false, image: 'Node_SnapshotNode.png', width: 32, height: 31, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'SplitNode', humanStep: false, image: 'Node_SplitNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: -4 },
        { NodeType: 'SQLPluginNode', humanStep: false, image: 'Node_SQLPluginNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'StartNode', humanStep: true, image: 'Node_StartNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'TimeTriggerNode', humanStep: false, image: 'Node_TimeTriggerNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'XMLAdapterNode', humanStep: false, image: 'Node_XMLAdapterNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 },
        { NodeType: 'EmbedProcessNode', humanStep: true, image: 'Node_DecisionNode.png', width: 32, height: 32, offsetx: 0, offsety: 0, ygap: 0 }
    ],

    constructor: function (config) {
        this.tipDivId = Ext.id();

        var cfg = {
            region: 'center',
            autoScroll: true,
            padding: '0 0 0 0',
            html: ''
        };

        Ext.apply(cfg, config);

        this.addEvents(
            'chartloaded'
        );

        YZSoft.BPM.FlowChartPanel.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.BPM.FlowChartPanel.superclass.initComponent.call(this);
    },

    loadChart: function (taskid, processName) {
        this.body.mask(RS.$('YZStrings.All_Loading'), 'x-mask-loading');

        //获得报表定义
        var url = resolveUrl('YZSoft/BPM/StoreDataService/FlowChartDefine.ashx');
        Ext.Ajax.request({
            method: 'GET',
            disableCaching: true,
            params: { TaskID: taskid, processName: processName },
            url: url,
            scope: this,
            success: function (response) {
                this.body.unmask();

                this.chartDefine = Ext.decode(response.responseText);
                this.fireEvent('chartloaded', this.chartDefine);

                if (!this.chartDefine.success) {
                    var err = {
                        type: 'customError',
                        title: RS.$('YZStrings.BPM_FlowChartPanel_GetDefineFailDlg_Title'),
                        message: String.format(RS.$('YZStrings.BPM_FlowChartPanel_GetDefineFailDlg_Msg'), url, this.chartDefine.errorMessage),
                        icon: Ext.MessageBox.WARNING
                    };

                    YZSoft.Error.Throw(err);
                }

                var html;

                //关联图片
                Ext.each(this.chartDefine.nodes, function (node) {
                    node.module = this.TryGetPicInfo(node.TypeName);
                }, this);

                //创建容器
                var bound = this.GetBoundRectangle(this.chartDefine.nodes);
                html = String.format("<div style='position:relative;width:{0}px;height:{1}px'>",
                    bound.X,
                    bound.Y);

                //创建节点下方的文字
                Ext.each(this.chartDefine.nodes, function (node) {
                    html += this.CreateNodeText(1, node);
                }, this);

                //创建连接线上的文字
                Ext.each(this.chartDefine.links, function (link) {
                    html += this.CreateLinkText(2, link);
                }, this);

                html += "</div><div id='" + this.tipDivId + "' style='position:absolute;top:0px;left:0px;width:100%;z-index:3'></div>";

                this.update(html);

                this.ttip = new Ext.Panel({
                    collapsible: true,
                    renderTo: this.tipDivId,
                    header: false,
                    border: false,
                    html: ''
                });

                Ext.each(this.body.dom.getElementsByTagName('SPAN'), function (el) {
                    var postAlign = el.getAttribute('postAlign');
                    if (postAlign) {
                        var ele = new Ext.Element(el);

                        if (postAlign.indexOf('h') != -1) {
                            var l = ele.getLeft(true);
                            var w = ele.getWidth(true);
                            ele.setLeft(l - w / 2);
                        }

                        if (postAlign.indexOf('v') != -1) {
                            var t = ele.getTop(true);
                            var h = ele.getHeight(true);
                            ele.setTop(t - h / 2);
                        }
                    }
                }, this);

                newNode = document.createElement('canvas');
                newNode.width = bound.X;
                newNode.height = bound.Y;
                newNode.style.position = 'absolute';
                newNode.style.top = 0;
                newNode.style.left = 0;
                var canvas = this.body.dom.firstChild.appendChild(newNode);
                Ext.EventManager.addListener(canvas, 'mousemove', this.mousemove, this);
                Ext.EventManager.addListener(canvas, 'mouseup', this.mouseup, this);

                if (typeof (G_vmlCanvasManager) != 'undefined')
                    G_vmlCanvasManager.initElement(canvas);

                var ctx = canvas.getContext('2d');

                this.canvas = new Ext.Element(canvas);

                //绘制活动节点框
                Ext.each(this.chartDefine.nodes, function (node) {
                    this.DrawActiveBox(ctx, node);
                }, this);

                //绘制连接线
                Ext.each(this.chartDefine.links, function (link) {
                    this.DrawLink(ctx, link);
                }, this);

                //绘制节点
                Ext.each(this.chartDefine.nodes, function (node) {
                    this.DrawNode(ctx, node);
                }, this);
            },

            failure: function (response) {
                this.body.unmask();

                var err = {
                    type: 'responseError',
                    response: response,
                    url: url,
                    title: RS.$('YZStrings.BPM_FlowChartPanel_GetDefineAjaxFailDlg_Title'),
                    message: String.format(RS.$('YZStrings.BPM_FlowChartPanel_GetDefineAjaxFailDlg_Msg'), url)
                };

                YZSoft.Error.Throw(err);
            }
        });
    },

    CreateNodeText: function (z_order, node) {
        var rv = '';

        var picInfo = node.module;
        var step = this.TryGetLastStep(node);
        var picPos = this.GetImagePos(node.centerPoint, picInfo);

        rv = '';
        var txtPos = { X: node.centerPoint.X, Y: node.centerPoint.Y + picInfo.height / 2 + picInfo.ygap + 5 };
        var innerHtml;

        if (step) {
            var text;
            var color;
            if (step.Finished) {
                color = 'red';
                if (step.IsHumanStep) {
                    text = String.format('{0}<br/>{1}<br/>{2}',
                        YZSoft.BPM.Render.RenderStepHandlerExt(step, true),
                        step.FinishAt,
                        YZSoft.HttpUtility.HtmlEncode(step.SelAction));
                }
                else {
                    text = step.FinishAt;
                }
            }
            else {
                txtPos.Y += 2;

                color = 'green';
                if (step.IsHumanStep) {
                    text = String.format('{0}<br/>{1}<br/>{2}',
                        YZSoft.BPM.Render.RenderStepRecipientExt(step, false),
                        step.ReceiveAt,
                        RS.$('YZStrings.All_Running'));
                }
                else {
                    text = String.format("{0}<br/>{1}", step.ReceiveAt,
                        RS.$('YZStrings.BPM_FlowChartPanel_Waitting'));
                }
            }

            innerHtml = String.format("{0}<br/><font style='font-name:Tohama;font-size:{1}pt;color:{2}'>{3}</font>",
                node.DisplayName,
                9,
                color,
                text);
        }
        else {
            innerHtml = node.DisplayName;
        }

        rv += this.CreateText(z_order + 1, txtPos, innerHtml, node.Font, node.ForeColor, true, true);

        return rv;
    },

    DrawActiveBox: function (ctx, node) {
        var step = this.TryGetLastStep(node);

        if (step && !step.Finished) {
            var x = node.centerPoint.X - 19 - 0.5;
            var y = node.centerPoint.Y - 19 - 0.5;
            var cx = 38;
            var cy = 38;

            ctx.fillStyle = '#ffffcc';
            ctx.fillRect(x, y, cx, cy);
            ctx.strokeStyle = 'green';
            ctx.lineWidth = 3;
            ctx.strokeRect(x, y, cx, cy);
        }
    },

    DrawNode: function (ctx, node) {
        var picInfo = node.module;
        var picPos = this.GetImagePos(node.centerPoint, picInfo);
        var img = new Image();
        img.onload = function () {
            ctx.drawImage(img, picPos.X, picPos.Y);
        }

        this.areas.push({
            type: 'node',
            object: node,
            rc: {
                X: picPos.X,
                Y: picPos.Y,
                CX: picPos.X + picInfo.width,
                CY: picPos.Y + picInfo.height
            }
        });

        img.src = resolveUrl('YZSoft/BPM/Images/' + picInfo.image);
    },

    DrawLink: function (ctx, link) {
        var rv = '';

        var stPoint = { X: link.fromPoint.X - 18, Y: link.fromPoint.Y - 17 };
        var endPoint;

        if (link.LineWeight % 2 == 1) {
            stPoint.X += 0.5;
            stPoint.Y += 0.5;
        }

        if (Ext.isIE && link.LineWeight==1) //IE有的时候不画线
            link.LineWeight = link.LineWeight + 0.001;

        ctx.beginPath();
        ctx.strokeStyle = link.LineColor;
        ctx.lineWidth = link.LineWeight;

        ctx.moveTo(stPoint.X, stPoint.Y);

        for (var i = 0; i < link.offsets.length; i++) {
            var offset = link.offsets[i];
            if (i != 0)
                stPoint = endPoint;

            endPoint = { X: stPoint.X + offset.X, Y: stPoint.Y + offset.Y };

            if (i !== link.offsets.length - 1) { //不是最后一条线
                ctx.lineTo(endPoint.X, endPoint.Y);
            }
            else { //是最后一条线
                var p0 = stPoint;
                var p1 = endPoint;

                var L0 = Math.sqrt(Math.pow(p0.X - p1.X, 2) + Math.pow(p0.Y - p1.Y, 2));   //直线的长度

                if (L0 != 0) {
                    var a = (p0.X - p1.X) / L0;
                    var b = (p0.Y - p1.Y) / L0;   //单位向量的两个分量  
                    var L = 10.0 + ctx.lineWidth * 4;   //箭头线长度，这儿我写成固定的，你可以自己修改或者计算  
                    var d = 12.0 / 180.0 * Math.PI;     //箭头线与直线的角度30度，你可以自己调整



                    var ex = p1.X + L * (a * Math.cos(d));
                    var ey = p1.Y + L * (b * Math.cos(d));

                    ctx.lineTo(ex, ey);
                    ctx.stroke();

                    ctx.fillStyle = link.LineColor;
                    ctx.beginPath();
                    ctx.moveTo(p1.X, p1.Y);

                    for (var n = 0; n < 2; n++) {
                        var x = p1.X + L * (a * Math.cos(d) - b * Math.sin(n == 0 ? d : -d));
                        var y = p1.Y + L * (a * Math.sin(n == 0 ? d : -d) + b * Math.cos(d));
                        ctx.lineTo(x, y);   //画箭头线  
                    }

                    ctx.closePath();
                    ctx.fill();
                }
                else {
                    ctx.lineTo(endPoint.X, endPoint.Y);
                    ctx.stroke();
                }
            }
        }
    },

    CreateText: function (z_order, txtPos, text, font, color, transparent, alignTop) {
        return String.format("<span postAlign='{0}' style='z-index:{1};background-color:{2};position:absolute;left:{3}px;top:{4}px;font-name:Tohama;font-size:{6}pt;color:{7};text-align:center;cursor:inherit'>{8}</span>",
            alignTop ? 'h' : 'hv',
            z_order,
            transparent ? 'transparent' : 'white',
            txtPos.X,
            txtPos.Y,
            font.Name,
            9, //font.SizeInPoints,
            color,
            text);
    },

    CreateLinkText: function (z_order, link) {
        var stPoint = { X: link.fromPoint.X - 18, Y: link.fromPoint.Y - 17 };
        var endPoint;
        for (var i = 0; i < link.offsets.length; i++) {
            var offset = link.offsets[i];
            if (i != 0)
                stPoint = endPoint;

            endPoint = { X: stPoint.X + offset.X, Y: stPoint.Y + offset.Y };

            var txtPos;
            if (link.DockPointIndex == -1) {
                if (i == Math.floor(link.offsets.length / 2))
                    txtPos = { X: (stPoint.X + endPoint.X) / 2, Y: (stPoint.Y + endPoint.Y) / 2 };
            }
            else {
                if (link.DockPointIndex == 0 && i == 0) { //只有第1个点需要做此处理
                    txtPos = stPoint;
                }
                else {
                    if (link.DockPointIndex == i * 2 + 1)
                        txtPos = { X: (stPoint.X + endPoint.X) / 2, Y: (stPoint.Y + endPoint.Y) / 2 };
                    else if (link.DockPointIndex == i * 2 + 2)
                        txtPos = endPoint;
                }
            }

            if (txtPos) {
                return this.CreateText(z_order, txtPos, link.DisplayString, link.Font, link.TextColor, false, false);
            }
        }

        return '';
    },

    TryGetPicInfo: function (typeName) {
        var rv = null;
        Ext.each(this.pics, function (picInfo) {
            if (picInfo.NodeType == typeName) {
                rv = picInfo;
                return false;
            }
        }, this);

        return rv;
    },

    TryGetLastStep: function (node) {
        if (!this.chartDefine.steps)
            return null;

        for (var i = this.chartDefine.steps.length - 1; i >= 0; i--) {
            var step = this.chartDefine.steps[i];
            if (step.Finished)
                continue;
            if (this.IsInstanceOf(step, node))
                return step;
        }

        for (var i = this.chartDefine.steps.length - 1; i >= 0; i--) {
            var step = this.chartDefine.steps[i];
            if (this.IsInstanceOf(step, node))
                return step;
        }

        return null;
    },

    GetAllInstanceOf: function (node) {
        var rv = new Array();

        if (!this.chartDefine.steps)
            return rv;

        Ext.each(this.chartDefine.steps, function (step) {
            if (this.IsInstanceOf(step, node))
                rv.push(step);
        }, this);

        return rv;
    },

    IsInstanceOf: function (step, node) {
        var runtimeNodeName = step.NodeNameOrg;

        if (node.TypeName == 'InformNode' && !step.Memo)
            return false;

        if (String.Equ(runtimeNodeName, node.Name))
            return true;

        //层级审批带"\"号
        var index = runtimeNodeName.indexOf('\\');
        if (index != -1) {
            runtimeNodeName = runtimeNodeName.substring(0, index);
            if (String.Equ(runtimeNodeName, node.Name, true))
                return true;
        }

        return false;
    },

    GetImagePos: function (centerPoint, picInfo) {
        return {
            X: centerPoint.X - picInfo.width / 2 + picInfo.offsetx,
            Y: centerPoint.Y - picInfo.height / 2 + picInfo.offsety
        };
    },

    GetBoundRectangle: function (nodes) {
        var x = 0;
        var y = 0;
        Ext.each(nodes, function (node) {
            var cp = node.centerPoint;
            if (cp.X > x)
                x = cp.X;

            if (cp.Y > y)
                y = cp.Y;
        });

        return { X: x + 600, Y: y + 100 };
    },

    mouseup: function (e, el, o) {
        var x = e.getPageX() - this.canvas.getX();
        var y = e.getPageY() - this.canvas.getY();

        var hitAera;
        Ext.each(this.areas, function (area) {
            if (x >= area.rc.X && x <= area.rc.CX && y >= area.rc.Y && y <= area.rc.CY) {
                hitAera = area;
                return false;
            }
        }, this);

        var cursor = 'default'
        if (hitAera) {
            var node = hitAera.object;
            if (node.TypeName != 'EmbedProcessNode')
                return;

            var steps = this.GetAllInstanceOf(node);
            if (steps.length == 0)
                return;

            YZSoft.BPM.Dialogs.ShowTaskTraceDlg(this.TaskID, 0, '租户交接');
        }
    },

    mousemove: function (e, el, o) {
        var x = e.getPageX() - this.canvas.getX();
        var y = e.getPageY() - this.canvas.getY();

        var hitAera;
        Ext.each(this.areas, function (area) {
            if (x >= area.rc.X && x <= area.rc.CX && y >= area.rc.Y && y <= area.rc.CY) {
                hitAera = area;
                return false;
            }
        }, this);

        var cursor = 'default'
        if (hitAera) {
            var node = hitAera.object;
            var steps = this.GetAllInstanceOf(node);
            var picInfo = node.module;

            if (picInfo && steps && steps.length != 0) {
                cursor = 'pointer';

                if (this.ttip.bindTo != node.Name) {
                    var str = new Array();
                    str.push("<table class='ChartTraceTipTable' cellspacing='1' cellpadding='1'>");

                    if (picInfo.humanStep) {
                        str.push(String.format("<tr class='head'><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td><td>{5}</td><td style='width:99%'>{6}</td></tr>",
                            RS.$('YZStrings.All_Index'),
                            RS.$('YZStrings.BPM_StepID'),
                            RS.$('YZStrings.All_Date'),
                            RS.$('YZStrings.All_Owner'),
                            RS.$('YZStrings.All_Handler'),
                            RS.$('YZStrings.BPM_SelAction'),
                            RS.$('YZStrings.BPM_ProcessComments')));

                        var index = 0;
                        for (var i = 0; i < steps.length; i++) {
                            var step = steps[i];

                            //if (!step.IsHumanStep)
                            //    continue;

                            if (step.Finished) {
                                str.push(String.format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td><td>{5}</td><td>{6}</td></tr>",
                                    index + 1,
                                    step.StepID,
                                    step.FinishAt,
                                    YZSoft.BPM.Render.RenderStepOwnerExt(step),
                                    YZSoft.BPM.Render.RenderStepHandlerExt(step),
                                    YZSoft.HttpUtility.HtmlEncode(step.SelAction),
                                    YZSoft.HttpUtility.HtmlEncode(step.Comments, true)));
                            }
                            else {
                                str.push(String.format("<tr class='processing'><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td><td>{4}</td><td>{5}</td><td></td></tr>",
                                    index + 1,
                                    step.StepID,
                                    step.ReceiveAt,
                                    YZSoft.BPM.Render.RenderStepOwnerExt(step),
                                    YZSoft.BPM.Render.RenderStepRecipientExt(step, false),
                                    RS.$('YZStrings.All_Running')));
                            }

                            index++;
                        }
                    }
                    else {
                        str.push(String.format("<tr class='head'><td>{0}</td><td>{1}</td><td style='width:99%'>{2}</td></tr>",
                            RS.$('YZStrings.All_Index'),
                            RS.$('YZStrings.BPM_StepID'),
                            RS.$('YZStrings.All_Date')));

                        for (var i = 0; i < steps.length; i++) {
                            var step = steps[i];

                            if (step.Finished) {
                                str.push(String.format("<tr><td>{0}</td><td>{1}</td><td>{2}</td></tr>",
                                    i + 1,
                                    step.StepID,
                                    step.FinishAt));
                            }
                            else {
                                str.push(String.format("<tr class='processing'><td>{0}</td><td>{1}</td><td>{2}</td></tr>",
                                    i + 1,
                                    step.StepID,
                                    step.ReceiveAt));
                            }
                        }
                    }

                    this.ttip.update(str.join(''));
                    this.ttip.bindTo = node.Name
                }

                var top = this.body.getY() - this.canvas.getY();
                var left = this.body.getX() - this.canvas.getX();
                this.ttip.el.parent().setTop(top + 'px');
                this.ttip.el.parent().setLeft(left + 'px');
                this.ttip.expand(YZSoft.EnvSetting.BPM.TaskTrace.expandAnimate);
            }
        }
        else {
            this.ttip.collapse(YZSoft.EnvSetting.BPM.TaskTrace.collapseAnimate);
        }

        this.canvas.dom.style.cursor = cursor;
    },

    listeners: {
        afterlayout: function () {
            if (!this.loaded) {
                var p = this;
                setTimeout(function () { p.loadChart(p.TaskID, p.processName) }, 10);
                this.loaded = true;
            }
        }
    }
});
