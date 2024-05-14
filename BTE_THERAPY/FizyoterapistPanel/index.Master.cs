using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData.ModelProviders;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTE_THERAPY.FizyoterapistPanel
{
    public partial class index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataModel dm = new DataModel();
            if (Session["fizyoterapist"] != null)
            {
                Fizyoterapist f = (Fizyoterapist)Session["fizyoterapist"];
                rp_dropdown.DataSource = dm.FizyoterapistListele();
                rp_dropdown.DataBind();
            }
            else
            {
                Response.Redirect("../FizyoterapistPanel/giris.aspx");
            }
        }

        protected void lbtn_cikis_Click(object sender, EventArgs e)
        {
            Session["fizyoterapist"] = null;
            Response.Redirect("../FizyoterapistPanel/giris.aspx");
        }
    }
}