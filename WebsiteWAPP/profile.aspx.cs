using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteWAPP
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string logged_in = Session["user_email"] as String;

                if (Session["user_email"] == null)
                {
                    Response.Redirect("login.aspx");
                }

                else
                {
                    DataTable dt = this.GetData();
                    StringBuilder html = new StringBuilder();

                    foreach (DataRow row in dt.Rows)
                    {
                        html.Append("<div class=\"temp\">");
                        
                        //String gender = Convert.ToString(row["user_gender"]);

                        //if (gender == "M")
                        //{
                        //    html.Append("<img src=\"images/icons8-male-user-96.png\" width=\"60\" height=\"60\">");
                        //}
                        //else
                        //{
                        //    html.Append("<img src=\"images/icons8-female-user-96.png\" width=\"60\" height=\"60\">");
                        //}

                        DateTime dateandtime = (DateTime)row["user_dob"];
                        var justdate = dateandtime.ToString("dd/MM/yyyy");

                        html.Append("<h3>" + row["user_fname"] + "</h3>");
                        html.Append("<h3>" + row["user_lname"] + "</h3>");
                        html.Append("Email:<br>" + row["user_email"] + "<br><br>");
                        html.Append("Date of Birth:<br>" + row["user_dob"] + "<br><br>");
                        html.Append("Education:<br>" + row["user_education"] + "<br><br>");
                        html.Append("Date of Birth:<br>" + justdate + "<br><br>");
                        html.Append("</div>");
                    }

                    AccountProfile.Controls.Add(new Literal { Text = html.ToString() });
                }
            }
        }



        private DataTable GetData()
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                string logged_in = Session["user_email"] as String;

                using (SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE user_email LIKE '%" + logged_in + "%'"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }

    }
}