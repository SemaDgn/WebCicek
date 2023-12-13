using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace WebCicek
{
    public partial class urunler : System.Web.UI.Page
    {
        WebCicekEntities ent = new WebCicekEntities();
        cSepet spt = new cSepet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int kno = Convert.ToInt32(Request.QueryString["kno"]);
                int altkno = Convert.ToInt32(Request.QueryString["altkno"]);
                int gonderimid = Convert.ToInt32(Request.QueryString["gid"]);
                Response.Write("kategorino:" + kno + "" + "altkno:" + altkno);
                //if (altkno == 0)
                //{
                //    var Products = (from urun in ent.Urunler
                //                    where urun.silindi == false && urun.kategorino == kno
                //                    select new { urun.id, urun.urunad, urun.birimfiyat, urun.resimyolu1, urun.resimyolu2 }).ToList();
                //    dlstCicekler.DataSource = Products;
                //    dlstCicekler.DataBind();
                //}
                //else
                //{
                //    var Products = (from urun in ent.Urunler
                //                    where urun.silindi == false && urun.kategorino == kno && urun.altkategorino == altkno
                //                    select new { urun.id, urun.urunad, urun.birimfiyat, urun.resimyolu1, urun.resimyolu2 }).ToList();
                //    dlstCicekler.DataSource = Products;
                //    dlstCicekler.DataBind();
                //}
                //if (Session["sepet"] != null)
                //{

                //    DataTable dt = (DataTable)Session["sepet"];
                //    cSepet.SepetSayi = dt.Rows.Count;
                //    //GridView gvOzet = (GridView)this.Master.FindControl("gvOzet");
                //    //gvOzet.DataSource = dt;
                //    //gvOzet.DataBind();

                //}
            }
        }
    }
}