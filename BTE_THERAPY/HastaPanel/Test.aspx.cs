using iTextSharp.text.pdf;
using iTextSharp.text;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTE_THERAPY.HastaPanel
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClearForm();
            }
        }

        protected void btnDownloadPDF_Click(object sender, EventArgs e)
        {
            // Kullanıcının seçtiği seçenekleri al
            string selectedOptions = "";

            selectedOptions += "Pelvik taban fonksiyonlarından biri aşağıdakilerden hangisidir?: \n " + GetSelectedOption(question1) + "\n\n";
            selectedOptions += "Pelvik tabanın zayıf olması hangi duruma yol açabilir?: \n " + GetSelectedOption(question2) + "\n\n";
            selectedOptions += "Pelvik taban kaslarını güçlendirmek için aşağıdaki egzersizlerden hangisi önerilir?:  \n" + GetSelectedOption(question3) + "\n\n";

            string fontPath = Server.MapPath("../HastaPanel/font/OpenSans-Regular.ttf");

            // Font dosyasını kullanarak BaseFont oluşturma kodu
            BaseFont baseFont = BaseFont.CreateFont(fontPath, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);

            // BaseFont kullanarak bir Font nesnesi oluşturur
            Font font = new Font(baseFont, 12, Font.NORMAL);

            // PDF oluşturma
            Document document = new Document();
            MemoryStream memoryStream = new MemoryStream();
            PdfWriter.GetInstance(document, memoryStream);
            document.Open();
            document.Add(new Paragraph(selectedOptions, font));
            document.Close();

            // Oluşturulan PDF dosyasını indirme işlemi için sunucuya gönderme
            Response.Clear();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=form.pdf");
            Response.OutputStream.Write(memoryStream.GetBuffer(), 0, memoryStream.GetBuffer().Length);
            Response.OutputStream.Flush();
            Response.End();
        }

        private void ClearForm()
        {
            // Formdaki tüm seçenekleri temizle
            question1.ClearSelection();
            question2.ClearSelection();
            question3.ClearSelection();
        }

        private string GetSelectedOption(System.Web.UI.WebControls.RadioButtonList radioButtonList)
        {
            return radioButtonList.SelectedItem != null ? radioButtonList.SelectedItem.Text : "";
        }
    }
}