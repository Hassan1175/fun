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
    public partial class _4page_progress : System.Web.UI.Page
    {

        public string query;
        public string s;
        public int ID;

        public static string project;
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("hellooooooo");

            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;


            if (Session["Name"] != null)
            {
                s = Session["Name"].ToString();
                Response.Write(s);

            }

            if (!this.IsPostBack)
            {
                con.Open();
                query = "Select Distinct Group_ID from Group_Assingment where Co_Head = '" + s + "'";
                SqlCommand sc = new SqlCommand(query, con);
                DropDownList1.DataSource = sc.ExecuteReader();
                DropDownList1.DataTextField = "Group_ID";
                DropDownList1.DataBind();
                con.Close();



                //these two dropdown list will remain hide cos they are on the panel which is hide 
                //con.Open();
                //DropDownList3.SelectedValue = ID.ToString();
                //   DropDownList3.SelectedItem.Text = ID.ToString();






                //    DropDownList4.Text = ID.ToString();
                //DropDownList3.DataBind();

            }
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;

            Panel2.Visible = true;
            Panel3.Visible = false;

            ID = Convert.ToInt32(DropDownList1.Text);

            Response.Write(ID);


            con.Open();
            query = "Select  Project_Name from Group_Assingment where Co_Head = '" + s + "'  AND Group_ID = '"+ID+"'";
            SqlCommand sc = new SqlCommand(query, con);
            DropDownList2.DataSource = sc.ExecuteReader();
            DropDownList2.DataTextField = "Project_Name";
            DropDownList2.DataBind();
            con.Close();
            project = DropDownList2.Text;

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Panel1.Visible = false;
            Panel2.Visible = false;


            con.Open();
            string com = "select Group_ID,Project,Ra_Name,Work,Problem_faced,General_Briefing,Material_Required,date from Task_Progress where Project = '"+project+"' AND Group_ID = '"+DropDownList1.SelectedItem.Text+"'  ";

            SqlCommand sq = new SqlCommand(com, con);

            DataTable dt = new DataTable();
            SqlDataReader rd = sq.ExecuteReader();
            dt.Load(rd);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();

        }
}
}