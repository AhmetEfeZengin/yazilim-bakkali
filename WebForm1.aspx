<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="bakkal.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 150px;
            height: 30px;
        }
        .auto-style2 {
            width: 300px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <table cellpadding="0" cellspacing="0" style="width: 900px">
        <tr style="width:450"><td style="width: 450px" valign="top" >
            </td>
            <td valign="top" style="width: 450px">
    <table cellpadding="0" cellspacing="0" style="width: 450px">
        <tr><td height="30" class="admin_form_baslik">KULLANICI LİSTESİ</td></tr>       
        <tr>
            <td style="height:30px;" align="left" valign="top">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="true" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
        BorderStyle="Solid" BorderWidth="1px" CellPadding="5" DataKeyNames="kullanici_id" 
        OnPageIndexChanging="GridView1_PageIndexChanging" 
        OnRowCommand="GridView1_RowCommand" PageSize="20" Width="380px">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <RowStyle Font-Names="Verdana" Font-Size="11px" ForeColor="#000066" 
            Height="25px" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate >
                    <asp:ImageButton ID="ImageButton3" runat="server"  CommandArgument='<%# Bind("kullanici_id") %>' CommandName="sil" 
                        ImageUrl="~/DESK/images/delete.jpg" 
                        OnClientClick="return confirm('Silmek istediginize eminmisiniz?')" Visible='<%# btn_kullanici((int) Eval ("kullanici_id")) %> '  />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
                <HeaderStyle Width="30px" />
            </asp:TemplateField>
            <asp:BoundField DataField="kullanici_id" SortExpression="kullanici_id" Visible="False" /><asp:BoundField DataField="adi" HeaderText="AD"  
                SortExpression="adi">
                
            </asp:BoundField>
             <asp:BoundField DataField="kullanici_id" SortExpression="kullanici_id" Visible="False" /><asp:BoundField DataField="soyadi" HeaderText="SOYAD"  
                SortExpression="soyadi">
                
            </asp:BoundField>
           <%-- <asp:BoundField DataField="soyadi" HeaderText="TİPİ" SortExpression="soyadi"></asp:BoundField>--%>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        CommandArgument='<%# Bind("kullanici_id") %>' CommandName="Down" 
                        ImageUrl="images/down.gif" />
                    <asp:ImageButton ID="ImageButton2" runat="server" 
                        CommandArgument='<%# Bind("kullanici_id") %>' CommandName="Up" 
                        ImageUrl="images/up.gif" />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Width="50px" />
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                   <a href='<%# "kullanici_guncelle.aspx?userID=" + Eval("kullanici_id") %>'>
                    <img alt="Kullanıcı Guncelle" border="0" src="images/edit.jpg" /></a>
                </ItemTemplate>
                <HeaderStyle Width="30px" />
            </asp:TemplateField>
        </Columns>
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" Font-Names="Verdana" 
            Font-Size="12px" ForeColor="White" Height="30px" />
    </asp:GridView></td>
        </tr>
        </table>
    
            </td>
        </tr>
        <tr style="width:400px" >
            <td style="width: 380px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

        </div>
    </form>
</body>
</html>
