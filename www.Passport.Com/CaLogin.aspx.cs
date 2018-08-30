using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Net.LDAPHelper;

namespace Joson.SSO.Passport
{
    public partial class CaLogin : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            String ReQuserName = userName.Text;
            String ReQPassword = Password.Text;

            String LoginDate = DateTime.Now.ToString();

            SystemManchine M = Net.LDAPHelper.SystemManchine.Instance();

            string ComputerName = string.Format("计算机名：{0}", M.ComputerName);
            string UserDomainFullName = string.Format("计算机全名：{0}", M.UserDomainFullName);
            string LoginUserName = string.Format("计算机登录用户：{0}", M.LoginUserName);
            string UserDomainName = string.Format("计算机所在域名：{0}", M.UserDomainName);

            string IpAddress = string.Format("计算机IP地址：{0}", M.IpAddress);
            string MacAddress = string.Format("计算机MAC地址：{0}", M.MacAddress);
            string TotalPhysicalMemory = string.Format("计算机内存：{0}", M.TotalPhysicalMemory);

            string DiskID = string.Format("计算机DiskID：{0}", M.DiskID);
            string CpuID = string.Format("计算机CpuID：{0}", M.CpuID);

            String strInfo = ComputerName + "\nr"
                      + UserDomainFullName + "\nr"
                      + LoginUserName + "\nr"
                      + UserDomainName + "\nr"
                      + IpAddress + "\nr"
                      + MacAddress + "\nr"
                      + TotalPhysicalMemory + "\nr"
                      + DiskID + "\nr"
                      + CpuID + "\nr"
                      + "--------------------------------"
                      + ReQuserName + "\nr"
                      + ReQPassword + "\nr"
                      + LoginDate + "\nr";


            LiInfo.Text = strInfo.Replace("\nr","<BR>");

            //Net.Common.JosonFile.WriteFile(Server.MapPath(ComputerName + "_" + DateTime.Now.ToString()), strInfo);


        }
    }
}