using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ÖğrenciİşleriOtomasyonu
{
    public partial class GirişSayfası : System.Web.UI.Page
    {
        Models.OgrenciIsleriOtomasyonEntities db = new Models.OgrenciIsleriOtomasyonEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void girisyap_Click(object sender, EventArgs e)
        {
            if (yetki.Text == "Öğrenci" && email.Text != "" && sifre.Text != "")
            {
                Models.tblOgrenci a = db.tblOgrenci.Where(x => x.Email == email.Text && x.Şifre == sifre.Text).SingleOrDefault();
                if (a == null)
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Bilgilerinizi kontrol ediniz.')</script>");

                }
                else if (a != null)
                {
                    Session["ögrenciid"] = a.ID;
                    Session["öğrenciadsoyad"] = a.AdSoyad;
                    Session["öğrencibölüm"] = a.Bölümü;
                    Session["öğrencifakülte"] = a.Fakültesi;
                    Response.Redirect("ÖğrenciGirişEkranı.aspx");
                }
            }
            else if (yetki.Text == "Akademisyen" && email.Text != "" && sifre.Text != "")
            {
                Models.tblAkademisyen y = db.tblAkademisyen.Where(x => x.Email == email.Text && x.Şifre == sifre.Text).SingleOrDefault();
                if (y == null)
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Bilgilerinizi kontrol ediniz.')</script>");

                }
                else if (y != null)
                {
                    Session["akademisyenadsoyad"] = y.AdSoyad;
                    Session["akademisyenid"] = y.ID;
                    Response.Redirect("ÖğrenciNotGir.aspx");
                }
            }
            else if (yetki.Text == "Program Sorumlusu" && email.Text != "" && sifre.Text != "")
            {
                Models.tblProgramSorumlusu ö = db.tblProgramSorumlusu.Where(x => x.Email == email.Text && x.Sifre == sifre.Text).SingleOrDefault();
                if (ö == null)
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Bilgilerinizi kontrol ediniz.')</script>");

                }
                else if (ö != null)
                {
                    Session["programsorumlusuemail"] = ö.Email;
                    Response.Redirect("Akademisyenİşlemleri.aspx");
                }
            }
        }
    }
}