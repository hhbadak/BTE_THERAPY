using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    internal class Egzersiz
    {
        public int ID { get; set; }
        public string Ad { get; set; }
        public string Video { get; set; }
        public string Baslik { get; set; }
        public string İcerik { get; set; }
        public int Kategori_ID { get; set; }
        public string Foto { get; set; }
    }
}
