using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SEGP_PROJECTNEWWW.Theme.unify
{
    public partial class _2page_RA_record : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            string com = "select Name,User_Name,Email,Date from sign where Role='Researcher'";

            SqlCommand sq = new SqlCommand(com, conn);

            DataTable dt = new DataTable();
            SqlDataReader rd = sq.ExecuteReader();
            dt.Load(rd);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}