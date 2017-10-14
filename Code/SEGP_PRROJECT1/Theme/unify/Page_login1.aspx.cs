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
    public partial class Page_login1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("ChangePassward.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();

            SqlCommand sq = new SqlCommand();
            sq.CommandText = "select Name from sign where User_name =@name";

            sq.Parameters.AddWithValue("@name", TextBox1.Text);
            sq.Parameters.AddWithValue("@password", TextBox2.Text);
            sq.Connection = conn;
            SqlDataReader rd = sq.ExecuteReader();
           
            //creatiing session to pass data (user name from one page to destination page)
         // Session["Name"] = TextBox1.Text;
           // Response.Redirect("4page1_index.aspx");





            if (rd.HasRows)
            {
                rd.Close();

                string get = "select password from sign where User_name= '" + TextBox1.Text + "' ";
                SqlCommand sc = new SqlCommand(get, conn);

                string getpassword = sc.ExecuteScalar().ToString().Replace(" ","");
                if (getpassword == TextBox2.Text)
                {
                    string type = "select Role from sign where User_name= '" + TextBox1.Text + "' ";
                    SqlCommand sqc = new SqlCommand(type, conn);

                    string usertype = sqc.ExecuteScalar().ToString();

                    if (usertype.Trim().Equals("Admin".Trim()))
                    {
                        Response.Redirect("2page1_index.aspx");
                    }
                    else if (usertype.Trim().Equals("Researcher".Trim()))
                    {
                        Session["RA"] = TextBox1.Text;
                        Response.Redirect("3page1_index.aspx");
                    }

                    else if (usertype.Trim().Equals("Co_Head".Trim()))
                    {

                       // Response.Redirect("4page1_index.aspx");
                        //creating session to shift my name
                         Session["Name"] = TextBox1.Text;
                        Response.Redirect("4page1_index.aspx");


                       
                    }

                }
                else
                {
                    Label1.Text = "Passward is  incorrect";
                    
                   
                }
            }
            else {
                Label1.Text = "Username is  incorrect";
               
                
            
            }


        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {

        }
}
}