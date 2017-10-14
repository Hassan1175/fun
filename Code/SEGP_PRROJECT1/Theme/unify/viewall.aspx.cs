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
    public partial class viewall : System.Web.UI.Page
    {


        public string id;
        public string query;
        static string connType;

        int x;


        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            method();
        }




        private void method()
        {
            DataTable dt = new DataTable();

            SqlCommand sc = new SqlCommand("Select ID, Title from projectT", conn);

            conn.Open();
            SqlDataReader sr = sc.ExecuteReader();
            dt.Load(sr);

            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }


        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            //Accessing BoundField Column
            //   string name = GridView2.SelectedRow.Cells[0].Text;

            id = (GridView1.SelectedRow.FindControl("Label1") as Label).Text;
            query = "select Content from projectt where ID =" + id;
            //Accessing TemplateField Column controls
            // string country = (GridView2.SelectedRow.FindControl("Label2") as Label).Text;


            //  lblValues.Text = "<b>Name:</b> " + id  ;

            //x = Convert.ToInt32(id);

            //    lblValues.Text = "<b>ID:</b> " + x;

            letsee();

            // popup();
        }



        private void letsee()
        {
            conn.Open();


            using (SqlCommand cm = new SqlCommand(query, conn))
            {
                // create a SQL parameter to add them to the command - this will limit the results to the single user
                SqlParameter p = new SqlParameter("Title", System.Data.SqlDbType.Text);
                p.Value = 1;

                cm.Parameters.Add(p);

                // as we are only selecting one column and one row we can use ExecuteScalar
                connType = cm.ExecuteScalar().ToString();
                //   string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;

                //  NEW.InnerText = connType;
                // NEW.InnerText = connType;

                //   Response.Redirect("backend.aspx?name=" + connType + "");

                Session["name"] = connType;
                Response.Redirect("projectdisplay.aspx");
                conn.Close();
            }





        }







    }
}