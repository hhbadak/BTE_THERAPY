using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTE_THERAPY.FizyoterapistPanel
{
    public partial class profil : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fizyoterapist"] != null)
            {
                Fizyoterapist f = (Fizyoterapist)Session["fizyoterapist"];
                rp_dropdown.DataSource = dm.FizyoterapistListele();
                rp_dropdown.DataBind();

                tb_adSoyad.Text = f.AdSoyad;
                tb_mail.Text = f.Email;
                tb_parola.Text = f.Parola;
                tb_telefon.Text = f.Telefon;
            }
            else
            {
                Response.Redirect("../FizyoterapistPanel/giris.aspx");
            }
        }

        protected void lbtn_duzenle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["mid"]);
            Fizyoterapist f = dm.FizyoterapistGetir(id);

            f.AdSoyad = tb_adSoyad.Text;
            f.Email=tb_mail.Text;
            f.Parola = tb_parola.Text;
            f.Telefon = tb_telefon.Text;
            if (dm.FizyoterapistGuncelle(f))
            {
                string script = "alert('Düzenleme İşlemi Tamamlandı');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }
        }
    }
}