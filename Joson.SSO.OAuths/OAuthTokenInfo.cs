using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;

namespace Joson.SSO.OAuth
{
    public class OAuthToken
    {

        public virtual int ID { get; set; }
        public virtual String UserAgent { get; set; }
        public virtual bool isLocked { get; set; }

        public virtual String TokenVal { get; set; }
        public virtual String AccountID { get; set; }
        public virtual String AccountName { get; set; }
        public virtual String PassWords { get; set; }
        public virtual String WebSiteName { get; set; }

        public virtual String ReturnURL { get; set; }
        public virtual String RedirectURL { get; set; }

        public virtual String LogInIP { get; set; }
        public virtual String LogInDtime { get; set; }
        public virtual String LogOutDtime { get; set; }


    }
}


 