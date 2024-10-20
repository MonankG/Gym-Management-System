using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymManagementSystem
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Monank\\Documents\\gymdb.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");
                {
                    con.Open();

                    int id = int.Parse(TextBox1.Text);
                    string name = TextBox2.Text;
                    int experience = int.Parse(TextBox3.Text);
                    string contactno = TextBox5.Text;


                    string query = "INSERT INTO trainer_info (trainer_id,trainer_name,trainer_experience,trainer_contactno) VALUES (@id,@name,@experience,@contactno)";

                    SqlCommand cmd = new SqlCommand(query, con);
                    {
                        // Use parameters to avoid SQL injection
                        cmd.Parameters.AddWithValue("@id", id);
                        cmd.Parameters.AddWithValue("@name", name);
                        cmd.Parameters.AddWithValue("@experience", experience);
                        cmd.Parameters.AddWithValue("@contactno", contactno);

                        cmd.ExecuteNonQuery();
                    }

                    Response.Redirect("adminTrainerManagement.aspx");
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Monank\\Documents\\gymdb.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");


                con.Open();
                int id = int.Parse(TextBox1.Text);


                string query = "DELETE FROM trainer_info WHERE trainer_id = " + id;


                SqlCommand cmd = new SqlCommand(query, con);

                cmd.ExecuteNonQuery();


                
                Response.Redirect("adminTrainerManagement.aspx");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}