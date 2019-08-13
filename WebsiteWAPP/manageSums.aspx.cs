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
    public partial class manageSums : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String current_id = Request.QueryString["book_id"];
                int integerID = Convert.ToInt32(current_id);

                string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM books WHERE book_id =" + integerID))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                foreach (DataRow row in dt.Rows)
                                {
                                    string book_id = row["book_id"].ToString();
                                    string book_title = row["book_title"].ToString();
                                    string category_name = row["category_name"].ToString();
                                    string book_author = row["book_author"].ToString();
                                    string book_publisher = row["book_publisher"].ToString();
                                    string book_isbn = row["book_isbn"].ToString();
                                    string book_summary = row["book_summary"].ToString();

                                    this.HiddenField_Id.Value = book_id;
                                    this.book_title.Text = book_title;
                                    this.category_name.Text = category_name;
                                    this.book_author.Text = book_author;
                                    this.book_publisher.Text = book_publisher;
                                    this.book_isbn.Text = book_isbn;
                                    this.book_summary.Text = book_summary;
                                }
                            }
                        }
                    }
                }
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            SqlConnection con = new
           SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {

                string query = "UPDATE books SET book_title=@book_title, category_name=@category_name, " +
                    "book_author=@book_author, book_publisher=@book_publisher, book_isbn=@book_isbn, " +
                    "book_summary=@book_summary WHERE book_id=@book_id";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@book_id", HiddenField_Id.Value);
                cmd.Parameters.AddWithValue("@book_title", book_title.Text);
                cmd.Parameters.AddWithValue("@category_name", category_name.Text);
                cmd.Parameters.AddWithValue("@book_author", book_author.Text);
                cmd.Parameters.AddWithValue("@book_publisher", book_publisher.Text);
                cmd.Parameters.AddWithValue("@book_isbn", book_isbn.Text);
                cmd.Parameters.AddWithValue("@book_summary", book_summary.Text);

                con.Open();
                cmd.ExecuteNonQuery();

                Response.Redirect("summaries.aspx");
                con.Close();
            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        //cmd.Parameters.AddWithValue("@book_picture", null);

        protected void Delete_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

                string query = "DELETE FROM books WHERE book_id=@book_id";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@book_id", HiddenField_Id.Value);

                con.Open();
                cmd.ExecuteNonQuery();

                Response.Redirect("summaries.aspx");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}