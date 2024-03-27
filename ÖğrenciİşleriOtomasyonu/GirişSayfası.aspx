<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GirişSayfası.aspx.cs" Inherits="ÖğrenciİşleriOtomasyonu.GirişSayfası" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Öğrenci İşleri Otomasyonu</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Academic Management System Login Page">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href="GirişCss/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="GirişCss/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <style>
        .liste {
            font-size: 15px;
            color: #333;
            text-align: left;
            letter-spacing: 1px;
            padding: 14px 10px;
            width: 100%;
            display: inline-block;
            box-sizing: border-box;
            border: none;
            outline: none;
            background: transparent;
            font-family: 'Raleway', sans-serif;
            margin-top: 10px;
            margin-bottom: 20px;
            padding: 3px 10px;
            border: 1px solid #ddd;
            background: #fff;
            height: 50px;
        }
    </style>
</head>
<body>

    <div class="signupform">
        <div class="container">
            <div class="agile_info">
                <div class="w3l_form">
                    <div class="left_grid_info">
                        <h1>Giriş Ekranına Hoşgeldiniz</h1>
                        <br />
					<img src="GirişCss/image1.jpg" alt="" />
                    </div>
                </div>

                <div class="w3_info">
                    <br />
                    <br />
                    <h2>Hesabınıza Giriş Yapın.</h2>
                    <form method="post" runat="server">
                        <label>E-Mail</label>
                        <div class="input-group">
                            <asp:TextBox runat="server" type="text" id="email" placeholder="Kullanıcı Adı Girin" required="" />
                        </div>
                        <label>Şifre</label>
                        <div class="input-group">
                            <asp:TextBox runat="server" type="Password" id="sifre" placeholder="Şifre Girin" required="" />
                        </div>
                        <label>Yetki</label>
                        <asp:DropDownList ID="yetki" CssClass="liste" runat="server" AutoPostBack="true">
                            <asp:ListItem Text="Öğrenci" Value="Öğrenci" />
                            <asp:ListItem Text="Akademisyen" Value="Akademisyen" />
                            <asp:ListItem Text="Program Sorumlusu" Value="Program Sorumlusu" />
                        </asp:DropDownList>
                        <div class="login-check">
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox" checked=""><i> </i>Beni Hatırla</label>
                        </div>
                        <asp:Button class="btn btn-danger btn-block" type="submit" id="girisyap" Text="Giriş Yap" runat="server" OnClick="girisyap_Click" />
                    </form>

                </div>
            </div>
        </div>
    </div>
</body>
</html>
