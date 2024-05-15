<%@ Page Title="" Language="C#" MasterPageFile="~/TemelSayfalar/Temel.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="BTE_THERAPY.TemelSayfalar.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Slider -->

    <div class="container-fluid header bg-primary p-0 mb-5">
        <div class="row g-0 align-items-center flex-column-reverse flex-lg-row">
            <div class="col-lg-6 p-5 wow fadeIn" data-wow-delay="0.1s">
                <h1 style= 'color:white '>Duyusal Dereceli Silindirik Pelvik Taban Rehabilitasyon Protokolü 
(Sensory Graded Cylindrical Pelvic Floor Rehabilitation Protocol)</h1>
                <br />
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
                        <img class="img-fluid" src="img/anasayfaslider/slider1.png" alt="">
                        <div class="owl-carousel-text">
                            <h1 class="display-1 text-white mb-0">Sağlıklı pelvik taban, mutlu mesane ve mutlu bağırsaklar</h1>
                        </div>
                    </div>
                    <div class="owl-carousel-item position-relative">
                        <img class="img-fluid" src="img/anasayfaslider/slider2.png" alt="">
                        <div class="owl-carousel-text">
                            <h1 class="display-1 text-white mb-0">Kuru giysi, kuru yatak, mutlu hayat</h1>
                        </div>
                    </div>
                    <div class="owl-carousel-item position-relative">
                        <img class="img-fluid" src="img/anasayfaslider/slider3.png" alt="">
                        <div class="owl-carousel-text">
                            <h1 class="display-1 text-white mb-0">Sağlıklı mesane ve bağırsaklar için doğru postür, sağlam duyu ve güçlü pelvik taban</h1>
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
                        <img class="img-fluid rounded w-75 align-self-end" src="img/anasayfahakkimizda/hakkimizda1.png" alt="">
                        <img class="img-fluid rounded w-50 bg-white pt-3 pe-3" src="img/anasayfahakkimizda/hakkimizda2.png" alt="" style="margin-top: -25%;">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <p class="d-inline-block border rounded-pill py-1 px-4">pedipelviksaglık</p>
                    <h1 class="mb-4">Duyusal Dereceli Silindirik Pelvik Taban Rehabilitasyon Protokolü</h1>
                    <p>Mesane ve bağırsak problemleri olan çocukların tedavisi için geliştirilmiştir. Bu protokolde diyafram, abdominal duvar, torokolumbal fasya ve pelvik tabanı içeren kor bölgesi bir silindire benzetilmiştir. 
                        Amacımız öncelikle bu silindirde düzelme sağlamak ve bunu kademeli olarak tüm vücuda yaymaktır. 
                        Bir başka deyişle, çekirdekten bütüne bir yaklaşım sergilemektir. Bu protokol; mesane ve bağırsak eğitimi, duyu eğitimi, pasif yaklaşımlar, aktif yaklaşımlar ve postür eğitimini içeren beş aşamadan oluşmaktadır.
                    </p>
                    <p class="mb-4"> Öncelikle her hasta için bir silindir çizilmekte ve hastanın değerlendirme bulguları bu silindirin üzerine yerleştirilmektedir. Buna göre hastaya özel bir tedavi haritası çıkarılmakta ve bu haritaya göre ilerleme sağlanmaktadır. 
 Silindirde düzgün çalışan kısımlara egzersiz gibi aktif yaklaşımlar, düzgün çalışmayan kısımlara ise manuel terapi, elektroterapi gibi pasif yaklaşımlar uygulanmaktadır. Silindirin her kısmı düzgün çalışana kadar uygulamalara devam edilmektedir. 
 Daha sonra vücuttaki diğer sistemler de silindire dahil edilerek düzenlemeler sağlanmaktadır. Bu protokolde kademeli olarak ilerlenmekte ve motivasyonu artıracak oyuncak, top, balon gibi materyal kullanımı desteklenmektedir.</p>
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
    <a href="#enust" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>
</asp:Content>

