using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebForms_Task
{
    //Here we give defintion to Methods of IUser interface methods
    public class DbUtility:IUser
    {
        private string ConnectionString = string.Empty;

        public DbUtility()
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
        }

        public bool InsertCustomer(User user)
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
                        sqlCommand.Parameters.Add(new SqlParameter("@Name", user.Name));
                        sqlCommand.Parameters.Add(new SqlParameter("@Mobile", user.Mobile));
                        sqlCommand.Parameters.Add(new SqlParameter("@Email", user.Email));
                        sqlCommand.Parameters.Add(new SqlParameter("@Password", user.Password));
                        sqlCommand.Parameters.Add(new SqlParameter("@Age", user.Age));

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