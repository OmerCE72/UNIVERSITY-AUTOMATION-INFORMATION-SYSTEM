<%@ Page Title="" Language="C#" MasterPageFile="~/ProgramSorumlusu.Master" AutoEventWireup="true" CodeBehind="DersProgramıEkle.aspx.cs" Inherits="ÖğrenciİşleriOtomasyonu.DersProgramıEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-body">
        <form runat="server">
            <div class="row">
                <div>
                    <label for="firstName" class="form-label">Ders</label>
                    <asp:TextBox class="form-control" type="text" ID="Ders" runat="server" required />
                </div>

                <div>
                    <label for="firstName" class="form-label">Tarih</label>
                    <asp:TextBox class="form-control" type="date" ID="Tarih" runat="server" required />
                </div>
                 <div class="mb-3 col-md-6">
                    <label for="organization" class="form-label">Fakültesi</label>
                    <asp:DropDownList CssClass="form-control" runat="server" ID="Fakülte" required=""></asp:DropDownList>
                </div>
                <div class="mb-3 col-md-6">
                    <label for="organization" class="form-label">Bölümü</label>
                    <asp:DropDownList CssClass="form-control" runat="server" ID="Bölüm" required=""></asp:DropDownList>
                </div>
                <br />
                <br />
                <br />
                <br />
                <div>
                    <asp:Button ID="Ekle" Text="Ekle" Width="100%" CssClass="btn btn-dark" runat="server" OnClick="Ekle_Click" />
                </div>
            </div>
        </form>
    </div>
</asp:Content>
