using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteWAPP
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string logged_in = Session["user_email"] as String;

            if (Session["user_email"] != null)
            {
                Response.Redirect("home.aspx");

            }

        }

        protected void Login_Btn_Click(object sender, EventArgs e)
        {
            string user_email = this.user_email.Text;
            string user_password = this.user_password.Text;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            con.Open();
            string query = "SELECT * FROM users WHERE user_email ='" + user_email + "' AND user_password = '" + user_password + "'";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.CommandType = System.Data.CommandType.Text;

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            int i = cmd.ExecuteNonQuery();

            if (dt.Rows.Count > 0)
            {
                this.Session["user_email"] = user_email;
                Response.Redirect("Home.aspx");
            }

            else
            {
                hidden_label.Text = "Incorrect email or password";
                hidden_label.ForeColor = System.Drawing.Color.Black;
                Response.Redirect("login.aspx");
            }
            con.Close();
        }
    }
}