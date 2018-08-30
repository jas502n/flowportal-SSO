YZSoft = {
    version: '1.0.0',
    versionDetail: {
        major: 1,
        minor: 0,
        patch: 0
    }
};

YZSoft.Debug = function (v) {
}

YZModules = {};

Ext.useShims = Ext.useShims || Ext.isIE;

YZSoft.EnvSetting = {
    checkboxSelection: true,
    dlgAnimate: false,
    TimeOut:{
        UserReport:180000
    },
    PageSize: {
        defaultSize:15,
        BPM: {
            drafts: 10,
            historyMyPosted: 10,
            historyMyProcessed: 10,
            historyAllAccessable: 10,
            myTask: 10,
            shareTask: 10,
            myTaskComment:15
        },
        BPMAdmin: {
            onlineUsers: 10,
            systemUsers: 10,
            processUsage: 10,
            stepHandlingTime: 10,
            userHandlingTime: 10,
            handlingTimeDetail: 10,
            stepTimeout: 10,
            userTimeout: 10,
            timeoutDetail: 10,
            appLog: 10
        }
    },
    BPM: {
        TaskTrace: {
            expandAnimate: true,
            collapseAnimate: true
        },
        Form: {
            WindowModel: 'OpenWindow', //ModelessDialog - 无模式对话框，ModalDialog - 模式对话框，IFrameDialog - div + iframe对话框,Tab - 内容窗口中增加一个Tab 

            DlgSize: {
                Width: 836,
                Height: 600
            }
        },
        FormApplication: {
            WindowModel: 'OpenWindow', //ModelessDialog - 无模式对话框，ModalDialog - 模式对话框，IFrameDialog - div + iframe对话框,Tab - 内容窗口中增加一个Tab 

            DlgSize: {
                Width: 836,
                Height: 600
            }
        },
        DataBrowserWnd: {
            DlgSize: {
                Width: 600,
                Height: 420
            }
        },
        Render: {
            TaskStateMergeStep: true
        }
    },
    Excel: {
        AllowExportAll: false,
        MaxExportPages: 100
    }
};

userInfo = typeof(userInfo) == 'undefined' ? {}:userInfo;

function resolveUrl(url) {
    if (typeof(rootUrl) == 'undefined')
        return url;

    if (url.substring(0,2) == '~/' || url.substring(0,2) == '~\\')
        url = url.substring(2);
        
    if (rootUrl)
        return rootUrl + url;
    else
        return url;
}

Ext.BLANK_IMAGE_URL = resolveUrl("YZSoft/ExtJS/images/default/s.gif");

RS = {
    $:function(strfullname){ //获得字符串，例如：RS['YZStrings.All_TopMenu_Workflow']
        //空字符串
        if (!strfullname)
            return '';

        var idx = strfullname.indexOf('.'); //字符串格式必需为 Assembly.Perfix_*,Perfix代表下载粒度,系统一次下载相同Perfix的字符串
        if (idx == -1){
            alert('Incorrent string name, String name format should be : Assembly.Perfix_*');
            return '';
        }
        var assembly = strfullname.substring(0,idx);
        var strname = strfullname.substring(idx+1);
        
        var idx = strname.indexOf('_');
        if (idx == -1){
            alert('Incorrent string name, String name format should be : Assembly.Perfix_*');
            return '';
        }
        
        var namespace = strname.substring(0,idx);

        RS[assembly] = RS[assembly] || {};
        var assemblyData = RS[assembly];
        var spaceData = assemblyData[namespace];
        
        //命名空间不存在，则加载
        if (!spaceData && spaceData !== false){
            url = resolveUrl("YZSoft/Globalization/StringResource.ashx");
            Ext.Ajax.request({
                method: 'GET',
                disableCaching: true,
                sync: true,
                params:{assembly:assembly,namespace:namespace,lcid:userInfo ? userInfo.LCID:''},
                url: url,
                success: function(response) {
                    var result = Ext.decode(response.responseText);
                    if(result.success)
                        assemblyData[namespace] = result.strings;
                    else {
                        assemblyData[namespace] = false;
                        alert(String.format('Load string resource failed, Reason:{0}\r\n', result.errorMessage));
                    }
                },
                failure: function(response) {
                    assemblyData[namespace] = false;
                    alert(String.format('Access url({0}) failed, Reason:{1}\r\n', url, response.responseText));
                }
            });
        }
        
        spaceData = assemblyData[namespace];
        if (spaceData) //命名空间已存在
            return spaceData[strname] === undefined ? ('Miss Resources : ' + strfullname):spaceData[strname];
        else //命名空间加载失败
            return 'Miss Resources : ' + strfullname;
    }
};

Ext.UpdateManager.defaults.indicatorText = '<div class="loading-indicator">' + RS.$('YZStrings.All_Loading') + '</div>';

if (Ext.LoadMask){
    Ext.LoadMask.prototype.msg = RS.$('YZStrings.All_LoadMask');
}

if (Ext.form.ComboBox){
   Ext.apply(Ext.form.ComboBox.prototype, {
      loadingText       : RS.$('YZStrings.All_Loading'),
      valueNotFoundText : undefined
   });
}

Date.monthNames = [
   RS.$('YZStrings.All_Month1'),
   RS.$('YZStrings.All_Month2'),
   RS.$('YZStrings.All_Month3'),
   RS.$('YZStrings.All_Month4'),
   RS.$('YZStrings.All_Month5'),
   RS.$('YZStrings.All_Month6'),
   RS.$('YZStrings.All_Month7'),
   RS.$('YZStrings.All_Month8'),
   RS.$('YZStrings.All_Month9'),
   RS.$('YZStrings.All_Month10'),
   RS.$('YZStrings.All_Month11'),
   RS.$('YZStrings.All_Month12')
];

Date.dayNames = [
   RS.$('YZStrings.All_Week7Short'),
   RS.$('YZStrings.All_Week1Short'),
   RS.$('YZStrings.All_Week2Short'),
   RS.$('YZStrings.All_Week3Short'),
   RS.$('YZStrings.All_Week4Short'),
   RS.$('YZStrings.All_Week5Short'),
   RS.$('YZStrings.All_Week6Short'),
   RS.$('YZStrings.All_Week7Short')
];

if (Ext.DatePicker){
   Ext.apply(Ext.DatePicker.prototype, {
      todayText         : RS.$('YZStrings.All_Today'),
      monthNames        : Date.monthNames,
      dayNames          : Date.dayNames,
      nextText          : RS.$('YZStrings.All_NextMonth'),
      prevText          : RS.$('YZStrings.All_PrevMonth'),
      okText            : RS.$('YZStrings.All_OK'),
      cancelText        : RS.$('YZStrings.All_Cancel'),
      format            : 'Y-m-d'
   });
}

Ext.form.DateField.prototype.format = 'Y-m-d';

if (Ext.PagingToolbar){
   Ext.apply(Ext.PagingToolbar.prototype, {
      beforePageText : RS.$('YZStrings.All_PagingToolbar_beforePageText'),
      afterPageText  : RS.$('YZStrings.All_PagingToolbar_afterPageText'),
      firstText      : RS.$('YZStrings.All_PagingToolbar_firstText'),
      prevText       : RS.$('YZStrings.All_PagingToolbar_prevText'),
      nextText       : RS.$('YZStrings.All_PagingToolbar_nextText'),
      lastText       : RS.$('YZStrings.All_PagingToolbar_lastText'),
      refreshText    : RS.$('YZStrings.All_PagingToolbar_refreshText'),
      displayMsg     : RS.$('YZStrings.All_PagingToolbar_displayMsg'),
      emptyMsg       : RS.$('YZStrings.All_PagingToolbar_emptyMsg')
   });
}

if (Ext.MessageBox){
    Ext.MessageBox.buttonText = {
        ok      : RS.$('YZStrings.All_OK'),
        cancel  : RS.$('YZStrings.All_Cancel'),
        yes     : RS.$('YZStrings.All_Yes'),
        no      : RS.$('YZStrings.All_No') 
    };
}

if (Ext.grid.GridView){
    Ext.apply(Ext.grid.GridView.prototype, {
        sortAscText  : RS.$('YZStrings.All_SortAsc'),
        sortDescText : RS.$('YZStrings.All_SortDesc'),
        columnsText  : RS.$('YZStrings.All_Columns')
    });
}

YZSoft.util = {};
YZSoft.util.base64 = {
    base64s : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",
    encode: function(decStr){
        if (typeof btoa === 'function') {
            return btoa(decStr);
        }
        var base64s = this.base64s;
        var bits;
        var dual;
        var i = 0;
        var encOut = "";
        while(decStr.length >= i + 3){
            bits = (decStr.charCodeAt(i++) & 0xff) <<16 | (decStr.charCodeAt(i++) & 0xff) <<8 | decStr.charCodeAt(i++) & 0xff;
            encOut += base64s.charAt((bits & 0x00fc0000) >>18) + base64s.charAt((bits & 0x0003f000) >>12) + base64s.charAt((bits & 0x00000fc0) >> 6) + base64s.charAt((bits & 0x0000003f));
        }
        if(decStr.length -i > 0 && decStr.length -i < 3){
            dual = Boolean(decStr.length -i -1);
            bits = ((decStr.charCodeAt(i++) & 0xff) <<16) | (dual ? (decStr.charCodeAt(i) & 0xff) <<8 : 0);
            encOut += base64s.charAt((bits & 0x00fc0000) >>18) + base64s.charAt((bits & 0x0003f000) >>12) + (dual ? base64s.charAt((bits & 0x00000fc0) >>6) : '=') + '=';
        }
        return(encOut);
    },
    decode: function(encStr){
        if (typeof atob === 'function') {
            return atob(encStr);
        }
        var base64s = this.base64s;
        var bits;
        var decOut = "";
        var i = 0;
        for(; i<encStr.length; i += 4){
            bits = (base64s.indexOf(encStr.charAt(i)) & 0xff) <<18 | (base64s.indexOf(encStr.charAt(i +1)) & 0xff) <<12 | (base64s.indexOf(encStr.charAt(i +2)) & 0xff) << 6 | base64s.indexOf(encStr.charAt(i +3)) & 0xff;
            decOut += String.fromCharCode((bits & 0xff0000) >>16, (bits & 0xff00) >>8, bits & 0xff);
        }
        if(encStr.charCodeAt(i -2) == 61){
            return(decOut.substring(0, decOut.length -2));
        }
        else if(encStr.charCodeAt(i -1) == 61){
            return(decOut.substring(0, decOut.length -1));
        }
        else {
            return(decOut);
        }    
    }
};

YZSoft.util.hex = {
    encode : function(str){
        var r="";
        var e=str.length;
        var c=0;
        var h;
        while(c<e){
            h=str.charCodeAt(c++).toString(16);
            while(h.length<3) h="0"+h;
            r+=h;
        }
        return r;
    },
    
    decode : function(str){
        var r="";
        var e=str.length;
        var s;
        while(e>=0){
            s=e-3;
            r=String.fromCharCode("0x"+str.substring(s,e))+r;
            e=s;
        }
        return r;
    }
};

YZSoft.util.xml = {
    xmlNodeNameEncode : function(value){
        return !value ? value : String(value).replace(/@/g, "_x0040_").replace(/:/g, "_x003A_").replace('$', "_x0024_");
    },

    xmlValueEncode : function(value){
        var rv = '';
        for (var i = 0; i < value.length; i++) {
            var ch = value.charAt(i);
            var code = ch.charCodeAt(0);
            var j = '<>"&\''.indexOf(ch);
            if (j != -1){
                rv += '&' + ['lt', 'gt', 'quot', 'amp', 'apos'][j] + ';';
            }
            else if (code<32 && code!=10 && code!=13) {
                //rv += '&#' + code + ';'; //忽略非打印字符，非打印字符是不会显示的会引起以后查询时的误解
            }
            else{
                rv += ch;
            }
        }
        return rv; 
    },
    
    encode:function(nodename,jsondata,opt,deep){
        var n = this.xmlNodeNameEncode(nodename);
        var d = jsondata;
        var hs = this.getHeadSpace(deep);
        if (!Ext.isDefined(d) || d === null){
            return hs + this.encodeItem(n,'');
        }
        else if (Ext.isString(d)){
            return hs + this.encodeItem(n,this.xmlValueEncode(d));
        }
        else if (typeof d == "number"){
            return hs + this.encodeItem(n,d);
        }
        else if(Ext.isBoolean(d)){
            return hs + this.encodeItem(n,d);
        }
        var vs = Ext.isArray(d) ? jsondata:[d];
        deep = deep || 0;
        var rv = [];
        if (deep == 0)
            rv.push('<?xml version="1.0"?>');
        if (vs.length == 0){
            rv.push(hs + '<' + n + '>');
            rv.push(hs + '</' + n + '>');
        }
        else{
            for (var i = 0 ; i < vs.length ; i++){
                var v = vs[i];
                rv.push(hs + '<' + n + '>');
                for (var p in v){
                    var pv = v[p];
                    rv.push(this.encode(p,pv,null,deep+1));
                    
                }
                rv.push(hs + '</' + n + '>');
            }
        }
        return rv.join('\r\n');
    },
    
    getHeadSpace:function(deep){
        var spc = '';
        for(var i = 0 ; i < deep*4 ; i++)
            spc += ' ';
        return spc;
    },
    
    encodeItem:function(p,v){
        return '<'+p+'>' + v + '</'+p+'>';
    }
};

Ext.DomQuery.findParent = function(selector,root){
    if (!root)
        return null;

    if (Ext.isGecko && Object.prototype.toString.call(p) == '[object XULElement]')
        return null;
        
    var p = root;
	var b = document.body;
	var depth = 0;   	
    var maxDepth = 50;

    while (p && depth < maxDepth && p != b){
        if(Ext.DomQuery.is(p, selector)){
            return p;
        }
        depth++;
        p = p.parentNode;
    }
    return null;
};
Ext.selectNode = Ext.DomQuery.selectNode;
Ext.findParent = Ext.DomQuery.findParent;

