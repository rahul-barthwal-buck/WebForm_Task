using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebForms_Task
{
    //Here we give defintion to Methods of IUser interface methods
    public class DbUtility:ICustomer
    {
        private string ConnectionString = string.Empty;

        public DbUtility()
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
        }

        public bool InsertCustomer(Customer customer)
        {
            bool result = false;
           try
            {
                using (SqlConnection sqlconnection = new SqlConnection(ConnectionString))
                {
                    sqlconnection.Open();
                    using (SqlCommand sqlCommand = new SqlCommand("sp_InsertCustomer", sqlconnection))
                    {
                        sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
                        sqlCommand.Parameters.Add(new SqlParameter("@Name", customer.Name));
                        sqlCommand.Parameters.Add(new SqlParameter("@Mobile", customer.Mobile));
                        sqlCommand.Parameters.Add(new SqlParameter("@Email", customer.Email));
                        sqlCommand.Parameters.Add(new SqlParameter("@Password", customer.Password));
                        sqlCommand.Parameters.Add(new SqlParameter("@Age", customer.Age));

                        int rowsDeleteCount = sqlCommand.ExecuteNonQuery();
                        if (rowsDeleteCount != 0)
                            result = true;
                    }
                }
            }
            catch(Exception e)
            {
                throw e;
            }
            return result;
        }
    }
}