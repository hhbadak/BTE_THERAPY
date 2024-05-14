<%@ Page Title="" Language="C#" MasterPageFile="~/HastaPanel/index.Master" AutoEventWireup="true" CodeBehind="posturEgitimi.aspx.cs" Inherits="BTE_THERAPY.HastaPanel.posturEgitimi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="portfolio-filter">
        <button type="button" data-filter="Çocuklarda Postür ve Postürel Farkındalık">Çocuklarda Postür ve Postürel Farkındalık</button>
        <button type="button" data-filter="Postür Egzersizleri">Postür Egzersizleri</button>
    </div>

    <div class="card-grid">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="card filtr-item" data-category="<%# Eval("AltKategori") %>">
                    <a href='../HastaPanel/egzersizDetay.aspx?mid=<%#Eval("ID") %>'>
                        <img src="../FizyoterapistPanel/img/icerik/<%# Eval("Foto") %>" alt='<%# Eval("Ad") %>' />
                        <p><%# Eval("Baslik") %></p>
                    </a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
