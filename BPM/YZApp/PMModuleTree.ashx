<%@ WebHandler Language="C#" Class="BPMApp.PMModuleTree" %>

using System;
using System.Web;
using System.Text;

namespace BPMApp
{
    public class PMModuleTree : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            YZAuthHelper.AshxAuthCheck();
            
            JsonItemCollection rootItems = new JsonItemCollection();
            JsonItem item;
            JsonItem config;
            JsonItemCollection children;
            JsonItemCollection tabs;

            item = new JsonItem();
            rootItems.Add(item);
            item.Attributes["text"] = "生产设备";
            item.Attributes["expanded"] = true;
            children = new JsonItemCollection();
            item.Attributes.Add("children", children);

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "DeviceFolder";
            item.Attributes["text"] = "设备管理";
            tabs = new JsonItemCollection();
            item.Attributes.Add("tabs", tabs);

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "DeviceStep1";
            item.Attributes["text"] = "设备管理-基本";
            item.Attributes["moduleUrl"] = "YZApp/PM/ProductionDevice1Panel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "DeviceStep2";
            item.Attributes["text"] = "设备管理-应用权限";
            item.Attributes["modulePerm"] = new YZModulePermision("d0ebfcf9-0007-44b3-b218-ef94628de67e", YZModuleDeniedBehavior.Hide);
            item.Attributes["moduleUrl"] = "YZApp/PM/ProductionDevice2Panel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "DeviceStep3";
            item.Attributes["text"] = "设备管理-增加公开与记录授权";
            item.Attributes["modulePerm"] = new YZModulePermision("d0ebfcf9-0007-44b3-b218-ef94628de67e", YZModuleDeniedBehavior.Hide);
            item.Attributes["moduleUrl"] = "YZApp/PM/ProductionDevice3Panel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "DeviceStep4";
            item.Attributes["text"] = "设备管理-发起流程";
            item.Attributes["modulePerm"] = new YZModulePermision("d0ebfcf9-0007-44b3-b218-ef94628de67e", YZModuleDeniedBehavior.Hide);
            item.Attributes["moduleUrl"] = "YZApp/PM/ProductionDevice4Panel.js";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "DeviceStep";
            item.Attributes["text"] = "设备管理-完全版";
            item.Attributes["modulePerm"] = new YZModulePermision("d0ebfcf9-0007-44b3-b218-ef94628de67e", YZModuleDeniedBehavior.Hide);
            item.Attributes["moduleUrl"] = "YZApp/PM/ProductionDevicePanel.js";

            //item = new JsonItem();
            //tabs.Add(item);
            //item.Attributes["id"] = "DeviceRepairRecord";
            //item.Attributes["text"] = "维保记录";
            //item.Attributes["moduleUrl"] = "";

            //item = new JsonItem();
            //tabs.Add(item);
            //item.Attributes["id"] = "DeviceRoutineRecord";
            //item.Attributes["text"] = "巡检记录";
            //item.Attributes["moduleUrl"] = "";

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "FittingsFolder";
            item.Attributes["text"] = "备品备件";
            tabs = new JsonItemCollection();
            item.Attributes.Add("tabs", tabs);

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "Notice001";
            item.Attributes["text"] = "公告";
            item.Attributes["moduleUrl"] = "YZApp/Notice/NoticePanel.js";
            config = new JsonItem();
            item.Attributes["config"] = config;
            config.Attributes["Type"] = "CIC";

            item = new JsonItem();
            tabs.Add(item);
            item.Attributes["id"] = "DeviceFittings";
            item.Attributes["text"] = "备品/件管理";
            item.Attributes["moduleUrl"] = "";

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "DeviceFolder2";
            item.Attributes["text"] = "设备管理2";
            item.Attributes["ment"] = "本模块正在维护中<br/>预计将于5月12号17：00恢复运行";
            //item.Attributes["url"] = "http://www.baidu.com"; //或者YZSoft/AAA/BBB.aspx,此时ment设置为true即可
            tabs = new JsonItemCollection();
            item.Attributes.Add("tabs", tabs);

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "FittingsFolder2";
            item.Attributes["text"] = "备品备件2";
            item.Attributes["message"] = "本模块正在建设中<br/>预计将于5月12号17：00开放测试";
            //item.Attributes["url"] = "http://www.baidu.com"; //或者YZSoft/AAA/BBB.aspx,此时message可以不设置
            tabs = new JsonItemCollection();
            
            item = new JsonItem();
            rootItems.Add(item);
            item.Attributes["id"] = "CICRole";
            item.Attributes["text"] = "角色管理";
            item.Attributes["expanded"] = true;
            children = new JsonItemCollection();
            item.Attributes.Add("children", children);

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "CICRoleAdmin";
            item.Attributes["text"] = "CIC管理员";
            item.Attributes["modulePerm"] = new YZModulePermision("46a9afa4-a058-4b13-9d0a-6b9998741f7b", YZModuleDeniedBehavior.Hide);
            item.Attributes["moduleUrl"] = "YZSoft/Modules/RoleAdmin/Panel.js";
            config = new JsonItem();
            item.Attributes["config"] = config;
            config.Attributes["rolefullname"] = "BPMOU://YZSoft/CIC管理员";

            item = new JsonItem();
            children.Add(item);
            item.Attributes["id"] = "CICRoleChecker";
            item.Attributes["text"] = "CIC审核员";
            item.Attributes["moduleUrl"] = "YZSoft/Modules/RoleAdmin/Panel.js";
            config = new JsonItem();
            item.Attributes["config"] = config;
            config.Attributes["rolefullname"] = "BPMOU://YZSoft/CIC审核员";
                        
            YZSecurityManager.ApplayPermision(rootItems);

            context.Response.Write(rootItems.ToString());
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