/*!
* Ext JS Library 3.3.0
* Copyright(c) 2006-2010 Ext JS, Inc.
* licensing@extjs.com
* http://www.extjs.com/license
*/
/**
* @class Ext.ux.Spinner
* @extends Ext.util.Observable
* Creates a Spinner control utilized by Ext.ux.form.SpinnerField
*/
Ext.ux.Spinner = Ext.extend(Ext.util.Observable, {
    incrementValue: 1,
    alternateIncrementValue: 5,
    triggerClass: 'x-form-spinner-trigger',
    splitterClass: 'x-form-spinner-splitter',
    alternateKey: Ext.EventObject.shiftKey,
    defaultValue: 0,
    accelerate: false,

    constructor: function(config) {
        Ext.ux.Spinner.superclass.constructor.call(this, config);
        Ext.apply(this, config);
        this.mimicing = false;
    },

    init: function(field) {
        this.field = field;

        field.afterMethod('onRender', this.doRender, this);
        field.afterMethod('onEnable', this.doEnable, this);
        field.afterMethod('onDisable', this.doDisable, this);
        field.afterMethod('afterRender', this.doAfterRender, this);
        field.afterMethod('onResize', this.doResize, this);
        field.afterMethod('onFocus', this.doFocus, this);
        field.beforeMethod('onDestroy', this.doDestroy, this);
    },

    doRender: function(ct, position) {
        var el = this.el = this.field.getEl();
        var f = this.field;

        if (!f.wrap) {
            f.wrap = this.wrap = el.wrap({
                cls: "x-form-field-wrap"
            });
        }
        else {
            this.wrap = f.wrap.addClass('x-form-field-wrap');
        }

        this.trigger = this.wrap.createChild({
            tag: "img",
            src: Ext.BLANK_IMAGE_URL,
            cls: "x-form-trigger " + this.triggerClass
        });

        if (!f.width) {
            this.wrap.setWidth(el.getWidth() + this.trigger.getWidth());
        }

        this.splitter = this.wrap.createChild({
            tag: 'div',
            cls: this.splitterClass,
            style: 'width:13px; height:2px;'
        });
        this.splitter.setRight((Ext.isIE) ? 1 : 2).setTop(10).show();

        this.proxy = this.trigger.createProxy('', this.splitter, true);
        this.proxy.addClass("x-form-spinner-proxy");
        this.proxy.setStyle('left', '0px');
        this.proxy.setSize(14, 1);
        this.proxy.hide();
        this.dd = new Ext.dd.DDProxy(this.splitter.dom.id, "SpinnerDrag", {
            dragElId: this.proxy.id
        });

        this.initTrigger();
        this.initSpinner();
    },

    doAfterRender: function() {
        var y;
        if (Ext.isIE && this.el.getY() != (y = this.trigger.getY())) {
            this.el.position();
            this.el.setY(y);
        }
    },

    doEnable: function() {
        if (this.wrap) {
            this.wrap.removeClass(this.field.disabledClass);
        }
    },

    doDisable: function() {
        if (this.wrap) {
            this.wrap.addClass(this.field.disabledClass);
            this.el.removeClass(this.field.disabledClass);
        }
    },

    doResize: function(w, h) {
        if (typeof w == 'number') {
            this.el.setWidth(w - this.trigger.getWidth());
        }
        this.wrap.setWidth(this.el.getWidth() + this.trigger.getWidth());
    },

    doFocus: function() {
        if (!this.mimicing) {
            this.wrap.addClass('x-trigger-wrap-focus');
            this.mimicing = true;
            Ext.get(Ext.isIE ? document.body : document).on("mousedown", this.mimicBlur, this, {
                delay: 10
            });
            this.el.on('keydown', this.checkTab, this);
        }
    },

    // private
    checkTab: function(e) {
        if (e.getKey() == e.TAB) {
            this.triggerBlur();
        }
    },

    // private
    mimicBlur: function(e) {
        if (!this.wrap.contains(e.target) && this.field.validateBlur(e)) {
            this.triggerBlur();
        }
    },

    // private
    triggerBlur: function() {
        this.mimicing = false;
        Ext.get(Ext.isIE ? document.body : document).un("mousedown", this.mimicBlur, this);
        this.el.un("keydown", this.checkTab, this);
        this.field.beforeBlur();
        this.wrap.removeClass('x-trigger-wrap-focus');
        this.field.onBlur.call(this.field);
    },

    initTrigger: function() {
        this.trigger.addClassOnOver('x-form-trigger-over');
        this.trigger.addClassOnClick('x-form-trigger-click');
    },

    initSpinner: function() {
        this.field.addEvents({
            'spin': true,
            'spinup': true,
            'spindown': true
        });

        this.keyNav = new Ext.KeyNav(this.el, {
            "up": function(e) {
                e.preventDefault();
                this.onSpinUp();
            },

            "down": function(e) {
                e.preventDefault();
                this.onSpinDown();
            },

            "pageUp": function(e) {
                e.preventDefault();
                this.onSpinUpAlternate();
            },

            "pageDown": function(e) {
                e.preventDefault();
                this.onSpinDownAlternate();
            },

            scope: this
        });

        this.repeater = new Ext.util.ClickRepeater(this.trigger, {
            accelerate: this.accelerate
        });
        this.field.mon(this.repeater, "click", this.onTriggerClick, this, {
            preventDefault: true
        });

        this.field.mon(this.trigger, {
            mouseover: this.onMouseOver,
            mouseout: this.onMouseOut,
            mousemove: this.onMouseMove,
            mousedown: this.onMouseDown,
            mouseup: this.onMouseUp,
            scope: this,
            preventDefault: true
        });

        this.field.mon(this.wrap, "mousewheel", this.handleMouseWheel, this);

        this.dd.setXConstraint(0, 0, 10)
        this.dd.setYConstraint(1500, 1500, 10);
        this.dd.endDrag = this.endDrag.createDelegate(this);
        this.dd.startDrag = this.startDrag.createDelegate(this);
        this.dd.onDrag = this.onDrag.createDelegate(this);
    },

    onMouseOver: function() {
        if (this.disabled) {
            return;
        }
        var middle = this.getMiddle();
        this.tmpHoverClass = (Ext.EventObject.getPageY() < middle) ? 'x-form-spinner-overup' : 'x-form-spinner-overdown';
        this.trigger.addClass(this.tmpHoverClass);
    },

    //private
    onMouseOut: function() {
        this.trigger.removeClass(this.tmpHoverClass);
    },

    //private
    onMouseMove: function() {
        if (this.disabled) {
            return;
        }
        var middle = this.getMiddle();
        if (((Ext.EventObject.getPageY() > middle) && this.tmpHoverClass == "x-form-spinner-overup") ||
        ((Ext.EventObject.getPageY() < middle) && this.tmpHoverClass == "x-form-spinner-overdown")) {
        }
    },

    //private
    onMouseDown: function() {
        if (this.disabled) {
            return;
        }
        var middle = this.getMiddle();
        this.tmpClickClass = (Ext.EventObject.getPageY() < middle) ? 'x-form-spinner-clickup' : 'x-form-spinner-clickdown';
        this.trigger.addClass(this.tmpClickClass);
    },

    //private
    onMouseUp: function() {
        this.trigger.removeClass(this.tmpClickClass);
    },

    //private
    onTriggerClick: function() {
        if (this.disabled || this.el.dom.readOnly) {
            return;
        }
        var middle = this.getMiddle();
        var ud = (Ext.EventObject.getPageY() < middle) ? 'Up' : 'Down';
        this['onSpin' + ud]();
    },

    //private
    getMiddle: function() {
        var t = this.trigger.getTop();
        var h = this.trigger.getHeight();
        var middle = t + (h / 2);
        return middle;
    },

    //private
    //checks if control is allowed to spin
    isSpinnable: function() {
        if (this.disabled || this.el.dom.readOnly) {
            Ext.EventObject.preventDefault(); //prevent scrolling when disabled/readonly
            return false;
        }
        return true;
    },

    handleMouseWheel: function(e) {
        //disable scrolling when not focused
        if (this.wrap.hasClass('x-trigger-wrap-focus') == false) {
            return;
        }

        var delta = e.getWheelDelta();
        if (delta > 0) {
            this.onSpinUp();
            e.stopEvent();
        }
        else
            if (delta < 0) {
            this.onSpinDown();
            e.stopEvent();
        }
    },

    //private
    startDrag: function() {
        this.proxy.show();
        this._previousY = Ext.fly(this.dd.getDragEl()).getTop();
    },

    //private
    endDrag: function() {
        this.proxy.hide();
    },

    //private
    onDrag: function() {
        if (this.disabled) {
            return;
        }
        var y = Ext.fly(this.dd.getDragEl()).getTop();
        var ud = '';

        if (this._previousY > y) {
            ud = 'Up';
        } //up
        if (this._previousY < y) {
            ud = 'Down';
        } //down
        if (ud != '') {
            this['onSpin' + ud]();
        }

        this._previousY = y;
    },

    //private
    onSpinUp: function() {
        if (this.isSpinnable() == false) {
            return;
        }
        if (Ext.EventObject.shiftKey == true) {
            this.onSpinUpAlternate();
            return;
        }
        else {
            this.spin(false, false);
        }
        this.field.fireEvent("spin", this);
        this.field.fireEvent("spinup", this);
    },

    //private
    onSpinDown: function() {
        if (this.isSpinnable() == false) {
            return;
        }
        if (Ext.EventObject.shiftKey == true) {
            this.onSpinDownAlternate();
            return;
        }
        else {
            this.spin(true, false);
        }
        this.field.fireEvent("spin", this);
        this.field.fireEvent("spindown", this);
    },

    //private
    onSpinUpAlternate: function() {
        if (this.isSpinnable() == false) {
            return;
        }
        this.spin(false, true);
        this.field.fireEvent("spin", this);
        this.field.fireEvent("spinup", this);
    },

    //private
    onSpinDownAlternate: function() {
        if (this.isSpinnable() == false) {
            return;
        }
        this.spin(true, true);
        this.field.fireEvent("spin", this);
        this.field.fireEvent("spindown", this);
    },

    spin: function(down, alternate) {
        var v = parseFloat(this.field.getValue());
        var incr = (alternate == true) ? this.alternateIncrementValue : this.incrementValue;
        (down == true) ? v -= incr : v += incr;

        v = (isNaN(v)) ? this.defaultValue : v;
        v = this.fixBoundries(v);
        this.field.setRawValue(v);
    },

    fixBoundries: function(value) {
        var v = value;

        if (this.field.minValue != undefined && v < this.field.minValue) {
            v = this.field.minValue;
        }
        if (this.field.maxValue != undefined && v > this.field.maxValue) {
            v = this.field.maxValue;
        }

        return this.fixPrecision(v);
    },

    // private
    fixPrecision: function(value) {
        var nan = isNaN(value);
        if (!this.field.allowDecimals || this.field.decimalPrecision == -1 || nan || !value) {
            return nan ? '' : value;
        }
        return parseFloat(parseFloat(value).toFixed(this.field.decimalPrecision));
    },

    doDestroy: function() {
        if (this.trigger) {
            this.trigger.remove();
        }
        if (this.wrap) {
            this.wrap.remove();
            delete this.field.wrap;
        }

        if (this.splitter) {
            this.splitter.remove();
        }

        if (this.dd) {
            this.dd.unreg();
            this.dd = null;
        }

        if (this.proxy) {
            this.proxy.remove();
        }

        if (this.repeater) {
            this.repeater.purgeListeners();
        }
        if (this.mimicing) {
            Ext.get(Ext.isIE ? document.body : document).un("mousedown", this.mimicBlur, this);
        }
    }
});

//backwards compat
Ext.form.Spinner = Ext.ux.Spinner;

Ext.ns('Ext.ux.form');

/**
* @class Ext.ux.form.SpinnerField
* @extends Ext.form.NumberField
* Creates a field utilizing Ext.ux.Spinner
* @xtype spinnerfield
*/
Ext.ux.form.SpinnerField = Ext.extend(Ext.form.NumberField, {
    actionMode: 'wrap',
    deferHeight: true,
    autoSize: Ext.emptyFn,
    onBlur: Ext.emptyFn,
    adjustSize: Ext.BoxComponent.prototype.adjustSize,

    constructor: function(config) {
        var spinnerConfig = Ext.copyTo({}, config, 'incrementValue,alternateIncrementValue,accelerate,defaultValue,triggerClass,splitterClass');

        var spl = this.spinner = new Ext.ux.Spinner(spinnerConfig);

        var plugins = config.plugins
			? (Ext.isArray(config.plugins)
				? config.plugins.push(spl)
				: [config.plugins, spl])
			: spl;

        Ext.ux.form.SpinnerField.superclass.constructor.call(this, Ext.apply(config, { plugins: plugins }));
    },

    // private
    getResizeEl: function() {
        return this.wrap;
    },

    // private
    getPositionEl: function() {
        return this.wrap;
    },

    // private
    alignErrorIcon: function() {
        if (this.wrap) {
            this.errorIcon.alignTo(this.wrap, 'tl-tr', [2, 0]);
        }
    },

    validateBlur: function() {
        return true;
    }
});

Ext.reg('spinnerfield', Ext.ux.form.SpinnerField);

//backwards compat
Ext.form.SpinnerField = Ext.ux.form.SpinnerField;


/**
* @version Base on Ext3.0
* @class Ext.ux.TreeCombo
* @extends Ext.form.TriggerField
*/

Ext.ux.TreeCombo = Ext.extend(Ext.form.TriggerField, {

    triggerClass: 'x-form-tree-trigger',

    initComponent: function() {
        Ext.ux.TreeCombo.superclass.initComponent.call(this);
         this.on('specialkey', function(f, e) {
            if (e.getKey() == e.ENTER) {
                this.onTriggerClick();
            }
        }, this);
        this.getTree();
   },

    onTriggerClick: function() {
        this.getTree().show();
        this.getTree().getEl().alignTo(this.wrap, 'tl-bl?');
    },

    getTree: function() {
        if (!this.treePanel) {
            if (!this.treeWidth) {
                this.treeWidth = Math.max(150, this.width || 200);
            }
            if (!this.treeHeight) {
                this.treeHeight = 206;
            }
            this.treePanel = new Ext.tree.TreePanel({
                renderTo: Ext.getBody(),
                loader: this.loader || new Ext.tree.TreeLoader({
                    preloadChildren: (typeof this.root == 'undefined'),
                    url: this.dataUrl || this.url
                }),
                root: this.root || new Ext.tree.AsyncTreeNode({
                    children: this.children
                }),
                rootVisible: (typeof this.rootVisible != 'undefined')
						? this.rootVisible
						: (this.root ? true : false),
                floating: true,
                autoScroll: true,
                minWidth: 200,
                minHeight: 206,
                width: this.treeWidth,
                height: this.treeHeight,
                listeners: {
                    hide: this.onTreeHide,
                    show: this.onTreeShow,
                    click: this.onTreeNodeClick,
                    expandnode: this.onExpandOrCollapseNode,
                    collapsenode: this.onExpandOrCollapseNode,
                    resize: this.onTreeResize,
                    scope: this
                }
            });
            this.treePanel.show();
            this.treePanel.hide();
            this.relayEvents(this.treePanel.loader, ['beforeload', 'load',
							'loadexception']);
            if (this.resizable) {
                this.resizer = new Ext.Resizable(this.treePanel.getEl(), {
                    pinned: true,
                    handles: 'se'
                });
                this.mon(this.resizer, 'resize', function(r, w, h) {
                    this.treePanel.setSize(w, h);
                }, this);
            }
        }
        return this.treePanel;
    },

    onExpandOrCollapseNode: function() {
        if (!this.maxHeight || this.resizable)
            return; // -----------------------------> RETURN
        var treeEl = this.treePanel.getTreeEl();
        var heightPadding = treeEl.getHeight() - treeEl.dom.clientHeight;
        var ulEl = treeEl.child('ul'); // Get the underlying tree element
        var heightRequired = ulEl.getHeight() + heightPadding;
        if (heightRequired > this.maxHeight)
            heightRequired = this.maxHeight;
        this.treePanel.setHeight(heightRequired);
    },

    onTreeResize: function() {
        if (this.treePanel)
            this.treePanel.getEl().alignTo(this.wrap, 'tl-bl?');
    },

    onTreeShow: function() {
        Ext.getDoc().on('mousewheel', this.collapseIf, this);
        Ext.getDoc().on('mousedown', this.collapseIf, this);
    },

    onTreeHide: function() {
        Ext.getDoc().un('mousewheel', this.collapseIf, this);
        Ext.getDoc().un('mousedown', this.collapseIf, this);
    },

    collapseIf: function(e) {
        if (!e.within(this.wrap) && !e.within(this.getTree().getEl())) {
            this.collapse();
        }
    },

    collapse: function() {
        this.getTree().hide();
        if (this.resizer)
            this.resizer.resizeTo(this.treeWidth, this.treeHeight);
    },

    // private
    validateBlur: function() {
        return !this.treePanel || !this.treePanel.isVisible();
    },

    setValue: function(v) {
        this.startValue = this.value = v;
        if (this.treePanel) {
            var n = this.treePanel.getNodeById(v); //位于一级以下节点要树全部展开时才可用
            if (n) {
                n.select(); //默认选中节点
                this.setRawValue(n.text);
                if (this.hiddenField)
                    this.hiddenField.value = v;
            }
        }
    },

    getValue: function() {
        return this.value;
    },

    onTreeNodeClick: function(node, e) {
        this.setRawValue(node.text);
        this.value = node.id;
        if (this.hiddenField)
            this.hiddenField.value = node.id;
        this.fireEvent('select', this, node);
        this.collapse();
    },
   
    onRender: function(ct, position) {
        Ext.ux.TreeCombo.superclass.onRender.call(this, ct, position);
        if (this.hiddenName) {
            this.hiddenField = this.el.insertSibling({
                tag: 'input',
                type: 'hidden',
                name: this.hiddenName,
                id: (this.hiddenId || this.hiddenName)
            }, 'before', true);

            // prevent input submission
            this.el.dom.removeAttribute('name');
        }
    }
});

YZSoft.GetIFrameWindow = function(id){
    var iframe = document.frames ? document.frames(id) : document.getElementById(id).contentWindow;
    return iframe;
}

