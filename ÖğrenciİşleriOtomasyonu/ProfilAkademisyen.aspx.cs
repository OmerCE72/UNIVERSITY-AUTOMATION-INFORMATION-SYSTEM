using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class ProfilAkademisyen : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        string id = "";
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
                    if (Session["akademisyenid"] != null)
                    {
                        ViewState["akademisyenid"] = Session["akademisyenid"].ToString();
                        id = Session["akademisyenid"].ToString();
                        int akademisyenid = Convert.ToInt32(id);
                        var x = db.tblAkademisyen.Where(w => w.ID == akademisyenid).FirstOrDefault();
                        AdSoyad.Text = x.AdSoyad;
                        TC.Text = x.TC;
                        TelefonNumarasi.Text = x.TelefonNumarasi;
                        Email.Text = x.Email;
                        Fakültesi.Text = x.Fakültesi;
                        Bölümü.Text = x.Bölümü;
                        Şifre.Text = x.Şifre;
                    }
                }
                else
                {
                    if (ViewState["akademisyenid"] != null)
                    {
                        id = ViewState["akademisyenid"].ToString();
                    }
                }
            }
        }
        protected void Güncelle_Click(object sender, EventArgs e)
        {
            int akademisyenid = Convert.ToInt32(id);
            var x = db.tblAkademisyen.Where(w => w.ID == akademisyenid).FirstOrDefault();
            x.AdSoyad = AdSoyad.Text;
            x.TC = TC.Text;
            x.TelefonNumarasi = TelefonNumarasi.Text;
            x.Email = Email.Text;
            x.Fakültesi = Fakültesi.Text;
            x.Bölümü = Bölümü.Text;
            x.Şifre = Şifre.Text;
            db.SaveChanges();

            Session["akademisyenadsoyad"] = x.AdSoyad;
            Response.Write("<script LANGUAGE='JavaScript' >alert('Bilgileriniz güncellenmiştir.')</script>");
        }

    }
}