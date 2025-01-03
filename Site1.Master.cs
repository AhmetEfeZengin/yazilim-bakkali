using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bakkal
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string kullanici = "";
            if (Session["kullanici"] != null)
            {
                kullanici = Session["kullanici"].ToString();
                Debug.Write(kullanici);
                if (Session["yetkisi"].ToString() == "admin")
                {
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                    Panel3.Visible = false;
                }
                else if (Session["yetkisi"].ToString() == "kullanici")
                {
                    Panel1.Visible = false;
                    Panel2.Visible = true;
                    Panel3.Visible = false;
                }
            }
        }

        protected void txtSearchMaster_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Programlar.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin/admin.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("giris.aspx");
        }
    }
}