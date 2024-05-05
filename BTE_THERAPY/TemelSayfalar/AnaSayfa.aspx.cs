using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTE_THERAPY.TemelSayfalar
{
    public partial class AnaSayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataModel dataModel = new DataModel();
                int toplamHasta = dataModel.ToplamHastaSayisi();
                int toplamFizyoterapist = dataModel.ToplamFizyoterapistSayisi();

                if (toplamHasta >= 0) // Hasta sayısı geçerliyse
                {
                    lblToplamHastaSayisi.Text = toplamHasta.ToString();
                }
                else
                {
                    lblToplamHastaSayisi.Text = "Hata"; // Hasta sayısı alınamazsa
                }

                if (toplamFizyoterapist >= 0) // Fizyoterapist sayısı geçerliyse
                {
                    lblToplamFizyoterapistSayisi.Text = toplamFizyoterapist.ToString();
                }
                else
                {
                    lblToplamFizyoterapistSayisi.Text = "Hata"; // Fizyoterapist sayısı alınamazsa
                }
            }
        }
    }
}