using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 

namespace SEGP_PRROJECT1.Theme
{
    public partial class feedback : System.Web.UI.Page
    {
        public string s;

        public string project;
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           // Response.Write("hello");


            if (Session["Name"] != null)
            {
                s = Session["Name"].ToString();
                Response.Write(s);
            }


            TextBox1.Text = s;
            TextBox1.Enabled = false;




          //  string com = "select Project_Name,Group_ID,Description from Group_Assingment where Co_Head= '" + s + "'";


            if (!this.IsPostBack)
            {

                con.Open();
                project =  "select distinct Project_Name from Group_Assingment where Co_Head= '" + s + "'";
                SqlCommand scc = new SqlCommand(project, con);
                DropDownList1.DataSource = scc.ExecuteReader();
                DropDownList1.DataTextField = "Project_Name";
                DropDownList1.DataBind();
                con.Close();

            }



        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            string insertig = "insert into feedback" + "(Co_Head_Name,Project_Name,Project_Briefing,General_Briefing,Problem_Faced,Date) values(@c,@p,@pb,@gb,@pf,@date)";
            //@c,@p,@pb,@gb,@pf,@date
            SqlCommand cmd = new SqlCommand(insertig, con);
            cmd.Parameters.AddWithValue("@c",TextBox1.Text) ;  
            cmd.Parameters.AddWithValue("@p",DropDownList1.SelectedItem.Text );
            cmd.Parameters.AddWithValue("@pb", TextBox2.Text);
            cmd.Parameters.AddWithValue("@gb", TextBox3.Text);
            cmd.Parameters.AddWithValue("@pf", TextBox4.Text);
            cmd.Parameters.AddWithValue("@date", TextBox5.Text);
           // cmd.Parameters.AddWithValue("@r", TextBox6.Text);
            cmd.ExecuteNonQuery();
            con.Close();
         //   TextBox.Text = string.Empty;

            TextBox2.Text = string.Empty;

            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;


            TextBox4.Text = string.Empty;

            TextBox5.Text = string.Empty;
        }
}
}