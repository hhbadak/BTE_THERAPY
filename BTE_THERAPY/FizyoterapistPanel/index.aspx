<%@ Page Title="" Language="C#" MasterPageFile="~/FizyoterapistPanel/index.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BTE_THERAPY.FizyoterapistPanel.index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .hoşgeldiniz {
            text-align: center;
            padding: 50px;
        }
        .hoşgeldiniz-mesaj {
            font-size: 28px;
            margin-bottom: 20px;
            color: #333;
        }
        .info {
            font-size: 18px;
            color: #666;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hoşgeldiniz">
        <div class="hoşgeldiniz-mesaj">
            Fizyoterapist Paneline Hoş Geldiniz
        </div>
        <div class="info">
            Bugün nasılsınız? Yandaki menüden içerik yükleyebilir ve hastalarınızın görüntülemesini sağlayabilirsiniz.
        </div>
    </div>
</asp:Content>
