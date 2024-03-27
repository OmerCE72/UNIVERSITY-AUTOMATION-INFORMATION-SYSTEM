<%@ Page Title="" Language="C#" MasterPageFile="~/Öğrenci.Master" AutoEventWireup="true" CodeBehind="ÖğrenciNotlar.aspx.cs" Inherits="ÖğrenciİşleriOtomasyonu.ÖğrenciNotlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card">
        <h5 class="card-header">Notlar Listesi</h5>
        <div class="table-responsive text-nowrap">
            <table class="table">
                <thead>
                   <tr>
                    <th>ID</th>
                    <th>ÖGRENCİ AD SOYAD</th>
                    <th>DERS</th>
                    <th>VİZE</th>
                    <th>FİNAL</th>
                    <th>ORTALAMA</th>
                </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                     <asp:Repeater ID="notlar" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("ID")%></td>
                            <td><%#Eval("ögrAdSoyad")%></td>
                            <td><%#Eval("Ders")%></td>
                            <td><%#Eval("Vize")%></td>
                            <td><%#Eval("Final")%></td>
                            <td><%#Eval("Ortalama")%></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
