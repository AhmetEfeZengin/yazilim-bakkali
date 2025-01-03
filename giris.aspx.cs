using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Reflection.Emit;
using System.Configuration;

namespace bakkal
{
    
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from kayit where Kullanici_Adi = @ad and Sifre=@psswd", baglan);

            string yetki = "";
            string kullanici = "";
            int id = 0;
            komut.Parameters.AddWithValue("@ad", SqlDbType.NVarChar).Value = txt_kAdi.Text;
            komut.Parameters.AddWithValue("@psswd", SqlDbType.NVarChar).Value = txt_sifre.Text;
            baglan.Open();
            SqlDataReader read = komut.ExecuteReader();
            while (read.Read())
            {
                yetki = read[3].ToString(); //select ile çağırılan bilgiler bir dizi gibi geleceğinden yetkiyi çağırmak için çağırılan dizideki elemanı getirmek için dizideki sayısal değerini gireriz. Bu tabloda yetki 4. eleman olduğundan değeri 3
                kullanici = read[1].ToString();
                id = Convert.ToInt32(read[0].ToString());
            }
            if (Session["kullanici"] != null)
            {
                kullanici = Session["kullanici"].ToString();
            }
            if (yetki != "")
            {
                Session.Add("kullanici", kullanici); // kıllanıcı adını tuttuğumuz session
                Session.Add("yetkisi", yetki);       // yetkinin tutulduğu session
                Session.Add("ID", id);
                Session.Timeout = 5;
            }

            baglan.Close();
            Response.Redirect("index.aspx");
        }
    }
}