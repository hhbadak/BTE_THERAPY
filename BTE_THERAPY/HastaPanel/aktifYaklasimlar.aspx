<%@ Page Title="" Language="C#" MasterPageFile="~/HastaPanel/index.Master" AutoEventWireup="true" CodeBehind="aktifYaklasimlar.aspx.cs" Inherits="BTE_THERAPY.HastaPanel.aktifYaklasimlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="portfolio-filter">
        <button type="button" data-filter="all">Solunum Egzersizleri</button>
        <button type="button" data-filter="special">Kor Stabilizasyon Egzersizleri</button>
        <button type="button" data-filter="special">Pelvik Taban Egzersizleri</button>
    </div>
</asp:Content>