using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class ÖğrenciNotlar : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        private void tablolistele()
        {
            string adsoyad = Session["öğrenciadsoyad"].ToString();

            var ögrencinotları = db.tblNotlar.Where(dp => dp.ögrAdSoyad == adsoyad).ToList();
            notlar.DataSource = ögrencinotları;
            notlar.DataBind();
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