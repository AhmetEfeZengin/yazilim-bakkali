<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="bakkal.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" runat="server">
    <link rel="stylesheet" href="anaSayfa.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <table cellpadding="0" cellspacing="0" style="width: 450px">
        <tr><td colspan="2" height="30" class="admin_form_baslik">&nbsp; KULLANICI GİRİŞ</td></tr>       
<%--        <tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Ad&nbsp;</td>
            <td style="width:300px; height:30px;"><asp:TextBox ID="txt_adi" runat="server" Width="200px" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Soyad&nbsp;</td>
            <td style="width:300px; height:30px;"><asp:TextBox ID="txt_soyad" runat="server" Width="200px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Height="22px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Tel</td>
            <td style="width:300px; height:30px;"><asp:TextBox ID="txt_tel" runat="server" 
                    Width="200px" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Height="22px"></asp:TextBox>
             </td>
        </tr>
         <tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Email</td>
            <td style="width:300px; height:30px;"><asp:TextBox ID="txt_mail" runat="server" 
                    Width="200px" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Height="22px"></asp:TextBox>
             </td>
        </tr>--%>
         <tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Kullanıcı Adı</td>
            <td style="width:300px; height:30px;"><asp:TextBox ID="txt_kAdi" runat="server" Width="200px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Şifre</td>
            <td style="width:300px; height:30px;"><asp:TextBox ID="txt_sifre" runat="server" Width="200px" TextMode="Password" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Height="22px"></asp:TextBox>
            </td>
        </tr> 
                <tr>
    0
            </td>
        </tr>
        <%--<tr>
            <td style="width:150px; height:30px;" class="admin_form_left">&nbsp;Görev Tanımı</td>
            <td style="width:300px; height:30px;">
                <asp:DropDownList ID="ddl_gorevtanim" runat="server" Width="200px" Height="22px">
                    <asp:ListItem Value="1">Yönetici</asp:ListItem>
                    <asp:ListItem Value="2">Site Yöneticisi</asp:ListItem>  
                    <asp:ListItem Value="3">Emlak Danışmanı</asp:ListItem>                  
                </asp:DropDownList>
            </td>
        </tr>--%>
        <tr>
            <td style="width: 150px" class="admin_form_left">&nbsp;</td>
            <td style="width:300px; height:30px;">&nbsp;</td>
        </tr>
        <tr>
            <td align="left" style="width: 150px"><asp:Label ID="lbl_hata" runat="server" Font-Names="Verdana" Font-Size="X-Small" ForeColor="#C00000" Visible="False"></asp:Label>
            </td>
            <td style="width:300px; height:30px;">
                <asp:Button ID="Button1" runat="server" Text="GİRİŞ YAP" Width="95px" 
                    onclick="Button1_Click" Font-Bold="True" ForeColor="#990000" />
            </td>
        </tr>
        <tr>
            <td style="width: 150px"></td>
            <td style="width:300px; height:30px;"></td>
        </tr>
        </table>
   <%-- <div class="girisArayuz">
            <p>Kullanıcı Adı:</p><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <p>Şifre:</p><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Giriş Yap" OnClick="Button1_Click" />
    <a href="index.aspx">Hesabınız yok mu? Buraya tıklayarak kayıt olabilirsiniz.</a>
    </div>--%>

</asp:Content>
