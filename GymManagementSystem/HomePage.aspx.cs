using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymManagementSystem
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }


        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ViewEquipment.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewTrainerList.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("gymlist.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("PersonalTraining.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("MembershipPlans.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookGroupExcercise.aspx");
        }
    }
}