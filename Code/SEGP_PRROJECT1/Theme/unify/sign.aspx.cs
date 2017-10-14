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
    public partial class sign : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
          //  if (IsPostBack) {
            //    conn.Open();
              //  string user = "Select count(*) from sign where Name ='"+TextBoxU.Text+"'";
                //SqlCommand sc = new SqlCommand(user,conn);
                //int temp = Convert.ToInt32(sc.ExecuteScalar().ToString());
                //if (temp ==1) {


                  //  Response.Write("User Already Exist");
                //}

            //    conn.Close();
            //}

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            string user = "Select count(*) from sign where User_name ='" + TextBoxU.Text + "'";
            SqlCommand sc = new SqlCommand(user, conn);
            int temp = Convert.ToInt32(sc.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Label1.Text = "Sorry That username alredy exist in the recored";

            }



            else { 


            try{
        
            string insertig = "insert into sign" + "(Name,User_name,Email,Role,Password,Date) values(@Name,@User_name,@Email,@Role,@Password,@Date)";

            SqlCommand cmd= new SqlCommand(insertig,conn);
            cmd.Parameters.AddWithValue("@Name", TextBoxN.Text);
            cmd.Parameters.AddWithValue("@User_name", TextBoxU.Text);
            cmd.Parameters.AddWithValue("@Email", TextBoxE.Text);
            cmd.Parameters.AddWithValue("@Role", DropDownListT.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Password", TextBoxP.Text);
             cmd.Parameters.AddWithValue("@Date", TextBoxD.Text);
            cmd.ExecuteNonQuery();
            TextBoxU.Text = String.Empty;
            TextBoxP.Text = String.Empty;
            TextBoxD.Text = String.Empty;
            TextBoxE.Text = String.Empty;
            DropDownListT.ClearSelection();
            Response.Write("The submission has done");
            Response.Redirect("sign.aspx");
           
            }
            catch(Exception exp){
                Response.Write("Error: " + exp.ToString());
            }
        }
        }

        
       
    }
}