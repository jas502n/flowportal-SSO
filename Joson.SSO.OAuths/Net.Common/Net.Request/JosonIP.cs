using System;
using System.Collections.Generic;

using System.Net;
using System.Text;
using System.Web;

namespace Net.Common
{
   public class JosonIP
    {

        #region Kcy_GetClAddr ホスト名とIPアドレスを取得
        /// <summary>
        /// ホスト名とIPアドレスを取得
        /// </summary>
        /// <remarks>
        /// ホスト名とIPアドレスを取得する
        /// </remarks>
        /// <param name="pRequest">リクエストオブジェクト</param>
        /// <param name="sIpAddr">クライアント・IPアドレス</param>
        /// <param name="sPcName">クライアント・マシン名（端末ID）</param>
        /// <returns>処理結果(正常終了:kcy_normal、異常終了:kcy_err)</returns>
        public static int Kcy_GetClAddr(HttpRequest pRequest,
                out string sIpAddr,
                out string sPcName)
        {
            string sMethod;
            string sLog;
            int iRet;

            iRet = -1;
            sMethod = "Kcy_GetClAddr";
            sIpAddr = "";
            sPcName = "";
            try
            {
                //IPv4
                sIpAddr = get_IPv4(pRequest);
                if (sIpAddr == string.Empty)
                {
                    //IPv6
                    sIpAddr = get_IPv6(pRequest);
                }
                sPcName = get_HostName(pRequest);
                iRet = 0;
            }
            catch (Exception e)
            {
                //異常情報を表示する
                sLog = "クライアント IPアドレス・マシン名の取得（ " + sMethod;
                sLog += ": " + e.Message + "）";
            }

            return iRet;
        }
        #endregion

        #region Kcy_GetClAddr_IPv4 ホスト名とIPアドレス(IPv4)を取得
        /// <summary>
        /// ホスト名とIPアドレス(IPv4)を取得
        /// </summary>
        /// <remarks>
        /// ホスト名とIPアドレス(IPv4)を取得する
        /// </remarks>
        /// <param name="pRequest">リクエストオブジェクト</param>
        /// <param name="sIpAddr">クライアント・IPアドレス(IPv4)</param>
        /// <param name="sPcName">クライアント・マシン名（端末ID）</param>
        /// <returns>処理結果(正常終了:kcy_normal、異常終了:kcy_err)</returns>
        public static int Kcy_GetClAddr_IPv4(HttpRequest pRequest,
                  out string sIpAddr,
                  out string sPcName)
        {
            string sIPv4 = string.Empty;
            string sMethod = "Kcy_GetClAddr_IPv4";
            string sLog;
            int iRet = 0;

            sIpAddr = string.Empty;
            sPcName = string.Empty;

            try
            {
                //IPv4
                sIpAddr = get_IPv4(pRequest);

                //HostName
                sPcName = get_HostName(pRequest);
            }
            catch (Exception e)
            {
                //異常情報を表示する
                sLog = "クライアント IPアドレス・マシン名の取得（ " + sMethod;
                sLog += ": " + e.Message + "）";
            }

            return iRet;
        }
        #endregion

        #region Kcy_GetClAddr_IPv6 ホスト名とIPアドレス(IPv6)を取得
        /// <summary>
        /// ホスト名とIPアドレス(IPv6)を取得
        /// </summary>
        /// <remarks>
        /// ホスト名とIPアドレス(IPv6)を取得する
        /// </remarks>
        /// <param name="pRequest">リクエストオブジェクト</param>
        /// <param name="sIpAddr">クライアント・IPアドレス(IPv6)</param>
        /// <param name="sPcName">クライアント・マシン名（端末ID）</param>
        /// <returns>処理結果(正常終了:kcy_normal、異常終了:kcy_err)</returns>
        public static int Kcy_GetClAddr_IPv6(HttpRequest pRequest,
                  out string sIpAddr,
                  out string sPcName)
        {
            string sMethod = "Kcy_GetClAddr_IPv6";
            string sLog;
            int iRet = 0;

            sIpAddr = string.Empty;
            sPcName = string.Empty;

            try
            {
                //IPv6
                sIpAddr = get_IPv6(pRequest);

                //HostName
                sPcName = get_HostName(pRequest);
            }
            catch (Exception e)
            {
                //異常情報を表示する
                sLog = "クライアント IPアドレス・マシン名の取得（ " + sMethod;
                sLog += ": " + e.Message + "）";
            }

            return iRet;
        }
        #endregion

        #region get_IPv4 IPアドレス(IPv4)を取得
        /// <summary>
        /// IPアドレス(IPv4)を取得
        /// </summary>
        /// <remarks>
        /// IPアドレス(IPv4)を取得する
        /// </remarks>
        /// <param name="pRequest">リクエストオブジェクト</param>
        /// <returns>クライアント・IPアドレス(IPv4)</returns>
        private static string get_IPv4(HttpRequest pRequest)
        {
            string sIpv4 = String.Empty;

            foreach (IPAddress ip in Dns.GetHostAddresses(pRequest.UserHostAddress))
            {
                if (ip.AddressFamily.ToString() == "InterNetwork")
                {
                    sIpv4 = ip.ToString();
                    break;
                }
            }
            if (sIpv4 != String.Empty)
            {
                return sIpv4;
            }

            foreach (IPAddress ip in Dns.GetHostAddresses(Dns.GetHostName()))
            {
                if (ip.AddressFamily.ToString() == "InterNetwork")
                {
                    sIpv4 = ip.ToString();
                    break;
                }
            }

            return sIpv4;
        }
        #endregion

        #region get_IPv6 IPアドレス(IPv6)を取得
        /// <summary>
        /// IPアドレス(IPv6)を取得
        /// </summary>
        /// <remarks>
        /// IPアドレス(IPv6)を取得する
        /// </remarks>
        /// <param name="pRequest">リクエストオブジェクト</param>
        /// <returns>クライアント・IPアドレス(IPv6)</returns>
        private static string get_IPv6(HttpRequest pRequest)
        {
            string sIpv6 = String.Empty;

            //ipv6取得
            sIpv6 = pRequest.UserHostAddress.ToString();

            //ipv4が取得された場合は空白文字にする
            if (System.Text.RegularExpressions.Regex.IsMatch(
             sIpv6, @"^\d{1,255}[.]\d{1,255}[.]\d{1,255}[.]\d{1,255}$"))
            {
                sIpv6 = String.Empty;
            }
            return sIpv6;
        }
        #endregion

        #region get_HostName ホスト名を取得
        /// <summary>
        /// ホスト名を取得
        /// </summary>
        /// <remarks>
        /// ホスト名を取得する
        /// </remarks>
        /// <param name="pRequest">リクエストオブジェクト</param>
        /// <returns>ホスト名</returns>
        private static string get_HostName(HttpRequest pRequest)
        {
            string sIpv4;
            string sComputerName = string.Empty;

            sIpv4 = get_IPv4(pRequest);

            if (sIpv4 == String.Empty)
            {
                return String.Empty;
            }
            else if (sIpv4.Equals("127.0.0.1"))
            {
                return Dns.GetHostName();
            }
            else
            {
                //IPアドレスからホスト名を取得
                sComputerName = Dns.GetHostEntry(sIpv4).HostName;
                int iPos = sComputerName.IndexOf(".");
                if (iPos != -1)
                {
                    sComputerName = sComputerName.Substring(0, iPos);
                }
                return sComputerName;
            }
        }
        #endregion

    }
}
