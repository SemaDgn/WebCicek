//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebCicek
{
    using System;
    using System.Collections.Generic;
    
    public partial class Kullanicilar
    {
        public Kullanicilar()
        {
            this.Siparisler = new HashSet<Siparisler>();
        }
    
        public int kullaniciID { get; set; }
        public string adi { get; set; }
        public string soyadi { get; set; }
        public string email { get; set; }
        public string kullanicisifre { get; set; }
        public bool silindi { get; set; }
    
        public virtual ICollection<Siparisler> Siparisler { get; set; }
    }
}
