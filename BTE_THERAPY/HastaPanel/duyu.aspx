<%@ Page Title="" Language="C#" MasterPageFile="~/HastaPanel/index.Master" AutoEventWireup="true" CodeBehind="duyu.aspx.cs" Inherits="BTE_THERAPY.HastaPanel.duyu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="portfolio-filter">
        <button type="button" data-filter="all">Proprioseptif Duyu</button>
        <button type="button" data-filter="special">Vestibüler Duyu</button>
        <button type="button" data-filter="special">İnteroseptif Duyu</button>
        <button type="button" data-filter="special">Taktil Duyu</button>
        <button type="button" data-filter="special">Tat ve Koku Duyusu</button>
        <button type="button" data-filter="special">Görsel Duyu</button>
        <button type="button" data-filter="special">İşitsel Duyu</button>
    </div>
</asp:Content>