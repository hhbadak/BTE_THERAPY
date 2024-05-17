<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayitol.aspx.cs" Inherits="BTE_THERAPY.FizyoterapistPanel.kayitol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5" />
    <meta name="author" content="AdminKit" />
    <meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web" />

    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link rel="shortcut icon" href="../TemelSayfalar/img/headerlogo.png" />

    <link rel="canonical" href="https://demo-basic.adminkit.io/pages-sign-in.html" />

    <title></title>

    <link href="../FizyoterapistPanel/css/app.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet" />
</head>
<body>

    <main class="d-flex w-100">
        <div class="container d-flex flex-column">
            <div class="row vh-100">
                <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
                    <div class="d-table-cell align-middle">

                        <div class="card">
                            <div class="card-body">
                                <div class="m-sm-4">
                                    <div class="text-center">
                                        <h1 class="h2">BTE THERAPY</h1>
                                    </div>
                                    <form id="form1" runat="server">
                                        <div class="mb-3">
                                            <label class="form-label">Ad-Soyad</label>
                                            <asp:TextBox ID="tb_adsoyad" runat="server" CssClass="form-control form-control-lg" placeholder="Adınızı Ve Soyadınızı giriniz"></asp:TextBox>
                                            
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Email</label>
                                            <asp:TextBox ID="tb_email" runat="server" CssClass="form-control form-control-lg" placeholder="Mail Adresinizi Giriniz"></asp:TextBox>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Parola</label>
                                            <asp:TextBox ID="tb_parola" runat="server" type="password" CssClass="form-control form-control-lg" placeholder="Parolanızı Giriniz"></asp:TextBox>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Parola Tekrar</label>
                                            <asp:TextBox ID="tb_parolatekrar" runat="server" type="password" CssClass="form-control form-control-lg" placeholder="Parolanızı Tekrar Giriniz"></asp:TextBox>


                                            <div class="mb-3">
                                                <label class="form-label">Cinsiyet Seçiniz</label>
                                                <div class="form-check">
                                                    <asp:RadioButton ID="rb_erkek" runat="server" GroupName="cinsiyet" CssClass="form-check-input" />
                                                    <label class="form-check-label" for="rb_erkek">Erkek</label>
                                                </div>
                                                <div class="form-check">
                                                    <asp:RadioButton ID="rb_kadin" runat="server" GroupName="cinsiyet" CssClass="form-check-input" />
                                                    <label class="form-check-label" for="rb_kadin">Kadın</label>
                                                </div>
                                            </div>

                                            <div class="mb-3">
                                                <label class="form-label">Adres</label>
                                                <textarea id="ta_adres" runat="server" class="form-control form-control-lg" placeholder="Adresinizi giriniz"></textarea>
                                            </div>

                                            <div class="mb-3">
                                                <label class="form-label">Telefon</label>
                                                <asp:TextBox ID="tb_telefon" runat="server" onchange="formatTelefon()" CssClass="form-control form-control-lg" placeholder="Telefon numaranızı giriniz"></asp:TextBox>
                                            </div>
                                            <div>
                                                <asp:LinkButton ID="lbtn_kayitol" runat="server" CssClass="btn btn-lg btn-primary" OnClick="lbtn_kayitol_Click">Kayıt Ol</asp:LinkButton>
                                            </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <script src="../FizyoterapistPanel/js/app.js"></script>

    <script>
        function formatTelefon() {
            var telefon = document.getElementById('<%= tb_telefon.ClientID %>').value;

            // Gelen telefon numarasında boşlukları kaldır
            telefon = telefon.replace(/\s/g, '');

            // Eğer +90 ile başlamıyorsa, +90 ekleyin
            if (!telefon.startsWith('+90')) {
                telefon = '+90' + telefon;
            }

            // Gereksiz karakterleri kaldır
            telefon = telefon.replace(/\D/g, '');

            // Uyarı verilecek koşulları kontrol et
            if (telefon.length !== 13 || isNaN(telefon)) {
                alert("Telefon numarası geçersiz! Lütfen +90XXXXXXXXXX formatında girin.");
                return;
            }

            // Son halini TextBox'a yazdır
            document.getElementById('<%= tb_telefon.ClientID %>').value = telefon;
        }

    </script>
</body>
</html>
