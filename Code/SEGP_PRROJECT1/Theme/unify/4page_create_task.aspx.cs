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
   
    public partial class _4page_create_task1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");

        public string query;
        public string s;
        public static int ID;
        public string RA;
        public string project;


      
        public string P;
        public string Pr;

        public string T;
        public string Ta;

        public string R;
        public string Rs;

        public string S;
        public string Sd;

        public string E;
        public string Ed;


        protected void Page_Load(object sender, EventArgs e)
        {
            Panel3.Visible = false;

          //  ID = Convert.ToInt32(DropDownList1.Text);
            if (Session["Name"]!= null)
            {
                s = Session["Name"].ToString();
                Response.Write(s);

            }
            Panel1.Visible = true;
            Panel2.Visible = false;
            if (!this.IsPostBack)
            {
                con.Open();
                query = "Select Distinct Group_ID from Group_Assingment where Co_Head = '"+s+"'";
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
           
           // 
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;

            details();
           
        }
        protected void details() {
            ID = Convert.ToInt32(DropDownList1.Text);
          //  Response.Write(ID);
            Panel1.Visible = false;

           Panel2.Visible = true;

            
        //   DropDownList4.Text = ID.ToString();
           TextBox5.Text = ID.ToString();
           TextBox6.Text = s;
           // if (!this.IsPostBack)
           // {
                Response.Write(ID);
                con.Open();
                project = "select Project_Name from Group_Assingment where Co_Head= '" + s +"' AND Group_ID ="+ID;
                SqlCommand sq = new SqlCommand(project, con);
                DropDownList2.DataSource = sq.ExecuteReader();
                DropDownList2.DataTextField = "Project_Name";
                DropDownList2.DataBind();


                con.Close();
                con.Open();
                RA = "Select RA_Name from RA_group where Group_ID = '"+ID+"'";
                SqlCommand sqq = new SqlCommand(RA, con);
                DropDownList3.DataSource = sqq.ExecuteReader();
                DropDownList3.DataTextField = "RA_Name";
                DropDownList3.DataBind();

                con.Close();

           // }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            Panel2.Visible = true;
            Panel1.Visible = false;
            Panel3.Visible = false;



            //Response.Write(c);



            try
            {
                P = "select Project_Name from Task_Assingment where Project_Name= '" + DropDownList2.SelectedItem.Text + "'  AND Task_Name= '" + TextBox1.Text + "' AND RA='" + DropDownList3.SelectedItem.Text + "'";
                SqlCommand sqq = new SqlCommand(P, con);
                Pr = (string)sqq.ExecuteScalar();
                //  Response.Write(p);

            }

            catch (Exception exp)
            {
                Pr = null;

            }



            try
            {
                T = "select Task_Name from Task_Assingment where Task_Name ='" + TextBox1.Text + "' AND Project_Name= '" + DropDownList2.SelectedItem.Text + "' AND RA='" + DropDownList3.SelectedItem.Text + "'";
                SqlCommand sqqq = new SqlCommand(T, con);
                Ta = (string)sqqq.ExecuteScalar();
                //  Response.Write(i);
            }
            catch (Exception exp)
            {
                Ta = null;


            }


            try
            {

                R = "select RA from Task_Assingment where RA = '" + DropDownList3.SelectedItem.Text + "'  AND Project_Name= '" + DropDownList2.SelectedItem.Text + "' AND Task_Name='" + TextBox1.Text + "'";
                SqlCommand sq = new SqlCommand(R, con);
                Rs = (string)sq.ExecuteScalar();



                //  Response.Write(c);
            }
            catch (Exception exp)
            {
                Rs = null;

            }




            if (Pr == DropDownList2.SelectedItem.Text && Ta == TextBox1.Text && Rs == DropDownList3.SelectedItem.Text)
            {

                Label1.Text = "Sorry that entry has already been entered";
            }






            else {

                if (FileUpload1.HasFile == true)
                {
                    string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);


                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/File/") + FileUpload1.FileName);



                    string inserting = "insert into Task_assingment" + "(Project_Name,Task_Name,RA,S_Date,E_Date,Co_Head,Group_ID,Briefing,Name) values(@p,@T,@RA,@SD,@ED,@C,@G,@B,@Name)";
                    SqlCommand cmd = new SqlCommand(inserting, con);
                    cmd.Parameters.AddWithValue("@p", DropDownList2.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@T", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@RA", DropDownList3.SelectedItem.Text);

                    cmd.Parameters.AddWithValue("@SD", TextBox2.Text);

                    cmd.Parameters.AddWithValue("@ED", TextBox3.Text);


                    cmd.Parameters.AddWithValue("@B", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@C", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@G", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@Name", FileName);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;
                    TextBox3.Text = string.Empty;
                    TextBox4.Text = string.Empty;

                    Label1.Text = "The Task has been assinged to    " + DropDownList3.SelectedItem.Text;
                }



                else {



                    string inserting = "insert into Task_assingment" + "(Project_Name,Task_Name,RA,S_Date,E_Date,Co_Head,Group_ID,Briefing,Name) values(@p,@T,@RA,@SD,@ED,@C,@G,@B,null)";
                    SqlCommand cmd = new SqlCommand(inserting, con);
                    cmd.Parameters.AddWithValue("@p", DropDownList2.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@T", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@RA", DropDownList3.SelectedItem.Text);

                    cmd.Parameters.AddWithValue("@SD", TextBox2.Text);

                    cmd.Parameters.AddWithValue("@ED", TextBox3.Text);


                    cmd.Parameters.AddWithValue("@B", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@C", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@G", TextBox5.Text);
                  //  cmd.Parameters.AddWithValue("@Name", FileName);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;
                    TextBox3.Text = string.Empty;
                    TextBox4.Text = string.Empty;

                    Label1.Text = "The Task has been assinged to  " + DropDownList3.SelectedItem.Text;
                
                
                }
        }








        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Response.Write("Hello how are u");
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;

            
        }


        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("4update_task_assingment.aspx");
        }
}
}








