using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient; 

namespace SEGP_PROJECTNEWWW.Theme.unify
{
    public partial class _2page_RA_allocation : System.Web.UI.Page
    {
        public string checkid;
        public string checkRA;
        public string test;

        public int? h;
        public string n;

        public int check;
        SqlConnection conn =new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
          //  Response.Write("hello how are u");
            showgrid();

      //      Panel1.Visible = false;
            GridView1.Visible = false;
            if (!this.IsPostBack)
            {
                

                conn.Open();

                string dat = "select User_name from sign where Role='Researcher'";
                SqlCommand sq = new SqlCommand(dat, conn);
                DropDownList2.DataSource = sq.ExecuteReader();
                DropDownList2.DataTextField = "User_name";
                DropDownList2.DataBind();


                conn.Close();



               

            }
            

           

            }

        protected void Button2_Click(object sender, EventArgs e)
        {
            showgrid();
 
            {
               // conn.Close();
                conn.Open();

            //    string RA = "Select count(*) from RA_group where RA_name ='" + DropDownList2.SelectedItem.Text + "'";
             //   SqlCommand sq = new SqlCommand(RA, conn);
             //    check = (int)sq.ExecuteScalar();

                string group = "Select count(*) from RA_group where Group_ID ='" + TextBox1.Text + "'";
                SqlCommand sc = new SqlCommand(group, conn);
                int temp = (int)sc.ExecuteScalar();
            //    Response.Write(check);



                try
                {

                    checkid = "Select Group_ID from RA_group where Group_ID ='" + TextBox1.Text + "'   AND  RA_Name ='" + DropDownList2.SelectedItem.Text + "'";

                    SqlCommand soc = new SqlCommand(checkid, conn);
                     h = (int)soc.ExecuteScalar();
                   // Response.Write(h);

                }
                catch (Exception exp)
                {

                  //  test = h.ToString();
                    h = null;
                }
                Response.Write(h);



                try
                {

                    checkRA = "Select RA_Name from RA_group where RA_Name ='" + DropDownList2.SelectedItem.Text + "' AND  Group_ID ='" + TextBox1.Text + "'";

                    SqlCommand soc = new SqlCommand(checkRA, conn);
                     n = (string)soc.ExecuteScalar();
                  //  Response.Write(n);

                }
                catch (Exception exp)
                {

                    n = null;
                }

                Response.Write(n);



                if (temp < 6)
                {
                    if (h != null && n != null)
                    {
                        Label1.Text = "Sorry that user has already been allocated..";

                    }



                    else
                    {


                        try
                        {

                            string insertig = "insert into RA_group" + "(Group_ID,RA_Name) values(@ID,@Name)";

                            SqlCommand cmd = new SqlCommand(insertig, conn);
                            cmd.Parameters.AddWithValue("@ID", TextBox1.Text);

                            cmd.Parameters.AddWithValue("@Name", DropDownList2.SelectedItem.Text);

                            cmd.ExecuteNonQuery();
                            // TextBox1.Text = String.Empty;

                            DropDownList2.ClearSelection();
                            Label1.Text = "";
                            Response.Write("The submission has done");
                            //   Response.Redirect("2page_RA_allocation.aspx");
                            conn.Close();
                            showgrid();

                        }
                        catch (Exception exp)
                        {
                            Response.Write("Error: " + exp.ToString());
                        }
                    }



                }
                else { Label1.Text = "Sorry limit crossed"; 
                }

             
              //TextBox1.Text = string.Empty;
              DropDownList2.ClearSelection();

            }
            conn.Close();
        }

       public void showgrid() {
          //  Panel1.Visible = true;
           GridView1.Visible = true ;
            conn.Open();
            string con = "Select Group_ID , RA_Name from RA_group where Group_ID = '"+TextBox1.Text+"'";
            SqlCommand sc = new SqlCommand(con, conn);
            DataTable dt = new DataTable();
            SqlDataReader rd = sc.ExecuteReader();
            GridView1.DataSource = dt;
            dt.Load(rd);
            GridView1.DataBind();
            conn.Close();
        
        
        }
            
        }
      
           
        
        
  
       

       


    
}