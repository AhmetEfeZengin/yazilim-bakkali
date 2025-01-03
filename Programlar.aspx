<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Programlar.aspx.cs" Inherits="bakkal.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Stylesheets" runat="server">
    <link rel="stylesheet" href="anaSayfa.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div>
        <table>
            <tr>
                <td width="200px">Kategoriler</td>
                <td></td>
            </tr>
            <tr>
                <td width="200px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="5" ShowHeader="false">
                        <RowStyle Font-Names="Verdana" Font-Size="11px" ForeColor="#000066" Height="25px" />
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                                <HeaderStyle Width="30px" />
                            </asp:TemplateField>
                            <%--<asp:BoundField DataField="kategori_adi"></asp:BoundField>--%>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <a  class="kategoriLink">
                                        <%#  Eval("kategori_adi") %>
                                    </a>
                                </ItemTemplate>
                                <HeaderStyle Width="30px" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
                <td></td>
            </tr>
        </table>

    </div>
    <div class="grid-container">
        <div class="grid-item">
            <img src="images/program.jpg" alt="Item 1">
            <p>Item Title 1</p>
        </div>
        <div class="grid-item">
            <img src="images/program.jpg" alt="Item 2">
            <p>Item Title 2</p>
        </div>
        <div class="grid-item">
            <img src="images/program.jpg" alt="Item 3">
            <p>Item Title 3</p>
        </div>
        <div class="grid-item">
            <img src="images/program.jpg" alt="Item 4">
            <p>Item Title 4</p>
        </div>
        <div class="grid-item">
            <img src="images/program.jpg" alt="Item 4">
            <p>Item Title 5</p>
        </div>
        <div class="grid-item">
            <img src="images/program.jpg" alt="Item 4">
            <p>Item Title 6</p>
        </div>
        <div class="grid-item">
            <img src="images/program.jpg" alt="Item 4">
            <p>Item Title 7</p>
        </div>
        <div class="grid-item">
            <img src="images/program.jpg" alt="Item 4">
            <p>Item Title 8</p>
        </div>
        <div class="grid-item">
            <img src="images/program.jpg" alt="Item 4">
            <p>Item Title 9</p>
        </div>
        <!-- Add more grid items here -->
    </div>
    &nbsp;
</asp:Content>
