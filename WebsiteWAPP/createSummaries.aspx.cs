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
    public partial class createSummaries : System.Web.UI.Page
    {
        string constr =  ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (Session["user_email"] == null)
                {
                    //alert user to sign in first and block
                    Response.Redirect("home.aspx");
                    
                }

                //string admin = Session["user_email"].ToString;

                //else if (admin  != "admin@email" )
                //{
                //    //alert user need to be admin
                //    Response.Redirect("home.aspx");

                //}
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {

            SqlConnection con = new
            SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            try
            {
                con.Open();
                string book_query = "INSERT INTO books (book_title, category_id, book_author, book_publisher, book_isbn, book_summary) " +
                    "VALUES (@book_title, @category_id, @book_author, @book_publisher, @book_isbn, @book_summary)";

                SqlCommand cmd = new SqlCommand(book_query, con);
                cmd.Parameters.AddWithValue("@book_title", book_title.Text);
                cmd.Parameters.AddWithValue("@category_id", category_id.Text);
                cmd.Parameters.AddWithValue("@book_author", book_author.Text);
                cmd.Parameters.AddWithValue("@book_publisher", book_publisher.Text);
                cmd.Parameters.AddWithValue("@book_isbn", book_isbn.Text);
                cmd.Parameters.AddWithValue("@book_summary", summary_data.Text);
                //cmd.Parameters.AddWithValue("@book_picture", null);

                cmd.ExecuteNonQuery();
                con.Close();

                //con.Open();
                //string sum_query = "INSERT INTO summaries (user_id, book_id , summary_data) VALUES (@user_id, @book_id, @summary_data)";

                //SqlCommand sum_cmd = new SqlCommand(sum_query, con);

                //int user_ident = FindUserId();
                //int count_books = BooksCount();
                
                //cmd.Parameters.AddWithValue("@user_id", user_ident);
                //cmd.Parameters.AddWithValue("@book_id", count_books);
                //cmd.Parameters.AddWithValue("@summary_data", summary_data.Text);

                //sum_cmd.ExecuteNonQuery();

                //con.Close();
                
                Response.Redirect("Home.aspx");
            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }

        }

        public int BooksCount()
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string numQuery = "SELECT COUNT(*) FROM books";
            int count = 0;

            using (SqlConnection thisConnection = new SqlConnection(constr))
            {
                using (SqlCommand cmdCount = new SqlCommand(numQuery, thisConnection))
                {
                    thisConnection.Open();
                    count = (int)cmdCount.ExecuteScalar();
                }
            }
            return count;
        }

        public int FindUserId()
        {
            string UserEmail = Session["user_email"].ToString();

            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string numQuery = "SELECT user_id FROM users where user_email = '" + UserEmail +"'";
            int UserInfo;

            using (SqlConnection thisConnection = new SqlConnection(constr))
            {
                using (SqlCommand cmdFind = new SqlCommand(numQuery, thisConnection))
                {
                    thisConnection.Open();
                    UserInfo = (int)cmdFind.ExecuteScalar();
                    //count = (int)cmdCount.ExecuteScalar();
                }
            }
            return UserInfo;
        }

        //protected DataTable GetBookId()
        //{            

        //    string book_title = this.book_title.Text;

        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("SELECT book_id FROM users WHERE book_title LIKE '%" + book_title + "%'"))
        //        {
        //            using (SqlDataAdapter sda = new SqlDataAdapter())
        //            {
        //                cmd.Connection = con;
        //                sda.SelectCommand = cmd;

        //                using (DataTable dt = new DataTable())
        //                {
        //                    sda.Fill(dt);
        //                    return dt;
        //                }
        //            }
        //        }
        //    }
        //}
    }
}