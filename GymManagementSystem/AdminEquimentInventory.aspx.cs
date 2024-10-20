using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymManagementSystem
{
    public partial class ViewEquipment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Monank\\Documents\\gymdb.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");


                con.Open();
                int id = int.Parse(TextBox1.Text);
                string name = TextBox2.Text;
                string des = TextBox5.Text;
                int stock = int.Parse(TextBox3.Text);
                
                string query = "INSERT INTO adEquipTable(eq_id,eq_name,eq_desc,stock) values(" + id + ",'" + name + "','" + des + "','" + stock +  "')";

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

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Monank\\Documents\\gymdb.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");


                con.Open();
                int id = int.Parse(TextBox1.Text);
                

                string query = "Delete from adEquipTable where id =" + id;

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.ExecuteNonQuery();

                
                con.Close();
                Response.Redirect("AdminEquimentInventory.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
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
