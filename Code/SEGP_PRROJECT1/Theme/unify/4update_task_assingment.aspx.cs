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
    public partial class _4update_task_assingment : System.Web.UI.Page
    {
        public string s;


        public string id;

        public static int ab;
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                s = Session["Name"].ToString();
                Response.Write(s);

            }





            conn.Open();
            string com = "select Row#,Project_Name,Task_Name,RA, Group_ID,S_Date,E_Date,Name from Task_Assingment where Co_Head= '" + s + "' ";

            SqlCommand sq = new SqlCommand(com, conn);

            DataTable dt = new DataTable();
            SqlDataReader rd = sq.ExecuteReader();
            dt.Load(rd);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }





        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
           
                id =(GridView1.SelectedRow.FindControl("Label1") as Label).Text;
             //id = GridView1.SelectedRow.Cells[1].Text;
            //string num = GridView1.SelectedDataKey.Value.ToString();
         //   string num = GridView1.Rows[e.NewSelectedIndex].Cells[1].Text;


           //string num= (Label)this.GridView1.Rows[e.NewSelectedIndex].Cells[1].FindControl("Label1");

                    ab = Convert.ToInt32(id);
                   Response.Write(ab);




           
                      conn.Open();
          
                    string del = "Delete from Task_Assingment where Row#= '"+ab+"'";
                      SqlCommand sq = new SqlCommand(del, conn);
                      sq.ExecuteNonQuery();
                    
                      conn.Close();


                      refresh();
                   
           // deleting();
        }
        protected void refresh() {

            conn.Open();
            string comm = "select Row#,Project_Name,Task_Name,RA, Group_ID,S_Date,E_Date from Task_Assingment where Co_Head= '" + s + "' ";

            SqlCommand sq = new SqlCommand(comm, conn);

            DataTable dtt = new DataTable();
            SqlDataReader rd = sq.ExecuteReader();



            if (GridView1.Rows.Count > 0)
            {
                dtt.Load(rd);
                GridView1.DataSource = dtt;
                GridView1.DataBind();
                conn.Close();
            }
            else {
                GridView1.Rows[0].Cells[0].Text = "No Records Found"; //Print a message
                GridView1.Rows[1].Cells[1].Text = "No Records Found"; //Print a message
            }
          
        
        }



}
}