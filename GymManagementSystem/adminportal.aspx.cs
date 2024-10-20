using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymManagementSystem
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMemberManagement.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminEquimentInventory.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminViewMembership.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminViewGroupExercise.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminMembershipPlans.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPersonalTraining.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminTrainerManagement.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminGymList.aspx");
        }
    }
}