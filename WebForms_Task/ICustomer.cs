using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebForms_Task
{
    //Interface for Data operation methods
    public interface ICustomer
    {
        bool InsertCustomer(Customer customer);
    }
}
