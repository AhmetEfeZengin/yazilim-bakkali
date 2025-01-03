using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bakkal.admin
{
    public partial class kategoriler : System.Web.UI.Page
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txt_kategori.Text == "")
            {
                lbl_hata.Text = "Lütfen kategori giriniz";
                lbl_hata.Visible = true;
                txt_kategori.Focus();
                return;
            }

            SqlCommand cmd = new SqlCommand("INSERT INTO kategoriler(kategori_adi) VALUES(@kategori)", baglan);

            cmd.Parameters.AddWithValue("@kategori", txt_kategori.Text);
            baglan.Open();
            cmd.ExecuteNonQuery();
            baglan.Close();
            string messageimage = "Kategori Ekleme Tamamlanmıştır.";
            string scriptimage = "<script type=\"text/javascript\">alert('" + messageimage + "');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", scriptimage);
            fillgridview();


        }
    }
}