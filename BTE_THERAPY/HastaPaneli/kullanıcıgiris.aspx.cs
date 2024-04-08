using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTE_THERAPY.FizyoterapistPanel
{
    public partial class giris : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtn_giris_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_email.Text) && !string.IsNullOrEmpty(tb_parola.Text))
            {
                Fizyoterapist f = dm.FizyoterapistGiris(tb_email.Text, tb_parola.Text);
                if (f != null)
                {
                    if (f.Durum)
                    {
                        Session["fizyoterapist"] = f;
                        Response.Redirect("../HastaPanel/egzersizler.aspx");
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
    }
}