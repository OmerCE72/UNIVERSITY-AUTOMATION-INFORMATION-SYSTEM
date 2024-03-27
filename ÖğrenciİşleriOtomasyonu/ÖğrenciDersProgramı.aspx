<%@ Page Title="" Language="C#" MasterPageFile="~/Öğrenci.Master" AutoEventWireup="true" CodeBehind="ÖğrenciDersProgramı.aspx.cs" Inherits="ÖğrenciİşleriOtomasyonu.ÖğrenciDersProgramı" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="card">
        <h5 class="card-header">Ders Programı Listesi</h5>
        <div class="table-responsive text-nowrap">
            <table class="table">
                <thead>
                   <tr>
                    <th>ID</th>
                    <th>DERS</th>
                    <th>TARİH</th>
                    <th>FAKÜLTE</th>
                    <th>BÖLÜM</th>
                </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                     <asp:Repeater ID="dersprogramı" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("ID")%></td>
                            <td><%#Eval("Ders")%></td>
                            <td><%#Eval("Tarih")%></td>
                            <td><%#Eval("Fakülte")%></td>
                            <td><%#Eval("Bölüm")%></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
