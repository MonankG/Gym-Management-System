using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymManagementSystem
{
    public partial class adminMembershipPlans : System.Web.UI.Page
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

                    int id = int.Parse(TextBox1.Text);
                    string type = TextBox2.Text;
                    int price = int.Parse(TextBox3.Text);
                    string duration = TextBox5.Text;


                    string query = "INSERT INTO membership_plans (membership_id,membership_type,membership_price,membership_duration) VALUES (@id,@type,@price,@duration)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        // Use parameters to avoid SQL injection
                        cmd.Parameters.AddWithValue("@id", id);
                        cmd.Parameters.AddWithValue("@type", type);
                        cmd.Parameters.AddWithValue("@price", price);
                        cmd.Parameters.AddWithValue("@duration", duration);

                        cmd.ExecuteNonQuery();
                    }

                    Response.Redirect("adminMembershipPlans.aspx");
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