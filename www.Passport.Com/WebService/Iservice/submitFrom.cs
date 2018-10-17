using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace iAnywhere.YZSoft.services
{
    public class submitFrom
    {
        public static Boolean IsMobileDevice(HttpContext HttpContext, out String UserAgent)
        {
            UserAgent = String.Empty;

            #region IsMobileDevice

            string[] mobileAgents = { "iphone", "android", "phone", "mobile", "wap", "netfront", "java"
                                        , "opera mobi", "opera mini", "ucweb", "windows ce", "symbian"
                                        , "series", "webos", "sony", "blackberry", "dopod", "nokia"
                                        , "samsung", "palmsource", "xda", "pieplus", "meizu", "midp"
                                        , "cldc", "motorola", "foma", "docomo", "up.browser", "up.link"
                                        , "blazer", "helio", "hosin", "huawei", "novarra", "coolpad", "webos"
                                        , "techfaith", "palmsource", "alcatel", "amoi", "ktouch", "nexian", "ericsson"
                                        , "philips", "sagem", "wellcom", "bunjalloo", "maui", "smartphone", "iemobile"
                                        , "spice", "bird", "zte-", "longcos", "pantech", "gionee", "portalmmm", "jig browser"
                                        , "hiptop", "benq", "haier", "^lct", "320x320", "240x320", "176x220", "w3c ", "acs-"
                                        , "alav", "alca", "amoi", "audi", "avan", "benq", "bird", "blac", "blaz", "brew", "cell"
                                        , "cldc", "cmd-", "dang", "doco", "eric", "hipt", "inno", "ipaq", "java", "jigs", "kddi"
                                        , "keji", "leno", "lg-c", "lg-d", "lg-g", "lge-", "maui", "maxo", "midp", "mits", "mmef"
                                        , "mobi", "mot-", "moto", "mwbp", "nec-", "newt", "noki", "oper", "palm", "pana", "pant"
                                        , "phil", "play", "port", "prox", "qwap", "sage", "sams", "sany", "sch-", "sec-", "send"
                                        , "seri", "sgh-", "shar", "sie-", "siem", "smal", "smar", "sony", "sph-", "symb", "t-mo"
                                        , "teli", "tim-", "tosh", "tsm-", "upg1", "upsi", "vk-v", "voda", "wap-", "wapa", "wapi"
                                        , "wapp", "wapr", "webc", "winw", "winw", "xda", "xda-", "googlebot-mobile","micromessenger" };

            #endregion

            bool isMoblie = false;
            if (HttpContext.Request.UserAgent.ToString().ToLower() != null)
            {
                for (int i = 0; i < mobileAgents.Length; i++)
                {
                    if (HttpContext.Request.UserAgent.ToString().ToLower().IndexOf(mobileAgents[i]) >= 0)
                    {
                        UserAgent = mobileAgents[i];
                        isMoblie = true;
                        break;
                    }
                }
            }

            return isMoblie;

        }

        public static String UserAgent(HttpContext context)
        {

            String strFromClient = "\n\r\n@iAnyWhere{0}"; //+ DateTime.Now.ToStrDateL(); 
            string SubmitFrom = Convert.ToString(context.Request.UserAgent);

            IsMobileDevice(context, out SubmitFrom);

            switch (SubmitFrom)
            {
                case "micromessenger":

                    strFromClient = String.Format(strFromClient, "微信客户端");
                    break;
                case "iphone":
                    strFromClient = String.Format(strFromClient, "iPhone客户端");
                    break;
                case "android":
                    strFromClient = String.Format(strFromClient, "Android客户端");
                    break;

                default:
                    strFromClient = String.Format(strFromClient, "移动客户端");
                    break;
            }

            return SubmitFrom;
        }



    }
}