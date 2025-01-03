using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bakkal
{
    public partial class uyeOl : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

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

            if (txt_sifre.Text == "")
            {
                lbl_hata.Text = "Lütfen şifrenizi giriniz";
                lbl_hata.Visible = true;
                txt_sifre.Focus();
                return;
            }
            SqlCommand cmd = new SqlCommand("INSERT INTO kayit(kullanici_adi, sifre, yetki) VALUES(@kullanici_adi, @sifre, @yetki)", baglan);

            cmd.Parameters.AddWithValue("@kullanici_adi", txt_kAdi.Text);
            cmd.Parameters.AddWithValue("@sifre", txt_sifre.Text);
            cmd.Parameters.AddWithValue("@yetki", "kullanici");
            baglan.Open();
            cmd.ExecuteNonQuery();
            baglan.Close();
            string messageimage = "Kullanıcı kayıt işleminiz tamamlanmıştır.";
            string scriptimage = "<script type=\"text/javascript\">alert('" + messageimage + "');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", scriptimage);
        }
    }
}