<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="bakkal.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" runat="server">
    <link rel="stylesheet" href="anaSayfa.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="girisArayuz">
            <p>Kullanıcı Adı:</p><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <p>Şifre:</p><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Giriş Yap" OnClick="Button1_Click" />
    <a href="anaSayfa.aspx">Hesabınız yok mu? Buraya tıklayarak kayıt olabilirsiniz.</a>
    </div>

</asp:Content>
