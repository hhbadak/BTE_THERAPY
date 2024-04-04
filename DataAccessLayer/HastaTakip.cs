using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class HastaTakip
    {
        public int ID { get; set; }
        public int HastaEgzersizID { get; set; }
        public string HastaEgzersiz { get; set; }
        public DateTime AtamaTarihi { get; set; }
        public bool YapildiMi { get; set; }
    }
}
