using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTE_THERAPY.HastaPanel
{
    public partial class posturEgitimi : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (sender is Control control && control.NamingContainer != null)
            {
                RepeaterItem item = (RepeaterItem)control.NamingContainer;
                if (item.DataItem != null)
                {
                    int selectedCategoryID = Convert.ToInt32(DataBinder.Eval(item.DataItem, "ID"));
                    if (selectedCategoryID != null) // Veri kaynağından dönen ID null değilse devam edin
                    {
                        Repeater1.DataSource = dm.VerileriAltKategoridenGetir(selectedCategoryID);
                        Repeater1.DataBind();
                    }
                }
            }
        }

    }

}