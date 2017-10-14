using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
namespace SEGP_PRROJECT1.Theme.unify
{
    public partial class _2page_group_assingment : System.Web.UI.Page
    {
        public string co;
        public string project;
        public string id;


        public string c;
        public string p;
        public int? i;

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                con.Open();
                string one = "select User_name from sign where Role = 'Co_Head'";
                SqlCommand sc = new SqlCommand(one, con);
                DropDownList1.DataSource = sc.ExecuteReader();
                DropDownList1.DataTextField = "User_name";
                DropDownList1.DataBind();
                con.Close();
                con.Open();

                string two = "select Project_Name from project_data";
                SqlCommand scc = new SqlCommand(two, con);
                DropDownList2.DataSource = scc.ExecuteReader();
                DropDownList2.DataTextField = "Project_Name";
                DropDownList2.DataBind();
                con.Close();

                con.Open();
                string three = "select distinct Group_ID from RA_group";
                SqlCommand sccc = new SqlCommand(three, con);
                DropDownList3.DataSource = sccc.ExecuteReader();
                DropDownList3.DataTextField = "Group_ID";
                DropDownList3.DataBind();
                con.Close();


            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();


            try
            {

                 co = "select Co_Head from Group_Assingment where Co_Head = '" + DropDownList1.SelectedItem.Text + "'  AND Project_Name= '"+DropDownList2.SelectedItem.Text+"' AND Group_ID='"+DropDownList3.SelectedItem.Text+"'";
                 SqlCommand sq = new SqlCommand(co, con);
                 c = (string)sq.ExecuteScalar();
               

                
          //  Response.Write(c);
            }
            catch (Exception exp) {
                c = null;
            
            }

            //Response.Write(c);



            try
            {
                project = "select Project_Name from Group_Assingment where Project_Name= '" + DropDownList2.SelectedItem.Text + "'  AND Co_Head= '"+DropDownList1.SelectedItem.Text+"' AND Group_ID='"+DropDownList3.SelectedItem.Text+"'";
                SqlCommand sqq = new SqlCommand(project, con);
                p = (string)sqq.ExecuteScalar();
              //  Response.Write(p);

            }

            catch (Exception exp) {
                p = null;
            
            }



            try
            {
                id = "select Group_ID from Group_Assingment where Group_ID ='" + DropDownList3.SelectedItem.Text + "' AND Project_Name= '" + DropDownList2.SelectedItem.Text + "' AND Co_Head='" + DropDownList1.SelectedItem.Text + "'";
                SqlCommand sqqq = new SqlCommand(id, con);
                i = (int)sqqq.ExecuteScalar();
              //  Response.Write(i);
            }
            catch(Exception exp) {
                i = null;
            
            
            }
            con.Close();
             // Response.Write(c);
           // Response.Write(p);
           // Response.Write(i);
            if (c == DropDownList1.SelectedItem.Text && p == DropDownList2.SelectedItem.Text && i == Convert.ToInt32(DropDownList3.SelectedItem.Text))
            {
                
                Label1.Text = "Sorry that entry has already been entered";
            }
           
            else { 
            


            try
            {

                if (FileUpload1.HasFile == true)
                {
                    string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);


                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/File/") + FileUpload1.FileName);




                    con.Open();
         
                string inserting = "insert into Group_Assingment" + "( File_Name,Co_Head,Project_Name,Group_ID,Description) values(@Name,@Co,@Project,@Group,@Des)";


                SqlCommand sc = new SqlCommand(inserting, con);
                sc.Parameters.AddWithValue("@Name", FileName);
                sc.Parameters.AddWithValue("@Co", DropDownList1.SelectedItem.Text);
                sc.Parameters.AddWithValue("@Project", DropDownList2.SelectedItem.Text);
                sc.Parameters.AddWithValue("@Group", DropDownList3.SelectedItem.Text);
                sc.Parameters.AddWithValue("@Des",TextBox1.Text);
                sc.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Co_Head allocation has done";

                TextBox1.Text = string.Empty;
  }


                else
                {

                   // SqlConnection con = new SqlConnection(strConnString);
                    con.Open();
                    string inserting = "insert into Group_Assingment" + "( Name,Co_Head,Project_Name,Group_ID,Description) values(null,@Co,@Project,@Group,@Des)";

                    SqlCommand cmd = new SqlCommand(inserting, con);
                    cmd.Parameters.AddWithValue("@Co", DropDownList1.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@Project", DropDownList2.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@Group", DropDownList3.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@Des", TextBox1.Text);
                    cmd.ExecuteNonQuery();

                    con.Close();



                }







            }
            catch (Exception exp)
            {
                Response.Write("Error: " + exp.ToString());

            }

        }
        }
            

        
    }
}