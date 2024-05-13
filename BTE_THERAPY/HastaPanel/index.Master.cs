using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTE_THERAPY.HastaPanel
{
    public partial class index : System.Web.UI.MasterPage
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["hasta"] != null)
            {
                Hastalar h = (Hastalar)Session["hasta"];
                rp_dropdown.DataSource = dm.HastaListele();
                rp_dropdown.DataBind();
                rp_kategori.DataSource = dm.KategoriListele();
                rp_kategori.DataBind();

            }
            else
            {
                Response.Redirect("../FizyoterapistPanel/giris.aspx");
            }
        }

    }
}