<%@ Page Title="" Language="C#" MasterPageFile="~/TemelSayfalar/Temel.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="BTE_THERAPY.TemelSayfalar.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Animasyon -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Yükleniyor...</span>
        </div>
    </div>
    <!-- Animasyon -->


    <!-- İletişim Başlangıcı -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Bizimle İletişime Geçin</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb text-uppercase mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Ana Sayfa</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Hakkımızda</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">İletişim</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- İletişim Sonu -->

    <!-- Doktorlar Başlangıcı -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <p class="d-inline-block border rounded-pill py-1 px-4">Fizyoterapistlerimiz</p>
                <h1>Deneyimli Fizyoterapist Ekibimiz</h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item position-relative rounded overflow-hidden">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/fizyoterapistler/ozgecelikertosun.jpg" alt="">
                        </div>
                        <div class="team-text bg-light text-center p-4">
                            <p class="text-primary">DOÇ. DR. FİZYOTERAPİST</p>
                            <h5>Özge Çeliker Tosun</h5>
                            <div class="team-social text-center">
                                <a class="btn btn-square" href="https://wa.me/+905055252029"><i class="fab fa-whatsapp"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="team-item position-relative rounded overflow-hidden">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/fizyoterapistler/damlakorkmaz.jpg" alt="">
                        </div>
                        <div class="team-text bg-light text-center p-4">
                            <p class="text-primary">UZMAN FİZYOTERAPİST</p>
                            <h5>Damla Korkmaz Dayıcan</h5>
                            <div class="team-social text-center">
                                <a class="btn btn-square" href="https://wa.me/+905547282019"><i class="fab fa-whatsapp"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item position-relative rounded overflow-hidden">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/fizyoterapistler/busrapalaz.jpg" alt="">
                        </div>
                        <div class="team-text bg-light text-center p-4">
                            <p class="text-primary">UZMAN FİZYOTERAPİST</p>
                            <h5>Büşra Palaz</h5>
                            <div class="team-social text-center">
                             <a class="btn btn-square" href="https://wa.me/+905397950301"><i class="fab fa-whatsapp"></i></a>
                                     </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Doktorlar Sonu -->

    <!-- İletişim -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-4">
                    <div class="h-100 bg-light rounded d-flex align-items-center p-5">
                        <div class="d-flex flex-shrink-0 align-items-center justify-content-center rounded-circle bg-white" style="width: 55px; height: 55px;">
                            <i class="fa fa-map-marker-alt text-primary"></i>
                        </div>
                        <div class="ms-4">
                            <p class="mb-2">Klinik Adresimiz</p>
                            <h5 class="mb-0">Dokuz Eylül Üniversitesi Fizik Tedavi ve Rehabilitasyon Fakültesi
15 Temmuz Sağlık ve Sanat Yerleşkesi Mithatpaşa Caddesi No:56/15 
İnciraltı 35340 – İZMİR</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="h-100 bg-light rounded d-flex align-items-center p-5">
                        <div class="d-flex flex-shrink-0 align-items-center justify-content-center rounded-circle bg-white" style="width: 55px; height: 55px;">
                            <i class="fa fa-phone-alt text-primary"></i>
                        </div>
                        <div class="ms-4">
                            <p class="mb-2">Hasta Kabul Birimi</p>
                            <h5 class="mb-0">0 (232) 412 49 15</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="h-100 bg-light rounded d-flex align-items-center p-5">
                        <div class="d-flex flex-shrink-0 align-items-center justify-content-center rounded-circle bg-white" style="width: 55px; height: 55px;">
                            <i class="fa fa-envelope-open text-primary"></i>
                        </div>
                        <div class="ms-4">
                            <p class="mb-2">Mail Adresimiz</p>
                            <h5 class="mb-0">info@pedipelviksaglık.com</h5>
                        </div>
                    </div>
                </div>
                
               <!--<div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">-->
                   <!-- <div class="h-100" style="min-height: 400px;">-->
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d781.7444105278638!2d27.036545!3d38.395766!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14bbdc5e43d46ecb%3A0x8d798e377a8984a1!2sDokuz%20Eyl%C3%BCl%20%C3%9Cniversite%20Fizik%20Tedavi%20ve%20Rehabilitasyon%20Y%C3%BCksek%20Okulu!5e0!3m2!1str!2str!4v1715698385366!5m2!1str!2str" 
                           width="1000" height="600"  style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" ></iframe>
                      <!--  </div>-->
                   
                </div>
            </div>
        </div>
    </div>
    <!--İletişim -->


   


    <!-- En üste git -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</asp:Content>

