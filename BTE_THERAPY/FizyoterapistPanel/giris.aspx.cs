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
        SqlDataReader dr;

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
            
                if (!string.IsNullOrEmpty(tb_email.Text) && !string.IsNullOrEmpty(tb_parola.Text))
                {
                    Fizyoterapist f = dm.FizyoterapistGiris(tb_email.Text, tb_parola.Text);
                    Hastalar h = dm.HastaGiris(tb_email.Text, tb_parola.Text);

                        if (f != null)
                        {
                            if (f.Durum)
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
                            if (h.Durum)
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
                    string script = "alert('Kullanıcı Adı ve Şifre Boş olamaz.');";
                    ScriptManager.RegisterStartupScript(this, GetType(), "GirisHataScript", script, true);
                }
            
        }

        protected void lbtn_kayit_Click(object sender, EventArgs e)
        {
            Response.Redirect("../FizyoterapistPanel/kayitol.aspx");
        }
    }
}