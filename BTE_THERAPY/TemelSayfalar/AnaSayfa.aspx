<%@ Page Title="" Language="C#" MasterPageFile="~/TemelSayfalar/Temel.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="BTE_THERAPY.TemelSayfalar.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Slider -->

    <div class="container-fluid header bg-primary p-0 mb-5">
        <div class="row g-0 align-items-center flex-column-reverse flex-lg-row">
            <div class="col-lg-6 p-5 wow fadeIn" data-wow-delay="0.1s">
                <h1 class="display-4 text-white mb-5">İyi Sağlık, Tüm Canlılığın Temelidir</h1>
                <div class="row g-4">
                    <div class="col-sm-4">
                        <div class="border-start border-light ps-4">
                            <h2 class="text-white mb-1" data-toggle="counter-up">
                                <asp:Label ID="lblToplamFizyoterapistSayisi" runat="server" /></h2>
                            <p class="text-light mb-0">DENEYİMLİ DOKTORLAR</p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="border-start border-light ps-4">
                            <h2 class="text-white mb-1" data-toggle="counter-up">30</h2>
                            <p class="text-light mb-0">TIBBİ ARAÇLAR </p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="border-start border-light ps-4">
                            <h2 class="text-white mb-1" data-toggle="counter-up">
                                <asp:Label ID="lblToplamHastaSayisi" runat="server" /></h2>
                            <p class="text-light mb-0">TOPLAM HASTA SAYISI</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" id="enust">
                <div class="owl-carousel header-carousel">
                    <div class="owl-carousel-item position-relative">
                        <img class="img-fluid" src="img/slider01.jpg" alt="">
                        <div class="owl-carousel-text">
                            <h1 class="display-1 text-white mb-0">SAĞLIK</h1>
                        </div>
                    </div>
                    <div class="owl-carousel-item position-relative">
                        <img class="img-fluid" src="img/slider02.jpg" alt="">
                        <div class="owl-carousel-text">
                            <h1 class="display-1 text-white mb-0">KALİTE</h1>
                        </div>
                    </div>
                    <div class="owl-carousel-item position-relative">
                        <img class="img-fluid" src="img/slider03.jpg" alt="">
                        <div class="owl-carousel-text">
                            <h1 class="display-1 text-white mb-0">GÜVEN</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Slider -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <div class="d-flex flex-column">
                        <img class="img-fluid rounded w-75 align-self-end" src="img/hakkimizda1.jpg" alt="">
                        <img class="img-fluid rounded w-50 bg-white pt-3 pe-3" src="img/hakkimizda2.jpg" alt="" style="margin-top: -25%;">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <p class="d-inline-block border rounded-pill py-1 px-4">HAKKIMIZDA</p>
                    <h1 class="mb-4">Neden Bize Güvenmelisiniz?</h1>
                    <p>
                        Çünkü pelvik taban disfonksiyonları konusunda uzmanız. Sağladığımız detaylı bilgiler sayesinde ziyaretçilerimiz sorunlarını anlamak ve uygun egzersizlere başlamak konusunda destek bulabilirler. 
                    </p>
                    <p class="mb-4">Ayrıca, güvenilir kaynaklardan yararlanarak doğru ve güvenilir içerik sunmaya özen gösteriyoruz. Müşteri referansları ve olumlu incelemeler de sitemizin güvenilirliğini artıran unsurlardan biridir. Web sitemize güvenerek, pelvik taban sağlığıyla ilgili doğru bilgilere erişebilir ve uygun egzersizlerle sağlığınızı destekleyebilirsiniz.</p>
                    <p><i class="far fa-check-circle text-primary me-3"></i>Kaliteli sağlık hizmeti</p>
                    <p><i class="far fa-check-circle text-primary me-3"></i>Alanında uzman doktorlar</p>
                    <p><i class="far fa-check-circle text-primary me-3"></i>Hasta memnuniyeti</p>

                </div>
            </div>
        </div>
    </div>
    <!-- Card -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">

                <h1>Sağlık Çözümleri</h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item bg-light rounded h-100 p-5">
                        <div class="d-inline-flex align-items-center justify-content-center bg-white rounded-circle mb-4" style="width: 65px; height: 65px;">
                            <i class="fa fa-heartbeat text-primary fs-4"></i>
                        </div>
                        <h4 class="mb-3">İYİLEŞME</h4>
                        <p class="mb-4">Web sitemizde sunulan egzersizler ve bilgiler, pelvik taban disfonksiyonlarıyla ilgili iyileşme sürecine yardımcı olur.</p>

                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item bg-light rounded h-100 p-5">
                        <div class="d-inline-flex align-items-center justify-content-center bg-white rounded-circle mb-4" style="width: 65px; height: 65px;">
                            <i class="fa fa-x-ray text-primary fs-4"></i>
                        </div>
                        <h4 class="mb-3">ERİŞİLEBİLİRLİK</h4>
                        <p class="mb-4">Web sitemiz, pelvik taban disfonksiyonlarıyla ilgili bilgilere kolay ve erişilebilir bir şekilde ulaşmanızı sağlar.</p>

                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="service-item bg-light rounded h-100 p-5">
                        <div class="d-inline-flex align-items-center justify-content-center bg-white rounded-circle mb-4" style="width: 65px; height: 65px;">
                            <i class="fa fa-brain text-primary fs-4"></i>
                        </div>
                        <h4 class="mb-3">TEDAVİ PLANI</h4>
                        <p class="mb-4">Web sitemizde sunulan detaylı bilgiler, pelvik taban disfonksiyonları için etkili bir tedavi planı oluşturmanıza yardımcı olabilir.</p>

                    </div>
                </div>
                <!--   <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item bg-light rounded h-100 p-5">
                        <div class="d-inline-flex align-items-center justify-content-center bg-white rounded-circle mb-4" style="width: 65px; height: 65px;">
                            <i class="fa fa-wheelchair text-primary fs-4"></i>
                        </div>
                        <h4 class="mb-3">EGZERSİZ</h4>
                        <p class="mb-4">Erat ipsum justo amet duo et elitr dolor, est duo duo eos lorem sed diam stet diam sed stet.</p>
                        
                    </div>
                </div>
             
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item bg-light rounded h-100 p-5">
                        <div class="d-inline-flex align-items-center justify-content-center bg-white rounded-circle mb-4" style="width: 65px; height: 65px;">
                            <i class="fa fa-vials text-primary fs-4"></i>
                        </div>
                        <h4 class="mb-3">KLİNİK</h4>
                        <p class="mb-4">Erat ipsum justo amet duo et elitr dolor, est duo duo eos lorem sed diam stet diam sed stet.</p>
                        
                    </div>-->
            </div>
        </div>
    </div>
    </div> 
    <!-- Card -->
    <a href="#enust" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>
</asp:Content>
