using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class FakülteBölümİşlemleri : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        string id = "";
        string islem = "";
        private void tablolistele()
        {
            fakülteBölüm.DataSource = db.tblFakülteBölüm.ToList();
            fakülteBölüm.DataBind();
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
                    var x = db.tblFakülteBölüm.Where(w => w.ID == bul).FirstOrDefault();
                    db.tblFakülteBölüm.Remove(x);
                    db.SaveChanges();
                    Response.Redirect("FakülteBölümİşlemleri.aspx");
                }
            }
        }
    }
}