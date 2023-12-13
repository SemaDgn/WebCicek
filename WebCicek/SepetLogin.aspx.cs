using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCicek
{
    public partial class SepetLogin : System.Web.UI.Page
    {
        WebCicekEntities ent = new WebCicekEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["kullanici"]!=null)
                {
                    Response.Redirect("SepetAlici.aspx");
                }
                
            }
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            if (KullaniciKontrol(txtEmail.Text,txtSifre.Text))
            {
                Session["id"] = KullaniciID(txtEmail.Text, txtSifre.Text);
                Session["kullanici"] = KullaniciAdGetir(txtEmail.Text, txtSifre.Text);
                Response.Redirect("SepetAlici.aspx");

            }
            else
            {            

                lbMesaj.Text = "Yanlış Kullanıcı Adı veya Şifre Girişi!";

            }
        }
        private int KullaniciID(string email, string sifre)
        {
            int id = 0;
            var user = (from usr in ent.Kullanicilar
                        where usr.email == email && usr.kullanicisifre == sifre
                        select new { usr.kullaniciID }).ToList();
            id = user[0].kullaniciID;
            return id;



        }

        private bool KullaniciKontrol(string email, string sifre)
        {
            bool sonuc = false;
            var user = (from usr in ent.Kullanicilar
                        where usr.email == email && usr.kullanicisifre == sifre
                        select usr).ToList();
            if (user.Count==0)
            {
                sonuc = false;
            }
            else
            {
                sonuc = true;
                Session["email"] = user[0].email;
            }

            return sonuc;

        }
        private string KullaniciAdGetir(string email, string sifre)
        {
            string name = "";
            var user = (from usr in ent.Kullanicilar
                        where usr.email == email && usr.kullanicisifre == sifre
                        select new { usr.adi, usr.soyadi }).ToList();

            if (user.Count == 0)
            {
                name = "";

            }
            else
            {
                name = user[0].adi + " " + user[0].soyadi;
            }

            return name;

        }
    }
}