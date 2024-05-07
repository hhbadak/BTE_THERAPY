<%@ Page Title="" Language="C#" MasterPageFile="~/HastaPanel/index.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BTE_THERAPY.HastaPanel.index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DropDownList ID="ddl_kategoriler" runat="server" CssClass="form-select mb-200" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="ddl_kategoriler_SelectedIndexChanged">
        <asp:ListItem Text="Kategori Seçiniz" Value="0"></asp:ListItem>
    </asp:DropDownList>
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
