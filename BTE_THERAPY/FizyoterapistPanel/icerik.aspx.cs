using DataAccessLayer;
using System;
using System.IO;
using System.Web.UI.WebControls;

namespace BTE_THERAPY.FizyoterapistPanel
{
    public partial class icerik : System.Web.UI.Page
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

        protected void lbtn_ekle_Click(object sender, EventArgs e)
        {
            if (ddl_kategoriler.SelectedItem != null && ddl_kategoriler.SelectedValue != "0")
            {
                Egzersiz egzersiz = new Egzersiz
                {
                    Ad = tb_egzersizAdi.Text,
                    Kategori_ID = Convert.ToInt32(ddl_kategoriler.SelectedItem.Value),
                    Baslik = tb_baslik.Text,
                    Icerik = tb_icerik.InnerText
                };

                // Resim dosyası yüklendiğinde
                if (fu_resim.HasFile)
                {
                    string resimUzantisi = Path.GetExtension(fu_resim.FileName);
                    if (resimUzantisi == ".jpg" || resimUzantisi == ".png")
                    {
                        string resimIsim = Guid.NewGuid().ToString();
                        string resimYolu = "../FizyoterapistPanel/img/icerik/" + resimIsim + resimUzantisi;
                        egzersiz.Foto = resimYolu;

                        // Resmi kaydet
                        fu_resim.SaveAs(Server.MapPath(resimYolu));
                    }
                    else
                    {
                        // Resim uzantısı geçersiz
                        // Hata mesajı veya işlem yapılabilir
                    }
                }

                // YouTube URL'si eklendiğinde
                if (!string.IsNullOrEmpty(tb_videoUrl.Text))
                {
                    // YouTube URL'sini al
                    string youtubeUrl = tb_videoUrl.Text;

                    // YouTube URL'sinden video ID'sini al
                    string videoId = GetYouTubeVideoId(youtubeUrl);

                    // Egzersize video ID'sini ata
                    if (!string.IsNullOrEmpty(videoId))
                    {
                        egzersiz.Video = videoId;
                    }
                    else
                    {
                        // YouTube URL'si geçersiz
                        // Hata mesajı veya işlem yapılabilir
                    }
                }

                // İçerik eklemeyi dene
                if (dm.IcerikEkle(egzersiz))
                {
                    // İçerik başarıyla eklendi
                    // Başka işlemler veya mesaj gösterebilirsiniz
                }
                else
                {
                    // İçerik eklenemedi
                    // Hata mesajı veya işlem yapılabilir
                }
            }
            else
            {
                // Kategori seçilmemiş
                // Hata mesajı veya işlem yapılabilir
            }
        }

        // YouTube URL'sinden video ID'sini alma
        private string GetYouTubeVideoId(string url)
        {
            try
            {
                Uri uri = new Uri(url);
                string host = uri.Host;
                string query = uri.Query;
                if (host.Contains("youtube") && query.Contains("v="))
                {
                    int startIndex = query.IndexOf("v=") + 2;
                    int length = query.Length - startIndex;
                    string videoId = query.Substring(startIndex, length);
                    return videoId;
                }
                return null;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Hata: " + ex.Message);
                return null;
            }
        }
    }
}