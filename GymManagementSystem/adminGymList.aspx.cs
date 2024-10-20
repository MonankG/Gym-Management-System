using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymManagementSystem
{
    public partial class adminGymList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Monank\\Documents\\gymdb.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");
                {
                    con.Open();

                    int id = int.Parse(TextBox6.Text);
                    string name = TextBox1.Text;
                    string city = TextBox2.Text;
                    string contact = TextBox3.Text;
                    string address = TextBox5.Text;
                    

                    string query = "INSERT INTO gymlist(gym_id,gym_name,gym_city,gym_address,gym_contactno) VALUES (@id,@name,@city,@address,@contact)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        // Use parameters to avoid SQL injection
                        cmd.Parameters.AddWithValue("@id", id);
                        cmd.Parameters.AddWithValue("@name", name);
                        cmd.Parameters.AddWithValue("@city", city);
                        cmd.Parameters.AddWithValue("@address", address);
                        cmd.Parameters.AddWithValue("@contact", contact);

                        cmd.ExecuteNonQuery();
                    }

                    Response.Redirect("adminGymList.aspx");
                }
            }
            catch (Exception ex)
            {
                // Log the exception instead of displaying it to the user
                // Also, consider using a logging framework like log4net or Serilog
                Response.Write("An error occurred while processing your request.");
                // Log the exception
                Console.WriteLine(ex.ToString());
            }
        }
    }
}