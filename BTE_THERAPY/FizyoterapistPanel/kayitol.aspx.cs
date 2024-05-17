using System;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTE_THERAPY.FizyoterapistPanel
{
    public partial class kayitol : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"data source=.\;initial catalog=BTE_THERAPY;integrated security=True");

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


        protected void lbtn_kayitol_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            string AdSoyad = tb_adsoyad.Text;
            string Email = tb_email.Text.Trim();
            string sifre = tb_parola.Text;
            string sifretekrar = tb_parolatekrar.Text;
            string hashliSifre = HashleSifre(sifre);
            string adres = ta_adres.InnerText;
            string telefon = tb_telefon.Text;
            string cinsiyet = "";
            bool cinsiyetBool = false;
            if (rb_erkek.Checked)
            {
                cinsiyet = "Erkek";
                cinsiyetBool = true;
            }
            else if (rb_kadin.Checked)
            {
                cinsiyet = "Kadın";
                cinsiyetBool = false;
            }
            DateTime kayitTarihi = DateTime.Now;
            string kayitTarihiStr = kayitTarihi.ToString("yyyy-MM-dd HH:mm:ss");

            if (string.IsNullOrWhiteSpace(AdSoyad))
            {
                string script = "alert('Lütfen adınızı ve soyadınızı giriniz.');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                baglanti.Close();
                return;
            }

            // E-posta doğrulaması
            if (!Email.Contains("@"))
            {
                string script = "alert('Geçerli bir e-posta adresi giriniz.');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                baglanti.Close();
                return;
            }

            // İsim doğrulaması
            if (!IsValidName(AdSoyad))
            {
                string script = "alert('Geçerli bir isim giriniz.');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                baglanti.Close();
                return;
            }
            if (string.IsNullOrWhiteSpace(sifre))
            {
                string script = "alert('Lütfen bir parola giriniz.');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                baglanti.Close();
                return;
            }

            if (sifre != sifretekrar)
            {
                string script = "alert('Parola ve parola tekrarı uyuşmuyor. Lütfen aynı parolayı girin.');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }
            if (string.IsNullOrWhiteSpace(telefon))
            {
                string script = "alert('Lütfen bir telefon numarası giriniz.');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                baglanti.Close();
                return;
            }
            else
            {
                SqlCommand komut = new SqlCommand("INSERT INTO dbo.Hastalar (AdSoyad, Email, Parola, Cinsiyet, Adres, Telefon, KayitTarihi, Durum) VALUES (@AdSoyad, @Email, @Parola, @Cinsiyet, @Adres, @Telefon, @KayitTarihi, 1)", baglanti);
                komut.Parameters.AddWithValue("@AdSoyad", AdSoyad);
                komut.Parameters.AddWithValue("@Email", Email);
                komut.Parameters.AddWithValue("@Parola", hashliSifre);
                komut.Parameters.AddWithValue("@Cinsiyet", cinsiyetBool);
                komut.Parameters.AddWithValue("@Adres", adres);
                komut.Parameters.AddWithValue("@Telefon", telefon);
                komut.Parameters.AddWithValue("@KayitTarihi", kayitTarihiStr);

                int etkilenenSatirSayisi = komut.ExecuteNonQuery();

                if (etkilenenSatirSayisi > 0)
                {
                    string script = "alert('Kayıt işlemi başarıyla tamamlandı. Giriş yapabilirsiniz.'); window.location = 'giris.aspx';";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                }
                else
                {
                    string script = "alert('Kayıt işlemi başarısız oldu. Lütfen tekrar deneyiniz.');";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                }
            }
            baglanti.Close();
        }

        // İsim doğrulama işlevi
        private bool IsValidName(string name)
        {
            foreach (char c in name)
            {
                if (!char.IsLetter(c) && c != ' ')
                {
                    return false;
                }
            }
            return true;
        }
       
    }
}