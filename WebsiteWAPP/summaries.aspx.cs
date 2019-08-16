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
    public partial class summaries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string logged_in = Session["user_email"] as String;
                DataTable dt = this.populateBooks();
                StringBuilder html = new StringBuilder();

                foreach (DataRow row in dt.Rows)
                {

                    html.Append("<div class=\"temp\">");

                    html.Append("<h3>" + row["book_title"] + "</h3>");
                    html.Append("<h4>Category:</h4><br>" + row["category_name"] + "<br><br>");
                    html.Append("<h4>Author:</h4><br>" + row["book_author"] + "<br><br>");
                    html.Append("<h4>Publisher:</h4><br>" + row["book_publisher"] + "<br><br>");
                    html.Append("<h4>ISBN:</h4><br>" + row["book_isbn"] + "<br><br>");
                    html.Append("<h4>Summary:</h4><br>" + row["book_summary"] + "<br><br>");

                    if (logged_in == "admin@mail")
                    {
                        html.Append("<a href=\"manageSums.aspx?book_id=" + row["book_id"] + "\">Edit</a>");

                    }
                    html.Append("</div>");
                }

                BookSum.Controls.Add(new Literal { Text = html.ToString() });
            }
        }

        private DataTable populateBooks()
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM books "))
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