window.onerror = function (message, url, lineNo) {
    var err = YZSoft.Error.DecodeError(message, url, lineNo);
    if (!Error.OnShow) {
        Error.OnShow = true;
        if (err.type == 'Error') {
            YZSoft.Error.ShowError(err);
        }
        else if (err.type == 'responseError') {
            YZSoft.Error.ShowHttpError(err);
        }
        else if (err.type == 'customError') {
            YZSoft.Error.ShowCustomError(err);
        }
        else {
            YZSoft.Error.ShowJsError(err);
        }
    }

    return true;
};

YZSoft.Error = {
    Throw: function (exp) {
        if (exp instanceof Error) {
            throw exp;
        }
        else {
            if (Ext.isString(exp)) {
                var args = Ext.toArray(arguments, 1);
                args.splice(0, 0, exp);
                exp = {
                    type: 'Error',
                    message: String.format.apply(undefined, args)
                };
            }

            var err = new Error(Ext.encode(exp));
            throw err;
        }
    },

    DecodeError: function (message, url, lineNo) {
        var rv;
        message = message || '';

        if (message.substring(0, 8) == 'Error: {') //safari
            message = message.substring(7);

        if (message.substring(0, 17) == 'Uncaught Error: {') //chrome
            message = message.substring(16);

        if (message.length != 0 && message.charAt(0) == '{') {
            rv = Ext.decode(message);
            rv.url = rv.url || url;
            rv.lineNo = rv.lineNo || lineNo;
        }
        else {
            rv = {
                message: message,
                url: url,
                lineNo: lineNo
            };
        }

        return rv;
    },

    ShowHttpError: function (err) {
        if (err.response.status == 200) {
            var rv = Ext.decode(err.response.responseText);
            Ext.Msg.show({
                title: err.title,
                msg: err.message + '<br/>' + rv.errorMessage,
                buttons: Ext.Msg.OK,
                icon: Ext.MessageBox.ERROR,
                fn: function (btn, text) {
                    Error.OnShow = false;
                }
            });
        }
        else {
            Ext.Msg.show({
                title: err.title,
                msg: err.message + '<br/>' + err.response.statusText,
                buttons: Ext.Msg.OK,
                icon: Ext.MessageBox.ERROR,
                fn: function (btn, text) {
                    Error.OnShow = false;
                }
            });
        }
    },

    ShowError: function (err) {
        alert(err.message);
        Error.OnShow = false;
    },

    ShowCustomError: function (err) {
        Ext.Msg.show({
            title: err.title || RS.$('YZStrings.All_Warning'),
            msg: err.message,
            buttons: Ext.Msg.OK,
            icon: err.icon || Ext.MessageBox.ERROR,
            fn: function (btn, text) {
                Error.OnShow = false;
            }
        });
    },

    ShowJsError: function (err) {
        var moduleurl = Error.url;
        Error.url = null;

        var errmsg = String.format(RS.$('YZStrings.All_JSErr_Msg'),
            err.message,
            moduleurl || err.url,
            err.lineNo);

        Ext.Msg.show({
            title: RS.$('YZStrings.All_JSErr_Title'),
            msg: errmsg,
            buttons: Ext.Msg.OK,
            icon: Ext.MessageBox.ERROR,
            fn: function (btn, text) {
                Error.OnShow = false;
            }
        });
    },

    //not used
    ShowResponseError: function (title, msg, responseText, fn) {
        if (!YZSoft._response_err_win) {
            YZSoft._response_err_win = new Ext.Window({
                title: title,
                layout: 'border',
                width: 500,
                height: 300,
                closeAction: 'hide',
                plain: true,
                border: false,
                buttonAlign: "right",
                margins: '18 15 10 10',

                items: [new Ext.BoxComponent(
                {
                    border: false,
                    region: 'north',
                    html: msg,
                    cls: 'yz_err_dlg_cap',
                    margins: '8 5 0 10'
                }), {
                    deferredRender: false,
                    region: 'center',
                    border: true,
                    html: responseText,
                    margins: '5 5 5 5',
                    autoScroll: true
                }],

                buttons: [{
                    text: 'Close',
                    handler: function () {
                        YZSoft._response_err_win.hide();
                    }
                }]
            });

            YZSoft._response_err_win.show();
        }
        else {
            YZSoft._response_err_win.setTitle(title);
            YZSoft._response_err_win.items.itemAt(0).update(msg);
            YZSoft._response_err_win.items.itemAt(1).body.update(responseText);
            YZSoft._response_err_win.show();
        }
    }
};

Ext.apply(Ext.Msg, {
    AddInputListener: function (mbox) {
        var dlg = mbox.getDialog();
        var textareaEl = Ext.get(dlg.body.dom.firstChild.childNodes[1].childNodes[2].childNodes[1]);
        var okbtn = dlg.buttons[0];
        okbtn.setDisabled(!textareaEl.dom.value.trim());

        var kup = function () {
            var value = textareaEl.dom.value;
            value = value.trim();
            okbtn.setDisabled(!value);
        };

        var hid = function () {
            okbtn.setDisabled(false);

            textareaEl.un('keyup', kup);
            dlg.un('hide', hid);
        };

        textareaEl.on('keyup', kup);
        dlg.on('beforehide', hid);
    },

    AlertFormValidtionFailMsg: function (msg) {
        msg = msg || RS.$('YZStrings.All_Form_ValidtionFail_Msg');
        Ext.Msg.show({
            title: RS.$('YZStrings.All_Form_ValidtionFail_Title'),
            msg: msg,
            buttons: Ext.Msg.OK,
            icon: Ext.MessageBox.WARNING
        });
    },

    AlertFormSubmitFailMsg: function (form, action, title, msg) {
        title = title || RS.$('YZStrings.All_Form_SubmitFail_Title');
        msg = msg || RS.$('YZStrings.All_Form_SubmitFail_Msg');

        switch (action.failureType) {
            case Ext.form.Action.CLIENT_INVALID:
                break;
            case Ext.form.Action.CONNECT_FAILURE:
                msg = RS.$('YZStrings.All_Form_Msg_CONNECT_FAILURE') + action.response.responseText;
                break;
            case Ext.form.Action.LOAD_FAILURE:
                break;
            case Ext.form.Action.SERVER_INVALID:
                break;
        }

        if (action && action.result && action.result.errorMessage)
            msg = msg + "<br/>" + RS.$('YZStrings.All_Reason') + "<br/>" + action.result.errorMessage;

        Ext.Msg.show({
            title: title,
            msg: msg,
            buttons: Ext.Msg.OK,
            icon: Ext.MessageBox.ERROR
        });
    },

    AlertFormLoadFailMsg: function (form, action, title, msg) {
        title = title || RS.$('YZStrings.All_Reason');
        msg = msg || RS.$('YZStrings.All_Form_LoadFail_Msg');

        switch (action.failureType) {
            case Ext.form.Action.CLIENT_INVALID:
                break;
            case Ext.form.Action.CONNECT_FAILURE:
                msg = RS.$('YZStrings.All_Form_Msg_CONNECT_FAILURE') + action.response.responseText;
                break;
            case Ext.form.Action.LOAD_FAILURE:
                break;
            case Ext.form.Action.SERVER_INVALID:
                break;
        }

        if (action && action.result && action.result.errorMessage)
            msg = msg + "<br/>" + RS.$('YZStrings.All_Reason') + "<br/>" + action.result.errorMessage;

        Ext.Msg.show({
            title: title,
            msg: msg,
            buttons: Ext.Msg.OK,
            icon: Ext.MessageBox.ERROR
        });
    }
});

function importJS(url){
    url = resolveUrl(url);
    YZSoft.IMPJS = YZSoft.IMPJS || {};
    
    if (YZSoft.IMPJS[url])
        return;
    
    var rv = {success:true};
    Ext.Ajax.request({
        method: 'GET',
        disableCaching: true,
        sync: true,
        url: url,
        
        success: function(response) {
            Error.LastError = null;
            var code = "try{" + response.responseText + "}catch(impjsexp){Error.LastError = impjsexp;}";
            if(response.responseText.length != 0)
            {
                if (window.execScript)
                    window.execScript(code);
                else
                    window.eval(code);
            }
            if (Error.LastError)
            {
                rv = {success:false,err:Error.LastError};
            }
            else
            {
                YZSoft.IMPJS[url] = true;
            }
        },
        
        failure: function(response) {
            var err = {
                type:'responseError',
                response:response,
                url:url,
                title:RS.$('YZStrings.All_LoadModule_Failed_Title'),
                message:String.format(RS.$('YZStrings.All_LoadModule_Failed_Msg'),url)
            };

            rv = {success:false,err:err};
        }
    });
    
    if (!rv.success){
        Error.url = url;
        YZSoft.Error.Throw(rv.err);
    }
}

YZSoft.util.pad = function (n) {
    return n < 10 ? "0" + n : n;
};

Date.prototype.toString = function () {
    //return this.format('Y-m-d H:i:s');以下代码效率更高
    var pad = YZSoft.util.pad;
    return this.getFullYear() + "-" +
                pad(this.getMonth() + 1) + "-" +
                pad(this.getDate()) + " " +
                pad(this.getHours()) + ":" +
                pad(this.getMinutes()) + ":" +
                pad(this.getSeconds());
};

Ext.util.JSON.encodeDate = function (o) {
    return '"' + o.toString() + '"';
};

Number.prototype.toFileSize=function(){
	var dw=["KB","MB","GB","TB"]
	var result=(this/1024).toFixed(2)+" "+dw[0]
	for(var i=0; i<dw.length; i++){
		var c=(this/Math.pow(1024,i+1)).toFixed(2)
		if(c<1)return result
		result=c+" "+dw[i]
	}
	return result
}

Ext.applyIf(String,{
    Equ:function(str1,str2){
        if (Ext.isString(str1) && Ext.isString(str2))            
            return ((str1||'').toLowerCase() == (str2||'').toLowerCase());
        else
            return str1 == str2;
    }
});

Ext.apply(Ext.form.VTypes, {
    daterange : function(val, field) {
        var date = field.parseDate(val);

        if(!date){
            return false;
        }

        if (field.startDateField){
            var start = Ext.getCmp(field.startDateField);
            if (!start.maxValue || start.maxValue.getTime() != date.getTime()) {
                start.setMaxValue(date);
                start.validate();
            }
        }
        else if (field.endDateField){
            var end = Ext.getCmp(field.endDateField);
            if (!end.minValue || end.minValue.getTime() != date.getTime()) {
                end.setMinValue(date);
                end.validate();
            }
        }
        return true;
    },
    
    password : function(val, field) {
        if (field.initialPassField) {
            var pwd = Ext.getCmp(field.initialPassField);
            return (val == pwd.getValue());
        }
        return true;
    },

    passwordText : RS.$('YZStrings.All_VType_Password_Err')
});

YZSoft.Utility = {
    isNumber:function (w) {
        if (Ext.isNumber(w))
            return true;
        
        if (!Ext.isString(w))
            return false;
            
        var l = w.length,d;
        
        for (var i = 0 ; i < l ; i++){
            if (!d && i>=15) //超过16位
                return false;

			var c = w.charCodeAt(i);
		
			
			if (c == 46) {
			    if (d){return false;}else{d = true;}
			}
			else if (c < 48 || c > 57)
			    return false;
        }
        return !(l==0 || (!d && l!=1 && w.charCodeAt(0)==48));
	},
	
	isString:function(w){	
        var l = w.length;
        var s = w.charAt(0);
        var e = w.charAt(l-1);
        return (s == e && (s == '\'' || s == '"'));
    }
};

YZSoft.HttpUtility = {
    HtmlEncode: function (str, returnToBR) {
        var rv = Ext.util.Format.htmlEncode(str);
        if (returnToBR && rv)
            rv = rv.replace(/(\r\n|\n\r|\n|\r)/g, '<br/>');
        return rv;
    },

    HtmlDecode: function (str) {
        return Ext.util.Format.htmlDecode(str);
    },

    JSEncode: function (str) {
        var rv = "";
        for (var i = 0; i < str.length; i++) {
            var c = str.charAt(i);
            switch (c) {
                case '\"':
                    rv += "\\\"";
                    break;
                case '\'':
                    rv += "\\\'";
                    break;
                case '\\':
                    rv += "\\\\";
                    break;
                case '\b':
                    rv += "\\b";
                    break;
                case '\f':
                    rv += "\\f";
                    break;
                case '\n':
                    rv += "\\n";
                    break;
                case '\r':
                    rv += "\\r";
                    break;
                case '\t':
                    rv += "\\t";
                    break;
                default:
                    rv += c;
            }
        }
        return rv;
    },

    InlineJSEncode: function (str) {
        return YZSoft.HttpUtility.JSEncode(YZSoft.HttpUtility.HtmlEncode(str));
    },

    ParseKeyValue: function (str, splitchar, lowercaseName) {
        str = str || '';
        splitchar = splitchar || '';
        var splen = splitchar.length;
        var idx = str.indexOf(splitchar);
        var rv = {};
        if (idx == -1) {
            rv.key = '';
            rv.value = (str || '').trim();
        }
        else {
            rv.key = (str.substring(0, idx) || '').trim();
            rv.value = str.substring(idx + splen).trim();
        }

        if (lowercaseName)
            rv.key = rv.key.toLowerCase();

        return rv;
    },

    AttrDecode: function (str) {
        if (!str || str.indexOf('&') == -1)
            return str;

        var chs = [];
        var count = str.length;
        for (var i = 0; i < count; i++) {
            var ch = str.charAt(i);
            if (ch == '&') {
                var index = str.indexOf('#', i);
                if (index != -1) {
                    var flag = str.substring(i + 1, index - i - 1).toLowerCase();
                    if (flag == 'amp') { chs.push("&"); i += 3; continue; }
                    if (flag == 'cln') { chs.push(":"); i += 3; continue; }
                    if (flag == 'sem') { chs.push(";"); i += 3; continue; }
                    if (flag == 'cma') { chs.push(","); i += 3; continue; }
                    if (flag == 'gt') { chs.push(">"); i += 2; continue; }
                }
            }

            chs.push(ch);
        }

        return chs.join('');
    }
}

YZSoft.Render = {
    GetUserDisplayName: function(account, displayName) {
        if (!displayName)
            return account;
        else
            return displayName + '(' + account + ')';
    },
    RenderString: function(value) {
        return YZSoft.HttpUtility.HtmlEncode(value);
    },
    RenderUserName:function(account,displayName){
        return YZSoft.HttpUtility.HtmlEncode(YZSoft.Render.GetUserDisplayName(account,displayName));
    },
    RenderHandlingTime: function(minutes) {
        if (minutes == -1)
            return RS.$('YZStrings.All_HandlingTime_NoCal');

        var h = Math.floor(minutes / 60);
        var m = minutes % 60;

        var rv = '';
        if (h)
            rv += h + RS.$('YZStrings.All_HandlingTime_UnitH');

        if (m)
            rv += m + RS.$('YZStrings.All_HandlingTime_UnitM');

        if (rv.length == 0)
            rv = RS.$('YZStrings.All_HandlingTime_LTOneM');

        return rv;
    }
};

