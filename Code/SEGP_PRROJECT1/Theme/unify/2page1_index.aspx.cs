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
    public partial class _2page1_index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;

           
        }

        protected void Insertkey_Click(object sender, EventArgs e)
        {

            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "insert into projectT values ('" + ((TextBox)GridView4.FooterRow.FindControl("Tbox")).Text + "', '" + ((TextBox)GridView4.FooterRow.FindControl("Cbox")).Text + "')";



            cmd.ExecuteNonQuery();

            
            GridView4.DataBind();


            con.Close();

        }

      

       

       

        
       
      

       










        }
    }
