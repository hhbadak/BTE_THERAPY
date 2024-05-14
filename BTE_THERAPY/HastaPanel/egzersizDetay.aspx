<%@ Page Title="" Language="C#" MasterPageFile="~/HastaPanel/index.Master" AutoEventWireup="true" CodeBehind="egzersizDetay.aspx.cs" Inherits="BTE_THERAPY.HastaPanel.egzersizDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-12 col-md-12">
            <asp:Repeater ID="rp_detail" runat="server">
                <ItemTemplate>

                    <div class="card">
                        <div class="card-header">
                            <iframe width="560" height="315" src="https://www.youtube.com/embed/<%#Eval("Video") %>" frameborder="0" allowfullscreen></iframe>

                            <br />
                            <h1 class="card-title mb-0 text-black"><b><%#Eval("Baslik") %></b></h1>
                        </div>
                        <div class="card-body">
                            <p class="card-text"><%#Eval("Icerik") %></p>
                        </div>
                        <div class="row">
                            <div class="col-3 col-md-3">
                                <img src="../FizyoterapistPanel/img/icerik/<%# Eval("Foto") %>" alt='<%# Eval("Ad") %>' />
                            </div>
                            <div class="col-3 col-md-3">
                                <img src="../FizyoterapistPanel/img/icerik/<%# Eval("Foto1") %>" alt='<%# Eval("Ad") %>' />
                            </div>
                            <div class="col-3 col-md-3">
                                <img src="../FizyoterapistPanel/img/icerik/<%# Eval("Foto2") %>" alt='<%# Eval("Ad") %>' />
                            </div>
                            <div class="col-3 col-md-3">
                                <img src="../FizyoterapistPanel/img/icerik/<%# Eval("Foto3") %>" alt='<%# Eval("Ad") %>' />
                            </div>
                            <div class="col-3 col-md-3">
                                <img src="../FizyoterapistPanel/img/icerik/<%# Eval("Foto4") %>" alt='<%# Eval("Ad") %>' />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
