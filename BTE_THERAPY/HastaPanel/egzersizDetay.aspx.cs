using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTE_THERAPY.HastaPanel
{
    public partial class egzersizDetay : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count != 0)
            {
                if (!IsPostBack)
                {
                    int id = Convert.ToInt32(Request.QueryString["mid"]);
                    rp_detail.DataSource = dm.VerileriAltKategoridenGetir(id);
                    rp_detail.DataBind();
                }
            }
        }
    }
}