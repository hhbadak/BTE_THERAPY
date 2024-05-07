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
                           
                        </div>
                    </div>

                </div>
            </main>

        </div>
    </div>

</asp:Content>
