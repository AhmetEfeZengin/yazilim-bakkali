using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Drawing;

namespace bakkal.admin
{
    public partial class uyeler : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        //SqlConnection baglan = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ahmet\source\repos\bakkal\App_Data\KULLANICILAR.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            fillgridview();
            string kullanici = "";
            if (Session["kullanici"] != null)
            {
                kullanici = Session["kullanici"].ToString();
                Label1.Text = kullanici;
            }
        }
        public void fillgridview()
        {
            string sqlstr = "SELECT * FROM kayit";
            SqlDataAdapter adap = new SqlDataAdapter(sqlstr, baglan);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txt_kAdi.Text == "")
            {
                lbl_hata.Text = "Lütfen kullanıcı adınızı giriniz";
                lbl_hata.Visible = true;
                txt_kAdi.Focus();
                return;
            }

            if (txt_yetki.Text == "")
            {
                lbl_hata.Text = "Lütfen yetkinizi giriniz";
                lbl_hata.Visible = true;
                txt_yetki.Focus();
                return;
            }

            if (txt_sifre.Text == "")
            {
                lbl_hata.Text = "Lütfen şifrenizi giriniz";
                lbl_hata.Visible = true;
                txt_sifre.Focus();
                return;
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO kayit(kullanici_adi,sifre,yetki) VALUES(@kullanici_adi, @sifre, @yetki)", baglan);

            cmd.Parameters.AddWithValue("@kullanici_adi", txt_kAdi.Text);
            cmd.Parameters.AddWithValue("@sifre", txt_sifre.Text);
            cmd.Parameters.AddWithValue("@yetki", txt_yetki.Text);
            baglan.Open();
            cmd.ExecuteNonQuery();
            baglan.Close();
            string messageimage = "Kullanıcı kayıt işleminiz tamamlanmıştır.";
            string scriptimage = "<script type=\"text/javascript\">alert('" + messageimage + "');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", scriptimage);
            fillgridview();


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (txt_kAdi.Text == "")
            {
                lbl_hata.Text = "Lütfen kullanıcı adını giriniz";
                lbl_hata.Visible = true;
                txt_kAdi.Focus();
                return;
            }
            SqlCommand sil = new SqlCommand(@"DELETE FROM kayit WHERE kullanici_adi = @kullanici_adi", baglan);
            sil.Parameters.AddWithValue("@kullanici_adi", txt_kAdi.Text);
            baglan.Open();
            sil.ExecuteNonQuery();
            baglan.Close();
            string messageimage = "Kullanıcı başarıyla silinmiştir.";
            string scriptimage = "<script type=\"text/javascript\">alert('" + messageimage + "');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", scriptimage);
            fillgridview();
        }
    }
   

}