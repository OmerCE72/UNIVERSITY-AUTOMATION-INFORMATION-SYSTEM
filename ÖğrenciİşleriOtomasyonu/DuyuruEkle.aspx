<%@ Page Title="" Language="C#" MasterPageFile="~/ProgramSorumlusu.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="ÖğrenciİşleriOtomasyonu.DuyuruEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card-body">
        <form runat="server">
            <div class="row">
                <div>
                    <label for="firstName" class="form-label">Duyuru Adı</label>
                    <asp:TextBox class="form-control" type="text" ID="DuyuruAdi" runat="server" required />
                </div>
                <div>
                    <label for="lastName" class="form-label">Duyuru</label>
                    <asp:TextBox class="form-control" type="text" ID="Duyuru" runat="server" style="height:100px;" required/>
                </div>
                  <div>
                    <label for="firstName" class="form-label">Duyuru Tarihi</label>
                    <asp:TextBox class="form-control" type="date" ID="DuyuruTarihi" runat="server" required />
                </div>
                <br /><br /><br /><br />
                <div>
                    <asp:Button ID="Ekle" Text="Ekle" Width="100%" CssClass="btn btn-dark" runat="server" OnClick="Ekle_Click"/>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
