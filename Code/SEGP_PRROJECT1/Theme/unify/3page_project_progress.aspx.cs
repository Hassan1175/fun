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
    public partial class _3page_project_detail : System.Web.UI.Page
    {
        public string s;
        public string query;
        public string query1;
        public string query2;

        public static int id;
        public static string project;

        public string co;
        public string x;
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            if (Session["RA"] != null)
            {
                s = Session["RA"].ToString();
                //   Response.Write(s);

            }

            if (!this.IsPostBack)
            {
                con.Open();
                query = "Select distinct Group_ID from Task_Assingment where RA = '" + s + "'";
                SqlCommand sc = new SqlCommand(query, con);
                DropDownList1.DataSource = sc.ExecuteReader();
                DropDownList1.DataTextField = "Group_ID";
                DropDownList1.DataBind();
                con.Close();











            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(DropDownList1.Text);


            //  Response.Write(id);

            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
            con.Open();
            query1 = "Select distinct Project_Name from Task_assingment where Group_ID ='" + id + "'  AND RA = '" + s + "'";
            SqlCommand sq = new SqlCommand(query1, con);
            DropDownList2.DataSource = sq.ExecuteReader();
            DropDownList2.DataTextField = "Project_Name";
            DropDownList2.DataBind();
            con.Close();


        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            project = DropDownList2.Text;
            //   Response.Write(project);
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;


            Response.Write(id);
            Response.Write(project);
            Response.Write(s);

            con.Open();
            query2 = "Select  Task_Name from Task_Assingment where Group_ID = '" + id + "' AND Project_Name = '" + project + "' AND RA = '" + s + "'";



            SqlCommand sq = new SqlCommand(query2, con);
            DropDownList3.DataSource = sq.ExecuteReader();
            DropDownList3.DataTextField = "Task_Name";
            DropDownList3.DataBind();
            con.Close();



            DropDownList4.Items.Add(new ListItem("", ""));
            for (int i = 0; i <= 100; i++)
            {
                DropDownList4.Items.Add(new ListItem(i + "%".ToString(), i.ToString()));
            }



            co = "Select Co_Head from Task_Assingment where Project_Name ='" + project + "' AND Group_ID= '" + id + "' AND RA= '" + s + "'";
            con.Open();

            SqlCommand cm = new SqlCommand(co, con);
            x = cm.ExecuteScalar().ToString();
            Response.Write(x);

            con.Close();
            //  Response.Write(x);
            //Response.Write(x);
            TextBox5.Text = x;
            TextBox5.Enabled = false;

            TextBox6.Text = s;
            TextBox6.Visible = false;

        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;


            con.Open();

            string inserting = "insert into Task_progress" + "( Group_ID,Project,Co_Head,Ra_Name,Task_Name,Work,Problem_faced,General_Briefing,Material_Required,Date) values(@id,@proj,@Co,@Ra,@T,@W,@PF,@GB,@MR,@D)";
            SqlCommand cmd = new SqlCommand(inserting, con);


            //  values(@T,@W,@PF,@GB,@MR,@D)";
            cmd.Parameters.AddWithValue("@id", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@proj", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Co", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Ra", TextBox6.Text);


            cmd.Parameters.AddWithValue("@T", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@W", DropDownList4.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@PF", TextBox1.Text);

            cmd.Parameters.AddWithValue("@GB", TextBox2.Text);

            cmd.Parameters.AddWithValue("@MR", TextBox3.Text);


            cmd.Parameters.AddWithValue("@D", TextBox4.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;

            Label1.Text = "The Feedback has been sent to " + x;

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            Panel2.Visible = false;
            Panel1.Visible = true;
        }
    }
}