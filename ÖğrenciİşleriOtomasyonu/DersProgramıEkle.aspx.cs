using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class DersProgramıEkle : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        private void FakülteCek()
        {
            var fakülte = db.tblFakülteBölüm.ToList();
            Fakülte.DataSource = fakülte;
            Fakülte.DataTextField = "Fakülte";
            Fakülte.DataValueField = "Fakülte";
            Fakülte.DataBind();
        }
        private void BölümCek()
        {
            var bölüm = db.tblFakülteBölüm.ToList();
            Bölüm.DataSource = bölüm;
            Bölüm.DataTextField = "Bölüm";
            Bölüm.DataValueField = "Bölüm";
            Bölüm.DataBind();
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
            Models.tblDersProgramı t = new Models.tblDersProgramı();
            t.Ders = Ders.Text;
            t.Tarih = Tarih.Text;
            t.Fakülte = Fakülte.Text;
            t.Bölüm = Bölüm.Text;
            db.tblDersProgramı.Add(t);
            db.SaveChanges();
            Response.Redirect("DersProgramıİşlemleri.aspx");
        }
    }
}