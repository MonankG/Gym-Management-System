using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymManagementSystem
{
    public partial class PersonalTraining : System.Web.UI.Page
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
                    string date = TextBox2.Text;
                    string contact = TextBox3.Text;
                    string trainer_name = TextBox5.Text;
                    string duration = TextBox7.Text;


                    string query = "insert into personaltraining(member_id,member_name,member_contactno,member_trainingduration,member_trainer,member_trainStartDate) values (@id,@name,@contact,@duration,@trainer_name,@date)";

                    SqlCommand cmd = new SqlCommand(query, con);
                    
                        // Use parameters to avoid SQL injection
                        cmd.Parameters.AddWithValue("@id", id);
                        cmd.Parameters.AddWithValue("@name", name);
                        cmd.Parameters.AddWithValue("@contact", contact);
                        cmd.Parameters.AddWithValue("@duration", duration);
                        cmd.Parameters.AddWithValue("@trainer_name", trainer_name);
                        cmd.Parameters.AddWithValue("@date", date);
                        cmd.ExecuteNonQuery();
                    
                    Response.Redirect("PersonalTraining.aspx");
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                // Log the exception instead of displaying it to the user
                // Also, consider using a logging framework like log4net or Serilog
                Response.Write(ex.Message.ToString());
                // Log the exception
                //Console.WriteLine(ex.ToString());
            }
        }
    }
}