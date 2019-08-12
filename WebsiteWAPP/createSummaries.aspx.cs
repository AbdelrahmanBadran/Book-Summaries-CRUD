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
    public partial class createSummaries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {

            SqlConnection con = new
            SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string book_query = "INSERT INTO books (book_title, category_id," +
                    " , book_author, book_publisher, book_isbn) VALUES " +
                    "(@book_title, @category_id," +
                    " @book_author, @book_publisher, @book_isbn)";

                SqlCommand cmd = new SqlCommand(book_query, con);
                cmd.Parameters.AddWithValue("@book_title", book_title.Text);
                cmd.Parameters.AddWithValue("@category_id", category_id.Text);
                cmd.Parameters.AddWithValue("@book_author", book_author.Text);
                cmd.Parameters.AddWithValue("@book_publisher", book_publisher.Text);
                cmd.Parameters.AddWithValue("@book_isbn", book_isbn.Text);
                //cmd.Parameters.AddWithValue("@book_picture", );
                cmd.ExecuteNonQuery();


                string sum_query = "INSERT INTO books (user_id, book_id," +
                    " , summary_data) VALUES " +
                    "(@user_id, @book_id, @summary_data)";

                SqlCommand sum_cmd = new SqlCommand(sum_query, con);
                //Add this when I can login
                //cmd.Parameters.AddWithValue("@user_id",);
                //cmd.Parameters.AddWithValue("@book_id",);
                cmd.Parameters.AddWithValue("@summary_data", summary_data.Text);
                cmd.Parameters.AddWithValue("@book_publisher", book_publisher.Text);
                cmd.Parameters.AddWithValue("@book_isbn", book_isbn.Text);
                

                sum_cmd.ExecuteNonQuery();

                con.Close();
                
                Response.Redirect("Home.aspx");
            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}