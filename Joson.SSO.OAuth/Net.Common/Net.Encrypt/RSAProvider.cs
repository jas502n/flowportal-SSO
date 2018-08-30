using System;
using System.Text;
using System.Security.Cryptography;

namespace Net.Common
{

    /// <summary>
    /// 提供RSA加密解密的类
    /// </summary>
    public class RSAProvider
    {
        //指定密钥的初始化大小（单位是bit），增量是8
        //private static int keySize = 5*1024;
        private RSAProvider()
        {
        }
        /// <summary>
        /// 使用指定的包含公钥的XML字符串加密字符串
        /// </summary>
        /// <param name="encryptString">要加密的字符串</param>
        /// <param name="publicKey">包含公钥的XML字符串</param>
        /// <returns></returns>
        public static string EncryptString(string encryptString, string publicKey)
        {
            if (string.IsNullOrEmpty(encryptString) || string.IsNullOrEmpty(publicKey))
            {
                throw new ArgumentNullException("要加密的字符串和公钥不能为空或者长度为0");
            }
            else
            {
                byte[] encryptBytes = Encoding.UTF8.GetBytes(encryptString);
                encryptBytes = EncryptBytes(encryptBytes, publicKey);
                return Convert.ToBase64String(encryptBytes);
            }
        }
        /// <summary>
        /// 使用指定的包含公钥的XML字符串加密字节数组
        /// </summary>
        /// <param name="sourceBytes">要加密的字节数组</param>
        /// <param name="publicKey">包含公钥的XML字符串</param>
        /// <returns></returns>
        public static byte[] EncryptBytes(byte[] sourceBytes, string publicKey)
        {
            RSACryptoServiceProvider provider = new RSACryptoServiceProvider();
            //以指定的值来初始化密钥大小，增量是8
            //RSACryptoServiceProvider provider = new RSACryptoServiceProvider(keySize);
            provider.FromXmlString(publicKey);
            //解密,如果在WinXP及更高版本上第二参数可为true，否则用false
            byte[] resultBytes = provider.Encrypt(sourceBytes, true);
            provider.Clear();
            return resultBytes;
        }
        /// <summary>
        /// 使用指定的私钥解密字符串
        /// </summary>
        /// <param name="encryptString">要解密的字符串</param>
        /// <param name="privateKey">包含公钥和私钥的XML字符串</param>
        /// <returns></returns>
        public static string DecryptString(string encryptString, string privateKey)
        {
            if (string.IsNullOrEmpty(encryptString) || string.IsNullOrEmpty(privateKey))
            {
                throw new ArgumentNullException("要解密的字符串和私钥不能为空或者长度为0");
            }
            else
            {
                byte[] encryptBytes = Convert.FromBase64String(encryptString);
                byte[] resultBytes = DecryptBytes(encryptBytes, privateKey);
                return Encoding.UTF8.GetString(resultBytes);
            }
        }
        /// <summary>
        /// 使用私钥解密加密字节数组
        /// </summary>
        /// <param name="encryptBytes">要解密的字节数组</param>
        /// <param name="privateKey">包含公钥和私钥的XML字符串</param>
        /// <returns></returns>
        public static byte[] DecryptBytes(byte[] encryptBytes, string privateKey)
        {
            RSACryptoServiceProvider provider = new RSACryptoServiceProvider();
            //以指定的值来初始化密钥大小，增量是8
            //RSACryptoServiceProvider provider = new RSACryptoServiceProvider(keySize);
            //导入密钥和公钥信息
            provider.FromXmlString(privateKey);
            //解密,如果在WinXP及更高版本上第二参数可为true，否则用false
            byte[] resultBytes = provider.Decrypt(encryptBytes, true);
            //释放资源
            provider.Clear();
            return resultBytes;
        }
        /// <summary>
        /// 生成仅包含公钥和包含公钥和私钥的XML字符串
        /// </summary>
        /// <returns>数组中第一个元素是公钥XML字符串，第二个是包含了公钥和私钥的XML字符串</returns>
        public static string[] GenerateKeys()
        {
            string[] keys = new string[2];
            RSACryptoServiceProvider provider = new RSACryptoServiceProvider();
            //以指定的值来初始化密钥大小，增量是8
            //RSACryptoServiceProvider provider = new RSACryptoServiceProvider(keySize);
            //生成包含公钥的XML字符串
            keys[0] = provider.ToXmlString(false);
            //生成包含公钥和私钥的XML字符串
            keys[1] = provider.ToXmlString(true);
            return keys;
        }
    }
}