using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class Duyuruİşlemleri : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        string id = "";
        string islem = "";
        private void tablolistele()
        {
            duyuru.DataSource = db.tblDuyuru.ToList();
            duyuru.DataBind();
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
                    var x = db.tblDuyuru.Where(w => w.ID == bul).FirstOrDefault();
                    db.tblDuyuru.Remove(x);
                    db.SaveChanges();
                    Response.Redirect("Duyuruİşlemleri.aspx");
                }
            }
        }
    }
}