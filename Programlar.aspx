<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Programlar.aspx.cs" Inherits="bakkal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" runat="server">
     <link rel="stylesheet" href="anaSayfa.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    programlar burda!!<br />
    <div>
        <table>
            <tr>
                <td width="200px">Kategoriler</td>
                <td ></td>
            </tr>
            <tr>
                <td width="200px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="5" ShowHeader="false">
                        <RowStyle Font-Names="Verdana" Font-Size="11px" ForeColor="#000066" Height="25px" />
                        <Columns>
                            <%--<asp:BoundField DataField="kategori_adi"></asp:BoundField>--%>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <a href='<%# "kullanici_guncelle.aspx?userID=" + Eval("id") %>' class="kategoriLink">
                                     <%#  Eval("kategori_adi") %>
                                    </a>
                                    <p class="kategoriLink">test</p>
                                </ItemTemplate>
                                <HeaderStyle Width="30px" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
                <td ></td>
            </tr>
        </table>
    </div>
<asp:Image ID="Image1" runat="server" ImageUrl="~/CjhukO4i_400x400.jpg" />
&nbsp;
</asp:Content>
