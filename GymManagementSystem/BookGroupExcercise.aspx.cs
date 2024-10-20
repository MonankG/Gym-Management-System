using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymManagementSystem
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Monank\\Documents\\gymdb.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");
                {
                    con.Open();

                    int id = int.Parse(TextBox6.Text);
                    string name = TextBox1.Text;
                    DateTime groupDate = DateTime.Parse(TextBox2.Text); // Parse the date string into a DateTime object
                    string contactno = TextBox3.Text;
                    string address = TextBox8.Text;
                    string days = TextBox7.Text;

                    string query = "INSERT INTO groupexercise (cust_id,cust_name,cust_groupDate,cust_contactno,cust_exercisedays,cust_address) " +
                                   "VALUES (@id, @name, @groupDate, @contactno, @days, @address)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        // Use parameters to avoid SQL injection
                        cmd.Parameters.AddWithValue("@id", id);
                        cmd.Parameters.AddWithValue("@name", name);
                        cmd.Parameters.AddWithValue("@groupDate", groupDate);
                        cmd.Parameters.AddWithValue("@contactno", contactno);
                        cmd.Parameters.AddWithValue("@days", days);
                        cmd.Parameters.AddWithValue("@address", address);

                        cmd.ExecuteNonQuery();
                    }

                    Response.Redirect("BookGroupExcercise.aspx");
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