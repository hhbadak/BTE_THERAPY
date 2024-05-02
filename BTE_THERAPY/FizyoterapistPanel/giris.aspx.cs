using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTE_THERAPY.FizyoterapistPanel
{
    public partial class giris : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        SqlConnection baglanti = new SqlConnection(@"data source = .\;initial catalog=BTE_THERAPY;integrated security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private string HashleSifre(string sifre)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(sifre));
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }

        protected void lbtn_giris_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("SELECT * FROM Fizyoterapist WHERE Email=@P1", baglanti); // E-postaya göre kullanıcıyı seç

            komut.Parameters.AddWithValue("@P1", tb_email.Text);
            SqlDataReader dr = komut.ExecuteReader();

            if (!string.IsNullOrEmpty(tb_email.Text) && !string.IsNullOrEmpty(tb_parola.Text))
            {
                
                Fizyoterapist f = dm.FizyoterapistGiris(tb_email.Text, tb_parola.Text);
                Hastalar h = dm.HastaGiris(tb_email.Text, tb_parola.Text);
                if (dr.Read()) // Veri varsa okuma yap
                {
                    string hashliSifre = HashleSifre(tb_parola.Text); // Giriş şifresini hashle
                string dbHashliSifre = dr["Parola"].ToString(); // Veritabanından gelen hashlenmiş şifreyi al

                if (f != null)
                {
                    
                    if (f.Durum && hashliSifre == dbHashliSifre)
                    {
                        Session["fizyoterapist"] = f;
                        Response.Redirect("../FizyoterapistPanel/index.aspx");
                    }
                    else
                    {
                        //pnl_hata.Visible = true;
                        //lbl_hata.Text = "Kullanıcı Hesabınız Aktif değil";
                    }
                }
                else
                {
                    //pnl_hata.Visible = true;
                    //lbl_hata.Text = "Kullanıcı Bulunamadı";
                }
                if (h != null)
                {
                    if (h.Durum && hashliSifre == dbHashliSifre)
                    {
                        Session["hasta"] = h;
                        Response.Redirect("../HastaPanel/index.aspx");
                    }
                    else
                    {
                        //pnl_hata.Visible = true;
                        //lbl_hata.Text = "Kullanıcı Hesabınız Aktif değil";
                    }
                }
                else
                {
                    //pnl_hata.Visible = true;
                    //lbl_hata.Text = "Kullanıcı Bulunamadı";
                }
            }
            else
            {
                //pnl_hata.Visible = true;
                //lbl_hata.Text = "Kullanıcı Adı ve Şifre Boş olamaz";
            }
            }
            else // Veri bulunamadıysa
            {
                //pnl_hata.Visible = true;
                //lbl_hata.Text = "Kullanıcı Bulunamadı";
            }
            dr.Close(); // SqlDataReader nesnesini kapat
            baglanti.Close(); // Bağlantıyı kapat
        }
    }
}