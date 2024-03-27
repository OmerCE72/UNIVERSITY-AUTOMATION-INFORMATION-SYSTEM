<%@ Page Title="" Language="C#" MasterPageFile="~/ProgramSorumlusu.Master" AutoEventWireup="true" CodeBehind="FakülteBölümİşlemleri.aspx.cs" Inherits="ÖğrenciİşleriOtomasyonu.FakülteBölümİşlemleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card">
        <h5 class="card-header">Fakülte Bölüm Listesi</h5>
        <div class="table-responsive text-nowrap">
            <table class="table">
                <thead>
                   <tr>
                    <th>ID</th>
                    <th>FAKÜLTE</th>
                    <th>BÖLÜM</th>
                    <th>SİL</th>
                    <th>GÜNCELLE</th>
                </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                     <asp:Repeater ID="fakülteBölüm" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("ID")%></td>
                            <td><%#Eval("Fakülte")%></td>
                            <td><%#Eval("Bölüm")%></td>
                            <td>
                                <a class="btn btn-danger" href="FakülteBölümİşlemleri.aspx?ID=<%#Eval("ID")%>&islem=sil">Sil</a>
                            </td>
                            <td>
                                <a class="btn btn-success" href="FakülteBölümGüncelle.aspx?ID=<%#Eval("ID")%>">Güncelle</a>

                            </td>

                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
