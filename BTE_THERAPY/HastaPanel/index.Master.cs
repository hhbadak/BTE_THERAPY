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
        protected void Page_Load(object sender, EventArgs e)
        {
            DataModel dm = new DataModel();
            if (Session["hasta"] != null)
            {
                Hastalar h = (Hastalar)Session["hasta"];
                rp_dropdown.DataSource = dm.HastaListele();
                rp_dropdown.DataBind();
            }
            else
            {
                Response.Redirect("../FizyoterapistPanel/giris.aspx");
            }
        }
    }
}