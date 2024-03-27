<%@ Page Title="" Language="C#" MasterPageFile="~/ProgramSorumlusu.Master" AutoEventWireup="true" CodeBehind="FakülteBölümGüncelle.aspx.cs" Inherits="ÖğrenciİşleriOtomasyonu.FakülteBölümGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="card-body">
        <form runat="server">
            <div class="row">
                <div class="mb-3 col-md-6">
                    <label for="firstName" class="form-label">Fakülte</label>
                    <asp:TextBox class="form-control" type="text" ID="Fakülte" runat="server" required />
                </div>
                <div class="mb-3 col-md-6">
                    <label for="lastName" class="form-label">Bölüm</label>
                    <asp:TextBox class="form-control" type="text" ID="Bölüm" runat="server" required />
                </div>
                <asp:Button ID="Güncelle" Text="Güncelle" CssClass="btn btn-info" runat="server" OnClick="Güncelle_Click"/>
            </div>
        </form>
    </div>
</asp:Content>
