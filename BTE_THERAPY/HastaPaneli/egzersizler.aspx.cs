using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
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
            if (Convert.ToInt32(ddl_kategoriler.SelectedItem.Value) != 0)
            {
                Egzersiz egzersiz = new Egzersiz();
                egzersiz.Ad = tb_egzersizAdi.Text;
                egzersiz.Kategori_ID = Convert.ToInt32(ddl_kategoriler.SelectedItem.Value);
                egzersiz.Baslik = tb_baslik.Text;
                egzersiz.Icerik = tb_icerik.InnerText;
                if (fu_resim.HasFile)
                {
                    FileInfo fi = new FileInfo(fu_resim.FileName);
                    if (fi.Extension == ".jpg" || fi.Extension == ".png")
                    {
                        string uzanti = fi.Extension;
                        string isim = Guid.NewGuid().ToString();
                        egzersiz.Foto = isim + uzanti;
                        fu_resim.SaveAs(Server.MapPath("../FizyoterapistPanel/img/icerik" + isim + uzanti));
                        if (dm.IcerikEkle(egzersiz))
                        {
                            //pnl_basarisiz.Visible = false;
                            //pnl_basarili.Visible = true;
                            tb_baslik.Text = tb_icerik.InnerText = tb_egzersizAdi.Text = "";
                            ddl_kategoriler.SelectedValue = "0";
                        }
                        else
                        {
                            //pnl_basarisiz.Visible = true;
                            //pnl_basarili.Visible = false;
                            //lbl_mesaj.Text = "Makale Ekleme Başarısız";
                        }
                    }
                    else
                    {
                        //pnl_basarisiz.Visible = true;
                        //pnl_basarili.Visible = false;
                        //lbl_mesaj.Text = "Resim uzantısı sadece .jpg veya .png olmalıdır";
                    }
                }
                else
                {
                    //mak.Resim = "none.png";
                    //if (dm.MakaleEkle(mak))
                    //{
                    //    pnl_basarisiz.Visible = false;
                    //    pnl_basarili.Visible = true;
                    //    tb_baslik.Text = tb_icerik.Text = tb_ozet.Text = "";
                    //    cb_yayinda.Checked = false;
                    //    ddl_kategoriler.SelectedValue = "0";
                    //}
                    //else
                    //{
                    //    pnl_basarisiz.Visible = true;
                    //    pnl_basarili.Visible = false;
                    //    lbl_mesaj.Text = "Makale Ekleme Başarısız";
                    //}
                }
                if (fu_video.HasFile)
                {
                    FileInfo fiv = new FileInfo(fu_video.FileName);
                    if (fiv.Extension == ".mp4")
                    {
                        string uzanti = fiv.Extension;
                        string isim = Guid.NewGuid().ToString();
                        egzersiz.Video = isim + uzanti;
                        fu_resim.SaveAs(Server.MapPath("../FizyoterapistPanel/img/icerik" + isim + uzanti));
                        if (dm.IcerikEkle(egzersiz))
                        {
                            //pnl_basarisiz.Visible = false;
                            //pnl_basarili.Visible = true;
                            tb_baslik.Text = tb_icerik.InnerText = tb_egzersizAdi.Text = "";
                            ddl_kategoriler.SelectedValue = "0";
                        }
                        else
                        {
                            //pnl_basarisiz.Visible = true;
                            //pnl_basarili.Visible = false;
                            //lbl_mesaj.Text = "Makale Ekleme Başarısız";
                        }
                    }
                    else
                    {
                        //pnl_basarisiz.Visible = true;
                        //pnl_basarili.Visible = false;
                        //lbl_mesaj.Text = "Resim uzantısı sadece .jpg veya .png olmalıdır";
                    }
                }
                else
                {
                    //mak.Resim = "none.png";
                    //if (dm.MakaleEkle(mak))
                    //{
                    //    pnl_basarisiz.Visible = false;
                    //    pnl_basarili.Visible = true;
                    //    tb_baslik.Text = tb_icerik.Text = tb_ozet.Text = "";
                    //    cb_yayinda.Checked = false;
                    //    ddl_kategoriler.SelectedValue = "0";
                    //}
                    //else
                    //{
                    //    pnl_basarisiz.Visible = true;
                    //    pnl_basarili.Visible = false;
                    //    lbl_mesaj.Text = "Makale Ekleme Başarısız";
                    //}
                }
            }
            else
            {
                //pnl_basarisiz.Visible = true;
                //pnl_basarili.Visible = false;
                //lbl_mesaj.Text = "Kategori seçimi yapmalısınız";
            }
        }
    }
}