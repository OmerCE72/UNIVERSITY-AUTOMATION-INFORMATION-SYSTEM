using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class AkademisyenGüncelle : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        string id = "";
        private void FakülteCek()
        {
            var fakülte = db.tblFakülteBölüm.ToList();
            Fakültesi.DataSource = fakülte;
            Fakültesi.DataTextField = "Fakülte";
            Fakültesi.DataValueField = "Fakülte";
            Fakültesi.DataBind();
        }
        private void BölümCek()
        {
            var bölüm = db.tblFakülteBölüm.ToList();
            Bölümü.DataSource = bölüm;
            Bölümü.DataTextField = "Bölüm";
            Bölümü.DataValueField = "Bölüm";
            Bölümü.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["programsorumlusuemail"] == null)
            {
                Response.Redirect("GirişSayfası.aspx");
            }
            else
            {
                id = Request.QueryString["id"];
                if (Page.IsPostBack == false)
                {
                    FakülteCek();
                    BölümCek();
                    int akademisyenid = Convert.ToInt32(id);
                    var x = db.tblAkademisyen.Where(w => w.ID == akademisyenid).FirstOrDefault();
                    AdSoyad.Text = x.AdSoyad;
                    TC.Text = x.TC;
                    TelefonNumarasi.Text = x.TelefonNumarasi;
                    Email.Text = x.Email;
                    Fakültesi.Text = x.Fakültesi;
                    Bölümü.Text = x.Bölümü;
                    Şifre.Text = x.Şifre;
                }
            }
        }

        protected void Güncelle_Click(object sender, EventArgs e)
        {
            int akademisyenid = Convert.ToInt32(id);
            var x = db.tblAkademisyen.Where(w => w.ID == akademisyenid).FirstOrDefault();
            x.AdSoyad = AdSoyad.Text;
            x.TC = TC.Text;
            x.TelefonNumarasi = TelefonNumarasi.Text;
            x.Email = Email.Text;
            x.Fakültesi = Fakültesi.Text;
            x.Bölümü = Bölümü.Text;
            x.Şifre = Şifre.Text;
            db.SaveChanges();
            Response.Redirect("Akademisyenİşlemleri.aspx");
        }
    }
}