<%@ Page Title="" Language="C#" MasterPageFile="~/TemelSayfalar/Temel.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="BTE_THERAPY.TemelSayfalar.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Animasyon-->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Yükleniyor...</span>
        </div>
    </div>
    <!-- Animasyon -->


   

    <!-- Header -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s" id="enust">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">HAKKIMIZDA</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb text-uppercase mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="#">ANASAYFA</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">HAKKIMIZDA</li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">İLETİŞİM</a></li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Header -->


    <!-- Hakkımızda -->
    <div class="container-xxl py-5" >
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <div class="d-flex flex-column">
                        <img class="img-fluid rounded w-75 align-self-end" src="img/hakkimizdasayfasi/hakkımızda1.png" alt="">
                        <img class="img-fluid rounded w-50 bg-white pt-3 pe-3" src="img/hakkimizdasayfasi/hakkimizda2.png" alt="" style="margin-top: -25%;">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <p class="d-inline-block border rounded-pill py-1 px-4">pedipelviksaglık</p>
                    <h1 class="mb-4">Hakkımızda</h1>
                    <p>Web sitemiz, konuya özel olarak odaklanmış ve bu alanda uzmanlaşmış bir ekip tarafından yönetilmektedir. 
                        Bu da size doğru ve güvenilir bilgiler sunma konusunda güvence sağlar.</p>
                    <p class="mb-4">Ayrıca, web sitemizde sunulan içeriklerde detaylı bilgiler bulunmaktadır. Pelvik taban disfonksiyonları hakkında kapsamlı bir şekilde bilgilendirme yaparak, 
               ziyaretçilerimize sorunlarını anlama ve uygun çözümlere ulaşma konusunda yardımcı oluyoruz.Bu sayede, sağlığınızı iyileştirmek için doğru adımları atmanızı sağlayacak bilgilere erişebilirsiniz.</p>
                    <p><i class="far fa-check-circle text-primary me-3"></i>Kaliteli sağlık hizmeti</p>
                    <p><i class="far fa-check-circle text-primary me-3"></i>Sadece Nitelikli Doktorlar</p>
                    <p><i class="far fa-check-circle text-primary me-3"></i>Tıbbi Araştırma Uzmanları</p>
                    
                </div>
            </div>
        </div>
    </div>
    <!-- Hakkımızda -->


        <!-- NEDEN BİZ -->
<div class="container-fluid bg-primary overflow-hidden my-5 px-lg-0">
    <div class="container feature px-lg-0">
        <div class="row g-0 mx-lg-0">
            <div class="col-lg-6 feature-text py-5 wow fadeIn" data-wow-delay="0.1s">
                <div class="p-lg-5 ps-lg-0">
                    <p class="d-inline-block border rounded-pill text-light py-1 px-4">pedipelviksaglık</p>
                    <h1 class="text-white mb-4">NEDEN BİZ ?</h1>
                    <p class="text-white mb-4 pb-2">Ekibimiz, çocuklarda pelvik taban rehabilitasyonu alanında uzman ve tecrübeli fizyoterapistlerden oluşmaktadır.
                        Aynı zamanda her biri akademisyen olan fizyoterapistler, çocukların pelvik sağlığını iyileştirmek adına en güncel ve yenilikçi tedavi yaklaşımlarını yakından takip etmekte ve tedavi protokolüne yansıtmaktadır.</p>
                    <div class="row g-4">
                        <div class="col-6">
                            <div class="d-flex align-items-center">
                                <div class="d-flex flex-shrink-0 align-items-center justify-content-center rounded-circle bg-light" style="width: 55px; height: 55px;">
                                    <i class="fa fa-check text-primary"></i>
                                </div>
                                <div class="ms-4">
                                    
                                    <h5 class="text-white mb-0">Uzman ve tecrübeli ekip</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="d-flex align-items-center">
                                <div class="d-flex flex-shrink-0 align-items-center justify-content-center rounded-circle bg-light" style="width: 55px; height: 55px;">
                                    <i class="fa fa-check text-primary"></i>
                                </div>
                                <div class="ms-4">
                                    
                                    <h5 class="text-white mb-0">Multidisipliner çalışma prensibi</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="d-flex align-items-center">
                                <div class="d-flex flex-shrink-0 align-items-center justify-content-center rounded-circle bg-light" style="width: 55px; height: 55px;">
                                    <i class="fa fa-check text-primary"></i>
                                </div>
                                <div class="ms-4">
                                    
                                    <h5 class="text-white mb-0">Eğlenceli tedavi seansları</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="d-flex align-items-center">
                                <div class="d-flex flex-shrink-0 align-items-center justify-content-center rounded-circle bg-light" style="width: 55px; height: 55px;">
                                    <i class="fa fa-check text-primary"></i>
                                </div>
                                <div class="ms-4">
                                   
                                    <h5 class="text-white mb-0">Mutlu çocuk ve mutlu aile anlayışı</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 pe-lg-0 wow fadeIn" data-wow-delay="0.5s" style="min-height: 400px;">
                <div class="position-relative h-100">
                    <img class="position-absolute img-fluid w-100 h-100" src="img/nedenbiz/nedenbiz.jpg" style="object-fit: cover;" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Özellikler -->
    <!-- En üste git -->
    <a href="#enust" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>
</asp:Content>

