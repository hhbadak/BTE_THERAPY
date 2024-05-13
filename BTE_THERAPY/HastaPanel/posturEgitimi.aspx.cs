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
            List<altKategori> altKategoriler = dm.AltKategoriListele();
            Repeater2.DataSource = altKategoriler;
            Repeater2.DataBind();
        }
        int selectedSubCategoryID; // selectedSubCategoryID değişkenini tanımla
        protected void rp_kategori_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "Filter")
            {
                selectedSubCategoryID = Convert.ToInt32(e.CommandArgument); // selectedSubCategoryID'yi atama yap
                Repeater2.DataSource = dm.AltKategoriListele();
                Repeater2.DataBind();
            }

        }
        protected string FilterItem(object dataItem)
        {
            // Veri öğesinin alt kategorisi kontrol edilir ve filtreleme yapılır
            // Örneğin, alt kategoriye göre filtreleme yapabilirsiniz
            DataRowView row = (DataRowView)dataItem;
            int subCategoryID = Convert.ToInt32(row["AltKategoriID"]);

            // Burada istediğiniz filtreleme işlemlerini yapabilirsiniz
            // Örneğin, seçilen alt kategoriye göre veri listeleme
            if (selectedSubCategoryID == subCategoryID)
            {
                // Filtreye uyan verileri burada döndürebilirsiniz
                return string.Format("<div>{0}</div>", row["ColumnName"]);
            }
            else
            {
                // Filtreye uymayan verileri burada döndürebilirsiniz
                return string.Empty;
            }
        }
    }

}