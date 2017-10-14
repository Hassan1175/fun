using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
//OnClientClick="return confirm ('Are you sure');"
namespace SEGP_PRROJECT1.Theme.unify
{
    public partial class update_entry : System.Web.UI.Page
    {

        public static string name;

        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           // refresh();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            name = (GridView1.SelectedRow.FindControl("Label2") as Label).Text;
           // Response.Write(name);
            del1();
            del2();
            del3();
            del4();
            del5();
        }

        public void del1()
        {
            if (name == "Admin")
            {
                
                Label3.Text = "Sorry Admin can not be deleted";
            }
            else
            {
                conn.Open();

                string query = "Delete from sign where User_name= '"+name+"'";
                SqlCommand sq = new SqlCommand(query, conn);
                sq.ExecuteNonQuery();

                conn.Close();

                
            }
            GridView1.DataBind();
           
        }



        public void del2()
        {

         
                conn.Open();

                string query2 = "Delete from RA_group where RA_Name= '"+name+"'";
                SqlCommand sqq = new SqlCommand(query2, conn);
                sqq.ExecuteNonQuery();

                conn.Close();
                GridView1.DataBind();
            }


        public void del3()
        {


            conn.Open();

            string query3 = "Delete from Task_assingment where RA = '" + name + "'  OR Co_Head= '" + name + "'";
            SqlCommand sqqq = new SqlCommand(query3, conn);
            sqqq.ExecuteNonQuery();

            conn.Close();
            GridView1.DataBind();
        }
        public void del4()
        {


            conn.Open();

            string query4 = "Delete from Group_Assingment where Co_Head= '" + name + "'";
            SqlCommand sqqq = new SqlCommand(query4, conn);
            sqqq.ExecuteNonQuery();

            conn.Close();
            GridView1.DataBind();
        }


        public void del5()
        {


            conn.Open();

            string query5 = "Delete from Task_progress where Ra_Name= '" + name + "' OR Co_head= '" + name + "'";
            SqlCommand sqqq = new SqlCommand(query5, conn);
            sqqq.ExecuteNonQuery();

            conn.Close();
            GridView1.DataBind();
        }

    }
}