using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class AkademisyenEkle : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();

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
                if (!IsPostBack)
                {
                    FakülteCek();
                    BölümCek();
                }
            }
        }
        protected void Ekle_Click(object sender, EventArgs e)
        {
            Models.tblAkademisyen t = new Models.tblAkademisyen();
            t.AdSoyad = AdSoyad.Text;
            t.TC = TC.Text;
            t.TelefonNumarasi = TelefonNumarasi.Text;
            t.Email = Email.Text;
            t.Fakültesi = Fakültesi.Text;
            t.Bölümü = Bölümü.Text;
            t.Şifre = Şifre.Text;
            db.tblAkademisyen.Add(t);
            db.SaveChanges();
            Response.Redirect("Akademisyenİşlemleri.aspx");
        }
    }
}