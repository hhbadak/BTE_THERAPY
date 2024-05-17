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
                ddl_kategoriler.DataTextField = "AltKategori";
                ddl_kategoriler.DataValueField = "ID";
                ddl_kategoriler.DataSource = dm.AltKategoriListele();
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
                    AltKategoriID = Convert.ToInt32(ddl_kategoriler.SelectedItem.Value),
                    Baslik = tb_baslik.Text,
                    Icerik = tb_icerik.InnerText
                };

                // 1. Resim dosyası yüklendiğinde
                if (fu_resim.HasFile)
                {
                    FileInfo fi = new FileInfo(fu_resim.FileName);
                    if (fi.Extension == ".jpg" || fi.Extension == ".png")
                    {
                        string uzanti = fi.Extension;

                        //veritabanına string veriye çeviriyor fotoğrafı

                        string resimIsim = Guid.NewGuid().ToString();
                        egzersiz.Foto = resimIsim + uzanti;

                        // Resmi kaydet
                        fu_resim.SaveAs(Server.MapPath("~/FizyoterapistPanel/img/icerik/" + resimIsim + uzanti));

                    }
                    else
                    {
                        // Resim uzantısı geçersiz
                        // Hata mesajı veya işlem yapılabilir
                    }
                }

                // 2. Resim dosyası yüklendiğinde
                if (fu_resim1.HasFile)
                {
                    FileInfo fi = new FileInfo(fu_resim1.FileName);
                    if (fi.Extension == ".jpg" || fi.Extension == ".png")
                    {
                        string uzanti = fi.Extension;
                        string resimIsim = Guid.NewGuid().ToString();
                        egzersiz.Foto1 = resimIsim + uzanti;

                        // Resmi kaydet
                        fu_resim1.SaveAs(Server.MapPath("~/FizyoterapistPanel/img/icerik/" + resimIsim + uzanti));

                    }
                    else
                    {
                        // Resim uzantısı geçersiz
                        // Hata mesajı veya işlem yapılabilir
                    }
                }

                // 3. Resim dosyası yüklendiğinde
                if (fu_resim2.HasFile)
                {
                    FileInfo fi = new FileInfo(fu_resim2.FileName);
                    if (fi.Extension == ".jpg" || fi.Extension == ".png")
                    {
                        string uzanti = fi.Extension;
                        string resimIsim = Guid.NewGuid().ToString();
                        egzersiz.Foto2 = resimIsim + uzanti;

                        // Resmi kaydet
                        fu_resim2.SaveAs(Server.MapPath("~/FizyoterapistPanel/img/icerik/" + resimIsim + uzanti));

                    }
                    else
                    {
                        // Resim uzantısı geçersiz
                        // Hata mesajı veya işlem yapılabilir
                    }
                }

                // 4. Resim dosyası yüklendiğinde
                if (fu_resim3.HasFile)
                {
                    FileInfo fi = new FileInfo(fu_resim3.FileName);
                    if (fi.Extension == ".jpg" || fi.Extension == ".png")
                    {
                        string uzanti = fi.Extension;
                        string resimIsim = Guid.NewGuid().ToString();
                        egzersiz.Foto3 = resimIsim + uzanti;

                        // Resmi kaydet
                        fu_resim3.SaveAs(Server.MapPath("~/FizyoterapistPanel/img/icerik/" + resimIsim + uzanti));

                    }
                    else
                    {
                        // Resim uzantısı geçersiz
                        // Hata mesajı veya işlem yapılabilir
                    }
                }

                // 5. Resim dosyası yüklendiğinde
                if (fu_resim4.HasFile)
                {
                    FileInfo fi = new FileInfo(fu_resim4.FileName);
                    if (fi.Extension == ".jpg" || fi.Extension == ".png")
                    {
                        string uzanti = fi.Extension;
                        string resimIsim = Guid.NewGuid().ToString();
                        egzersiz.Foto4 = resimIsim + uzanti;

                        // Resmi kaydet
                        fu_resim4.SaveAs(Server.MapPath("~/FizyoterapistPanel/img/icerik/" + resimIsim + uzanti));

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
                    string script = "alert('Kayıt işlemi başarılı.');";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                    tb_baslik.Text = tb_egzersizAdi.Text = tb_icerik.InnerText = tb_videoUrl.Text = "";
                    ddl_kategoriler.SelectedIndex = 0;
                }
                else
                {
                    string script = "alert('Kayıt işlemi başarısız oldu. Lütfen tekrar deneyiniz.');";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
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