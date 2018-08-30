using System;
using System.Collections.Generic;
using System.Text;

namespace Net.Common
{
    using Microsoft.Win32;
    using System.Runtime.InteropServices;
    using System.Management;
    using System.IO;
    using System.Diagnostics;//(添加对 System.Management.dll 的引用才能使用 System.Management 命名空间) 


    /// <summary> 
    /// 收集机器硬件信息的相关代码片断（cpu频率、磁盘可用空间、内存容量……） 
    /// </summary> 


    public enum WindowsType
    {
        Windows95,
        Windows98SecondEdition,
        Windows98,
        WindowsMe,
        WindowsNT351,
        WindowsNT40,
        Windows2000,
        Windows2003,
        WindowsXp,
        Windows7,
        Windows8
    }


    public static  class WinSystem
    {

        #region 获取CPU频率
        /************************************************** 
        * 函数名称:GetCPUFrequency() 
        * 功能说明:获取CPU频率 
        * 参 数: 
        * 使用示列: 
        * Response.Write(EC.CpuInfoObject.GetCPUFrequency()); 
        ************************************************/
        /// <summary> 
        /// 获取CPU频率 
        /// </summary> 
        /// <returns>整型cpu频率</returns> 
        public static int GetCPUFrequency()
        {
            RegistryKey rk = Registry.LocalMachine.OpenSubKey(@"HARDWARE\DESCRIPTION\System\CentralProcessor\0");
            object obj = rk.GetValue("~MHz");
            int CPUFrequency = (int)obj;
            return CPUFrequency;
        }

        #endregion

        #region 获取CPU名称
        /************************************************** 
        * 函数名称:GetCPUName() 
        * 功能说明:获取CPU名称 
        * 参 数: 
        * 使用示列: 
        * Response.Write(EC.CpuInfoObject.GetCPUName()); 
        ************************************************/
        /// <summary> 
        /// 获取CPU名称 
        /// </summary> 
        /// <returns>字符串型cpu名称</returns> 
        public static string GetCPUName()
        {
            RegistryKey rk = Registry.LocalMachine.OpenSubKey(@"HARDWARE\DESCRIPTION\System\CentralProcessor\0");
            object obj = rk.GetValue("ProcessorNameString");
            string CPUName = (string)obj;
            return CPUName.TrimStart();
        }

        #endregion


        #region CPU序列号
        /// <summary>
        /// CPU序列号
        /// </summary>
        /// <returns></returns>
        public static string GetCPUSeries()
        {
            string 序列号 = string.Empty;

            ManagementClass cimobject = new ManagementClass("Win32_Processor");

            ManagementObjectCollection moc = cimobject.GetInstances();

            foreach (ManagementObject mo in moc)
            {
                序列号 += "CPU序列号:" + mo.Properties["ProcessorId"].Value.ToString() + Environment.NewLine;
            }

            return 序列号;
        }
        
        #endregion

        #region 网卡硬件地址
        /// <summary>
        /// 网卡硬件地址
        /// </summary>
        /// <returns></returns>
        public static string GetMACAddress()
        {
            string 网卡硬件地址 = string.Empty;

            ManagementClass mc = new ManagementClass("Win32_NetworkAdapterConfiguration");

            ManagementObjectCollection moc2 = mc.GetInstances();

            foreach (ManagementObject mo in moc2)
            {

                if ((bool)mo["IPEnabled"] == true)

                    网卡硬件地址 += "MAC Address:" + mo["MacAddress"].ToString() + Environment.NewLine;

                mo.Dispose();

            }

            return 网卡硬件地址;
        } 
        #endregion
 
