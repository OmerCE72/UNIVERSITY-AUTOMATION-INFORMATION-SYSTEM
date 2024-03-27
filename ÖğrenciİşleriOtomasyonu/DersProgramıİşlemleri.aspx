<%@ Page Title="" Language="C#" MasterPageFile="~/ProgramSorumlusu.Master" AutoEventWireup="true" CodeBehind="DersProgramıİşlemleri.aspx.cs" Inherits="ÖğrenciİşleriOtomasyonu.DersProgramıİşlemleri" %>
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
                    <th>SİL</th>
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
                            <td>
                                <a class="btn btn-danger" href="DersProgramıİşlemleri.aspx?ID=<%#Eval("ID")%>&islem=sil">Sil</a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
