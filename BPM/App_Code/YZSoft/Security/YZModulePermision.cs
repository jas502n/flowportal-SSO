using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
///YZModulePermision 的摘要说明


/// </summary>
public class YZModulePermision
{
    private string _rsid;
    private bool _genToolbarPermision = true;
    private YZModuleDeniedBehavior _deniedBahavior;

    public YZModulePermision(string rsid,YZModuleDeniedBehavior deniedBehavior)
    {
        this._rsid = rsid;
        this._deniedBahavior = deniedBehavior;
    }

    public YZModulePermision(string rsid, YZModuleDeniedBehavior deniedBehavior,bool genToolbarPermision) 
    {
        this._rsid = rsid;
        this._deniedBahavior = deniedBehavior;
        this._genToolbarPermision = genToolbarPermision;
    }

    public string RSID
    {
        get
        {
            return this._rsid;
        }
        set
        {
            this._rsid = value;
        }
    }

    public bool GenToolbarPermision
    {
        get
        {
            return this._genToolbarPermision;
        }
        set
        {
            this._genToolbarPermision = value;
        }
    }

    public YZModuleDeniedBehavior DeniedBehavior
    {
        get
        {
            return this._deniedBahavior;
        }
        set
        {
            this._deniedBahavior = value;
        }
    }
}