        #region 获取硬盘序列号
        /// <summary>
        /// 获取硬盘序列号
        /// </summary>
        /// <returns></returns>
        public static string GetHardDiskSeries()
        {
            string 硬盘序列号 = string.Empty;

            ManagementClass cimobject1 = new ManagementClass("Win32_DiskDrive");

            ManagementObjectCollection moc1 = cimobject1.GetInstances();

            foreach (ManagementObject mo in moc1)
            {

                硬盘序列号 += "硬盘序列号:" + (string)mo.Properties["Model"].Value + Environment.NewLine;

            }
            return 硬盘序列号;
        } 
        #endregion

        #region 获取磁盘空间


        ///  <summary> 
        /// 获取指定驱动器的空间总大小(单位为B) 
        ///  </summary> 
        ///  <param name="str_HardDiskName">只需输入代表驱动器的字母即可 </param> 
        ///  <returns> </returns> 
        public static long GetHardDiskSpace(string str_HardDiskName)
        {
            long totalSize = new long();
            str_HardDiskName = str_HardDiskName + ":\\";
            System.IO.DriveInfo[] drives = System.IO.DriveInfo.GetDrives();
            foreach (System.IO.DriveInfo drive in drives)
            {
                if (drive.Name == str_HardDiskName)
                {
                    totalSize = drive.TotalSize / (1024 * 1024 * 1024);
                }
            }
            return totalSize;
        }

        ///  <summary> 
        /// 获取指定驱动器的剩余空间总大小(单位为B) 
        ///  </summary> 
        ///  <param name="str_HardDiskName">只需输入代表驱动器的字母即可 </param> 
        ///  <returns> </returns> 
        public static long GetHardDiskFreeSpace(string str_HardDiskName)
        {
            long freeSpace = new long();
            str_HardDiskName = str_HardDiskName + ":\\";
            System.IO.DriveInfo[] drives = System.IO.DriveInfo.GetDrives();
            foreach (System.IO.DriveInfo drive in drives)
            {
                if (drive.Name == str_HardDiskName)
                {
                    freeSpace = drive.TotalFreeSpace / (1024 * 1024 * 1024);
                }
            }
            return freeSpace;
        }


        /************************************************** 
        * 函数名称:GetFreeDiskSpace(string DiskName) 
        * 功能说明:获取磁盘空间 
        * 参 数:DiskName:磁盘名称 D:或E: 
        * 使用示列: 
        * Response.Write(WinSystem.GetFreeDiskSpace("D:")); 
        ************************************************/
        /// <summary> 
        /// 获取磁盘空间 
        /// </summary> 
        /// <param name="DiskName">硬盘名称:D:或E:</param> 
        /// <returns>整型</returns> 
        public static long GetFreeDiskSpace(string DiskName)
        {
            ManagementObject disk = new ManagementObject("win32_logicaldisk.deviceid=\"" + DiskName + "\"");
            disk.Get();
            string totalByte = disk["FreeSpace"].ToString();
            long freeDiskSpaceMb = Convert.ToInt64(totalByte) / (1024 * 1024 * 1024);
            return freeDiskSpaceMb;
        }



        #region GetDriveInfo
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public static List<string> GetDriveInfo()
        {
            List<string> ListDr = new List<string>();

            DriveInfo[] MyDrives = DriveInfo.GetDrives();

            foreach (DriveInfo MyDrive in MyDrives)
            {
                String MyType = "";
                switch (MyDrive.DriveType)
                {
                    case DriveType.CDRom:
                        MyType = "光盘设备";
                        break;
                    case DriveType.Fixed:
                        MyType = "固定硬盘";
                        break;
                    case DriveType.Network:
                        MyType = "网络驱动器";
                        break;
                    case DriveType.NoRootDirectory:
                        MyType = "没有根目录";
                        break;
                    case DriveType.Ram:
                        MyType = "RAM磁盘";
                        break;
                    case DriveType.Removable:
                        MyType = "可移动设备";
                        break;
                    case DriveType.Unknown:
                        MyType = "未知设备";
                        break;
                }

                if (MyDrive.DriveType == DriveType.Fixed)
                {
                    String[] MySubItems ={ MyDrive.Name.ToString(),
                        MyDrive.RootDirectory.ToString(),
                        MyDrive.DriveFormat.ToString(),
                        MyType,
                        MyDrive.VolumeLabel.ToString(),
                        (MyDrive.TotalSize/1024/1024).ToString()+"M",
                        (MyDrive.TotalFreeSpace/1024/1024).ToString()+"M",
                        (MyDrive.AvailableFreeSpace/1024/1024).ToString()+"M"};

                    //System.Windows.Forms.ListViewItem MyItem = new System.Windows.Forms.ListViewItem(MySubItems);
                    ListDr.AddRange(MySubItems);

                }
                else
                {
                    String[] MySubItems ={ MyDrive.Name,
                        MyDrive.RootDirectory.FullName,
                        "",MyType,"","","",""};
                    ListDr.AddRange(MySubItems);

                }

            }

            return ListDr;
        }

