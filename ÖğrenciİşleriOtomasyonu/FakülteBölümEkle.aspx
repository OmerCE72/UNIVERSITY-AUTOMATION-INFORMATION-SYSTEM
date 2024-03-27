<%@ Page Title="" Language="C#" MasterPageFile="~/ProgramSorumlusu.Master" AutoEventWireup="true" CodeBehind="FakülteBölümEkle.aspx.cs" Inherits="ÖğrenciİşleriOtomasyonu.FakülteBölümEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-body">
        <form runat="server">
            <div class="row">
                <div>
                    <label for="firstName" class="form-label">Fakülte</label>
                    <asp:TextBox class="form-control" type="text" ID="Fakülte" runat="server" required />
                </div>
                <div>
                    <label for="lastName" class="form-label">Bölüm</label>
                    <asp:TextBox class="form-control" type="text" ID="Bölüm" runat="server" required />
                </div>
                <br /><br /><br /><br />
                <div>
                    <asp:Button ID="Ekle" Text="Ekle" Width="100%" CssClass="btn btn-dark" runat="server" OnClick="Ekle_Click" />
                </div>
            </div>
        </form>
    </div>
</asp:Content>
