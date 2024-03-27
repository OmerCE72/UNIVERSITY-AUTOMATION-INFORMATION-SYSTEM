<%@ Page Title="" Language="C#" MasterPageFile="~/Öğrenci.Master" AutoEventWireup="true" CodeBehind="ÖgrenciDevamsızlık.aspx.cs" Inherits="ÖğrenciİşleriOtomasyonu.ÖgrenciDevamsızlık" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <h5 class="card-header">Devamsızlık Listesi</h5>
        <div class="table-responsive text-nowrap">
            <table class="table">
                <thead>
                   <tr>
                    <th>ID</th>
                    <th>ÖGRENCİ AD SOYAD</th>
                    <th>FAKÜLTESİ</th>
                    <th>BÖLÜMÜ</th>
                    <th>TOPLAM DEVAMSIZLIĞI</th>
                </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                     <asp:Repeater ID="devamsizlik" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("ID")%></td>
                            <td><%#Eval("AdSoyad")%></td>
                            <td><%#Eval("Fakültesi")%></td>
                            <td><%#Eval("Bölümü")%></td>
                            <td><%#Eval("Devamszilik")%></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
