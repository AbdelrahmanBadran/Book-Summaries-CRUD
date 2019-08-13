using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebsiteWAPP
{
    public partial class manageUsers : System.Web.UI.Page
    {

        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                populateGridView();
            }
        }

        void populateGridView()
        {
            DataTable dtbl = new DataTable();


            using (SqlConnection sqlcon = new SqlConnection(constr))
            {
                sqlcon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("Select * From books ", sqlcon);
                sqlDa.Fill(dtbl);
                gvBooks.DataSource = dtbl;
                gvBooks.DataBind();
            }

            //else
            //{
            //    dtbl.Add(dtbl.NewRow());
            //    gvBooks.DataSource = dtbl;
            //    gvBooks.DataBind();
            //    gvBooks.Rows[0].cells.clear();
            //}

        }

        //protected void gvBooks_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName.Equals("Add"))
        //        using (SqlConnection sqlcon = new SqlConnection(constr))
        //        {
        //            sqlcon.Open();
        //            string query = "Insert"
        //        }
        //}
    }
}