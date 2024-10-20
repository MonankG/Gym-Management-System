using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymManagementSystem
{
    public partial class ViewEquipment1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Session["id"] == null)
            {
                Response.Redirect("userlogin.aspx");
            }
            else
            {
                Response.Write("Login first");
            }*/
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Monank\\Documents\\gymdb.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");


                con.Open();
                string name = TextBox2.Text;

                string query = "SELECT * from adEquipTable where name=" + name; 

                SqlCommand cmd = new SqlCommand(query, con);




                cmd.ExecuteNonQuery();

                Response.Redirect("AdminEquimentInventory.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Monank\\Documents\\gymdb.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");


                con.Open();
                string name = TextBox2.Text;

                string query = "SELECT * from adEquipTable where name=" + name;

                SqlCommand cmd = new SqlCommand(query, con);




                cmd.ExecuteNonQuery();

                Response.Redirect("AdminEquimentInventory.aspx");
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}