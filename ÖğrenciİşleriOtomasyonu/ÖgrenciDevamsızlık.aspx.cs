using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class ÖgrenciDevamsızlık : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        private void tablolistele()
        {
            string adsoyad = Session["öğrenciadsoyad"].ToString();

            var ögrencinotları = db.tblOgrenci.Where(dp => dp.AdSoyad == adsoyad).ToList();
            devamsizlik.DataSource = ögrencinotları;
            devamsizlik.DataBind();
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