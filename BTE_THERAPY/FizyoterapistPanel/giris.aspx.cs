using DataAccessLayer;
using System;
using System.Data.SqlClient;
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
        SqlConnection con = new SqlConnection(ConnectionStrings.ConStr);
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Sayfa yüklenirken yapılacak işlemler
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
            try
            {
                con.Open();
                SqlCommand komut = new SqlCommand("SELECT * FROM Fizyoterapist WHERE Email=@P1", con); // E-postaya göre kullanıcıyı seç
                komut.Parameters.AddWithValue("@P1", tb_email.Text);

                dr = komut.ExecuteReader(); // SqlDataReader nesnesine değer ataması yap

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
                                string script = "alert('Kullanıcı Hesabınız Aktif değil veya giriş bilgileriniz hatalı.');";
                                ScriptManager.RegisterStartupScript(this, GetType(), "GirisHataScript", script, true);
                            }
                        }
                        else if (h != null)
                        {
                            if (h.Durum && hashliSifre == dbHashliSifre)
                            {
                                Session["hasta"] = h;
                                Response.Redirect("../HastaPanel/index.aspx");
                            }
                            else
                            {
                                string script = "alert('Kullanıcı Hesabınız Aktif değil veya giriş bilgileriniz hatalı.');";
                                ScriptManager.RegisterStartupScript(this, GetType(), "GirisHataScript", script, true);
                            }
                        }
                        else
                        {
                            string script = "alert('Kullanıcı Bulunamadı.');";
                            ScriptManager.RegisterStartupScript(this, GetType(), "GirisHataScript", script, true);
                        }
                    }
                    else
                    {
                        string script = "alert('Kullanıcı Bulunamadı.');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "GirisHataScript", script, true);
                    }
                }
                else
                {
                    string script = "alert('Kullanıcı Adı ve Şifre Boş olamaz.');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "GirisHataScript", script, true);
                }
            }
            catch (Exception ex)
            {
                // Hata yakalanırsa buraya düşer
                string script = "alert('Hata: " + ex.Message + "');";
                ScriptManager.RegisterStartupScript(this, GetType(), "GirisHataScript", script, true);
            }
            finally
            {
                if (dr != null && !dr.IsClosed)
                    dr.Close(); // SqlDataReader nesnesini kapat
                if (con != null && con.State != System.Data.ConnectionState.Closed)
                    con.Close(); // Bağlantıyı kapat
            }
        }
    }
}