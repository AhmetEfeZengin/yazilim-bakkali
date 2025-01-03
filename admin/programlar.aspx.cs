using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bakkal.admin
{
    public partial class programlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string kullanici = "";
            if (Session["kullanici"] != null)
            {
                kullanici = Session["kullanici"].ToString();
                Label1.Text = kullanici;
            }
        }
    }
}