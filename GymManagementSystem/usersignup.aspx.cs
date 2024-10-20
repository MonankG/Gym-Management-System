using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymManagementSystem
{
    public partial class usersignup : System.Web.UI.Page
    {
        //string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


       

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Monank\\Documents\\gymdb.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");
                
                
                con.Open();
                int id = int.Parse(TextBox6.Text);
                string name=TextBox1.Text;
                string dob=TextBox2.Text;
                string contactno=TextBox3.Text;
                string email=TextBox4.Text;
                string password=TextBox7.Text;
                string query= "INSERT INTO Member_signup (Member_ID,Member_Name,Member_DOB,Member_contact,Member_email,Member_pass) values(" + id+",'"+name+"','"+dob+"','"+contactno+"','"+email+"','"+password+"')";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.ExecuteNonQuery();

                Response.Redirect("userlogin.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}