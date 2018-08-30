using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using XWebManage.Models;

using System.Web.Mvc;

namespace Joson.SSO.Passport
{
    public partial class IService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NorthwindContext context = new NorthwindContext();
            var empList = context.Employees.OrderBy(c => c.FirstName).ToList();

            RptData.DataSource = empList;
            RptData.DataBind();
        }
    }


}


namespace XWebManage.Models
{
    public class SkyWorth
    {
        public int ID { get; set; }
        public string DomainName { get; set; }
 
        public string PassWord { get; set; }
        public string UserName { get; set; }
        public int sType { get; set; }

    }


    public class Employee
    {
        public int EmployeeID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }


    public class NorthwindContext : DbContext
    {
        public DbSet<Employee> Employees { get; set; }
    }

    public class mContext : DbContext
    {
        public DbSet<Employee> Employees { get; set; }
        public DbSet<SkyWorth> SkyWorth { get; set; }

        public mContext()
            : base("SQLite")
        {

        }

    }

}