<%@ Page Title="" Language="C#" MasterPageFile="~/HastaPanel/index.Master" AutoEventWireup="true" CodeBehind="posturEgitimi.aspx.cs" Inherits="BTE_THERAPY.HastaPanel.posturEgitimi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   <asp:Repeater ID="rp_kategori" runat="server" OnItemCommand="rp_kategori_ItemCommand">
    <ItemTemplate>
        <asp:Button runat="server" Text='<%# Eval("AltKategori") %>' CommandName="Filter" CommandArgument='<%# Eval("UstKategoriID") %>' />
    </ItemTemplate>
</asp:Repeater>


<asp:Repeater ID="Repeater2" runat="server">
    <ItemTemplate>
        <%# FilterItem(Container.DataItem) %>
    </ItemTemplate>
</asp:Repeater>

    <div class="card-grid">
        <asp:Repeater ID="Repeater1" runat="server">
            <itemtemplate>
                <div class="card">
                    <a href='../HastaPanel/egzersizDetay.aspx?mid=<%#Eval("ID") %>'>
                        <img src="../FizyoterapistPanel/img/icerik/<%# Eval("Foto") %>" alt='<%# Eval("Ad") %>' />
                        <p><%# Eval("Baslik") %></p>
                    </a>
                </div>
            </itemtemplate>
        </asp:Repeater>
    </div>

</asp:Content>
