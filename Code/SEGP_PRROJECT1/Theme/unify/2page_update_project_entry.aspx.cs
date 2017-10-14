using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace SEGP_PRROJECT1.Theme.unify
{
    public partial class _2page_update_project_entry : System.Web.UI.Page
    {
        public static string name;

        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)

        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            name = (GridView1.SelectedRow.FindControl("Label2") as Label).Text;
            //Response.Write(name);
            del1();
            del2();
            del3();
            del4();
            del5();

         
        }


        public void del1()
        {
            
                conn.Open();

                string query = "Delete from project_data where Project_Name= '" + name + "'";
                SqlCommand sq = new SqlCommand(query, conn);
                sq.ExecuteNonQuery();

                conn.Close();
                GridView1.DataBind();

            }

        public void del2()
        {

            conn.Open();

            string query = "Delete from Group_Assingment where Project_Name= '" + name + "'";
            SqlCommand sq = new SqlCommand(query, conn);
            sq.ExecuteNonQuery();

            conn.Close();
            GridView1.DataBind();

        }

        public void del3()
        {

            conn.Open();

            string query = "Delete from Task_assingment where Project_Name= '" + name + "'";
            SqlCommand sq = new SqlCommand(query, conn);
            sq.ExecuteNonQuery();

            conn.Close();
            GridView1.DataBind();

        }


        public void del4()
        {

            conn.Open();

            string query = "Delete from Task_progress where Project= '" + name + "'";
            SqlCommand sq = new SqlCommand(query, conn);
            sq.ExecuteNonQuery();

            conn.Close();
            GridView1.DataBind();

        }

        public void del5()
        {

            conn.Open();
            string query = "Delete from Task_assingment where Project_Name= '" + name + "'";
            SqlCommand sq = new SqlCommand(query, conn);
            sq.ExecuteNonQuery();

            conn.Close();
            GridView1.DataBind();

        }
         


}
}