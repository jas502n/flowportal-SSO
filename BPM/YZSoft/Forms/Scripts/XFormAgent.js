// JScript 文件
// XFormAgent Ver1.0 YZSoft Shanghai China 2011-11-21
var IsXForm = false;

var debug = {
    ShowUpdaters:function(ups){
        var s = [];
        Ext.each(ups,function(up){
            s.push({el:up.xel.elType.sTagNameLow,bind:up.xel.elType.sDataBind,tag:up.tag,src:up.src});
        });
        
        alert(Ext.encode(s));
    },
    
    ShowOrderInfo:function(){
        var xa = YZSoft.XForm.Agent;
        var orders = [];
        for (var i = 0 ; i < xa.EleTypes.length ; i++){
            var et = xa.EleTypes[i];
            var eto = et.Orders;
            for(var p in eto){
                Ext.each(eto[p],function(o){
                    orders.push({e:et.sTagNameLow,p:p,bind:et.sDataBind,index:o});
                });
            }
        }
        alert(Ext.encode(orders));
    }
};

function XFormOnDataAvailable(xel) {
    var xa = YZSoft.XForm.Agent;
    if (!xel)
        return;

    var rows = xel.mapvalues;
    if (!Ext.isArray(rows)){
        rows = [];
        rows.push(xel.mapvalues);
    }
    
    var ups = [{xel:xel,tag:'map',src:'set',rows:rows}];
    xa.ExpandUpdaters(ups);
    ups = xa.OrderUpdaters(ups);
    xa.DoUpdater(ups);
}

function XFormOnChange(del){
    var x = YZSoft.XForm;
    var xa = x.Agent;
    var xel = x.Element.TryGetChechedEle(del);
    if (!xel)
        return;

    var ups = xel.GenValueChangeUpdater();
    xa.ExpandUpdaters(ups);

    ups = xa.OrderUpdaters(ups);
    xa.DoUpdater(ups);
}

YZSoft.XForm = YZSoft.XForm || {};

YZSoft.XForm.tagNames = {
    table:'table',
    select:'select',
    input:'input',
    textarea:'textarea',
    label:'label',
    a:'a',
    span:'span'
};

YZSoft.XForm.typeNames = {
    radio:'radio',
    checkbox:'checkbox',
    text:'text',
    button:'button'
};

YZSoft.XForm.xtypeNames = {
    gridlineno:'gridlineno'
};

YZSoft.XForm.DSType = {
    Table:1,
    Procedure:2
};

YZSoft.XForm.NodeType = {
    Element:1,
    Block:2
};

YZSoft.XForm.BufferType = {
    Buffer:1,
    RuntimeUpdate:2
};

YZSoft.XForm.Model = {
    Snapshot:1,
    Share:2,
    Process:3,
    Read:4,
    App:5,
    Draft:6,
    Post:7,
    Form:8
};

YZSoft.XForm.EleTypes = {
    Select:1,
    Button:2,
    Table:3,
    LineNo:4,
    TextBox:5,
    Radio:6,
    CheckBox:7,
    Label:8,
    TextArea:9,
    A:10,
    Span:11
};

YZSoft.XForm.MenuDock = {
    Left:1,
    Right:2
};

YZSoft.XForm.EmptyGrid = {
    KeepEmpty:1,
    AutoAppendOneBlock:2
};

YZSoft.XForm.ValuePriority = {
    'none':1,
    'default':2,
    'map':3,
    'value':4,
    'set':5
};

YZSoft.XForm.DisableBehavior = {
    ReadOnly:1,
    Disable:2
},

YZSoft.XForm.AppendModel = {
    Append:1,
    ClearAndAppend:2,
    RemoveEmptyRow:3
};

YZSoft.XForm.DataType = {
	Decimal:1,
	Double:2,
	Single:3,
	Int16:4,
	Int32:5,
	Int64:6,
	SByte:7,
	UInt16:8,
	UInt32:9,
	UInt64:10,
	Byte:11,
	Boolean:12,
	DateTime:13,
	String:14,
	Binary:15
};

YZSoft.XForm.Checkers = {
    Number:{name:'Number',type:'reg',reg:new RegExp('^[+-]{0,1}[0-9]*[.]{0,1}[0-9]*$'),errmsg:''},
    DecimalDefault:{name:'DecimalDefault',type:'reg',reg:new RegExp('^[+-]{0,1}[0-9]*[.]{0,1}[0-9]{0,2}$'),errmsg:''},
    Digit:{name:'Digit',type:'reg',reg:new RegExp('^[+-]{0,1}[0-9]*$'),errmsg:''},
    Plus:{name:'Plus',type:'reg',reg:new RegExp('^[+]{0,1}[0-9.]*$'),errmsg:''},
    Boolean:{name:'Boolean',type:'reg',reg:new RegExp('^[01]{0,1}$'),errmsg:''}
};

YZSoft.XForm.DataTypeMap = {
    'decimal':YZSoft.XForm.DataType.Decimal,
    'double':YZSoft.XForm.DataType.Double,
    'single':YZSoft.XForm.DataType.Single,
    'int16':YZSoft.XForm.DataType.Int16,
    'int32':YZSoft.XForm.DataType.Int32,
    'int64':YZSoft.XForm.DataType.Int64,
    'sbyte':YZSoft.XForm.DataType.SByte,
    'uint16':YZSoft.XForm.DataType.UInt16,
    'uint32':YZSoft.XForm.DataType.UInt32,
    'uint64':YZSoft.XForm.DataType.UInt64,
    'byte':YZSoft.XForm.DataType.Byte,
    'boolean':YZSoft.XForm.DataType.Boolean,
    'datetime':YZSoft.XForm.DataType.DateTime,
    'byte[]':YZSoft.XForm.DataType.Binary
};
    
YZSoft.XForm.ExpressTypes = [
    {name:'value',define:'Express'},
    {name:'disable',define:'DisableExpress'},
    {name:'hide',define:'HiddenExpress'}
];

YZSoft.XForm.InputChecker = Ext.extend(Ext.util.Observable, {
    constructor: function(elType){
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var dt = x.DataType;
        var chks = x.Checkers;
	    this.Checkers = [];
	    this.MaxLen = -1;

        var dc = (elType.DataBind ? elType.DataBind.DataColumn:null)||{};
        switch(dc.Type){
            case dt.Decimal:
            case dt.Double:
            case dt.Single:
                this.DisableIME = true;
                this.Checkers.push(chks.Number);
                this.Checkers.push(chks.DecimalDefault);
                this.DecimalColumn = 2;
                break;
            case dt.Int16:
            case dt.Int32:
            case dt.Int64:
            case dt.SByte:
                this.DisableIME = true;
                this.Checkers.push(chks.Number);
                this.Checkers.push(chks.Digit);
                break;
            case dt.UInt16:
            case dt.UInt32:
            case dt.UInt64:
            case dt.Byte:
                this.DisableIME = true;
                this.Checkers.push(chks.Number);
                this.Checkers.push(chks.Digit);
                this.Checkers.push(chks.Plus);
                break;
            case dt.Boolean:
                this.DisableIME = true;
                this.Checkers.push(chks.Boolean);
                break;
            case dt.DateTime:
                this.DisableIME = true;
                break;
            case dt.String:
                this.MaxLen = Math.min(elType.Len == -1 ? 99999999:elType.Len,dc.Length == -1 ? 99999999:dc.Length);
                this.MaxLen = this.MaxLen == 99999999 ? -1:this.MaxLen;
            case dt.Binary:
                break;
            default:
                break;
        }
        
        var f = this.Format = xa.ParseFormat(elType.DspFormat);
        if (f){
            this.HasFormat = f.Perfix || f.DecimalColumn != -1 || this.UseThousandSeparator;
            
            if (f.DigitColumn != -1){
                this.Checkers.push({type:'reg',reg:new RegExp('^[+-]{0,1}[0-9]{0,'+f.DigitColumn+'}[.]{0,1}[0-9]*$'),errmsg:''});
            }
            if (f.DecimalColumn != -1){
                this.DecimalColumn = f.DecimalColumn;
                this.Checkers = xa.ArrayFilter(chks,{name:'DecimalDefault'},false);
                this.Checkers.push({type:'reg',reg:new RegExp('^[+-]{0,1}[0-9]*[.]{0,1}[0-9]{0,'+this.Format.DecimalColumn+'}$'),errmsg:''});
            }
        }
    },
    
    ParseInput:function(xel,e){
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var it = x.InputType;
        
        var ch = String.fromCharCode(e.getCharCode());
        if (e.ctrlKey && ch != ' ') //ie中可以输入CTRL+SPACE
            return true;

        var k = e.getKey();
        if (Ext.isGecko && (e.isNavKeyPress() || k == e.BACKSPACE || (k == e.DELETE && e.button == -1)))
            return true;
            
        if (!Ext.isGecko && e.isSpecialKey() && !ch)
            return true;

        var s = xel.GetSelPos();
	    var v = xel.GetValue();
        var nstr = v.substring(0,s.s) + ch + v.substring(s.e);
	    return this.Check(nstr).success;
    },
    
    Check:function(str){
        var x = YZSoft.XForm;
        var xa = x.Agent;

        for (var i = 0 ; i < this.Checkers.length ; i++){
            var chk = this.Checkers[i];
            switch(chk.type){
                case 'reg':
                    if (!chk.reg.test(str))
                        return {success:false,err:chk.errmsg};
                    break;
            }
        }
	        
        return {success:true};
    },
    
    GetFormattedValue: function(v){
        if (isNaN(v) || Ext.isEmpty(v) || !this.HasFormat) 
            return v;

        v = parseFloat(v);
        var neg = null;

        v = (neg = v < 0) ? v * -1 : v; 
        v = this.DecimalColumn != -1 ? v.toFixed(this.DecimalColumn):v;

        if (this.Format.UseThousandSeparator){
            var v = String(v);
            var ps = v.split('.');
            ps[1] = ps[1] ? ps[1] : null;
            var whole = ps[0];
            var r = /(\d+)(\d{3})/;
            while (r.test(whole)) 
                whole = whole.replace(r, '$1,$2');

            v = whole + (ps[1] ? '.'+ps[1]:'');
        }

        return String.format('{0}{1}{2}',(neg ? '-' : ''),(Ext.isEmpty(this.Format.Perfix) ? '':this.Format.Perfix+''),v);
    },
    
    RemoveFormat:function(v){
        if (Ext.isEmpty(v) || !this.HasFormat) 
            return v;

        v = v.replace(this.Format.Perfix+'', '');
        v = this.Format.UseThousandSeparator ? v.replace(/,/g,''):v;
        return v;
    },

    OnFocus:function(xel){
        var vf = xel.GetRawValue();
        var v = this.RemoveFormat(vf);
        if (v !== vf)
            xel.SetRawValue(v);
    },
    
    OnBlur:function(xel){
        var v = xel.GetRawValue();
        var vf = this.GetFormattedValue(v);
        if (v !== vf)
            xel.SetRawValue(vf);

        XFormOnChange(xel.dom);//输入框按键不释放，移走光标或用鼠标操作Paste
    }
});

