using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class Öğrenciİşlemleri : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        string id = "";
        string islem = "";
        private void tablolistele()
        {
            öğrenci.DataSource = db.tblOgrenci.ToList();
            öğrenci.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["programsorumlusuemail"] == null)
            {
                Response.Redirect("GirişSayfası.aspx");
            }
            else
            {
                tablolistele();
                id = Request.QueryString["ID"];
                islem = Request.QueryString["islem"];
                if (islem == "sil")
                {
                    int bul = Convert.ToInt32(id);
                    var x = db.tblOgrenci.Where(w => w.ID == bul).FirstOrDefault();
                    db.tblOgrenci.Remove(x);
                    db.SaveChanges();
                    Response.Redirect("Öğrenciİşlemleri.aspx");
                }
            }
        }
    }
}