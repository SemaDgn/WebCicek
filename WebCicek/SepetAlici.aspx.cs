using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCicek
{
    public partial class SepetAlici : System.Web.UI.Page
    {
        WebCicekEntities ent = new WebCicekEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GonderimAmaci(ddlGonderimAmaci);
                Gonderimyeri(ddlYer);


            }
            if (Session["kullanici"] != null)
            {
                Label name = (Label)this.Master.FindControl("lblLogin");
                name.Text = Session["kullanici"].ToString();
                ImageButton cikis = (ImageButton)this.Master.FindControl("imgCikis");
                cikis.Visible = true;

            }

        }
        private void GonderimAmaci(DropDownList liste)
        {

            var gonderim = (from mesaj in ent.GonderimAmaci
                            where mesaj.silindi == false 
                            select new { mesaj.gonderimid, mesaj.gonderimadi }).ToList();
            liste.DataTextField = "gonderimadi";
            liste.DataValueField = "gonderimid";
            liste.DataSource = gonderim;
            liste.DataBind();

        }
        private void Gonderimyeri(DropDownList liste)
        {
            var gonderim = (from yer in ent.GonderilecekYer
                            where yer.silindi == false
                            select new { yer.id,yer.konum }).ToList();
            liste.DataTextField = "konum";
            liste.DataValueField = "id";
            liste.DataSource = gonderim;
            liste.DataBind();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            Session["aliciadi"] = txtAliciAdi.Text;
            Session["alicisoyadi"] = txtAkiciSoyadi.Text;
            Session["alicitelefon"] = txtTelefon.Text;
            Session["aliciadres"] = txtAdres.Text;
            Session["gonderilecekid"] = ddlYer.SelectedValue;
            Session["gonderimamaci"] = ddlGonderimAmaci.SelectedValue;
            Response.Redirect("SepetKartMesaj.aspx");

        }
    }
}