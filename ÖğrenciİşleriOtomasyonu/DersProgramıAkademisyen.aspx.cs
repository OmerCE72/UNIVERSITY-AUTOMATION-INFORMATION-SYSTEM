using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class DersProgramıAkademisyen : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        string id = "";
        string islem = "";
        private void tablolistele()
        {
            dersprogramı.DataSource = db.tblDersProgramı.ToList();
            dersprogramı.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["akademisyenadsoyad"] == null)
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