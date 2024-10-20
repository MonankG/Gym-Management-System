using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymManagementSystem
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Monank\\Documents\\gymdb.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");


                con.Open();
                int id = int.Parse(TextBox1.Text);
                
                string password = TextBox2.Text;
                string query = "Select * from admintable where adminID="+id+"and adminPass='"+password+"'";
                SqlCommand cmd = new SqlCommand(query, con);




                SqlDataReader sdr=cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Response.Redirect("AdminPortal.aspx");
                }
                else
                {
                    Response.Write("Wrong id pass");
                }
                
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}