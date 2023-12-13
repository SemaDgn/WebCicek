using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace WebCicek
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        WebCicekEntities ent = new WebCicekEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            lblSepetAdet.Text = cSepet.SepetSayi.ToString();
            if (!IsPostBack)
            {
                var categories = (from kategori in ent.Kategoriler
                                  where kategori.silindi == false
                                  select new { kategori.id, kategori.kategoriad }).ToList();
                foreach (var category in categories)
                {
                    MenuItem mitm = new MenuItem();
                    mitm.Text = category.kategoriad;
                    mitm.Value = category.id.ToString();
                    mnuKategoriler.Items.Add(mitm);

                    var subcategories = (from altkategori in ent.AltKategoriler
                                         where altkategori.silindi == false && altkategori.kategorino == category.id
                                         select new { altkategori.id, altkategori.altkategoriad, altkategori.kategorino }).ToList();
                    foreach (var subcategory in subcategories)
                    {
                        MenuItem citm = new MenuItem();
                        citm.Text = subcategory.altkategoriad;
                        citm.Value = subcategory.id.ToString();
                        mitm.ChildItems.Add(citm);
                    }
                    var gonderim = (from mesaj in ent.GonderimAmaci
                                    where mesaj.silindi == false && category.id == 4
                                    select new { mesaj.gonderimid, mesaj.gonderimadi }).ToList();
                    foreach (var subcategory in gonderim)
                    {
                        MenuItem citm = new MenuItem();
                        citm.Text = subcategory.gonderimadi;
                        citm.Value = subcategory.gonderimid.ToString();
                        mitm.ChildItems.Add(citm);
                    }
                }
            }

        }

        protected void mnuKategoriler_MenuItemClick(object sender, MenuEventArgs e)
        {
            string[] Secimler = e.Item.ValuePath.Split('/');
            if (e.Item.Depth == 0)
            {
                Response.Redirect("urunler.aspx?kno=" + Secimler[0] + "&altkno=0");
            }
            else
            {
                Response.Redirect("urunler.aspx?kno=" + Secimler[0] + "&altkno=" + Secimler[1]);
            }
        }

        protected void imgCikis_Click(object sender, ImageClickEventArgs e)
        {
            Session["kullanici"] = null;
            Session["id"] = null;
            lblLogin.Text = "Login";
            imgCikis.Visible = false;
            DataTable dt = (DataTable)Session["sepet"];
            if (dt.Rows.Count != 0)
            {
                dt.Clear();
            }
           
            Session["sepet"] = dt;
            cSepet.SepetSayi = dt.Rows.Count;
            lblSepetAdet.Text = cSepet.SepetSayi.ToString();
            Response.Redirect("Default.aspx");
        }
    }
}