Ext.ns('Ext.ux.form');
Ext.ux.form.FileUploadField = Ext.extend(Ext.form.TextField,  {
    buttonText: 'Browse...',
    buttonOnly: false,
    buttonOffset: 3,
    readOnly: true,
    autoSize: Ext.emptyFn,

    initComponent: function(){
        Ext.ux.form.FileUploadField.superclass.initComponent.call(this);

        this.addEvents(
            'fileselected'
        );
    },

    onRender : function(ct, position){
        Ext.ux.form.FileUploadField.superclass.onRender.call(this, ct, position);

        this.wrap = this.el.wrap({tag: this.wraptag||'div',cls:'x-form-field-wrap x-form-file-wrap'});
        this.el.addClass('x-form-file-text');
        this.el.dom.removeAttribute('name');
        this.createFileInput();

        var btnCfg = Ext.applyIf(this.buttonCfg || {}, {
            text: this.buttonText
        });
        this.button = new Ext.Button(Ext.apply(btnCfg, {
            renderTo: this.wrap,
            cls: 'x-form-file-btn' + (btnCfg.iconCls ? ' x-btn-icon' : '')
        }));

        if(this.buttonOnly){
            this.el.hide();
            this.wrap.setWidth(this.button.getEl().getWidth());
        }

        this.bindListeners();
        this.resizeEl = this.positionEl = this.wrap;
    },
    
    bindListeners: function(){
        this.fileInput.on({
            scope: this,
            mouseenter: function() {
                this.button.addClass(['x-btn-over','x-btn-focus'])
            },
            mouseleave: function(){
                this.button.removeClass(['x-btn-over','x-btn-focus','x-btn-click'])
            },
            mousedown: function(){
                this.button.addClass('x-btn-click')
            },
            mouseup: function(){
                this.button.removeClass(['x-btn-over','x-btn-focus','x-btn-click'])
            },
            change: function(){
                var v = this.fileInput.dom.value;
                this.setValue(v);
                this.fireEvent('fileselected', this, v);    
            }
        }); 
    },
    
    createFileInput : function() {
        this.fileInput = this.wrap.createChild({
            id: this.getFileInputId(),
            name: this.name||this.getId(),
            cls: 'x-form-file',
            tag: 'input',
            type: 'file',
            size: 1
        });
    },
    
    reset : function(){
        this.fileInput.remove();
        this.createFileInput();
        this.bindListeners();
        Ext.ux.form.FileUploadField.superclass.reset.call(this);
    },

    getFileInputId: function(){
        return this.id + '-file';
    },

    onResize : function(w, h){
        Ext.ux.form.FileUploadField.superclass.onResize.call(this, w, h);

        this.wrap.setWidth(w);

        if(!this.buttonOnly){
            var w = this.wrap.getWidth() - this.button.getEl().getWidth() - this.buttonOffset;
            this.el.setWidth(w);
        }
    },

    onDestroy: function(){
        Ext.ux.form.FileUploadField.superclass.onDestroy.call(this);
        Ext.destroy(this.fileInput, this.button, this.wrap);
    },
    
    onDisable: function(){
        Ext.ux.form.FileUploadField.superclass.onDisable.call(this);
        this.doDisable(true);
    },
    
    onEnable: function(){
        Ext.ux.form.FileUploadField.superclass.onEnable.call(this);
        this.doDisable(false);

    },
    
    doDisable: function(disabled){
        this.fileInput.dom.disabled = disabled;
        this.button.setDisabled(disabled);
    },

    preFocus : Ext.emptyFn,

    alignErrorIcon : function(){
        this.errorIcon.alignTo(this.wrap, 'tl-tr', [2, 0]);
    }
});

Ext.reg('fileuploadfield', Ext.ux.form.FileUploadField);
Ext.form.FileUploadField = Ext.ux.form.FileUploadField;

Ext.namespace("YZSoft.Data");
YZSoft.Data.JsonStore = Ext.extend(Ext.data.JsonStore,{
    constructor : function(){
        YZSoft.Data.JsonStore.superclass.constructor.apply(this, arguments);
　　    this.on('loadexception', function(store,nouse,response){
            var err = {
                type:'responseError',
                response:response,
                url:store.url,
                title:RS.$('YZStrings.All_JsonData_HttpFail_Title'),
                message:String.format(RS.$('YZStrings.All_JsonData_HttpFail_Msg'),store.url)
            };

            //如果扔出Error,则LoadMask不能消除
            YZSoft.Error.ShowHttpError(err);
　　    });
　　    this.on('load',function(store,r,o){
　　        if (o && o.params)
                this.cursor = o.params.start;
            else
                this.cursor = 0;
        });
    }
});

YZSoft.Data.JsonLoader = Ext.extend(Ext.util.Observable, {
    constructor : function(config){
        Ext.apply(this,config);
        YZSoft.Data.JsonLoader.superclass.constructor.call(this, config);
    },
    
    load:function(params){
        Ext.Ajax.request({
            method: 'GET',
            disableCaching: true,
            sync: true,
            url: this.url,
            params: this.params,
            scope:this,
            success: function(response) {
                this.json = Ext.util.JSON.decode(response.responseText);
                return this.json;
            }
        });
    }
});

Ext.override(Ext.Window, {
    base: {
        wclose: Ext.Window.prototype.close,
        wmaximize: Ext.Window.prototype.maximize
    },

    close: function () {
        this.restore();
        this.base.wclose.call(this);
    },

    maximize: function () {
        this.base.wmaximize.call(this);
        this.setPosition(document.body.scrollLeft, document.body.scrollTop);
    }
});


Ext.override(Ext.grid.GridView, {
    cellOverCls: 'x-grid3-cell-over',
    base: {
        onRowOver: Ext.grid.GridView.prototype.onRowOver,
        onRowOut: Ext.grid.GridView.prototype.onRowOut
    },

    onRowOver: function(e, target) {
        if (!this.grid.trackCell) {
            this.base.onRowOver.call(this, e, target);
            return;
        }

        var cell = this.findCell(target);
        if (cell)
            this.fly(cell).addClass(this.cellOverCls);
    },

    onRowOut: function(e, target) {
        if (!this.grid.trackCell) {
            this.base.onRowOut.call(this, e, target);
            return;
        }

        var cell = this.findCell(target);
        if (cell && !e.within(cell, true)) {
            this.fly(cell).removeClass(this.cellOverCls);
        }
    }
});

Ext.override(Ext.grid.GridPanel, {
    autoExpandMax: 5000,

    base: {
        initComponent: Ext.grid.GridPanel.prototype.initComponent
    },

    initComponent: function() {
        if (this.dynchk && (YZSoft.EnvSetting && YZSoft.EnvSetting.checkboxSelection)) {
            var sm = new Ext.grid.CheckboxSelectionModel();
            if (this.columns) {
                this.selModel = sm;
                this.columns = (new Array(sm)).concat(this.columns);
            }
        }

        this.base.initComponent.call(this);
    },

    MoveSelectionUp: function() {
        var sm = this.getSelectionModel();
        var store = this.getStore();
        if (sm && store) {
            for (var i = 1; i < store.getCount(); i++) {
                if (sm.isSelected(i)) {
                    var r = store.getAt(i);
                    store.removeAt(i);
                    store.insert(i - 1, r);

                    sm.selectRow(i - 1, true);
                }
            }
        }
    },

    MoveSelectionDown: function() {
        var sm = this.getSelectionModel();
        var store = this.getStore();
        if (sm && store) {
            for (var i = store.getCount() - 1; i >= 0; i--) {
                if (sm.isSelected(i)) {
                    var r = store.getAt(i);
                    store.removeAt(i);
                    store.insert(i + 1, r);

                    sm.selectRow(i + 1, true);
                }
            }
        }
    },

    CanEdit: function() {
        var sm = this.getSelectionModel();
        return (sm && sm.getCount() == 1);
    },

    CanDelete: function() {
        var sm = this.getSelectionModel();
        return (sm && sm.getCount() >= 1);
    },

    CanMoveUp: function() {
        var sm = this.getSelectionModel();
        return (sm && sm.getCount() >= 1 && !sm.isSelected(0));
    },

    CanMoveDown: function() {
        var sm = this.getSelectionModel();
        var store = this.getStore();
        return (sm && store && sm.getCount() >= 1 && !sm.isSelected(store.getCount() - 1));
    },

    getSelectionsIDList: function() {
        var ids = new Array();

        var sm = this.getSelectionModel();
        if (sm && sm.getSelected()) {
            var recs = sm.getSelections();
            for (var i = 0; i < recs.length; i++) {
                ids.push(recs[i].id);
            }
        }

        return ids;
    }
});

Ext.override(Ext.TabPanel, {
    banner: null, //{ html: 'htmlcode'}
    baseCls: 'yz-tab',

    base: {
        onRender: Ext.TabPanel.prototype.onRender,
        findTargets: Ext.TabPanel.prototype.findTargets,
        getTemplateArgs: Ext.TabPanel.prototype.getTemplateArgs,
        onItemTitleChanged: Ext.TabPanel.prototype.onItemTitleChanged,
        createScrollers: Ext.TabPanel.prototype.createScrollers,
        autoScrollTabs: Ext.TabPanel.prototype.autoScrollTabs
    },

    getTemplateArgs: function (item) {
        args = this.base.getTemplateArgs.call(this, item);
        if (!this.banner)
            return args;

        index = this.items.indexOf(item);
        if (index == 0)
            args.cls += ' yz-tab-first';

        return args;
    },

    findTargets: function (e) {
        if (!this.banner)
            return this.base.findTargets.call(this, e);

        var item = null,
            itemEl = e.getTarget('a', this.strip);

        if (itemEl) {
            item = this.getComponent(itemEl.id.split(this.idDelimiter)[1]);
            if (item.disabled) {
                return {
                    close: null,
                    item: null,
                    el: null
                };
            }
        }
        return {
            close: null,
            item: item,
            el: itemEl
        };
    },

    onRender: function (ct, position) {
        if (!this.banner)
            return this.base.onRender.call(this, ct, position);

        Ext.TabPanel.superclass.onRender.call(this, ct, position);

        this["header"].addClass('yz-tab-header-plain');

        var st = this[this.stripTarget];

        st.createChild({ cls: 'yz-tab-banner', html: this.banner.html });
        this.cnt = st.createChild({ cls: 'yz-tab-header-cnt' });
        this.stripWrap = this.cnt.createChild({ cls: 'yz-tab-div-wrap', cn: { tag: 'div', cls: 'yz-tab-div'} });

        var beforeEl = (this.tabPosition == 'bottom' ? this.stripWrap : null);
        st.createChild({ cls: 'yz-tab-spacer' }, beforeEl);
        this.strip = new Ext.Element(this.stripWrap.dom.firstChild);
        this.edge = this.strip.createChild({ cls: 'x-clear', cnt: 's' }); // this.strip.createChild({ tag: 'li', cls: 'x-tab-edge111', cn: [{ tag: 'span', cls: 'x-tab-strip-text', cn: '&#160;'}] });
        this.strip.createChild({ cls: 'x-clear' });

        this.body.addClass('x-tab-panel-body-' + this.tabPosition);

        if (!this.yzitemTpl) {
            var tt = new Ext.Template(
                 '<a class="{cls}" id="{id}"><div class="lft"></div>',
                 '<span class="x-tab-strip-text {iconCls}"><div class="rgt"></div>{text}</span>',
                 '</a>'
            );
            tt.disableFormats = true;
            tt.compile();
            Ext.TabPanel.prototype.yzitemTpl = tt;
        }
        this.itemTpl = this.yzitemTpl;

        this.items.each(this.initTab, this);
    },

    onItemTitleChanged: function (item) {
        if (!this.banner)
            return this.base.onItemTitleChanged.call(this, item);

        var el = this.getTabEl(item);
        if (el) {
            Ext.fly(el).child('span.x-tab-strip-text', true).innerHTML = '<div class="rgt"></div>' + item.title;
        }
    },

    createScrollers: function () {
        if (!this.banner)
            return this.base.createScrollers.call(this);

        this.pos.addClass('x-tab-scrolling-' + this.tabPosition);
        //var h = this.stripWrap.dom.offsetHeight;

        var sl = this.cnt.insertFirst({
            cls: 'x-tab-scroller-left'
        });
        //sl.setHeight(h);
        sl.addClassOnOver('x-tab-scroller-left-over');
        this.leftRepeater = new Ext.util.ClickRepeater(sl, {
            interval: this.scrollRepeatInterval,
            handler: this.onScrollLeft,
            scope: this
        });
        this.scrollLeft = sl;

        var sr = this.cnt.insertFirst({
            cls: 'x-tab-scroller-right'
        });
        //sr.setHeight(h);
        sr.addClassOnOver('x-tab-scroller-right-over');
        this.rightRepeater = new Ext.util.ClickRepeater(sr, {
            interval: this.scrollRepeatInterval,
            handler: this.onScrollRight,
            scope: this
        });
        this.scrollRight = sr;
    },

    autoScrollTabs: function () {
        if (!this.banner)
            return this.base.autoScrollTabs.call(this);

        this.pos = this.tabPosition == 'bottom' ? this.footer : this.cnt;
        var count = this.items.length,
            ow = this.pos.dom.offsetWidth,
            tw = this.pos.dom.clientWidth,
            wrap = this.stripWrap,
            wd = wrap.dom,
            cw = wd.offsetWidth,
            pos = this.getScrollPos(),
            l = this.edge.getOffsetsTo(this.stripWrap)[0] + pos;

        if (!this.enableTabScroll || cw < 20) {
            return;
        }
        if (count == 0 || l <= tw) {
            wd.scrollLeft = 0;
            wrap.setWidth(tw);
            if (this.scrolling) {
                this.scrolling = false;
                this.pos.removeClass('x-tab-scrolling');
                this.scrollLeft.hide();
                this.scrollRight.hide();

                if (Ext.isAir || Ext.isWebKit) {
                    wd.style.marginLeft = '';
                    wd.style.marginRight = '';
                }
            }
        } else {
            if (!this.scrolling) {
                this.pos.addClass('x-tab-scrolling');

                if (Ext.isAir || Ext.isWebKit) {
                    wd.style.marginLeft = '18px';
                    wd.style.marginRight = '18px';
                }
            }
            tw -= wrap.getMargins('lr');
            wrap.setWidth(tw > 20 ? tw : 20);
            if (!this.scrolling) {
                if (!this.scrollLeft) {
                    this.createScrollers();
                } else {
                    this.scrollLeft.show();
                    this.scrollRight.show();
                }
            }
            this.scrolling = true;
            if (pos > (l - tw)) {
                wd.scrollLeft = l - tw;
            } else {
                this.scrollToTab(this.activeTab, false);
            }
            this.updateScrollButtons();
        }
    }
});

Ext.namespace("YZSoft.Form");
YZSoft.Form.SearchField = Ext.extend(Ext.form.TwinTriggerField, {
    constructor: function (config) {
        if (config.buttonOnly)
            config.defaultAutoCreate = {};

        var cfg = {
            validationEvent: false,
            validateOnBlur: false,
            trigger1Class: 'x-form-clear-trigger',
            trigger2Class: 'x-form-search-trigger',
            hideTrigger1: true,
            hideTrigger3: true,
            width: 180,
            hasSearch: false,
            emptySearch: false,
            paramName: 'Keyword',
            selectOnFocus: true
        };
        if (config.showAdvButton) {
            cfg.trigger2Class = 'x-form-advsearch-trigger-search';
            cfg.trigger3Class = 'x-form-advsearch-trigger-adv';
            cfg.hideTrigger3 = false;
        }

        Ext.apply(cfg, config);
        YZSoft.Form.SearchField.superclass.constructor.call(this, cfg);
    },

    setValue: function (v) {
        if (this.store)
            this.store.baseParams[this.paramName] = v;

        return YZSoft.Form.SearchField.superclass.setValue.call(this, v);
    },

    initComponent: function () {

        YZSoft.Form.SearchField.superclass.initComponent.call(this);

        this.triggerConfig = {
            tag: 'span', cls: 'x-form-twin-triggers', cn: [
            { tag: "img", src: Ext.BLANK_IMAGE_URL, alt: "", cls: "x-form-trigger " + this.trigger1Class },
            { tag: "img", src: Ext.BLANK_IMAGE_URL, alt: "", cls: "x-form-trigger " + this.trigger2Class },
            { tag: "img", src: Ext.BLANK_IMAGE_URL, alt: "", cls: "x-form-trigger " + this.trigger3Class}]
        };

        this.on('specialkey', function (f, e) {
            if (e.getKey() == e.ENTER) {
                this.onTrigger2Click();
            }
        }, this);

        if (this.store)
            this.bindStore(this.store);
    },

    onResize: function (w, h) {
        Ext.form.TriggerField.superclass.onResize.call(this, w, h);
        if (this.buttonOnly) {
            this.wrap.setWidth(this.defaultTriggerWidth * (this.showAdvButton ? 2 : 1));
        }
        else {
            var tw = this.getTriggerWidth();
            if (Ext.isNumber(w))
                this.el.setWidth(w - tw);
            this.wrap.setWidth(this.el.getWidth() + tw);
        }
    },

    bindStore: function (store) {
        this.store = store;
        this.store.on('beforeload', this.beforeLoad, this);
    },

    beforeLoad: function () {
        if (!this.triggers || this.triggers.length < 3)
            return;

        var iv = this.getRawValue();
        var pv = this.store.baseParams[this.paramName] || '';

        if (iv != pv && this.el && this.el.dom) {
            this.hasFocus = false;
            this.setValue(pv);
            iv = pv;
        }

        var t0 = this.triggers[0];
        if (this.showAdvButton) {
            if (t0.isVisible())
                t0.hide();
        }
        else {
            if (Ext.isEmpty(iv)) {
                if (t0.isVisible())
                    t0.hide();
            }
            else {
                if (!t0.isVisible())
                    t0.show();
            }
        }
    },

    onTrigger1Click: function () {
        if (this.disabled)
            return;

        if (Ext.isEmpty(this.getRawValue()))
            return;

        var o = { start: 0 };
        this.store.baseParams = this.store.baseParams || {};
        this.store.baseParams[this.paramName] = '';
        this.store.baseParams['SearchType'] = '';
        this.store.reload({ params: o });
    },

    onTrigger2Click: function () {
        if (this.disabled)
            return;

        var v = this.getRawValue();
        var o = { start: 0 };
        this.store.baseParams = this.store.baseParams || {};
        this.store.baseParams[this.paramName] = v;
        this.store.baseParams['SearchType'] = 'QuickSearch';
        this.store.reload({ params: o });
    },

    onTrigger3Click: function () {
        if (this.disabled)
            return;

        if (this.handler)
            this.handler.call(this.scope || this, this.triggers[2]);
    }
});
Ext.reg('YZSearchField', YZSoft.Form.SearchField);

