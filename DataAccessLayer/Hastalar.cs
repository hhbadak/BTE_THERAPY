using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class Hastalar
    {
        public int ID { get; set; }
        public string AdSoyad { get; set; }
        public string Foto { get; set; }
        public string EMail { get; set; }
        public string Parola { get; set; }
        public string Adres { get; set; }
        public string Telefon { get; set; }
        public bool Cinsiyet { get; set; }
        public DateTime DogumTarih { get; set; }
        public DateTime KayitTarihi { get; set; }
        public bool Durum { get; set; }

    }
}
