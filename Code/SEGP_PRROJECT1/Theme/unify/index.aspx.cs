using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
//helloee
namespace SEGP_PROJECTNEWWW.Theme.unify
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            test();
        }


        private void test()
        {
            con.Open();

            using (SqlCommand cmd = new SqlCommand("select Title from main_table where id = 1", con))
            {
                
                SqlParameter p = new SqlParameter("Title", System.Data.SqlDbType.Text);
                p.Value = 1;

                cmd.Parameters.Add(p);

               
                string connType = cmd.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
              //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                title1.InnerText = connType;
               // NEW.InnerText = connType;
                con.Close();
            }


            using (SqlCommand cm = new SqlCommand("select Content from main_table where id = 1", con))
            {
                con.Open();
                // create a SQL parameter to add them to the command - this will limit the results to the single user
                SqlParameter p = new SqlParameter("content", System.Data.SqlDbType.Text);
                p.Value = 1;

                cm.Parameters.Add(p);

                // as we are only selecting one column and one row we can use ExecuteScalar
                string conn = cm.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                string str = conn.Substring(0, 80);
                tail_1.InnerText = str;
                readmore1.InnerText = conn;
                // NEW.InnerText = connType;
                con.Close();
            }

            //for project 2

            con.Open();

            using (SqlCommand cmd = new SqlCommand("select Title from main_table where id = 2", con))
            {

                SqlParameter p = new SqlParameter("Title", System.Data.SqlDbType.Text);
                p.Value = 1;

                cmd.Parameters.Add(p);


                string connType = cmd.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                title2.InnerText = connType;
                // NEW.InnerText = connType;
                con.Close();
            }


            using (SqlCommand cm = new SqlCommand("select Content from main_table where id = 2", con))
            {
                con.Open();
                // create a SQL parameter to add them to the command - this will limit the results to the single user
                SqlParameter p = new SqlParameter("content", System.Data.SqlDbType.Text);
                p.Value = 1;

                cm.Parameters.Add(p);

                // as we are only selecting one column and one row we can use ExecuteScalar
                string conn = cm.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                string str = conn.Substring(0, 80);
                tail2.InnerText = str;
                readmore2.InnerText = conn;
                // NEW.InnerText = connType;
                con.Close();
            }

            //end project 2

            //for project 3

            con.Open();

            using (SqlCommand cmd = new SqlCommand("select Title from main_table where id = 3", con))
            {

                SqlParameter p = new SqlParameter("Title", System.Data.SqlDbType.Text);
                p.Value = 1;

                cmd.Parameters.Add(p);


                string connType = cmd.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                title3.InnerText = connType;
                // NEW.InnerText = connType;
                con.Close();
            }


            using (SqlCommand cm = new SqlCommand("select Content from main_table where id = 3", con))
            {
                con.Open();
                // create a SQL parameter to add them to the command - this will limit the results to the single user
                SqlParameter p = new SqlParameter("content", System.Data.SqlDbType.Text);
                p.Value = 1;

                cm.Parameters.Add(p);

                // as we are only selecting one column and one row we can use ExecuteScalar
                string conn = cm.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                string str = conn.Substring(0, 80);
                tail3.InnerText = str;
                readmore3.InnerText = conn;
                // NEW.InnerText = connType;
                con.Close();
            }


        //end project 3
            //for project 4

            con.Open();

            using (SqlCommand cmd = new SqlCommand("select Title from main_table where id = 4", con))
            {

                SqlParameter p = new SqlParameter("Title", System.Data.SqlDbType.Text);
                p.Value = 1;

                cmd.Parameters.Add(p);


                string connType = cmd.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                title4.InnerText = connType;
                // NEW.InnerText = connType;
                con.Close();
            }


            using (SqlCommand cm = new SqlCommand("select Content from main_table where id = 4", con))
            {
                con.Open();
                // create a SQL parameter to add them to the command - this will limit the results to the single user
                SqlParameter p = new SqlParameter("content", System.Data.SqlDbType.Text);
                p.Value = 1;

                cm.Parameters.Add(p);

                // as we are only selecting one column and one row we can use ExecuteScalar
                string conn = cm.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                string str = conn.Substring(0, 80);
                tail4.InnerText = str;
                readmore4.InnerText = conn;
                // NEW.InnerText = connType;
                con.Close();
            }


            //end project 4

            //for project 5

            con.Open();

            using (SqlCommand cmd = new SqlCommand("select Title from main_table where id = 5", con))
            {

                SqlParameter p = new SqlParameter("Title", System.Data.SqlDbType.Text);
                p.Value = 1;

                cmd.Parameters.Add(p);


                string connType = cmd.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                title5.InnerText = connType;
                // NEW.InnerText = connType;
                con.Close();
            }


            using (SqlCommand cm = new SqlCommand("select Content from main_table where id = 5", con))
            {
                con.Open();
                // create a SQL parameter to add them to the command - this will limit the results to the single user
                SqlParameter p = new SqlParameter("content", System.Data.SqlDbType.Text);
                p.Value = 1;

                cm.Parameters.Add(p);

                // as we are only selecting one column and one row we can use ExecuteScalar
                string conn = cm.ExecuteScalar().ToString();
                
                string str = conn.Substring(0, 80);
                tail5.InnerText = str;
                readmore5.InnerText = conn;
    
                con.Close();
            }


            //end project 5

            //for project 6

            con.Open();

            using (SqlCommand cmd = new SqlCommand("select Title from main_table where id = 6", con))
            {

                SqlParameter p = new SqlParameter("Title", System.Data.SqlDbType.Text);
                p.Value = 1;

                cmd.Parameters.Add(p);


                string connType = cmd.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                title6.InnerText = connType;
                // NEW.InnerText = connType;
                con.Close();
            }


            using (SqlCommand cm = new SqlCommand("select Content from main_table where id = 6", con))
            {
                con.Open();
                // create a SQL parameter to add them to the command - this will limit the results to the single user
                SqlParameter p = new SqlParameter("content", System.Data.SqlDbType.Text);
                p.Value = 1;

                cm.Parameters.Add(p);

                // as we are only selecting one column and one row we can use ExecuteScalar
                string conn = cm.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                string str = conn.Substring(0, 80);
                tail6.InnerText = str;
                readmore6.InnerText = conn;
                // NEW.InnerText = connType;
                con.Close();
            }


            //end project 6

            //for project 7

            con.Open();

            using (SqlCommand cmd = new SqlCommand("select Title from main_table where id = 7", con))
            {

                SqlParameter p = new SqlParameter("Title", System.Data.SqlDbType.Text);
                p.Value = 1;

                cmd.Parameters.Add(p);


                string connType = cmd.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                title7.InnerText = connType;
                // NEW.InnerText = connType;
                con.Close();
            }


            using (SqlCommand cm = new SqlCommand("select Content from main_table where id = 7", con))
            {
                con.Open();
                // create a SQL parameter to add them to the command - this will limit the results to the single user
                SqlParameter p = new SqlParameter("content", System.Data.SqlDbType.Text);
                p.Value = 1;

                cm.Parameters.Add(p);

                // as we are only selecting one column and one row we can use ExecuteScalar
                string conn = cm.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                string str = conn.Substring(0, 80);
                tail7.InnerText = str;
                readmore7.InnerText = conn;
                // NEW.InnerText = connType;
                con.Close();
            }


            //end project 7

            //for project 8

            con.Open();

            using (SqlCommand cmd = new SqlCommand("select Title from main_table where id = 8", con))
            {

                SqlParameter p = new SqlParameter("Title", System.Data.SqlDbType.Text);
                p.Value = 1;

                cmd.Parameters.Add(p);


                string connType = cmd.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                title8.InnerText = connType;
                // NEW.InnerText = connType;
                con.Close();
            }


            using (SqlCommand cm = new SqlCommand("select Content from main_table where id = 8", con))
            {
                con.Open();
                // create a SQL parameter to add them to the command - this will limit the results to the single user
                SqlParameter p = new SqlParameter("content", System.Data.SqlDbType.Text);
                p.Value = 1;

                cm.Parameters.Add(p);

                // as we are only selecting one column and one row we can use ExecuteScalar
                string conn = cm.ExecuteScalar().ToString();
                //string conn = cmd.ExecuteReader().ToString();
                //  string c = "how are u";
                //  string strModified = connType.Substring(0, 5);

                // div_test.InnerText = strModified;
                string str = conn.Substring(0, 80);
                tail8.InnerText = str;
                readmore8.InnerText = conn;
                // NEW.InnerText = connType;
                con.Close();
            }


            //end project 8







        }

       




    }
}