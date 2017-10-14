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
    public partial class _3page1_index : System.Web.UI.Page
    {

        public string s;

        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
          //  Response.Write("hello how are u");


            if (Session["RA"] != null)
            {
                s = Session["RA"].ToString();
               // Response.Write(s);
            }


            conn.Open();
            string com = "select Project_Name,Task_Name,S_Date,E_Date,Co_Head,Group_ID,Briefing ,Name from Task_assingment where RA= '"+s+"'";

            SqlCommand sq = new SqlCommand(com, conn);

            DataTable dt = new DataTable();
            SqlDataReader rd = sq.ExecuteReader();
            dt.Load(rd);
            GridView1.DataSource = dt;
            GridView1.DataBind();
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