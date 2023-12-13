using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCicek
{
    public partial class SepetKartMesaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] != null)
            {
                Label name = (Label)this.Master.FindControl("lblLogin");
                name.Text = Session["kullanici"].ToString();
                ImageButton cikis = (ImageButton)this.Master.FindControl("imgCikis");
                cikis.Visible = true;

            }
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            Session["kartMesaj"] = txtMesaj.Text;
            Session["kartalici"] = txtName.Text;
            Response.Redirect("SepetFatura.aspx");
        }
    }
}