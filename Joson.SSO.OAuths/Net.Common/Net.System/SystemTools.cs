using System;
using System.Collections.Generic;
using System.Text;
using System.Configuration;
using System.Web.Configuration;

namespace Net.Common
{
    public class SystemException : Exception
    {
        /// <summary>
        /// 包含系统Excepton
        /// </summary>
        public SystemException(string source, string message, Exception inner)
            : base(message, inner)
        {
            base.Source = source;
        }

        /// <summary>
        /// 不包含系统Excepton
        /// </summary>			
        public SystemException(string source, string message)
            : base(message)
        {
            base.Source = source;
        }
    }

    /// <summary>
    /// 处理网页中的HTML代码，并消除危险字符
    /// </summary>
    public class SystemHTML
    {
        private static string HTMLEncode(string fString)
        {
            if (fString != string.Empty)
            {
                ///替换尖括号
                fString.Replace("<", "&lt;");
                fString.Replace(">", "&rt;");
                ///替换引号
                fString.Replace(((char)34).ToString(), "&quot;");
                fString.Replace(((char)39).ToString(), "&#39;");
                ///替换空格
                fString.Replace(((char)13).ToString(), "");
                ///替换换行符
                fString.Replace(((char)10).ToString(), "<BR> ");
            }
            return (fString);
        }
    }



    /// <summary>
    /// 修改connectionStrings
    /// </summary>
    public abstract class AppControl
    {

        #region 修改Config

        //这个应用程序反应了根Web应用程序目录的累积配置
        //在调用 OpenWebConfiguration() 方法时传递的值是 Request.ApplicationPath；
        //如果使用子目录的名字，将会得到子目录文件夹的累积设置；
        //如果使用 Request.CurrentExecutionFilePath 路径，将会得到当前网页所在目录的累积设置项

        public static void UpdateConnectionString(string newName, string newConString, string newProviderName, string path)
        {

            string[] strs = path.Split('\\');
            string exePath = strs[strs.Length - 2];

            ConnectionStringSettings mySettings = string.IsNullOrEmpty(newProviderName) ?
                new ConnectionStringSettings(newName, newConString) :
                new ConnectionStringSettings(newName, newConString, newProviderName);

            Configuration config = WebConfigurationManager.OpenWebConfiguration("/" + exePath);
            config.ConnectionStrings.ConnectionStrings.Remove(newName);
            config.ConnectionStrings.ConnectionStrings.Add(mySettings);
            config.ConnectionStrings.SectionInformation.ForceSave = true;
            config.Save(ConfigurationSaveMode.Modified);
            ConfigurationManager.RefreshSection("connectionStrings");
        }


        // "newName"是你要修改的connectionString的名字，“newConString” 是新的连接字符串，
        // “path”是web.config文件所在的文件夹的全路径。

        //<connectionStrings>
        //    <add name="constr" connectionString="server=10.0.0.0;database=zz;uid=sa;pwd=sa;"/>
        //</connectionStrings>

        //修改Web.config


        //string path = "\\web.Config";
        //string strSql = "server=.;database=test;uid=sa;pwd=sa";
        //string providerName = "System.Data.SqlClient";

        //AppControl.UpdateConnectionString("constr", strSql, providerName, path);



        /// <summary>
        /// 修改web.config
        /// </summary>
        /// <param name="newName"></param>
        /// <param name="newConString"></param>
        /// <param name="newProviderName"></param>
        public static void UpdateWebConnectionString(string newName, string newConString, string newProviderName)
        {

            ConnectionStringSettings mySettings = string.IsNullOrEmpty(newProviderName) ?
                new ConnectionStringSettings(newName, newConString) :
                new ConnectionStringSettings(newName, newConString, newProviderName);


            Configuration config = WebConfigurationManager.OpenWebConfiguration(System.Web.HttpContext.Current.Request.ApplicationPath);
            config.ConnectionStrings.ConnectionStrings.Remove(newName);
            config.ConnectionStrings.ConnectionStrings.Add(mySettings);
            config.ConnectionStrings.SectionInformation.ForceSave = true;
            config.Save(ConfigurationSaveMode.Modified);
            ConfigurationManager.RefreshSection("connectionStrings");
        }


        /// <summary>
        /// 修改调用该方法同级文件夹下的web.config
        /// </summary>
        /// <param name="newName"></param>
        /// <param name="newConString"></param>
        /// <param name="newProviderName"></param>
        public static void UpdateCurrentConnectionString(string newName, string newConString, string newProviderName)
        {

            ConnectionStringSettings mySettings = string.IsNullOrEmpty(newProviderName) ?
                new ConnectionStringSettings(newName, newConString) :
                new ConnectionStringSettings(newName, newConString, newProviderName);

            Configuration config = WebConfigurationManager.OpenWebConfiguration(System.Web.HttpContext.Current.Request.CurrentExecutionFilePath);
            config.ConnectionStrings.ConnectionStrings.Remove(newName);
            config.ConnectionStrings.ConnectionStrings.Add(mySettings);
            config.ConnectionStrings.SectionInformation.ForceSave = true;
            config.Save(ConfigurationSaveMode.Modified);
            ConfigurationManager.RefreshSection("connectionStrings");
        }

