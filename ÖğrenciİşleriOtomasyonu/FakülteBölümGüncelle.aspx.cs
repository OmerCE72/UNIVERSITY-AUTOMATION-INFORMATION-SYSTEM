using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class FakülteBölümGüncelle : System.Web.UI.Page
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
                    int fakültebölümid = Convert.ToInt32(id);
                    var x = db.tblFakülteBölüm.Where(w => w.ID == fakültebölümid).FirstOrDefault();
                    Fakülte.Text = x.Fakülte;
                    Bölüm.Text = x.Bölüm;
                }
            }
        }

        protected void Güncelle_Click(object sender, EventArgs e)
        {
            int fakültebölümid = Convert.ToInt32(id);
            var x = db.tblFakülteBölüm.Where(w => w.ID == fakültebölümid).FirstOrDefault();
            x.Fakülte = Fakülte.Text;
            x.Bölüm = Bölüm.Text;
            db.SaveChanges();
            Response.Redirect("FakülteBölümİşlemleri.aspx");
        }
    }
}