YZSoft.Form.UserField = Ext.extend(Ext.form.TriggerField, {
    triggerClass: 'x-form-seluser-trigger',
    allowBlank: true,

    constructor: function (config) {
        this.addEvents('select');
        YZSoft.Form.UserField.superclass.constructor.call(this, config);
    },

    onTriggerClick: function () {
        if (this.disabled)
            return;

        YZSoft.BPM.Dialogs.ShowSelUserDlg({
            singleSelect: true,
            owner: this,
            fn: function (owner, users) {
                if (users.length == 0)
                    return;

                var user = users[0];
                owner.onSelect(user);
            }
        });
    },

    onSelect: function (v) {
        this.setValue(v.Account);
        this.fireEvent('select', this, v.Account, v);
    }
});
Ext.reg('YZUserField', YZSoft.Form.UserField);

YZSoft.Form.DataBrowserField = Ext.extend(Ext.form.TriggerField, {
    triggerClass:'x-form-seluser-trigger',
    allowBlank: true,
        
    constructor: function(config) {
        YZSoft.Form.UserField.superclass.constructor.call(this, config);
    },

    onTriggerClick:function(){    
        if (this.disabled)
            return;

        if (!this.columnInfos && this.param.valueColumn)
            this.columnInfos = this.param.valueColumn+':y';
            
        YZSoft.BPM.Dialogs.ShowDataBrowserDlg({
            title: RS.$('YZStrings.BPMDlg_BrowserButton_JSDlg_Title'),
            singleSelect:true,
            owner:this,
            param:this.param,
            columnInfos:this.columnInfos,
            fn:function(owner,rows){
                if (rows.length == 0)
                    return;

                if (this.param.valueColumn){
                    var row = rows[0];
                    owner.setValue(row[this.param.valueColumn]);
                }
            }
        });
    }
});
Ext.reg('YZDataBrowserField', YZSoft.Form.DataBrowserField);


YZSoft.Form.YZYearField = Ext.extend(Ext.form.SpinnerField,{
    minValue: 1753,
    maxValue: 9999,
    allowDecimals: false, 
    value:2011,
    width: 60,
    
    constructor : function(config){
        config = config || {};
        if (!config.value){
            var curDate = new Date();
            var curYear = curDate.getFullYear();
            config.value = curYear;
        }

        YZSoft.Form.YZYearField.superclass.constructor.call(this, config);
    }
});
Ext.reg('yzyearfield', YZSoft.Form.YZYearField);

YZSoft.Form.YZMonthComboBox = Ext.extend(Ext.form.ComboBox, {
    mode: 'local',
    editable: false,
    forceSelection: true,
    triggerAction: 'all',
    width: 80,

    constructor: function(config) {
        config = config || {};

        if (!config.store) {
           var monthStore = new Ext.data.JsonStore({
                fields: ['name', 'value'],
                data: [
                    { name: RS.$('YZStrings.All_Month1'), value: 01 },
                    { name: RS.$('YZStrings.All_Month2'), value: 02 },
                    { name: RS.$('YZStrings.All_Month3'), value: 03 },
                    { name: RS.$('YZStrings.All_Month4'), value: 04 },
                    { name: RS.$('YZStrings.All_Month5'), value: 05 },
                    { name: RS.$('YZStrings.All_Month6'), value: 06 },
                    { name: RS.$('YZStrings.All_Month7'), value: 07 },
                    { name: RS.$('YZStrings.All_Month8'), value: 08 },
                    { name: RS.$('YZStrings.All_Month9'), value: 09 },
                    { name: RS.$('YZStrings.All_Month10'), value: 10 },
                    { name: RS.$('YZStrings.All_Month11'), value: 11 },
                    { name: RS.$('YZStrings.All_Month12'), value: 12}]
            });

            config.store = monthStore;
            config.displayField = 'name';
            config.valueField = 'value';
        }

        if (!config.value) {
            var curDate = new Date();
            var curMonth = curDate.getMonth()+1;
            config.value = curMonth;
        }

        YZSoft.Form.YZMonthComboBox.superclass.constructor.call(this, config);
    }
});
Ext.reg('yzmonthcombobox', YZSoft.Form.YZMonthComboBox);


YZSoft.Form.PeriodPicker = Ext.extend(Ext.form.CompositeField, {
    defaultMargins: '0 2 0 0',
    MonthOffset: 0,
    MonthDay: 1,
    constructor: function (config) {
        this.idPeriodType = Ext.id();
        this.idYear = Ext.id();
        this.idQuator = Ext.id();
        this.idMonth = Ext.id();
        this.idDate = Ext.id();
        this.idDateSt = Ext.id();
        this.idDateEnd = Ext.id();

        var curDate = new Date();
        curDate.clearTime();
        var curYear = curDate.getFullYear();
        var curMonth = curDate.getMonth();
        var curQuator = Math.floor(curMonth / 3);

        var a = {
            all: RS.$('YZStrings.All_PeriodType_All'),
            month: RS.$('YZStrings.All_PeriodType_Month'),
            quator: RS.$('YZStrings.All_PeriodType_Quator'),
            year: RS.$('YZStrings.All_PeriodType_Year'),
            day: RS.$('YZStrings.All_PeriodType_Day'),
            period: RS.$('YZStrings.All_PeriodType_Period')
        };

        var ts = config.types || ['all', 'month', 'quator', 'year', 'day', 'period'];
        var b = [];
        for (var i = 0; i < ts.length; i++) {
            var type = ts[i];
            var itm = a[type];
            if (itm)
                b.push({ name: itm, value: type });
        }

        config.value = config.value || {};
        config.value.Type = config.value.Type || b[0].value;
        config.value.Year = config.value.Year || curYear;
        config.value.Quator = config.value.Quator || curQuator;
        config.value.Month = config.value.Month || curMonth;
        config.value.Date = config.value.Date || curDate;
        config.value.Date1 = config.value.Date1 || curDate;
        config.value.Date2 = config.value.Date2 || curDate;

        var periodTypeStore = new Ext.data.JsonStore({
            fields: ['name', 'value'],
            data: b
        });

        var quatorStore = new Ext.data.JsonStore({
            fields: ['name', 'value'],
            data: [
                { name: RS.$('YZStrings.All_Quator1'), value: 0 },
                { name: RS.$('YZStrings.All_Quator2'), value: 1 },
                { name: RS.$('YZStrings.All_Quator3'), value: 2 },
                { name: RS.$('YZStrings.All_Quator4'), value: 3}]
        });

        var monthStore = new Ext.data.JsonStore({
            fields: ['name', 'value'],
            data: [
                { name: RS.$('YZStrings.All_Month1'), value: 0 },
                { name: RS.$('YZStrings.All_Month2'), value: 1 },
                { name: RS.$('YZStrings.All_Month3'), value: 2 },
                { name: RS.$('YZStrings.All_Month4'), value: 3 },
                { name: RS.$('YZStrings.All_Month5'), value: 4 },
                { name: RS.$('YZStrings.All_Month6'), value: 5 },
                { name: RS.$('YZStrings.All_Month7'), value: 6 },
                { name: RS.$('YZStrings.All_Month8'), value: 7 },
                { name: RS.$('YZStrings.All_Month9'), value: 8 },
                { name: RS.$('YZStrings.All_Month10'), value: 9 },
                { name: RS.$('YZStrings.All_Month11'), value: 10 },
                { name: RS.$('YZStrings.All_Month12'), value: 11}]
        });

        var cfg = {
            items: [
                { xtype: 'combo', id: this.idPeriodType, mode: 'local', store: periodTypeStore, displayField: 'name', valueField: 'value', value: config.value.Type, editable: false, forceSelection: true, triggerAction: 'all', width: 80, hidden: b.length == 1 && config.showType !== true, listeners: { scope: this, select: this.dateTypeChanged} },
                { xtype: 'spinnerfield', id: this.idYear, hidden: true, minValue: 1753, maxValue: 9999, allowDecimals: false, value: config.value.Year, width: 60 },
                { xtype: 'combo', id: this.idQuator, hidden: true, mode: 'local', store: quatorStore, displayField: 'name', valueField: 'value', value: config.value.Quator, editable: false, forceSelection: true, triggerAction: 'all', width: 80 },
                { xtype: 'combo', id: this.idMonth, hidden: true, mode: 'local', store: monthStore, displayField: 'name', valueField: 'value', value: config.value.Month, editable: false, forceSelection: true, triggerAction: 'all', width: 80 },
                { xtype: 'datefield', id: this.idDate, hidden: true, width: 100, editable: false, value: config.value.Date, format: 'Y-m-d', allowBlank: true },
                { xtype: 'datefield', id: this.idDateSt, hidden: true, width: 100, editable: false, value: config.value.Date1, format: 'Y-m-d', vtype: 'daterange', endDateField: this.idDateEnd, allowBlank: true },
                { xtype: 'datefield', id: this.idDateEnd, hidden: true, width: 100, editable: false, value: config.value.Date2, format: 'Y-m-d', vtype: 'daterange', startDateField: this.idDateSt, allowBlank: true }
            ]
        };

        if (config.updateButton) {
            if (!config.updateButton.width)
                config.updateButton.width = 80;
            cfg.items.push(config.updateButton)
        }

        Ext.apply(cfg, config);
        YZSoft.Form.PeriodPicker.superclass.constructor.call(this, cfg);
    },

    initComponent: function () {
        YZSoft.Form.PeriodPicker.superclass.initComponent.call(this);
        this.dateTypeChanged();
    },

    dateTypeChanged: function () {
        var type = Ext.getCmp(this.idPeriodType).getValue();
        var y = Ext.getCmp(this.idYear);
        var q = Ext.getCmp(this.idQuator);
        var m = Ext.getCmp(this.idMonth);
        var d = Ext.getCmp(this.idDate);
        var d1 = Ext.getCmp(this.idDateSt);
        var d2 = Ext.getCmp(this.idDateEnd);

        if (type == 'month') {
            y.show();
            q.hide();
            m.show();
            d.hide();
            d1.hide();
            d2.hide();
        }
        else if (type == 'quator') {
            y.show();
            q.show();
            m.hide();
            d.hide();
            d1.hide();
            d2.hide();
        }
        else if (type == 'year') {
            y.show();
            q.hide();
            m.hide();
            d.hide();
            d1.hide();
            d2.hide();
        }
        else if (type == 'day') {
            y.hide();
            q.hide();
            m.hide();
            d.show();
            d1.hide();
            d2.hide();
        }
        else if (type == 'period') {
            y.hide();
            q.hide();
            m.hide();
            d.hide();
            d1.show();
            d2.show();
        }
        else {
            y.hide();
            q.hide();
            m.hide();
            d.hide();
            d1.hide();
            d2.hide();
        }

        var w = 0;

        for (var i = 0; i < this.innerCt.items.items.length; i++) {
            var itm = this.innerCt.items.items[i];
            if (!itm.hidden)
                w += itm.width + 2;
        }
        this.setWidth(w - 2);

        if (this.ownerCt)
            this.ownerCt.doLayout(false);
    },

    setYear: function (v) {
        if (!v)
            return;

        var y = Ext.getCmp(this.idYear);
        var d = Ext.getCmp(this.idDate);
        var d1 = Ext.getCmp(this.idDateSt);
        var d2 = Ext.getCmp(this.idDateEnd);
        var t;

        //        var minDate = new Date(v, 0, 1, 0, 0, 0);
        //        var maxDate = new Date(v, 11, 31, 0, 0, 0);
        //        y.setDisabled(true);
        //        d1.setMinValue(minDate);
        //        d1.setMaxValue(maxDate);
        //        d2.setMinValue(minDate);
        //        d2.setMaxValue(maxDate);

        y.setValue(v);

        t = d.getValue();
        t.setFullYear(v);
        d.setValue(t);

        t = d1.getValue();
        t.setFullYear(v);
        d1.setValue(t);

        t = d2.getValue();
        t.setFullYear(v);
        d2.setValue(t);
    },

    setPeriod: function (v) {
        var t = Ext.getCmp(this.idPeriodType);
        var y = Ext.getCmp(this.idYear);
        var q = Ext.getCmp(this.idQuator);
        var m = Ext.getCmp(this.idMonth);
        var d = Ext.getCmp(this.idDate);
        var d1 = Ext.getCmp(this.idDateSt);
        var d2 = Ext.getCmp(this.idDateEnd);

        t.setValue(v.Type);
        y.setValue(v.Year);
        q.setValue(v.Quator);
        m.setValue(v.Month);
        d.setValue(v.Date);
        d1.setValue(v.Date1);
        d2.setValue(v.Date2);

        this.dateTypeChanged();
    },

    getPeriod: function () {
        var t = Ext.getCmp(this.idPeriodType);
        var y = Ext.getCmp(this.idYear);
        var q = Ext.getCmp(this.idQuator);
        var m = Ext.getCmp(this.idMonth);
        var d = Ext.getCmp(this.idDate);
        var d1 = Ext.getCmp(this.idDateSt);
        var d2 = Ext.getCmp(this.idDateEnd);

        var rv = {};

        rv.Define = {
            Type: t.getValue(),
            Year: y.getValue(),
            Quator: q.getValue(),
            Month: m.getValue(),
            Date: d.getValue(),
            Date1: d1.getValue(),
            Date2: d2.getValue()
        };

        rv.RawValue = { Type: rv.Define.Type };

        if (rv.Define.Type == 'all') {
            rv.PeriodType = 'all';
        }
        else if (rv.Define.Type == 'day') {
            rv.PeriodType = 'day';
            rv.RawValue.Date = rv.Date1 = rv.Define.Date;
            rv.Date2 = rv.Date1.add(Date.DAY, 1);
        }
        else if (rv.Define.Type == 'period') {
            rv.PeriodType = 'period';
            rv.RawValue.Date1 = rv.Date1 = rv.Define.Date1;
            rv.RawValue.Date2 = rv.Date2 = rv.Define.Date2.add(Date.DAY, 1);
        }
        else {
            rv.PeriodType = 'period';
            rv.RawValue.Year = rv.Define.Year;

            var baseDate = new Date(rv.Define.Year, this.MonthOffset, this.MonthDay, 0, 0, 0);
            if (rv.Define.Type == 'month') {
                rv.Date1 = baseDate.add(Date.MONTH, rv.Define.Month);
                rv.Date2 = rv.Date1.add(Date.MONTH, 1);
                rv.RawValue.Month = rv.Define.Month;
            }
            else if (rv.Define.Type == 'quator') {
                rv.Date1 = baseDate.add(Date.MONTH, rv.Define.Quator * 3);
                rv.Date2 = rv.Date1.add(Date.MONTH, 3);
                rv.RawValue.Quator = rv.Define.Quator;
            }
            else {
                rv.Date1 = baseDate;
                rv.Date2 = rv.Date1.add(Date.YEAR, 1);
            }
        }

        return rv;
    }
});
Ext.reg('YZPeriodPicker', YZSoft.Form.PeriodPicker);


