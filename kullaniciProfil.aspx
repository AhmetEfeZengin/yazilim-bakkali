<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="kullaniciProfil.aspx.cs" Inherits="bakkal.kullaniciProfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" runat="server">
    <link rel="stylesheet" href="anaSayfa.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
  <div class="profile-container">
    <img src="images/user.jpg" alt="Profile Picture" class="profile-pic">
    <h2 class="nickname">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h2>
    <p class="join-date">Hoşgeldiniz</p>
  </div>
</body>
</asp:Content>
