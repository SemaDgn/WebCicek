using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebCicek
{
    public partial class Sepet : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["sepet"] != null)
                {
                    DataTable dt = (DataTable)Session["sepet"];
                    SepetGoster(dt);
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }
        }
        private void SepetGoster(DataTable dt)
        {
            gvSepet.Columns[0].FooterText = "Toplam ";
            gvSepet.Columns[2].FooterText = ToplamAdetBul().ToString();
            //gvSepet.Columns[2].FooterStyle.HorizontalAlign = HorizontalAlign.Right;
            gvSepet.Columns[3].FooterText = String.Format("{0:#,##0.00}", ToplamTutarBul());
            gvSepet.DataSource = dt;
            gvSepet.DataBind();

            Label sepet = (Label)this.Master.FindControl("lblSepetAdet");
            sepet.Text = dt.Rows.Count.ToString();        

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

        protected void gvSepet_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = (DataTable)Session["sepet"];
            dt.Rows.RemoveAt(e.RowIndex);
            gvSepet.DataSource = dt;
            gvSepet.DataBind();

            Session["sepet"] = dt;
            SepetGoster(dt);
        }

        protected void btnDevam_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnBosalt_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)Session["sepet"];
            dt.Clear();
            Session["sepet"] = dt;
            Response.Redirect("Default.aspx");
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            if (Session["kullanici"]==null)
            {
                Response.Redirect("SepetLogin.aspx");
                
            }
            else
            {
                Response.Redirect("SepetAlici.aspx");
            }
        }
    }
}