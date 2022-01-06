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
                    User user = new User();

                    //storing values of txtbox into the members of model class
                    user.Name = txtName.Text;
                    user.Mobile = (int)Convert.ToInt64(txtMobile.Text);
                    user.Email = txtEmail.Text;
                    user.Password = txtPassword.Text;
                    user.Age = Convert.ToInt32(txtAge.Text);

                    //Creating object of DbUtility to pass model class object into the Insert function
                    DbUtility db = new DbUtility();
                    bool isInserted = db.InsertUser(user);

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