using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms_Task
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Button Event to Insert data
        protected void Btn_Register(object sender, EventArgs e)
        {
          
                if (passwordCompareValidator.IsValid)
                {
                //If ComparePassWord Validator is Valid 

                    //Created object of model class for inserting data
                    Customer customer = new Customer();

                //storing values of txtbox into the members of model class
                    customer.Name = txtName.Text;
                    customer.Mobile = (int)Convert.ToInt64(txtMobile.Text);
                    customer.Email = txtEmail.Text;
                    customer.Password = txtPassword.Text;
                    customer.Age = Convert.ToInt32(txtAge.Text);

                    //Creating object of DbUtility to pass model class object into the Insert function
                    DbUtility db = new DbUtility();
                    bool isInserted = db.InsertCustomer(customer);

                    if(isInserted == true)
                    {
                        //If returns true means data inserted then redirect to another page
                        Response.Redirect("Dashboard.aspx");
                    }
                    else
                    {
                        //if returns false then print message in screen
                        lblMessage.Text = "Not Registered";
                    }

                }
        }
    }
}