using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

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
            try
            {
                string connectionString = System.Configuration.ConfigurationManager
                    .ConnectionStrings["Prep2PlateConnectionString"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string checkuser = "select count(*) from Users where Email ='" + TextBoxEmail.Text + "'";
                    SqlCommand com = new SqlCommand(checkuser, connection);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    if (temp >= 1)
                    {
                        Response.Write("Email already Exists");
                        return;
                    }

                    String query =
                        $"INSERT INTO dbo.Users (FirstName,LastName,Password,Email,SecretQuestion,SecretAnswer) " +
                        $"VALUES ('{TextBoxFN.Text}','{TextBoxLN.Text}','{TextBoxPW.Text}','{TextBoxEmail.Text}', '{DropDownListSQue.Text}', '{TextBoxSAns.Text}')";
                    using (SqlCommand command = new SqlCommand())
                    {
                        command.CommandText = query;
                        command.Connection = connection;
                        int result = command.ExecuteNonQuery();

                        // Check Error
                        if (result < 0)
                        {
                            Response.Write($"{TextBoxFN.Text} Registeration Failed!");
                        }
                        Response.Redirect("~/");

                        connection.Close();


                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

        }


    }

    }
