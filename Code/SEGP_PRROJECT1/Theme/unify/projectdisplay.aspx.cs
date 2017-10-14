using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SEGP_PRROJECT1.Theme.unify
{
    public partial class projectdisplay : System.Web.UI.Page
    {

        public string content;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
                content = Session["name"].ToString();

            //ff = Request.QueryString["name"].ToString();
            laod();
        }





        protected void laod()
        {
            data.InnerText = content;

        }
    }
}