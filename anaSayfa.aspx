<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="anaSayfa.aspx.cs" Inherits="bakkal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Yazılım Bakkalı</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="image-gallery">
        <div class="image-container">
          <img src="images\1722935310961.jpeg" alt="Image 1">
        </div>
        <div class="image-container">
          <img src="images\java-code.jpeg.jpeg" alt="Image 2">
        </div>
        <div class="image-container">
          <img src="images\java-coding-best-practices.jpg" alt="Image 3">
        </div>
        <div class="image-container">
          <img src="images\java-programming-what-is-it_1.jpeg" alt="Image 4">
    </div>
     </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Stylesheets" runat="server">
     <link rel="stylesheet" href="anaSayfa.css" type="text/css"/>
</asp:Content>
