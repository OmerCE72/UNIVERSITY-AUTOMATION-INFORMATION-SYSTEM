using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class FakülteBölümEkle : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["programsorumlusuemail"] == null)
            {
                Response.Redirect("GirişSayfası.aspx");
            }
        }

        protected void Ekle_Click(object sender, EventArgs e)
        {
            Models.tblFakülteBölüm t = new Models.tblFakülteBölüm();
            t.Fakülte = Fakülte.Text;
            t.Bölüm = Bölüm.Text;
            db.tblFakülteBölüm.Add(t);
            db.SaveChanges();
            Response.Redirect("FakülteBölümİşlemleri.aspx");
        }
    }
}