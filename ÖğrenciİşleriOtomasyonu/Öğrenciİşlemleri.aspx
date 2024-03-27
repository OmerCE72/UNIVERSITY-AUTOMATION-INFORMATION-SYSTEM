﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ProgramSorumlusu.Master" AutoEventWireup="true" CodeBehind="Öğrenciİşlemleri.aspx.cs" Inherits="ÖğrenciİşleriOtomasyonu.Öğrenciİşlemleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="card">
        <h5 class="card-header">Öğrenci Listesi</h5>
        <div class="table-responsive text-nowrap">
            <table class="table">
                <thead>
                   <tr>
                    <th>ID</th>
                    <th>AD SOYAD</th>
                    <th>TC</th>
                    <th>TELEFON NUMARASI</th>
                    <th>EMAİL</th>
                    <th>FAKÜLTESİ</th>
                    <th>BÖLÜMÜ</th>
                    <th>DEVAMSIZLIK</th>
                    <th>ŞİFRE</th>
                    <th>SİL</th>
                    <th>GÜNCELLE</th>
                </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                     <asp:Repeater ID="öğrenci" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("ID")%></td>
                            <td><%#Eval("AdSoyad")%></td>
                            <td><%#Eval("TC")%></td>
                            <td><%#Eval("TelefonNumarasi")%></td>
                            <td><%#Eval("Email")%></td>
                            <td><%#Eval("Fakültesi")%></td>
                            <td><%#Eval("Bölümü")%></td>
                            <td><%#Eval("Devamszilik")%></td>
                            <td><%#Eval("Şifre")%></td>
                            <td>
                                <a class="btn btn-danger" href="Öğrenciİşlemleri.aspx?ID=<%#Eval("ID")%>&islem=sil">Sil</a>
                            </td>
                            <td>
                                <a class="btn btn-success" href="ÖğrenciGüncelle.aspx?ID=<%#Eval("ID")%>">Güncelle</a>

                            </td>

                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
