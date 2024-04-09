<%@ Page Title="" Language="C#" MasterPageFile="~/HastaPanel/index.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BTE_THERAPY.HastaPanel.index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    
    <label>Kategori</label><br />
<asp:DropDownList ID="ddl_kategoriler" runat="server" CssClass="form-select mb-200" AppendDataBoundItems="true">
    <asp:ListItem Text="Kategori Seçiniz" Value="0"></asp:ListItem>
</asp:DropDownList>
     
  
    <%-- EGZERSİZLER KATEGORİ SEÇİLDİKTEN SONRA SAYFAYA GELECEK. KATEGORİYE KAÇ TANE EGZERSİZ ATANDIYSA OKADAR CARD OLUŞTURULCAK. CARDLARA TIKLANDIĞINDA  --%>

    

<div class="card-grid">
  <div class="card">
    <a href="#">
      <img src="fotolar/foto.png" alt="Image 1">
      <p>Egzersiz Başlığı 1</p>
    </a>
  </div>
  <div class="card">
    <a href="#">
      <img src="image2.jpg" alt="Image 2">
      <p>Egzersiz Başlığı 1</p>
    </a>
  </div>
  <div class="card">
    <a href="#">
      <img src="image3.jpg" alt="Image 3">
      <p>Egzersiz Başlığı 1</p>
    </a>
  </div>
   <div class="card">
    <a href="#">
      <img src="image1.jpg" alt="Image 1">
      <p>Egzersiz Başlığı 1</p>
    </a>
  </div>
  <div class="card">
    <a href="#">
      <img src="image2.jpg" alt="Image 2">
      <p>Egzersiz Başlığı 1</p>
    </a>
  </div>
  <div class="card">
    <a href="#">
      <img src="image3.jpg" alt="Image 3">
      <p>Egzersiz Başlığı 1</p>
    </a>
  </div>
   <div class="card">
    <a href="#">
      <img src="image1.jpg" alt="Image 1">
      <p>Egzersiz Başlığı 1</p>
    </a>
  </div>
  <div class="card">
    <a href="#">
      <img src="image2.jpg" alt="Image 2">
      <p>Egzersiz Başlığı 1</p>
    </a>
  </div>
  <div class="card">
    <a href="#">
      <img src="image3.jpg" alt="Image 3">
      <p>Egzersiz Başlığı 1</p>
    </a>
  </div>
 
</div>

</asp:Content>
