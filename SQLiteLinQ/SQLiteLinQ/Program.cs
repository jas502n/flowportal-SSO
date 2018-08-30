using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Linq;
using System.Linq;
using System.Text;

namespace SqliteLinqTest
{
    class Program
    {
        static void Main(string[] args)
        {
            NorthwindContext context = new NorthwindContext();
            var empList = context.Employees.OrderBy(c => c.FirstName).ToList();


            //Employee people = new Employee()
            //{
            //    EmployeeID = 10,
            //    FirstName = "King",
            //    LastName = "Rebert"
            //};

 

            //context.Employees.Add(people);
            //context.SaveChanges();


            Console.WriteLine(empList.Count);
            Console.ReadLine();
        }
    }

    public class NorthwindContext : DbContext
    {
        public DbSet<Employee> Employees { get; set; }
    }

    public class Employee
    {
        public int EmployeeID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }

}