YZSoft.Dialogs = {
    ShowSelFileDlg:function(filter){
    }
};

YZSoft.ViewManager = {
    NewWindow:function(config){
        var moduleId = config.moduleId;
        var tabPanel = config.tabPanel;
        var moduleUrl = config.moduleUrl;
        var realId = config.realId || moduleId;
        var moduleParams = config.moduleParams || {};
        moduleParams.moduleId = moduleId;
        var newCmp;

        YZSoft.MDS = YZSoft.MDS || {};
        
        if (tabPanel.findById(realId)){
            tabPanel.findById(realId).show();
            if (config.existCallBack)
                config.existCallBack(tabPanel.findById(realId));

            return;
        }
        
        if (YZSoft.MDS[moduleUrl])
        {
            tabPanel.el.mask(RS.$('YZStrings.All_Loading'),'x-mask-loading');

            setTimeout(function(){
                try{
                    var module = YZSoft.MDS[moduleUrl];
                    var moduleInstance;
                    try{
                        moduleInstance = new module(moduleParams);
                        moduleInstance.on('afterrender',function(){tabPanel.el.unmask()});
                    }
                    catch(exp){
                        Error.url = moduleUrl;
                        throw exp;
                    }

                    moduleInstance.closable = true;
                    moduleInstance.id = moduleId;
                    newCmp = tabPanel.add(moduleInstance);
                    tabPanel.doLayout();
                    tabPanel.setActiveTab(newCmp);
                }
                catch(exp){
                    tabPanel.el.unmask();
                    throw exp;
                }
            }, 10);
            
            return;
        }
        
        tabPanel.el.mask(RS.$('YZStrings.All_Loading'),'x-mask-loading');
        Ext.Ajax.request({
            method: 'GET',
            disableCaching: true,
            //utf-8 编码
            url: moduleUrl,
            success: function(response) {
                try
                {
                    var module;
                    var moduleInstance;
                    try
                    {
                        module = eval(response.responseText);
                        YZSoft.MDS[moduleUrl] = module;
                        moduleInstance = new module(moduleParams);
                        moduleInstance.on('afterrender',function(){tabPanel.el.unmask()});
                    }
                    catch(exp)
                    {
                        Error.url = moduleUrl;
                        throw exp;
                    }
                    moduleInstance.closable = true;
                    moduleInstance.id = moduleId;
                    newCmp = tabPanel.add(moduleInstance);
                    tabPanel.doLayout();
                    tabPanel.setActiveTab(newCmp);
                }
                catch(exp)
                {
                    tabPanel.el.unmask();
                    
                    if (newCmp)
                        YZSoft.frame.mainTab.remove(newCmp);
                        
                    throw exp;
                }
            },
            failure: function(response) {
                tabPanel.el.unmask();
                
                var err = {
                    type:'responseError',
                    response:response,
                    url:moduleUrl,
                    title:RS.$('YZStrings.All_LoadModule_HttpFail_Title'),
                    message:String.format(RS.$('YZStrings.All_LoadModule_HttpFail_Msg'),moduleUrl)
                };
                YZSoft.Error.Throw(err);
            }
        });
    },
    
    AddWindow:function(moduleUrl,config){
        var cfg = {
            moduleId:moduleUrl,
            tabPanel:YZSoft.frame.mainTab,
            moduleUrl:moduleUrl
        }
        
        Ext.apply(cfg,config);
        
        YZSoft.ViewManager.NewWindow(cfg);
    },
    
    NewIFrameWindow:function(id,url,params,config){
        var newCmp;
        var idframe = Ext.id();
        
        params = params || {};
        config = config || {};

        try
        {
            var tab = YZSoft.frame.mainTab;
            
            if (tab.findById(id))
            {
                tab.findById(id).show();
                return;
            }
            
            url = Ext.urlAppend(url,Ext.urlEncode(params));
            
            var cfg = {
                id:id,
                border:false,
                html:'<iframe id="'+idframe+'" src="'+url+'" frameborder="0" width="100%" height="100%"></iframe>'
            };
            
            Ext.apply(cfg,config);
            
            panel = new Ext.Panel(cfg);
            
            panel.closable = true;
            newCmp = tab.add(panel);
            tab.doLayout();
            tab.setActiveTab(newCmp);

            document.getElementById(idframe).topContainer = panel;
            panel.closeContainer = function(result) {
                Ext.apply(panel,result);
                panel.fireEvent('close',panel);
                YZSoft.frame.mainTab.remove(panel);
            };

            return panel;
        }
        catch(exp)
        {
            if (newCmp)
                YZSoft.frame.mainTab.remove(newCmp);
            
            throw(exp);    
        }
    },
    
    CloseIFromeWindow:function(win){
        if (win.frameElement)
            YZSoft.frame.mainTab.remove(YZSoft.frame.mainTab.getActiveTab());
    }
};

YZSoft.DialogManager = {
    INS: {},
    MDS: {},
    WINS: {},

    OnDialogClose: function (instanceId) {
        var instance = YZSoft.DialogManager.INS[instanceId];
        if (instance) {
            YZSoft.DialogManager.INS[instanceId] = null;
            //            if (instance.closefn)
            //                instance.closefn();
        }
    },

    OnDialogHide: function (instanceId) {
        var instance = YZSoft.DialogManager.INS[instanceId];
        if (instance) {
            //            if (instance.closefn)
            //                instance.closefn();
        }
    },

    ShowDialogExt: function (instanceId, moduleUrl, moduleConfig, instanceConfig) {
        moduleUrl = resolveUrl(moduleUrl);

        var moduleId = moduleUrl;
        moduleConfig = moduleConfig || {};
        instanceConfig = instanceConfig || {};

        if (YZSoft.DialogManager.INS[instanceId]) {
            var instance = YZSoft.DialogManager.INS[instanceId];
            Ext.apply(instance, moduleConfig);
            instance.config = instanceConfig;
            instance.show(YZSoft.EnvSetting.dlgAnimate ? instanceConfig.owner : null);
            return;
        }

        if (YZSoft.DialogManager.MDS[moduleUrl]) {
            var module = YZSoft.DialogManager.MDS[moduleUrl];

            var instance;
            try {
                instance = new module(moduleConfig);
            }
            catch (exp) {
                Error.url = moduleUrl;
                throw exp;
            }

            instance.id = instanceId;
            instance.config = instanceConfig;
            YZSoft.DialogManager.INS[instanceId] = instance;
            instance.show(YZSoft.EnvSetting.dlgAnimate ? instanceConfig.owner : null);
            instance.on('close', function () { YZSoft.DialogManager.OnDialogClose(instanceId) });
            instance.on('hide', function () { YZSoft.DialogManager.OnDialogHide(instanceId) });
            return;
        }
        Ext.Ajax.request({
            method: 'GET',
            disableCaching: true,
            //utf-8 编码
            url: moduleUrl,
            success: function (response) {
                var module;
                var instance;
                try {
                    module = eval(response.responseText);
                    YZSoft.DialogManager.MDS[moduleId] = module;
                    instance = new module(moduleConfig);
                }
                catch (exp) {
                    Error.url = moduleUrl;
                    throw exp;
                }

                instance.id = instanceId;
                instance.config = instanceConfig;
                YZSoft.DialogManager.INS[instanceId] = instance;
                instance.show(YZSoft.EnvSetting.dlgAnimate ? instanceConfig.owner : null);
                instance.on('close', function () { YZSoft.DialogManager.OnDialogClose(instanceId) });
                instance.on('hide', function () { YZSoft.DialogManager.OnDialogHide(instanceId) });
            },
            failure: function (response) {
                var err = {
                    type: 'responseError',
                    response: response,
                    url: moduleUrl,
                    title: RS.$('YZStrings.All_LoadModule_HttpFail_Title'),
                    message: String.format(RS.$('YZStrings.All_LoadModule_HttpFail_Msg'), moduleUrl)
                };

                YZSoft.Error.Throw(err);
            }
        });
    },

    FindDialog: function (instanceId) {
        return YZSoft.DialogManager.INS[instanceId];
    },

    CloseDialog: function (instanceId, fn) {
        var instance = YZSoft.DialogManager.FindDialog(instanceId);
        if (instance) {
            if (instance.closeAction == 'hide')
                instance.hide();
            else
                instance.close();

            if (fn)
                fn.call(instance);
        }
    },

    ShowIFrameDialog: function (id, url, params, config) {
        var dlg = Ext.getCmp(id);
        if (dlg) {
            dlg.focus();
            return dlg;
        }

        var idframe = Ext.id();

        params = params || {};
        config = config || {};

        url = Ext.urlAppend(resolveUrl(url), Ext.urlEncode(params));

        panel = new Ext.Panel({
            region: 'center',
            border: false,
            //html: '<iframe id="' + idframe + '" frameborder="0" width="100%" height="100%"></iframe>'
            html: '<iframe id="' + idframe + '" src="' + url + '" frameborder="0" width="100%" height="100%"></iframe>'
        });

        var cfg = {
            id: id,
            layout: 'border',
            maximizable: true,
            width: 764,
            height: 533,
            minWidth: 764,
            minHeight: 533,
            closeAction: 'close',
            plain: false,
            modal: false,
            bodyStyle: 'padding:15px;',
            buttonAlign: 'center',
            items: [panel]
        };

        Ext.apply(cfg, config);
        cfg.minWidth = Math.min(cfg.minWidth, cfg.width);
        cfg.minHeight = Math.min(cfg.minHeight, cfg.height);

        dlg = new Ext.Window(cfg);
        dlg.show();

        document.getElementById(idframe).topContainer = dlg;
        dlg.closeContainer = function (result) {
            Ext.apply(dlg, result);
            dlg.close();
        };

        return dlg;
    },

    ShowModalDialog: function (id, url, params, config) {
        params = params || {};
        config = config || {};
        url = Ext.urlAppend(resolveUrl(url), Ext.urlEncode(params));

        //使用iframe,用了iframe还是没右键菜单，故不用
        //url = Ext.urlAppend(resolveUrl('YZSoft/Frame/Assist/DialogAssist.aspx'),Ext.urlEncode({url:'~/'+url}));
        //alert(url);

        var dlgParams = new Array();
        dlgParams.push('dialogWidth=' + (config.width || '764') + 'px');
        dlgParams.push('dialogHeight=' + (config.height || '533') + 'px');
        dlgParams.push('center=' + (config.center || 'yes'));
        dlgParams.push('help=' + (config.help || 'no'));
        dlgParams.push('resizable=' + (config.resizable || 'yes'));
        dlgParams.push('status=' + (config.status || 'no'));
        dlgParams.push('scroll=' + (config.scroll || 'yes'));
        dlgParams.push('Minimize=' + (config.Minimize || 'yes'));
        dlgParams.push('Maximize=' + (config.Maximize || 'yes'));

        //模式对话框


        var dialogArguments = {
            dlgtype: 'modal',
            parentWindow: window
        };
        var rv = window.showModalDialog(url, dialogArguments, dlgParams.join(';'));
        rv = rv || { dialogResult: 'cancel', returnValue: {} };

        if (config.listeners && config.listeners.close)
            config.listeners.close.call(config.listeners.scope || window, rv);
    },

    ShowModelessDialog: function (id, url, params, config) {
        params = params || {};
        config = config || {};
        url = Ext.urlAppend(resolveUrl(url), Ext.urlEncode(params));

        //使用iframe,用了iframe还是没右键菜单，故不用
        //url = Ext.urlAppend(resolveUrl('YZSoft/Frame/Assist/DialogAssist.aspx'),Ext.urlEncode({url:'~/'+url}));
        //alert(url);

        var dlgParams = new Array();
        dlgParams.push('dialogWidth=' + (config.width || '764') + 'px');
        dlgParams.push('dialogHeight=' + (config.height || '533') + 'px');
        dlgParams.push('center=' + (config.center || 'yes'));
        dlgParams.push('help=' + (config.help || 'no'));
        dlgParams.push('resizable=' + (config.resizable || 'yes'));
        dlgParams.push('status=' + (config.status || 'no'));
        dlgParams.push('scroll=' + (config.scroll || 'yes'));
        dlgParams.push('Minimize=' + (config.Minimize || 'yes'));
        dlgParams.push('Maximize=' + (config.Maximize || 'yes'));

        //无模式对话框
        var dialogArguments = {
            dlgtype: 'modeless',
            parentWindow: window,
            listeners: config.listeners
        };

        window.showModelessDialog(url, dialogArguments, dlgParams.join(';'));
    },

    OpenWindow: function (id, url, params, config) {
        id = id || Ext.id();
        id = YZSoft.util.hex.encode(id);
        params = params || {};
        config = config || {};
        url = Ext.urlAppend(resolveUrl(url), Ext.urlEncode(params));

        //使用iframe,用了iframe还是没右键菜单，故不用
        //url = Ext.urlAppend(resolveUrl('YZSoft/Frame/Assist/DialogAssist.aspx'),Ext.urlEncode({url:'~/'+url}));
        //alert(url);

        var dlgParams = new Array();
        dlgParams.push('menubar=' + (config.menubar || 'no')); //菜单栏是否可见 
        dlgParams.push('toolbar=' + (config.toolbar || 'no')); //窗口工具栏是否可见
        dlgParams.push('location=' + (config.location || 'yes')); //位置栏是否可见
        dlgParams.push('status=' + (config.status || 'yes')); //窗口被激活后是否浮在其它窗口之上
        dlgParams.push('resizable=' + (config.resizable || 'yes')); //窗口大小是否可调整
        dlgParams.push('scrollbars=' + (config.scrollbars || 'yes')); //窗口是否可有滚动栏
        dlgParams.push('top=' + (config.top || 100)); //窗口距屏幕左边界的像素长度
        dlgParams.push('left =' + (config.left || 100)); //窗口距屏幕上边界的像素长度
        dlgParams.push('width=' + (config.width || '764') + 'px');
        dlgParams.push('height=' + (config.height || '533') + 'px');
        dlgParams.push('alwaysRaised=' + (config.alwaysRaised || 'yes')); //指定窗口悬浮在所有窗口之上
        dlgParams.push('depended=' + (config.depended || 'yes')); //是否和父窗口同时关闭
        dlgParams.push('titlebar=' + (config.titlebar || 'no')); //窗口题目栏是否可见
        dlgParams.push('z-look=' + 'yes'); //窗口被激活后是否浮在其它窗口之上

        //无模式对话框
        var dialogArguments = {
            id: id,
            dlgtype: 'window',
            parentWindow: window,
            listeners: config.listeners
        };

        var newwindow = window.open(url, id, dlgParams.join(','));
        if (newwindow) {
            //保存开窗信息
            YZSoft.DialogManager.WINS[newwindow.name] = dialogArguments;
            setTimeout(function () { newwindow.focus() }, 1);
        }
    }
};

YZSoft.UI = {
    ShowFormTypes : {
        OpenWindow : YZSoft.DialogManager.OpenWindow,
        ModelessDialog : YZSoft.DialogManager.ShowModelessDialog,
        ModalDialog : YZSoft.DialogManager.ShowModalDialog,
        IFrameDialog : YZSoft.DialogManager.ShowIFrameDialog,
        Tab : YZSoft.ViewManager.NewIFrameWindow
    },
    
    GetShowFormAPI : function(dlgtype){
        return YZSoft.UI.ShowFormTypes[dlgtype] || YZSoft.UI.ShowFormTypes[YZSoft.EnvSetting.BPM.Form.WindowModel] || YZSoft.UI.ShowFormTypes['OpenWindow'];
    },

    GetShowFormAppAPI : function(dlgtype){
        return YZSoft.UI.ShowFormTypes[dlgtype] || YZSoft.UI.ShowFormTypes[YZSoft.EnvSetting.BPM.FormApplication.WindowModel] || YZSoft.UI.ShowFormTypes['OpenWindow'];
    }
}

