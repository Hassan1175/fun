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
    public partial class _2page_project_record : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                conn.Open();
                string user = "Select count(*) from project_data where Project_Name ='" + TextBox1.Text + "'";
                SqlCommand sc = new SqlCommand(user, conn);
                int temp = Convert.ToInt32(sc.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Label1.Text = "Sorry That name alredy exist in the recored";

                }



                else
                {


                    try
                    {

                        string insertig = "insert into project_data" + "(Project_Name,Budget,Category,Donar,Description) values(@Name,@Budget,@Category,@Donar,@Description)";

                        SqlCommand cmd = new SqlCommand(insertig, conn);
                        cmd.Parameters.AddWithValue("@Name",TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Budget", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@Category", DropDownList1.SelectedItem.Text);
                       
                        cmd.Parameters.AddWithValue("@Donar", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@Description", TextBox4.Text);
                      
                        cmd.ExecuteNonQuery();
                        TextBox1.Text = String.Empty;
                        TextBox2.Text = String.Empty;
                        TextBox3.Text = String.Empty;
                        TextBox4.Text = String.Empty;
                        DropDownList1.ClearSelection();
                        Response.Write("The submission has done");
                        Response.Redirect("2page_project_record.aspx");

                    }
                    catch (Exception exp)
                    {
                        Response.Write("Error: " + exp.ToString());
                    }
                }
            }

        }
       
}
}