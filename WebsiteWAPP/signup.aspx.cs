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
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Register_Click(object sender, EventArgs e)
        {
            if (Email_Is_Free())
            {
                Sign_Up();
            }
        }

        private bool Email_Is_Free()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            
            string email = this.user_email.Text;
            bool email_available = false;

            con.Open();
            string email_query = "SELECT * FROM users WHERE user_email ='" + email + "'";

            SqlCommand cmd = new SqlCommand(email_query, con);

            cmd.CommandType = System.Data.CommandType.Text;

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            int i = cmd.ExecuteNonQuery();
            
            if (dt.Rows.Count > 0)
            {
                used_email.Text = "Email already taken";
                used_email.ForeColor = System.Drawing.Color.Black;
            }

            else
            {
                email_available = true;
            }

            con.Close();

            return email_available;

        }


        private void Sign_Up()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = Register_Query();

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@user_fname", user_fname.Text);
                cmd.Parameters.AddWithValue("@user_lname", user_lname.Text);
                cmd.Parameters.AddWithValue("@user_email", user_email.Text);
                cmd.Parameters.AddWithValue("@user_password", user_password.Text);
                cmd.Parameters.AddWithValue("@user_gender", user_gender.Text);
                cmd.Parameters.AddWithValue("@user_dob", user_dob.Text);
                cmd.Parameters.AddWithValue("@user_education", user_education.Text);

                cmd.ExecuteNonQuery();

                con.Close();
                //Signup_Status.Text = "Sign Up Successfull";
                //used_email.ForeColor = System.Drawing.Color.Green;                
                Response.Redirect("login.aspx"); //TO SIGN IN
            }

            catch (Exception ex)
            {
                //Signup_Status.Text = "Sorry, Sign Up Wasn't successfull";
                //used_email.ForeColor = System.Drawing.Color.Black;
                Response.Redirect("signup.aspx");
            }
        }


        private static string Register_Query()
        {
            return "INSERT INTO users (user_fname, user_lname, user_email, user_password, user_gender, user_dob,  user_education) " +
                "VALUES (@user_fname, @user_lname,  @user_email, @user_password, @user_gender, @user_dob,  @user_education)";
        }

    }
    }