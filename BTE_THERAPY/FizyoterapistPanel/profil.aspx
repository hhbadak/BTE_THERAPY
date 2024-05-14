<%@ Page Title="" Language="C#" MasterPageFile="~/FizyoterapistPanel/index.Master" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="BTE_THERAPY.FizyoterapistPanel.profil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">

        <div class="main">
            <main class="content">
                <div class="container-fluid p-0">
                    <div class="row">
                        <div class="col-md-4 col-xl-3">
                            <div class="card mb-3">
                                <div class="card-header">
                                    <h5 class="card-title mb-0">Profil Detay</h5>
                                </div>
                                <asp:Repeater ID="rp_dropdown" runat="server">
                                    <ItemTemplate>
                                        <div class="card-body text-center">
                                            <img src='../FizyoterapistPanel/img/photos/<%# Eval("Foto") %>' alt="<%#Eval("AdSoyad") %>" class="img-fluid rounded-circle mb-2" width="128" height="128" />
                                            <h5 class="card-title mb-0"><%#Eval("AdSoyad") %></h5>
                                            <div class="text-muted mb-2">Fizyoterapist</div>
                                        </div>

                                        <hr class="my-0" />
                                        <div class="card-body">
                                            <h5 class="h6 card-title">Hakkında</h5>
                                            <ul class="list-unstyled mb-0">
                                                <li class="mb-1"><span data-feather="home" class="feather-sm me-1"></span><%#Eval("Telefon") %> <a href="tel:<%#Eval("Telefon") %>">Whatsapp</a></li>

                                                <li class="mb-1"><span data-feather="briefcase" class="feather-sm me-1"></span><%#Eval("Dogum_Tarihi") %></li>

                                            </ul>
                                        </div>
                                        <hr class="my-0" />
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>

                        <div class="col-md-8 col-xl-9">
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="card-title mb-0">Adı Soyadı</h5>
                                    <asp:TextBox ID="tb_adSoyad" runat="server" CssClass="form-control mb-3"></asp:TextBox>
                                    <h5>E-Mail</h5>
                                    <asp:TextBox ID="tb_mail" runat="server" CssClass="form-control mb-3"></asp:TextBox>
                                    <h5 class="card-title mb-0">Parola</h5>
                                    <div class="input-group">
                                        <asp:TextBox ID="tb_parola" runat="server" CssClass="form-control mb-3" TextMode="Password"></asp:TextBox>
                                        <span class="input-group-text" onclick="togglePassword()">
                                            <i class="align-middle" data-feather="eye"></i>
                                        </span>
                                    </div>
                                    <h5 class="card-title mb-0">Telefon</h5>
                                    <asp:TextBox ID="tb_telefon" runat="server" class="form-control mb-3" onchange="formatTelefon()" placeholder=""></asp:TextBox>
                                    <asp:LinkButton ID="lbtn_duzenle" runat="server" Text="DÜZENLE" OnClick="lbtn_duzenle_Click" CssClass="btn btn-secondary"></asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </main>

        </div>
    </div>
    <script>
        function togglePassword() {
            var passwordField = document.getElementById('<%= tb_parola.ClientID %>');
            var eyeIcon = document.querySelector('[data-feather="eye"]');

            if (passwordField.type === 'password') {
                passwordField.type = 'text';
                eyeIcon.setAttribute('data-feather', 'eye-off');
            } else {
                passwordField.type = 'password';
                eyeIcon.setAttribute('data-feather', 'eye');
            }
            feather.replace(); // Feather ikonlarını güncellemek için kullanılır.
        }

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

            // Son halini TextBox'a yazdır
            document.getElementById('<%= tb_telefon.ClientID %>').value = telefon;
        }

    </script>
</asp:Content>
