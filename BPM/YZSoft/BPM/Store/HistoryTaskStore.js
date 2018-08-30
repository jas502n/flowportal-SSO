

Ext.namespace("YZSoft.BPM.Store");

YZSoft.BPM.Store.HistoryTaskStore = Ext.extend(YZSoft.Data.JsonStore, {
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
                url: 'YZSoft/BPM/StoreDataService/HistoryTask.ashx'
            })          
        };

        Ext.apply(cfg,config);
        YZSoft.BPM.Store.HistoryTaskStore.superclass.constructor.call(this,cfg);
    }
});
