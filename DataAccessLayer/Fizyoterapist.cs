using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class Fizyoterapist
    {
        public int ID { get; set; }
        public string AdSoyad { get; set; }
        public string Foto  { get; set; }
        public string Email { get; set; }
        public string Parola { get; set; }
        public string Telefon { get; set; }
        public bool Cinsiyet { get; set; }
        public DateTime Dogum_Tarihi { get; set; }
        public string Dogum_TarihiStr { get; set; }
        public DateTime Kayit_Tarihi { get; set; }
        public bool Durum { get; set; }
    }
}
