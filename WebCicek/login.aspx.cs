using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCicek
{
    public partial class login : System.Web.UI.Page
    {
        WebCicekEntities ent = new WebCicekEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private string KullaniciKontrol(string email, string sifre)
        {
            string name = "";
            var user = (from usr in ent.Kullanicilar
                        where usr.email == email && usr.kullanicisifre == sifre
                        select new { usr.adi, usr.soyadi, usr.kullaniciID }).ToList();

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
        private int KullaniciID(string email, string sifre)
        {
            int id = 0;
            var user = (from usr in ent.Kullanicilar
                        where usr.email == email && usr.kullanicisifre == sifre
                        select new { usr.kullaniciID }).ToList();
            id = user[0].kullaniciID;
            return id;



        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            if (txtEMail.Text != "" && txtSifre.Text != "")
            {
                Session["kullanici"] = KullaniciKontrol(txtEMail.Text, txtSifre.Text);
                Session["id"] = KullaniciID(txtEMail.Text, txtSifre.Text);
                if (Session["kullanici"] != "")
                {
                    Response.Redirect("Default.aspx");
                }
                else
                {

                    lblMesaj.Text = "Yanlış Kullanıcı Adı veya Şifre Girişi!";

                }
            }
            else
            {
                lblMesaj.Text = "E-Mail ve Şifre alanlarının girilmesi zorunludur.";
            }
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            if (txtYeniAd.Text != "" && txtYeniSoyad.Text != "" && txtYeniEmail.Text != "" && txtYeniSifre.Text != "" && txtTekrarSifre.Text != "")
            {
                if (txtYeniSifre.Text == txtTekrarSifre.Text)
                {
                    Kullanicilar user = new Kullanicilar();
                    user.adi = txtYeniAd.Text;
                    user.soyadi = txtYeniSoyad.Text;
                    user.email = txtYeniEmail.Text;

                    user.kullanicisifre = txtYeniSifre.Text;
                    ent.Kullanicilar.Add(user);
                    ent.SaveChanges();
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    lblYeniMesaj.Text = "Şifre alanları uyuşmuyor.";
                }

            }
            else
            {
                lblYeniMesaj.Text = "Yukarıdaki Alanlar boş geçilemez.";
            }


        }
    }
}