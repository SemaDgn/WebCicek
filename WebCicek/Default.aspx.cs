using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace WebCicek
{
    public partial class Default : System.Web.UI.Page
    {
        WebCicekEntities ent = new WebCicekEntities();
        cSepet spt = new cSepet();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UrunleriGetir();
                if (Session["sepet"] != null)
                {
                    DataTable dt = (DataTable)Session["sepet"];
                    cSepet.SepetSayi = dt.Rows.Count;
                }

              
            }
            if (Session["kullanici"] != null)
            {
                Label name = (Label)this.Master.FindControl("lblLogin");
                name.Text = Session["kullanici"].ToString();
                ImageButton cikis = (ImageButton)this.Master.FindControl("imgCikis");
                cikis.Visible = true;

            }
        }
        private void UrunleriGetir()
        {
            var Products = (from urun in ent.Urunler
                            where urun.silindi == false
                            select new { urun.id, urun.urunad, urun.fiyat, urun.resimyolu1, urun.resimyolu2 }).Take(40).ToList();
            dlstCicekler.DataSource = Products;
            dlstCicekler.DataBind();
        }


        protected void dlstCicekler_ItemCommand(object source, DataListCommandEventArgs e)
        {
            dlstCicekler.SelectedIndex = e.Item.ItemIndex;
            if (e.CommandName == "sepet")
            {
                if (Session["sepet"] == null)
                {
                    Session["sepet"] = spt.YeniSepet();

                }
                DataTable dt = (DataTable)Session["sepet"];
                DataRow dr;
                dr = dt.NewRow();
                dr["urunID"] = Convert.ToInt32(dlstCicekler.SelectedValue);
                Label UrunAdi = (Label)e.Item.FindControl("lblUrunAd");
                dr["urunAd"] = UrunAdi.Text;
                Label Fiyat = (Label)e.Item.FindControl("lblUrunFiyat");
                dr["fiyat"] = Convert.ToDecimal(Fiyat.Text);
                TextBox Adet = (TextBox)e.Item.FindControl("txtAdet");
                dr["adet"] = Convert.ToInt32(Adet.Text);
                dr["tutar"] = Convert.ToInt32(Adet.Text) * Convert.ToDecimal(Fiyat.Text);
                dt.Rows.Add(dr);
                Session["sepet"] = dt;
                cSepet.SepetSayi = dt.Rows.Count;
                Label SptAdet = (Label)this.Master.FindControl("lblSepetAdet");
                SptAdet.Text = cSepet.SepetSayi.ToString();

            }

        }
        private int ToplamAdetBul()
        {
            int ToplamAdet = 0;
            DataTable dt = (DataTable)Session["sepet"];
            foreach (DataRow dr in dt.Rows)
            {
                ToplamAdet += Convert.ToInt32(dr["adet"]);
            }
            return ToplamAdet;
        }
        private decimal ToplamTutarBul()
        {
            decimal ToplamTutar = 0;
            DataTable dt = (DataTable)Session["sepet"];
            foreach (DataRow dr in dt.Rows)
            {
                ToplamTutar += Convert.ToDecimal(dr["tutar"]);
            }
            return ToplamTutar;
        }



    }
}