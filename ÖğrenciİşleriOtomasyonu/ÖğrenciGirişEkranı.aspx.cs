using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class ÖğrenciGirişEkranı : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["öğrenciadsoyad"] == null)
            {
                Response.Redirect("GirişSayfası.aspx");
            }
        }
    }
}