<%@ Page Title="" Language="C#" MasterPageFile="~/HastaPanel/index.Master" AutoEventWireup="true" CodeBehind="pasifYaklasimlar.aspx.cs" Inherits="BTE_THERAPY.HastaPanel.pasifYaklasimlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="portfolio-filter">
        <button type="button" data-filter="all">Diyafram</button>
        <button type="button" data-filter="special">Abdominal Duvar</button>
        <button type="button" data-filter="special">Torakolumbal Fasya</button>
        <button type="button" data-filter="special">Kalça Çevresi Kaslar</button>
        <button type="button" data-filter="special">Pelvik Taban</button>
    </div>
    <div class="row">
        <asp:Repeater ID="rp_icerik" runat="server">
            <ItemTemplate>
                <div class="col-12 col-md-6">
                    <div class="card">
                        <img class="card-img-top" src='<%# "../FizyoterapistPanel/img/icerik/" + Eval("Foto") %>' alt='<%# Eval("Ad") %>'>
                        <div class="card-header">
                            <h5 class="card-title mb-0">Card with image and button</h5>
                        </div>
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
