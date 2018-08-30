 function ok(obj)
{
    var cbs = GetCheckedBox1(obj,1);
    var length = cbs.length;
    
    if(length == 0 && msg1.length != 0)
    {
        alert(msg1);
        return;
    }

    if(length > 1 && msg2.length != 0)
    {
        alert(msg2);
        return;
    }

    

    CloseWindow('ok',GetCheckBoxIDList1(cbs));
     
 

}
    function GetCheckedBox1(tr,index)
{
    var cbs = new Array();
    
    var inputs = tr.all.tags("INPUT");
    var length = inputs.length;
    for(var i = index ; i < length ; i++)
    {
        var input = inputs[i];
        if( input.type.toLowerCase() == "checkbox" )
        {
            if( input.checked )
                cbs.push(input);
        }
    }
    
    return cbs;
}

function GetCheckBoxIDList1(checkboxs)
{
    var rv = new Array();

    var length = checkboxs.length;
    for(var i = 0 ; i < length ; i++)
    {
        var checkbox = checkboxs[i];
        var col = new Array();
        var m = checkbox.id.split(';');
        for(var i = 0 ; i< m.length;i++)
        {
            var n = m[i].split('=');
            col[n[0]]=n[1];
        }
        rv.push(col);
    }
    
    return rv;
}
