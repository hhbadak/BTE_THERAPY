using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class DataModel
    {
        SqlConnection con; SqlCommand cmd;

        public DataModel()
        {
            con = new SqlConnection(ConnectionStrings.ConStr);
            cmd = con.CreateCommand();
        }
        #region Fizyoterapist Giriş

        public Fizyoterapist FizyoterapistGiris(string mail, string sifre)
        {
            try
            {
                cmd.CommandText = "SELECT COUNT(*) FROM Fizyoterapist WHERE EMail = @mail AND Parola = @parola";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@mail", mail);
                cmd.Parameters.AddWithValue("@parola", sifre);
                con.Open();
                int sayi = Convert.ToInt32(cmd.ExecuteScalar());

                if (sayi > 0)
                {
                    cmd.CommandText = "SELECT ID, AdSoyad, Foto, EMail, Telefon, Cinsiyet, DogumTarih, KayitTarihi, Durum FROM Fizyoterapist WHERE EMail = @mail AND Parola = @sifre AND Durum = 1";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@mail", mail);
                    cmd.Parameters.AddWithValue("@sifre", sifre);
                    //con.Open();//SAKIN YAPMA
                    SqlDataReader reader = cmd.ExecuteReader();
                    Fizyoterapist f = new Fizyoterapist();
                    while (reader.Read())
                    {
                       f.ID = reader.GetInt32(0);
                       f.AdSoyad = reader.GetString(1);
                       f.Foto = reader.GetString(2);
                       f.Email = reader.GetString(3);
                       f.Telefon = reader.GetString(4);
                       f.Cinsiyet = reader.GetBoolean(5);
                       f.Dogum_Tarihi = reader.GetDateTime(6);
                       f.Kayit_Tarihi = reader.GetDateTime(7);
                       f.Durum = reader.GetBoolean(8);
                    }
                    return f;
                }
                else
                {
                    return null;
                }

            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }

        public List<Fizyoterapist> FizyoterapistListele()
        {
            List<Fizyoterapist> fizyoterapist = new List<Fizyoterapist>();
            try
            {
                cmd.CommandText = "Select * From Fizyoterapist";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Fizyoterapist f = new Fizyoterapist();
                    f.ID = reader.GetInt32(0);
                    f.AdSoyad = reader.GetString(1);
                    f.Foto = reader.GetString(2);
                    f.Email = reader.GetString(3);
                    f.Parola = reader.GetString(4);
                    f.Telefon = reader.GetString(5);
                    f.Cinsiyet = reader.GetBoolean(6);
                    f.Dogum_Tarihi = reader.GetDateTime(7);
                    f.Kayit_Tarihi = reader.GetDateTime(8);
                    f.Durum = reader.GetBoolean(9);
                    fizyoterapist.Add(f);
                }
                return fizyoterapist;
            }
            catch
            {
                return null;
            }
            finally
            {
                con.Close();
            }
        }
        #endregion

        #region Kategori İşlemleri

        public List<Kategori> KategoriListele()
        {
            List<Kategori> kategoriler = new List<Kategori>();
            try
            {
                cmd.CommandText = "SELECT * FROM Kategori";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Kategori k = new Kategori();
                    k.ID = reader.GetInt32(0);
                    k.Ad = reader.GetString(1);
                    kategoriler.Add(k);
                }
                return kategoriler;
            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }
        #endregion

        #region İçerik İşlemleri

        public bool IcerikEkle(Egzersiz eg)
        {
            try
            {
                cmd.CommandText = "INSERT INTO Egzersiz(Ad, Video, Baslik, Icerik, KategoriID, Foto) VALUES(@Ad, @Video, @baslik, @Icerik, @KategoriID, @Foto)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@Ad", eg.Ad);
                cmd.Parameters.AddWithValue("@Video", eg.Video);
                cmd.Parameters.AddWithValue("@baslik", eg.Baslik);
                cmd.Parameters.AddWithValue("@Icerik", eg.Icerik);
                cmd.Parameters.AddWithValue("@KategoriID", eg.Kategori_ID);
                cmd.Parameters.AddWithValue("@Foto", eg.Foto);
                con.Open();
                cmd.ExecuteReader();
                return true;
            }
            catch
            {
                return false;
            }
            finally
            {
                con.Close();
            }
        }
        #endregion

        #region Hasta İşlemleri

        public Hastalar HastaGiris(string mail, string sifre)
        {
            try
            {
                cmd.CommandText = "SELECT COUNT(*) FROM Hastalar WHERE EMail = @mail AND Parola = @parola";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@mail", mail);
                cmd.Parameters.AddWithValue("@parola", sifre);
                con.Open();
                int sayi = Convert.ToInt32(cmd.ExecuteScalar());

                if (sayi > 0)
                {
                    cmd.CommandText = "SELECT ID, AdSoyad, Foto, EMail, Parola, Adres, Telefon, Cinsiyet, DogumTarih, KayitTarihi, Durum FROM Hastalar WHERE EMail = @mail AND Parola = @sifre AND Durum = 1";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@mail", mail);
                    cmd.Parameters.AddWithValue("@sifre", sifre);
                    //con.Open();//SAKIN YAPMA
                    SqlDataReader reader = cmd.ExecuteReader();
                    Hastalar h = new Hastalar();
                    while (reader.Read())
                    {
                        h.ID = reader.GetInt32(0);
                        h.AdSoyad = reader.GetString(1);
                        h.Foto = reader.GetString(2);
                        h.EMail = reader.GetString(3);
                        h.Parola = reader.GetString(4);
                        h.Adres = reader.GetString(5);
                        h.Telefon = reader.GetString(6);
                        h.Cinsiyet = reader.GetBoolean(7);
                        h.DogumTarih = reader.GetDateTime(8);
                        h.KayitTarihi = reader.GetDateTime(9);
                        h.Durum = reader.GetBoolean(10);
                    }
                    return h;
                }
                else
                {
                    return null;
                }

            }
            catch
            {
                return null;
            }
            finally { con.Close(); }
        }

        public List<Hastalar> HastaListele()
        {
            List<Hastalar> hasta = new List<Hastalar>();
            try
            {
                cmd.CommandText = "Select * From Hastalar";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Hastalar h = new Hastalar();
                    h.ID = reader.GetInt32(0);
                    h.AdSoyad = reader.GetString(1);
                    h.Foto = reader.GetString(2);
                    h.EMail = reader.GetString(3);
                    h.Parola = reader.GetString(4);
                    h.Adres = reader.GetString(5);
                    h.Telefon = reader.GetString(6);
                    h.Cinsiyet = reader.GetBoolean(7);
                    h.DogumTarih = reader.GetDateTime(8);
                    h.KayitTarihi = reader.GetDateTime(9);
                    h.Durum = reader.GetBoolean(10);
                    hasta.Add(h);
                }
                return hasta;
            }
            catch
            {
                return null;
            }
            finally
            {
                con.Close();
            }
        }
        #endregion
    }
}
