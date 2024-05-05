using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTE_THERAPY.TemelSayfalar
{
    public partial class Temel : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateNavbar();
        }
        public void UpdateNavbar()
        {
            if (Session["fizyoterapist"] != null)
            {
                UpdateNavbarFizyoterapist();
            }
            else if (Session["hasta"] != null)
            {
                UpdateNavbarHasta();
            }
            else
            {
                UpdateNavbarNormal();
            }
        }

                public void UpdateNavbarHasta()
        {
            navbar_login.Visible = false;
            navbar_kayitol.Visible = false;
            navbar_kullanici_panel.Visible = true;
            navbar_fizyoterapist_panel.Visible = false;
            navbar_cikisyap.Visible = true;
        }
        public void UpdateNavbarFizyoterapist()
        {
            navbar_login.Visible = false;
            navbar_kayitol.Visible = false;
            navbar_kullanici_panel.Visible = false;
            navbar_fizyoterapist_panel.Visible = true;
            navbar_cikisyap.Visible = true;
        }
        public void UpdateNavbarNormal()
        {
            navbar_login.Visible = true;
            navbar_kayitol.Visible = true;
            navbar_kullanici_panel.Visible = false;
            navbar_fizyoterapist_panel.Visible = false;
            navbar_cikisyap.Visible = false;
        }
        
    }
}