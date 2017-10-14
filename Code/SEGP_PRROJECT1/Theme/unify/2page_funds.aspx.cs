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
    public partial class _2page_funds : System.Web.UI.Page
    {
        public string project;

        public int total;
        public int used;
        public int rem;
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           // Response.Write("hello how re u");
            Panel1.Visible = false;

            if (!this.IsPostBack)
            {

                con.Open();
                project = "select Project_Name from project_data";
                SqlCommand scc = new SqlCommand(project, con);
                DropDownList1.DataSource = scc.ExecuteReader();
                DropDownList1.DataTextField = "Project_Name";
                DropDownList1.DataBind();
                con.Close();

            }

            



        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            total = Convert.ToInt32(TextBox2.Text);
            used = Convert.ToInt32(TextBox3.Text);
            rem = total - used;

            TextBox6.Text = rem.ToString();


            con.Open();

            string insertig = "insert into funds" + "(Project_Name,Currency,Estimated_grant,Total_grant,Used_grant,Remaining_grant,Date,Donar_Name) values(@p,@c,@e,@t,@u,@r,@date,@donar)";
            //@p,@c,@e,@t,@u,@r,@date,@donar
            SqlCommand cmd = new SqlCommand(insertig, con);
            cmd.Parameters.AddWithValue("@p",DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@c", DropDownList2.SelectedItem.Text);

            cmd.Parameters.AddWithValue("@e", TextBox1.Text);
            cmd.Parameters.AddWithValue("@t", TextBox2.Text);
            cmd.Parameters.AddWithValue("@u", TextBox3.Text);
            cmd.Parameters.AddWithValue("@date",TextBox5.Text);
            cmd.Parameters.AddWithValue("@donar", TextBox4.Text);
            cmd.Parameters.AddWithValue("@r", TextBox6.Text);
            cmd.ExecuteNonQuery();

            TextBox1.Text = string.Empty;
            
            TextBox2.Text = string.Empty;

            TextBox3.Text = string.Empty;


            TextBox4.Text = string.Empty;

            TextBox5.Text = string.Empty;

           // TextBox6.Text = string.Empty;
            con.Close();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("2page_update_funds.aspx");
        }
}
}