YZSoft.XForm.Element = Ext.extend(Ext.Element, {
    constructor: function (element, listen) {
        this.dom = element;
        this.id = YZSoft.XForm.Element.idSeed;
        YZSoft.XForm.Element.idSeed++;
        /*
        if (this.dom && listen){
        this.on('focus',this.OnFocus);
        this.on('blur',this.OnBlur);
        }*/
    },

    getAttribute: function (name) {
        return this.dom.getAttribute(name);
    },

    setAttribute: function (name, value) {
        return this.dom.setAttribute(name, value);
    },

    getAttributeLow: function (name) {
        var rv = this.getAttribute(name);
        if (rv)
            rv = rv.toLowerCase();
        return rv;
    },

    getAttributeNumber: function (name, def) {
        def = Ext.isDefined(def) ? def : -1;
        var attr = this.getAttribute(name);
        var rv = Number(Ext.isEmpty(attr) ? def : attr);
        return isNaN(rv) ? def : rv;
    },

    getAttributeBool: function (name) {
        var v = this.getAttribute(name);
        if (v === null || v === undefined || v === false || v === 0 || v === '0')
            return false;

        v = v.toLowerCase();
        if (v === 'false')
            return false;

        return true;
    },

    GetEleTypeIndex: function () {
        return this.getAttributeNumber('xform_eletype_index');
    },

    SetEleTypeIndex: function (index) {
        return this.setAttribute('xform_eletype_index', index);
    },

    GetXEleIndex: function (force) {
        if (force || !Ext.isDefined(this.xelIndex))
            this.xelIndex = this.getAttributeNumber('xform_xele_index');
        return this.xelIndex;
    },

    SetXEleIndex: function (index) {
        this.xelIndex = index;
        this.setAttribute('xform_xele_index', index);
    },

    GetDynamicArea: function () {
        return this.getAttribute('dynamicarea');
    },

    GetDataSource: function () {
        return this.getAttribute('xdatasource');
    },

    GetDataBind: function () {
        return this.getAttribute('xdatabind');
    },

    GetExp: function () {
        return this.getAttribute('express');
    },

    GetDisableExp: function () {
        return this.getAttribute('disableexpress');
    },

    GetHiddenExp: function () {
        return this.getAttribute('hiddenexpress');
    },

    GetMap: function () {
        return this.getAttribute('datamap');
    },

    GetTypeLow: function () {
        return this.getAttributeLow('type');
    },

    GetName: function () {
        return this.dom.name;
    },

    GetXTypeLow: function () {
        return this.getAttributeLow('xtype');
    },

    GetMultiSelect: function () {
        var v = this.getAttributeLow('multiselect');
        return String.Equ(v, 'true');
    },

    GetAppendModelLow: function () {
        return this.getAttributeLow('appendmode');
    },

    GetValueToDisplayText: function () {
        return this.getAttribute('valuetodisplaytext');
    },

    GetLen: function () {
        return this.getAttributeNumber('len', -1);
    },

    GetFormat: function () {
        return this.getAttribute('format');
    },

    GetSetValueFunc: function () {
        return this.getAttribute('setvaluefunc');
    },

    GetGetValueFunc: function () {
        return this.getAttribute('getvaluefunc');
    },

    GetInitFunc: function () {
        return this.getAttribute('initfunc');
    },

    GetSetDisableFunc: function () {
        return this.getAttribute('setdisablefunc');
    },

    GetBlockStartRowIndex: function (blockIndex, dynamicArea) {
        if (!dynamicArea)
            dynamicArea = this.GetEleType().GridDefine.DynamicArea;
        return dynamicArea.startRowIndex + blockIndex * dynamicArea.rows;
    },

    GetBlockEndRowIndex: function (blockIndex, dynamicArea) {
        if (!dynamicArea)
            dynamicArea = this.GetEleType().GridDefine.DynamicArea;
        return dynamicArea.startRowIndex + blockIndex * dynamicArea.rows + dynamicArea.rows - 1;
    },

    GetBlockIndexFromRowIndex: function (rowIndex) {
        var da = this.GetEleType().GridDefine.DynamicArea;
        var rv = Math.floor((rowIndex - da.startRowIndex) / da.rows);
        if (rv < 0 || rv >= this.Blocks.length)
            rv = -1;
        return rv;
    },

    GetElDesc: function () {
        var desc = this.dom.id || this.dom.name;
        if (!desc) {
            desc = this.outerHTML();
            if (desc.length >= 300) {
                desc = desc.substring(0, 297) + '...';
            }
        }
        return desc;
    },

    GetEleType: function () {
        if (!Ext.isDefined(this.elType)) {
            var index = this.GetEleTypeIndex();
            this.elType = index == -1 ? null : YZSoft.XForm.Agent.EleTypes[index];
        }

        return this.elType;
    },

    GetNextSibling: function () {
        return new YZSoft.XForm.Element(this.dom.nextSibling, false);
    },

    DOMGetRowCount: function () {
        var rows = this.dom.rows;
        return rows ? rows.length : 0;
    },

    DOMGetBlockCount: function () {
        var elType = this.GetEleType();
        if (!elType || !elType.GridDefine)
            return 0;

        var d = elType.GridDefine.DynamicArea;
        return (this.DOMGetRowCount() - d.startRowIndex - d.postFixRows) / d.rows;
    },

    //filter : default - true
    DOMGetBlockEles: function (blockIndex, filter, reg) {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        var elType = this.GetEleType();
        if (!elType || !elType.GridDefine)
            return [];

        var d = elType.GridDefine.DynamicArea;
        var startRowIndex = this.GetBlockStartRowIndex(blockIndex, d);

        var rvall = [];
        var rows = this.dom.rows;
        for (var i = 0; i < d.rows; i++) {
            var row = rows[startRowIndex + i];
            rvall.push(row);
            var domels = row.getElementsByTagName('*');
            for (var j = 0; j < domels.length; j++) //concat对domels不起作用
                rvall.push(domels[j]);
        }

        if (filter === false)
            return rvall;

        var rv = [];
        if (!reg) {
            for (var i = 0; i < rvall.length; i++) {
                var xel = x.Element.TryGetChechedEle(rvall[i]);
                if (xel)
                    rv.push(xel);
            }
        }
        else {
            for (var i = 0; i < rvall.length; i++) {
                var xel = new x.Element(rvall[i], true);
                var et = xel.GetEleType();
                if (!et)
                    continue;

                rv.push(xel);
                xa.Eles.push(xel);
                xel.elType = et;
                xel.SetXEleIndex(xa.Eles.length - 1);
            }
        }

        return rv;
    },

    ParseDynamicArea: function (value) {
        if (!value)
            return null;

        var v = value.split(',');

        var rv = {};
        rv.startRowIndex = Number(v[0]);
        rv.rows = Number(v[1]);

        if (isNaN(rv.startRowIndex) || isNaN(rv.rows) || rv.rows == 0)
            YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Grid_IncorrectDynArea'), value);

        var tableRows = this.DOMGetRowCount();
        if (rv.startRowIndex >= tableRows)
            YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Grid_StartRowIndexOver'), value);

        if (rv.startRowIndex + rv.rows > tableRows)
            rv.rows = tableRows - rv.startRowIndex;

        rv.postFixRows = tableRows - (rv.startRowIndex + rv.rows);

        return rv;
    },

    ParseGridDefine: function (dynAreaAttr) {
        var x = YZSoft.XForm;

        var dynamicArea = this.ParseDynamicArea(dynAreaAttr);
        if (!dynamicArea)
            return null;

        var r = { DynamicArea: dynamicArea };
        r.GridSelectAreaWidth = 13;
        r.GridHOverDisplaySpace = Ext.isSafari ? 1 : 0;

        var v = this.getAttributeLow('showoneblockalways');
        var v1 = this.getAttributeLow('deletelastrow');
        r.ShowOneBlockAlways = (v == 'true' || v1 == 'denied');

        v = this.getAttributeLow('menudock');
        r.MenuDock = v == 'left' ? x.MenuDock.Left : x.MenuDock.Right;

        v = this.getAttributeLow('emptygrid');
        r.EmptyGrid = v == 'keepempty' ? x.EmptyGrid.KeepEmpty : x.EmptyGrid.AutoAppendOneBlock;

        return r;
    },

    ParseDSName: function (str) {
        return String.Equ(str, 'default') ? '' : str ? str : '';
    },

    ParseBufferType: function (str) {
        return String.Equ(str, 'runtimeupdate') ? YZSoft.XForm.BufferType.RuntimeUpdate : YZSoft.XForm.BufferType.Buffer;
    },

    ParseFilter: function (str) {
        if (!str)
            return null;

        var u = YZSoft.HttpUtility;
        var rv = { kvs: [], vars: [] };
        var segs = str.split(',') || [];
        Ext.each(segs, function (seg) {
            var kv = u.ParseKeyValue(seg, '->');
            kv.key = u.AttrDecode(kv.key);
            var v = u.AttrDecode(kv.value) || '';
            var vseg = v.split(',') || [];
            kv.value = vseg[0];
            kv.cmp = vseg[1] || '';
            if (kv.key) {
                kv.vr = YZSoft.XForm.Agent.GetVar(this, kv.value);
                rv.kvs.push(kv);
                rv.vars.push(kv.vr);
            }
        }, this);
        return rv.kvs.length == 0 ? null : rv;
    },

    ParseMap: function (str, elType) {
        var x = YZSoft.XForm;
        elType = elType || {};

        if (!str || (elType.Type == x.EleTypes.Table && !elType.DataSource))
            return null;

        var u = YZSoft.HttpUtility;
        var rv = { kvs: [], vars: [] };
        var segs = str.split(';') || [];
        Ext.each(segs, function (seg) {
            var kv = u.ParseKeyValue(seg, '->');
            kv.key = u.AttrDecode(kv.key);
            kv.value = u.AttrDecode(kv.value);
            if (kv.key) {
                kv.vr = YZSoft.XForm.Agent.GetVar(this, kv.value);
                rv.kvs.push(kv);
                rv.vars.push(kv.vr);
            }
        }, this);
        return rv.kvs.length == 0 ? null : rv;
    },

    ParseDataSource: function (value, elType) {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        if (!value || (elType.Type == x.EleTypes.Table && !elType.GridDefine))
            return null;

        var u = YZSoft.HttpUtility;
        var dc = u.AttrDecode;
        var ds = {
            DS: '',
            Type: x.DSType.Table,
            Filter: null,
            OrderBy: null,
            BufferType: x.BufferType.Buffer
        };

        var segs = value.split(';') || [];
        for (var i = 0; i < segs.length; i++) {
            var seg = segs[i];
            var kv = u.ParseKeyValue(seg, ':', true);
            switch (kv.key) {
                case 'datasource':
                    ds.DS = this.ParseDSName(dc(kv.value));
                    break;
                case 'tablename':
                    ds.TableName = dc(kv.value);
                    ds.ID = ds.TableName;
                    ds.Type = x.DSType.Table;
                    break;
                case 'procedurename':
                    ds.ProcedureName = dc(kv.value);
                    ds.ID = ds.ProcedureName;
                    ds.Type = x.DSType.Procedure;
                    break;
                case 'filter':
                    ds.Filter = this.ParseFilter(kv.value);
                    break;
                case 'filtercolumn':
                    ds.FilterColumn = kv.value;
                    break;
                case 'displaycolumn':
                    ds.DisplayColumn = kv.value;
                    break;
                case 'orderby':
                    ds.OrderBy = dc(kv.value);
                    break;
                case 'buffertype':
                    ds.BufferType = this.ParseBufferType(dc(kv.value));
                    break;
            }
        }

        if (ds.FilterColumn) {
            ds.Filter = ds.Filter || { kvs: [], vars: [] };
            elType.sDataBind = elType.sDataBind || xa.NewDataBind();
            var kv = { key: ds.FilterColumn, value: elType.sDataBind, vr: xa.GetVar(this, elType.sDataBind) };
            ds.Filter.kvs.push(kv);
            ds.Filter.vars.push(kv.vr);
        }

        if ((ds.Type == x.DSType.Table && !ds.TableName || ds.Type == x.DSType.Procedure && !ds.ProcedureName) && elType.Type != x.EleTypes.Button)
            return null;

        if (ds.Type == x.DSType.Procedure) {
            if (!ds.Filter)
                ds.BufferType = x.BufferType.Buffer;
            else
                ds.BufferType = x.BufferType.RuntimeUpdate;
        }
        else {
            if (elType.Type == x.EleTypes.Button ||
                elType.Type == x.EleTypes.Table ||
                elType.Type == x.EleTypes.TextBox ||
                elType.Type == x.EleTypes.TextArea)
                ds.BufferType = x.BufferType.RuntimeUpdate;
            else if (!ds.Filter)
                ds.BufferType = x.BufferType.Buffer;
        }

        return ds;
    },

    ExpandUpdater: function (ups, upidxs, up) {
        var xa = YZSoft.XForm.Agent;
        var elType = this.GetEleType();
        if (!elType || !elType.affectTo)
            return;

        var afts = elType.affectTo[up.tag] || [];
        for (var j = 0; j < afts.length; j++) {
            var aft = afts[j];
            var cels = this.GetElesFromPath(aft.path);
            for (var k = 0; k < cels.length; k++) {
                var cel = cels[k];
                if (xa.UpdaterArrayAddExt(ups, upidxs, { xel: cel, tag: aft.tag, src: aft.src }).NewTag)
                    cel.ExpandUpdater(ups, upidxs, up);
            }
        }
    },

    GetElesFromPath: function (path, startIndex) {
        startIndex = startIndex || 0;
        var x = YZSoft.XForm;
        var ns = [this.ParentBlock];

        for (var i = startIndex; i < path.length; i++) {
            var idx = path[i];
            if (idx == '.') {
                ns[0] = ns[0].ParentElement.ParentBlock;
            }
            else {
                var newns = [];
                var c1 = ns.length;
                for (var j = 0; j < c1; j++) {
                    var n = ns[j];
                    if (n.NodeType == x.NodeType.Block)
                        newns.push(n.Eles[idx]);
                    else {
                        var bs = n.Blocks, c2 = bs.length;
                        for (var k = 0; k < c2; k++)
                            newns.push(bs[k].Eles[idx])
                    }
                }
                ns = newns;
            }
        }
        return ns;
    },

    GetRawValue: function () {
        var x = YZSoft.XForm;
        var tps = x.EleTypes;
        var et = this.GetEleType();

        if (et.GetValueFunc)
            return et.GetValueFunc(this.dom, et.CanWrite());

        if (et.IsGroup) {
            if (et.Type == x.EleTypes.CheckBox) {
                var xels = this.mxel.GroupEles || [];
                var vs = [];
                for (var i = 0; i < xels.length; i++) {
                    var chk = xels[i];
                    if (chk.dom.checked)
                        vs.push(chk.getAttribute('checkvalue') || chk.dom.value); //checkvalue 为了与老版本兼容 value没设也为on
                }
                return vs.join(',');
            }
            else if (et.Type == x.EleTypes.Radio) {
                var xels = this.mxel.GroupEles || [];
                for (var i = 0; i < xels.length; i++) {
                    var chk = xels[i];
                    if (chk.dom.checked)
                        return chk.dom.value;
                }
                return '';
            }
        }

        switch (et.Type) {
            case tps.CheckBox:
                return this.dom.checked ? 1 : 0;
            case tps.TextBox:
            case tps.TextArea:
            case tps.Select:
                return this.dom.value;
            case tps.Label:
                return this.dom.innerHTML;
            case tps.LineNo:
                if (et.sTagNameLow == x.tagNames.label)
                    return this.dom.innerHTML;
                else
                    return this.dom.value;
            default:
                var vatt = this.getAttribute('ValueAttr');
                vatt = vatt || 'value';
                return this.getAttribute(vatt);
        }
    },

    GetValue: function () {
        var v = this.GetRawValue();
        var et = this.GetEleType();
        if (et && et.InputChecker && !et.GetValueFunc)
            v = et.InputChecker.RemoveFormat(v);
        return v;
    },

    SetRawValue: function (v) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var tps = x.EleTypes;
        var et = this.GetEleType();
        var tpv = typeof v;
        v = (tpv === 'undefined' || (tpv === 'number' && isNaN(v))) ? '' : v;

        if (et.SetValueFunc) {
            et.SetValueFunc(this.dom, v, et.CanWrite());
            return;
        }

        if (et.IsGroup) {
            if (et.Type == x.EleTypes.CheckBox) {
                var xels = this.mxel.GroupEles || [];
                var vs = (v || '').split(',');
                for (var i = 0; i < xels.length; i++) {
                    var chk = xels[i];
                    var chkvalue = chk.getAttribute('checkvalue') || chk.dom.value; //checkvalue 为了与老版本兼容 value没设也为on
                    chk.dom.checked = xa.StringArrayContains(vs, chkvalue);
                }
            }
            else if (et.Type == x.EleTypes.Radio) {
                var xels = this.mxel.GroupEles || [];
                for (var i = 0; i < xels.length; i++) {
                    var chk = xels[i];
                    if (String.Equ(chk.dom.value, v)) {
                        chk.dom.checked = true;
                        break;
                    }
                }
            }
            return;
        }

        switch (et.Type) {
            case tps.CheckBox:
                this.dom.checked = !(!v || String.Equ(v, '0') || String.Equ(v, 'off') || String.Equ(v, 'false'));
                break;
            case tps.TextBox:
            case tps.Select:
                this.dom.value = v;
                break;
            case tps.TextArea:
                this.dom.value = v; //v.replace(/<br \/>/g,'\n')

                //IE bug修复:只显示一行
                //在问题表单的JS中加一行：YZSoft.XForm.Agent.TextAreaFix = 1;
                if (Ext.isIE && xa.TextAreaFix) {
                    var th = this.dom.offsetHeight;
                    this.dom.style.height = (th + 1) + 'px';

                    var restoreFunc = function () {
                        this.dom.style.height = th + 'px';
                    }
                    restoreFunc.defer(10, this);
                }
                break;
            case tps.Label:
                this.dom.innerHTML = v;
                break;
            case tps.A:
                this.setAttribute('href', v);
                break;
            case tps.LineNo:
                if (et.sTagNameLow == x.tagNames.label)
                    this.dom.innerHTML = v;
                else
                    this.dom.value = v;
                break;
            default:
                var vatt = this.getAttribute('ValueAttr');
                vatt = vatt || 'value';
                this.setAttribute(vatt, v);
        }
    },

    SetValue: function (v) {
        var et = this.GetEleType();
        if (et && et.InputChecker && !et.SetValueFunc) //et有可能不存在，例:ValueToDisplayText的显示textbox
            v = et.InputChecker.GetFormattedValue(v);
        this.SetRawValue(v);
    },

    SetVisible: function (v) {
        this.dom.style.display = v ? '' : 'none';
    },

    SetDisable: function (v) {
        v = v !== false;
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var tps = x.EleTypes;
        var et = this.GetEleType();

        var xels
        if (et.IsGroup)
            xels = this.mxel.GroupEles || [];
        else
            xels = [this];

        for (var i = 0; i < xels.length; i++) {
            var xel = xels[i];

            if (et.SetDisableFunc) {
                et.SetDisableFunc(xel.dom, v);
                return;
            }

            //验证组永远不要disable,否则对于明细表的内容，当第一行将验证disable后，后面的行都得不到验证
            if (et.Type == tps.Span || et.Type == tps.Label)
                return;

            var rdel = (et.Type == tps.TextBox && et.sDataSource) ? xel.dom.nextSibling : xel.dom;
            if (!xa.Params.ReadOnly) {
                var css = ((v ? et.DisableCss : et.NormalCss) || '').trim();
                css = css || et.NormalCss || xel.dom.className;
                rdel.className = css;
            }

            switch (et.Type) {
                case tps.TextBox:
                case tps.TextArea:
                    if (xel.GetDisableBehavior() == x.DisableBehavior.ReadOnly)
                        rdel.readOnly = v;
                    else
                        rdel.disabled = v;
                    break;
                case tps.Select:
                    rdel.disabled = v;
                    break;
                default:
                    rdel.disabled = v;
                    break;
            }
        }
    },

    ClearOptions: function () {
        this.dom.innerHTML = '';
    },

    CreateOption: function (text, value) {
        var opt = document.createElement('OPTION');
        opt.text = text;
        opt.value = value;
        return opt;
    },

    AddOption: function (opt) {
        Ext.isIE ? this.dom.add(opt) : this.dom.add(opt, null);
    },

    UpdateOptions: function () {
        var x = YZSoft.XForm;
        var xa = YZSoft.XForm.Agent;

        var elType = this.GetEleType();
        if (!elType.DataSource)
            return;

        var orgValue = this.GetValue();
        var table = this.GetTable(elType.DataSource);
        if (!table)
            return;

        this.ClearOptions();

        this.rows = xa.UniqueRows(table.rows, elType.ValueColumn);

        var ppt = false;
        if (elType.PromptText && this.rows.length != 1) {
            var r = {};
            r[elType.DisplayColumn] = elType.PromptText;
            r[elType.ValueColumn] = '';
            this.rows.splice(0, 0, r);
            ppt = true;
        }

        elType.rows = this.rows;

        for (var i = 0; i < this.rows.length; i++) {
            var r = this.rows[i];
            var v = r[elType.ValueColumn];
            var opt = this.CreateOption((i == 0 && ppt) ? elType.PromptText : r[elType.DisplayColumn], v);
            if (v == orgValue)
                opt.selected = true;
            this.AddOption(opt);
        }
    },

    CalcExpress: function (exp) {
        var xa = YZSoft.XForm.Agent;
        var p = exp.parser;
        var v = {};
        for (var i = 0; i < exp.vars.length; i++) {
            var vr = exp.vars[i];
            if (vr.def.memvar) {
                v[vr.def.name] = vr.def.value;
            }
            else {
                var xels = this.GetElesFromPath(vr.path) || [];
                if (xels.length == 1) {
                    v[vr.def.name] = xa.ConvertValue(xels[0].GetValue(), vr.def);
                }
                else {
                    var vs = v[vr.def.name] = []
                    for (var j = 0; j < xels.length; j++) {
                        vs.push(xa.ConvertValue(xels[j].GetValue(), vr.def));
                    }
                }
            }
        }

        var rv = p.evaluate(v);
        return rv;
    },

    DoMapSelect: function () {
        var et = this.GetEleType();
        var rows = this.rows || (et && et.rows);
        var row = (rows ? rows[this.dom.selectedIndex] : Ext.decode(this.dom[this.dom.selectedIndex].getAttribute('mapvalues'))) || {};
        var elType = this.GetEleType();
        if (elType.DataMap)
            this.DoMapSingline(row, elType.DataMap.kvs);
    },

    DoMapButton: function () {
        var rows = this.rows || [];
        var row = rows[0] || {};
        var elType = this.GetEleType();
        if (elType.DataMap)
            this.DoMapSingline(row, elType.DataMap.kvs);
    },

    DoMapTextBox: function () {
        var rows = this.rows || [];
        var row = rows[0] || {};
        var elType = this.GetEleType();
        if (elType && elType.DataSource && elType.DataSource.DisplayColumn) {
            var del = this.GetNextSibling().dom;
            var tag = del.tagName;
            var v = row[elType.DataSource.DisplayColumn] || '';
            if (tag == 'INPUT')
                del.value = v;
            else
                del.innerHTML = v;
        }
        if (elType && elType.DataMap)
            this.DoMapSingline(row, elType.DataMap.kvs);
    },

    DoMapSingline: function (r, kvs) {
        if (!kvs)
            return;

        this.row = r;
        this.mapedrow = (this.MapRows([r], kvs) || [])[0];

        for (var i = 0; i < kvs.length; i++) {
            var kv = kvs[i];
            var xels = this.GetElesFromPath(kv.vr.path) || [];

            for (var j = 0; j < xels.length; j++)
                xels[j].SetValue(r[kv.key]);
        }
    },

    MapRows: function (rows, kvs) {
        kvs = kvs || (this.GetEleType().DataMap || { kvs: [] }).kvs;
        var rvs = [];
        for (var i = 0; i < rows.length; i++) {
            var rr = {};
            rvs.push(rr);
            var r = rows[i];
            for (var j = 0; j < kvs.length; j++) {
                var kv = kvs[j];
                rr[(kv.value || '').toLowerCase()] = r[kv.key];
            }
        }
        return rvs;
    },

    GetTable: function (ds) {
        var x = YZSoft.XForm;
        var xa = YZSoft.XForm.Agent;
        var filter = this.GenFilter();
        var tbs = xa.ArrayFilter(xa.AssistTables, { DSType: ds.Type, DataSource: ds.DS, ID: ds.ID }) || [];
        for (var i = 0; i < tbs.length; i++) {
            var tb = tbs[i];
            if (xa.FilterContains(tb.Filter, filter)) {
                var rows = ds.Type != x.DSType.Procedure ? xa.ArrayFilter(tb.Rows, filter) : tb.Rows;
                return { rows: rows };
            }
        }

        var pm = xa.GenDSRequestParam(ds);
        pm.Filter = filter;
        tbs = xa.BatchLoadData([pm], true);
        return { rows: tbs[0].Rows };
    },

    GenFilter: function () {
        var elType = this.GetEleType();

        if (!elType.DataSource || !elType.DataSource.Filter)
            return null;

        var rv = null;
        var kvs = elType.DataSource.Filter.kvs;
        for (var i = 0; i < kvs.length; i++) {
            var kv = kvs[i];
            var xels = this.GetElesFromPath(kv.vr.path);
            if (xels && xels.length >= 1) {
                rv = rv || {};
                rv[kv.key] = xels[0].GetValue();
            }
        }

        return rv;
    },

    GenValueChangeUpdater: function () {
        return [{ xel: this, tag: 'value', src: 'none'}];
    },

    GetBoundingClientRect: function () {
        var v = this.dom.getBoundingClientRect();
        return { left: v.left, top: v.top, right: v.right, bottom: v.bottom };
    },

    BlockFromRow: function (ri) {
        var et = this.GetEleType();
        var da = et.GridDefine.DynamicArea;
        var bi = Math.floor((ri - da.startRowIndex) / da.rows);
        return (bi < 0 || bi >= this.Blocks.length) ? -1 : bi;
    },

    SetVisible: function (visible) {
        if (this.GetVisible() != visible)
            this.InternalSetVisible(visible);
    },

    GetVisible: function () {
        var s = this.dom.style;
        var d = (s.display || '').toLowerCase();
        var v = (s.visibility || '').toLowerCase();
        return d != 'none' && v != 'hidden';
    },

    InternalSetVisible: function (visible) {
        this.dom.style.display = visible ? '' : 'none';
    },

    DeleteRows: function (startRowIndex, count) {
        for (var i = 0; i < count; i++)
            this.dom.deleteRow(startRowIndex);
    },

    InsertBlockPrivate: function (rowIndex, blockCount) {
        var x = YZSoft.XForm;
        var xa = YZSoft.XForm.Agent;
        var et = this.GetEleType();
        var gd = et.GridDefine;
        var da = gd.DynamicArea;

        //创建模板
        var tdiv = document.createElement('div');
        tdiv.innerHTML = gd.strhtml;
        var ttab = tdiv.firstChild;
        var trows = ttab.rows;

        //获得插入位置，为空表示在最末添加
        var rows = this.dom.rows;
        var insBf = rowIndex < rows.length ? rows[rowIndex] : null;
        var appBody = insBf ? null : (rows.length ? rows[rows.length - 1].parentNode : Ext.selectNode('tbody', this.dom) || this.dom);

        //执行插入
        for (var b = 0; b < blockCount; b++) {
            xa.RadioCounter = xa.RadioCounter ? xa.RadioCounter + 1 : 1;
            for (var r = 0; r < da.rows; r++) {
                var trow = trows[r];
                var nrow = trow.cloneNode(true);

                //解决IE Clone的BUG，不会Clone OPTION 的Selected属性
                var tels = trow.getElementsByTagName('SELECT');
                var nels = nrow.getElementsByTagName('SELECT');
                for (var i = 0; i < tels.length; i++) {
                    var tel = tels[i];
                    var nel = nels[i];
                    nel.value = tel.value;
                }

                //替换Radio名
                var nels = nrow.getElementsByTagName('INPUT');
                for (var i = 0; i < nels.length; i++) {
                    var nel = nels[i];
                    if (nel.type == 'radio') {
                        var nname = nel.name + '_' + xa.RadioCounter;
                        if (Ext.isIE && (Ext.isIE6 || Ext.isIE7)) {
                            var nxel = new x.Element(nel, false);
                            var rel = nxel.Clone(nname);
                            nel.replaceNode(rel);
                        }
                        else {
                            nel.name = nname;
                        }
                    }
                }

                if (!insBf)
                    appBody.appendChild(nrow);
                else
                    insBf.parentNode.insertBefore(nrow, insBf);
            }

        }

        var bi = (rowIndex - da.startRowIndex) / da.rows;
        for (var b = 0; b < blockCount; b++) {
            var xels = this.DOMGetBlockEles(bi + b, true, true);
            var newBlock = new x.Block();
            newBlock.ParentElement = this;
            this.Blocks.splice(bi + b, 0, newBlock);
            xa.BuildXFormDOM(newBlock, xels);
        }
    },

    DeleteBlocksPrivate: function (blockIndex, blockCount, ups) {
        var xa = YZSoft.XForm.Agent;
        var et = this.GetEleType();
        var gd = et.GridDefine;
        var da = gd.DynamicArea;

        var c = (!blockCount || blockCount == -1) ? this.Blocks.length - blockIndex : blockCount;
        if (c == 0)
            return 0;

        var sri = this.GetBlockStartRowIndex(blockIndex, da);
        var eri = this.GetBlockEndRowIndex(blockIndex + c - 1, da);

        this.DeleteRows(sri, eri - sri + 1);

        for (var i = 0; i < c; i++)
            xa.DeleteBlockEles(this.Blocks[blockIndex + i]);

        for (var i = 0; i < c; i++)
            this.Blocks.splice(blockIndex, 1);

        xa.GenDeleteBlockUpdaters(this, ups)
        xa.GenLineNoUpdaters(this, blockIndex, ups);
        return c;
    },

    DeleteBlocks: function (blockIndex, blockCount) {
        var xa = YZSoft.XForm.Agent;

        var ups = [];
        this.DeleteBlocksPrivate(blockIndex, blockCount, ups);

        xa.ExpandUpdaters(ups);
        ups = xa.OrderUpdaters(ups);
        xa.DoUpdater(ups);
    },

    SetBlockCountPrivate: function (blockCount, ups) {
        if (blockCount < 0)
            return;

        if (this.Blocks.length > blockCount)
            this.DeleteBlocksPrivate(blockCount, this.Blocks.length - blockCount, ups);
        else if (this.Blocks.length < blockCount)
            this.AppendBlockPrivate(blockCount - this.Blocks.length, ups);
    },

    ClearBlocks: function () {
        var et = this.GetEleType();
        var gd = et.GridDefine;

        if (gd.ShowOneBlockAlways)
            this.DeleteBlocks(1, this.Blocks.length - 1);
        else
            this.DeleteBlocks(0, this.Blocks.length);
    },

    PasteBlockCopyPrivate: function (blockIndex, ups) {
        var xa = YZSoft.XForm.Agent;
        var gt = this.GetEleType();
        var gd = gt.GridDefine;

        if (!gt.CopyTable)
            return;

        xa.GenInsertBlockUpdaters(this.Blocks[blockIndex], gt.CopyTable, ups);
    },

    PasteBlockCopy: function (blockIndex) {
        var xa = YZSoft.XForm.Agent;
        var ups = [];

        this.PasteBlockCopyPrivate(blockIndex, ups);

        xa.ExpandUpdaters(ups);
        ups = xa.OrderUpdaters(ups);
        xa.DoUpdater(ups);
    },

    AppendCopy: function (blockIndex) {
        var xa = YZSoft.XForm.Agent;
        var et = this.GetEleType();

        et.CopyTable = xa.CopyBlock(this.Blocks[blockIndex]);
        var ups = [];
        var blockIndex = this.AppendBlockPrivate(1, ups);
        this.PasteBlockCopyPrivate(blockIndex, ups);

        xa.ExpandUpdaters(ups);
        ups = xa.OrderUpdaters(ups);
        xa.DoUpdater(ups);

        return blockIndex;
    },

    InsertBlockCommon: function (type, blockIndex, update, count, ups) {
        var xa = YZSoft.XForm.Agent;
        var et = this.GetEleType();
        var gd = et.GridDefine;
        var da = gd.DynamicArea;
        count = count || 1;

        switch (type) {
            case 0: //append
                this.InsertBlockPrivate(da.startRowIndex + this.Blocks.length * da.rows, count);
                blockIndex = this.Blocks.length - count;
                break;
            case 1: //insert above
                this.InsertBlockPrivate(this.GetBlockStartRowIndex(blockIndex, da), count);
                break;
            case 2: //insert below
                this.InsertBlockPrivate(this.GetBlockEndRowIndex(blockIndex, da) + 1, count);
                blockIndex = blockIndex + 1;
                break;
        }

        if (update)
            ups = ups || [];

        if (ups) {
            for (var i = 0; i < count; i++)
                xa.GenInsertBlockUpdaters(this.Blocks[blockIndex + i], null, ups);
            xa.GenLineNoUpdaters(this, blockIndex, ups);
        }

        if (update) {
            xa.ExpandUpdaters(ups);
            ups = xa.OrderUpdaters(ups);
            xa.DoUpdater(ups);
        }

        return blockIndex;
    },

    InsertBlockAbove: function (blockIndex, count) {
        return this.InsertBlockCommon(1, blockIndex, true, count);
    },

    InsertBlockBelow: function (blockIndex, count) {
        return this.InsertBlockCommon(2, blockIndex, true, count);
    },

    AppendBlock: function (count) {
        return this.InsertBlockCommon(0, null, true, count);
    },

    AppendBlockPrivate: function (count, ups) {
        return this.InsertBlockCommon(0, null, false, count, ups);
    },

    Clone: function (newName) {
        var tagName = this.dom.tagName;
        var htm;
        if (tagName == 'INPUT')
            htm = String.format('<{0} name="{1}" type="{2}"></{0}>', tagName, newName, this.dom.type);
        else
            htm = String.format('<{0} name="{1}"></{0}>', tagName, newName);

        var nel = document.createElement(htm);
        if (tagName == 'INPUT')
            nel.value = this.dom.value || '';

        var attrs = this.dom.attributes;
        for (var i = 0; i < attrs.length; i++) {
            var attr = attrs[i];
            if (!attr.specified)
                continue;

            var n = (attr.nodeName || '').toLowerCase();
            if (n == 'name')
                continue;

            nel.setAttribute(n, attr.nodeValue);
        }

        return nel;
    },

    DSToURLParam: function () {
        var et = this.GetEleType();
        if (!et)
            return {};

        var ds = et.DataSource;
        if (!ds)
            return {};

        var pms = {
            ds: ds.DS,
            table: ds.TableName,
            orderby: ds.OrderBy,
            fcols: ''
        };

        var fcols = [];
        var kvs = ds.Filter ? ds.Filter.kvs : [];
        for (var i = 0; i < kvs.length; i++) {
            var kv = kvs[i];
            var xel = (this.GetElesFromPath(kv.vr.path) || [])[0] || {};
            pms[kv.key] = xel.GetValue();
            pms['_cmp_' + kv.key] = kv.cmp;
            fcols.push(kv.key);
        }

        pms.fcols = fcols.join(';');
        return pms;
    },

    GetSelPos: function () {
        var rv = {};
        if (Ext.isDefined(this.dom.selectionStart)) {
            rv.s = this.dom.selectionStart;
            rv.l = this.dom.selectionEnd - rv.s;
        }
        else {
            var s = document.selection.createRange();
            rv.l = s.text.length;
            var t;
            if (this.GetEleType().Type == YZSoft.XForm.EleTypes.TextArea) {
                t = document.body.createTextRange();
                t.moveToElementText(this.dom);
            }
            else
                t = this.dom.createTextRange();

            s.setEndPoint("StartToStart", t);
            rv.s = s.text.length - rv.l;
        }
        rv.e = rv.s + rv.l;
        return rv;
    },

    OnFocus: function (e) {
        var et = this.GetEleType();
        if (!et || !et.InputChecker)
            return;

        et.InputChecker.OnFocus(this);
    },

    OnBlur: function (e) {
        var et = this.GetEleType();
        if (!et || !et.InputChecker)
            return;

        et.InputChecker.OnBlur(this);
    },

    IsRowModified: function (blockIndex) {
        var et = this.GetEleType();
        if (et && et.GridDefine && et.GridDefine.DefaultValues && Ext.isArray(this.Blocks) && this.Blocks.length >= 1) {
            var block = this.Blocks[blockIndex];
            if (!block.Key) {
                var vs = YZSoft.XForm.Agent.CopyBlock(block, false);
                return !(Ext.encode(vs) == Ext.encode(et.GridDefine.DefaultValues));
            }
        }
        return false;
    },

    GetDisableBehavior: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var da = x.DisableBehavior;
        var et = this.GetEleType();

        if (xa.Params.ReadOnly) {
            if (et.Type == x.EleTypes.TextBox || et.Type == x.EleTypes.TextArea) {
                if (et.sXTypeLow == 'datetime')
                    return da.Disable;
                return da.ReadOnly;
            }
            else {
                return da.Disable;
            }
        }
        else {
            return et.DisableBehavior;
        }
    },

    outerHTML: function () {
        return YZSoft.XForm.Element.outerHTML(this.dom);
    },

    GetContainer: function () {
        if (this._container === false)
            return null;

        if (!this._container)
            this._container = Ext.findParent('div.yz-inp-cnt', this.dom);

        if (!this._container)
            this._container = false;

        return this._container || null;
    },

    GetSpoor: function () {
        var cnt = this.GetContainer();
        if (!cnt)
            return null;

        if (cnt._spoor === false)
            return null;

        if (!cnt._spoor)
            cnt._spoor = Ext.selectNode('div.yz-spoor', cnt);

        if (!cnt._spoor)
            cnt._spoor = false;

        return cnt._spoor || null;
    }
});