YZSoft.Ajax = {
    RFC: function(config) {
        config = config || {};
        
        if (config.waitMsg) {
            if (config.waitMsgTarget) {
                config.waitMsgTargetObj = Ext.get(config.waitMsgTarget);
                config.waitMsgTargetObj.mask(config.waitMsg, 'x-mask-loading');
            }
            else {
                Ext.MessageBox.wait(config.waitMsg, config.waitTitle || this.waitTitle);
                Ext.MessageBox.updateProgress(1);
            }
        }

        Ext.Ajax.request({
            method: config.method||'GET',
            sync:config.sync===true,
            disableCaching: true,
            url: config.resolveUrl === false ? config.url:resolveUrl(config.url),
            params: config.params,
            scope: config,
            success: function(response) {
                YZSoft.Ajax.complete(this);

                var action = {
                    result: Ext.decode(response.responseText),
                    responseText: response.responseText
                };

                if (action.result.success) {
                    if (this.success)
                        this.success.call(this.scope || this, action);
                }
                else {
                    if (this.failure)
                        this.failure.call(this.scope || this, action);
                }
            },
            failure: function(response) {
                YZSoft.Ajax.complete(this);

                var err = {
                    type: 'responseError',
                    response:response,
                    url: config.url,
                    title: RS.$('YZStrings.All_RFC_HttpFail_Title'),
                    message: String.format(RS.$('YZStrings.All_RFC_HttpFail_Msg'), config.url)
                };

                YZSoft.Error.Throw(err);
            }
        });
    },

    complete: function(config) {
        if (config.waitMsg) {
            if (config.waitMsgTargetObj) {
                config.waitMsgTargetObj.unmask();
            }
            else {
                Ext.MessageBox.updateProgress(1);
                Ext.MessageBox.hide();
            }
        }
    }
};

YZSoft.UserMgr = {
    logout: function() {
        window.location.href = 'YZSoft/Login/?action=logout';
    },
    changeuser: function() {
        window.location.href = 'YZSoft/Login/?action=changeuser';
    }    
};

YZSoft.File = {
    download: function(url, params) {
        if (!url)
            return;

        var form = Ext.fly('frmDummy');
        if (!form) {
            form = document.createElement('form');
            form.id = 'frmDummy';
            form.className = 'x-hidden';
            document.body.appendChild(form);
            form = Ext.fly('frmDummy');
        }
        var domform = Ext.getDom(form)
        
        if (Ext.isSafari && Ext.isMac){
            var hiddens = [];
            var encoding = 'multipart/form-data';
            var buf = {
                target: domform.target,
                method: domform.method,
                encoding: form.encoding,
                enctype: form.enctype,
                action: domform.action
            };

            form.set({
                target: '_blank',
                method: 'POST',
                enctype: encoding,
                encoding: encoding,
                action: url || buf.action
            });
            Ext.iterate(params, function(k, v){
                var hd = document.createElement('input');
                Ext.fly(hd).set({
                    type: 'hidden',
                    value: v,
                    name: k
                });
                domform.appendChild(hd);
                hiddens.push(hd);
            });

            domform.submit();

            form.set(buf);
            Ext.each(hiddens, function(h) {
                Ext.removeNode(h);
            });
        }
        else{
            Ext.Ajax.request({
                url: url,
                method: 'POST',
                form: form,
                isUpload: true,
                params: params,
                success: function(response, opts) {
                    if (response.responseText){
                        var rv = Ext.decode(response.responseText);
                        alert(Ext.util.Format.htmlDecode(rv.errorMessage));
                    }
                }
            });
        }
    },
    
    GetExtension:function(path){
        if (!path)
            return '';
        
        var idx = path.lastIndexOf('.');
        if (idx == -1)
            return '';
            
        return path.substring(idx)||'';
    }
};

Ext.namespace("YZSoft.BPM.Form");

YZSoft.BPM.Form.ProcessNameComboBox = Ext.extend(Ext.form.ComboBox, {
    constructor: function(config) {
        var processNamesStore = new YZSoft.Data.JsonStore({
            remoteSort: true,
            fields: ['name', 'value'],
            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'YZSoft/BPM/StoreDataService/ProcessNameList.ashx'
            })
        });

        var cfg = {
            store: processNamesStore,
            displayField: 'name',
            valueField: 'value',
            typeAhead: false,
            triggerAction: 'all',
            emptyText: RS.$('YZStrings.All_SelProcessPromptText'),
            selectOnFocus: true,
            width: 160,
            allowBlank: true
        };

        Ext.apply(cfg, config);
        YZSoft.BPM.Form.ProcessNameComboBox.superclass.constructor.call(this, cfg);
    }
});

Ext.reg('YZBPMProcessNameCmb', YZSoft.BPM.Form.ProcessNameComboBox);

YZSoft.BPM.Dialogs = {
    ShowSelUserDlg: function(cfg) {
        //缺省为多选
        var moduleUrl = cfg.singleSelect === true ? 'YZSoft/BPM/Dialogs/SelUserDlg.js' : 'YZSoft/BPM/Dialogs/SelUserDlgMulti.js';

        if (!cfg.title)
            cfg.title = RS.$('YZStrings.All_SelUserDlg_Title');

        YZSoft.DialogManager.ShowDialogExt(moduleUrl,
            moduleUrl,
            cfg,
            {});
    },

    ShowSelSecurityRoleDlg: function(cfg) {
        if (!cfg.title)
            cfg.title = RS.$('YZStrings.All_SelSIDDlg_Title');

        YZSoft.DialogManager.ShowDialogExt('YZSoft/BPM/Dialogs/SelSecurityRoleDlg.js',
             'YZSoft/BPM/Dialogs/SelSecurityRoleDlg.js',
            cfg,
            {});
    },

    ShowSelOUDlg: function(cfg) {
        if (!cfg.title)
            cfg.title = RS.$('YZStrings.All_SelOUDlg_Title');

        YZSoft.DialogManager.ShowDialogExt('YZSoft/BPM/Dialogs/SelOUDlg.js',
            'YZSoft/BPM/Dialogs/SelOUDlg.js',
            cfg,
            {});
    },

    ShowProcessChartDlg: function(processName) {
        var cfg = {
            processName: processName
        };

        YZSoft.DialogManager.ShowDialogExt('YZSoft/BPM/Dialogs/ProcessChartDlg.js',
            'YZSoft/BPM/Dialogs/ProcessChartDlg.js',
            cfg,
            {});
    },

    ShowTaskTraceDlg: function(taskid, defTabIndex, processName) {
        var cfg = {
            TaskID: taskid,
            defTabIndex: defTabIndex,
            processName: processName,
            dlgType:'TaskTraceDlg'
        };

        var id = 'YZSoft/BPM/Dialogs/TaskTraceDlg.js';
        var topdlg = Ext.WindowMgr.getActive();
        if (topdlg && topdlg.dlgType == 'TaskTraceDlg')
        {
            id = Ext.id();
            cfg.x = topdlg.x + 30;
            cfg.y = topdlg.y + 30;
        }

        YZSoft.DialogManager.ShowDialogExt(id,
            'YZSoft/BPM/Dialogs/TaskTraceDlg.js',
            cfg,
            {});
    },

    ShowExcelImportDlg: function(cfg) {
        if (!cfg.title)
            cfg.title = RS.$('YZStrings.All_ExcelImportDlg_Title');

        YZSoft.DialogManager.ShowDialogExt('YZSoft/Excel/Dialogs/ExcelImportDlg.js',
            'YZSoft/Excel/Dialogs/ExcelImportDlg.js',
            cfg,
            {});
    },
    
    ShowAssignPermisionDlg: function(cfg) {
        if (!cfg.title)
            cfg.title = RS.$('YZStrings.All_AssignPermDlg_Title');

        YZSoft.DialogManager.ShowDialogExt('YZSoft/Security/Dialogs/AssignPermisionDlg.js',
            'YZSoft/Security/Dialogs/AssignPermisionDlg.js',
            cfg,
            {});
    },
    
    ShowDataBrowserDlg: function(cfg) {
        var url = 'YZSoft/Forms/Dialogs/DataBrowserDlg.js'
        YZSoft.DialogManager.ShowDialogExt(url,url,cfg,{});
    }
};

YZSoft.BPM.FormManager = {
    OpenDraft: function (processName, draftid, owner, dlgModel, cfg) {
        cfg = cfg || {};

        var id = 'BPM_Draft_' + draftid;
        var url = 'YZSoft/Forms/Post.aspx';
        var urlParam = Ext.apply({ pn: processName, did: draftid }, cfg.param);
        if (owner) urlParam.owner = owner;
        var api = YZSoft.UI.GetShowFormAPI(dlgModel);

        cfg.title = cfg.title || String.format(RS.$('YZStrings.All_OpenDraft_Title'), processName);
        cfg.width = cfg.width || YZSoft.EnvSetting.BPM.Form.DlgSize.Width;
        cfg.height = cfg.height || YZSoft.EnvSetting.BPM.Form.DlgSize.Height;

        api(id, url, urlParam, cfg);
    },

    OpenPostWindow: function (processName, dlgModel, cfg) {
        cfg = cfg || {};

        var id = 'BPM_PostProcess_' + processName;
        var url = 'YZSoft/Forms/Post.aspx';
        var urlParam = Ext.apply({ pn: processName }, cfg.param);
        var api = YZSoft.UI.GetShowFormAPI(dlgModel);

        cfg.title = cfg.title || String.format(RS.$('YZStrings.All_Post_Title'), processName);
        cfg.width = cfg.width || YZSoft.EnvSetting.BPM.Form.DlgSize.Width;
        cfg.height = cfg.height || YZSoft.EnvSetting.BPM.Form.DlgSize.Height;

        api(id, url, urlParam, cfg);
    },

    OpenDelegationPostWindow: function (processName, dlgModel, cfg) {
        YZSoft.BPM.Dialogs.ShowSelUserDlg({
            singleSelect: true,
            title: RS.$('YZStrings.All_DelegationPost_SelUser'),
            fn: function (owner, users) {
                if (users.length == 0)
                    return;

                var user = users[0];
                cfg = cfg || {};

                var id = 'BPM_PostProcessDelegation_' + processName;
                var url = 'YZSoft/Forms/Post.aspx';
                var urlParam = Ext.apply({ pn: processName, owner: user.MemberFullName }, cfg.param);
                var api = YZSoft.UI.GetShowFormAPI(dlgModel);

                cfg.title = cfg.title || String.format(RS.$('YZStrings.All_Post_Title'), processName);
                cfg.width = cfg.width || YZSoft.EnvSetting.BPM.Form.DlgSize.Width;
                cfg.height = cfg.height || YZSoft.EnvSetting.BPM.Form.DlgSize.Height;

                api(id, url, urlParam, cfg);
            }
        });
    },

    OpenShareTask: function (taskid, stepid, sn, dlgModel, cfg) {
        cfg = cfg || {};

        var id = 'BPM_Share_' + stepid;
        var url = 'YZSoft/Forms/Process.aspx';
        var urlParam = Ext.apply({ share: 1, tid: taskid, pid: stepid }, cfg.param);
        var api = YZSoft.UI.GetShowFormAPI(dlgModel);

        cfg.title = cfg.title || (sn ? sn : String.format(RS.$('YZStrings.All_OpenShareTask_Title'), taskid));
        cfg.width = cfg.width || YZSoft.EnvSetting.BPM.Form.DlgSize.Width;
        cfg.height = cfg.height || YZSoft.EnvSetting.BPM.Form.DlgSize.Height;

        api(id, url, urlParam, cfg);
    },

    OpenTaskForProcess: function (taskid, stepid, sn, dlgModel, cfg) {
        cfg = cfg || {};

        var id = 'BPM_Process_' + stepid;
        var url = 'YZSoft/Forms/Process.aspx';
        var urlParam = Ext.apply({ tid: taskid, pid: stepid }, cfg.param);
        var api = YZSoft.UI.GetShowFormAPI(dlgModel);

        cfg.title = cfg.title || (sn ? sn : String.format(RS.$('YZStrings.All_OpenProcess_Title'), taskid));
        cfg.width = cfg.width || YZSoft.EnvSetting.BPM.Form.DlgSize.Width;
        cfg.height = cfg.height || YZSoft.EnvSetting.BPM.Form.DlgSize.Height;

        api(id, url, urlParam, cfg);
    },

    OpenTaskForRead: function (taskid, sn, dlgModel, cfg) {
        cfg = cfg || {};

        var id = 'BPM_ReadTask_' + taskid + ((cfg.param || {}).spn || '');
        var url = 'YZSoft/Forms/Read.aspx';
        var urlParam = Ext.apply({ tid: taskid }, cfg.param);
        var api = YZSoft.UI.GetShowFormAPI(dlgModel);

        cfg.title = cfg.title || (sn ? sn : String.format(RS.$('YZStrings.All_OpenForRead_Title'), taskid));
        cfg.width = cfg.width || YZSoft.EnvSetting.BPM.Form.DlgSize.Width;
        cfg.height = cfg.height || YZSoft.EnvSetting.BPM.Form.DlgSize.Height;

        api(id, url, urlParam, cfg);
    },

    OpenSnapshot: function (taskid, version, stepid, dlgModel, cfg) {
        cfg = cfg || {};

        var id = 'BPM_Snapshot_' + taskid + '_' + version + '_' + stepid;
        var url = Ext.isEmpty(stepid) ? 'YZSoft/Forms/Read.aspx' : 'YZSoft/Forms/Process.aspx';
        var urlParam = Ext.apply({ tid: taskid, ver: version, pid: stepid }, cfg.param);
        var api = YZSoft.UI.GetShowFormAPI(dlgModel);

        cfg.title = cfg.title || String.format(RS.$('YZStrings.All_Snapshot_Title'), version);
        cfg.width = cfg.width || YZSoft.EnvSetting.BPM.Form.DlgSize.Width;
        cfg.height = cfg.height || YZSoft.EnvSetting.BPM.Form.DlgSize.Height;

        api(id, url, urlParam, cfg);
    },

    OpenFormApplication: function (appName, key, formState, dlgModel, cfg) {
        cfg = cfg || {};

        var id = 'FormApplication_' + appName + '_key_' + key;
        var url = 'YZSoft/Forms/FormApplication.aspx';
        var urlParam = Ext.apply({ app: appName, key: key, formstate: formState }, cfg.param);
        var api = YZSoft.UI.GetShowFormAppAPI(dlgModel);

        cfg.title = cfg.title || (appName + '-' + (Ext.isEmpty(key) ? RS.$('YZStrings.All_FormApp_New') : key));
        cfg.width = cfg.width || YZSoft.EnvSetting.BPM.FormApplication.DlgSize.Width;
        cfg.height = cfg.height || YZSoft.EnvSetting.BPM.FormApplication.DlgSize.Height;

        api(id, url, urlParam, cfg);
    }
};

YZSoft.ExcelExportButton = Ext.extend(Ext.Button, {
    iconCls: 'blist',
    text: RS.$('YZStrings.All_ExcelExportButton_Text'),
    handler: function() {
        //导出源不正确
        if (!this.grid || !this.grid.store || !this.grid.store.proxy)
            return;

        //没有可以导出的数据
        if (this.grid.store.getTotalCount() == 0)
            return;
            
        //执行导出    
        YZSoft.DialogManager.ShowDialogExt('YZSoft/Excel/Dialogs/ExcelExportDlg.js',
            'YZSoft/Excel/Dialogs/ExcelExportDlg.js', { owner: this }, {});
    },
    
    constructor: function(config) {
        this.addEvents(
            'beforeload'
        );
        
        YZSoft.ExcelExportButton.superclass.constructor.call(this, config);
    }
});

YZSoft.


