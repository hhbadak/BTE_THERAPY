<%@ Page Title="" Language="C#" MasterPageFile="~/HastaPanel/index.Master" AutoEventWireup="true" CodeBehind="egzersizDetay.aspx.cs" Inherits="BTE_THERAPY.HastaPanel.egzersizDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-12 col-md-6">
            <asp:Repeater ID="rp_detail" runat="server">
                <ItemTemplate>

                    <img class="card-img-top" src="img/photos/unsplash-1.jpg" alt="Unsplash">

                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title mb-0"><%#Eval("Baslik") %></h5>
                        </div>
                        <div class="card-body">
                            <p class="card-text"><%#Eval("Icerik") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
