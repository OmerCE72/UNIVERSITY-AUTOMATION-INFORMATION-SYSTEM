<%@ Page Title="" Language="C#" MasterPageFile="~/Akademisyen.Master" AutoEventWireup="true" CodeBehind="ÖğrenciNotGir.aspx.cs" Inherits="ÖğrenciİşleriOtomasyonu.ÖğrenciNotGir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-body">
        <form runat="server">
            <div class="row">
                <div>
                    <label for="firstName" class="form-label">Öğrenci Adı</label>
                    <asp:DropDownList CssClass="form-control" runat="server" ID="ögrenciAdı" required=""></asp:DropDownList>
                </div>
                <div>
                    <label for="lastName" class="form-label">Ders</label>
                    <asp:TextBox class="form-control" type="text" ID="Ders" runat="server" required />
                </div>
                <div>
                    <label for="lastName" class="form-label">Vize</label>
                    <asp:TextBox class="form-control" type="text" ID="Vize" runat="server" required onchange="calculateAverage();" />
                </div>
                <div>
                    <label for="lastName" class="form-label">Final</label>
                    <asp:TextBox class="form-control" type="text" ID="Final" runat="server" required onchange="calculateAverage();" />
                </div>
                <div>
                    <label for="lastName" class="form-label">Ortalama</label>
                    <asp:TextBox class="form-control" type="text" ID="Ortalama" runat="server" required />
                </div>
                <br /><br /><br /><br />
                <div>
                    <asp:Button ID="NotGir" Text="Not Gir" Width="100%" CssClass="btn btn-dark" runat="server" OnClick="NotGir_Click" />
                </div>
            </div>
        </form>
    </div>

    <script type="text/javascript">
        function calculateAverage() {
            var vize = parseFloat(document.getElementById('<%= Vize.ClientID %>').value);
            var final = parseFloat(document.getElementById('<%= Final.ClientID %>').value);

            var ort = (vize * 0.4) + (final * 0.6);
            if (!isNaN(ort)) {
                document.getElementById('<%= Ortalama.ClientID %>').value = ort.toFixed(2);
            }
        }
    </script>
</asp:Content>
