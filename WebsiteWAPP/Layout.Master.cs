using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteWAPP
{
    public partial class Site1 : System.Web.UI.MasterPage

    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_id"] != null)
            {
                user_id.Text = Session["user_id"].ToString();
                user_id.Enabled = false;
            }
            user_id.Visible = false;
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }


        protected void Summaries_Click(object sender, EventArgs e)
        {
            Response.Redirect("summaries.aspx");
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            Response.Redirect("createSummaries.aspx");
        }

        protected void Contact_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }

        protected void About_Click(object sender, EventArgs e)
        {
            Response.Redirect("about.aspx");
        }

        protected void Login_Click(object sender, EventArgs e)
        {

        }

        protected void Signup_Click(object sender, EventArgs e)
        {

        }
    }
}