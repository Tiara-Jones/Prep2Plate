using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prep2PlateMVC
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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

                    string checkuser = "select count(*) from Users where Email ='" + TextBoxEmail.Text + "' AND Password='" + TextBoxPassword.Text + "'";
                    SqlCommand com = new SqlCommand(checkuser, connection);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    if (temp == 0)
                    {
                        Response.Write("Login NOT successful. Please Retry..!");
                        return;
                    }

                    Response.Redirect("~/");
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

        }

    }
}