using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

using System.Management;
using System.Net;
using System.Runtime.InteropServices;
using System.Diagnostics;
using System.ComponentModel;

namespace Joson.SSO.Passport
{
    /// <summary>
    /// TokenOAuth 的摘要说明

    /// GetHostName() 获取机器名
    /// GetHostIP() 获取服务器IP
    /// GetHostMac() 获取服务器MAC地址
    /// GetCustomerIP() 获取客户端动态IP地址
    /// GetCustomerMacInfo() 获取内部网客户端MAC地址
    /// GetCustomerBroswer()客户端浏览器信息
    /// GetCpuId() .获取ＣＰＵ编号
    /// GetMainHardDiskId 获取主硬盘编号
    /// </summary>

    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    // [System.Web.Script.Services.ScriptService]
    public class OAuthHost : System.Web.Services.WebService
    {

        [DllImport("Iphlpapi.dll")]
        private static extern int SendARP(Int32 dest, Int32 host, ref Int64 mac, ref Int32 length);
        [DllImport("Ws2_32.dll")]
        private static extern Int32 Net_addr(string ip);
        public OAuthHost()
        {
            //CODEGEN: 该调用是 ASP.Net Web 服务设计器所必需的
            InitializeComponent();
        }

        #region 组件设计器生成的代码

        //Web 服务设计器所必需的
        private IContainer components = null;

        /// <summary>
        /// 设计器支持所需的方法 - 不要使用代码编辑器修改
        /// 此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
        }

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        protected override void Dispose(bool disposing)
        {
            if (disposing && components != null)
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #endregion


        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [WebMethod]
        public string GetHostName()
        {
            return System.Net.Dns.GetHostName();
        }
        [WebMethod]
        public string GetCpuId()
        {
            System.Management.ManagementClass mc = new ManagementClass("Win32_Processor");
            System.Management.ManagementObjectCollection moc = mc.GetInstances();
            string strCpuID = null;
            foreach (System.Management.ManagementObject mo in moc)
            {
                strCpuID = mo.Properties["ProcessorID"].Value.ToString();
                break;
            }
            return strCpuID;

        }
        [WebMethod]
        public string GetMainHardDiskId()
        {

            ManagementObjectSearcher searcher = new ManagementObjectSearcher("SELECT * FROM Win32_PhysicalMedia");
            String strHardDiskID = null;
            foreach (ManagementObject mo in searcher.Get())
            {
                strHardDiskID = mo["SerialNumber"].ToString().Trim();
                break;
            }
            return strHardDiskID;

        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [WebMethod]
        public string GetHostIP()
        {
            string strIP = "";
            System.Net.IPAddress[] addressList = Dns.GetHostByName(Dns.GetHostName()).AddressList;
            for (int i = 0; i < addressList.Length; i++)
            {
                strIP += " " + addressList[i].ToString();
            }
            return strIP;
        }

        [WebMethod]
        public string GetHostMAC()
        {
            string mac = "";
            System.Management.ManagementClass mc = new ManagementClass("Win32.NetworkAdapterConfiguration");
            ManagementObjectCollection moc = mc.GetInstances();

            foreach (ManagementObject mo in moc)
            {
                if (mo["IPEnabled"].ToString() == "True")
                    mac = Convert.ToString(mo["MacAddress"]);
            }
            return mac;
        }


        [WebMethod]
        public string GetCustomerIP()
        {
            string CustomerIP = "";
            if (HttpContext.Current.Request.ServerVariables["HTTP_VIA"] != null)
            {
                CustomerIP = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();

            }
            else
            {
                CustomerIP = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"].ToString();


            }
            return CustomerIP;


        }
        [WebMethod]
        public string GetCustomerBroswer()
        {

            return HttpContext.Current.Request.ServerVariables["HTTP_USER_AGENT"].ToString();
        }
        [WebMethod]
        public string GetCustomerMacInfo(string HostIP, string CustomerIP)
        {

            Int32 ldest = Net_addr(CustomerIP);     //目的地的ip
            Int32 lhost = Net_addr(HostIP);         //本地的ip 
            Int64 macinfo = new Int64();
            Int32 len = 6;
            //int len=macinfo.Length; 
            SendARP(ldest, 0, ref macinfo, ref len);
            string originalMACAddress = Convert.ToString(macinfo, 16);

            if (originalMACAddress.Length < 12)
            {

                originalMACAddress = originalMACAddress.PadLeft(12, '0');

            }

            string macAddress;

            if (originalMACAddress != "0000" && originalMACAddress.Length == 12)
            {

                string mac1, mac2, mac3, mac4, mac5, mac6;

                mac1 = originalMACAddress.Substring(10, 2);

                mac2 = originalMACAddress.Substring(8, 2);

                mac3 = originalMACAddress.Substring(6, 2);

                mac4 = originalMACAddress.Substring(4, 2);

                mac5 = originalMACAddress.Substring(2, 2);

                mac6 = originalMACAddress.Substring(0, 2);

                macAddress = mac1 + "-" + mac2 + "-" + mac3 + "-" + mac4 + "-" + mac5 + "-" + mac6;

            }

            else
            {

                macAddress = "";

            }
            return macAddress.ToUpper();
        }

        //[WebMethod]
        //public string GetAddressByIp(string userIP)
        //{
        //    getAddress.GetAddressByIP address=new getAddress.GetAddressByIP();
        //    return address.GetAddress(userIP).ToString();
        //}

    }
}
