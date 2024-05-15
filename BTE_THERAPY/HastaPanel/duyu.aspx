<%@ Page Title="" Language="C#" MasterPageFile="~/HastaPanel/index.Master" AutoEventWireup="true" CodeBehind="duyu.aspx.cs" Inherits="BTE_THERAPY.HastaPanel.duyu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="portfolio-filter">
        <button type="button" onclick="filterData(7)">Proprioseptif Duyu</button>
        <button type="button" onclick="filterData(8)">Vestibüler Duyu</button>
        <button type="button" onclick="filterData(9)">İnteroseptif Duyu</button>
        <button type="button" onclick="filterData(10)">Taktil Duyu</button>
        <button type="button" onclick="filterData(11)">Tat ve Koku Duyusu</button>
        <button type="button" onclick="filterData(12)">Görsel Duyu</button>
        <button type="button" onclick="filterData(13)">İşitsel Duyu</button>

        <!-- Diğer butonlar buraya eklenebilir -->
    </div>

    <div class="card-grid">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="card filtr-item" data-category="<%# Eval("AltKategoriID") %>">
                    <a href='../HastaPanel/egzersizDetay.aspx?mid=<%#Eval("ID") %>'>
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