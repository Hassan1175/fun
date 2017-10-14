using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SEGP_PROJECTNEWWW.Theme.unify
{
    public partial class _2page_Co_record : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            
            conn.Open();
            string com = "select Name,User_name,Email,Date from sign where role='Co_Head'";
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