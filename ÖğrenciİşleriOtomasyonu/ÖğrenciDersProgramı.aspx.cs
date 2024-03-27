using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class ÖğrenciDersProgramı : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        private void tablolistele()
        {
            string fakulte = Session["öğrencifakülte"].ToString();
            string bolum = Session["öğrencibölüm"].ToString();

            var dersProgramlari = db.tblDersProgramı.Where(dp => dp.Fakülte == fakulte && dp.Bölüm == bolum).ToList();
            dersprogramı.DataSource = dersProgramlari;
            dersprogramı.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["öğrenciadsoyad"] == null)
            {
                Response.Redirect("GirişSayfası.aspx");
            }
            else
            {
                tablolistele();
            }
        }
    }
}