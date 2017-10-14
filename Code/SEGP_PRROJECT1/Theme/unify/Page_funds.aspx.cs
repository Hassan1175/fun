using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace SEGP_PRROJECT1.Theme.unify
{
    public partial class Page_funds : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           // Response.Write("helloe");
            conn.Open();
            string com = "select Project_Name,Currency,Estimated_grant,Donar_Name from funds";
            SqlCommand sc = new SqlCommand(com, conn);
            DataTable dt = new DataTable();

            SqlDataReader dr = sc.ExecuteReader();
            dt.Load(dr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();

        }
    }
}