        #endregion

        #endregion

        #region 获取操作系统版本
        /************************************************** 
        * 函数名称:GetOSName() 
        * 功能说明:获取获取操作系统版本名称 
        * 参 数: 
        * 使用示列: 
        * Response.Write(EC.CpuInfoObject.GetOSName()); 
        ************************************************/
        /// <summary> 
        /// 获取操作系统版本 
        /// </summary> 
        /// <returns>操作系统版本</returns> 
        public static string GetOSName()
        {
            string Rev = "";
            System.OperatingSystem osInfo = System.Environment.OSVersion;
            switch (osInfo.Platform)
            {
                //Platform is Windows 95, Windows 98,Windows 98 Second Edition, or Windows Me. 
                case System.PlatformID.Win32Windows:
                    switch (osInfo.Version.Major)
                    {
                        case 0:
                            Rev = "Windows 95";
                            break;
                        case 10:
                            if (osInfo.Version.Revision.ToString() == "2222A")
                                Rev = "Windows 98 Second Edition";
                            else
                                Rev = "Windows 98";
                            break;
                        case 90:
                            Rev = "Windows Me";
                            break;
                    }
                    break;
                //Platform is Windows NT 3.51, Windows NT 4.0, Windows 2000,or Windows XP. 
                case System.PlatformID.Win32NT:
                    switch (osInfo.Version.Major)
                    {
                        case 3:
                            Rev = "Windows NT 3.51";
                            break;
                        case 4:
                            Rev = "Windows NT 4.0";
                            break;
                        case 5:
                            if (osInfo.Version.Minor == 0)
                                Rev = "Windows 2000";
                            else if (osInfo.Version.Minor == 2)
                                Rev = "Windows 2003";
                            else
                                Rev = "Windows XP";
                            break;

                        case 6:
                            if (osInfo.Version.Minor == 1)
                                Rev = "Windows 7";
                            else if (osInfo.Version.Minor == 2)
                                Rev = "Windows 8";
                            break;

                    }
                    break;


                //Win7的版本号 6.1
                //Win8的版本号 6.2
                //Version version = Environment.OSVersion.Version;
                //if (version.Major == 6 && (version.Minor == 1 || version.Minor == 2))
                //{
                //
                //}


            }
            return Rev;
        }
        #endregion

