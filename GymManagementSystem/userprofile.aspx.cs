using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymManagementSystem
{
    public partial class userprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Monank\\Documents\\gymdb.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");


            con.Open();

            //int id = (int)Session["id"];
            int id = 21;
           string query = "Select * from Member_signup where Member_ID=" + id;
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                TextBox1.Text = reader["Member_name"].ToString();
                TextBox2.Text = reader["Member_DOB"].ToString();
                TextBox3.Text = reader["Member_contact"].ToString();
                TextBox4.Text = reader["Member_email"].ToString();
                TextBox7.Text = reader["Member_pass"].ToString();
                TextBox6.Text = reader["Member_ID"].ToString();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}