<%@ Page Title="" Language="C#" MasterPageFile="~/HastaPanel/index.Master" AutoEventWireup="true" CodeBehind="mesaneVeBagirsak.aspx.cs" Inherits="BTE_THERAPY.HastaPanel.mesaneVeBagirsak" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <div class="portfolio-filter">
        <button type="button" data-filter="all">Alarm Tedavisi</button>
        <button type="button" data-filter="special">İşeme ve Dışkılama Eğitimi</button>
        <button type="button" data-filter="special">Sıvı ve Beslenme Önerileri</button>
        <button type="button" data-filter="special">Doğru Tuvalet Pozisyonu</button>
        <button type="button" data-filter="special">Davranış Değişikliği</button>
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
    </div>--%>




    <div class="portfolio-filter">
        <button type="button" onclick="filterData(1)">Filtre 1</button>
        <button type="button" onclick="filterData(2)">Filtre 2</button>
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
