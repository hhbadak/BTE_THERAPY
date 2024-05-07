<%@ Page Title="" Language="C#" MasterPageFile="~/FizyoterapistPanel/index.Master" AutoEventWireup="true" CodeBehind="icerik.aspx.cs" Inherits="BTE_THERAPY.FizyoterapistPanel.icerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-6 col-lg-6">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Egzersiz Adı</h5>
                    <asp:TextBox ID="tb_egzersizAdi" runat="server" CssClass="form-control mb-3"></asp:TextBox>
                    <h5>İçerik Video URL</h5>
                    <asp:TextBox ID="tb_videoUrl" runat="server" CssClass="form-control mb-3"></asp:TextBox>
                    <h5 class="card-title mb-0">Başlık</h5>
                    <asp:TextBox ID="tb_baslik" runat="server" CssClass="form-control mb-3"></asp:TextBox>
                    <h5 class="card-title mb-0">İçerik</h5>
                    <textarea id="tb_icerik" runat="server" class="form-control mb-3" rows="2" placeholder="İçerik Yazınızı Giriniz"></textarea>
                    <h5>Kategori</h5>
                    <asp:DropDownList ID="ddl_kategoriler" runat="server" CssClass="form-select mb-3" AppendDataBoundItems="true">
                        <asp:ListItem Text="Kategori Seçiniz" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="col-6 col-lg-6">
            <div class="card">
                <div class="card-header">
                    <h5>1. İçerik Resim</h5>
                    <asp:FileUpload CssClass="mb-3" ID="fu_resim" runat="server"></asp:FileUpload>
                    <h5>2. İçerik Resim</h5>
                    <asp:FileUpload CssClass="mb-3" ID="fu_resim1" runat="server"></asp:FileUpload>
                    <h5>3. İçerik Resim</h5>
                    <asp:FileUpload CssClass="mb-3" ID="fu_resim2" runat="server"></asp:FileUpload>
                    <h5>4. İçerik Resim</h5>
                    <asp:FileUpload CssClass="mb-3" ID="fu_resim3" runat="server"></asp:FileUpload>
                    <h5>5. İçerik Resim</h5>
                    <asp:FileUpload CssClass="mb-3" ID="fu_resim4" runat="server"></asp:FileUpload>
                </div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="mb-3 col-12 col-lg-12 m-lg-2">
            <asp:LinkButton ID="lbtn_ekle" runat="server" Width="100%" Text="İçerik Ekle" CssClass="btn btn-secondary" OnClick="lbtn_ekle_Click"></asp:LinkButton>
        </div>
    </div>
</asp:Content>
