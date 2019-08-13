using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteWAPP
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                
                con.Open();
                string query = CommentQuery();

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@guest_about", guest_about.Text);
                cmd.Parameters.AddWithValue("@guest_message", guest_message.Text);
                cmd.Parameters.AddWithValue("@guest_email", guest_email.Text);
                cmd.Parameters.AddWithValue("@guest_full_name", guest_full_name.Text);
                cmd.ExecuteNonQuery();

                con.Close();
               
            }

            catch (Exception ex)
            {
            }

            Response.Redirect("home.aspx");
        }

        private static string CommentQuery()
        {
            return "INSERT INTO guest_book (guest_about, guest_message, guest_email, guest_full_name) " +
                "VALUES (@guest_about, @guest_message,  @guest_email, @guest_full_name)";
        }
    }
}