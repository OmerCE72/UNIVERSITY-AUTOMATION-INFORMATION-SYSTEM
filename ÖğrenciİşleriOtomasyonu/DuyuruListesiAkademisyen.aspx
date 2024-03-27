<%@ Page Title="" Language="C#" MasterPageFile="~/Akademisyen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesiAkademisyen.aspx.cs" Inherits="ÖğrenciİşleriOtomasyonu.DuyuruListesiAkademisyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="card">
        <h5 class="card-header">Duyuru Listesi</h5>
        <div class="table-responsive text-nowrap">
            <table class="table">
                <thead>
                   <tr>
                    <th>ID</th>
                    <th>DUYURU ADI</th>
                    <th>DUYURU</th>
                    <th>DUYURU TARİHİ</th>
                </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                     <asp:Repeater ID="duyuru" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("ID")%></td>
                            <td><%#Eval("DuyuruAdi")%></td>
                            <td><%#Eval("Duyuru")%></td>
                            <td><%#Eval("DuyuruTarihi")%></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
