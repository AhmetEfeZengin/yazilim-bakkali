<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="kullaniciSayfa.aspx.cs" Inherits="bakkal.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" runat="server">
         <link rel="stylesheet" href="anaSayfa.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <p>Kullanıcı Adı:</p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>Şifre:</p>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
</asp:Content>
