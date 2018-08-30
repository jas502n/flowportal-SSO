using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;

namespace Joson.SSOSite.OAuth
{
    public class OAuthToken
    {

        public virtual int ID { get; set; }
        public virtual String UserAgent { get; set; }
        public virtual bool isLocked { get; set; }

        public virtual String TokenVal { get; set; }
        public virtual String AccountID { get; set; }
        public virtual String AccountName { get; set; }


        public virtual String sAMAccountName { get; set; }
        public virtual String displayName { get; set; }
        public virtual String sn { get; set; }
        public virtual String givenName { get; set; }
        public virtual String initials { get; set; }
        public virtual String company { get; set; }
        public virtual String department { get; set; }
        public virtual string title { get; set; }
        public virtual string mail { get; set; }
        public virtual string otherMailBox { get; set; }
        public virtual DateTime whenCreated { get; set; }
        public virtual DateTime whenChanged { get; set; }

        public virtual string telephoneNumber { get; set; }
        public virtual string homePhone { get; set; }
        public virtual string otherHomePhone { get; set; }
        public virtual string mobile { get; set; }
        public virtual string otherMobile { get; set; }
        public virtual string manager { get; set; }
        public virtual string streetAddress { get; set; }
        public virtual string physicalDeliveryOfficeName { get; set; }
        



        public virtual String PassWords { get; set; }
        public virtual String WebSiteName { get; set; }

        public virtual String ReturnURL { get; set; }
        public virtual String RedirectURL { get; set; }

        public virtual String LogInIP { get; set; }
        public virtual String LogInDtime { get; set; }
        public virtual String LogOutDtime { get; set; }


    }
}


