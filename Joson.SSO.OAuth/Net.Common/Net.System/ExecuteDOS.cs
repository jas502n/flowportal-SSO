using System;
using System.Collections.Generic;

using System.Text;

namespace Net.Common
{

    public class RunProcessCmd 
    {
        /// <summary>
        /// 执行DOS命令
        /// </summary>
        /// <param name="Cmd"></param>
        public static string RunCmd(string Cmd) { return WinSystem.ExecuteDOS(Cmd); }

        /// <summary>
        /// 执行DOS命令
        /// 返回执行情况
        /// </summary>
        /// <param name="Cmd"></param>
        public static string RunDOSCmd(string Cmd) { return WinSystem.RunCmd(Cmd); }


    }
    

}
