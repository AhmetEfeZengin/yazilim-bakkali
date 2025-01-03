using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bakkal
{
    public partial class WebForm4 : System.Web.UI.Page
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../index.aspx");
        }
    }
}