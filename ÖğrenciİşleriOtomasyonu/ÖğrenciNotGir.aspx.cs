using ÖğrenciİşleriOtomasyonu.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class ÖğrenciNotGir : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        private void OgrenciCek()
        {
            var ogrenciler = db.tblOgrenci.ToList();
            ögrenciAdı.DataSource = ogrenciler;
            ögrenciAdı.DataTextField = "AdSoyad";
            ögrenciAdı.DataValueField = "AdSoyad";
            ögrenciAdı.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["akademisyenadsoyad"] == null)
            {
                Response.Redirect("GirişSayfası.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    OgrenciCek();
                }
            }
        }

        protected void NotGir_Click(object sender, EventArgs e)
        {

            string ögrad = ögrenciAdı.Text;
            string ders = Ders.Text;
            double vizeNotu = Convert.ToDouble(Vize.Text);
            double finalNotu = Convert.ToDouble(Final.Text);
            double ortalama = (vizeNotu * 0.4) + (finalNotu * 0.6);
            tblNotlar not = new tblNotlar()
            {
                ögrAdSoyad = ögrad,
                Ders = ders,
                Vize = vizeNotu,
                Final = finalNotu,
                Ortalama = ortalama
            };
            db.tblNotlar.Add(not);
            db.SaveChanges();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Öğrenciye Başarıyla Not Girilmiştir.')</script>");
        }
    }
}