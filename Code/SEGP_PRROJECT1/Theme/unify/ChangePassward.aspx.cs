using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;

namespace SEGP_PRROJECT1.Theme.unify.assets
{
    public partial class ChangePassward : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SendEmail(object sender, EventArgs e)
        {
            string username = string.Empty;
            string password = string.Empty;

            using (SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-FA8F9VB;Initial Catalog=SEGP;Integrated Security=True"))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT User_name, [Password] FROM sign WHERE Email = @Email "))
                {
                    cmd.Parameters.AddWithValue("@User_name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        if (sdr.Read())
                        {
                            username = sdr["User_name"].ToString();
                            password = sdr["Password"].ToString();
                        }
                    }
                    con.Close();
                }
            }
            if (TextBox1.Text == username)
            {
                if (!string.IsNullOrEmpty(password))
                {
                    MailMessage mm = new MailMessage("shani.namal93@gmail.com", txtEmail.Text.Trim());
                    mm.Subject = "Password Recovery";
                    mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.<br/>Do not reply to this Email.<br/>If you did not requested for password please ignore this email", username, password);
                    //mm. = "Do not reply to this Email";
                    //mm.Body = "If you did not requested for password please ignore this email.";
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential();
                    NetworkCred.UserName = "shani.namal93@gmail.com";
                    NetworkCred.Password = "namal1122";
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 587;
                    smtp.Send(mm);
                    lblMessage.ForeColor = Color.Green;
                    lblMessage.Text = "Password has been sent to your email address.";
                }

            }
            else
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "This email address and Username  does not match our records.";
            }

        }
    }
}