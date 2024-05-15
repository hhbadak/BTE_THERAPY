<%@ Page Title="" Language="C#" MasterPageFile="~/TemelSayfalar/Temel.Master" AutoEventWireup="true" CodeBehind="KullaniciSozlesmesi.aspx.cs" Inherits="BTE_THERAPY.TemelSayfalar.KullaniciSozlesmesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kullanıcı Sözleşmesi</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            padding: 20px;
        }
        h1 {
            text-align: center;
        }
        p {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <h1>Kullanıcı Sözleşmesi</h1>

    <p>Lütfen aşağıdaki kullanıcı sözleşmesini dikkatlice okuyun:</p>

    <h2>Taraflar</h2>
    <p>Sözleşme, bir tarafta pedipelviksaglık (bundan sonra "Şirket" olarak anılacaktır), diğer tarafta ise Şirket'in hizmetlerinden faydalanan ve bu sözleşmeyi kabul eden kullanıcı (bundan sonra "Kullanıcı" olarak anılacaktır) arasında imzalanmıştır.</p>

    <h2>Sözleşmenin Konusu</h2>
    <p>Şirket, kullanıcıya [hizmetlerin açıklaması] sağlayacaktır. Kullanıcı, bu hizmetleri kullanmak için Şirket'in belirlediği koşulları kabul etmek zorundadır.</p>

    <h2>3. Kullanıcı Hak ve Sorumlulukları</h2>
    <p>Kullanıcı, Şirket'in hizmetlerini yasal amaçlarla kullanmayı kabul eder. Kullanıcı, hizmetleri kullanırken aşağıdaki hususlara uymayı taahhüt eder:</p>
    <ul>
        <li>Şirket'in hizmetlerini kötüye kullanmamak,</li>
        <li>Şirket'in sistemlerine zarar vermemek veya müdahale etmemek,</li>
        <li>Diğer kullanıcıların haklarını ihlal etmemek.</li>
    </ul>

    <h2>Şirketin Hak ve Sorumlulukları</h2>
    <p>Şirket, kullanıcıya sağladığı hizmetlerin kalitesini artırmak ve sorunsuz bir deneyim sağlamakla yükümlüdür. Bununla birlikte, Şirket aşağıdaki haklara sahiptir:</p>
    <ul>
        <li>Hizmetleri herhangi bir zamanda durdurma veya değiştirme hakkı,</li>
        <li>Kullanıcıların Şirket'in hizmetlerini kötüye kullanmasını engelleme hakkı,</li>
        <li>Gerekli görüldüğünde kullanıcıların hesaplarını askıya alma veya silme hakkı.</li>
    </ul>

    <h2>Sözleşmenin Feshi</h2>
    <p>Bu sözleşme, her iki tarafın karşılıklı anlaşmasıyla feshedilebilir. Sözleşmenin feshedilmesi durumunda, tarafların birbirlerine karşı herhangi bir yükümlülüğü kalmayacaktır.</p>

    <h2>Uyuşmazlıkların Çözümü</h2>
    <p>Sözleşme ile ilgili çıkabilecek uyuşmazlıkların çözümünde Türkiye Cumhuriyeti yasaları uygulanacaktır. Uyuşmazlıkların çözümü için İstanbul Mahkemeleri ve İcra Daireleri yetkilidir.</p>

    <p>Bu sözleşme, tarafların karşılıklı olarak anlaşması ile imzalanmıştır.</p>

</body>
</html>
</asp:Content>
