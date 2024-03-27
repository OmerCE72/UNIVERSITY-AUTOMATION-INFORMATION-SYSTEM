<%@ Page Title="" Language="C#" MasterPageFile="~/Akademisyen.Master" AutoEventWireup="true" CodeBehind="ProfilAkademisyen.aspx.cs" Inherits="ÖğrenciİşleriOtomasyonu.ProfilAkademisyen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-body">
        <form runat="server">
            <div class="row">
                <div class="mb-3 col-md-6">
                    <label for="firstName" class="form-label">Ad Soyad</label>
                    <asp:TextBox class="form-control" type="text" ID="AdSoyad" runat="server" required />
                </div>
                <div class="mb-3 col-md-6">
                    <label for="lastName" class="form-label">Tc</label>
                    <asp:TextBox class="form-control" type="text" ID="TC" MaxLength="11" runat="server" required />
                </div>
                <div class="mb-3 col-md-6">
                    <label for="lastName" class="form-label">Telefon Numarası</label>
                    <asp:TextBox class="form-control" type="text" ID="TelefonNumarasi" MaxLength="15" runat="server" required />
                </div>
                <div class="mb-3 col-md-6">
                    <label for="email" class="form-label">E-mail</label>
                    <asp:TextBox class="form-control" type="email" ID="Email" ReadOnly="true" runat="server" required />
                </div>
                <div class="mb-3 col-md-6">
                    <label for="organization" class="form-label">Fakültesi</label>
                    <asp:TextBox class="form-control" type="text" ID="Fakültesi" ReadOnly="true" runat="server" required />
                </div>
                <div class="mb-3 col-md-6">
                    <label for="organization" class="form-label">Bölümü</label>
                    <asp:TextBox class="form-control" type="text" ID="Bölümü" ReadOnly="true" runat="server" required />
                </div>
                <div class="mb-3 col-md-6">
                    <label for="organization" class="form-label">Şifre</label>
                    <asp:TextBox class="form-control" type="Password" ID="Şifre" runat="server" required />
                </div>
                <asp:Button ID="Güncelle" Text="Bilgilerimi Güncelle" CssClass="btn btn-success" runat="server" OnClick="Güncelle_Click" />
            </div>
        </form>
    </div>
</asp:Content>
