<%@ Page Title="" Language="C#" MasterPageFile="~/TemelSayfalar/Temel.Master" AutoEventWireup="true" CodeBehind="GizlilikSozlesmesi.aspx.cs" Inherits="BTE_THERAPY.TemelSayfalar.GizlilikSozlesmesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html lang="tr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Gizlilik Sözleşmesi</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                line-height: 1.6;
                margin: 0;
                padding: 0;
            }

            .sozlesme {
                width: 90%;
                max-width: 1200px;
                margin: 20px auto;
                padding: 20px;
                background: #f9f9f9;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            h1, h2, h3 {
                color: #333;
            }

            p {
                margin: 10px 0;
            }

            @media (max-width: 600px) {
                .sozlesme {
                    padding: 10px;
                }
            }
        </style>
    </head>
    <body>
        <div class="sozlesm">
            <h1>Gizlilik Sözleşmesi</h1>

            <p>Bu Gizlilik Sözleşmesi, pedipelviksaglık tarafından sunulan hizmetleri kullanan kullanıcıların kişisel bilgilerinin nasıl toplandığını, kullanıldığını ve korunduğunu açıklar. Web sitemizi kullanarak bu sözleşmenin şartlarını kabul etmiş olursunuz.</p>

            <h2>Toplanan Bilgiler</h2>
            <p><strong>Kişisel Bilgiler:</strong> Adınız, soyadınız, fotoğrafınız, e-posta adresiniz, telefon numaranız ve cinsiyetiniz </p>
            <p><strong>Otomatik Bilgiler:</strong> Çerezler, IP adresiniz, tarayıcı türü, işletim sistemi ve web sitemizdeki aktiviteleriniz gibi otomatik olarak toplanan bilgiler.</p>

            <h2>Bilgilerin Kullanımı</h2>
            <p>Toplanan bilgiler, aşağıdaki amaçlarla kullanılabilir:</p>
            <ul>
                <li>Hizmetlerimizin sağlanması ve iyileştirilmesi.</li>
                <li>İletişim kurmak ve müşteri hizmetleri sağlamak.</li>
                <li>Yasal gerekliliklere uyum sağlamak.</li>
            </ul>

            <h2>Bilgilerin Paylaşımı</h2>
            <p>Kişisel bilgileriniz üçüncü şahıslarla yalnızca aşağıdaki durumlarda paylaşılacaktır:</p>
            <ul>
                <li>Yasal yükümlülükler veya mahkeme kararları gereği.</li>
                <li>Hizmet sağlayıcılarımızla, yalnızca hizmetlerimizi sunmamıza yardımcı olmak amacıyla.</li>
                <li>Açık onayınız doğrultusunda.</li>
            </ul>

            <h2>Bilgilerin Korunması</h2>
            <p>Kişisel bilgilerinizin güvenliğini sağlamak için web güvenliği standartlarında güvenlik önlemleri almaktayız. Ancak, internet üzerinden iletilen bilgilerin tamamen güvenli olduğunu garanti edemeyiz.</p>

            <h2>Çerezler ve Benzer Teknolojiler</h2>
            <p>Web sitemizde kullanıcı deneyimini iyileştirmek amacıyla çerezler ve benzer izleme teknolojileri kullanılmaktadır. Çerezler hakkında daha fazla bilgi edinmek için Google <a href="https://policies.google.com/technologies/cookies" target="_blank">Çerez Politikası</a> sayfasını ziyaret edebilirsiniz.</p>

            <h2>Kullanıcı Hakları</h2>
            <p><strong>Erişim Hakkı:</strong> Kişisel bilgilerinize erişme hakkına sahipsiniz.</p>
            <p><strong>Düzeltme Hakkı:</strong> İletişime geçerek yanlış veya eksik bilgilerinizi düzeltme hakkına sahipsiniz.</p>
            <p><strong>Silme Hakkı:</strong> Kişisel bilgilerinizin silinmesini talep edebilirsiniz.</p>
            <p><strong>İtiraz Hakkı:</strong> Kişisel bilgilerinizin işlenmesine itiraz edebilirsiniz.</p>

            <h2>Değişiklikler</h2>
            <p>Bu Gizlilik Sözleşmesi zaman zaman güncellenebilir. Güncellemeler web sitemizde yayınlanacak ve yürürlüğe girecektir. Değişikliklerden haberdar olmak için bu sözleşmeyi düzenli olarak gözden geçirmenizi öneririz.</p>

            <h2>İletişim</h2>
            <p>Gizlilik politikamız hakkında sorularınız veya endişeleriniz varsa, lütfen bizimle iletişime geçin:</p>
            <ul>
                <li>E-posta: info@pedipelviksaglık.com</li>
                <li>Telefon: 0 (232) 412 49 15</li>
                <li>Adres: Dokuz Eylül Üniversitesi Fizik Tedavi ve Rehabilitasyon Fakültesi
15 Temmuz Sağlık ve Sanat Yerleşkesi Mithatpaşa Caddesi No:56/15 
İnciraltı 35340 – İZMİR</li>
            </ul>

            <h2>Üçüncü Taraf Web Siteleri ve Uygulamalar</h2>
            <p>Web sitesi dâhilinde başka sitelere link verebilir. Firmamız, bu linkler vasıtasıyla erişilen sitelerin gizlilik uygulamaları ve içeriklerine yönelik herhangi bir sorumluluk taşımamaktadır.Gizlilik Politikası Prensipleri, sadece web sitemiin kullanımına ilişkindir, üçüncü taraf web sitelerini kapsamaz.</p>

            <h2>İstisnai Haller</h2>
            <p>Aşağıda belirtilen sınırlı hallerde sitemiz “Gizlilik Politikası” hükümleri dışında kullanıcılara ait bilgileri üçüncü kişilere açıklayabilir. Bu durumlar sınırlı sayıda olmak üzere;</p>
            <ul>
                <li>Kanun, Kanun Hükmünde Kararname, Yönetmelik v.b. yetkili hukuki otorite tarafından çıkarılan ve yürürlükte olan hukuk kurallarının getirdiği zorunluluklara uymak;</li>
                <li>Mağazamızın kullanıcılarla akdettiği “Üyelik Sözleşmesi”‘nin ve diğer sözleşmelerin gereklerini yerine getirmek ve bunları uygulamaya koymak amacıyla;</li>
                <li>Yetkili idari ve adli otorite tarafından usulüne göre yürütülen bir araştırma veya soruşturmanın yürütümü amacıyla kullanıcılarla ilgili bilgi talep edilmesi;</li>
                <li>Kullanıcıların hakları veya güvenliklerini korumak için bilgi vermenin gerekli olduğu hallerdir.</li>
            </ul>
            <h2>Tarayıcı Çerezleri</h2>
            <p>Firmamız, mağazamızı ziyaret eden kullanıcılar ve kullanıcıların web sitesini kullanımı hakkındaki bilgileri teknik bir iletişim dosyası (Çerez-Cookie) kullanarak elde edebilir. Teknik iletişim dosyası site hakkında durum ve tercihleri saklayarak İnternet’in kullanımını kolaylaştırır.</p>
        </div>
    </body>
    </html>
</asp:Content>