YZSoft.XForm.Element.idSeed = 1;
__sys_xele = new YZSoft.XForm.Element();

YZSoft.XForm.Element.TryGetChechedEle = function(domel,create){
    if (!domel || !domel.getAttribute)
        return null;
    __sys_xele.dom = domel;
    var index = __sys_xele.GetXEleIndex(true);
    return index == -1 ? (create===true ? new YZSoft.XForm.Element(domel):null):YZSoft.XForm.Agent.Eles[index];
};

YZSoft.XForm.Element.outerHTML = function(node){
    if (!node)
        return null;

    var html = node.outerHTML;
    if (!html){
        var div = document.createElement('div');
        div.appendChild(node.cloneNode(true));
        html = div.innerHTML;
        div = null;
    }
    return html;
};

YZSoft.XForm.Block = Ext.extend(Ext.util.Observable, {
    constructor: function(config){
        this.NodeType = YZSoft.XForm.NodeType.Block;
        this.Eles = [];
        this.path = null;
        
        YZSoft.XForm.Block.superclass.constructor.call(this,config);
    },
    
    GetBlockID:function(){
        this._id = this._id || YZSoft.XForm.Agent.GetSeek('BlockID');
        return this._id;
    },
    
    GetPath:function(){
        if (this.path == null)
            this.path = YZSoft.XForm.Agent.GetPath(this);
        
        return this.path;
    },
    
    ToETBlock:function(){
	    if (this.ParentElement)
	        return this.ParentElement.GetEleType().Blocks[0];
        else
            return YZSoft.XForm.Agent.ETRootBlock;
	},
	
    CalcDynamicExpress:function(express){
        var x = YZSoft.XForm;
        var xa = x.Agent;
        
        var parser = Parser.parse(express);
        var expvars = parser ? parser.variables():null;
        var exp = {vars:xa.ToVarArray(null,expvars,false),parser:parser};
        
        var path = this.ToETBlock().GetPath().concat(0);
        for(var i = 0 ; i < exp.vars.length ; i++){
            var vr = exp.vars[i];
            if (!vr.def.memvar)
                vr.path = xa.ToRelativePath(path,vr.def.elType.GetPath());
        }
        
        var xel = new x.Element();
        xel.ParentBlock = this;
        var rv = xel.CalcExpress(exp);
        return rv;
    }
});

YZSoft.XForm.ElementTypeInfo = Ext.extend(Ext.util.Observable, {
    constructor: function (xel) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var v;

        var ltag = xel.dom.tagName.toLowerCase();
        var ltype = ltag == x.tagNames.input ? xel.GetTypeLow() : null;
        var config = {
            sTagNameLow: ltag,
            sTypeLow: ltype,
            sXTypeLow: xel.GetXTypeLow(),
            sDataBind: xel.GetDataBind(),
            Express: xel.GetExp(),
            DisableExpress: xel.GetDisableExp(),
            HiddenExpress: xel.GetHiddenExp(),
            sDynamicArea: ltag == x.tagNames.table ? xel.GetDynamicArea() : null
        };

        if (ltag == x.tagNames.select || (ltag == x.tagNames.input && ltype == x.typeNames.button)) {
            config.sDataSource = xel.GetDataSource();
            config.sDataMap = xel.GetMap();
        }
        else if (ltag == x.tagNames.table) {
            config.sDataSource = xel.GetDataSource();
            if (config.sDataSource)
                config.sDataMap = xel.GetMap();
        }
        else if (ltag == x.tagNames.textarea || (ltag == x.tagNames.input && ltype == x.typeNames.text)) {
            config.sDataSource = xel.GetValueToDisplayText();
            //if (config.sDataSource) XChildFormLink没DataSource但可以map
            config.sDataMap = xel.GetMap();
        }

        this.isValid = (config.sDataBind ||
            config.Express ||
            config.DisableExpress ||
            config.HiddenExpress ||
            (config.sTagNameLow == x.tagNames.table && config.sDynamicArea) ||
	        (config.sTagNameLow == x.tagNames.select && config.sDataSource) ||
	        (config.sTagNameLow == x.tagNames.input && config.sTypeLow == x.typeNames.button && config.sDataSource) ||
            (config.sDataMap && config.sTagNameLow != x.tagNames.table) ||
            config.sXTypeLow == x.xtypeNames.gridlineno) ? true : false;

        if (this.isValid) {
            this.sName = xel.GetName();
            this.NodeType = x.NodeType.Element;
            this.path = null;
            this.Orders = null;

            Ext.apply(this, config);

            if (this.sXTypeLow == x.xtypeNames.gridlineno)
                this.Type = x.EleTypes.LineNo;
            else {
                switch (this.sTagNameLow) {
                    case x.tagNames.select:
                        this.Type = x.EleTypes.Select;
                        this.PromptText = xel.getAttribute('prompttext');
                        this.DisplayColumn = xel.getAttribute('displaycolumn');
                        this.ValueColumn = xel.getAttribute('valuecolumn');
                        this.DisplayColumn = this.DisplayColumn || this.ValueColumn;
                        this.ValueColumn = this.ValueColumn || this.DisplayColumn;
                        break;
                    case x.tagNames.table:
                        this.Type = x.EleTypes.Table;
                        break;
                    case x.tagNames.input:
                        switch (this.sTypeLow) {
                            case x.typeNames.button:
                                this.Type = x.EleTypes.Button;
                                this.MultiSelect = xel.GetMultiSelect();
                                var appmodel = xel.GetAppendModelLow();
                                this.AppendModel = appmodel == 'append' ? x.AppendModel.Append : (appmodel == 'clearandappend' ? x.AppendModel.ClearAndAppend : x.AppendModel.RemoveEmptyRow);
                                break;
                            case x.typeNames.text:
                                this.Type = x.EleTypes.TextBox;
                                break;
                            case x.typeNames.radio:
                                this.Type = x.EleTypes.Radio;
                                break;
                            case x.typeNames.checkbox:
                                this.Type = x.EleTypes.CheckBox;
                                break;
                        }
                        break;
                    case x.tagNames.textarea:
                        this.Type = x.EleTypes.TextArea;
                        break;
                    case x.tagNames.label:
                        this.Type = x.EleTypes.Label;
                        break;
                    case x.tagNames.span:
                        this.Type = x.EleTypes.Span;
                        break;
                    case x.tagNames.a:
                        this.Type = x.EleTypes.A;
                        break;
                }
            }

            this.NoCopy = this.Type == x.EleTypes.LineNo || xel.getAttributeBool('NoCopy');
            this.Len = xel.GetLen();
            this.DspFormat = xel.GetFormat();
            this.GridDefine = xel.ParseGridDefine(this.sDynamicArea);
            this.DataSource = xel.ParseDataSource(this.sDataSource, this);
            this.DataMap = xel.ParseMap(this.sDataMap, this);
            this.SingleMap = this.DataMap && !((this.Type == x.EleTypes.Button && this.MultiSelect) || this.Type == x.EleTypes.Table);
            this.SetValueFunc = xa.GetFunc(xel.GetSetValueFunc());
            this.GetValueFunc = xa.GetFunc(xel.GetGetValueFunc());
            this.InitFunc = xa.GetFunc(xel.GetInitFunc());
            this.SetDisableFunc = xa.GetFunc(xel.GetSetDisableFunc());
            this.DisableCss = xel.getAttribute('DisableCssClass');
            this.NormalCss = xel.getAttribute('NormalCssClass');

            v = xel.getAttributeLow('disablebehavior');
            this.DisableBehavior = v == 'readonly' ? x.DisableBehavior.ReadOnly : x.DisableBehavior.Disable;

            if (this.Type == x.EleTypes.Select && this.DataSource && (!this.DisplayColumn || !this.ValueColumn))
                YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_SelectNoDisplayValueColumn'), xel.GetElDesc());

            this.Compile(xel);

            YZSoft.XForm.ElementTypeInfo.superclass.constructor.call(this, config);
        }
    },

    Compile: function (xel) {
        var xa = YZSoft.XForm.Agent;
        this.affectFrom = null;

        for (var i = 0; i < YZSoft.XForm.ExpressTypes.length; i++) {
            var expType = YZSoft.XForm.ExpressTypes[i];

            var parser = Parser.parse(this[expType.define]);
            var expvars = parser ? parser.variables() : null;
            if (parser) {
                this.Expresses = this.Expresses || {};
                this.Expresses[expType.name] = { name: expType.name, type: expType, vars: xa.ToVarArray(xel, expvars), parser: parser };
            }
        }
    },

    GetPath: function () {
        if (this.path == null)
            this.path = YZSoft.XForm.Agent.GetPath(this);

        return this.path;
    },

    CanWrite: function () {
        return !(this.DataBind && this.DataBind.DataColumn && this.DataBind.DataColumn.Writeable === false)
    },

    GetDefaultType: function () {
        if (this.sXTypeLow == 'datetime')
            return YZSoft.XForm.DataType.String;
    }
});

