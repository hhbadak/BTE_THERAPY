using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTE_THERAPY.HastaPanel
{
    public partial class index1 : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddl_kategoriler.DataTextField = "Ad";
                ddl_kategoriler.DataValueField = "ID";
                ddl_kategoriler.DataSource = dm.KategoriListele();
                ddl_kategoriler.DataBind();
            }
        }

        protected void ddl_kategoriler_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int selectedCategoryID = Convert.ToInt32(ddl_kategoriler.SelectedValue);
            //Repeater1.DataSource = dm.VerileriKategoridenGetir(selectedCategoryID);
            //Repeater1.DataBind();
        }

    }
}