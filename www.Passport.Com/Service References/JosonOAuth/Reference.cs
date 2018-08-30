﻿//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.34209
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Joson.SSO.Passport.JosonOAuth {
    using System.Data;
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(Namespace="http://58.251.35.132:8000/", ConfigurationName="JosonOAuth.WebServiceSoap")]
    public interface WebServiceSoap {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://58.251.35.132:8000/DisableAccount", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool DisableAccount(string sAMAccountName);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://58.251.35.132:8000/EnableAccount", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool EnableAccount(string sAMAccountName);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://58.251.35.132:8000/SetPassword", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool SetPassword(string sAMAccountName, string strPassport);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://58.251.35.132:8000/IsAccountLockedOut", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool IsAccountLockedOut(string sAMAccountName);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://58.251.35.132:8000/IsEmailAccountLockedOut", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool IsEmailAccountLockedOut(string sAMAccountName);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://58.251.35.132:8000/UnLockEmailAccount", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool UnLockEmailAccount(string sAMAccountName);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://58.251.35.132:8000/SetEmailPassword", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool SetEmailPassword(string sAMAccountName, string strPassport);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://58.251.35.132:8000/GetEmailOAuth", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool GetEmailOAuth(out Joson.SSO.Passport.JosonOAuth.OUser Entity, string strAccount);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://58.251.35.132:8000/GetOAuth", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool GetOAuth(out Joson.SSO.Passport.JosonOAuth.OUser Entity, string strAccount);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://58.251.35.132:8000/OAuth", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool OAuth(out Joson.SSO.Passport.JosonOAuth.OUser Entity, string strAccount, string strPassport);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://58.251.35.132:8000/GetWorkTime", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet GetWorkTime(string strAccount, int m);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://58.251.35.132:8000/GetContact", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet GetContact(string itemvalue);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://58.251.35.132:8000/GetTaskLst", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        void GetTaskLst(string itemvalue);
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.34234")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://58.251.35.132:8000/")]
    public partial class OUser : object, System.ComponentModel.INotifyPropertyChanged {
        
        private string idField;
        
        private string groupIDField;
        
        private string employeeIDField;
        
        private string objectGUIDField;
        
        private string sAMAccountNameField;
        
        private string userPrincipalNameField;
        
        private string displayNameField;
        
        private string nameField;
        
        private string snField;
        
        private string givenNameField;
        
        private string initialsField;
        
        private int maxPwdAgeField;
        
        private int badPwdCountField;
        
        private string lastLogOnField;
        
        private string lastLogOffField;
        
        private string badPassWordTimeField;
        
        private string pwdLastSetField;
        
        private string userAccountControlField;
        
        private string lastLogonTimestampField;
        
        private string objectCategoryField;
        
        private string distinguishedNameField;
        
        private string memberOfField;
        
        private string gPLinkField;
        
        private string logOnCountField;
        
        private string lockOutTimeField;
        
        private string accountExpiresField;
        
        private string creationTimeField;
        
        private System.DateTime whenCreatedField;
        
        private System.DateTime whenChangedField;
        
        private bool isDisabledField;
        
        private bool isPassWordExpiredField;
        
        private bool isPasswordNeverExpireField;
        
        private bool isNoPasswordRequiredField;
        
        private long maxPasswordAgeField;
        
        private System.Nullable<double> surplusPasswordExpirationDaysField;
        
        private System.DateTime passwordLastSetField;
        
        private System.Nullable<System.DateTime> passwordExpirationDateField;
        
        private string coField;
        
        private string stField;
        
        private string lField;
        
        private string streetAddressField;
        
        private string postOfficeBoxField;
        
        private string postalCodeField;
        
        private string companyField;
        
        private string departmentField;
        
        private string managerField;
        
        private string directReportsField;
        
        private string titleField;
        
        private string mailField;
        
        private string otherMailBoxField;
        
        private string telephoneNumberField;
        
        private string homePhoneField;
        
        private string otherHomePhoneField;
        
        private string mobileField;
        
        private string otherMobileField;
        
        private string iPPhoneField;
        
        private string otherIpPhoneField;
        
        private string pagerField;
        
        private string otherPagerField;
        
        private string facsimileTelephoneNumberField;
        
        private string otherFacsimileTelephoneNumberField;
        
        private string physicalDeliveryOfficeNameField;
        
        private string wWWHomePageField;
        
        private string uRLField;
        
        private string dSCorePropagationDataField;
        
        private string objectCategoryField1;
        
        private string sAMAccountTypeField;
        
        private string primaryGroupIDField;
        
        private string countryCodeField;
        
        private string codePageField;
        
        private string instanceTypeField;
        
        private string houseIdentifierField;
        
        private string descriptionField;
        
        private string infoField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=0)]
        public string ID {
            get {
                return this.idField;
            }
            set {
                this.idField = value;
                this.RaisePropertyChanged("ID");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=1)]
        public string GroupID {
            get {
                return this.groupIDField;
            }
            set {
                this.groupIDField = value;
                this.RaisePropertyChanged("GroupID");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=2)]
        public string EmployeeID {
            get {
                return this.employeeIDField;
            }
            set {
                this.employeeIDField = value;
                this.RaisePropertyChanged("EmployeeID");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=3)]
        public string ObjectGUID {
            get {
                return this.objectGUIDField;
            }
            set {
                this.objectGUIDField = value;
                this.RaisePropertyChanged("ObjectGUID");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=4)]
        public string sAMAccountName {
            get {
                return this.sAMAccountNameField;
            }
            set {
                this.sAMAccountNameField = value;
                this.RaisePropertyChanged("sAMAccountName");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=5)]
        public string userPrincipalName {
            get {
                return this.userPrincipalNameField;
            }
            set {
                this.userPrincipalNameField = value;
                this.RaisePropertyChanged("userPrincipalName");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=6)]
        public string DisplayName {
            get {
                return this.displayNameField;
            }
            set {
                this.displayNameField = value;
                this.RaisePropertyChanged("DisplayName");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=7)]
        public string Name {
            get {
                return this.nameField;
            }
            set {
                this.nameField = value;
                this.RaisePropertyChanged("Name");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=8)]
        public string SN {
            get {
                return this.snField;
            }
            set {
                this.snField = value;
                this.RaisePropertyChanged("SN");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=9)]
        public string GivenName {
            get {
                return this.givenNameField;
            }
            set {
                this.givenNameField = value;
                this.RaisePropertyChanged("GivenName");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=10)]
        public string initials {
            get {
                return this.initialsField;
            }
            set {
                this.initialsField = value;
                this.RaisePropertyChanged("initials");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=11)]
        public int maxPwdAge {
            get {
                return this.maxPwdAgeField;
            }
            set {
                this.maxPwdAgeField = value;
                this.RaisePropertyChanged("maxPwdAge");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=12)]
        public int BadPwdCount {
            get {
                return this.badPwdCountField;
            }
            set {
                this.badPwdCountField = value;
                this.RaisePropertyChanged("BadPwdCount");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=13)]
        public string LastLogOn {
            get {
                return this.lastLogOnField;
            }
            set {
                this.lastLogOnField = value;
                this.RaisePropertyChanged("LastLogOn");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=14)]
        public string LastLogOff {
            get {
                return this.lastLogOffField;
            }
            set {
                this.lastLogOffField = value;
                this.RaisePropertyChanged("LastLogOff");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=15)]
        public string BadPassWordTime {
            get {
                return this.badPassWordTimeField;
            }
            set {
                this.badPassWordTimeField = value;
                this.RaisePropertyChanged("BadPassWordTime");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=16)]
        public string PwdLastSet {
            get {
                return this.pwdLastSetField;
            }
            set {
                this.pwdLastSetField = value;
                this.RaisePropertyChanged("PwdLastSet");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=17)]
        public string UserAccountControl {
            get {
                return this.userAccountControlField;
            }
            set {
                this.userAccountControlField = value;
                this.RaisePropertyChanged("UserAccountControl");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=18)]
        public string lastLogonTimestamp {
            get {
                return this.lastLogonTimestampField;
            }
            set {
                this.lastLogonTimestampField = value;
                this.RaisePropertyChanged("lastLogonTimestamp");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=19)]
        public string ObjectCategory {
            get {
                return this.objectCategoryField;
            }
            set {
                this.objectCategoryField = value;
                this.RaisePropertyChanged("ObjectCategory");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=20)]
        public string DistinguishedName {
            get {
                return this.distinguishedNameField;
            }
            set {
                this.distinguishedNameField = value;
                this.RaisePropertyChanged("DistinguishedName");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=21)]
        public string MemberOf {
            get {
                return this.memberOfField;
            }
            set {
                this.memberOfField = value;
                this.RaisePropertyChanged("MemberOf");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=22)]
        public string GPLink {
            get {
                return this.gPLinkField;
            }
            set {
                this.gPLinkField = value;
                this.RaisePropertyChanged("GPLink");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=23)]
        public string LogOnCount {
            get {
                return this.logOnCountField;
            }
            set {
                this.logOnCountField = value;
                this.RaisePropertyChanged("LogOnCount");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=24)]
        public string LockOutTime {
            get {
                return this.lockOutTimeField;
            }
            set {
                this.lockOutTimeField = value;
                this.RaisePropertyChanged("LockOutTime");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=25)]
        public string AccountExpires {
            get {
                return this.accountExpiresField;
            }
            set {
                this.accountExpiresField = value;
                this.RaisePropertyChanged("AccountExpires");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=26)]
        public string CreationTime {
            get {
                return this.creationTimeField;
            }
            set {
                this.creationTimeField = value;
                this.RaisePropertyChanged("CreationTime");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=27)]
        public System.DateTime WhenCreated {
            get {
                return this.whenCreatedField;
            }
            set {
                this.whenCreatedField = value;
                this.RaisePropertyChanged("WhenCreated");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=28)]
        public System.DateTime WhenChanged {
            get {
                return this.whenChangedField;
            }
            set {
                this.whenChangedField = value;
                this.RaisePropertyChanged("WhenChanged");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=29)]
        public bool IsDisabled {
            get {
                return this.isDisabledField;
            }
            set {
                this.isDisabledField = value;
                this.RaisePropertyChanged("IsDisabled");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=30)]
        public bool IsPassWordExpired {
            get {
                return this.isPassWordExpiredField;
            }
            set {
                this.isPassWordExpiredField = value;
                this.RaisePropertyChanged("IsPassWordExpired");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=31)]
        public bool IsPasswordNeverExpire {
            get {
                return this.isPasswordNeverExpireField;
            }
            set {
                this.isPasswordNeverExpireField = value;
                this.RaisePropertyChanged("IsPasswordNeverExpire");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=32)]
        public bool IsNoPasswordRequired {
            get {
                return this.isNoPasswordRequiredField;
            }
            set {
                this.isNoPasswordRequiredField = value;
                this.RaisePropertyChanged("IsNoPasswordRequired");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=33)]
        public long MaxPasswordAge {
            get {
                return this.maxPasswordAgeField;
            }
            set {
                this.maxPasswordAgeField = value;
                this.RaisePropertyChanged("MaxPasswordAge");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(IsNullable=true, Order=34)]
        public System.Nullable<double> SurplusPasswordExpirationDays {
            get {
                return this.surplusPasswordExpirationDaysField;
            }
            set {
                this.surplusPasswordExpirationDaysField = value;
                this.RaisePropertyChanged("SurplusPasswordExpirationDays");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=35)]
        public System.DateTime PasswordLastSet {
            get {
                return this.passwordLastSetField;
            }
            set {
                this.passwordLastSetField = value;
                this.RaisePropertyChanged("PasswordLastSet");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(IsNullable=true, Order=36)]
        public System.Nullable<System.DateTime> PasswordExpirationDate {
            get {
                return this.passwordExpirationDateField;
            }
            set {
                this.passwordExpirationDateField = value;
                this.RaisePropertyChanged("PasswordExpirationDate");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=37)]
        public string Co {
            get {
                return this.coField;
            }
            set {
                this.coField = value;
                this.RaisePropertyChanged("Co");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=38)]
        public string St {
            get {
                return this.stField;
            }
            set {
                this.stField = value;
                this.RaisePropertyChanged("St");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=39)]
        public string L {
            get {
                return this.lField;
            }
            set {
                this.lField = value;
                this.RaisePropertyChanged("L");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=40)]
        public string streetAddress {
            get {
                return this.streetAddressField;
            }
            set {
                this.streetAddressField = value;
                this.RaisePropertyChanged("streetAddress");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=41)]
        public string postOfficeBox {
            get {
                return this.postOfficeBoxField;
            }
            set {
                this.postOfficeBoxField = value;
                this.RaisePropertyChanged("postOfficeBox");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=42)]
        public string postalCode {
            get {
                return this.postalCodeField;
            }
            set {
                this.postalCodeField = value;
                this.RaisePropertyChanged("postalCode");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=43)]
        public string Company {
            get {
                return this.companyField;
            }
            set {
                this.companyField = value;
                this.RaisePropertyChanged("Company");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=44)]
        public string Department {
            get {
                return this.departmentField;
            }
            set {
                this.departmentField = value;
                this.RaisePropertyChanged("Department");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=45)]
        public string Manager {
            get {
                return this.managerField;
            }
            set {
                this.managerField = value;
                this.RaisePropertyChanged("Manager");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=46)]
        public string DirectReports {
            get {
                return this.directReportsField;
            }
            set {
                this.directReportsField = value;
                this.RaisePropertyChanged("DirectReports");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=47)]
        public string Title {
            get {
                return this.titleField;
            }
            set {
                this.titleField = value;
                this.RaisePropertyChanged("Title");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=48)]
        public string Mail {
            get {
                return this.mailField;
            }
            set {
                this.mailField = value;
                this.RaisePropertyChanged("Mail");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=49)]
        public string OtherMailBox {
            get {
                return this.otherMailBoxField;
            }
            set {
                this.otherMailBoxField = value;
                this.RaisePropertyChanged("OtherMailBox");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=50)]
        public string TelephoneNumber {
            get {
                return this.telephoneNumberField;
            }
            set {
                this.telephoneNumberField = value;
                this.RaisePropertyChanged("TelephoneNumber");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=51)]
        public string HomePhone {
            get {
                return this.homePhoneField;
            }
            set {
                this.homePhoneField = value;
                this.RaisePropertyChanged("HomePhone");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=52)]
        public string OtherHomePhone {
            get {
                return this.otherHomePhoneField;
            }
            set {
                this.otherHomePhoneField = value;
                this.RaisePropertyChanged("OtherHomePhone");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=53)]
        public string Mobile {
            get {
                return this.mobileField;
            }
            set {
                this.mobileField = value;
                this.RaisePropertyChanged("Mobile");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=54)]
        public string OtherMobile {
            get {
                return this.otherMobileField;
            }
            set {
                this.otherMobileField = value;
                this.RaisePropertyChanged("OtherMobile");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=55)]
        public string IPPhone {
            get {
                return this.iPPhoneField;
            }
            set {
                this.iPPhoneField = value;
                this.RaisePropertyChanged("IPPhone");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=56)]
        public string OtherIpPhone {
            get {
                return this.otherIpPhoneField;
            }
            set {
                this.otherIpPhoneField = value;
                this.RaisePropertyChanged("OtherIpPhone");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=57)]
        public string Pager {
            get {
                return this.pagerField;
            }
            set {
                this.pagerField = value;
                this.RaisePropertyChanged("Pager");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=58)]
        public string OtherPager {
            get {
                return this.otherPagerField;
            }
            set {
                this.otherPagerField = value;
                this.RaisePropertyChanged("OtherPager");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=59)]
        public string facsimileTelephoneNumber {
            get {
                return this.facsimileTelephoneNumberField;
            }
            set {
                this.facsimileTelephoneNumberField = value;
                this.RaisePropertyChanged("facsimileTelephoneNumber");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=60)]
        public string otherFacsimileTelephoneNumber {
            get {
                return this.otherFacsimileTelephoneNumberField;
            }
            set {
                this.otherFacsimileTelephoneNumberField = value;
                this.RaisePropertyChanged("otherFacsimileTelephoneNumber");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=61)]
        public string physicalDeliveryOfficeName {
            get {
                return this.physicalDeliveryOfficeNameField;
            }
            set {
                this.physicalDeliveryOfficeNameField = value;
                this.RaisePropertyChanged("physicalDeliveryOfficeName");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=62)]
        public string wWWHomePage {
            get {
                return this.wWWHomePageField;
            }
            set {
                this.wWWHomePageField = value;
                this.RaisePropertyChanged("wWWHomePage");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=63)]
        public string URL {
            get {
                return this.uRLField;
            }
            set {
                this.uRLField = value;
                this.RaisePropertyChanged("URL");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=64)]
        public string dSCorePropagationData {
            get {
                return this.dSCorePropagationDataField;
            }
            set {
                this.dSCorePropagationDataField = value;
                this.RaisePropertyChanged("dSCorePropagationData");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=65)]
        public string objectCategory {
            get {
                return this.objectCategoryField1;
            }
            set {
                this.objectCategoryField1 = value;
                this.RaisePropertyChanged("objectCategory");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=66)]
        public string sAMAccountType {
            get {
                return this.sAMAccountTypeField;
            }
            set {
                this.sAMAccountTypeField = value;
                this.RaisePropertyChanged("sAMAccountType");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=67)]
        public string primaryGroupID {
            get {
                return this.primaryGroupIDField;
            }
            set {
                this.primaryGroupIDField = value;
                this.RaisePropertyChanged("primaryGroupID");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=68)]
        public string countryCode {
            get {
                return this.countryCodeField;
            }
            set {
                this.countryCodeField = value;
                this.RaisePropertyChanged("countryCode");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=69)]
        public string codePage {
            get {
                return this.codePageField;
            }
            set {
                this.codePageField = value;
                this.RaisePropertyChanged("codePage");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=70)]
        public string instanceType {
            get {
                return this.instanceTypeField;
            }
            set {
                this.instanceTypeField = value;
                this.RaisePropertyChanged("instanceType");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=71)]
        public string houseIdentifier {
            get {
                return this.houseIdentifierField;
            }
            set {
                this.houseIdentifierField = value;
                this.RaisePropertyChanged("houseIdentifier");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=72)]
        public string Description {
            get {
                return this.descriptionField;
            }
            set {
                this.descriptionField = value;
                this.RaisePropertyChanged("Description");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=73)]
        public string Info {
            get {
                return this.infoField;
            }
            set {
                this.infoField = value;
                this.RaisePropertyChanged("Info");
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface WebServiceSoapChannel : Joson.SSO.Passport.JosonOAuth.WebServiceSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class WebServiceSoapClient : System.ServiceModel.ClientBase<Joson.SSO.Passport.JosonOAuth.WebServiceSoap>, Joson.SSO.Passport.JosonOAuth.WebServiceSoap {
        
        public WebServiceSoapClient() {
        }
        
        public WebServiceSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public WebServiceSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebServiceSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebServiceSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool DisableAccount(string sAMAccountName) {
            return base.Channel.DisableAccount(sAMAccountName);
        }
        
        public bool EnableAccount(string sAMAccountName) {
            return base.Channel.EnableAccount(sAMAccountName);
        }
        
        public bool SetPassword(string sAMAccountName, string strPassport) {
            return base.Channel.SetPassword(sAMAccountName, strPassport);
        }
        
        public bool IsAccountLockedOut(string sAMAccountName) {
            return base.Channel.IsAccountLockedOut(sAMAccountName);
        }
        
        public bool IsEmailAccountLockedOut(string sAMAccountName) {
            return base.Channel.IsEmailAccountLockedOut(sAMAccountName);
        }
        
        public bool UnLockEmailAccount(string sAMAccountName) {
            return base.Channel.UnLockEmailAccount(sAMAccountName);
        }
        
        public bool SetEmailPassword(string sAMAccountName, string strPassport) {
            return base.Channel.SetEmailPassword(sAMAccountName, strPassport);
        }
        
        public bool GetEmailOAuth(out Joson.SSO.Passport.JosonOAuth.OUser Entity, string strAccount) {
            return base.Channel.GetEmailOAuth(out Entity, strAccount);
        }
        
        public bool GetOAuth(out Joson.SSO.Passport.JosonOAuth.OUser Entity, string strAccount) {
            return base.Channel.GetOAuth(out Entity, strAccount);
        }
        
        public bool OAuth(out Joson.SSO.Passport.JosonOAuth.OUser Entity, string strAccount, string strPassport) {
            return base.Channel.OAuth(out Entity, strAccount, strPassport);
        }
        
        public System.Data.DataSet GetWorkTime(string strAccount, int m) {
            return base.Channel.GetWorkTime(strAccount, m);
        }
        
        public System.Data.DataSet GetContact(string itemvalue) {
            return base.Channel.GetContact(itemvalue);
        }
        
        public void GetTaskLst(string itemvalue) {
            base.Channel.GetTaskLst(itemvalue);
        }
    }
}