YZSoft.XForm.Agent = {
    Vars: {},
    EleTypes: [],
    Eles: [],
    FormTables: [],
    AssistTables: [],
    RootBlock: new YZSoft.XForm.Block(),
    ETRootBlock: new YZSoft.XForm.Block(),
    UserFuncs: {},

    RegistFunc: function (name, func) {
        YZSoft.XForm.Agent.UserFuncs[name] = func;
    },

    GetFunc: function (name) {
        name = (name || '').trim();
        if (name) {
            try {
                var func = YZSoft.XForm.Agent.UserFuncs[name];
                if (!func) {
                    func = eval(name);
                    YZSoft.XForm.Agent.RegistFunc(name, func);
                }
                return func;
            }
            catch (e) {
            }
        }
    },

    InitEnv: function () {
        var xa = YZSoft.XForm.Agent;

        xa.sDataProviderURL = rootUrl + 'YZSoft/BPM/XMLService/DataProvider.ashx';
        xa.sPostURL = rootUrl + 'YZSoft/BPM/XMLService/Post.ashx';
        xa.sBaseUrl = rootUrl + 'YZSoft/Forms/';

        var qs = document.location.search.trim();
        if (qs.charAt(0) == '?')
            qs = qs.substring(1);

        var s = Ext.urlDecode(qs, true);
        var p = xa.Params = {};

        p.Share = s.share == '1';
        p.ProcessName = s.pn;
        p.ProcessVersion = ProcessVersion; //js全局变量
        p.StepID = Number(s.pid || -1);
        p.TaskID = Number(s.tid || -1);
        p.Owner = s.owner;
        p.Ver = Number(s.ver || -1);
        p.DraftGuid = s.did;
        p.AppName = s.app;
        p.FormState = s.formstate;
        p.Key = s.key;

        var m = YZSoft.XForm.Model;
        if (p.Ver != -1) p.Model = m.Snapshot;
        else if (p.StepID != -1) p.Model = p.Share ? m.Share : m.Process;
        else if (p.TaskID != -1) p.Model = m.Read;
        else if (p.AppName) p.Model = m.App;
        else if (p.DraftGuid) p.Model = m.Draft;
        else if (p.ProcessName) p.Model = m.Post;
        else p.Model = m.Form;

        xa.FirstTimeUse = (p.Model == m.Post || (p.Model == m.App && !p.Key));
    },

    CatchEleTypes: function (eles) {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        var len = eles.length;
        for (var i = 0; i < len; i++) {
            var xel = new x.Element(eles[i], true);
            var net = et = new x.ElementTypeInfo(xel);
            et.xel = xel;

            if (et.isValid) {
                if (et.Type == x.EleTypes.Radio) {
                    et = xa.ArrayContains(xa.EleTypes, { Type: et.Type, sName: et.sName }) || et;
                    et.IsGroup = true;
                }
                else if (et.Type == x.EleTypes.CheckBox) {
                    var et = xa.ArrayContains(xa.EleTypes, { Type: et.Type, sDataBind: et.sDataBind }) || et;
                    //if (net != et || xel.getAttribute('checkvalue') || xel.dom.value != 'on') //为了与checkvalue老版本兼容,iPad safari xel.dom.value 为空，其它浏览器为"on"
                    if (net != et || xel.getAttribute('checkvalue'))
                        et.IsGroup = true;
                }

                if (!('index' in et)) {
                    xa.EleTypes.push(et);
                    et.index = xa.EleTypes.length - 1;
                    et.DataBind = xa.RegisterVar(xel, et.sDataBind, et);
                }
                xel.SetEleTypeIndex(et.index);
                xel.elType = et;

                var nlen = xa.Eles.push(xel);
                xel.SetXEleIndex(nlen - 1);
            }
        }

        for (var varname in xa.Vars) {
            var vr = xa.Vars[varname];
            if (!vr.memvar && !vr.elType) {
                if (vr.xel)
                    YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_DependencyNotExist'), vr.xel.GetElDesc(), vr.name);
                else
                    YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_VarNotExist'), vr.name);
            }
        }
    },

    ApplayDataControlInfo: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var xels = xa.Eles;
        var len = xels.length;
        for (var i = 0; i < len; i++) {
            var xel = xels[i];
            var t = xel.GetEleType();
            var dc = t.DataBind ? t.DataBind.DataColumn : null;
            if (dc) {
                if (dc.Writeable === false)
                    xel.SetDisable(true);

                if (dc.ShowSpoor && xel.GetVisible()) {
                    var domcnt = xel.GetContainer();
                    if (domcnt != null) {
                        elcnt = new Ext.Element(domcnt, true);
                        elcnt.addClass('yz-inp-cnt-spoor');
                    }
                }

                if (dc.Type == x.DataType.String && dc.Length != -1) {
                    if (xel.put_maxLength)
                        xel.put_maxLength(dc.Length);
                }
            }
        }
    },

    BuildXFormDOM: function (block, xels) {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        for (var i = 0; i < xels.length; i++) {
            var xel = xels[i];
            if (xel.catched)
                continue;

            var et = xel.GetEleType();
            if (!et)
                continue;

            xel.ParentBlock = block;
            if (!et.IsGroup) {
                block.Eles.push(xel);
            }
            else {
                var mxel = null;
                for (var j = block.Eles.length - 1; j >= 0; j--) {
                    if (block.Eles[j].GetEleType() === et) {
                        mxel = block.Eles[j];
                        break;
                    }
                }

                if (!mxel) {
                    mxel = xel;
                    mxel.GroupEles = [];
                    block.Eles.push(mxel);
                }

                mxel.GroupEles.push(xel);
                xel.mxel = mxel;
            }
            xel.catched = true;

            if (et.GridDefine) {
                var blockCount = xel.DOMGetBlockCount();
                for (var j = 0; j < blockCount; j++) {
                    var cxels = xel.DOMGetBlockEles(j);

                    xel.Blocks = xel.Blocks || [];
                    var newBlock = new x.Block();
                    newBlock.ParentElement = xel;
                    xel.Blocks.push(newBlock);

                    xa.BuildXFormDOM(newBlock, cxels);
                }
            }
        }
    },

    CopyEleTypeDOMFromXFormDOM: function (block, etblock) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        block = block || xa.RootBlock;
        etblock = etblock || xa.ETRootBlock;

        for (var i = 0; i < block.Eles.length; i++) {
            var xel = block.Eles[i];
            var et = xel.GetEleType();
            if (!et)
                continue;

            et.index = i;
            et.ParentBlock = etblock;
            etblock.Eles.push(et);

            if (xel.Blocks) {
                for (var j = 0; j < xel.Blocks.length; j++) {
                    et.Blocks = et.Blocks || [];

                    var newBlock = new x.Block();
                    newBlock.index = et.Blocks.length;
                    newBlock.ParentElement = et;
                    et.Blocks.push(newBlock);

                    xa.CopyEleTypeDOMFromXFormDOM(xel.Blocks[j], newBlock);
                }
            }
        }
    },

    CreateAffect: function (src, tag, nof, not) {
        var xa = YZSoft.XForm.Agent;

        var tvr = tag.vr || {};
        tvr.src = src.prop;
        tvr.tag = tag.prop;
        tvr.path = xa.ToRelativePath(tag.path, src.path);
        tvr.elType = src.elType;
        tvr.ext = tag.ext;

        if (!nof) {
            var t = tag.elType;
            t.affectFrom = t.affectFrom || {};
            t.affectFrom[tag.prop] = t.affectFrom[tag.prop] || [];
            t.affectFrom[tag.prop].push(tvr);
        }

        if (src.elType && !not) { //非内存变量
            var svr = src.vr || {};
            svr.src = src.prop;
            svr.tag = tag.prop;
            svr.path = xa.ToRelativePath(src.path, tag.path);
            svr.elType = tag.elType;
            svr.ext = src.ext;

            var s = src.elType;
            s.affectTo = s.affectTo || {};
            s.affectTo[src.prop] = s.affectTo[src.prop] || [];
            s.affectTo[src.prop].push(svr);
        }
    },

    Compile: function (block) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        block = block || xa.ETRootBlock;

        //创建相互影响关系
        var blockPath = block.GetPath();
        for (var i = 0; i < block.Eles.length; i++) {
            var elType = block.Eles[i];
            var elPath = null;

            if (elType.Expresses) {
                for (var name in elType.Expresses) {
                    elType.affectFrom = elType.affectFrom || {};
                    elType.affectFrom[name] = elType.affectFrom[name] || [];

                    var exp = elType.Expresses[name];
                    var vars = exp.vars || [];

                    for (var j = 0; j < vars.length; j++) {
                        var vr = vars[j];
                        var etsrc = vr.def.elType;

                        if (elPath == null) {
                            elPath = [].concat(blockPath);
                            elPath.push(i);
                        }

                        var v2v = etsrc == elType && name == 'value';
                        var spath = etsrc ? etsrc.GetPath() : null;
                        xa.CreateAffect({ prop: 'value', path: spath, elType: etsrc }, { prop: name, path: elPath, elType: elType, vr: vr }, v2v, v2v);
                    }
                }
            }

            if (elType.DataSource && elType.DataSource.Filter) {
                elType.affectFrom = elType.affectFrom || {};
                elType.affectFrom['filter'] = elType.affectFrom['filter'] || [];

                var vars = elType.DataSource.Filter.vars;
                for (var j = 0; j < vars.length; j++) {
                    var vr = vars[j];
                    var etsrc = vr.def.elType;
                    if (etsrc == null) //内存变量
                        continue;

                    if (elPath == null) {
                        elPath = [].concat(blockPath);
                        elPath.push(i);
                    }

                    var spath = etsrc.GetPath();
                    var noaf = elType.Type == x.EleTypes.Button;
                    xa.CreateAffect({ prop: 'value', path: spath, elType: etsrc }, { prop: 'filter', path: elPath, elType: elType, vr: vr }, noaf, noaf);
                }
                if (elType.Type == x.EleTypes.Select) {
                    xa.CreateAffect({ prop: 'filter', path: elPath, elType: elType }, { prop: 'value', path: elPath, elType: elType });
                }
                else if (elType.Type == x.EleTypes.TextBox || elType.Type == x.EleTypes.TexArea) {
                    xa.CreateAffect({ prop: 'value', path: elPath, elType: elType }, { prop: 'filter', path: elPath, elType: elType });
                    xa.CreateAffect({ prop: 'filter', path: elPath, elType: elType }, { prop: 'map', path: elPath, elType: elType });
                }
            }

            if (elType.DataMap) {
                elType.affectFrom = elType.affectFrom || {};
                elType.affectFrom['map'] = elType.affectFrom['map'] || [];

                if (elPath == null) {
                    elPath = [].concat(blockPath);
                    elPath.push(i);
                }

                if (elType.Type == x.EleTypes.Select)
                    xa.CreateAffect({ prop: 'value', path: elPath, elType: elType }, { prop: 'map', path: elPath, elType: elType });
                else if (elType.Type == x.EleTypes.Table) {
                    elType.affectFrom['filter'] = elType.affectFrom['filter'] || [];
                    if (elType.affectFrom['filter'].length == 0)
                        xa.CreateAffect({ prop: 'value', path: elPath, elType: elType }, { prop: 'filter', path: elPath, elType: elType });
                    xa.CreateAffect({ prop: 'filter', path: elPath, elType: elType }, { prop: 'map', path: elPath, elType: elType });
                }

                var vars = elType.DataMap.vars;
                var nof = elType.Type == x.EleTypes.Button;
                for (var j = 0; j < vars.length; j++) {
                    var vr = vars[j];
                    var ettag = vr.def.elType;
                    if (ettag == null) //内存变量
                        continue;

                    if (elPath == null) {
                        elPath = [].concat(blockPath);
                        elPath.push(i);
                    }

                    var tpath = ettag.GetPath();
                    xa.CreateAffect({ prop: 'map', path: elPath, elType: elType, vr: vr }, { prop: 'value', path: tpath, elType: ettag, ext: { selType: elType} }, nof);

                    if (elType.Type == x.EleTypes.Button) {
                        elType.MaptoGrids = elType.MaptoGrids || [];
                        if (ettag.ParentBlock.ParentElement) {
                            var pitm = { elType: ettag.ParentBlock.ParentElement };
                            if (!xa.ArrayContains(elType.MaptoGrids, pitm)) {
                                pitm.path = xa.ToRelativePath(elPath, ettag.ParentBlock.ParentElement.GetPath());
                                elType.MaptoGrids.push(pitm);
                            }
                        }
                    }
                }
            }
            else if (elType.Type == x.EleTypes.Table && elType.GridDefine) {
                if (elPath == null) {
                    elPath = [].concat(blockPath);
                    elPath.push(i);
                }
                elType.affectFrom = elType.affectFrom || {};
                elType.affectFrom['filter'] = elType.affectFrom['filter'] || [];
                xa.CreateAffect({ prop: 'filter', path: elPath, elType: elType }, { prop: 'map', path: elPath, elType: elType });
            }

            if (elType.Blocks) {
                for (var j = 0; j < elType.Blocks.length; j++) {
                    xa.Compile(elType.Blocks[j]);
                }
            }
        }
    },

    BuildSetValueOrder: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        var ets = [].concat(xa.EleTypes);
        var len = ets.length;
        for (var i = 0; i < len; i++) {
            var et = ets[i];
            var af = et.affectFrom;
            et.taf = {};
            var t = et.taf;
            if (af) {
                for (var p in af)
                    t[p] = [].concat(af[p]);
            }
            t.value = t.value || [];
        }

        var idx = 1;
        while (ets.length != 0) {
            var bi = idx;
            for (var i = 0; i < ets.length; i++) {
                var et = ets[i];
                var af = et.taf || {};
                var am = 0;
                var remove = true;
                for (var p in af) {
                    var afc = af[p] || [];
                    for (var j = afc.length - 1; j >= 0; j--) {
                        var afi = afc[j];
                        if (!afi.elType || (afi.elType.Orders && afi.elType.Orders[afi.src]))
                            afc.splice(j, 1);
                    }

                    am += afc.length;
                    var pgdorders = ((et.ParentBlock || {}).ParentElement || { Orders: null }).Orders;
                    if (afc.length == 0 && (!pgdorders || pgdorders['map'])) {
                        et.Orders = et.Orders || {};
                        et.Orders[p] = idx;

                        delete af[p];
                        idx++;
                    }
                    else
                        remove = false;
                }

                if (am == 0 && remove) {
                    ets.splice(i, 1);
                    i--;
                }
            }

            if (idx == bi) {
                var a = [];
                for (var i = 0; i < ets.length; i++)
                    a.push(ets[i].xel.GetElDesc());
                YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_DepdencyDeadloop'), a.join(','));
            }
        }

        //debug.ShowOrderInfo();
    },

    RegisterVar: function (xel, varname, elType, autoRegist) {
        var nameLow = (varname || '').toLowerCase();
        if (!nameLow)
            return null;

        var vr = YZSoft.XForm.Agent.Vars[nameLow];
        if (vr) {
            //允许重复绑定
            //if (vr.elType && elType)
            //    YZSoft.Error.Throw('YZStrings.XFormAgent_重复绑定',varname);

            vr.elType = vr.elType || elType;
            vr.xel = vr.xel || xel;
        }
        else {
            autoRegist = autoRegist === false ? false : true;
            if (autoRegist) {
                vr = { nameLow: nameLow, name: varname, elType: elType, xel: xel };
                YZSoft.XForm.Agent.Vars[nameLow] = vr;
            }
            else
                YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_VarNotExist'), varname);
        }

        return vr;
    },

    RegisterMemVar: function (varname, value) {
        var nameLow = varname.toLowerCase();
        var vr = { nameLow: nameLow, name: varname, memvar: true, value: value };
        YZSoft.XForm.Agent.Vars[nameLow] = vr;
    },

    GetVar: function (xel, varname, autoRegist) {
        var vr = YZSoft.XForm.Agent.RegisterVar(xel, varname, null, autoRegist);
        return { def: vr };
    },

    ToVarArray: function (xel, srcArr, autoRegist) {
        var rv = [];
        srcArr = srcArr || [];

        for (var i = 0; i < srcArr.length; i++) {
            rv.push(YZSoft.XForm.Agent.GetVar(xel, srcArr[i], autoRegist));
        }

        return rv;
    },

    GetPath: function (obj) {
        var path = [];

        while (obj != null) {
            if (obj.NodeType == YZSoft.XForm.NodeType.Element)
                path.push(obj.index);
            obj = obj.ParentBlock || obj.ParentElement || null;
        }

        return path.reverse();
    },

    //返回path1到path2的相对路径
    ToRelativePath: function (path1, path2) {
        if (!path1 || !path2) //内存变量不需要相对地址
            return null;
        var count = Math.min(path1.length, path2.length) - 1; //避免就是自己的时候相对路径为空路径
        var equCount = 0;
        for (var i = 0; i < count; i++) {
            if (path1[i] != path2[i])
                break;
            equCount++;
        }

        var rv = [];
        for (var i = 0; i < path1.length - equCount - 1; i++)
            rv.push('.');

        for (var i = equCount; i < path2.length; i++)
            rv.push(path2[i]);

        return rv;
    },

    //一次Request加载多个表，以节省时间
    BatchLoadData: function (pms, sync, fn) {
        if (pms.length == 0)
            return;

        var x = YZSoft.XForm;
        var xa = x.Agent;
        var xe = YZSoft.util.xml;
        var url = xa.sDataProviderURL;
        var rv = {};

        pms = Ext.isArray(pms) ? pms : [pms];

        var timebegin = (new Date()).getTime();
        xa.Debug.LoadData = xa.Debug.LoadData || {};
        //转换参数
        var xmlData = xe.encode('Requests', { Params: pms });
        Ext.Ajax.request({
            method: 'POST',
            disableCaching: true,
            sync: sync,
            params: {},
            url: url,
            xmlData: xmlData,
            success: function (response) {
                rv = Ext.decode(response.responseText);
                if (!rv.success)
                    YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_LoadDataFailed'), rv.errorMessage);

                //加入缓存
                var tbs = [];
                for (var i = 0; i < rv.Tables.length; i++) {
                    var table = rv.Tables[i];
                    tbs.push((table.DataSource ? table.DataSource + ':' : '') + table.TableName + ',Rows:' + table.Rows.length);
                    if (table.FormTable) {
                        xa.FormTables.push(table);
                        var ismemvar = table.TableName == 'Global';
                        for (var j = 0; j < table.Columns.length; j++) {
                            var col = table.Columns[j];
                            col.ParentTable = table;
                            col.CType = col.Type;
                            col.Type = xa.ParseDataType(col.CType);

                            if (col.PrimaryKey || col.AutoIncrement) {
                                table.PrimaryColumns = table.PrimaryColumns || [];
                                table.PrimaryColumns.push(col);
                                col.FullNameLow = xa.CombinFieldName(table.DataSource, table.TableName, col.ColumnName);
                            }

                            if (ismemvar) {
                                var mvar = YZSoft.XForm.Agent.Vars[xa.CombinFieldName('', table.TableName, col.ColumnName)];
                                if (mvar)
                                    mvar.value = table.Rows[0][col.ColumnName];
                            }
                        }
                    }
                    else {
                        var pm = pms[table.Index];
                        table.Filter = pm.Filter||null;
                        table.DSType = pm.Type;
                        table.DataSource = pm.DataSource;
                        table.ID = pm.ID;
                        xa.AssistTables.push(table);
                    }
                }

                xa.Debug.LoadData[tbs.join(',')] = eval((new Date()).getTime() - timebegin);

                if (fn)
                    fn();
            },

            failure: function (response) {
                YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_HTTPGETERR'), url);
            }
        });

        return rv.Tables;
    },

    BufferFormData: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var m = YZSoft.XForm.Model;
        var p = xa.Params;
        var pms = [];
        var fpm

        switch (p.Model) {
            case m.Post:
                fpm = {
                    Method: 'GetFormPostData',
                    ProcessName: p.ProcessName,
                    ProcessVersion: p.ProcessVersion,
                    Owner: p.Owner
                };
                break;
            case m.Process:
            case m.Share:
                fpm = {
                    Method: 'GetFormProcessData',
                    PID: p.StepID
                };
                break;
            case m.Read:
                fpm = {
                    Method: 'GetFormReadData',
                    TID: p.TaskID
                };
                break;
            case m.Snapshot:
                fpm = {
                    Method: 'GetSnapshotData',
                    TID: p.TaskID,
                    Version: p.Ver
                };
                break;
            case m.Draft:
                fpm = {
                    Method: 'GetDraftData',
                    DraftID: p.DraftGuid
                };
                break;
            case m.App:
                fpm = {
                    Method: 'GetFormApplicationData',
                    ApplicationName: p.AppName,
                    FormState: p.FormState,
                    PrimaryKey: p.Key
                };
                break;
        }

        if (fpm) //m.Form模式 fpm为空
            pms.push(fpm);

        for (var i = 0; i < xa.EleTypes.length; i++) {
            var elType = xa.EleTypes[i];
            var ds = elType.DataSource;

            if (!ds || ds.BufferType != x.BufferType.Buffer)
                continue;

            var npm = xa.GenDSRequestParam(ds);
            if (!xa.ArrayContains(pms, npm))
                pms.push(npm);
        }

        xa.BatchLoadData(pms, true, function () { xa.DataBuffered = true; });
    },

    GenDSRequestParam: function (ds) {
        var x = YZSoft.XForm;

        var pm = {
            DataSource: ds.DS,
            ID: ds.ID,
            Type: ds.Type
        };

        switch (ds.Type) {
            case x.DSType.Table:
                pm.Method = 'GetUserDataTable';
                pm.TableName = ds.TableName;
                pm.OrderBy = ds.OrderBy;
                break;
            case x.DSType.Procedure:
                pm.Method = 'GetUserDataProcedure';
                pm.ProcedureName = ds.ProcedureName;
                break;
        }

        return pm;
    },

    UpdateStaticSelectOptions: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        var len = xa.Eles.length;
        for (var i = 0; i < len; i++) {
            var xel = xa.Eles[i];
            var elType = xel.GetEleType();

            if (elType.Type != x.EleTypes.Select ||
                !elType.DataSource ||
                elType.DataSource.Filter)
                continue;

            xel.UpdateOptions();
        }
    },

    ExpandUpdaters: function (ups) {
        var upidxs = {};
        for (var i = 0; i < ups.length; i++) {
            var up = ups[i];
            var id = up.xel ? up.xel.id : 0;
            var upidx = upidxs[id] = upidxs[id] || [];
            upidx.push(up);
        }

        for (var i = 0; i < ups.length; i++) {
            var up = ups[i];
            up.xel.ExpandUpdater(ups, upidxs, up);
        }

        ups.splice(0, ups.length);
        for (idx in upidxs) {
            var upidx = upidxs[idx];
            for (var i = 0; i < upidx.length; i++) {
                ups.push(upidx[i]);
            }
        }
    },

    DoUpdater: function (ups) {
        //var timebegin1 = (new Date()).getTime();
        var x = YZSoft.XForm;
        var xa = x.Agent;

        for (var cidx = 0; cidx < ups.length; ) {
            var u = ups[cidx++]; //shift IE上效率很低
            if (!u.xel.dom)
                continue;

            var t = u.xel.GetEleType();
            if (!t)
                continue;

            switch (u.tag) {
                case 'disable':
                    switch (u.src) {
                        case 'value':
                            if (t.CanWrite())
                                u.xel.SetDisable(u.xel.CalcExpress(t.Expresses.disable));
                            break;
                    }
                    break;
                case 'hide':
                    switch (u.src) {
                        case 'value':
                            u.xel.SetVisible(!u.xel.CalcExpress(t.Expresses.hide));
                            break;
                    }
                    break;
                case 'value':
                    switch (u.src) {
                        case 'set':
                        case 'default':
                            u.xel.SetValue(u.value);
                            break;
                        case 'value':
                            u.xel.SetValue(u.xel.CalcExpress(t.Expresses.value));
                            break;
                        case 'map':
                            if (!u.trigger)
                                continue;
                            var aff = t.affectFrom;
                            if (aff && aff.value) {
                                for (var i = 0; i < aff.value.length; i++) {
                                    var afi = aff.value[i];
                                    if (afi.ext && afi.ext.selType.SingleMap) {
                                        var mels = u.xel.GetElesFromPath(afi.path);
                                        for (var j = 0; j < mels.length; j++) {
                                            var mel = mels[j];
                                            var r = mel.mapedrow;
                                            if (r)
                                                u.xel.SetValue(r[t.DataBind.nameLow]);
                                        }
                                    }
                                }
                            }
                            break;
                    }
                    break;
                case 'filter':
                    switch (u.src) {
                        case 'set':
                            if (u.rows.length == 0 && t.GridDefine.EmptyGrid == x.EmptyGrid.AutoAppendOneBlock && t.GridDefine.AllowAddRecord)
                                u.rows.push({});

                            u.xel.rows = u.rows;
                            break;
                        case 'value':
                            if (t.Type == x.EleTypes.Select)
                                u.xel.UpdateOptions();
                            else if (t.Type == x.EleTypes.Table)
                                u.xel.rows = u.xel.MapRows(u.xel.GetTable(t.DataSource).rows);
                            else if (t.Type == x.EleTypes.TextBox || t.Type == x.EleTypes.TextArea)
                                u.xel.rows = u.xel.GetTable(t.DataSource).rows;
                            break;
                    }
                    break;
                case 'map':
                    if (t.Type == x.EleTypes.Select)
                        u.xel.DoMapSelect();
                    else if (t.Type == x.EleTypes.TextBox || t.Type == x.EleTypes.TextArea) {
                        u.xel.rows = u.rows || u.xel.rows;
                        u.xel.DoMapTextBox();
                    }
                    else if (t.Type == x.EleTypes.Table) {
                        //var timebegin = (new Date()).getTime();
                        ups.splice(0, cidx);
                        cidx = 0;

                        var rows = u.xel.rows || [];
                        u.xel.SetBlockCountPrivate(0);
                        u.xel.SetBlockCountPrivate(rows.length);

                        //xa.Debug.JS.Time1501 = eval((new Date()).getTime() - timebegin);
                        //timebegin = (new Date()).getTime();

                        var cups = [];
                        xa.GenDeleteBlockUpdaters(u.xel, cups);
                        for (var i = 0; i < cups.length; i++)
                            xa.UpdaterArrayAdd(ups, cups[i], true);

                        cups = [];
                        for (var i = 0; i < rows.length; i++)
                            xa.GenInsertBlockUpdaters(u.xel.Blocks[i], rows[i], cups, true, i);

                        //xa.Debug.JS.Time1502 = eval((new Date()).getTime() - timebegin);
                        //timebegin = (new Date()).getTime();

                        for (var i = 0; i < cups.length; i++)
                            ups.push(cups[i]);

                        //xa.Debug.JS.Time1503 = eval((new Date()).getTime() - timebegin);
                        //timebegin = (new Date()).getTime();

                        xa.ExpandUpdaters(ups);
                        //xa.Debug.JS.Time1504 = eval((new Date()).getTime() - timebegin);
                        //timebegin = (new Date()).getTime();

                        ups = xa.OrderUpdaters(ups);
                        //debug.ShowUpdaters(ups);

                        //xa.Debug.JS.Time1505 = eval((new Date()).getTime() - timebegin);
                    }
                    else if (t.Type == x.EleTypes.Button) {
                        if (!t.MultiSelect) {
                            u.xel.rows = u.rows;
                            u.xel.DoMapButton();
                        }
                        else {
                            ups.splice(0, cidx);
                            cidx = 0;

                            var rows = u.xel.MapRows(u.rows);

                            var gpaths = t.MaptoGrids || [];
                            for (var i = 0; i < gpaths.length; i++) {
                                var grids = u.xel.GetElesFromPath(gpaths[i].path) || [];

                                for (var j = 0; j < grids.length; j++) {
                                    var grid = grids[j];

                                    var sbi = 0;
                                    if (t.AppendModel == x.AppendModel.Append) {
                                        sbi = grid.Blocks.length;
                                        grid.SetBlockCountPrivate(grid.Blocks.length + rows.length);
                                    }
                                    else if (t.AppendModel == x.AppendModel.ClearAndAppend) {
                                        sbi = 0;
                                        grid.SetBlockCountPrivate(0);
                                        grid.SetBlockCountPrivate(rows.length);
                                    }
                                    else {
                                        if (grid.Blocks.length == 1 && !grid.Blocks[0].Key && !grid.IsRowModified(0)) {
                                            sbi = 0;
                                            grid.SetBlockCountPrivate(0);
                                            grid.SetBlockCountPrivate(rows.length);
                                        }
                                        else {
                                            sbi = grid.Blocks.length;
                                            grid.SetBlockCountPrivate(grid.Blocks.length + rows.length);
                                        }
                                    }

                                    var cups = [];
                                    xa.GenLineNoUpdaters(grid, sbi, cups);
                                    xa.GenDeleteBlockUpdaters(grid, cups);
                                    for (var k = 0; k < rows.length; k++)
                                        xa.GenInsertBlockUpdaters(grid.Blocks[sbi + k], rows[k], cups);

                                    for (var k = 0; k < cups.length; k++)
                                        xa.UpdaterArrayAdd(ups, cups[k], true);
                                }
                            }

                            xa.ExpandUpdaters(ups);
                            ups = xa.OrderUpdaters(ups);
                        }
                    }
                    break;
            }
        }
        //xa.Debug.JS.Time150A = eval((new Date()).getTime() - timebegin1);
    },

    InitFill: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        var rrow = {};
        for (var i = 0; i < xa.FormTables.length; i++) {
            var table = xa.FormTables[i];
            if (table.IsRepeatable) {
                var et = table.elType || {};
                if (xa.FirstTimeUse ? !et.DataSource : true) {
                    var ptable = table.ParentTable;
                    var prows = [];
                    if (ptable) {
                        for (var j = 0; j < ptable.Rows.length; j++) {
                            var prow = ptable.Rows[j].DumpRow;
                            if (prow)
                                prows.push(prow);
                        }
                    }
                    else {
                        prows.push(rrow);
                    }

                    for (var j = 0; j < prows.length; j++) {
                        var prow = prows[j]
                        var ctname = xa.CombinTableName(table.DataSource, table.TableName);
                        prow._sys_child_tables = prow._sys_child_tables || {};
                        prow._sys_child_tables[ctname] = prow._sys_child_tables[ctname] || [];
                    }
                }
            }

            for (var j = 0; j < table.Rows.length; j++) {
                var dr = table.Rows[j];

                var wrow = rrow;
                if (table.IsRepeatable) {
                    wrow = null;
                    var prow = rrow;
                    if (table.ParentTable) {
                        var pdr = xa.ArrayContains(table.ParentTable.Rows, { RelationRowGuid: dr['RelationParentRowGuid'] });
                        prow = pdr ? pdr.DumpRow : rrow;
                    }

                    var ctname = xa.CombinTableName(table.DataSource, table.TableName);
                    if (prow && prow._sys_child_tables && prow._sys_child_tables[ctname]) {
                        var wtab = prow._sys_child_tables[ctname]
                        wrow = {};
                        wtab.push(wrow);
                    }
                }

                if (wrow) {
                    for (var colName in dr) {
                        var name = xa.CombinFieldName(table.DataSource, table.TableName, colName);
                        var value = dr[colName];
                        wrow[name] = value;
                    }
                    dr.DumpRow = wrow;
                }
            }
        }

        var ups = [];
        xa.GenInsertBlockUpdaters(xa.RootBlock, rrow, ups);
        xa.ExpandUpdaters(ups);
        ups = xa.OrderUpdaters(ups);
        xa.DoUpdater(ups);
    },

    OrderSortFunc: function (up1, up2) {
        var et1 = up1.xel.GetEleType();
        var et2 = up2.xel.GetEleType();
        return (et1.Orders[up1.tag] || -1) - (et2.Orders[up2.tag] || -1);
    },

    OrderUpdaters: function (ups) {
        //return  ups.sort(YZSoft.XForm.Agent.OrderSortFunc); 慢，下面的方法快
        var rv = [];
        var upsteam = [];
        var l = ups.length;
        for (var i = 0; i < l; i++) {
            var upi = ups[i];
            var et = upi.xel.GetEleType();
            if (!et) continue; //例如开窗查询未设置DataMap
            var orderIndex = et.Orders[upi.tag] || -1;

            if (orderIndex == -1)
                rv.push(upi);
            else {
                upsteam[orderIndex] = upsteam[orderIndex] || []
                upsteam[orderIndex].push(upi);
            }
        }

        for (var i = 0; i < upsteam.length; i++) {
            var upsi = upsteam[i];
            if (upsi) {
                for (var j = 0; j < upsi.length; j++)
                    rv.push(upsi[j]);
            }
        }

        return rv;
    },

    CombinFieldName: function (dsName, tableName, colName) {
        return ((dsName ? (dsName + ':') : '') + tableName + '.' + colName || '').trim().toLowerCase();
    },

    CombinTableName: function (dsName, tableName) {
        return ((dsName ? (dsName + ':') : '') + tableName).trim().toLowerCase();
    },

    ArrayFilter: function (arr, filter, keepmatch) {
        keepmatch = Ext.isDefined(keepmatch) ? keepmatch : true;
        if (!arr)
            return null;

        if (!filter)
            return arr;

        var rv = [];
        for (var i = 0; i < arr.length; i++) {
            if (YZSoft.XForm.Agent.ObjectMatch(arr[i], filter) === keepmatch)
                rv.push(arr[i]);
        }

        return rv;
    },

    ArrayContains: function (arr, itm) {
        if (!arr || !itm)
            return false;

        for (var i = 0; i < arr.length; i++) {
            if (YZSoft.XForm.Agent.ObjectMatch(arr[i], itm))
                return arr[i];
        }

        return null;
    },

    StringArrayContains: function (arr, n) {
        if (!arr || !n)
            return false;

        for (var i = 0; i < arr.length; i++) {
            if (String.Equ(arr[i], n))
                return true;
        }

        return false;
    },

    ObjectMatch: function (row, filter) {
        if (row === filter)
            return true;

        for (var p in filter) {
            var v1 = filter[p];
            var v2 = row[p];

            if (typeof v1 == 'string' && typeof v2 == 'string') {
                v1 = (v1 || '').toLowerCase().trim();
                v2 = (v2 || '').toLowerCase().trim();
            }

            if (v1 != v2)
                return false;
        }
        return true;
    },

    FilterContains: function (filter1, filter2) {
        if (!filter1)
            return true;

        for (var p in filter2) {
            if (!(p in filter1))
                continue;

            var v1 = filter1[p];
            var v2 = filter2[p];

            if (typeof v1 == 'string' && typeof v2 == 'string') {
                v1 = (v1 || '').toLowerCase();
                v2 = (v2 || '').toLowerCase();
            }

            if (v1 != v2)
                return false;
        }

        for (var p in filter1) {
            if (!(p in filter2))
                return false;
        }

        return true;
    },

    UpdaterArrayAdd: function (ups, itm, cmpxel) {
        var x = YZSoft.XForm;
        if (!ups || !itm)
            return;

        var rv = { NewTag: false };
        var f = false;
        var len = ups.length;
        for (var i = 0; i < len; i++) {
            var upi = ups[i];
            if ((cmpxel === false || itm.xel == upi.xel) && (itm.tag == upi.tag)) {
                if (x.ValuePriority[itm.src] > x.ValuePriority[upi.src])
                    ups.splice(i, 1, itm);
                f = true;
                break;
            }
        }

        if (!f) {
            rv.NewTag = true;
            ups.push(itm);
        }

        return rv;
    },

    UpdaterArrayAddExt: function (ups, upidxs, itm) { //大数据量效率更高，优于UpdaterArrayAdd，特别是在IE上
        var x = YZSoft.XForm;
        if (!ups || !itm)
            return;

        var rv = { NewTag: false };
        var f = false;
        var id = itm.xel ? itm.xel.id : 0;
        var upidx = upidxs[id];

        if (upidx) {
            var len = upidx.length;
            for (var i = 0; i < len; i++) {
                var upi = upidx[i];
                if (itm.xel == upi.xel && itm.tag == upi.tag) {
                    if (x.ValuePriority[itm.src] > x.ValuePriority[upi.src])
                        upidx.splice(i, 1, itm);
                    f = true;
                    break;
                }
            }
        }

        if (!f) {
            rv.NewTag = true;
            ups.push(itm);
            if (!upidx)
                upidx = upidxs[id] = [];
            upidx.push(itm);
        }

        return rv;
    },

    UniqueRows: function (rows, prop) {
        if (!rows)
            return [];

        var rv = [];
        for (var i = 0; i < rows.length; i++) {
            var r = rows[i];
            var v = r[prop];

            var c = false;
            for (var j = 0; j < rv.length; j++) {
                if (rv[j][prop] == v) {
                    c = true;
                    break;
                }
            }

            if (!c)
                rv.push(r);
        }

        return rv;
    },

    FindGridFromTableName: function (del, tableName) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        for (var i = 0; i < xa.EleTypes.length - 1; i++) {
            var et = xa.EleTypes[i];
            var gd = et.GridDefine;
            if (!gd || !gd.AllowAddRecord || !gd.WriteToTable || !String.Equ(tableName, gd.WriteToTable.TableName))
                continue;

            var block = xa.GetParentBlock(del);
            var delpath = block.ToETBlock().GetPath().concat(0);
            var rpath = xa.ToRelativePath(delpath, et.GetPath());

            var xel = new x.Element();
            xel.ParentBlock = block;

            var grids = xel.GetElesFromPath(rpath);
            return grids[0];
        }
    },

    AppendBlock: function (del, tableName) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var grid = xa.FindGridFromTableName(del, tableName);
        if (!grid)
            return;

        grid.AppendBlock(1);
    },

    HitTestGrid: function (vpt) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        for (var i = xa.Eles.length - 1; i >= 0; i--) {
            var xel = xa.Eles[i];
            if (!xel.dom)
                continue;
            var et = xel.GetEleType();
            var gd = et.GridDefine;
            if (!gd || !gd.AllowAddRecord)
                continue;

            var vrc = xel.GetBoundingClientRect();
            if (gd.MenuDock == x.MenuDock.Left)
                vrc.left -= gd.GridSelectAreaWidth;
            else
                vrc.right += gd.GridSelectAreaWidth;

            if (xa.PtInRect(vrc, vpt))
                return xel;
        }
    },

    HitTestBlock: function (xel, y) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var rs = xel.dom.rows;

        for (var i = 0; i < rs.length; i++) {
            var r = new x.Element(rs[i], false);
            var vrc = r.GetBoundingClientRect();

            if (y >= vrc.top && y <= vrc.bottom)
                return xel.BlockFromRow(i);
        }

        return -1;
    },

    PtInRect: function (rc, pt) {
        return (pt.x >= rc.left && pt.x <= rc.right && pt.y >= rc.top && pt.y <= rc.bottom);
    },

    NewDataBind: function () {
        var xa = YZSoft.XForm.Agent;
        xa.NewVarIndex = xa.NewVarIndex || 1;
        var databind = '_sys_var_' + xa.NewVarIndex;
        xa.NewVarIndex++;

        return databind;
    },

    SetGridHOver: function (g, bi) {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        if (g) {
            if (xa.CurGrid && g == xa.CurGrid.grid && bi == xa.CurGrid.blockIndex) //没有改变
                return;

            xa.HiddenGridHOver();

            var et = g.GetEleType();
            var dcl = et.GridDefine.MenuDock == x.MenuDock.Left;

            var gb = dcl ? xa.GetGridHOverEleL(true) : xa.GetGridHOverEleR(true);
            if (gb) {
                var gbr = {};
                var grc = g.getRegion();
                var rc = gb.getRegion();

                //一定要先显示否则得不到大小
                gb.SetVisible(true);

                gbr.left = dcl ? (grc.left - (rc.right - rc.left) - et.GridDefine.GridHOverDisplaySpace) : (grc.right + et.GridDefine.GridHOverDisplaySpace);
                gbr.top = grc.top;
                gbr.right = gbr.left + (rc.right - rc.left);
                gbr.bottom = gbr.top + (rc.bottom - rc.top);

                gb.setXY([gbr.left, gbr.top], false);

                gb.removeAllListeners();
                gb.addListener('click', xa.GridButtonClick, null, { grid: g, elType: et });

            }

            if (bi != -1) {
                var dr = new x.Element(g.dom.rows[g.GetBlockStartRowIndex(bi)], false);
                var bb = dcl ? xa.GetBlockHOverEleL(true) : xa.GetBlockHOverEleR(true);
                if (bb) {
                    var br = {};
                    var rrc = dr.getRegion();
                    var rc = bb.getRegion();

                    //一定要先显示否则得不到大小
                    bb.SetVisible(true);

                    br.left = dcl ? (rrc.left - (rc.right - rc.left) - et.GridDefine.GridHOverDisplaySpace) : (rrc.right + et.GridDefine.GridHOverDisplaySpace);
                    br.top = rrc.top;
                    br.right = br.left + (rc.right - rc.left);
                    br.bottom = br.top + (rc.bottom - rc.top);

                    bb.setXY([br.left, br.top], false);

                    bb.removeAllListeners();
                    bb.addListener('click', xa.BlockButtonClick, null, { grid: g, elType: et, blockIndex: bi });
                }
            }

            xa.CurGrid = { grid: g, blockIndex: bi };
        }
        else {
            if (this.CurGrid)
                xa.ClearGridHOver();
        }
    },

    HiddenGridHOver: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        var gridr = xa.GetGridHOverEleR(false);
        if (gridr)
            gridr.SetVisible(false);

        var gridl = xa.GetGridHOverEleL(false);
        if (gridl)
            gridl.SetVisible(false);

        var blockr = xa.GetBlockHOverEleR(false);
        if (blockr)
            blockr.SetVisible(false);

        var blockl = xa.GetBlockHOverEleL(false);
        if (blockl)
            blockl.SetVisible(false);
    },

    ClearGridHOver: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        xa.HiddenGridHOver();
        xa.CurGrid = null;
    },

    GetGridHOverEleR: function (create) {
        var x = YZSoft.XForm;
        var div = document.getElementById('__sys_grid_btn_r__');
        if (!div && create)
            div = CreateGridHOverEleR(x.Agent.sBaseUrl);

        return div ? new x.Element(div, false) : null;
    },

    GetGridHOverEleL: function (create) {
        var x = YZSoft.XForm;
        var div = document.getElementById('__sys_grid_btn_l__');
        if (!div && create)
            div = CreateGridHOverEleL(x.Agent.sBaseUrl);

        return div ? new x.Element(div, false) : null;
    },

    GetBlockHOverEleR: function (create) {
        var x = YZSoft.XForm;
        var div = document.getElementById('__sys_block_btn_r__');
        if (!div && create)
            div = CreateBlockHOverEleR(x.Agent.sBaseUrl);

        return div ? new x.Element(div, false) : null;
    },

    GetBlockHOverEleL: function (create) {
        var x = YZSoft.XForm;
        var div = document.getElementById('__sys_block_btn_l__');
        if (!div && create)
            div = CreateBlockHOverEleL(x.Agent.sBaseUrl);

        return div ? new x.Element(div, false) : null;
    },

    GridButtonClick: function (ev, el, opt) {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        if (!xa.GridMenu) {
            var appendBlock = new Ext.menu.Item({
                iconCls: 'appendblock',
                text: RS.$('YZStrings.XFormAgent_Grid_Append'),
                handler: function (item) {
                    item.parentMenu.opt.grid.AppendBlock();
                }
            });

            var clearAll = new Ext.menu.Item({
                iconCls: 'delete',
                text: RS.$('YZStrings.XFormAgent_Grid_Clear'),
                handler: function (item) {
                    item.parentMenu.opt.grid.ClearBlocks();
                }
            });

            xa.GridMenu = new Ext.menu.Menu({
                cls: 'yz-grid-menu',
                shadow: false,
                minWidth: 80,
                items: [appendBlock, '-', clearAll],
                listeners: {
                    show: function () { xa.menuTrack = true; },
                    hide: function () { xa.menuTrack = false; }
                }
            });
        }

        xa.GridMenu.opt = opt;
        var bc = opt.grid.Blocks.length;
        xa.GridMenu.items.itemAt(2).setDisabled((bc <= 0) || (bc == 1 && opt.elType.GridDefine.ShowOneBlockAlways));

        xa.GridMenu.show(el);
    },

    BlockButtonClick: function (ev, el, opt) {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        if (!xa.BlockMenu) {
            var insertAbove = new Ext.menu.Item({
                iconCls: 'insertabove',
                text: RS.$('YZStrings.XFormAgent_Grid_InsertAbove'),
                handler: function (item) {
                    var o = item.parentMenu.opt;
                    o.grid.InsertBlockAbove(o.blockIndex);
                }
            });

            var insertBelow = new Ext.menu.Item({
                iconCls: 'insertbelow',
                text: RS.$('YZStrings.XFormAgent_Grid_InsertBelow'),
                handler: function (item) {
                    var o = item.parentMenu.opt;
                    o.grid.InsertBlockBelow(o.blockIndex);
                }
            });

            var appendCopy = new Ext.menu.Item({
                iconCls: 'appendcopy',
                text: RS.$('YZStrings.XFormAgent_Grid_AppendCopy'),
                handler: function (item) {
                    var o = item.parentMenu.opt;
                    o.grid.AppendCopy(o.blockIndex);
                }
            });

            var copy = new Ext.menu.Item({
                iconCls: 'copy',
                text: RS.$('YZStrings.XFormAgent_Grid_Copy'),
                handler: function (item) {
                    var o = item.parentMenu.opt;
                    o.elType.CopyTable = xa.CopyBlock(o.grid.Blocks[o.blockIndex]);
                }
            });

            var paste = new Ext.menu.Item({
                iconCls: 'paste',
                text: RS.$('YZStrings.XFormAgent_Grid_Paste'),
                handler: function (item) {
                    var o = item.parentMenu.opt;
                    o.grid.PasteBlockCopy(o.blockIndex);
                }
            });

            var del = new Ext.menu.Item({
                iconCls: 'delete',
                text: RS.$('YZStrings.XFormAgent_Grid_Delete'),
                handler: function (item) {
                    var o = item.parentMenu.opt;
                    o.grid.DeleteBlocks(o.blockIndex, 1);
                }
            });

            xa.BlockMenu = new Ext.menu.Menu({
                cls: 'yz-grid-menu',
                shadow: false,
                minWidth: 80,
                items: [insertAbove, insertBelow, appendCopy, '-', copy, paste, '-', del],
                listeners: {
                    show: function () { xa.menuTrack = true; },
                    hide: function () { xa.menuTrack = false; }
                }
            });
        }

        xa.BlockMenu.opt = opt;
        var items = xa.BlockMenu.items;
        items.itemAt(5).setDisabled(!opt.elType.CopyTable);
        var bc = opt.grid.Blocks.length;
        items.itemAt(7).setDisabled((bc <= 0) || (bc == 1 && opt.elType.GridDefine.ShowOneBlockAlways));

        xa.BlockMenu.show(el);
    },

    SaveGridDefine: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        var len = xa.Eles.length;
        for (var i = 0; i < len; i++) {
            var xel = xa.Eles[i];
            var gt = xel.GetEleType();
            if (!gt.GridDefine)
                continue;

            var grid = xel;
            var gd = gt.GridDefine;
            var da = gd.DynamicArea;
            var sidx = grid.GetBlockStartRowIndex(0, da);

            //获得写入表及LineNo信息
            var xels = grid.Blocks[0].Eles;
            for (var j = 0; j < xels.length; j++) {
                var xel = xels[j];
                var et = xel.GetEleType();

                if (!gd.WriteToTable && et.DataBind && et.DataBind.DataColumn) {
                    gd.WriteToTable = et.DataBind.DataColumn.ParentTable;

                    var pg = gt.ParentBlock.ParentElement;
                    gd.WriteToTable.ParentTable = (pg && pg.GridDefine) ? pg.GridDefine.WriteToTable : null;
                    gd.WriteToTable.elType = gt;
                }

                if (!gd.LineNo && et.Type == x.EleTypes.LineNo)
                    gd.LineNo = { InitValue: xel.getAttributeNumber('LineNoInitValue', 1), Increase: xel.getAttributeNumber('LineNoIncrease', 1), Offset: j };
            }

            //绑定到的表为非可重复表则提示错误
            var dt = gd.WriteToTable;
            gd.AllowAddRecord = xa.Params.Model == x.Model.Form ? true : false;
            if (dt) {
                gd.AllowAddRecord = dt.AllowAddRecord;
                if (!dt.IsRepeatable)
                    YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Grid_BindNoRepeatableTable'), dt.TableName);

                var ds = gt.DataSource;
                if (ds && ds.Type == x.DSType.Table && String.Equ(ds.DS, dt.DataSource) && String.Equ(ds.TableName, dt.TableName) && !ds.Filter) {
                    gt.DataSource = null;
                }
            }

            //保存动态区域定义
            var rows = grid.dom.rows;
            gd.strhtml = '';
            for (var j = 0; j < da.rows; j++) {
                var row = rows[da.startRowIndex + j];
                gd.strhtml += x.Element.outerHTML(row);
            }
            gd.strhtml = '<table>' + gd.strhtml + '</table>';
        }
    },

    LinkDataBindToColumn: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        var vr = xa.VarDataColumnMap = {};
        for (var i = 0; i < xa.FormTables.length; i++) {
            var t = xa.FormTables[i];
            for (var j = 0; j < t.Columns.length; j++) {
                var c = t.Columns[j];
                var name = xa.CombinFieldName(t.DataSource, t.TableName, c.ColumnName);
                vr[name] = c;
            }
        }

        var len = xa.EleTypes.length;
        for (var i = 0; i < len; i++) {
            var et = xa.EleTypes[i];
            if (et.DataBind) {
                et.DataBind.DataColumn = vr[et.DataBind.nameLow];
                if (et.DataBind.DataColumn && et.ParentBlock.ParentElement && !et.DataBind.DataColumn.ParentTable.IsRepeatable)
                    YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Grid_BindNoRepeatableVar'), et.DataBind.name);
            }
        }
    },

    DeleteBlockEles: function (block) {
        var xa = YZSoft.XForm.Agent;

        for (var i = 0; i < block.Eles.length; i++) {
            var xel = block.Eles[i];
            xel.dom = null;

            if (xel.Blocks) {
                for (var j = 0; j < xel.Blocks.length; j++)
                    xa.DeleteBlockEles(xel.Blocks[j]);
            }
        }
    },

    CopyBlock: function (block, copychild) {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        rec = {};
        for (var i = 0; i < block.Eles.length; i++) {
            var xel = block.Eles[i];
            var et = xel.GetEleType();

            if (!et.DataBind || et.NoCopy)
                continue;

            rec[et.DataBind.nameLow] = xel.GetValue();
            if (copychild !== false) {
                if (et.WriteToTable) {
                    var ctname = xa.CombinTableName(et.WriteToTable.DataSource, et.WriteToTable.TableName);
                    rec._sys_child_tables = rec._sys_child_tables || {};
                    rec._sys_child_tables[ctname] = rec._sys_child_tables[ctname] || [];
                    for (var j = 0; j < xel.Blocks.length; j++) {
                        var crec = CopyBlock(xel.Blocks[j]);
                        rec._sys_child_tables[ctname].push(crec);
                    }
                }
            }
        }

        return rec;
    },

    GenInsertBlockUpdaters: function (block, row, ups, genlnoup, blockIndex) {
        if (!ups)
            return;

        row = row || {};
        var xa = YZSoft.XForm.Agent;

        var gd = (block && block.ParentElement && block.ParentElement.GetEleType()) ? block.ParentElement.GetEleType().GridDefine : null;
        if (gd && gd.WriteToTable) {
            var wt = gd.WriteToTable;
            for (var i = 0; i < wt.PrimaryColumns.length; i++) {
                var c = wt.PrimaryColumns[i];
                if (c.FullNameLow in row) {
                    block.Key = block.Key || {};
                    block.CKeyName = c.ColumnName;
                    block.CKeyValue = block.Key[c.ColumnName] = row[c.FullNameLow];
                }
            }
        }

        var len = block.Eles.length;
        for (var i = 0; i < len; i++) {
            var xel = block.Eles[i];
            var et = xel.GetEleType();
            var af = et.affectFrom || {};
            var vflag = false;
            var elups = [{ xel: xel, src: 'none', tag: 'value'}];

            if (et.HiddenExpress)
                elups.push({ xel: xel, src: 'value', tag: 'hide' });

            if (et.DisableExpress)
                elups.push({ xel: xel, src: 'value', tag: 'disable' });

            for (var afn in af) {
                var afitms = af[afn] || [];
                var aflen = afitms.length;
                for (var j = 0; j < aflen; j++) {
                    var afi = afitms[j];
                    xa.UpdaterArrayAdd(elups, { xel: xel, tag: afi.tag, src: afi.src, trigger: true }, false);
                }
            }

            if (genlnoup === true && et.Type == YZSoft.XForm.EleTypes.LineNo && gd) {
                xa.UpdaterArrayAdd(elups, { xel: xel, tag: 'value', src: 'set', value: gd.LineNo.InitValue + blockIndex * gd.LineNo.Increase }, false);
            }
            else {
                var bd = et.DataBind;
                if (bd && bd.DataColumn && bd.DataColumn.DefaultValue)
                    xa.UpdaterArrayAdd(elups, { xel: xel, tag: 'value', src: 'default', value: bd.DataColumn.DefaultValue }, false);

                if (et.DataBind) {
                    var v = row[et.DataBind.nameLow];
                    if (Ext.isDefined(v)) {
                        xa.UpdaterArrayAdd(elups, { xel: xel, tag: 'value', src: 'set', value: v }, false);
                    }
                }
            }

            if (et.GridDefine) {
                var w = et.GridDefine.WriteToTable;
                var rows = (w && row._sys_child_tables) ? row._sys_child_tables[xa.CombinTableName(w.DataSource, w.TableName)] : null;
                if (rows) {
                    xa.UpdaterArrayAdd(elups, { xel: xel, tag: 'filter', src: 'set', rows: rows }, false);
                }
                else if (!xa.ArrayContains(elups, { tag: 'filter', src: 'value' })) {
                    elups.push({ xel: xel, tag: 'filter', src: 'set', rows: [] });
                }
            }

            var lenups = elups.length;
            for (var j = 0; j < lenups; j++)
                ups.push(elups[j]);
        }
    },

    GenDeleteBlockUpdaters: function (xel, ups) {
        if (!ups)
            return;

        var xa = YZSoft.XForm.Agent;
        var et = xel.GetEleType();
        if (!et)
            return;

        var ets = et.Blocks[0].Eles;
        for (var i = 0; i < ets.length; i++) {
            var cet = ets[i];
            var affs = cet.affectTo ? cet.affectTo.value : null;
            if (!affs)
                continue;

            for (var j = 0; j < affs.length; j++) {
                var aff = affs[j];
                if (aff.path && aff.path[0] != '.')
                    continue;

                var cels = xel.GetElesFromPath(aff.path, 1);
                for (var k = 0; k < cels.length; k++) {
                    var cel = cels[k];
                    xa.UpdaterArrayAdd(ups, { xel: cel, tag: aff.tag, src: 'value' })
                }
            }
        }
    },

    GenLineNoUpdaters: function (xel, blockIndex, ups, counts) {
        if (!ups)
            return;

        var et = xel.GetEleType();
        var gd = et.GridDefine;
        if (!gd || !gd.LineNo)
            return;

        var c = counts ? counts : xel.Blocks.length - blockIndex;
        for (var i = 0; i < c; i++)
            ups.push({ xel: xel.Blocks[blockIndex + i].Eles[gd.LineNo.Offset], tag: 'value', src: 'set', value: gd.LineNo.InitValue + (blockIndex + i) * gd.LineNo.Increase });
    },

    ParseFormat: function (str) {
        if (!str)
            return null;

        var u = YZSoft.HttpUtility;
        var x = YZSoft.XForm;
        var dc = u.AttrDecode;
        var rv = {};
        var segs = str.split(';') || [];
        Ext.each(segs, function (seg) {
            var kv = u.ParseKeyValue(seg, ':', true);
            switch (kv.key) {
                case 'type':
                    var type = (dc(kv.value) || '').toLowerCase();
                    rv.InputType = type == 'currency' ? 'currency' : (type == 'number' ? 'number' : 'string');
                    rv.UseThousandSeparator = type == 'currency';
                    break;
                case 'pfx':
                    rv.Perfix = dc(kv.value);
                    break;
                case '':
                    var f = dc(kv.value) || '';
                    var kv = f.split('.') || [];
                    var sbf = kv[0];
                    var saf = kv[1];

                    rv.DigitColumn = Number(sbf || -1);
                    rv.DigitColumn = isNaN(rv.DigitColumn) ? -1 : rv.DigitColumn;

                    rv.DecimalColumn = Number(saf || -1);
                    rv.DecimalColumn = isNaN(rv.DecimalColumn) ? -1 : rv.DecimalColumn;
                    break;
            }
        });

        if (rv.InputType == 'string') {
            rv.Perfix = null;
            rv.DigitColumn = -1;
            rv.DecimalColumn = -1;
        }
        else if (rv.InputType == 'number') {
            rv.Perfix = null;
        }
        return rv;
    },

    ParseDataType: function (stype) {
        var x = YZSoft.XForm;
        return x.DataTypeMap[(stype || '').toLowerCase()] || x.DataType.String;
    },

    ParseFieldInfo: function (db) {
        var rv = {};

        var dc = db.DataColumn;
        if (dc) {
            rv.IsVar = false;
            rv.ColumnName = dc.ColumnName;
            rv.TableName = dc.ParentTable.TableName;
            rv.DS = dc.ParentTable.DataSource;
        }
        else {
            rv.IsVar = true;
            var n = (db.name || '').trim();
            var idx = n.indexOf(':');
            rv.DS = idx == -1 ? '' : n.substring(0, idx).trim();
            n = idx == -1 ? n : n.sunstring(idx + 1).trim();
            idx = n.indexOf('.');
            rv.TableName = idx == -1 ? '' : n.substring(0, idx).trim();
            rv.ColumnName = idx == -1 ? n : n.substring(idx + 1).trim();
        }

        return rv;
    },

    HookInputCheck: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var it = YZSoft.XForm.InputType;

        var len = xa.EleTypes.length;
        for (var i = 0; i < len; i++) {
            var et = xa.EleTypes[i];
            if (et.Type == x.EleTypes.TextBox || et.Type == x.EleTypes.TextArea || et.Type == x.EleTypes.Label)
                et.InputChecker = new x.InputChecker(et);
        }

        len = xa.Eles.length;
        for (var i = 0; i < len; i++) {
            var xel = xa.Eles[i];
            var et = xel.GetEleType();
            var ichk = et.InputChecker;
            if (ichk && ichk.DisableIME)
                xel.dom.style.imeMode = 'disabled';
        }
    },

    InitElements: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        var len = xa.Eles.length;
        for (var i = 0; i < len; i++) {
            var xel = xa.Eles[i];
            var et = xel.GetEleType();
            if (et.InitFunc)
                et.InitFunc(xel.dom);
        }
    },

    Init: function () {
        Ext.EventManager.on(document, 'readystatechange', YZSoft.XForm.Agent.CheckDocumentComplete);
        Ext.EventManager.on(window, 'load', YZSoft.XForm.Agent.OnDocumentComplete);
    },

    CheckDocumentComplete: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        if (xa.DocumentCompleted || (document.readyState != 'complete' && document.readyState != 'loaded'))
            return;

        xa.OnDocumentComplete();
    },

    OnDocumentComplete: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        if (xa.DocumentCompleted)
            return;

        xa.Debug = { JS: {} };
        xa.DocumentCompleted = true;

        var js = xa.Debug.JS;
        var timebegin = (new Date()).getTime();
        xa.InitEnv();

        js.Time1 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();
        xa.RegisterMemVar('Global.StepName', '')
        js.Time2 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();
        var allEles = document.body.getElementsByTagName('*');
        js.Time3 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();
        xa.CatchEleTypes(allEles);
        js.Time4 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();

        xa.BufferFormData();
        js.Time5 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();

        xa.BuildXFormDOM(xa.RootBlock, xa.Eles);
        js.Time6 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();
        xa.CopyEleTypeDOMFromXFormDOM();
        js.Time7 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();
        xa.Compile();
        js.Time8 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();
        xa.BuildSetValueOrder();
        js.Time9 = eval((new Date()).getTime() - timebegin);
        imebgein = (new Date()).getTime();

        //数据加载后
        xa.LinkDataBindToColumn();
        js.Time10 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();
        xa.InitElements();
        xa.ApplayDataControlInfo();
        js.Time11 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();
        xa.HookInputCheck();
        js.Time12 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();
        xa.UpdateStaticSelectOptions();
        js.Time13 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();
        xa.SaveGridDefine();
        xa.SortFormTable();
        js.Time14 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();

        xa.InitFill();
        js.Time15 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();

        xa.CopyGridDefaultValue();
        js.Time16 = eval((new Date()).getTime() - timebegin);
        timebegin = (new Date()).getTime();
        xa.ListenEvents();
        js.Time17 = eval((new Date()).getTime() - timebegin);

        xa.ActiveProcessButtons();

        var dinfos = [];
        xa.LoadDataTime = xa.LoadDataTime || {};

        var lds = 0;
        dinfos.push('LoadData:');
        for (var p in xa.Debug.LoadData) {
            var t = parseInt(xa.Debug.LoadData[p]);
            dinfos.push(p + ':' + t + '毫秒');
            lds += t;
        }

        var tts = 0;
        dinfos.push('JS:');
        for (var p in js) {
            var t = parseInt(js[p]);
            dinfos.push(p + ':' + t + '毫秒');
            tts += t;
        }

        dinfos.push('Summary:');
        dinfos.push('Total:' + tts + '毫秒');
        dinfos.push('Load Data:' + lds + '毫秒');
        dinfos.push('JS:' + (tts - lds) + '毫秒');

        //YZSoft.Error.ShowResponseError('Message','Form Load Time:',dinfos.join('<br/>'));
        //window.status = 'Total:' + tts + '毫秒；' + 'Load Data:' + lds + '毫秒；'+ 'JS:' + (tts-lds) + '毫秒';
    },

    SortFormTable: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        var tbs = [];
        while (xa.FormTables.length != 0) {
            for (var i = 0; i < xa.FormTables.length; i++) {
                var tb = xa.FormTables[i];
                if (!tb.ParentTable || xa.ArrayContains(tbs, tb.ParentTable)) {
                    tbs.push(tb);
                    xa.FormTables.splice(i, 1);
                    i--;
                    continue;
                }
            }
        }

        xa.FormTables = tbs;
    },

    CopyGridDefaultValue: function () {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var len = xa.Eles.length;
        for (var i = 0; i < len; i++) {
            var xel = xa.Eles[i];
            if (!xel.dom) //xel已删除
                continue;

            var et = xel.GetEleType();
            var gd = et.GridDefine;
            if (!gd)
                continue;

            if (!Ext.isArray(xel.Blocks) || xel.Blocks.length == 0)
                continue;

            gd.DefaultValues = xa.CopyBlock(xel.Blocks[0], false);
        }
    },

    ListenEvents: function () {
        var em = Ext.EventManager;
        var xa = YZSoft.XForm.Agent;

        var form = document.forms[0];
        document.onmousemove = xa.OnMouseMove;
        em.on(document, 'keyup', xa.OnKeyUp);
        em.on(document, 'keypress', xa.OnKeyPress);
        if ('onfocusin' in document) {
            em.on(document, 'focusin', xa.OnFocus);
            em.on(document, 'focusout', xa.OnBlur);
        }
        else {
            if (document.addEventListener) {	// Firefox, Opera, Google Chrome and Safari
                document.addEventListener("focus", xa.OnFocus, true);
                document.addEventListener("blur", xa.OnBlur, true);
            }
        }
    },

    OnMouseMove: function (ev) {
        var xa = YZSoft.XForm.Agent;
        if (xa.menuTrack)
            return;

        ev = ev || window.event;
        var el = ev.target || ev.srcElement;
        var vp = { x: ev.clientX, y: ev.clientY };

        var g = xa.HitTestGrid(vp);
        var bi = -1;
        if (g)
            bi = xa.HitTestBlock(g, vp.y);

        xa.SetGridHOver(g, bi);
    },

    OnKeyUp: function (e) {
        XFormOnChange(e.target);
    },

    OnKeyPress: function (e) {
        var xel = YZSoft.XForm.Element.TryGetChechedEle(e.target);
        if (!xel)
            return;

        var et = xel.GetEleType();
        if (!et || !et.InputChecker)
            return;

        if (!et.InputChecker.ParseInput(xel, e)) {
            try { e.stopEvent(); } catch (exp) { }
        }
    },

    OnFocus: function (e) {
        var xel = YZSoft.XForm.Element.TryGetChechedEle(e.target);
        if (!xel)
            return;
        xel.OnFocus(e);
    },

    OnBlur: function (e) {
        var xel = YZSoft.XForm.Element.TryGetChechedEle(e.target);
        if (!xel)
            return;
        xel.OnBlur(e);
    },

    GetSeek: function (n) {
        var xa = YZSoft.XForm.Agent;

        var s = xa.Seeks = xa.Seeks || {};
        s[n] = s[n] || 0;
        s[n]++;
        return s[n];
    },

    GetParentRow: function (domel) {
        while (domel) {
            if (domel.tagName == 'TR')
                break;
            domel = domel.parentNode;
        }
        return domel;
    },

    GetParentTable: function (domel) {
        while (domel) {
            if (domel.tagName == 'TABLE')
                break;
            domel = domel.parentNode;
        }
        return domel;
    },

    GetParentBlock: function (domel) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var dom = domel;

        while (domel) {
            var row = xa.GetParentRow(domel);
            if (!row)
                break;

            var table = xa.GetParentTable(row);
            var xtable = x.Element.TryGetChechedEle(table);
            if (xtable) {
                var et = xtable.GetEleType();
                if (et && et.GridDefine) {
                    var ridx = row.rowIndex;
                    var bidx = xtable.GetBlockIndexFromRowIndex(ridx);
                    if (bidx != -1)
                        return xtable.Blocks[bidx];
                }
            }

            domel = table;
        }

        return xa.RootBlock;
    },

    GetParentBlockET: function (domel) {
        return YZSoft.XForm.Agent.GetParentBlock(domel).ToETBlock();
    },

    CalcDynamicExpress: function (domel, express) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var block = xa.GetParentBlock(domel);
        return block.CalcDynamicExpress(express);
    },

    ActiveProcessButtons: function () {
        var cs = document.getElementsByName('_sys_processbtns_container');
        for (var i = 0; i < cs.length; i++) {
            var c = cs[i];

            var els = c.getElementsByTagName('INPUT');
            for (var j = 0; j < els.length; j++) {
                var el = els[j];
                if (el.type == 'button' && el.getAttribute('EnableAfterLoad') == 'true')
                    el.disabled = false;
            }
        }
    },

    PostPrepareFormData: function (rv) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var rv = rv.FormData = {};

        for (var i = 0; i < xa.RootBlock.Eles.length; i++) {
            var xel = xa.RootBlock.Eles[i];
            var et = xel.GetEleType();

            if (et.DataBind && et.DataBind.DataColumn) {
                var fi = xa.ParseFieldInfo(et.DataBind);
                //fi.TableName = fi.TableName || 'Global';
                if (String.Equ(fi.TableName, 'Global'))
                    continue;

                var tb = rv[fi.TableName] = rv[fi.TableName] || {};
                tb[fi.ColumnName] = xel.GetValue();
            }

            xa.SaveChildBlocksIfExist(rv, xel, et);
        }
    },

    SaveChildBlocksIfExist: function (rv, xel, et) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        et = et || xel.GetEleType();
        var gd = et.GridDefine;

        if (gd && gd.WriteToTable) {
            rv[gd.WriteToTable.TableName] = rv[gd.WriteToTable.TableName] || [];

            for (var j = 0; j < xel.Blocks.length; j++) {
                var ridx = (rv[gd.WriteToTable.TableName] || []).length;
                var b = xel.Blocks[j];
                for (var k = 0; k < b.Eles.length; k++) {
                    var cxel = b.Eles[k];
                    var cet = cxel.GetEleType();

                    if (cet.DataBind && cet.DataBind.DataColumn) {
                        var fi = xa.ParseFieldInfo(cet.DataBind);
                        //fi.TableName = fi.TableName || gd.WriteToTable.TableName;
                        if (String.Equ(fi.TableName, 'Global'))
                            continue;

                        var tb = rv[fi.TableName] = rv[fi.TableName] || [];
                        var r = tb[ridx];
                        if (!r) {
                            r = {};
                            tb.push(r);

                            r.RelationRowGuid = b.GetBlockID();
                            r.RowPrimaryKeys = Ext.urlEncode(b.Key || {});

                            var pb = b.ParentElement.ParentBlock;
                            if (pb.ParentElement) {
                                r.RelationParentRowGuid = pb.GetBlockID();
                            }
                        }
                        r[fi.ColumnName] = cxel.GetValue();
                    }

                    xa.SaveChildBlocksIfExist(rv, cxel);
                }
            }
        }
    },

    GetComments: function (fireEle) {
        return (typeof YZGetComments == 'undefined' ? '' : (YZGetComments(fireEle) || ''));
    },

    GetInviteIndicateUsers: function (fireEle) {
        return (typeof YZGetInviteIndicateUsers == 'undefined' ? '' : (YZGetInviteIndicateUsers(fireEle) || ''));
    },

    GetConsignUsers: function (fireEle) {
        return (typeof YZGetConsignUsers == 'undefined' ? '' : (YZGetConsignUsers(fireEle) || ''));
    },

    GetConsignRoutingType: function (fireEle, defaultvalue) {
        return (typeof YZGetConsignRoutingType == 'undefined' ? defaultvalue : (YZGetConsignRoutingType(fireEle) || defaultvalue));
    },

    ConsignReturnType: function (fireEle, defaultvalue) {
        return (typeof YZGetConsignReturnType == 'undefined' ? defaultvalue : (YZGetConsignReturnType(fireEle) || defaultvalue));
    },

    GetOwnerFullName: function () {
        var domel = document.getElementById('sys_sel_position');
        if (domel)
            return domel.value;
        else
            return YZSoft.XForm.Agent.Params.Owner;
    },

    GetKey: function () {
        return YZSoft.XForm.Agent.Params.Key;
    },

    GetSerialNum: function () {
        return YZSoft.XForm.Agent.Params.SN;
    },

    PostForm: function (cfg) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var pd = { Header: {} };

        pd.Header.Method = '';
        xa.PostPrepareFormData(pd);

        return xa.AjaxPost(pd, cfg);
    },

    SaveAsDraft: function (fireEle) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var pd = { Header: {} };

        pd.Header.Method = 'SaveAsDraft';
        pd.Header.ProcessName = xa.Params.ProcessName;
        pd.Header.OwnerMemberFullName = xa.GetOwnerFullName();
        pd.Header.Comment = xa.GetComments(fireEle);
        xa.PostPrepareFormData(pd);

        var rv = xa.AjaxPost(pd, {
            waitMsg: RS.$('YZStrings.XFormAgent_Saving'),
            waitMsgTarget: document.body
        });

        return rv.SN;
    },

    SaveAsFormTemplate: function (fireEle) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var pd = { Header: {} };

        pd.Header.Method = 'SaveAsFormTemplate';
        pd.Header.ProcessName = xa.Params.ProcessName;
        pd.Header.OwnerMemberFullName = xa.GetOwnerFullName();
        pd.Header.Comment = xa.GetComments(fireEle);
        xa.PostPrepareFormData(pd);

        var rv = xa.AjaxPost(pd, {
            waitMsg: RS.$('YZStrings.XFormAgent_Saving'),
            waitMsgTarget: document.body
        });

        return rv.SN;
    },

    SaveDraft: function (fireEle, draftGuid) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var pd = { Header: {} };

        pd.Header.Method = 'SaveDraft';
        pd.Header.ProcessName = xa.Params.ProcessName;
        pd.Header.DraftGuid = draftGuid || xa.Params.DraftGuid;
        pd.Header.OwnerMemberFullName = xa.GetOwnerFullName();
        pd.Header.Comment = xa.GetComments(fireEle);
        xa.PostPrepareFormData(pd);

        xa.AjaxPost(pd, {
            waitMsg: RS.$('YZStrings.XFormAgent_Saving'),
            waitMsgTarget: document.body
        });

        return true;
    },

    Save: function (fireEle, validate, actname, validationGroup) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var pd = { Header: {} };

        pd.Header.Method = 'Save';
        pd.Header.Comment = xa.GetComments(fireEle);
        pd.Header.PID = xa.Params.StepID;
        xa.PostPrepareFormData(pd);

        if (validate) {
            if (typeof (OnBeforePost) != 'undefined') {
                var func = OnBeforePost;
                if (func(pd, actname, validationGroup) === false)
                    return false;
            }
        }

        xa.AjaxPost(pd, {
            waitMsg: RS.$('YZStrings.XFormAgent_Saving'),
            waitMsgTarget: document.body
        });

        return true;
    },

    SaveFormApplication: function (fireEle) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var pd = { Header: {} };

        pd.Header.Method = 'SaveFormApplication';
        pd.Header.FormApplicationName = xa.Params.AppName;
        pd.Header.FormState = xa.Params.FormState;
        pd.Header.PrimaryKey = xa.Params.Key;
        xa.PostPrepareFormData(pd);

        xa.AjaxPost(pd, {
            waitMsg: RS.$('YZStrings.XFormAgent_Saving'),
            waitMsgTarget: document.body
        });

        return true;
    },

    IndicateSubmit: function (fireEle) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var pd = { Header: {} };

        pd.Header.Method = 'IndicateSubmit';
        pd.Header.PID = xa.Params.StepID;
        pd.Header.Comment = xa.GetComments(fireEle);
        pd.Header.InviteIndicateUsers = xa.GetInviteIndicateUsers(fireEle);
        xa.PostPrepareFormData(pd);

        var rv = xa.AjaxPost(pd, {
            waitMsg: RS.$('YZStrings.XFormAgent_Submiting'),
            waitMsgTarget: document.body
        });

        var msg = xa.GetPostResultMessage(rv);
        alert(msg);
        return true;
    },

    InformSubmit: function (fireEle) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var pd = { Header: {} };

        pd.Header.Method = 'InformSubmit';
        pd.Header.PID = xa.Params.StepID;
        pd.Header.Comment = xa.GetComments(fireEle);
        xa.PostPrepareFormData(pd);

        var rv = xa.AjaxPost(pd, {
            waitMsg: RS.$('YZStrings.XFormAgent_Submiting'),
            waitMsgTarget: document.body
        });

        var msg = xa.GetPostResultMessage(rv);
        alert(msg);
        return true;
    },

    ConvertValue: function (v, vr) {
        var dt = YZSoft.XForm.DataType;
        var dc = vr.DataColumn || { Type: vr.elType.GetDefaultType() || (YZSoft.Utility.isNumber(v) ? dt.Decimal : dt.String) };
        switch (dc.Type) {
            case dt.Decimal:
            case dt.Double:
            case dt.Single:
                try { v = parseFloat(v || 0) } catch (e) { v = 0.0 };
                break;
            case dt.Int16:
            case dt.Int32:
            case dt.Int64:
            case dt.SByte:
            case dt.UInt16:
            case dt.UInt32:
            case dt.UInt64:
            case dt.Byte:
                try { v = parseInt(v || 0) } catch (e) { v = 0 };
                break;
            case dt.Boolean:
                try { v = parseInt(v || 0) } catch (e) { v = 0 };
                break;
            case dt.DateTime:
            case dt.String:
            case dt.Binary:
                v = v || ''
                break;
        }
        return v;
    },

    Resign: function (fireEle, pid) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var pd = { Header: {} };

        pd.Header.Method = 'Resign';
        pd.Header.PID = pid;
        pd.Header.Comment = xa.GetComments(fireEle);
        pd.Header.InviteIndicateUsers = xa.GetInviteIndicateUsers(fireEle);
        xa.PostPrepareFormData(pd);

        var rv = xa.AjaxPost(pd, {
            waitMsg: RS.$('YZStrings.XFormAgent_Submiting'),
            waitMsgTarget: document.body
        });

        var msg = xa.GetPostResultMessage(rv);
        alert(msg);
        return true;
    },

    Post: function (fireEle, actName) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var pd = { Header: {} };

        if (xa.Params.StepID == -1) {
            pd.Header.Method = 'Post';
            pd.Header.ProcessName = xa.Params.ProcessName;
            pd.Header.ProcessVersion = xa.Params.ProcessVersion;
            pd.Header.DraftGuid = xa.Params.DraftGuid;
            pd.Header.OwnerMemberFullName = xa.GetOwnerFullName();
        }
        else {
            pd.Header.Method = 'Process';
            pd.Header.PID = xa.Params.StepID;
        }
        pd.Header.Action = actName;
        pd.Header.Comment = xa.GetComments(fireEle);

        //加签信息
        var consignUsers = xa.GetConsignUsers(fireEle);
        if (consignUsers) {
            pd.Header.ConsignEnabled = "True";
            pd.Header.ConsignUsers = consignUsers;
            pd.Header.ConsignRoutingType = xa.GetConsignRoutingType(fireEle, 'Parallel');
            pd.Header.ConsignReturnType = xa.ConsignReturnType(fireEle, 'Forward');
        }

        //阅示信息
        pd.Header.InviteIndicateUsers = xa.GetInviteIndicateUsers(fireEle);

        xa.PostPrepareFormData(pd);
        if (typeof (OnBeforePost) != 'undefined') {
            var func = OnBeforePost;
            if (func(pd) === false)
                return false;
        }

        var rv = xa.AjaxPost(pd, {
            waitMsg: RS.$('YZStrings.XFormAgent_Submiting'),
            waitMsgTarget: document.body
        });

        var msg = xa.GetPostResultMessage(rv);
        alert(msg);
        return true;
    },

    GetPostResultMessage: function (rv) {
        var ar;

        ar = [];
        for (var i = 0; i < rv.Accounts.length; i++)
            ar.push(rv.Accounts[i].Account);
        var toUserList = ar.join(';');

        ar = [];
        for (var i = 0; i < rv.Indicators.length; i++)
            ar.push(rv.Indicators[i].Account);
        var indicateMessage = ar.length != 0 ? ('\n' + String.format(RS.$('YZStrings.XFormAgent_Result_Indicator'), ar.join(';'))) : '';

        var customMessage = rv.CustomMessage ? ('\n[' + rv.CustomMessage + ']') : '';

        var msg = '';
        switch (rv.PostResult) {
            case 'HasSentToOtherUsers':
                msg = String.format(RS.$('YZStrings.XFormAgent_SendToOthUsers'), rv.SN, toUserList, indicateMessage, customMessage);
                break;
            case 'InWaitingOtherUsers':
                msg = String.format(RS.$('YZStrings.XFormAgent_WaitingOthUsers'), rv.SN, toUserList, indicateMessage, customMessage);
                break;
            case 'TaskInWaiting':
                msg = String.format(RS.$('YZStrings.XFormAgent_TaskInWaiting'), rv.SN, indicateMessage, customMessage);
                break;
            case 'TaskFinishedApproved':
                msg = String.format(RS.$('YZStrings.XFormAgent_TaskFinishedApproved'), rv.SN, customMessage);
                break;
            case 'TaskFinishedRejected':
                msg = String.format(RS.$('YZStrings.XFormAgent_TaskFinishedRejected'), rv.SN, customMessage);
                break;
        }
        return msg;
    },

    AjaxPost: function (pd, cfg) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var xe = YZSoft.util.xml;
        var rv = {};
        var xmlData = xe.encode('XForm', pd);
        //alert(xmlData);

        cfg = cfg || {};
        if (cfg.waitMsg) {
            if (cfg.waitMsgTarget) {
                cfg.waitMsgTargetObj = Ext.get(cfg.waitMsgTarget);
                var mask = cfg.waitMsgTargetObj.mask(cfg.waitMsg, 'x-mask-loading');
            }
            else {
                Ext.MessageBox.wait(cfg.waitMsg, cfg.waitTitle || this.waitTitle);
                Ext.MessageBox.updateProgress(1);
            }
        }

        var postFunc = function () {
            Ext.Ajax.request({
                method: 'POST',
                disableCaching: true,
                sync: !cfg.defer,
                params: cfg.params || {},
                xmlData: xmlData,
                url: cfg.url || xa.sPostURL,
                success: function (response) {
                    xa.PostComplete(cfg);
                    rv = Ext.decode(response.responseText);
                    if (!rv.success)
                        YZSoft.Error.Throw(rv.errorMessage);

                    xa.Params.SN = rv.SN;
                    xa.Params.Key = rv.Key;
                    xa.Params.CustomMessage = rv.CustomMessage;
                    if (pd.Header.Method == 'SaveAsDraft')
                        xa.Params.DraftGuid = rv.SN;
                    xa.PostResult = rv;

                    if (cfg.success)
                        cfg.success.call(this.scope || this, rv);
                },
                failure: function (response) {
                    xa.PostComplete(cfg);
                    YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_HTTPPOSTERR'), url);
                }
            });
        }

        if (cfg.defer)
            postFunc.defer(10, this);
        else
            postFunc();

        return rv;
    },

    PostComplete: function (cfg) {
        if (cfg.waitMsg) {
            if (cfg.waitMsgTargetObj) {
                cfg.waitMsgTargetObj.unmask();
            }
            else {
                Ext.MessageBox.updateProgress(1);
                Ext.MessageBox.hide();
            }
        }
    },

    IsFieldWritable: function (del) {
        var x = YZSoft.XForm;
        var xa = x.Agent;

        var xel = x.Element.TryGetChechedEle(del);
        if (!xel)
            return true;

        var et = xel.GetEleType();
        if (!et)
            return true;

        return et.CanWrite();
    },

    GetFieldInfo: function (fireele) {
        var x = YZSoft.XForm;
        var xa = x.Agent;
        var xel = x.Element.TryGetChechedEle(fireele);
        if (!xel)
            return null;

        var et = xel.GetEleType();
        var table = et.DataBind.DataColumn.ParentTable;
        var info;
        if (!table.IsRepeatable)
            info = { CKeyName: table.CKeyName, CKeyValue: table.CKeyValue };
        else
            info = { CKeyName: xel.ParentBlock.CKeyName, CKeyValue: xel.ParentBlock.CKeyValue };

        info.Column = et.DataBind.DataColumn;
        return info;
    }
};

