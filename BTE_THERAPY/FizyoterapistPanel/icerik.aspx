<%@ Page Title="" Language="C#" MasterPageFile="~/FizyoterapistPanel/index.Master" AutoEventWireup="true" CodeBehind="icerik.aspx.cs" Inherits="BTE_THERAPY.FizyoterapistPanel.icerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-6 col-lg-6">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Egzersiz Adı</h5>
                </div>
                <div class="card-body">
                    <asp:TextBox ID="tb_egzersizAdi" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <label>İçerik Video URL</label><br />
            <asp:TextBox ID="tb_videoUrl" runat="server" CssClass="form-control"></asp:TextBox>
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Başlık</h5>
                </div>
                <div class="card-body">
                    <asp:TextBox ID="tb_baslik" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="col-6 col-lg-6">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">İçerik</h5>
                </div>
                <div class="card-body">
                    <textarea id="tb_icerik" runat="server" class="form-control" rows="2" placeholder="İçerik Yazınızı Giriniz"></textarea>
                </div>
            </div>

            <label>Kategori</label><br />
            <asp:DropDownList ID="ddl_kategoriler" runat="server" CssClass="form-select mb-3" AppendDataBoundItems="true">
                <asp:ListItem Text="Kategori Seçiniz" Value="0"></asp:ListItem>
            </asp:DropDownList>

            <label>İçerik Resim</label><br />
            <asp:FileUpload ID="fu_resim" runat="server"></asp:FileUpload>
        </div>

        <div class="mb-3">
            <asp:LinkButton ID="lbtn_ekle" runat="server" Text="İçerik Ekle" CssClass="btn btn-secondary" OnClick="lbtn_ekle_Click"></asp:LinkButton>
        </div>
    </div>
</asp:Content>
