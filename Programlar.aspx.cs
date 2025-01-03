using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bakkal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ahmet\source\repos\bakkal\App_Data\KULLANICILAR.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            fillgridview();
        }
        public void fillgridview()
        {
            string sqlstr = "SELECT * FROM kategoriler";
            SqlDataAdapter adap = new SqlDataAdapter(sqlstr, baglan);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}