using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
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

        private string HashleSifre(string sifre)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(sifre));
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }
        public Fizyoterapist FizyoterapistGiris(string mail, string sifre)
        {
            try
            {
                string hashliSifre = HashleSifre(sifre);

                cmd.CommandText = "SELECT COUNT(*) FROM Fizyoterapist WHERE EMail = @mail AND Parola = @parola";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@mail", mail);
                cmd.Parameters.AddWithValue("@parola", hashliSifre);
                con.Open();
                int sayi = Convert.ToInt32(cmd.ExecuteScalar());

                if (sayi > 0)
                {
                    cmd.CommandText = "SELECT ID, AdSoyad, Foto, EMail, Telefon, Cinsiyet, DogumTarih, KayitTarihi, Durum FROM Fizyoterapist WHERE EMail = @mail AND Parola = @parola AND Durum = 1";
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
                    f.Dogum_TarihiStr = reader.GetDateTime(7).ToShortDateString();
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
                cmd.CommandText = "INSERT INTO Egzersiz(Ad, Video, Baslik, Icerik, KategoriID, Foto, Foto1, Foto2, Foto3, Foto4) VALUES(@Ad, @Video, @baslik, @Icerik, @KategoriID, @Foto, @Foto1, @Foto2, @Foto3, @Foto4)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@Ad", eg.Ad);
                cmd.Parameters.AddWithValue("@Video", eg.Video);
                cmd.Parameters.AddWithValue("@baslik", eg.Baslik);
                cmd.Parameters.AddWithValue("@Icerik", eg.Icerik);
                cmd.Parameters.AddWithValue("@KategoriID", eg.Kategori_ID);
                cmd.Parameters.AddWithValue("@Foto", eg.Foto);
                cmd.Parameters.AddWithValue("@Foto1", eg.Foto1);
                cmd.Parameters.AddWithValue("@Foto2", eg.Foto2);
                cmd.Parameters.AddWithValue("@Foto3", eg.Foto3);
                cmd.Parameters.AddWithValue("@Foto4", eg.Foto4);
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
                string hashliSifre = HashleSifre(sifre);

                cmd.CommandText = "SELECT COUNT(*) FROM Hastalar WHERE EMail = @mail AND Parola = @parola";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@mail", mail);
                cmd.Parameters.AddWithValue("@parola", hashliSifre);
                con.Open();
                int sayi = Convert.ToInt32(cmd.ExecuteScalar());

                if (sayi > 0)
                {

                    cmd.CommandText = "SELECT ID, AdSoyad, EMail, Telefon, Cinsiyet, KayitTarihi, Durum FROM Hastalar WHERE EMail = @mail AND Parola = @parola AND Durum = 1";
                    SqlDataReader reader = cmd.ExecuteReader();
                    Hastalar h = new Hastalar();
                    while (reader.Read())
                    {
                        h.ID = reader.GetInt32(0);
                        h.AdSoyad = reader.GetString(1);
                        h.EMail = reader.GetString(2);
                        h.Telefon = reader.GetString(3);
                        h.CinsiyetBool = reader.GetBoolean(4);
                        h.KayitTarihi = reader.GetDateTime(5);
                        h.Durum = reader.GetBoolean(6);
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
                    h.CinsiyetBool = reader.GetBoolean(7);
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

        public List<Egzersiz> VerileriKategoridenGetir(int selectedCategoryID)
        {
            List<Egzersiz> egzersizListesi = new List<Egzersiz>();
            try
            {
                cmd.CommandText = "SELECT * FROM Egzersiz WHERE KategoriID = @KategoriID";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@KategoriID", selectedCategoryID);
                cmd.Connection = con;

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Egzersiz e = new Egzersiz
                    {
                        ID = reader.GetInt32(reader.GetOrdinal("ID")),
                        Ad = reader.GetString(reader.GetOrdinal("Ad")),
                        Video = reader.IsDBNull(reader.GetOrdinal("Video")) ? null : reader.GetString(reader.GetOrdinal("Video")),
                        Baslik = reader.GetString(reader.GetOrdinal("Baslik")),
                        Icerik = reader.GetString(reader.GetOrdinal("Icerik")),
                        Kategori_ID = reader.GetInt32(reader.GetOrdinal("KategoriID")),
                        Foto = reader.IsDBNull(reader.GetOrdinal("Foto")) ? null : reader.GetString(reader.GetOrdinal("Foto")),
                        Foto1 = reader.IsDBNull(reader.GetOrdinal("Foto1")) ? null : reader.GetString(reader.GetOrdinal("Foto")),
                        Foto2 = reader.IsDBNull(reader.GetOrdinal("Foto2")) ? null : reader.GetString(reader.GetOrdinal("Foto")),
                        Foto3 = reader.IsDBNull(reader.GetOrdinal("Foto3")) ? null : reader.GetString(reader.GetOrdinal("Foto")),
                        Foto4 = reader.IsDBNull(reader.GetOrdinal("Foto4")) ? null : reader.GetString(reader.GetOrdinal("Foto"))
                    };
                    egzersizListesi.Add(e);
                }
                reader.Close();
                return egzersizListesi;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Hata: " + ex.Message);
                return null;
            }
            finally
            {
                con.Close();
            }
        }

        public bool HastaEkle(Hastalar h)
        {
            try
            {
                cmd.CommandText = "INSERT INTO dbo.Hastalar (AdSoyad, Email, Parola, Cinsiyet, Adres, Telefon, KayitTarihi) VALUES (@AdSoyad, @Email, @Parola, @Cinsiyet, @Adres, @Telefon, @KayitTarihi)";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@AdSoyad", h.AdSoyad);
                cmd.Parameters.AddWithValue("@Email", h.EMail);
                cmd.Parameters.AddWithValue("@Parola", h.Parola);
                cmd.Parameters.AddWithValue("@Cinsiyet", h.CinsiyetBool);
                cmd.Parameters.AddWithValue("@Adres", h.Adres);
                cmd.Parameters.AddWithValue("@Telefon", h.Telefon);
                cmd.Parameters.AddWithValue("@KayitTarihi", h.KayitTarihi.ToShortDateString());
                con.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch
            { return false; }
            finally { con.Close(); }
        }
        #endregion

        #region sayilar
        public int ToplamHastaSayisi()
        {
            try
            {
                cmd.CommandText = "SELECT COUNT(*) FROM Hastalar";
                cmd.Parameters.Clear();
                con.Open();
                int sayi = Convert.ToInt32(cmd.ExecuteScalar());
                return sayi;
            }
            catch
            {
                return -1; // Hata durumunda -1 döndürülebilir.
            }
            finally
            {
                con.Close();
            }
        }

        public int ToplamFizyoterapistSayisi()
        {
            try
            {
                cmd.CommandText = "SELECT COUNT(*) FROM Fizyoterapist";
                cmd.Parameters.Clear();
                con.Open();
                int sayi = Convert.ToInt32(cmd.ExecuteScalar());
                return sayi;
            }
            catch
            {
                return -1; // Hata durumunda -1 döndürülebilir.
            }
            finally
            {
                con.Close();
            }
        }
        #endregion

    }
}
