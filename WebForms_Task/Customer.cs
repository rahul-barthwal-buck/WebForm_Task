using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebForms_Task
{
    //Model class
    public class Customer
    {
        public string Name { get; set; }
        public int Mobile { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public int Age { get; set; }
    }
}