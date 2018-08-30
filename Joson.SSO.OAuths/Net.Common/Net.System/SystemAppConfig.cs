using System;
using System.Collections.Generic;
using System.Text;
using System.Configuration;

namespace Net.Common
{

    public class ConfigHelper
    {

        #region 根据键值获取<connectionStrings>配置文件

        #region 根据键值获取ConnectionStrings配置文件
        /// <summary>
        /// 根据键值获取ConnectionStrings配置文件
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public static string GetConnectionStringsConfig(string key)
        {
            string val = string.Empty;
            foreach (string strKey in ConfigurationManager.ConnectionStrings)
            {
                if (key == strKey)
                {

                    val = ConfigurationManager.ConnectionStrings[key].ToString();
                }
            }


            return val;


        }
        #endregion

        #region 根据键值获取ConnectionStrings配置文件
        /// <summary>
        ///  根据键值获取ConnectionStrings配置文件
        /// </summary>
        /// <returns></returns>
        public static Dictionary<string, string> GetConnectionStringsConfig()
        {

            Dictionary<string, string> dict = new Dictionary<string, string>();
            try
            {
                foreach (string key in ConfigurationManager.ConnectionStrings)

                    dict.Add(key, ConfigurationManager.ConnectionStrings[key].ToString());


            }
            catch (Exception)
            {
                // Get the configuration file.
                System.Configuration.Configuration config =
                    ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);

                // Get the appSettings section.
                System.Configuration.ConnectionStringsSection appSettings =
                    (System.Configuration.ConnectionStringsSection)config.GetSection("connectionStrings");
                if (appSettings.ConnectionStrings.Count != 0)
                {
                    foreach (string key in appSettings.ConnectionStrings)
                    {
                        string value = appSettings.ConnectionStrings[key].ToString();

                        dict.Add(key, value);

                    }
                }
            }
            return dict;
        }
        #endregion

        #endregion


        #region 根据键值获取<appSettings>配置文件

        #region 根据键值获取配置文件
        /// <summary>
        /// 根据键值获取配置文件
        /// </summary>
        /// <param name="key">键值</param>
        /// <returns></returns>

        public static string GetConfig(string key)
        {
            string val = string.Empty;
            foreach (string strKey in ConfigurationManager.AppSettings)
            {
                if (key == strKey)
                {
                    val = ConfigurationManager.AppSettings[strKey];
                }
            }

            //if (ConfigurationManager.AppSettings.AllKeys.Contains(key))

            //    val = ConfigurationManager.AppSettings[key];

            return val;

        }
        #endregion

        #region  获取所有配置文件
        /// <summary>
        /// 获取所有配置文件
        /// </summary>
        /// <returns></returns>

        public static Dictionary<string, string> GetConfig()
        {

            Dictionary<string, string> dict = new Dictionary<string, string>();
            try
            {
                foreach (string key in ConfigurationManager.AppSettings.AllKeys)

                    dict.Add(key, ConfigurationManager.AppSettings[key]);
            }
            catch (Exception)
            {
                // Get the configuration file.
                System.Configuration.Configuration config =
                    ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);

                // Get the appSettings section.
                System.Configuration.AppSettingsSection appSettings =
                    (System.Configuration.AppSettingsSection)config.GetSection("appSettings");
                if (appSettings.Settings.Count != 0)
                {
                    foreach (string key in appSettings.Settings.AllKeys)
                    {
                        string value = appSettings.Settings[key].Value;
                        dict.Add(key, value);
                    }
                }
            }

            return dict;
        }
        #endregion

        #region 根据键值获取配置文件

        /// <summary>
        /// 根据键值获取配置文件
        /// </summary>
        /// <param name="key">键值</param>
        /// <param name="defaultValue">默认值</param>
        /// <returns></returns>

        public static string GetConfig(string key, string defaultValue)
        {
            string value = defaultValue;
            try
            {
                foreach (string strKey in ConfigurationManager.AppSettings)
                {
                    if (key == strKey)
                    {
                        value = ConfigurationManager.AppSettings[strKey];
                    }
                }
            }
            catch
            {
                // Get the configuration file.
                System.Configuration.Configuration config =
                    ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
                // Get the appSettings section.
                System.Configuration.AppSettingsSection appSettings =
                    (System.Configuration.AppSettingsSection)config.GetSection("appSettings");
                // Get the settings collection (key/value pairs). 
                if (appSettings.Settings.Count != 0)
                {
                    value = appSettings.Settings[key].Value;
                }
            }

            #region MyRegion

            //if (ConfigurationManager.AppSettings.AllKeys.Contains(key))

            //    value = ConfigurationManager.AppSettings[key];

            //if (value == null)

            //    value = defaultValue; 
            #endregion

            return value;

        }
        #endregion

        #region 写配置文件,如果节点不存在则自动创建

        /// <summary>
        /// 写配置文件,如果节点不存在则自动创建
        /// </summary>
        /// <param name="key">键值</param>
        /// <param name="value">值</param>
        /// <returns></returns>

        public static bool SetConfig(string key, string value)
        {

            try
            {
                Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
                System.Configuration.AppSettingsSection appSettings =
                    (System.Configuration.AppSettingsSection)config.GetSection("appSettings");

                foreach (string strKey in ConfigurationManager.AppSettings)
                {

                    if (key != strKey) { config.AppSettings.Settings.Add(key, value); }
                    else
                    {
                        //config.AppSettings.Settings.Remove(key);
                        //config.AppSettings.Settings.Add(key, value);
                        config.AppSettings.Settings[key].Value = value;
                    }

                }

                #region MyRegion


                //if (!config.AppSettings.Settings.AllKeys.Contains(key))

                //    config.AppSettings.Settings.Add(key, value);

                //else

                //    config.AppSettings.Settings[key].Value = value; 
                #endregion

                config.Save();

                return true;

            }

            catch { return false; }

        }
        #endregion

        #region  写配置文件(用键值创建),如果节点不存在则自动创建

        /// <summary>
        /// 写配置文件(用键值创建),如果节点不存在则自动创建
        /// </summary>
        /// <param name="dict">键值集合</param>
        /// <returns></returns>

        public static bool SetConfig(Dictionary<string, string> dict)
        {

            try
            {

                if (dict == null || dict.Count == 0)
                    return false;

                Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
                System.Configuration.AppSettingsSection appSettings =
                    (System.Configuration.AppSettingsSection)config.GetSection("appSettings");


                foreach (string key in dict.Keys)
                {

                    string value = dict[key].ToString();

                    foreach (string strKey in ConfigurationManager.AppSettings)
                    {

                        if (key != strKey) { config.AppSettings.Settings.Add(key, value); }
                        else
                        {
                            //config.AppSettings.Settings.Remove(key);
                            //config.AppSettings.Settings.Add(key, value);
                            config.AppSettings.Settings[key].Value = value;
                        }

                    }

                    //SetConfig(key, dict[key]);

                    #region MyRegion

                    //if (!config.AppSettings.Settings.AllKeys.Contains(key))

                    //    config.AppSettings.Settings.Add(key, dict[key]);

                    //else

                    //    config.AppSettings.Settings[key].Value = dict[key]; 
                    #endregion

                }

                //config.Save();
                config.Save(ConfigurationSaveMode.Modified);
                // Force a reload of a changed section.
                ConfigurationManager.RefreshSection("appSettings");

                return true;

            }

            catch { return false; }

        }
        #endregion

        #endregion

    }

}