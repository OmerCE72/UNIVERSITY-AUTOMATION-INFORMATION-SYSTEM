using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class ÖğrenciDuyuru : System.Web.UI.Page
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