RecordSecurityManager = {
    Public: function (grid, tableName, publicPerm, leadershipToken, dataSource) {
        if (!grid)
            return;

        sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();

        if (recs.length == 0)
            return;

        var params = {};
        params.Method = 'UserRecordPublic';
        params.Count = recs.length;
        params.DataSource = dataSource || '';
        params.TableName = tableName;
        params.PublicPerm = publicPerm;
        if (leadershipToken)
            params.LeadershipToken = 1;
        for (var i = 0; i < recs.length; i++) {
            params["ID" + i] = recs[i].id;
        };

        YZSoft.BPM.Dialogs.ShowSelUserDlg({
            owner: grid,
            fn: function (grid, users) {
                if (users.length == 0)
                    return;

                params.SIDCount = users.length;
                var accounts = new Array();
                for (var i = 0; i < users.length; i++) {
                    var user = users[i];
                    params["SID" + i] = user.SID;
                    accounts.push(YZSoft.Render.GetUserDisplayName(user.Account, user.DisplayName));
                };

                var userDisplayString = accounts.toString();

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/Security/Service/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.All_URecPublic_Wait'),
                    waitMsgTarget: grid.id,
                    getSuccessMessage: function (items) {
                        var store = grid.getStore();
                        var msg = '';
                        Ext.each(items, function (item) {
                            if (!Ext.isEmpty(msg))
                                msg += '<br/>'

                            msg += String.format(RS.$('YZStrings.All_URecPublic_PublicTo'), store.getById(item.ID).data.SerialNum, YZSoft.HttpUtility.HtmlEncode(userDisplayString));
                        });

                        return msg;
                    },

                    success: function (action) {
                        var msg = String.format(RS.$('YZStrings.All_URecPublic_Success_Msg'), action.result.processedItems.length, YZSoft.HttpUtility.HtmlEncode(userDisplayString));

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_URecPublic_Success_Title'),
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
                        var failItem = String.format(RS.$('YZStrings.All_URecPublic_Fail_Msg'), sn, YZSoft.HttpUtility.HtmlEncode(action.result.errorMessage, true));

                        if (!Ext.isEmpty(msg))
                            msg += '<br/>'

                        msg += failItem;

                        Ext.Msg.show({
                            title: RS.$('YZStrings.All_URecPublic_Fail_Title'),
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

    AssignPermision: function (grid, rsid, tableName) {
        if (!grid)
            return;

        var sm = grid.getSelectionModel();
        recs = sm.getSelections() || new Array();
        if (recs.length != 1)
            return;

        var key = recs[0].id;
        YZSoft.BPM.Dialogs.ShowAssignPermisionDlg({
            params: { RSID: rsid, TableName: tableName, Key: key },
            owner: grid,
            fn: function (owner, aces) {
                var params = {};
                params.Method = 'UserRecordAssignPermision';
                params.TableName = tableName;
                params.Key = key;
                params.ACECount = aces.length;

                for (var i = 0; i < aces.length; i++) {
                    var ace = aces[i];
                    params['SIDType' + i] = ace.SIDType;
                    params['SID' + i] = ace.SID;
                    params['PermCount' + i] = ace.Permision.length;
                    for (var j = 0; j < ace.Permision.length; j++) {
                        var perm = ace.Permision[j];
                        params['Name' + i + '_' + j] = perm.Name;
                        params['LToken' + i + '_' + j] = perm.LeadershipToken ? 1 : 0;
                    }
                }

                YZSoft.Ajax.RFC({
                    url: 'YZSoft/Security/Service/CallFunc.ashx',
                    params: params,
                    waitMsg: RS.$('YZStrings.All_URecAssignPerm_Wait'),
                    waitMsgTarget: grid.id,
                    success: function (action) {
                        grid.store.reload({ params: { start: grid.store.cursor} });
                    },
                    failure: function (action) {
                        alert(action.result.errorMessage);
                    }
                });
            }
        });
    }
};

YZSoft.UIHelper = {
    IsOptEnable: function(pnl, grid, permName, minSelection, maxSelection) {

        if (!Ext.isEmpty(permName)){
            //权限不允许则退出
            if (!grid || (pnl.perm && Ext.isDefined(pnl.perm[permName]))) { //是模块权限
                //权限不允许
                if (!pnl.perm[permName])
                    return false;
            }
            else { //是记录权限或未定义的权限
                var sm = grid.getSelectionModel();
                var recs = sm.getSelections() || new Array();

                var permAllow = true;
                for (var i = 0; i < recs.length; i++) {
                    if (!Ext.isObject(recs[i].data.perm)) { //记录上未给出权限信息,开发过程中可能未定义权限，故允许请求的操作
                        permAllow = true;
                        break;
                    }

                    if (recs[i].data.perm[permName] === true) { //当前记录允许请求的权限
                        continue;
                    }
                    else { //当前记录不允许请求的权限
                        permAllow = false;
                        break;
                    }
                }

                //权限不允许
                if (!permAllow)
                    return false;
            }
        }

        //权限允许的情况下检查选中项数量要求
        return YZSoft.UIHelper.IsOptEnableNoPerm(grid, minSelection, maxSelection);
    },

    IsOptEnableNoPerm: function(grid, minSelection, maxSelection) {
        minSelection = minSelection || 0;
        maxSelection = maxSelection || -1;

        //对是否选择无要求
        if (minSelection == 0 && maxSelection == -1)
            return true;

        var sm = grid.getSelectionModel();
        var recs = sm.getSelections() || new Array();

        //未满足最少选择项要求
        if (recs.length < minSelection)
            return false;

        //未满足最多选择项要求
        if (maxSelection != -1 && recs.length > maxSelection)
            return false;

        return true;
    },
    
    CanMoveUp:function(grid, multisel){
        var sm = grid.getSelectionModel();
        var recs = sm.getSelections() || [];
        
        if (recs.length == 0)
            return false;

        if (multisel === false && recs.length != 1)
            return false;
        
        var bbar = grid.getBottomToolbar();
        return ((bbar ? bbar.cursor:0) + grid.store.indexOf(recs[0]) != 0);
    },
    
    CanMoveDown:function(grid, multisel){
        var sm = grid.getSelectionModel();
        var recs = sm.getSelections() || [];
        
        if (recs.length == 0)
            return false;

        if (multisel === false && recs.length != 1)
            return false;
        
        var bbar = grid.getBottomToolbar();
        return ((bbar ? bbar.cursor:0) + grid.store.indexOf(recs[0]) != grid.store.getTotalCount()-1);
    }
};

YZSoft.IFramePanel = Ext.extend(Ext.Panel, {
    autoReload:true,
    
    constructor : function(config){
        this.idframe = Ext.id();

        config = config || {};
        params = config.params || {};

        var url = Ext.urlAppend(config.url,Ext.urlEncode(params));

        var cfg = {
            html:'<iframe id="'+this.idframe+'" src="'+url+'" frameborder="0" width="100%" height="100%"></iframe>'
        };
        
        Ext.apply(cfg,config);
        YZSoft.IFramePanel.superclass.constructor.call(this,cfg);
    },
    
    reload:function(){
        document.getElementById(this.idframe).src = this.url;
    },
    
    listeners: {
        afterrender:function(){
            document.getElementById(this.idframe).topContainer = this;
        },
        activate:function(){
            if (this.autoReload)
                this.reload();
        }
    },
    
    closeContainer:function(result) {
    }
});

YZSoft.IFrameWindow = Ext.extend(YZSoft.IFramePanel, {    
    baseCls : 'x-window',
    frame : true,
    floating : true,
    width:300,
    height:200,
            
    constructor : function(config){
        YZSoft.IFrameWindow.superclass.constructor.call(this,config);
    }
});

YZSoft.Image = {
    GetPicSize:function(img){
        var picsize = img.picsize;
        if (picsize)
            return picsize;

        if (img.natualHeight !== undefined)
            return {width:img.natualWidth,height:img.natualHeight}
        
        var test=new Image();
        test.src=img.src;
        var width=test.width;
        var height=test.height;
        return {width:width,height:height};
    },
    
    OnImageLoaded:function(img){
        //获得内层容器与外层容器，只有一层容器时，内层容器与外层容器相同
        var ocnt = Ext.findParent('div[imgcontainer=y]',img) || img.parentNode;
        var ocntSize = ocnt.orgSize;
        if (!ocntSize){
            var elImg = new Ext.Element(ocnt,true);
            ocntSize = {
                width:elImg.getWidth(true),
                height:elImg.getHeight(true)
            };
            ocnt.orgSize = ocntSize;
        }
            
        var icnt = img.parentNode;        
        var icntSize = icnt.orgSize || {width:icnt.clientWidth,height:icnt.clientHeight};
        if (!icnt.orgSize)
            icnt.orgSize = icntSize;

        //图片的原始尺寸
        var picSize = YZSoft.Image.GetPicSize(img);
        
        var scaleType = ocnt.getAttribute('ImageDisplayStyle');
        if (scaleType == 'NoScale'){ //NoScale 图片不缩放，显示图片的实际大小
            var extSize = {
                width:Math.max(picSize.width - icntSize.width,0),
                height:Math.max(picSize.height - icntSize.height,0)
            };
            
            var picOffset = {
                top:Math.max((icntSize.height - picSize.height)/2,0),
                left:Math.max((icntSize.width - picSize.width)/2,0)
            };

            ocnt.style.width = ocntSize.width + extSize.width + 'px';
            ocnt.style.height = ocntSize.height + extSize.height + 'px';
            img.style.marginTop = picOffset.top + 'px';
            img.style.marginLeft = picOffset.left + 'px';
            img.style.width = picSize.width + 'px';
            img.style.height = picSize.height + 'px';
            icnt.style.height = Math.max(picSize.height,icntSize.height) + 'px';
        }
        else{ //AutoScale 图片缩放，不撑大容器
            var picNewSize = {};
            if (picSize.width <= icntSize.width && picSize.height <= icntSize.height)
                picNewSize = picSize;
            else
                picNewSize = icntSize;
            
            var picOffset = {
                top:(icntSize.height - picNewSize.height)/2,
                left:(icntSize.width - picNewSize.width)/2
            };
            
            icnt.style.height = icntSize.height + 'px';
            
            img.style.width = picNewSize.width + 'px';
            img.style.height = picNewSize.height + 'px';
            img.style.marginTop = picOffset.top + 'px';
            img.style.marginLeft = picOffset.left + 'px';
        }
    },
    
    SetImageSrc:function(img,src,size){
        img.style.width = '1px';
        img.style.height = '1px';
        
        img.picsize = size;
        img.src = src;
    },
    
    SetImageSrcFileId:function(img,fileid,size){
        if (!fileid){
            YZSoft.Image.SetImageSrc(img,'');
            return;
        }

        if (!size){
            var url = YZSoft.Attachment.GetAttachmentURL(fileid,'imagesize');
            Ext.Ajax.request({
                method: 'POST',
                disableCaching: true,
                url: url,
                scope:this,
                success: function(response) {
                    var rv = Ext.decode(response.responseText);
                                    
                    if (!rv.success){
                        alert(Ext.util.Format.htmlDecode(rv.errorMessage));
                        return;
                    }
                    
                    var imgurl = YZSoft.Attachment.GetAttachmentURL(fileid,'download');
                    YZSoft.Image.SetImageSrc(img,imgurl,rv.size);
                },
                
                failure: function(response) {
                    YZSoft.Image.SetImageSrc(img,'');
                }
            });
        }
        else{
            var imgurl = YZSoft.Attachment.GetAttachmentURL(fileid,'download');
            YZSoft.Image.SetImageSrc(img,imgurl,size);
        }
    },
    
    SetBase64ImageSrc:function(img,base64){
        var url = resolveUrl('YZSoft/FileService/Base64ImageService.ashx');
        Ext.Ajax.request({
            method: 'POST',
            disableCaching: true,
            params:{data:base64},
            url: url,
            scope:this,
            success: function(response) {
                var rv = Ext.decode(response.responseText);
                                
                if (!rv.success){
                    alert(Ext.util.Format.htmlDecode(rv.errorMessage));
                    return;
                }
                
                var imgurl = String.format('{0}?id={1}',
                    resolveUrl('YZSoft/FileService/ImageService.ashx'),
                    rv.imageid);
                    
                YZSoft.Image.SetImageSrc(img,imgurl,{width:rv.width,height:rv.height});
            },
            
            failure: function(response) {
                YZSoft.Image.SetImageSrc(img,'');
            }
        });
    }
};

YZSoft.Attachment = {
    AttachmentBaseURL:resolveUrl('YZSoft/Attachment'),
    GetAttachmentInfoURL:resolveUrl('YZSoft/Attachment'),

    GetAttachmentURL:function(fileId, action, option) {
        option = option || {}
        switch (action) {
            case 'view':
                var method = option.method;
                var width = option.width || '';
                var height = option.height || '';
                if ('|max|min|crop|crop_top|'.indexOf('|' + method + '|') == -1)
                    method = 'crop';

                return YZSoft.Attachment.AttachmentBaseURL + '/default.ashx?' + fileId + '&view=' + method + '-' + width + '-' + height;
            case 'imagesize':
                return YZSoft.Attachment.AttachmentBaseURL + '/GetImageSize.ashx?fileid=' + fileId;
            default:
                return YZSoft.Attachment.AttachmentBaseURL + '/default.ashx?' + fileId;
        }
    },
        
    RenderAttachment:function(fileInfo){
        var url = YZSoft.Attachment.GetAttachmentURL(fileInfo.FileID);
        return String.format("<a href='{0}'>{1}</a>",url,fileInfo.Name);
    }
};

Ext.override(Ext.form.HtmlEditor, {
    setReadOnly: function (readOnly) {
        if (readOnly) {
            this.syncValue();
            var roMask = this.wrap.mask();
            roMask.dom.style.filter = "alpha(opacity=100);"; //IE
            roMask.dom.style.opacity = "1"; //Mozilla
            roMask.dom.style.background = "white";
            roMask.dom.style.overflow = "scroll";
            roMask.dom.innerHTML = this.getValue();
            this.el.dom.readOnly = true;
            this.readOnly = true;
        }
        else {
            if (this.rendered) {
                this.wrap.unmask();
            }
            this.el.dom.readOnly = false;
        }
    },

    createLink: function () {
        var url = prompt(this.createLinkText, this.defaultLinkValue);
        if (url && url != 'http:/' + '/') {
            if (this.linksInNewWindow) {
                var doc = this.getDoc();
                if (Ext.isIE) {
                    var r = doc.selection.createRange();
                    var txt = "<a href='" + url + "' target='_blank'>" + r.htmlText + "</a>";
                    if (r)
                        r.pasteHTML(txt);
                }
                else {
                    txt = this.getDoc().getSelection();
                    this.relayCmd('insertHTML', "<a href='" + url + "' target='_blank'>" + txt + "</a>");
                }
            }
            else {
                this.relayCmd('createlink', url);
            }
        }
    }
});

YZSoft.MaintPanel = Ext.extend(Ext.Panel, {
    constructor : function(config){
        var instance = new YZSoft.IFramePanel({
            border:false,
            region: 'center',
            header: false,
            cls: 'yz-func-panel',
            params:{message:YZSoft.HttpUtility.HtmlEncode(config.message)},
            url:config.url||'YZSoft/Maintenance/Module.aspx'
        });

        var header = new Ext.BoxComponent({
            region: 'north',
            border: false,
            cls: 'mmenu3-header',
            html: String.format('<div class="yz-tab-banner"><span class="curmodel">{0}</span></div>', config.title)
        });

        var cfg = {
            border: false,
            layout: 'border',
            items: [header, instance],
            funcpanel: instance
        };
            
        Ext.apply(cfg,config);
        cfg.title = false;
        YZSoft.MaintPanel.superclass.constructor.call(this,cfg);
    }
});

YZSoft.EmptyPanel = Ext.extend(Ext.Panel, {
    constructor: function (config) {
        var instance = new Ext.BoxComponent({
            border: false,
            region: 'center',
            header: false,
            style:'background-color:white'
        });

        var header = new Ext.BoxComponent({
            region: 'north',
            border: false,
            cls: 'mmenu3-header',
            html: String.format('<div class="yz-tab-banner"><span class="curmodel">{0}</span></div>', config.title)
        });

        var cfg = {
            border: false,
            layout: 'border',
            items: [header, instance],
            funcpanel: instance
        };

        Ext.apply(cfg, config);
        cfg.title = false;
        YZSoft.MaintPanel.superclass.constructor.call(this, cfg);
    }
});