        #endregion

        #region 添加appSettings

        /// <summary>
        /// 添加appSettings
        /// </summary>
        /// <param name="Key"></param>
        /// <param name="Value"></param>
        public static void AddAppSettings(string Key, string Value)
        {


            try
            {
                Configuration myConfig = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);

                myConfig.AppSettings.Settings.Add(Key, Value);
                //myConfig.Save();
                myConfig.Save(ConfigurationSaveMode.Modified);
                ConfigurationManager.RefreshSection("appSettings");
            }
            catch
            {

                Configuration myConfig = WebConfigurationManager.OpenWebConfiguration(System.Web.HttpContext.Current.Request.ApplicationPath);
                myConfig.AppSettings.Settings.Add(Key, Value);

                myConfig.Save();
                //myConfig.Save(ConfigurationSaveMode.Modified);
                ConfigurationManager.RefreshSection("appSettings");

            }
        }

        #endregion

        #region 修改appSettings

        /// <summary>
        /// 修改appSettings
        /// </summary>
        /// <param name="Key"></param>
        /// <param name="Value"></param>
        public static void UpdateAppSettings(string Key, string Value)
        {

            try
            {

                Configuration myConfig = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);

                myConfig.AppSettings.Settings[Key].Value = Value;
                myConfig.Save();
                //myConfig.Save(ConfigurationSaveMode.Modified);
                ConfigurationManager.RefreshSection("appSettings");

            }
            catch
            {
                Configuration myConfig = WebConfigurationManager.OpenWebConfiguration(System.Web.HttpContext.Current.Request.ApplicationPath);
                myConfig.AppSettings.Settings[Key].Value = Value;

                //myConfig.Save();
                myConfig.Save(ConfigurationSaveMode.Modified);
                ConfigurationManager.RefreshSection("appSettings");

            }


        }



        /// <summary>
        /// 修改appSettings
        /// </summary>
        /// <param name="Key"></param>
        /// <param name="Value"></param>
        public static void SetAppSettings(string Key, string Value, string Path)
        {
            string sPath = string.Empty;
            Configuration myConfig;


            if (string.IsNullOrEmpty(Path))
            {
                sPath = System.Web.HttpContext.Current.Request.ApplicationPath;
                myConfig = WebConfigurationManager.OpenWebConfiguration(sPath);

            }
            else
            {
                sPath = Path;
                string[] strs = sPath.Split('\\');
                string exePath = strs[strs.Length - 2];
                myConfig = WebConfigurationManager.OpenWebConfiguration("/" + exePath);

            }


            try
            {
                myConfig.AppSettings.Settings[Key].Value = Value;
                myConfig.Save(ConfigurationSaveMode.Modified);

                ConfigurationManager.RefreshSection("appSettings");
            }
            catch
            {

                
                myConfig.AppSettings.Settings.Add(Key,Value);
                myConfig.AppSettings.Settings[Key].Value = Value;
                myConfig.Save(ConfigurationSaveMode.Modified);
                ConfigurationManager.RefreshSection("appSettings");

            }



        }

        #endregion

        #region 添加connectionStrings

        /// <summary>
        /// 添加ConnectionStrings
        /// </summary>
        /// <param name="Key"></param>
        /// <param name="Value"></param>
        public static void AddConnectionStrings(string Key, string Value)
        {
            ConnectionStringSettings mySettings = new ConnectionStringSettings(Key, Value);


            try
            {
                Configuration myConfig = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);

                myConfig.ConnectionStrings.ConnectionStrings.Add(mySettings);
                myConfig.Save();
                // myConfig.Save(ConfigurationSaveMode.Modified);
                ConfigurationManager.RefreshSection("appSettings");
            }
            catch
            {

                Configuration myConfig = WebConfigurationManager.OpenWebConfiguration(System.Web.HttpContext.Current.Request.ApplicationPath);
                myConfig.ConnectionStrings.ConnectionStrings.Add(mySettings);
                //myConfig.Save();
                myConfig.Save(ConfigurationSaveMode.Modified);
                ConfigurationManager.RefreshSection("appSettings");

            }
        }

        #endregion

        #region 修改ConnectionStrings

        /// <summary>
        /// 修改ConnectionStrings
        /// </summary>
        /// <param name="Key"></param>
        /// <param name="Value"></param>
        public static void UpdateConnectionStrings(string Key, string Value)
        {

            try
            {

                Configuration myConfig = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);

                myConfig.ConnectionStrings.ConnectionStrings[Key].ConnectionString = Value;
                //myConfig.Save();
                myConfig.Save(ConfigurationSaveMode.Modified);
                ConfigurationManager.RefreshSection("appSettings");

            }
            catch
            {
                Configuration myConfig = WebConfigurationManager.OpenWebConfiguration(System.Web.HttpContext.Current.Request.ApplicationPath);
                myConfig.ConnectionStrings.ConnectionStrings[Key].ConnectionString = Value;
                //myConfig.Save();
                myConfig.Save(ConfigurationSaveMode.Modified);
                ConfigurationManager.RefreshSection("appSettings");
            }


        }
        #endregion

    }



    public class ConfigureAppConfig
    {
        //静态构造,不能实例化
        static ConfigureAppConfig() { }
        ///<summary>
        /// 获取AppSettings配置节中的Key值
        /// </summary>
        /// <param name="keyName">Key's name</param>
        /// <returns>Key's value</returns>
        public static string GetAppSettingsKeyValue(string keyName)
        {
            return ConfigurationManager.AppSettings.Get(keyName);
        }

        /// <summary>
        /// 获取ConnectionStrings配置节中的值
        /// </summary>
        /// <returns></returns>
        public static string GetConnectionStringsElementValue()
        {
            ConnectionStringSettings settings = System.Configuration.ConfigurationManager.ConnectionStrings["connectionString"];
            return settings.ConnectionString;
        }

        /// <summary>
        /// 保存节点中ConnectionStrings的子节点配置项的值
        /// </summary>
        /// <param name="elementValue"></param>
        public static void ConnectionStringsSave(string ConnectionStringsName, string elementValue)
        {
            System.Configuration.Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            config.ConnectionStrings.ConnectionStrings["connectionString"].ConnectionString = elementValue;
            config.Save(ConfigurationSaveMode.Modified);
            ConfigurationManager.RefreshSection("connectionStrings");
        }

        /// <summary>
        /// 判断appSettings中是否有此项
        /// </summary>
        private static bool AppSettingsKeyExists(string strKey, Configuration config)
        {
            foreach (string str in config.AppSettings.Settings.AllKeys)
            {
                if (str == strKey)
                {
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// 保存appSettings中某key的value值
        /// </summary>
        /// <param name="strKey">key's name</param>
        /// <param name="newValue">value</param>
        public static void AppSettingsSave(string strKey, string newValue)
        {
            System.Configuration.Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            if (AppSettingsKeyExists(strKey, config))
            {
                config.AppSettings.Settings[strKey].Value = newValue;
                config.Save(ConfigurationSaveMode.Modified);
                ConfigurationManager.RefreshSection("appSettings");
            }
        }

    }

    //如果你的程序是对其它程序的配置文件进行操作,代码如下：

    //ExeConfigurationFileMap filemap = new ExeConfigurationFileMap();
    //filemap.ExeConfigFilename = filePath;//配置文件路径
    //config = ConfigurationManager.OpenMappedExeConfiguration(filemap, ConfigurationUserLevel.None);
    //if (AppSettingsKeyExists("Refresh", config))
    //{
    //    config.AppSettings.Settings["Refresh"].Value = M_TimeRead.ToString();
    //} 
    //if (AppSettingsKeyExists("MachineNo", config))
    //{
    //    config.AppSettings.Settings["MachineNo"].Value = M_MachineNo; 
    //}

    //config.Save(ConfigurationSaveMode.Modified);
    //ConfigurationManager.RefreshSection("appSettings"); config.ConnectionStrings.ConnectionStrings["connectionString"].ConnectionString = M_ConnectionString;
    //config.Save(ConfigurationSaveMode.Modified);
    //ConfigurationManager.RefreshSection("connectionStrings");

    //数据库字符串加密

    //ExeConfigurationFileMap filemap = new ExeConfigurationFileMap();
    //filemap.ExeConfigFilename = Application.ExecutablePath + ".Config"; //filePath;
    //config = ConfigurationManager.OpenMappedExeConfiguration(filemap, ConfigurationUserLevel.None);

    ////指定我所要的节点
    //ConfigurationSection section = config.ConnectionStrings; 
    //if ((section.SectionInformation.IsProtected == false) && (section.ElementInformation.IsLocked == false))
    //{
    //    //制定节点加密
    //    section.SectionInformation.ProtectSection(protect);
    //    //即使没有修改也保存设置
    //    section.SectionInformation.ForceSave = true;
    //    //配置文件内容保存到xml
    //    config.Save(ConfigurationSaveMode.Full);
    //}



}
