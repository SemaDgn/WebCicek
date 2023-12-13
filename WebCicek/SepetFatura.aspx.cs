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
    public partial class SepetFatura : System.Web.UI.Page
    {
        WebCicekEntities ent = new WebCicekEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtAdSoyad.Text = Session["kullanici"].ToString();

            }
            if (Session["kullanici"] != null)
            {
                Label name = (Label)this.Master.FindControl("lblLogin");
                name.Text = Session["kullanici"].ToString();
                ImageButton cikis = (ImageButton)this.Master.FindControl("imgCikis");
                cikis.Visible = true;

            }
        }


        private bool faturaEkle()
        {
            bool sonuc = false;
            Fatura ft = new Fatura();
            if (rbKisi.Checked)
            {
                ft.faturabilgisi = txtAdSoyad.Text;
            }
            else
            {
                ft.faturabilgisi = txtSirketAdi.Text;
            }
            ft.gönderenisim = txtAdSoyad.Text;
            ft.gönderentelefon = txttelefon.Text;
            ft.gönderenadres = txtAdres.Text;
            ent.Fatura.Add(ft);
            ent.SaveChanges();
            sonuc = true;
            return sonuc;

        }

        private bool SiparisDetayekle()
        {
            bool sonuc = false;
            DataTable dt = (DataTable)Session["sepet"];
            foreach (DataRow dr in dt.Rows)
            {
                SiparisDetay spdty = new SiparisDetay();
                spdty.urunid = Convert.ToInt32(dr["urunID"]);
                spdty.gonderilecekid = Convert.ToInt32(Session["gonderilecekid"]);
                spdty.gamacid = Convert.ToInt32(Session["gonderimamaci"]);
                spdty.aliciad = Session["aliciadi"].ToString();
                spdty.alicisoyad = Session["alicisoyadi"].ToString();
                spdty.alicitelefon = Session["alicitelefon"].ToString();
                spdty.aliciadres = Session["aliciadres"].ToString();
                spdty.kartmesaji = Session["kartMesaj"].ToString();
                spdty.kartisim = Session["kartalici"].ToString();
                spdty.adet = Convert.ToInt32(dr["adet"]);
                spdty.fiyat = Convert.ToDecimal(dr["fiyat"]);
                spdty.birim = "TL";
                ent.SiparisDetay.Add(spdty);
                ent.SaveChanges();

            }
           
            sonuc = true;
            return sonuc;

        }

        private bool SiparisEkle(int kid, decimal tutar, string odemesekli)
        {
            bool sonuc = false;
            Siparisler sp = new Siparisler();
            sp.kullaniciID = Convert.ToInt32(Session["id"]);
            sp.tutar = tutar;
            sp.odemesekli = odemesekli;
            sp.tarih = DateTime.Now.ToString();
            sp.siparisdurumu = "Sipariş Alındı";
            ent.Siparisler.Add(sp);
            ent.SaveChanges();
            sonuc = true;
            return sonuc;


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

        protected void rbSirket_CheckedChanged(object sender, EventArgs e)
        {
            rbKisi.Checked = false;
            if (rbSirket.Checked)
            {
                lblSirket.Visible = true;
                txtSirketAdi.Visible = true;
            }

        }

        protected void btnSiparis_Click(object sender, EventArgs e)
        {
            if (SiparisEkle(Convert.ToInt32(Session["id"]), ToplamTutarBul(), ddlOdemeSecenek.SelectedItem.ToString()))
            {
                if (SiparisDetayekle())
                {
                    if (faturaEkle())
                    {

                        DataTable dt = (DataTable)Session["Sepet"];
                        MailGonder(dt); 
                        Response.Redirect("Bilgilendirme.aspx");
                        
                    }
                }

            }
        }
        private void MailGonder(DataTable dt)
        {
            string companyName = Session["kullanici"].ToString();
            StringBuilder sb = new StringBuilder();
            sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
            sb.Append("<tr><td align='center' style='background-color: #18B5F0' colspan = '2'><b>Fatura Bilgisi</b></td></tr>");
            sb.Append("<tr><td colspan = '2'></td></tr>");
            sb.Append("</td><td><b>Tarih: </b>");
            sb.Append(DateTime.Now);
            sb.Append(" </td></tr>");
            sb.Append("<tr><td colspan = '2'><b>Ad-Soyad :</b> ");
            sb.Append(companyName);
            sb.Append("</td></tr>");
            sb.Append("</table>");
            sb.Append("<br />");
            sb.Append("<table border = '1'>");
            sb.Append("<tr>");

            foreach (DataColumn column in dt.Columns)
            {
                sb.Append("<th style = 'background-color: #D20B0C;color:#ffffff'>");
                sb.Append(column.ColumnName);
                sb.Append("</th>");
            }
            sb.Append("</tr>");

            foreach (DataRow row in dt.Rows)
            {
                sb.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    sb.Append("<td>");
                    sb.Append(row[column]);
                    sb.Append("</td>");
                }
                sb.Append("</tr>");
            }

            sb.Append("</table>");
            StringReader sr = new StringReader(sb.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            using (MemoryStream memoryStream = new MemoryStream())
            {

                PdfWriter writer = PdfWriter.GetInstance(pdfDoc, memoryStream);
                pdfDoc.Open();
                htmlparser.Parse(sr);
                pdfDoc.Close();
                byte[] bytes = memoryStream.ToArray();
                memoryStream.Close();

                string email = Session["email"].ToString();
                MailMessage mm = new MailMessage("semasanli34@gmail.com", email);
                mm.Subject = "e-cicek Sipariş Bilgisi PDF";
                mm.Body = "e-cicek Sipariş PDF Eki";
                mm.Attachments.Add(new Attachment(new MemoryStream(bytes), "e-cicek.pdf"));
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "<smtp host>(smtp.google.com)";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential();
                NetworkCred.UserName = "<semasanli34@gmail.com >";
                NetworkCred.Password = "<1013515001>";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);

            }


        }

        protected void btnDuzenle_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;

        }

        protected void rbKisi_CheckedChanged(object sender, EventArgs e)
        {
            rbSirket.Checked = false;
            if (rbKisi.Checked)
            {
                lblSirket.Visible = false;
                txtSirketAdi.Visible = false;
            }

        }


    }
}