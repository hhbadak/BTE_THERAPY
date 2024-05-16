<%@ Page Title="" Language="C#" MasterPageFile="~/HastaPanel/index.Master" AutoEventWireup="true" CodeBehind="pasifYaklasimlar.aspx.cs" Inherits="BTE_THERAPY.HastaPanel.pasifYaklasimlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="portfolio-filter">
        <button type="button" onclick="filterData(13)">Diyafram</button>
        <button type="button" onclick="filterData(14)">Abdominal Duvar</button>
        <button type="button" onclick="filterData(15)">Torakolumbal Fasya</button>
        <button type="button" onclick="filterData(16)">Kalça Çevresi Kaslar</button>
        <button type="button" onclick="filterData(17)">Pelvik Taban</button>

    </div>

    <div class="card-grid">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="card filtr-item" data-category="<%# Eval("AltKategoriID") %>">
                    <a href='../HastaPanel/egzersizDetay.aspx?mid=<%#Eval("AltKategoriID") %>'>
                        <img src="../FizyoterapistPanel/img/icerik/<%# Eval("Foto") %>" alt='<%# Eval("Ad") %>' />
                        <p><%# Eval("Baslik") %></p>
                    </a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <script>
        function filterData(categoryID) {
            var baseUrl = window.location.href.split('?')[0];
            var newUrl = baseUrl + '?mid=' + categoryID;
            window.location.href = newUrl;
        }

    </script>
</asp:Content>