var Parser = (function (scope) {
    var ItemType_None = 0;
    var ItemType_Value = 1;
    var ItemType_Operator = 2;
    var ItemType_Function = 3;

    var PRI_OPENBRACKET = -1;
    var PRI_LOWEST = 0;
    var PRI_BELOWADD = 1;
    var PRI_ADD = 2;
    var PRI_MULT = 3;
    var PRI_EXP = 4;
    var PRI_UNARY = 5;
    var PRI_FCT = 6;

    function AddOp(a, b) {
        var r1, r2, m;
        try { r1 = a.toString().split(".")[1].length } catch (e) { r1 = 0 }
        try { r2 = b.toString().split(".")[1].length } catch (e) { r2 = 0 }
        m = Math.pow(10, Math.max(r1, r2))
        return (a * m + b * m) / m
    }
    function SubOp(a, b) {
        //alert(11.7 - 11);
        var r1, r2, m, n;
        try { r1 = a.toString().split(".")[1].length } catch (e) { r1 = 0 }
        try { r2 = b.toString().split(".")[1].length } catch (e) { r2 = 0 }
        m = Math.pow(10, Math.max(r1, r2));
        n = (r1 >= r2) ? r1 : r2;
        return ((a * m - b * m) / m).toFixed(n); 
    }
    function MultOp(a, b) {
        //alert(64.2 * 23);
        var m = 0, s1 = a.toString(), s2 = b.toString();
        try { m += s1.split(".")[1].length } catch (e) { }
        try { m += s2.split(".")[1].length } catch (e) { }
        return Number(s1.replace(".", "")) * Number(s2.replace(".", "")) / Math.pow(10, m)
    }
    function DivOp(a, b) {
        if (b == 0)
            return NaN;

        var t1 = 0, t2 = 0, r1, r2;
        try { t1 = a.toString().split(".")[1].length } catch (e) { }
        try { t2 = b.toString().split(".")[1].length } catch (e) { }
        with (Math) {
            r1 = Number(a.toString().replace(".", ""))
            r2 = Number(b.toString().replace(".", ""))
            return (r1 / r2) * pow(10, t2 - t1);
        }
    }
    function MinusOp(a) {
        return -a;
    }
    function ModOp(a, b) {
        return a % b;
    }
    function GreaterThanOp(a, b) {
        return a > b;
    }
    function LesserThanOp(a, b) {
        return a < b;
    }
    function GreaterEquOp(a, b) {
        return a >= b;
    }
    function LesserEquOp(a, b) {
        return a <= b;
    }
    function NotEquOp(a, b) {
        return a != b;
    }
    function AndOp(a, b) {
        return a && b;
    }
    function OrOp(a, b) {
        return a || b;
    }
    function NotOp(a) {
        return !a;
    }
    function EquOp(a, b) {
        return a == b;
    }
    function ifFn(c, a, b) {
        return c ? a : b;
    }
    function javascriptFn(fnname, a, b) {
        var args = Ext.toArray(arguments, 1);
        var f;
        try {
            f = eval(fnname);
        }
        catch (e) {
            YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Express_FuncNoDefine'), fnname);
        }
        return f.apply(undefined, args);
    }
    function minFn(vs) {
        if (vs.length == 0)
            vs.push(0);
        return Math.min.apply(undefined, vs);
    }
    function maxFn(vs) {
        if (vs.length == 0)
            vs.push(0);
        return Math.max.apply(undefined, vs);
    }
    function sumFn(vs) {
        //alert(87.70 + 54.50 + 131.60)
        var rv = 0;
        for (var i = 0; i < vs.length; i++)
            rv = AddOp(rv, Number(vs[i]));

        return rv;
    }
    function avgFn(vs) {
        var rv = 0;
        for (var i = 0; i < vs.length; i++)
            rv = AddOp(rv, Number(vs[i]));

        return vs.length ? DivOp(rv,vs.length) : 0;
    }
    function Parser() {
        this.ops = [
		    { fn: AddOp, pri: PRI_ADD, symbol: '+', unary: false },
		    { fn: SubOp, pri: PRI_ADD, symbol: '-', unary: false },
		    { fn: MultOp, pri: PRI_MULT, symbol: '*', unary: false },
		    { fn: DivOp, pri: PRI_MULT, symbol: '/', unary: false },
		    { fn: Math.pow, pri: PRI_EXP, symbol: '^', unary: false },
		    { fn: MinusOp, pri: PRI_UNARY, symbol: '-', unary: true },
		    { fn: ModOp, pri: PRI_MULT, symbol: '%', unary: false },
		    { fn: GreaterEquOp, pri: PRI_BELOWADD, symbol: '>=', unary: false },
		    { fn: LesserEquOp, pri: PRI_BELOWADD, symbol: '<=', unary: false },
		    { fn: GreaterThanOp, pri: PRI_BELOWADD, symbol: '>', unary: false },
		    { fn: LesserThanOp, pri: PRI_BELOWADD, symbol: '<', unary: false },
		    { fn: NotEquOp, pri: PRI_BELOWADD, symbol: '!=', unary: false },
		    { fn: AndOp, pri: PRI_LOWEST, symbol: '&&', unary: false },
		    { fn: OrOp, pri: PRI_LOWEST, symbol: '||', unary: false },
		    { fn: NotOp, pri: PRI_MULT, symbol: '!', unary: true },
		    { fn: EquOp, pri: PRI_BELOWADD, symbol: '==', unary: false }
		];

        this.functions = {
            "sin": { fn: Math.sin, nbArgs: 1, symbol: 'sin', rpt: false },
            "asin": { fn: Math.asin, nbArgs: 1, symbol: 'asin', rpt: false },
            "cos": { fn: Math.cos, nbArgs: 1, symbol: 'cos', rpt: false },
            "acos": { fn: Math.acos, nbArgs: 1, symbol: 'acos', rpt: false },
            "tan": { fn: Math.tan, nbArgs: 1, symbol: 'tan', rpt: false },
            "atan": { fn: Math.atan, nbArgs: 1, symbol: 'atan', rpt: false },
            "atan2": { fn: Math.atan2, nbArgs: 1, symbol: 'atan2', rpt: false },
            "sqrt": { fn: Math.sqrt, nbArgs: 1, symbol: 'sqrt', rpt: false },
            "abs": { fn: Math.abs, nbArgs: 1, symbol: 'abs', rpt: false },
            "ceil": { fn: Math.ceil, nbArgs: 1, symbol: 'ceil', rpt: false },
            "floor": { fn: Math.floor, nbArgs: 1, symbol: 'floor', rpt: false },
            "log": { fn: Math.log, nbArgs: 1, symbol: 'log', rpt: false },
            "pow": { fn: Math.pow, nbArgs: 2, symbol: 'pow', rpt: false },
            "round": { fn: Math.round, nbArgs: 1, symbol: 'round', rpt: false },
            "exp": { fn: Math.exp, nbArgs: 1, symbol: 'exp', rpt: false },
            "if": { fn: ifFn, nbArgs: 3, symbol: 'if', rpt: false },
            "javascript": { fn: javascriptFn, nbArgs: -1, symbol: 'javascript', rpt: false },
            "min": { fn: minFn, nbArgs: 1, symbol: 'min', rpt: true },
            "max": { fn: maxFn, nbArgs: 1, symbol: 'max', rpt: true },
            "sum": { fn: sumFn, nbArgs: 1, symbol: 'sum', rpt: true },
            "avg": { fn: avgFn, nbArgs: 1, symbol: 'avg', rpt: true }
        };

        this.consts = {
            "E": Math.E,
            "PI": Math.PI
        };
    }

    Parser.parse = function (expr) {
        return new Parser().parse(expr);
    };

    Parser.evaluate = function (expr, variables) {
        return Parser.parse(expr).evaluate(variables);
    };

    Parser.prototype = {
        parse: function (exp) {
            exp = this.removeSpace(exp);
            if (!exp)
                return null;

            var sl = exp.length;
            var sc = 0;
            var wd = '';
            this.curItemTypeStack = [];
            this.itemStack = [];
            this.opStack = [];
            this.vars = [];
            this.exp = exp;

            this.pushCurItemType();

            for (var i = 0; i < sl; i++) {
                var c = exp.charAt(i);

                if (sc === 0) { if (c == '\'' || c == '\"') { sc = c; wd += c; continue; } }
                else { if (c == sc) { sc = 0; } else { wd += c; continue; } }

                var op = this.areNextCharsOpString(exp, i);
                if (op) {
                    i += op.symbol.length - 1;
                    this.onOp(i, wd, op);
                    wd = '';
                }
                else {
                    if (c == ',') {
                        this.onArgSeparator(i, wd);
                        wd = '';
                    }
                    else if (c == '(') {
                        this.onOpenBracket(i, wd);
                        wd = '';
                    }
                    else if (c == ')') {
                        this.onCloseBracket(i, wd);
                        wd = '';
                    }
                    else
                        wd += c;
                }
            }
            this.onExpEnd(sl - 1, wd);

            return this;
        },

        evaluate: function (values) {
            var its = this.itemStack;

            if (its.length == 1 && !its[0].args)
                return its[0].isVar ? values[its[0].val] : its[0].val;

            var idx;
            for (var i = 0; i < its.length; i++) {
                var it = its[i];

                if (idx && idx.itm == it) {
                    if (idx.i < idx.len) {
                        i = idx.start - 1;
                        continue;
                    }
                    else
                        idx = null;
                }

                if (it.beginrpt) {
                    idx = { start: i + 1, len: 0, i: 0, itm: it.beginrpt };
                    for (var j = 0; j < it.vars.length; j++) {
                        var vr = it.vars[j];
                        if (vr in values) {
                            var v = values[it.vars[j]];
                            v = Ext.isArray(v) ? v : [v];
                            idx.len = Math.max(idx.len, v.length);
                        }
                    }
                    continue;
                }

                if ((idx || { len: 1 }).len != 0) {
                    var vs = [];
                    for (var j = 0; j < it.args.length; j++) {
                        var arg = it.args[j];
                        var v = arg.isVar ? values[arg.val] : arg.val;
                        if (idx) {
                            v = Ext.isArray(v) ? v : [v];
                            v = v.length >= idx.len ? v[idx.i] : v[0];
                        }
                        if (it.eval.rpt) {
                            v = Ext.isDefined(v) ? v : [];
                            v = Ext.isArray(v) ? v : [v];
                        }
                        vs.push(v);
                    }

                    var rv = it.eval.fn.apply(undefined, vs);
                    var parg = it.ParentArg;
                    if (idx && parg.item == idx.itm) {
                        parg.val = idx.i == 0 ? [] : parg.val;
                        parg.val.push(rv);
                        idx.i++;
                    }
                    else
                        parg.val = rv;
                }
            }

            return its[its.length - 1].ParentArg.val;
        },

        variables: function () {
            return this.vars;
        },

        removeSpace: function (exp) {
            if (!exp)
                return '';

            var l = exp.length;
            var v = [];
            var f = false;
            for (var i = 0; i < l; i++) {
                var c = exp.charAt(i);
                if (c == '\'' || c == '\"')
                    f = !f;

                if ((c != ' ' && c != '\r' && c != '\n') || f)
                    v.push(c);
            }

            return v.join('');
        },

        areNextCharsOpString: function (exp, pos) {
            if (!Parser.FirstCharStr) {
                var fcs = [];
                for (var i = 0; i < this.ops.length; i++)
                    fcs.push(this.ops[i].symbol.charAt(0));
                Parser.FirstCharStr = fcs.join('');
            }

            var c = exp.charAt(pos);
            if (Parser.FirstCharStr.indexOf(c) == -1)
                return false;

            for (var i = 0; i < this.ops.length; i++) {
                var op = this.ops[i];
                var s = op.symbol;
                var l = op.symbolLength = op.symbolLength || s.length;
                var f = op.firstChar = op.firstChar || s.charAt(0);
                if (c != f)
                    continue;

                var m = true;
                for (var j = 1; j < l; j++) {
                    if (s.charAt(j) != exp.charAt(pos + j)) {
                        m = false;
                        break;
                    }
                }

                if (m) return op;
            }

            return false;
        },

        onOp: function (pos, wd, op) {
            if (!this.parseWord(pos, wd))
                return;

            this.setArgValueFlag(true);
            this.setCurItemType(ItemType_Operator);

            var pitp = this.getPrevItemType();
            var unary = (pitp == ItemType_None || pitp == ItemType_Operator);

            if (op.unary != unary) {
                var s = op.symbol;
                for (var i = 0; i < this.ops.length; i++) {
                    var op1 = this.ops[i];
                    if (op1.symbol == s && op1.unary == unary) {
                        op = op1;
                        break;
                    }
                }
                if (op.unary != unary)
                    YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Express_SynErr001'), this.exp, op.symbol);
            }

            if (pos + op.symbol.length > this.exp.length)
                YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Express_SynErr001'), this.exp, op.symbol);

            var ops = this.opStack;
            if (ops.length > 0) {
                var ppri = ops[ops.length - 1].pri;
                var cpri;
                if (ppri != PRI_OPENBRACKET)
                    cpri = op.pri;

                if (cpri == ppri && ops[ops.length - 1].itemType == ItemType_Operator && ops[ops.length - 1].eval.unary)
                    cpri = ppri + 1; // skip the while

                while (cpri <= ppri) {
                    var opsitm = ops.pop();
                    this.addAndValidateToExprStack(opsitm);

                    if (this.opStack.length == 0)
                        break;

                    ppri = ops[ops.length - 1].pri;
                    if (ppri == PRI_OPENBRACKET)
                        break;
                }
            }

            var opi = {
                nbArgs: unary ? 1 : 2,
                pri: op.pri,
                endWithABlock: false,
                eval: op,
                itemType: ItemType_Operator
            };
            ops.push(opi);
        },

        onArgSeparator: function () {
        },

        onOpenBracket: function (pos, wd) {
            if (!this.parseWord(pos, wd))
                return;

            this.setArgValueFlag(false);

            var opi = {
                pri: PRI_OPENBRACKET,
                endWithABlock: false,
                itemType: ItemType_None
            };
            this.opStack.push(opi);

            if (this.getCurItemType() == ItemType_Function)
                this.itemStack.push({ isUsed: true, isABlock: true });

            this.pushCurItemType();
        },

        onCloseBracket: function (pos, wd) {
            this.onCloseArgSeparator(pos, wd, true);
        },

        onArgSeparator: function (pos, wd) {
            this.onCloseArgSeparator(pos, wd, false);
        },

        onCloseArgSeparator: function (pos, wd, close) {
            if (!this.parseWord(pos, wd))
                return;

            if (this.getCurItemType() == ItemType_Operator)
                YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Express_SynErr002'), this.exp);

            this.curItemTypeStack.pop();

            var nc = this.GetNextChar(pos);
            if (!close) { //arg
                this.pushCurItemType();
                if (nc == ')')
                    YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Express_SynErr003'), this.exp);
            }

            var cpri, popeditems = 0;
            var ops = this.opStack;
            do {
                if (ops.length == 0) {
                    if (close)
                        YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Express_SynErr004', this.exp));
                    else
                        YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Express_SynErr003'), this.exp);
                }

                cpri = ops[ops.length - 1].pri;
                if (cpri != PRI_OPENBRACKET) {
                    popeditems++;
                    var opi = ops.pop();
                    this.addAndValidateToExprStack(opi);
                }
            } while (cpri != PRI_OPENBRACKET);

            var isInc = this.incArgCountIfArgValue(ops);
            if (close) {
                ops.pop();
                if (this.getCurItemType() != ItemType_Function)
                    this.setCurItemType(ItemType_Value);
            }

            if (popeditems == 0) {
                if (!close && !isInc)
                    YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Express_SynErr003'), this.exp);
            }

            this.setArgValueFlag((close && (nc == ')' || nc == ',')) ? isInc : false);
        },

        onExpEnd: function (pos, wd) {
            this.parseWord(pos, wd);

            var ops = this.opStack;
            var its = this.itemStack;
            var nbOps = ops.length;
            var invT = nbOps - 1;

            for (var i = ops.length - 1; i >= 0; i--) {
                var opi = ops[i];
                if (opi.pri == PRI_OPENBRACKET)
                    YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Express_SynErr005'), this.exp);

                this.addAndValidateToExprStack(opi);
            }

            var l = its.length;
            for (var i = l - 1; i >= 0; i--) {
                var itm = its[i];
                if (itm.isABlock || (itm.isEvaluated && i != l - 1)) {
                    its.splice(i, 1);
                }
            }

            var l = its.length;
            for (var i = 0; i < l; i++) {
                var itm = its[i];
                if (itm.eval && itm.eval.rpt) {
                    var j;
                    var vs = [];
                    for (j = i - 1; j >= 0; j--) {
                        var itm1 = its[j];
                        if (!this.IsParent(itm, itm1))
                            break;
                        var args = itm1.args;
                        if (itm1.eval.rpt)
                            YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Express_SynErr006'), this.exp, itm1.eval.symbol);

                        for (var k = 0; k < args.length; k++) {
                            var arg = args[k];
                            if (arg.isVar)
                                vs.push(arg.val);
                        }
                    }

                    its.splice(j + 1, 0, { beginrpt: itm, vars: vs });
                    l++;
                    i++;
                }
            }


            var lit = its[its.length - 1];
            lit.ParentArg = lit.val || {};
        },

        GetNextChar: function (pos) {
            return this.exp.charAt(pos + 1) || '';
        },

        IsParent: function (itm, itm1) {
            while (itm1 && itm1.ParentArg) {
                itm1 = itm1.ParentArg.item;
                if (itm1 == itm)
                    return true;
            }

            return false;
        },

        setArgValueFlag: function (b) {
            if (this.opStack.length > 0) {
                var t = this.opStack.length - 1;
                if (this.opStack[t].pri == PRI_OPENBRACKET)
                    t--;

                if (t >= 0)
                    this.opStack[t].argValue = b;
            }
        },

        pushCurItemType: function () {
            this.curItemTypeStack.push({ current: ItemType_None, previous: ItemType_None });
        },

        setCurItemType: function (type) {
            var its = this.curItemTypeStack;
            var last = its[its.length - 1];
            last.previous = last.current;
            last.current = type;
        },

        getPrevItemType: function () {
            var its = this.curItemTypeStack;
            return its[its.length - 1].previous;
        },

        getCurItemType: function () {
            var its = this.curItemTypeStack;
            return its[its.length - 1].current;
        },

        addAndValidateToExprStack: function (opi) {
            if (opi.itemType == ItemType_Function) {
                if (opi.eval.nbArgs != -1 && opi.eval.nbArgs != opi.nbArgs)
                    YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Express_SynErr007'), this.exp, opi.eval.symbol, opi.eval.nbArgs);
            }

            var info = {
                eval: opi.eval,
                nbArgs: opi.nbArgs,
                args: [],
                endWithABlock: opi.endWithABlock
            };
            this.itemStack.push(info);

            try { this.evaluateValidate(); }
            catch (e) { YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Express_SynErr008'), e.message); }
        },

        evaluateValidate: function () {
            this.allConstants = true;
            this.nbPops = 0;

            var its = this.itemStack;
            if (its.length == 0)
                return 0;

            var val = this.evaluateValidateItem(its.length - 1);
            its[its.length - 1].isUsed = true;

            for (var t = 0; t < its.length; t++)
                its[t].isUsed = false;

            return val;
        },

        evaluateValidateItem: function (idx) {
            var its = this.itemStack;
            var itm = its[idx];

            if (itm.isUsed)
                YZSoft.Error.Throw('Internal Error:001');

            if (itm.isEvaluated) {
                itm.isUsed = true;
                return itm.val;
            }

            this.popPtr = idx - 1;

            for (var i = itm.nbArgs - 1; i >= 0; i--) {
                var arg = itm.args[i] = itm.args[i] || { item: itm };
                var popv = this.popValidate(arg);
                arg.isVar = popv.isVar || false;
                arg.val = Ext.isDefined(popv.val) ? popv.val : null;
            }

            var val = { val: 0 };
            if (itm.endWithABlock) {
                if (!its[this.popPtr].isABlock)
                    YZSoft.Error.Throw('Internal Error:002'); // unused item! too many arguments
                else
                    this.popPtr--;
            }
            return val;
        },

        popValidate: function (parentArg) {
            this.nbPops++;
            if (this.nbPops < 0)
                YZSoft.Error.Throw('Internal Error:003'); // not enough argument

            var val = {};
            var itm = this.itemStack[this.popPtr];

            if (itm.isABlock)
                YZSoft.Error.Throw('Internal Error:004'); // no more argument: missing arguments

            if (itm.isUsed)
                YZSoft.Error.Throw('Internal Error:005'); // already used? something's wrong

            itm.ParentArg = parentArg;
            if (itm.isEvaluated) {
                val.isVar = itm.isVar;
                val.val = itm.val;
                itm.isUsed = true;
                this.popPtr--;
            }
            else {
                val = this.evaluateValidateItem(this.popPtr);
                this.isUsed = true;
            }

            return val;
        },

        parseWord: function (p, w) {
            var rv = true;
            if (!w)
                return true;

            var citp = this.getCurItemType();
            if (citp != ItemType_Operator && citp != ItemType_None)
                YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Express_SynErr009'), this.exp);

            if (this.exp.charAt(p) == '(') {
                var f = this.functions[w];
                if (f) {
                    this.setArgValueFlag(true);
                    this.setCurItemType(ItemType_Function);

                    this.opStack.push({
                        pri: PRI_FCT,
                        endWithABlock: true,
                        nbArgs: 0,
                        eval: f,
                        argValue: false,
                        itemType: ItemType_Function
                    });
                }
                else
                    YZSoft.Error.Throw(RS.$('YZStrings.XFormAgent_Express_SynErr010'), this.exp, w);
            }
            else if (YZSoft.Utility.isNumber(w)) {
                this.setCurItemType(ItemType_Value);
                this.itemStack.push({ isEvaluated: true, val: parseFloat(w) });
                this.setArgValueFlag(true);
            }
            else if (YZSoft.Utility.isString(w)) {
                this.setCurItemType(ItemType_Value);
                w = w.substring(1, w.length - 1);
                this.itemStack.push({ isEvaluated: true, val: w });
                this.setArgValueFlag(true);
            }
            else {
                var itm = { isEvaluated: true };
                if (w in this.consts) {
                    itm.val = this.consts[w];
                }
                else {
                    itm.isVar = true;
                    itm.val = w;
                    if (!(w in this.vars))
                        this.vars.push(w);
                }

                this.setCurItemType(ItemType_Value);
                this.itemStack.push(itm);
                this.setArgValueFlag(true);
            }

            this.lastWord = w;
            this.curWord = '';
            return rv;
        },

        incArgCountIfArgValue: function (ops) {
            if (ops.length > 0) {
                var idx = ops.length - 1;
                if (ops[idx].pri == PRI_OPENBRACKET)
                    idx--;

                if (idx >= 0) {
                    if (ops[idx].argValue) {
                        if (ops[idx].itemType == ItemType_Function)
                            ops[idx].nbArgs++;
                        return true;
                    }
                }
            }
            return false;
        }
    };

    scope.Parser = Parser;
    return Parser;
})(YZSoft.XForm);

YZSoft.XForm.Agent.Init();

window.onload = function(){
};

XFormShell = {
    PrintPreview: function (param) {
        if (Ext.isIE) {
            try {
                XFormShell.shell = XFormShell.shell || new ActiveXObject("YZSoft.XFormShell");
                XFormShell.shell.XFormAgent.PrintPreview(param);
            }
            catch (e) {
                if (confirm(RS.$('YZStrings.XFormAgent_InstallShellMsg')) == true)
                    YZSoft.DialogManager.OpenWindow(Ext.id(), 'YZSoft/Forms/ClientSupport/ManualInstall.aspx', {}, { width: 800, height: 430 }); /*ShowIFrameDialog*/
                else
                    window.print();
            }
        }
        else {
            window.print();
        }
    }
};

XFormShell.XFormAgent = {
    CalcExpress:YZSoft.XForm.Agent.CalcDynamicExpress,
    SaveAsDraft:YZSoft.XForm.Agent.SaveAsDraft,
    SaveAsFormTemplate: YZSoft.XForm.Agent.SaveAsFormTemplate,
    SaveDraft: YZSoft.XForm.Agent.SaveDraft,
    Save:YZSoft.XForm.Agent.Save,
    SaveFormApplication:YZSoft.XForm.Agent.SaveFormApplication,
    IndicateSubmit:YZSoft.XForm.Agent.IndicateSubmit,
    InformSubmit: YZSoft.XForm.Agent.InformSubmit,
    Resign: YZSoft.XForm.Agent.Resign,
    DoAction:YZSoft.XForm.Agent.Post,
    GetKey:YZSoft.XForm.Agent.GetKey,
    GetSerialNum:YZSoft.XForm.Agent.GetSerialNum,
    OnChange:XFormOnChange,
    AppendBlock:YZSoft.XForm.Agent.AppendBlock,
    PrintPreview:XFormShell.PrintPreview,
    IsFieldWritable:YZSoft.XForm.Agent.IsFieldWritable
};
