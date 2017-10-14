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
    public partial class _4page_create_task : System.Web.UI.Page
    {
        public string s;
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            

            if (Session["Name"] != null)
            {
                 s = Session["Name"].ToString();
                Response.Write(s);
            }




            conn.Open();
            string com = "select Project_Name,Description,Group_ID ,File_Name from Group_Assingment where Co_Head= '" + s + "'";

            SqlCommand sq = new SqlCommand(com, conn);

            DataTable dt = new DataTable();
            SqlDataReader rd = sq.ExecuteReader();
            dt.Load(rd);
            GridView1.DataSource = dt;
            GridView1.DataBind();

           

            //creagting session to pass the name string from 4page index page  to create task page, to show relevent id's
          
            conn.Close();
            //GridView1.Columns[1].Visible = false;
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Download")
            {

                Response.Clear();
                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/File/") + e.CommandArgument);
                Response.End();
                Response.Redirect(Request.Url.AbsolutePath);
                // Response.TransmitFile();
            }


        }
}
}