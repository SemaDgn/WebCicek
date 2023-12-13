using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Net;
using System.Net.Mail;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

namespace WebCicek
{
    public partial class Bilgilendirme : System.Web.UI.Page
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

        protected void btnGeri_Click(object sender, EventArgs e)
        {

            Response.Redirect("Default.aspx");
        }
       
    }
}