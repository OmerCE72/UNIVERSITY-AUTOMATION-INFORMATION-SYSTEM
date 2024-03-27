using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class ÖğrenciProfil : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["öğrenciadsoyad"] ==null)
            {
                Response.Redirect("GirişSayfası.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    if (Session["ögrenciid"] != null)
                    {
                        ViewState["ögrenciid"] = Session["ögrenciid"].ToString();
                        id = Session["ögrenciid"].ToString();
                        int ögrenciid = Convert.ToInt32(id);
                        var x = db.tblOgrenci.Where(w => w.ID == ögrenciid).FirstOrDefault();
                        AdSoyad.Text = x.AdSoyad;
                        TC.Text = x.TC;
                        TelefonNumarasi.Text = x.TelefonNumarasi;
                        Email.Text = x.Email;
                        Fakültesi.Text = x.Fakültesi;
                        Bölümü.Text = x.Bölümü;
                        Devamszilik.Text = x.Devamszilik;
                        Şifre.Text = x.Şifre;
                    }
                }
                else
                {
                    if (ViewState["ögrenciid"] != null)
                    {
                        id = ViewState["ögrenciid"].ToString();
                    }
                }
            }
        }
        protected void Güncelle_Click(object sender, EventArgs e)
        {
            int ögrenciid = Convert.ToInt32(id);
            var x = db.tblOgrenci.Where(w => w.ID == ögrenciid).FirstOrDefault();
            x.AdSoyad = AdSoyad.Text;
            x.TC = TC.Text;
            x.TelefonNumarasi = TelefonNumarasi.Text;
            x.Email = Email.Text;
            x.Fakültesi = Fakültesi.Text;
            x.Bölümü = Bölümü.Text;
            x.Devamszilik = Devamsizlik.Text;
            x.Şifre = Şifre.Text;
            db.SaveChanges();

            Session["öğrenciadsoyad"] = x.AdSoyad;
            Response.Write("<script LANGUAGE='JavaScript' >alert('Bilgileriniz güncellenmiştir.')</script>");
        }
    }
}