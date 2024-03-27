using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class DuyuruGüncelle : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        string id = "";
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
                    int duyuruid = Convert.ToInt32(id);
                    var x = db.tblDuyuru.Where(w => w.ID == duyuruid).FirstOrDefault();
                    DuyuruAdi.Text = x.DuyuruAdi;
                    Duyuru.Text = x.Duyuru;
                    DuyuruTarihi.Text = x.DuyuruTarihi;
                }
            }
        }

        protected void Güncelle_Click(object sender, EventArgs e)
        {
            //Duyuru Güncelleme kodu
            int duyuruid = Convert.ToInt32(id);
            var x = db.tblDuyuru.Where(w => w.ID == duyuruid).FirstOrDefault();
            x.DuyuruAdi = DuyuruAdi.Text;
            x.Duyuru = Duyuru.Text;
            x.DuyuruTarihi = DuyuruTarihi.Text;
            db.SaveChanges();
            Response.Redirect("Duyuruİşlemleri.aspx");
        }
    }
}