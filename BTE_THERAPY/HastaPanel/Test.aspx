<%@ Page Title="" Language="C#" MasterPageFile="~/HastaPanel/index.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="BTE_THERAPY.HastaPanel.Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap" rel="stylesheet">
    <style>
        .form-group {
            margin-bottom: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2 class="text-center">Pelvik Taban Sağlığı Bilgilendirme Ve Değerlendirme Formu</h2>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Pelvik taban fonksiyonlarından biri aşağıdakilerden hangisidir?</label>
            <div class="col-sm-10">
                <asp:RadioButtonList ID="question1" runat="server">
                    <asp:ListItem Text="A) Solunum kontrolü" Value="Option1"></asp:ListItem>
                    <asp:ListItem Text="B) Sindirim düzenlemesi" Value="Option2"></asp:ListItem>
                    <asp:ListItem Text="C) İdrar ve dışkı tutma" Value="Option3"></asp:ListItem>
                    <asp:ListItem Text="D) Denge ve koordinasyon" Value="Option4"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Pelvik tabanın zayıf olması hangi duruma yol açabilir?</label>
            <div class="col-sm-10">
                <asp:RadioButtonList ID="question2" runat="server">
                    <asp:ListItem Text="A) Oturarak bacak kaldırma" Value="Option1"></asp:ListItem>
                    <asp:ListItem Text="B) Sürekli ayakta durma" Value="Option2"></asp:ListItem>
                    <asp:ListItem Text="C) Yüksek yoğunluklu koşu" Value="Option3"></asp:ListItem>
                    <asp:ListItem Text="D) Düşük karbonhidratlı diyet uygulama" Value="Option4"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Pelvik taban kaslarını güçlendirmek için aşağıdaki egzersizlerden hangisi önerilir?</label>
            <div class="col-sm-10">
                <asp:RadioButtonList ID="question3" runat="server">
                    <asp:ListItem Text="A) Oturarak bacak kaldırma" Value="Option1"></asp:ListItem>
                    <asp:ListItem Text="B) Sürekli ayakta durma" Value="Option2"></asp:ListItem>
                    <asp:ListItem Text="C) Yüksek yoğunluklu koşu" Value="Option3"></asp:ListItem>
                    <asp:ListItem Text="D) Düşük karbonhidratlı diyet uygulama" Value="Option4"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
        </div>

        <asp:Button ID="btnDownloadPDF" runat="server" Text="PDF olarak indir" CssClass="btn btn-primary" OnClick="btnDownloadPDF_Click" />
    </div>
</asp:Content>
