

Ext.namespace("YZSoft.BPM.Store");

YZSoft.BPM.Store.MyTaskCommentStore = Ext.extend(YZSoft.Data.JsonStore, {
    constructor : function(config){
        var cfg = { 
            root: 'children',
            totalProperty: 'totalRows',
            idProperty: 'TaskID',
            remoteSort: true,
            
            fields: [
                {name:'TaskID'},
                {name:'SerialNum'},
                {name:'ProcessName'},
                { name: 'ProcessVersion' },
                { name: 'OwnerAccount' },
                {name:'OwnerDisplayName'},
                {name:'AgentAccount'},
                {name:'AgentDisplayName'},
                {name:'CreateAt'},
                {name:'State'},
                {name:'Description'},
                {name:'Perm'}
            ],

            proxy: new Ext.data.HttpProxy({
                method: 'GET',
                url: 'MyApp/Demo/MyTaskComment_dev/MyTaskComment.ashx'
            })          
        };

        Ext.apply(cfg,config);
        YZSoft.BPM.Store.MyTaskCommentStore.superclass.constructor.call(this,cfg);
    }
});