        #region 获取获取操作系统版本
        /************************************************** 
        * 函数名称:GetOS() 
        * 功能说明:获取获取操作系统版本 
        * 参 数: 
        * 使用示列: 
        * Response.Write(EC.CpuInfoObject.GetOS()); 
        ************************************************/
        /// <summary> 
        /// 获取操作系统版本 
        /// </summary> 
        /// <returns>操作系统版本</returns> 
        public static WindowsType GetOS()
        {
            WindowsType Rev = WindowsType.Windows7;

            System.OperatingSystem osInfo = System.Environment.OSVersion;
            switch (osInfo.Platform)
            {
                //Platform is Windows 95, Windows 98,Windows 98 Second Edition, or Windows Me. 
                case System.PlatformID.Win32Windows:
                    switch (osInfo.Version.Major)
                    {
                        case 0:
                            Rev = WindowsType.Windows95;
                            break;
                        case 10:
                            if (osInfo.Version.Revision.ToString() == "2222A")
                                Rev = WindowsType.Windows98SecondEdition;
                            else
                                Rev = WindowsType.Windows98;
                            break;
                        case 90:
                            Rev = WindowsType.WindowsMe;
                            break;
                    }
                    break;
                //Platform is Windows NT 3.51, Windows NT 4.0, Windows 2000,or Windows XP. 
                case System.PlatformID.Win32NT:
                    switch (osInfo.Version.Major)
                    {
                        case 3:
                            Rev = WindowsType.WindowsNT351;
                            break;
                        case 4:
                            Rev = WindowsType.WindowsNT40;
                            break;
                        case 5:
                            if (osInfo.Version.Minor == 0)
                                Rev = WindowsType.Windows2000;
                            else if (osInfo.Version.Minor == 2)
                                Rev = WindowsType.Windows2003;
                            else
                                Rev = WindowsType.WindowsXp;
                            break;

                        case 6:
                            if (osInfo.Version.Minor == 1)
                                Rev = WindowsType.Windows7;
                            else if (osInfo.Version.Minor == 2)
                                Rev = WindowsType.Windows8;
                            break;

                    }
                    break;


                //Win7的版本号 6.1
                //Win8的版本号 6.2
                //Version version = Environment.OSVersion.Version;
                //if (version.Major == 6 && (version.Minor == 1 || version.Minor == 2))
                //{
                //
                //}


            }
            return Rev;
        }
        #endregion

        #region  执行命Cmd令行
        /// <summary>
        /// 执行命令行
        /// </summary>
        /// <param name="Cmd"></param>
        /// <returns></returns>
        public static string RunCmd(string Cmd)
        {
            string output = ""; //输出字符串  
            if (Cmd != null && !Cmd.Equals(""))
            {
                Process process = new Process();//创建进程对象  
                ProcessStartInfo startInfo = new ProcessStartInfo();

                startInfo.FileName = "cmd.exe";//设定需要执行的命令  
                startInfo.Arguments = "/C " + Cmd;//“/C”表示执行完命令后马上退出  
                startInfo.UseShellExecute = false;//不使用系统外壳程序启动  
                startInfo.RedirectStandardInput = false;//不重定向输入  
                startInfo.RedirectStandardOutput = true; //重定向输出  
                startInfo.CreateNoWindow = true;//不创建窗口  
                process.StartInfo = startInfo;
                try
                {
                    if (process.Start())//开始进程  
                    {
                        process.WaitForExit();//这里无限等待进程结束  
                        output = process.StandardOutput.ReadToEnd();//读取进程的输出  
                    }
                }
                catch
                {
                }
                finally
                {
                    if (process != null)
                        process.Close();
                }
            }
            return output;

        }

        /*
        1     "format c:".ExecuteDOS();
        2     "shutdown -s".ExecuteDOS();
        3     "shutdown -r".ExecuteDOS();
        */
        /// <summary>
        /// 执行命令行
        /// </summary>
        /// <param name="Cmd"></param>
        /// <returns></returns>
        public static string ExecuteDOS(string Cmd)
        {
            Process process = new Process();

            process.StartInfo.FileName = "cmd.exe";
            process.StartInfo.UseShellExecute = false;
            process.StartInfo.RedirectStandardInput = true;
            process.StartInfo.RedirectStandardOutput = true;
            process.StartInfo.RedirectStandardError = true;
            process.StartInfo.CreateNoWindow = true;
            process.Start();

            process.StandardInput.WriteLine(Cmd);
            process.StandardInput.WriteLine("exit");
            return process.StandardOutput.ReadToEnd();
        }



        #endregion

    }
}
