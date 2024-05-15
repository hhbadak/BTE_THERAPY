using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTE_THERAPY.HastaPanel
{
    public partial class aktifYaklasimlar : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Init(object sender, EventArgs e)
        {
            int selectedCategoryID = GetSelectedCategoryID();
            Repeater1.DataSource = dm.VerileriAltKategoridenGetir(selectedCategoryID);
            Repeater1.DataBind();
        }

        private int GetSelectedCategoryID()
        {
            int selectedCategoryID = 0;
            if (Request.QueryString["mid"] != null)
            {
                selectedCategoryID = Convert.ToInt32(Request.QueryString["mid"]);
            }
            return selectedCategoryID;
        }
    }
}