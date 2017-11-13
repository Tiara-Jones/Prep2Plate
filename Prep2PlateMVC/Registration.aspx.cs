using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prep2PlateMVC
{
    public partial class Registration : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //TODO: Parameterized Query
            //TODO: Validate and return failure, if email already 
            //TODO: Add back User Name if needed UserName, '{TextBoxUN.Text}',

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Prep2PlateConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                String query = $"INSERT INTO dbo.Users (FirstName,LastName,Password,Email,SecretQuestion,SecretAnswer) " +
                               $"VALUES ('{TextBoxFN.Text}','{TextBoxLN.Text}','{TextBoxPW.Text}','{TextBoxEmail.Text}', '{DropDownListSQue.Text}', '{TextBoxSAns.Text}')";
                using (SqlCommand command = new SqlCommand())
                {
                    command.CommandText = query;
                    command.Connection = connection;
                    connection.Open();
                    int result = command.ExecuteNonQuery();

                    // Check Error
                    if (result < 0)
                    {
                        Response.Write($"{TextBoxFN.Text} Registeration Failed!");
                    }
                
                    connection.Close();
                }
            }

            Response.Write($"{TextBoxFN.Text} have sucessfully Registered!");
        }

    }
}